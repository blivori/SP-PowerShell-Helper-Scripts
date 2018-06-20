Add-PSSnapin "Microsoft.SharePoint.PowerShell"

$web = Get-SPWeb "<Site URL>"

$UserAccount = "<User>"
Remove-SPUser -Identity $UserAccount -Web $Web -Confirm:$False​
