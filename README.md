# nlsCompare

[![R-CMD-check](https://github.com/ArkaB-DS/nlsCompare/workflows/R-CMD-check/badge.svg)](https://github.com/ArkaB-DS/nlsCompare/actions)

An R package to compare different packages' functions for nonlinear least squares `(nls)`

This package grew out as a product of the Google Summer of Code (2021) project [`Improvements to nls()`](https://github.com/ArkaB-DS/GSOC21-improveNLS)
by Arkajyoti Bhattacharjee and mentored by Dr. John C Nash and Dr. Heather Turner. 

## Current Workflow

1. Get a one-line machine summary using `machineId()`.
2. Select directory to save outputs of program using `setup_dir()`.
3. Create dataframe to store the database of problems, algorithms and controls associated with `nls()` like functions using `create_db()`.
4. Create dataframe to store the error log. This shows which **"solver"** fails in **"which problem"** and **"why?"**. This shows limitations, improvements and areas of potential imporovements. Use `create_elog()`.
5. Check if the final output csv-s - **"nlsDatabase.csv"** and **"nlsErrorLog.csv"** exists in the directory chosen in step 2.
6. Run the main program - comparison-testing and corresponding editing of the dataframes - using `run()`.  
7. Write the dataframes into **"nlsDatabase.csv"** and **"nlsErrorLog.csv"** using `write_csvs()`.
8. Finally, remove the global variables created in the above steps using `rm_nls()`.



## Documentation
A **vignette** to demonstrate the above workflow is [`nlsCompare: How to use it?`](https://github.com/ArkaB-DS/nlsCompare/blob/master/vignettes/nlsCompare-Usage.pdf).

For more detals about the package, please refer to [`nlsCompareArticle`](https://github.com/ArkaB-DS/GSOC21-improveNLS/blob/master/nlsCompareArticle/nlsCompareArticle.pdf).

## Installation

**Warning:** As of 2021-08-23, the package is still in the development stage!

To install this development repo via `devtools` in **R**, use:

```
# install.packages("devtools")
devtools::install_github("ArkaB-DS/nlsCompare")
```
