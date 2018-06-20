Add-PSSnapin Microsoft.SharePoint.PowerShell

function Get-DocInventory([string]$siteUrl) {
$site = New-Object Microsoft.SharePoint.SPSite $siteUrl

  $i = 0;
foreach ($web in $site.AllWebs) {

  $count = $site.AllWebs.Count
    foreach ($list in $web.Lists) {

    if ($list.BaseType -ne “DocumentLibrary”)
     {
        continue
     }

foreach ($item in $list.Items) {
$data = @{
            "Web Application" = $web.ToString()
            "Site" = $site.Url
            "Web" = $web.Url
            "list" = $list.Title
            "Item URL" = $item.Url
            "Item Title" = $item["Title"]
            "Item Created" = $item["Created"]
            "Item Modified" = $item["Modified"]
            "File Size" = $item.File.Length/1KB
            "Permissions" = $(foreach($roleAssignment in $item.RoleAssignments)
            {
                        
              $Permission = ""

                foreach($roleDefinition in $roleAssignment.RoleDefinitionBindings)
                {
                       $Permission =  "Member: " +  $roleAssignment.Member.LoginName + " Role: " + $roleDefinition.Name + " "
                 

                       $Permission
                       Write-Progress -activity "Working" -status "Checked Sub-Site $i of $count" -percentComplete (($i / $count)/100)                      
                    
                }

        }) -join ','

          
}

                       

New-Object PSObject -Property $data
}
}
    $web.Dispose();
}            
      
   $i++
                  

    $site.Dispose()
}
<# Get-DocInventory "<Site URL>" | Out-GridView #>
Get-DocInventory "<Site URL>" | Export-Csv -NoTypeInformation -Path <Path>\File.csv
