#  This powershell will write all the filenames in a directory to a text file

cd \\<path to directory>
Get-Childitem -Recurse -Include *.* | Format-Table name -hidetableheaders -autosize | Out0File list.txt
