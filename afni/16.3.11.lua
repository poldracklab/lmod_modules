help (
[[
This module loads AFNI.

Version 16.3.11
]])

whatis("Name: AFNI")
whatis("Version: 16.3.11")
whatis("Category: computational biology, Imaging")
whatis("Keywords:  Biology, fMRI, Reconstruction")
whatis("Description: AFNI")
whatis("URL: ")

-- Set-up paths
local software_path = '/work/01329/poldrack/software'
local afni_path = pathJoin(software_path, 'afni-16.3.11')

-- Load module dependencies
load('gsl')
append_path('PATH', afni_path);

