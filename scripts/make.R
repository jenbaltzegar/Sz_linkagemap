# Running this file will compile all R-based data for this project.

# set up working environment
source("./scripts/load_libs.R")
source("./scripts/load_data.R")

# run data analysis scripts
source("./scripts/GenomeSize.R")
source("./scripts/determineLOD.R")
source("./scripts/create_linkagemap.R")