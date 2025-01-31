```R
# Robust subsetting of data frames in R, checking for missing columns
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "B")

# Check if all columns exist
missing_cols <- setdiff(cols_to_select, names(data))
if (length(missing_cols) > 0) {
  warning(paste("Columns not found:", paste(missing_cols, collapse = ", ")))
  # Handle missing columns appropriately (e.g., add them with default values, stop execution, etc.)
  # For this example, we'll proceed without the missing columns
  cols_to_select <- intersect(cols_to_select, names(data))
}

subset_data <- data[, cols_to_select, drop = FALSE]
```