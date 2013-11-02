; top of file (before loading any other .ahk)
SetTitleMatchMode 2
#InstallKeybdHook 

;; left shift becomes tab if pressed by its self
LShift::
Send {Shift Down}
KeyWait, LShift
Send {Shift Up}
if ( A_PriorKey = "LShift" )
{
	Send {Tab}
}
return


;; right shift becomes enter if pressed by itself
RShift::
Send {Shift Down}
KeyWait, RShift
Send {Shift Up}
if ( A_PriorKey = "RShift" )
{
	Send {Enter}
}
return