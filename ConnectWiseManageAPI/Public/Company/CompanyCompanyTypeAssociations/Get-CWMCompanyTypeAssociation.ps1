﻿function Get-CWMCompanyTypeAssociation {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [int]$CompanyID,
        [string]$Condition,
        [ValidatePattern('\S* (desc|asc)')]
        [string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all
    )

    $URI = "https://$($script:CWMServerConnection.Server)/v4_6_release/apis/3.0/company/companies/$CompanyID/typeAssociations"
    return Invoke-CWMGetMaster -Arguments $PsBoundParameters -URI $URI
}
