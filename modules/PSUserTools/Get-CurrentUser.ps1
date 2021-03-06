function Get-CurrentUser {
    <#
    .Synopsis
    Gets the current user.

    .Description
    The Get-CurrentUser function gets the Windows identity
    of the current user, including the user name. This function
    has no parameters.

    .Notes
    Get-CurrentUser uses the GetCurrent static method of the System.Security.Principal.WindowsIdentitiy property.

    .Outputs
    Returns a System.Security.Principal.WindowsIdentity object
    that represents the current user.

    .Example
    Get-CurrentUser

    .Example
    (get-currentUser).name

    .Example
    (get-currentUser).authenticationType

    #>
    param()
    
	[Security.Principal.WindowsIdentity]::GetCurrent()
}


