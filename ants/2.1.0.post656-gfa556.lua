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
local ants_path = pathJoin(software_path, 'ants-2.1.0.post656-gfa556')

-- Set-up environment variables
setenv('ANTSPATH', ants_path)
prepend_path('PATH', ants_path);
