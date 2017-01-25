help (
[[
This module loads JQ - handle JSON in bash.

Version 1.5
]])

whatis("Name: jq")
whatis("Version: 1.5")
whatis("Category: tools, javascript")
whatis("Keywords: json")
whatis("Description: jq")
whatis("URL: ")

local software_path = '/work/01329/poldrack/software'
local jq_path = pathJoin(software_path, 'jq-1.5')
prepend_path('PATH', pathJoin(jq_path, 'bin'));
prepend_path('LD_LIBRARY_PATH', pathJoin(jq_path, 'lib'));
