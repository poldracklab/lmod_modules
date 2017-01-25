-- Load module dependencies
always_unload("python")
load("afni")
load("ants")
load("fsl")
load("freesurfer")
setenv('CRNENV_WORK', '/work/03843/crn_plab')

-- Start miniconda
prepend_path('PATH', pathJoin(os.getenv('CRNENV_WORK'), 'anaconda/bin'));
setenv('PYTHONPATH', pathJoin(os.getenv('CRNENV_WORK'), 'anaconda/lib/python2.7/site-packages'));

-- Initialize variable names
setenv('CRNENV_EXECUTION_SYSTEM', 'stampede.tacc.utexas.edu');
setenv('CRNENV_SYSTEM_NCPUS', 16);
setenv('CRNENV_SINGULARITY_IMAGES', pathJoin(os.getenv('CRNENV_WORK'), 'singularity'));
append_path('PATH', pathJoin(os.getenv('CRNENV_WORK'), 'singularity'));
