# ConvertTo-Quantity

Return the correct plurality of a string for a given quantity.

## Parameters

### Parameter Set 1

- `[String]` **String** _A string to convert._ Mandatory, ValueFromPipeline
- `[Int32]` **Quantity** _A quantity of $String._ Mandatory
- `[Switch]` **ShowQuantityAs** _The format $Quantity should be displayed in. Options are None, Numeric, and Words. Default is Numeric._ 

## Examples

### Example 1



```powershell
ConvertTo-Quantity -quantity 2 -string "widget" -showQuantityAs "Words"
two widgets
```
### Example 2



```powershell
ConvertTo-Quantity -quantity 2 -string "widget"
2 widgets
```
### Example 3



```powershell
ConvertTo-Quantity -quantity 2 -string "widget" -showQuantityAs "None"
widgets
```

## Outputs

- `string`
