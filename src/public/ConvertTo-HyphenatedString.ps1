function ConvertTo-HyphenatedString {
    param(
        [Parameter(ValueFromPipeline = $true)]
        $TitleString
    )

    Process {
        [Humanizer.InflectorExtensions]::Dasherize($TitleString.Underscore())
    }
}