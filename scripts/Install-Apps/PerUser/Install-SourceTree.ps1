[CmdletBinding()]
Param
(
    [Parameter(Mandatory = $True)]
    [string]$ScratchDirectory,
    [Parameter(Mandatory = $True)]
    [ScriptBlock]$FailFastTemplate
)

$Error.Clear();

# Install manually.
# The automation is completely non-trivial since Atlassian does not give an interface for that.
& $FailFastTemplate 'https://www.sourcetreeapp.com/' 'Currently you have to install SourceTree yourself.';
