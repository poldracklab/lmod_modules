-- Load module dependencies
load("afni")
load("ants")
load("fsl")
load("freesurfer")
load("anaconda")


setenv('CRNENV_WORK', '/work/03843/crn_plab')

-- Initialize variable names
setenv('CRNENV_EXECUTION_SYSTEM', 'stampede.tacc.utexas.edu');
setenv('CRNENV_SYSTEM_NCPUS', 16);
setenv('CRNENV_SINGULARITY_IMAGES', pathJoin(os.getenv('CRNENV_WORK'), 'singularity'));
append_path('PATH', pathJoin(os.getenv('CRNENV_WORK'), 'singularity'));
