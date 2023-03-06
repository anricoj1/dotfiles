# Jason's Dotfiles!
These configurations are what I use daily! This is used on **Windows 10 | 11**. My **Neovim** config should still work on any **Linux** distro.

## Tools
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

## Powershell config
- `mkdir .config/powershell`
- create `user_profile.ps1`
- Set profile: `nvim $PROFILE.CurrentUserCurrentHost`
	- This should open `\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`.
	- If not create it.
	- Point to your powershell profile `. $env:USERPROFILE\.config\powershell\user_profile.ps1`

## Neovim + Lua