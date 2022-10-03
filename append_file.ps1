cd <\\path to directory>
(Get-ChildItem -File) | Rename-Item -NewName {$_.Name -replace "^","new-text"}
(Get-ChildItem -File) | Move-Item -Destination "\\new directory\"
