$PDC = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().PdcRoleOwner.Name
$DN = ([adsi]'').distinguishedName 
$LDAP = "LDAP://$PDC/$DN"
$LDAP
$direntry = New-Object System.DirectoryServices.DirectoryEntry($LDAP)

$dirsearcher = New-Object System.DirectoryServices.DirectorySearcher($direntry)
$dirsearcher.filter = "samAccountType=805306368"
$result = $dirsearcher.FindAll()

Foreach($obj in $result)
{
    Foreach($prop in $obj.Properties)
    {
        $prop
    }

    Write-Host "-------------------------------"
}

# Query the domainSid value
$domainSearcher = New-Object System.DirectoryServices.DirectorySearcher($direntry)
$domainSearcher.filter = "(objectClass=domainDNS)"
$domainResult = $domainSearcher.FindOne()

if ($domainResult) {
    $domainSidBytes = $domainResult.Properties["objectsid"][0]
    if ($domainSidBytes -is [byte[]]) {
        $domainSid = New-Object System.Security.Principal.SecurityIdentifier($domainSidBytes, 0)
        Write-Host "Domain SID: $domainSid"
    } else {
        Write-Host "Unexpected SID format."
    }
}

function LDAPSearch {
    param (
        [string]$LDAPQuery
    )

    $PDC = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().PdcRoleOwner.Name
    $DistinguishedName = ([adsi]'').distinguishedName

    $DirectoryEntry = New-Object System.DirectoryServices.DirectoryEntry("LDAP://$PDC/$DistinguishedName")

    $DirectorySearcher = New-Object System.DirectoryServices.DirectorySearcher($DirectoryEntry, $LDAPQuery)

    return $DirectorySearcher.FindAll()
}
