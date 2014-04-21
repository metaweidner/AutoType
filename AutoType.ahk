; AutoType.ahk

#NoEnv
#persistent
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force

; variables ================================
Note1 =
Note2 =
Note3 =
Note4 =
Note5 =
Note6 =
Note7 =
Note8 =
Note9 =
Note0 =

Yvalue = 15
Ybutton = 10
Ydiff = 30

Y1 := Yvalue
Y2 := Yvalue + Ydiff
Y3 := Yvalue + 2 * Ydiff
Y4 := Yvalue + 3 * Ydiff
Y5 := Yvalue + 4 * Ydiff
Y6 := Yvalue + 5 * Ydiff
Y7 := Yvalue + 6 * Ydiff
Y8 := Yvalue + 7 * Ydiff
Y9 := Yvalue + 8 * Ydiff
Y0 := Yvalue + 9 * Ydiff

YB1 := Ybutton
YB2 := Ybutton + Ydiff
YB3 := Ybutton + 2 * Ydiff
YB4 := Ybutton + 3 * Ydiff
YB5 := Ybutton + 4 * Ydiff
YB6 := Ybutton + 5 * Ydiff
YB7 := Ybutton + 6 * Ydiff
YB8 := Ybutton + 7 * Ydiff
YB9 := Ybutton + 8 * Ydiff
YB0 := Ybutton + 9 * Ydiff
; variables ================================


Gui, 1:Color, d0d0d0, 912206
Gui, 1:Show, h0 w0, AutoType

Menu, FileMenu, Add, &Open Template, Open
Menu, FileMenu, Add
Menu, FileMenu, Add, &About AutoType, About
Menu, FileMenu, Add
Menu, FileMenu, Add, &Reload, Reload
Menu, FileMenu, Add, E&xit, Exit
Menu, EditMenu, Add, &Clear All, Clear
Menu, MenuBar, Add, &File, :FileMenu
Menu, MenuBar, Add, &Edit, :EditMenu
Gui, Menu, MenuBar


; labels ================================
Gui, 1:Add, Text, x100 y%Y1% w380 h15,
Gui, 1:Add, Text, x100 y%Y2% w380 h15,
Gui, 1:Add, Text, x100 y%Y3% w380 h15,
Gui, 1:Add, Text, x100 y%Y4% w380 h15,
Gui, 1:Add, Text, x100 y%Y5% w380 h15,
Gui, 1:Add, Text, x100 y%Y6% w380 h15,
Gui, 1:Add, Text, x100 y%Y7% w380 h15,
Gui, 1:Add, Text, x100 y%Y8% w380 h15,
Gui, 1:Add, Text, x100 y%Y9% w380 h15,
Gui, 1:Add, Text, x100 y%Y0% w380 h15,

Gui, 1:Add, Button, x10 y%YB1% gNote1, Ctrl + Alt + 1
Gui, 1:Add, Button, x10 y%YB2% gNote2, Ctrl + Alt + 2
Gui, 1:Add, Button, x10 y%YB3% gNote3, Ctrl + Alt + 3
Gui, 1:Add, Button, x10 y%YB4% gNote4, Ctrl + Alt + 4
Gui, 1:Add, Button, x10 y%YB5% gNote5, Ctrl + Alt + 5
Gui, 1:Add, Button, x10 y%YB6% gNote6, Ctrl + Alt + 6
Gui, 1:Add, Button, x10 y%YB7% gNote7, Ctrl + Alt + 7
Gui, 1:Add, Button, x10 y%YB8% gNote8, Ctrl + Alt + 8
Gui, 1:Add, Button, x10 y%YB9% gNote9, Ctrl + Alt + 9
Gui, 1:Add, Button, x10 y%YB0% gNote0, Ctrl + Alt + 0
; labels ================================

WinGetPos, winX, winY, winWidth, winHeight, AutoType
winX+=%winWidth%
Gui, 1:Show, x%winX% y%winY% h315 w400, AutoType
WinActivate, AutoType


; hotkeys ================================
^!1::
	Send, %Note1%
Return

^!2::
	Send, %Note2%
Return
^!3::
	Send, %Note3%
Return
^!4::
	Send, %Note4%
Return
^!5::
	Send, %Note5%
Return
^!6::
	Send, %Note6%
Return
^!7::
	Send, %Note7%
Return
^!8::
	Send, %Note8%
Return
^!9::
	Send, %Note9%
Return
^!0::
	Send, %Note0%
Return
; hotkeys ================================


; note functions ================================
Note1:
	InputBox, input,, Enter new value for Ctrl + Alt + 1,, 380, 125,,,,,%Note1%
	if ErrorLevel
		Return
	else
	{
		Note1 = %input%
		ControlSetText, Static1, %Note1%, AutoType
	}
Return

Note2:
	InputBox, input,, Enter new value for Ctrl + Alt + 2,, 380, 125,,,,,%Note2%
	if ErrorLevel
		Return
	else
	{
		Note2 = %input%
		ControlSetText, Static2, %Note2%, AutoType
	}
Return

Note3:
	InputBox, input,, Enter new value for Ctrl + Alt + 3,, 380, 125,,,,,%Note3%
	if ErrorLevel
		Return
	else
	{
		Note3 = %input%
		ControlSetText, Static3, %Note3%, AutoType
	}
Return

Note4:
	InputBox, input,, Enter new value for Ctrl + Alt + 4,, 380, 125,,,,,%Note4%
	if ErrorLevel
		Return
	else
	{
		Note4 = %input%
		ControlSetText, Static4, %Note4%, AutoType
	}
Return

