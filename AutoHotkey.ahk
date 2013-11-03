; top of file (before loading any other .ahk)
SetTitleMatchMode 2
#InstallKeybdHook 

;; left shift becomes tab if pressed by its self
LCtrl::
Send {Ctrl Down}
KeyWait, LCtrl
Send {Ctrl Up}
if ( A_PriorKey = "LControl" )
{
	Send {Tab}
}
return

;; right shift becomes enter if pressed by itself
RCtrl::
Send {Ctrl Down}
KeyWait, RCtrl
Send {Ctrl Up}
;MsgBox %A_PriorKey%
if ( A_PriorKey = "RControl" )
{
	Send {Enter}
}
return

;; left control becomes esc if pressed by itself (for VIM)
;; I used caps lock as escape with standard keyboards
LShift::
Send {Shift Down}
KeyWait, LShift
Send {Shift Up}
if ( A_PriorKey = "LShift" )
{
	Send {Esc}
}
return

;; Enter as control, useful on non-teck computer
Enter::
Send {Ctrl Down}
KeyWait, Enter
Send {Ctrl Up}
if ( A_PriorKey = "Enter" )
{
	Send {Enter}
}
return

CapsLock::
Send {Ctrl Down}
KeyWait, CapsLock
Send {Ctrl Up}
if ( A_PriorKey = "CapsLock" )
{
	Send {Esc}
}
return