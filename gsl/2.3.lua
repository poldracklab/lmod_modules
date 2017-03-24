help (
[[
This module loads GNU GSL.

Version 2.3
]])

whatis("Name: GSL")
whatis("Version: 2.3")
whatis("Category: tools")
whatis("Keywords:  gsl")
whatis("Description: GSL")
whatis("URL: ")

-- Set-up paths
local software_path = '/work/01329/poldrack/software'
local gsl_path = pathJoin(software_path, 'gsl-2.3')

append_path('PATH', pathJoin(gsl_path, 'bin'));
append_path('LD_LIBRARY_PATH', pathJoin(gsl_path, 'lib'))
