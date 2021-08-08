# nlsCompare

An R package to compare different packages' functions for nonlinear least squares with `nls` (base)

This package grew out as a product of the Google Summer of Code (2021) project [`Improvements to nls()`](https://gitlab.com/nashjc/improvenls)
by Arkajyoti Bhattacharjee and mentored by John Nash. 

## Current Workflow

1. Get a one-line machine summary using `machineId()`.
2. Select directory to save outputs of program using `setup_dir()`.
3. Create dataframe to store the database of problems, algorithms and controls associated with `nls()` like functions using `create_db()`.
4. Create dataframe to store the error log. This shows which **"solver"** fails in **"which problem"** and **"why?"**. This shows limitations, improvements and areas of potential imporovements. Use `create_elog()`.
5. Check if the final output csv-s - **"nlsDatabase.csv"** and **"nlsErrorLog.csv"** exists in the directory chosen in step 2.
6. Run the main program - comparison-testing and accordingly editing of the dataframes - using `run()`.
7. Finally, write the dataframes into **"nlsDatabase.csv"** and **"nlsErrorLog.csv"** using `write_csvs`.

## Installation

**Warning:** As of 2021-08-20, the package is still in development stage!

To install this developement repo via `devtools`, use:

```
> # install.packages("devtools")
> library(devtools)
> devtools::install_github("ArkaB-DS/nlsCompare")
```
