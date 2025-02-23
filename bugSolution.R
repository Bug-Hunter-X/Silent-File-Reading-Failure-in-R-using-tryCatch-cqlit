```r
# Improved R code with explicit error handling
file_path <- "data.csv"
data <- tryCatch(
  read.csv(file_path),
  error = function(e) {
    message(paste("Error reading file:", e$message))
    return(NULL)
  }
)

if (!is.null(data)) {
  print(head(data))
} else {
  print("Failed to read data. Check file path and permissions.")
}
```