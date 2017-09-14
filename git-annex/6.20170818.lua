help (
[[
This module loads git-annex

Version 6.20170818
]])

whatis("Name: git-annex")
whatis("Version: 6.20170818")
whatis("Category: tools, vcs")
whatis("Keywords: git, vcs, git-annex")
whatis("Description: git-annex")
whatis("URL: ")

local software_path = '/work/01329/poldrack/software'
local root_path = pathJoin(software_path, 'git-annex-6.20170818-g1b1c970b9')

-- Set-up software paths
prepend_path('PATH', root_path);
append_path('LD_LIBRARY_PATH', pathJoin(root_path, 'lib'));
