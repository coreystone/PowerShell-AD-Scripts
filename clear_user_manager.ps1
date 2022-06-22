# Clear manager for user
Get-ADUser $USERNAME | set-aduser -Clear manager