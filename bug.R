```R
# This code attempts to subset a data frame using a character vector of column names, 
# but it fails if any of the specified columns don't exist.
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "B")
subset_data <- data[, cols_to_select]
```