Remove-Item C:\Users\<username>\AppData\Local\Microsoft\WebsiteCache\* -Recurse -Force
Remove-Item "C:\Users\<username>\AppData\Roaming\Microsoft\SharePoint Designer\ProxyAssemblyCache" -Recurse -Force
Remove-Item "C:\Users\l<username>\AppData\Roaming\Microsoft\Web Server Extensions\Cache" -Recurse -Force​


#Replace <username> with the username SPD is currently installed on.
