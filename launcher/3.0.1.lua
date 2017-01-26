help (
[[
The Launcher is a utility for construction simple HTC workflows bundled 
as a single batch job.

The LAUNCHER module defines the LAUNCHER_DIR environment variable.

For more information on using the Launcher, please consult 
LAUNCHER_DIR/README or go to the Launcher website:

https://www.tacc.utexas.edu/research-development/tacc-software/the-launcher.
]])

whatis("Name: Launcher")
whatis("Version: 3.0.1")

always_unload("crnenv")
load("python")

-- Load module dependencies
local software_path = '/work/01329/poldrack/software'

-- Create environment variables.
local bar_dir           = pathJoin(software_path, "launcher-3.0.1");
local plugin_dir        = pathJoin(bar_dir, "plugins");

setenv( "LAUNCHER_DIR",                bar_dir)
setenv( "LAUNCHER_PLUGIN_DIR",         plugin_dir)
setenv( "LAUNCHER_RMI",                "SLURM")
setenv( "LAUNCHER_SBATCH_TPL",         pathJoin(bar_dir, "extras/batch-scripts/launcher.slurm"))

-- Specific binding for KNL
if string.match(os.getenv("TACC_SYSTEM"), "knl") then
	setenv("LAUNCHER_BIND", 1)
end
