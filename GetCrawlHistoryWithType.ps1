Add-PSSnapin Microsoft.SharePoint.PowerShell

$numberOfResults = 10
$contentSourceName = "Local SharePoint sites"

[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.Office.Server.Search.Administration")

$searchServiceApplication = Get-SPEnterpriseSearchServiceApplication
$contentSources = Get-SPEnterpriseSearchCrawlContentSource -SearchApplication $searchServiceApplication
$contentSource = $contentSources | ? { $_.Name -eq $contentSourceName }

$crawlLog = new-object Microsoft.Office.Server.Search.Administration.CrawlLog($searchServiceApplication)
$crawlHistory = $crawlLog.GetCrawlHistory($numberOfResults, $contentSource.Id)
$crawlHistory.Columns.Add("CrawlTypeName", [String]::Empty.GetType()) | Out-Null

# Label the crawl type
$labeledCrawlHistory = $crawlHistory | % {
 $_.CrawlTypeName = [Microsoft.Office.Server.Search.Administration.CrawlType]::Parse([Microsoft.Office.Server.Search.Administration.CrawlType], $_.CrawlType).ToString()
 return $_
}

$labeledCrawlHistory | Out-GridView
