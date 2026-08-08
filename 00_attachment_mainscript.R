# Attachment & singlehood: main script


### Preparation
# Run with R version 4.6.0 and RStudio version 2026.5.1.225 on macOS Tahoe 26.5.2 (25F84)

# Please make sure that you run all files/commands from within the R project 
# ("attachment.Rroj") so that your working directory lies within that folder.

# Windows users need to make sure that Rtools is installed:
# https://cran.r-project.org/bin/windows/Rtools/

# Mac user might need to install a Fortran compiler (if errors occur below with renv),
# as described here: https://stackoverflow.com/questions/77822707/renvrestore-failing-to-restore-library-installing-matrix-compilation-failed


### Package version management
# To bolster future reproducibility, we used the *renv* package
# to manage version control of the used packages and dependencies.
# This 'imports' all R packages as the correct versions from the *renv.lock* file.  
install.packages("renv") # agree to restarting R if asked
renv::activate()
renv::restore(packages = "renv") # answer with "y"/"Y"/"Yes" when prompted
# -> restart R (under "Session")
renv::restore() # to revert to the previous state as encoded in the lockfile
# answer with "y"/"Y"/"Yes" when prompted
# this can take around 20-30 min

# You can check that the package management was successful, by executing "renv::restore()" again 
# which should now say "The library is already synchronized with the lockfile." 
# (or by running "renv::diagnostics()" or "renv::status()")
# After this, no packages need to be installed manually!


### generate cleaned data from CHILL data files
# This requires you to download the required files into the correct folder structure as 
# described in the OSF wiki. 
# Then run:

# (1)
quarto::quarto_render("01_clean_data.qmd",
                      output_file = "01_clean_data.html", output_format="html")

# around 1 min computation time for me

### Run analysis scripts and generate html report

# (2)
quarto::quarto_render("02_analyses.qmd",
                      output_file = "02_analyses.html", output_format="html") 

# around 2 min computation time for me

# If this throws an error message, open the script within the R-Project and run by hand

