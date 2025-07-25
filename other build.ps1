# idk why you would use this but yeah


$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$batchFile = Join-Path $scriptDir "build.bat"

Start-Process -FilePath $batchFile -WorkingDirectory $scriptDir -Wait
