-- Load module dependencies
load("afni")
load("ants")
load("c3d")
load("fsl")
load("freesurfer")
load("anaconda")

-- Initialize variable names
local ncpus = capture("grep -c '^processor' /proc/cpuinfo"):gsub(nas,'\\',"")
local hostname = capture("/bin/hostname -d")

if string.match(hostname, "stanford.edu") then
	hostname = "sherlock.stanford.edu"
	-- setenv('CRNENV_WORK', '/work/01329/poldrack')
	-- setenv('CRNENV_SINGULARITY_IMAGES', pathJoin(os.getenv('CRNENV_WORK'), 'singularity'));
	-- append_path('PATH', pathJoin(os.getenv('CRNENV_WORK'), 'singularity'));
end

if string.match(hostname, "stampede") then
	setenv('CRNENV_WORK', '/work/03843/crn_plab')
	setenv('CRNENV_SINGULARITY_IMAGES', pathJoin(os.getenv('CRNENV_WORK'), 'singularity'));
	append_path('PATH', pathJoin(os.getenv('CRNENV_WORK'), 'singularity'));
end

if string.match(hostname, "ls5") then
	setenv('CRNENV_WORK', '/work/03843/crn_plab')
end

setenv('CRNENV_EXECUTION_SYSTEM', hostname);
setenv('CRNENV_SYSTEM_NCPUS', ncpus);
