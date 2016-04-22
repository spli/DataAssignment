## Scripts:

* run_analysis.r - this script downloads and tidies a data set. Please see the [codebook](CodeBook.md) for more details about the steps the script performs.

It requires the dplyr and tidyr packages to be installed on the system. It is designed to work within the current workign directory, creating its own data directory. It saves the resulting dataset as a csv to the top level of the working directory.
