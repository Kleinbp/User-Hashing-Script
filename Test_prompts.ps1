#Varibles
$user_profile= "$env:USERPROFILE\Desktop\"
$Hash_folder_name = "Test_Folder"
$folder_path = $user_profile+$Hash_folder_name 

#creating folder
New-Item -ItemType "directory" -Name $Hash_folder_name -Path $user_profile -ErrorAction Ignore

explorer.exe $folder_path; Clear-Host


#Generates hashes from folder



do {

"





Please add the files you want to hash into the following folder $folder_path. When done press 1 to hash, press 2 to exit script "

$user_input = Read-Host
 

switch ($user_input) {

1{Clear-host; Get-childitem -Path $folder_path | Get-FileHash -Algorithm SHA256 | Format-Table -Property Hash, Path}
default{} }
}until ($user_input -eq 2) 
Clear-host