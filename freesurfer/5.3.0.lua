help (
[[
This module loads freesurfer. This module makes available the freesurfer executables. Documentation for freesurfer is available online at the publisher\'s website: http://surfer.nmr.mgh.harvard.edu/fswiki/FreeSurferWiki
These executables can be found in TACC_FREESURFER_DIR, e.g. recon-all. No need to run SetUpFreeSurfer.sh before running. All the related paths/envs are set up when the module is loaded.

Version 5.3.0
]])

whatis("Name: FreeSurfer")
whatis("Version: 5.3.0")
whatis("Category: computational biology, Imaging")
whatis("Keywords:  Biology, fMRI, Reconstruction")
whatis("Description: freesurfer - a set of tools for analysis and visualization of structural and functional brain imaging data. Common commands include recon-all, etc.")
whatis("URL: http://surfer.nmr.mgh.harvard.edu/fswiki/FreeSurferWiki")

-- Set-up paths
local software_path = '/work/01329/poldrack/software'
local fs_dir = pathJoin(software_path, 'freesurfer-5.3.0')

-- Set-up module's variables
setenv("FREESURFER_HOME", fs_dir)
setenv("SUBJECTS_DIR", pathJoin(fs_dir, "subjects"))
setenv("MNI_DIR", pathJoin(fs_dir, "mni"))
setenv("FSFAST_HOME", pathJoin(fs_dir, "fsfast"))
setenv("FSF_OUTPUT_FORMAT", "nii.gz")

prepend_path("PATH", pathJoin(fs_dir, "mni/bin"))
prepend_path("PATH", pathJoin(fs_dir, "bin"))
prepend_path("PERL5LIB", pathJoin(fs_dir, "mni/lib/perl5/5.8.5"))
