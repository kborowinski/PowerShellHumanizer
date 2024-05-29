<#
.SYNOPSIS
    Convert a Roman Numeral String to an Int.
.DESCRIPTION
    Convert a Roman Numeral String to an Int.
.PARAMETER RomanNumeral
    One or more Roman Numeral Strings to convert.
#>
function ConvertFrom-RomanNumeral {
    param(
        [Parameter(Mandatory, Position = 0, ValueFromPipeline)]
        [string[]]$RomanNumeral
    )

    Process {
        foreach ($rn in $RomanNumeral) {
            [Humanizer.RomanNumeralExtensions]::FromRoman($rn)
        }
    }
}