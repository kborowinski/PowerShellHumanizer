<#
.SYNOPSIS
    Return the correct plurality of a string for a given quantity.
.DESCRIPTION
    Return the correct plurality of a string for a given quantity.
.PARAMETER String
    A string to convert.
.PARAMETER Quantity
    A quantity of $String.
.PARAMETER ShowQuantityAs
    The format $Quantity should be displayed in. Options are None, Numeric, and Words. Default is Numeric.
.EXAMPLE
    ConvertTo-Quantity -quantity 2 -string "widget" -showQuantityAs "Words"
    two widgets
.EXAMPLE
    ConvertTo-Quantity -quantity 2 -string "widget"
    2 widgets
.EXAMPLE
    ConvertTo-Quantity -quantity 2 -string "widget" -showQuantityAs "None"
    widgets
#>
function ConvertTo-Quantity {
    [CmdletBinding()]
    [OutputType('string')]
    param(
        [Parameter(Mandatory, Position = 0, ValueFromPipeline)]
        [string]$String,

        [Parameter(Mandatory, Position = 1)]
        [Alias('Count')]
        [int]$Quantity,

        [Parameter(Position = 2)]
        [Humanizer.ShowQuantityAs]
        $ShowQuantityAs = [Humanizer.ShowQuantityAs]::Numeric
    )

    Process {
        [Humanizer.ToQuantityExtensions]::ToQuantity($String, $Quantity, $ShowQuantityAs)
    }
}