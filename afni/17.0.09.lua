help (
[[
This module loads AFNI.

Version 17.0.09
]])

whatis("Name: AFNI")
whatis("Version: 17.0.09")
whatis("Category: computational biology, Imaging")
whatis("Keywords:  Biology, fMRI, Reconstruction")
whatis("Description: AFNI")
whatis("URL: ")

-- Set-up paths
local software_path = '/work/01329/poldrack/software'
local afni_path = pathJoin(software_path, 'afni-17.0.09')

-- Load module dependencies
load('gsl')
load('intel') 
-- module intel fixes "error while loading shared libraries:"
-- "libimf.so: cannot open shared object file: No such file or directory"

append_path('PATH', afni_path);

-- Fix missing libgsl.so.0 by linking /opt/apps/intel16/gsl/2.2.1/lib/libgsl.so
-- as libgsl.so.0 in afni/lib folder.
append_path('LD_LIBRARY_PATH', pathJoin(afni_path, 'lib'))
