# Jason's Dotfiles!
These configurations are what I use daily! This is used on **Windows 10 | 11**. My **Neovim** config should still work on any **Linux** distro.

# Tools
- [Powershell](https://www.microsoft.com/store/productId/9MZ1SNWT0N5D)
- [Windows Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701)
- [Nerd Fonts (fonts + icons)](https://www.nerdfonts.com/)
- [Scoop (CLI installer)](https://scoop.sh/): `iwr -useb get.scoop.sh | iex`
- [Curl](https://curl.se/): `scoop install curl sudo jq`
- [Git](https://git-scm.com/download/win)
- [Neovim](https://neovim.io/): `scoop install neovim gcc`
- [Posh Git](https://github.com/dahlbyk/posh-git): `scoop install posh-git`
- [Oh My Posh](https://ohmyposh.dev/): `scoop install oh-my-posh`
	- To get **Posh Themes** run `Get-PoshThemes` I use **amro**
- [Terminal Icons](https://www.powershellgallery.com/packages/Terminal-Icons/0.10.0): `Install-Module -Name Terminal-Icons -Repository PSGallery -Force`
- [z (directory jumper)](https://www.powershellgallery.com/packages/z/1.1.13)

# PowerShell
1. `mkdir .config/powershell`
2. create `user_profile.ps1`
	```powershell
	$OMP_CONF = 'C:\Users\{user}\AppData\Local\Programs\oh-my-posh\themes\amro.omp.json'
	oh-my-posh --init --shell pwsh --config $OMP_CONF | Invoke-Expression

	# terminal icons
	Import-Module Terminal-Icons

	# ps read line
	Set-PSReadLineOption -PredictionSource History
	Set-PSReadLineOption -PredictionViewStyle ListView
	```
3. Setting profile: `nvim $PROFILE.CurrentUserCurrentHost`
	- Opens `\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`.
	- If not create it.
	- Point to powershell profile `. $env:USERPROFILE\.config\powershell\user_profile.ps1`

# Neovim
## **Neovim** runtime paths
1. `:echo stdpath('config')` should output.
	- `~\AppData\Local\nvim` on **Windows**
	- `~\.config\nvim` on **Linux**
2. `:h rtp` should output some paths by we're really just interested in:
	- `$XDG_CONFIG_HOME/nvim`
	- `$XDG_CONFIG_HOME/nvim/after`
	- We will be working in these to add our **lua** config files.
3. However our `nvim` and `after` directories may not exist yet to lets fix that:
	- `cd AppData/Local` && `mkdir nvim`
	- `cd nvim` && `mkdir after`

## **Lua startup**
1. Create an `init.lua` file inside our `nvim` directory and write `print('hello')`.
	- `init.lua` is like `index.js` it's the default file name `lua` looks for.
2. Save and exit `nvim`.
3. Reopen `nvim`, you should see 'hello' at the bottom of the window.
	- This means we've successfully configured our first `lua` file.

## Create **Lua Profile**
1. `mkdir lua/{profile_name}` name it as you wish. I call mine `lua/jason`.
2. Create another `init.lua` inside our profile directory **ex:** `lua/jason/init.lua`.
3. Write `print('hello jason')`.
4. Lets require our new profile inside our original `init.lua` file.
	- `require('jason')`
	- notice we did not need to write `require('lua.jason.lua')`. both instances of `lua` are inferred.
 