# Converts excel file to CSV

$from=$args[0]
$new=$args[1]

Import-Excel -path $from | Export-Csv -Path $new -NoTypeInformation
