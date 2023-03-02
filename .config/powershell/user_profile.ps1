# Prompt
# Import-Module posh-git

# load prompt config
$OMP_CONF = 'C:\Users\janrico\AppData\Local\Programs\oh-my-posh\themes\amro.omp.json'
oh-my-posh --init --shell pwsh --config $OMP_CONF | Invoke-Expression


# terminal icons
Import-Module Terminal-Icons

# ps read line
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
