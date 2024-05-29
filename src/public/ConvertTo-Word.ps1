function ConvertTo-Word {
    param(
        [Parameter(ValueFromPipeline = $true)]
        [int]$number
    )

    Process {
        [Humanizer.NumberToWordsExtension]::ToWords($number)
    }
}