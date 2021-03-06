help (
[[
This module loads ANTs. This module makes available the Advanced Normalization Tools. 

Version 2.1.0
]])

whatis("Name: ANTs")
whatis("Version: 2.1.0")
whatis("Category: computational biology, Imaging")
whatis("Keywords:  Biology, fMRI, Reconstruction")
whatis("Description: ANTs")
whatis("URL: ")

-- Set-up paths
local software_path = '/work/01329/poldrack/software'
local ants_path = pathJoin(software_path, 'ants-2.1.0.post710-g4d580')

-- Set-up environment variables
setenv('ANTSPATH', pathJoin(ants_path, 'bin'))
prepend_path('PATH', pathJoin(ants_path, 'scripts'));
prepend_path('PATH', pathJoin(ants_path, 'bin'));
prepend_path('LD_LIBRARY_PATH', pathJoin(ants_path, 'lib'));

