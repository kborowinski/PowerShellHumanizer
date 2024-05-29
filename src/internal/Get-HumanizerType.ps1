function Get-HumanizerType {
    [CmdletBinding()]
    param (

    )

    $typeFiles = Get-ChildItem "$PSScriptRoot/../types/*.ps1xml"

    foreach ($file in $typeFiles) {
        $typeDef = [xml](Get-Content -Path $file -Raw)

        foreach ($type in $typeDef.Types.Type) {
            $type.Name | Write-Output
        }
    }
}