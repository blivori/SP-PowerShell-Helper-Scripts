$site = get-spsite http://siteurl

foreach ( $web in $site.allwebs )

{
$wfList = $null
$WfList = $web.lists['Workflows']
if ($wfList -ne $null)
{
$TitleField = $null
$TitleField = $WfList.Fields['Title']
if ($TitleField -ne $null)
{
Write-host $web.url
$TitleField.allowDeletion = $true
$TitleField.Update()
$TitleField.Delete()
}
}

}
