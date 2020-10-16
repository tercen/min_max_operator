# max operator

##### Description

`max` operator returns the maximum of a set of data points.

##### Usage

Input projection|.
---|---
`y-axis`        | numeric, input data, per cell 

Output relations|.
---|---
`max`        | numeric, max of the input data

##### Details

The operator takes all the values of a cell and returns the value which is the maximum. The computation is done per cell (one value is returned for each input cell).

##### References

Based on the [max R function](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Extremes.html).

##### See Also

[product_operator](https://github.com/tercen/product_operator), [sum_operator](https://github.com/tercen/sum_operator)
