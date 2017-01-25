help (
[[
This module loads C3D - converts FSL-like and ANTS-like affine transforms.

Version 1.1.0
]])

whatis("Name: C3D")
whatis("Version: 1.1.0")
whatis("Category: computational biology, Imaging")
whatis("Keywords:  Biology, fMRI, Reconstruction")
whatis("Description: C3D")
whatis("URL: ")

local software_path = '/work/01329/poldrack/software'
local c3d_path = pathJoin(software_path, 'c3d-1.1.0')
prepend_path('PATH', pathJoin(c3d_path, 'bin'));
