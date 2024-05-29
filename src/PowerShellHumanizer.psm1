# Load  dlls
Add-Type -Path "$PSScriptRoot/lib/Humanizer.dll"

if ($PSCulture -ne 'en-US') {
    if (Test-Path "$PSScriptRoot/lib/$PSCulture") {
        Add-Type -Path "$PSScriptRoot/lib/$PSCulture/Humanizer.resources.dll"
    } else {
        Write-Warning "Humanizer doesn't currently support '$PSCulture'."
    }
}

