# Hide from Global Address List (GAL) manually in AD:
# Right click user > Properties > Attribute Editor > msExchHideFromAddresssLists > TRUE


# Hide from GAL in PowerShell:
set-aduser $USERNAME -Replace @{msExchHideFromAddressLists=$true}