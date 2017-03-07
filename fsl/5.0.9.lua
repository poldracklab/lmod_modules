help (
[[
This module loads FSL. This module makes available the FSL executables. 
No need to run fsl.sh before running, but $HOME/.fsconf/fsl.sh settings will be observed.
All the related paths/envs are set up when the module is loaded.

Version 5.0.9
]])

whatis("Name: FSL")
whatis("Version: 5.0.9")
whatis("Category: computational biology, Imaging")
whatis("Keywords:  Biology, fMRI, Reconstruction")
whatis("Description: FSL - FSL is a comprehensive library of analysis tools for FMRI, MRI and DTI brain imaging data. It runs on Apple and PCs (both Linux, and Windows via a Virtual Machine), and is very easy to install. Most of the tools can be run both from the command line and as GUIs (point-and-click graphical user interfaces).")
whatis("URL: https://fsl.fmrib.ox.ac.uk/fsl/fslwiki")


-- Set-up paths
local software_path = '/work/01329/poldrack/software'
local fsl_dir = pathJoin(software_path, 'fsl-5.0.9')

-- Set-up software paths
setenv('FSLDIR', fsl_dir)
setenv('FSL_DIR', fsl_dir)
setenv('FSLMULTIFILEQUIT', 'TRUE')
setenv('FSLGECUDAQ', 'cuda.q')
setenv('FSLTCLSH', pathJoin(fsl_dir, 'bin/fsltclsh'))
setenv('FSLMACHINELIST', '')
setenv('FSLREMOTECALL', '')
setenv('FSLWISH', 'bin/fslwish')
setenv('FSLLOCKDIR', '')
setenv('FSLOUTPUTTYPE', 'NIFTI_GZ')

-- Set-up PATH and LD_LIBRARY_PATH
prepend_path('PATH', pathJoin(fsl_dir, 'bin'))
prepend_path('LD_LIBRARY_PATH', pathJoin(fsl_dir, 'lib'))


-- Set-up FSL - load user settings
if ( myShellName() == "bash") then
    execute{ cmd="if [ -f $HOME/.fslconf/fsl.sh ]; then source $HOME/.fslconf/fsl.sh; fi", modeA={"load"}}
end

