function ConvertTo-OrdinalWord {
    param(
        [Parameter(ValueFromPipeline = $true)]
        [int]$Target
    )

    Process {
        [Humanizer.NumberToWordsExtension]::ToOrdinalWords($Target)
    }
}