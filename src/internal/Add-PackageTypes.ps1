function Add-PackageTypes {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '', Justification = 'Private')]
    param(
        [Parameter(Mandatory = $true)]
        [string]$LibsDirectory
    )

    process {
        foreach ($path in (Get-ChildItem $LibsDirectory | Where-Object { $_.Name -like '*.dll' -and $_.BaseName -ne "grpc_csharp_ext.x64" } | Select-Object -ExpandProperty FullName)) {
            [System.Reflection.Assembly]::LoadFile($path)
        }
    }
}