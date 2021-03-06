### Move user to deleted users container:
get-aduser -identity $USERNAME | move-adobject -targetpath "OU=xxx,OU=yyy,DC=zzz,DC=zzz"


### Remove user from all groups except Base Group which is used to keep a history of every user that has been created
Get-ADPrincipalGroupMembership $USERNAME | ForEach-Object { 
	if ($_.name -ne "Base") { 
		Remove-ADGroupMember -Confirm:$False -Identity $_.DistinguishedName -Members $USERNAME
		Write-Host "Removed from" $_.name
	}
}