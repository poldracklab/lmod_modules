help (
[[
This module loads nodejs

Version 4.4.7
]])

whatis("Name: nodejs")
whatis("Version: 4.4.7")
whatis("Category: tools, javascript")
whatis("Keywords: javascript, node")
whatis("Description: nodejs")
whatis("URL: ")

local software_path = '/work/01329/poldrack/software'
local node_path = pathJoin(software_path, 'nodejs-4.4.7')
prepend_path('PATH', pathJoin(node_path, 'bin'));
