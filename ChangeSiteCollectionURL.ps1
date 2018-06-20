$site = Get-SPSite <site URL>

$siteURL = Get-SPSiteURL -Identity $site

$site
$siteURL

#Remove-SPSiteURL -Url <Old/Current Site URL>

Set-SPSiteURL -Identity $site -URL <Site URL> -Zone Internet
