help ([[
The Launcher is a utility for construction simple HTC workflows bundled
as a single batch job.

The LAUNCHER module defines the LAUNCHER_DIR environment variable.

For more information on using the Launcher, please consult
LAUNCHER_DIR/README or go to the Launcher website:

https://www.tacc.utexas.edu/research-development/tacc-software/the-launcher.
]])

whatis("Name: Launcher")
whatis("Version: 3.1.0")

load("python")

-- Check Python version: launcher requires >=2.7
-- local py_v = capture("python --version");
-- 
-- if string.match(capture("python --version"), "command not found") then
--         load("python")
-- else
--     local v1 = py_v:sub(8);
--     LmodMessage("My message ", v1)
--     v1, v2, _ = v1:match("(%d+)%.(%d+)%.(%d+)" );
--     LmodMessage("My message ", v1, v2)
--     v1 = tonumber(v1);
--     v2 = tonumber(v2);
--     if (v1 < 2 or (v1 == 2 and v2 < 7)) then
--         load("python")
--     end
-- end


-- Load module dependencies
local software_path = '/work/01329/poldrack/software'

-- Create environment variables.
local bar_dir           = pathJoin(software_path, "launcher-3.1.0");
local plugin_dir        = pathJoin(bar_dir, "plugins");

setenv( "LAUNCHER_VERSION",            "3.1.0")
setenv( "LAUNCHER_DIR",                bar_dir)
setenv( "LAUNCHER_PLUGIN_DIR",         plugin_dir)
setenv( "LAUNCHER_RMI",                "SLURM")
setenv( "LAUNCHER_SBATCH_TPL",         pathJoin(bar_dir, "extras/batch-scripts/launcher.slurm"))

-- Specific binding for KNL
if string.match(os.getenv("TACC_SYSTEM"), "knl") then
    setenv("LAUNCHER_BIND", 1)
end

-- Use -d (cray-specific) in nc command only in LS5
if string.match(os.getenv("TACC_SYSTEM"), "ls5") then
    setenv("LAUNCHER_NETCAT_FLAGS", "-d")
end

