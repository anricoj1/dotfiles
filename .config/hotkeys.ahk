ToggleCurrentActiveProcess() {
  WinGetClass, OldClass, A
  WinGet, ActiveProcessName, ProcessName, A
  WinGet, WinClassCount, Count, ahk_exe %ActiveProcessName%
  
  IF WinClassCount = 1
  Return
  
  loop, 2 {
    WinSet, Bottom,, A
    WinActivate, ahk_exe %ActiveProcessName%
    WinGetClass, NewClass, A
    if (OldClass <> "CabinetWClass" or NewClass = "CabinetWClass")
    break
  }
}

ToggleOrOpenWindowsTerminal() {
  windowHandleId := WinExist("ahk_exe WindowsTerminal.exe")
  windowExistsAlready := windowHandleId > 0
  
  if (windowExistsAlready = true) {
    activeWindowHandleId := WinExist("A")
    windowIsAlreadyActive := activeWindowHandleId == windowHandleId
    
    if (windowIsAlreadyActive) {
      WinMinimize, "ahk_id %windowHandleId%"
    } else {
      WinActivate, "ahk_id %windowHandleId%"
      WinShow, "ahk_id %windowHandleId%"
    }
  } else {
    Run, wt
  }
}


!`::ToggleCurrentActiveProcess()


^+z::ToggleOrOpenWindowsTerminal()
