$site = Get-SPSite "<site URL>"
$web = $site.OpenWeb()
$groups = $web.sitegroups
 
foreach ($grp in $groups) {
    "Group: " + $grp.name;
    $groupName = $grp.name
    write-host "-------------------"  -foregroundcolor green
    write-host "Group: " $groupName   -foregroundcolor green
    write-host "-------------------"  -foregroundcolor green
    foreach ($user in $grp.users) {
             write-host "User: "  $user.Name     -foregroundcolor red
             write-host "CORP Login: " $user.UserLogin   -foregroundcolor red
             write-host "Email: "  $user.Email    -foregroundcolor red
             write-host "-------------------" -foregroundcolor white             
    }
}​
