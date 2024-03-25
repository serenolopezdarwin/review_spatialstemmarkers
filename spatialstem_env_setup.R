## Close and re-open shell.
# 	>mamba create -n spatialstem python=3.11
#   >mamba activate spatialstem
## Environment defaults
#   >conda config --env --add channels defaults
#   >conda config --env --add channels bioconda
#   >conda config --env --add channels conda-forge
#   >mamba install git pip
## Packages
#   >mamba install conda-forge::r-base=4.3.1
#   >mamba install conda-forge::jupyterlab
#   >mamba install conda-forge::ipykernel
## Activate kernel in Python
#   >python -m ipykernel install --user --name=spatialstem-py311
#   >mamba install conda-forge::r-irkernel
#   >mamba install conda-forge::gh
#   >mamba install conda-forge::jupyter-resource-usage
# 	>mamba install r-devtools
## Activate kernel in R
devtools::install_github("IRkernel/IRkernel")
IRkernel::installspec(name='spatialstem431', displayname='SpatialStem 4.3.1')
## Python packages
#   >mamba install -c conda-forge scanpy python-igraph leidenalg
#   >mamba install conda-forge::glob2
#   >mamba install conda-forge::squidpy
#   >mamba install conda-forge::anndata
#   >mamba install conda-forge::matplotlib
#   >mamba install conda-forge::numpy
## Seurat prereqs, must be installed in mamba
#   >mamba install conda-forge::r-igraph
#   >mamba install conda-forge::r-leiden
remotes::install_github("satijalab/seurat", "seurat5", quiet=TRUE)
#   >mamba install conda-forge::r-biocmanager
BiocManager::install("DropletUtils")
install.packages("scCustomize")
#   >mamba install bioconda::mygene
#   >pip install gseapy
## CytoTrace prereqs
#   >mamba install conda-forge::r-ggpubr
#   >mamba install conda-forge::r-hiclimr
BiocManager::install("sva")
devtools::install_local("/scratch/gpfs/KANG/sereno/rpkg/CytoTRACE_0.3.3.tar.gz")
## For plotting
install.packages("viridis")
