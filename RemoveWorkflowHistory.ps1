$web = Get-SPWeb 'Web URL'

$listToCancel = "List Name"

$list = $web.Lists[$listToCancel]

$tempList = New-Object "System.Collection.Generic.List``1[System.Object]"

$wfToKeep = "Workflowname"

foreach ($wf in $list.WorkFlowAssociations) {

if ($wf.Name -ne $wfToKeep) { $tempList.Add($wf); }

}

foreach ($wf in $tempList){ $list.RemoveWorkflowAssociation($wf); }
