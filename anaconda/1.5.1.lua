help (
[[
This module loads a fully-fledged anaconda environment for 
running mriqc

Version 1.5.1
]])

whatis("Name: anaconda")
whatis("Version: 1.5.1")
whatis("Category: tools, python")
whatis("Keywords: python anaconda")
whatis("Description: anaconda")
whatis("URL: ")

-- Remove existing python
always_unload("python")

-- Anaconda path
local software_path = '/work/01329/poldrack/software'
local anaconda_path = pathJoin(software_path, 'anaconda')

-- Start miniconda
prepend_path('PATH', pathJoin(anaconda_path, 'bin'));
setenv('PYTHONPATH', pathJoin(anaconda_path, 'lib/python2.7/site-packages'));