Note5:
	InputBox, input,, Enter new value for Ctrl + Alt + 5,, 380, 125,,,,,%Note5%
	if ErrorLevel
		Return
	else
	{
		Note5 = %input%
		ControlSetText, Static5, %Note5%, AutoType
	}
Return

Note6:
	InputBox, input,, Enter new value for Ctrl + Alt + 6,, 380, 125,,,,,%Note6%
	if ErrorLevel
		Return
	else
	{
		Note6 = %input%
		ControlSetText, Static6, %Note6%, AutoType
	}
Return

Note7:
	InputBox, input,, Enter new value for Ctrl + Alt + 7,, 380, 125,,,,,%Note7%
	if ErrorLevel
		Return
	else
	{
		Note7 = %input%
		ControlSetText, Static7, %Note7%, AutoType
	}
Return

Note8:
	InputBox, input,, Enter new value for Ctrl + Alt + 8,, 380, 125,,,,,%Note8%
	if ErrorLevel
		Return
	else
	{
		Note8 = %input%
		ControlSetText, Static8, %Note8%, AutoType
	}
Return

Note9:
	InputBox, input,, Enter new value for Ctrl + Alt + 9,, 380, 125,,,,,%Note9%
	if ErrorLevel
		Return
	else
	{
		Note9 = %input%
		ControlSetText, Static9, %Note9%, AutoType
	}
Return

Note0:
	InputBox, input,, Enter new value for Ctrl + Alt + 0,, 380, 125,,,,,%Note0%
	if ErrorLevel
		Return
	else
	{
		Note0 = %input%
		ControlSetText, Static10, %Note0%, AutoType
	}
Return
; note functions ================================


; menu functions ================================
Open:
	FileSelectFile, autotypetemplate
	FileRead, templatevar, %autotypetemplate%
	varnum = 0
	Loop, parse, templatevar, `n
	{
		varnum++
		count = 0
		Loop, parse, A_LoopField, `t
		{
			count++
			if ((count == 2) && (varnum == 1))
			{
				StringReplace, Note1, A_LoopField, `n,, All
				StringReplace, Note1, A_LoopField, `r,, All
				ControlSetText, Static1, %Note1%, AutoType
			}
			if ((count == 2) && (varnum == 2))
			{
				StringReplace, Note2, A_LoopField, `n,, All
				StringReplace, Note2, A_LoopField, `r,, All
				ControlSetText, Static2, %Note2%, AutoType
			}
			if ((count == 2) && (varnum == 3))
			{
				StringReplace, Note3, A_LoopField, `n,, All
				StringReplace, Note3, A_LoopField, `r,, All
				ControlSetText, Static3, %Note3%, AutoType
			}
			if ((count == 2) && (varnum == 4))
			{
				StringReplace, Note4, A_LoopField, `n,, All
				StringReplace, Note4, A_LoopField, `r,, All
				ControlSetText, Static4, %Note4%, AutoType
			}
			if ((count == 2) && (varnum == 5))
			{
				StringReplace, Note5, A_LoopField, `n,, All
				StringReplace, Note5, A_LoopField, `r,, All
				ControlSetText, Static5, %Note5%, AutoType
			}
			if ((count == 2) && (varnum == 6))
			{
				StringReplace, Note6, A_LoopField, `n,, All
				StringReplace, Note6, A_LoopField, `r,, All
				ControlSetText, Static6, %Note6%, AutoType
			}
			if ((count == 2) && (varnum == 7))
			{
				StringReplace, Note7, A_LoopField, `n,, All
				StringReplace, Note7, A_LoopField, `r,, All
				ControlSetText, Static7, %Note7%, AutoType
			}
			if ((count == 2) && (varnum == 8))
			{
				StringReplace, Note8, A_LoopField, `n,, All
				StringReplace, Note8, A_LoopField, `r,, All
				ControlSetText, Static8, %Note8%, AutoType
			}
			if ((count == 2) && (varnum == 9))
			{
				StringReplace, Note9, A_LoopField, `n,, All
				StringReplace, Note9, A_LoopField, `r,, All
				ControlSetText, Static9, %Note9%, AutoType
			}
			if ((count == 2) && (varnum == 10))
			{
				StringReplace, Note0, A_LoopField, `n,, All
				StringReplace, Note0, A_LoopField, `r,, All
				ControlSetText, Static10, %Note0%, AutoType
			}
		}
	}
Return

About:
	MsgBox,, About AutoType,
(
AutoType 0.2
Andrew Weidner
ajweidner@uh.edu


INSTRUCTIONS

1. Click a button to edit a hotkey.

2. Press a key combination to auto-type the displayed text.

3. Select "Edit > Clear All" to erase all hotkeys.
)
Return

Reload:
Reload

Exit:
ExitApp

Clear:
	Note1 =
	Note2 =
	Note3 =
	Note4 =
	Note5 =
	Note6 =
	Note7 =
	Note8 =
	Note9 =
	Note0 =
	ControlSetText, Static1, %Note1%, AutoType
	ControlSetText, Static2, %Note2%, AutoType
	ControlSetText, Static3, %Note3%, AutoType
	ControlSetText, Static4, %Note4%, AutoType
	ControlSetText, Static5, %Note5%, AutoType
	ControlSetText, Static6, %Note6%, AutoType
	ControlSetText, Static7, %Note7%, AutoType
	ControlSetText, Static8, %Note8%, AutoType
	ControlSetText, Static9, %Note9%, AutoType
	ControlSetText, Static10, %Note0%, AutoType
Return
; menu functions ================================


GuiClose:
ExitApp
