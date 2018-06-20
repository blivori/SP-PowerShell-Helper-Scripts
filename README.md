# SP-PowerShell-Helper-Scripts
Scripts for SharePoint Operation and Administration


# ChangeSiteCollectionURL.ps1 
-> Changes the Site Collection URL. Might need to remove the Site URL first using the commented line.

# ClearSPDesignerCache.ps1
-> Clears the SharePoint Designer Cache

# DeleteWorkflowTitleField.ps1
-> Deletes the 'Title' field from the Workflow List. (N.B. not the associated list, but the list that is automatically created by the workflow). Sometimes workflows get cancelled or terminated on start because of this field.

# GetCorrelationErrorFromSPFarm.ps1
-> Searches for the error related to the given Correlation ID on all the farm and saves to text file.

# GetCrawlHistoryWithType.ps1
-> Gets the Crawl History with the Type of Crawl Performed

# GetSiteCollectionUsersAndGroups.ps1
-> Gets all the Site Collection's Users and Groups

# RemoveUserPermissionsRecursively.ps1
-> Removes the given user permissions recursively from Site Collection.

# RemoveWorkflowHistory.ps1
-> Deletes previous versions of the workflow.

# SetSecondarySiteCollectionAdmin.ps1
-> Sets the secondary Site Collection Administrator via PowerShell.

