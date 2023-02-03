#powershell to find corrupt pdf files.  From chatgpt.

$folder = "c:\pdf_folder"

Get-Childitem $folder -Filter *.pdf | ForEach-Object {
  Try {
        $pdfReader = New-Object -TypeName System.IO.StreamReader -Argumentlist $_.FullName
        $pdfReader.Close()
      } Catch {
        Write-Host "Corrupt PDF file: $($_.FullName)"
      }
}
 
