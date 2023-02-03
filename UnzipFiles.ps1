#Powershell used to unzip and rename files.
cd "c:\test\"
$zipfilepath="c:\test\"
$zipfiles=Get-ChildItem $zipfilespath -Recurse -Include *.zip

foreach ($zipfile in $zipfiles) {
 $counter=1
 $zipfileactualname = [io.path]::GetFileNameWIthoutExtension($zipfile.FullName)

 Expand-Archive -path $zipfile
 $path="$zipfilepath$zipfileactualname"
 cd c:\test\$zipfileactualname
 $files = Get-ChildItem
 foreach($file in $files) {
  $exts = [System.IO.Path]::GetExtension($file)
  $newname = $zipfileactualname+"_"+$counter+$exts
  rename-item $file -newname $newname
  $counter++
 }
 cd c:\test
 }
 
 #then run this script to move files from subfolders to new directory
 cd c:\test
 Get-ChildItem -Recurse -Include *.* | Copy-Item -Destination c:\test2
