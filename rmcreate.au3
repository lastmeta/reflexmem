#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <File.au3>
#include <Misc.au3>


Global $hGUI = GUICreate("ReflexMem Create", 600, 540, -1, -1)
Global $triggerText = ""
Global $triggerNumber = 0
Global $behaviorText = ""

Func DeleteTriggers()
	GUICtrlDelete ( $hButton )
	GUICtrlDelete ( $hButton1 )
	GUICtrlDelete ( $hButton2 )
	GUICtrlDelete ( $hButton3 )
	GUICtrlDelete ( $hButton4 )
	GUICtrlDelete ( $hButton5 )
	GUICtrlDelete ( $hButton6 )
	GUICtrlDelete ( $hButton16 )
	GUICtrlDelete ( $hGroup )
	GUICtrlDelete ( $hLabel1 )
EndFunc

Func HideTriggers()
	GUICtrlSetState($hButton, $GUI_HIDE)
	GUICtrlSetState($hButton1, $GUI_HIDE)
	GUICtrlSetState($hButton2, $GUI_HIDE)
	GUICtrlSetState($hButton3, $GUI_HIDE)
	GUICtrlSetState($hButton4, $GUI_HIDE)
	GUICtrlSetState($hButton5, $GUI_HIDE)
	GUICtrlSetState($hButton6, $GUI_HIDE)
	GUICtrlSetState($hButton16, $GUI_HIDE)
	GUICtrlSetState($hGroup, $GUI_HIDE)
	GUICtrlSetState($hLabel1, $GUI_HIDE)
EndFunc


Func CreateTriggers()

	Global $hGroup = GUICtrlCreateGroup("Triggers", 				20, 	10, 	280, 450)

	Global $hButton = GUICtrlCreateButton("Key is Pressed", 		35, 	35, 	250, 35)
	Global $hButton1 = GUICtrlCreateButton("Mouse is Clicked", 	35, 	80, 	250, 35) ;done
	Global $hButton2 = GUICtrlCreateButton("Clipboard Contains",35, 	125, 	250, 35) ;done
	Global $hButton3 = GUICtrlCreateButton("Window Exists", 		35, 	170, 	250, 35)
	Global $hButton4 = GUICtrlCreateButton("Date and Time is", 	35, 	215, 	250, 35)
	Global $hButton5 = GUICtrlCreateButton("Image on Screen", 	35, 	260, 	250, 35)
	Global $hButton6 = GUICtrlCreateButton("Text on Screen", 		35, 	305, 	250, 35)
	Global $hButton0 = GUICtrlCreateButton("Help", 							35, 	350, 	250, 35)

	Global $hButton16 = GUICtrlCreateButton("Done With Triggers", 20, 475, 280, 50)
	GUICtrlSetFont(-1, 10)

	Global $hLabel1 = GUICtrlCreateLabel("", 330, 35, 240, 400)
	GUICtrlSetStyle(-1, $SS_CENTER)

	GUISetState()

EndFunc


Func CreateBehaviors()

	Global $hGroup1 = GUICtrlCreateGroup("Behaviors", 						310, 	10, 	280, 450)

	Global $hButton7 = GUICtrlCreateButton("Send Keys",						330, 	35, 	250, 35) ;done
	Global $hButton8 = GUICtrlCreateButton("Key Down", 						330, 	80, 	250, 35) ;done
	Global $hButton9 = GUICtrlCreateButton("Key Up", 							330, 	125, 	250, 35) ;done
	Global $hButton10 = GUICtrlCreateButton("Move Mouse", 				330, 	170, 	250, 35) ;done
	Global $hButton11 = GUICtrlCreateButton("Mouse Click", 				330, 	215, 	250, 35) ;done
	Global $hButton12 = GUICtrlCreateButton("Scroll Mouse Wheel", 330, 	260, 	250, 35) ;done
	Global $hButton13 = GUICtrlCreateButton("Copy Text", 					330, 	305, 	250, 35) ;done
	Global $hButton14 = GUICtrlCreateButton("Run Program", 				330, 	350, 	250, 35) ;done
	Global $hButton15 = GUICtrlCreateButton("Wait", 							330, 	395, 	250, 35) ;done

	Global $hButton17 = GUICtrlCreateButton("Done With Behaviors", 	310, 	475, 	280, 50)
	GUICtrlSetFont(-1, 10)

	Global $hLabel = GUICtrlCreateLabel("", 35, 35, 240, 400)
	GUICtrlSetStyle(-1, $SS_CENTER)

	GUISetState()

EndFunc


Func SetLabel()
    Local $a = GUIGetCursorInfo()

	if UBound($a) > 4 then
		if $a[4] == $hButton7 Then
			$data = "Send keystrokes as if they came from the keyboard." & @CRLF & @CRLF & "Which Keys?"
			if GUICtrlRead($hlabel) <> $data Then
				GUICtrlSetData($hlabel, $data)
			EndIf
		elseif $a[4] == $hButton8 Then
			$data = "Press a key as if holding it down on the keyboard. (Be sure to Key Up later.)" & @CRLF & @CRLF & "Which key?"
			if GUICtrlRead($hlabel) <> $data Then
				GUICtrlSetData($hlabel, $data)
			EndIf
		elseif $a[4] == $hButton9 Then
			$data = "Lift a key up as if not holding it down on they keyboard any longer." & @CRLF & @CRLF & "Which key?"
			if GUICtrlRead($hlabel) <> $data Then
				GUICtrlSetData($hlabel, $data)
			EndIf
		elseif $a[4] == $hButton10 Then
			$data = "Move the mouse to a particular location on the screen." & @CRLF & @CRLF & "What X coordinate?" & @CRLF & "What Y coordinate?"
			if GUICtrlRead($hlabel) <> $data Then
				GUICtrlSetData($hlabel, $data)
			EndIf
		elseif $a[4] == $hButton11 Then
			$data = "Click a button on the mouse." & @CRLF & @CRLF & "Which Button?"
			if GUICtrlRead($hlabel) <> $data Then
				GUICtrlSetData($hlabel, $data)
			EndIf
		elseif $a[4] == $hButton12 Then
			$data = "Scroll the mouse wheel." & @CRLF & @CRLF & "Up or down?"
			if GUICtrlRead($hlabel) <> $data Then
				GUICtrlSetData($hlabel, $data)
			EndIf
		elseif $a[4] == $hButton13 Then
			$data = "Put data on the clipboard." & @CRLF & @CRLF & "What Text?"
			if GUICtrlRead($hlabel) <> $data Then
				GUICtrlSetData($hlabel, $data)
			EndIf
		elseif $a[4] == $hButton14 Then
			$data = "Run a program." & @CRLF & @CRLF & "What is the program's name?" & @CRLF & "Where is it located?"
			if GUICtrlRead($hlabel) <> $data Then
				GUICtrlSetData($hlabel, $data)
			EndIf
		elseif $a[4] == $hButton15 Then
			$data = "Do nothing for a certain period of time in miliseconds (1000 = 1 second)." & @CRLF & @CRLF & "how many miliseconds?"
			if GUICtrlRead($hlabel) <> $data Then
				GUICtrlSetData($hlabel, $data)
			EndIf
		Else
			;GUICtrlSetData($g_idX, $a[0])
			;GUICtrlSetData($g_idY, $a[1])
		endIf
	EndIf
EndFunc



Func SetLabel1()
    Local $a = GUIGetCursorInfo()

	if UBound($a) > 4 then
		if $a[4] == $hButton Then
			$data = "When you Press a specific key or set of keys on the keyboard." & @CRLF & @CRLF & "Which Key?" & @CRLF & "Include Shift?" & @CRLF & "Include Control?" & @CRLF & "Include Alt?"
			if GUICtrlRead($hLabel1) <> $data Then
				GUICtrlSetData($hLabel1, $data)
			EndIf
		elseif $a[4] == $hButton1 Then
			$data = "When a button on the mouse is clicked." & @CRLF & @CRLF & "Which Button?" & @CRLF & "What protion of the screen?"
			if GUICtrlRead($hLabel1) <> $data Then
				GUICtrlSetData($hLabel1, $data)
			EndIf
		elseif $a[4] == $hButton2 Then
			$data = "When the clipboard contains certain data." & @CRLF & @CRLF & "What Text?"
			if GUICtrlRead($hLabel1) <> $data Then
				GUICtrlSetData($hLabel1, $data)
			EndIf
		elseif $a[4] == $hButton3 Then
			$data = "When a certain window is up (when a program is running)." & @CRLF & @CRLF & "Which Window?"
			if GUICtrlRead($hLabel1) <> $data Then
				GUICtrlSetData($hLabel1, $data)
			EndIf
		elseif $a[4] == $hButton4 Then
			$data = "At a certain date and time." & @CRLF & @CRLF & "What Time?" & @CRLF & "Everyday? On one day of the week? Or on a specific date?"
			if GUICtrlRead($hLabel1) <> $data Then
				GUICtrlSetData($hLabel1, $data)
			EndIf
		elseif $a[4] == $hButton5 Then
			$data = "When an image is found on the screen." & @CRLF & @CRLF & "Which Image?" & @CRLF & "What portion of the screen?"
			if GUICtrlRead($hLabel1) <> $data Then
				GUICtrlSetData($hLabel1, $data)
			EndIf
		elseif $a[4] == $hButton6 Then
			$data = "When certain text is found on the screen." & @CRLF & @CRLF & "What Text?" & @CRLF & "What portion of the screen?"
			if GUICtrlRead($hLabel1) <> $data Then
				GUICtrlSetData($hLabel1, $data)
			EndIf
		elseif $a[4] == $hButton0 Then
			$data = "Two things to keep in mind: Triggers are additive and behaviors are carried out in the order that they are created." & @CRLF & @CRLF & "All triggers must be satisfied in order for the behavior to be carried out." & @CRLF & "You can make upto 100 triggers and 100 behaviors."
			if GUICtrlRead($hLabel1) <> $data Then
				GUICtrlSetData($hLabel1, $data)
			EndIf
		Else
			;GUICtrlSetData($g_idX, $a[0])
			;GUICtrlSetData($g_idY, $a[1])
		endIf
	EndIf
EndFunc


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Specific Triggers

Func KeyPressedTrigger()
	Local $hChild7 = GUICreate("Key Pressed Trigger", 400, 640, -1, -1, -1, -1, $hGUI)
	GUICtrlCreateLabel("Which key(s) should be pressed for this Trigger?", 20, 20, 360, 40)
	GUICtrlSetStyle(-1, $SS_CENTER)
	local $button71 = GUICtrlCreateButton("Single Letter or Number", 20, 60, 160, 30)
	local $button72 = GUICtrlCreateButton("Enter", 220, 60, 160, 30)
	local $button73 = GUICtrlCreateButton("Space", 20, 100, 160, 30)
	local $button74 = GUICtrlCreateButton("Shift", 220, 100, 160, 30)
	local $button75 = GUICtrlCreateButton("Alt", 20, 140, 160, 30)
	local $button76 = GUICtrlCreateButton("Control", 220, 140, 160, 30)
	local $button77 = GUICtrlCreateButton("Left", 20, 180, 160, 30)
	local $button78 = GUICtrlCreateButton("Right", 220, 180, 160, 30)
	local $button79 = GUICtrlCreateButton("Up", 20, 220, 160, 30)
	local $button710 = GUICtrlCreateButton("Down", 220, 220, 160, 30)
	local $button711 = GUICtrlCreateButton("Tab", 20, 260, 160, 30)
	local $button712 = GUICtrlCreateButton("Escape", 220,260, 160, 30)
	local $button713 = GUICtrlCreateButton("Page Up", 20, 300, 160, 30)
	local $button714 = GUICtrlCreateButton("Page Down", 220, 300, 160, 30)
	local $button715 = GUICtrlCreateButton("Home", 20, 340, 160, 30)
	local $button716 = GUICtrlCreateButton("End", 220, 340, 160, 30)
	local $button717 = GUICtrlCreateButton("Delete", 20, 380, 160, 30)
	local $button718 = GUICtrlCreateButton("Backspace", 220, 380, 160, 30)
	local $button719 = GUICtrlCreateButton("Caps Lock", 20, 420, 160, 30)
	local $button720 = GUICtrlCreateButton("Num Lock", 220, 420, 160, 30)
	local $button721 = GUICtrlCreateButton("Print Screen", 20, 460, 160, 30)
	local $button722 = GUICtrlCreateButton("Windows Key", 220, 460, 160, 30)
	local $button723 = GUICtrlCreateButton("Insert", 20, 500, 160, 30)
	local $button724 = GUICtrlCreateButton("Shift + Other Keys", 220, 500, 160, 30)
	local $button725 = GUICtrlCreateButton("Alt + Other Keys", 20, 540, 160, 30)
	local $button726 = GUICtrlCreateButton("Control + Other Keys", 220, 540, 160, 30)
	local $button727 = GUICtrlCreateButton("Special Symbols ({}^+#!)", 20, 580, 160, 30)
	local $button728 = GUICtrlCreateButton("F Keys", 220, 580, 160, 30)
	GUISetState()

	local $totrig = ""
	Local $sAnswer = ""
	local $Shift = false
	local $alt = false
	local $control = false

	While 1
		$hMsg = GUIGetMsg()
		Switch $hMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($hChild7)
				ExitLoop
			Case $button71
				$sAnswer = InputBox("Key Press Trigger", "What single key should be the trigger? (Letters, numbers and these symbols allowed: @$%&*()-_=~/|\[];:?)", "a", "")
				$sAnswer = StringReplace($sAnswer, "{", "")
				$sAnswer = StringReplace($sAnswer, "}", "")
				$sAnswer = StringReplace($sAnswer, "^", "")
				$sAnswer = StringReplace($sAnswer, "+", "")
				$sAnswer = StringReplace($sAnswer, "!", "")
				$sAnswer = StringReplace($sAnswer, "#", "")
				$totrig = StringLeft($sAnswer, 1)
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button72
				$totrig = "{ENTER}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button73
				$totrig = "{SPACE}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button74
				$totrig = "{LSHIFT}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button75
				$totrig = "{ALT}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button76
				$totrig = "{LCTRL}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button77
				$totrig = "{LEFT}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button78
				$totrig = "{RIGHT}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button79
				$totrig = "{UP}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button710
				$totrig = "{DOWN}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button711
				$totrig = "{TAB}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button712
				$totrig = "{ESCAPE}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button713
				$totrig = "{PGUP}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button714
				$totrig = "{PGDN}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button715
				$totrig = "{HOME}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button716
				$totrig = "{END}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button717
				$totrig = "{DELETE}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button718
				$totrig = "{BACKSPACE}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button719
				$totrig = "{CAPSLOCK}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button720
				$totrig = "{NUMLOCK}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button721
				$totrig = "{PRINTSCREEN}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button722
				$totrig = "{LWIN}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button723
				$totrig = "{INSERT}"
				addKeyPressToTrigger($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button724 ;shift
				$shift = true
			Case $button725 ;alt
				$alt = true
			Case $button726 ;Control
				$control = true
				msgbox(64, "info", "")
			Case $button727 ;Special keys
				$hChild7a = GUICreate("Special Symbol Key Press Trigger", 400, 280, -1, -1, -1, -1, $hChild7)
				GUICtrlCreateLabel("Which special symbol should be set as the key press trigger?", 20, 20, 360, 40)
				GUICtrlSetStyle(-1, $SS_CENTER)
				$button7a1 = GUICtrlCreateButton("{", 20, 80, 160, 40)
				$button7a2 = GUICtrlCreateButton("}", 220, 80, 160, 40)
				$button7a3 = GUICtrlCreateButton("^", 20, 140, 160, 40)
				$button7a4 = GUICtrlCreateButton("+", 220, 140, 160, 40)
				$button7a5 = GUICtrlCreateButton("#", 20, 200, 160, 40)
				$button7a6 = GUICtrlCreateButton("!", 220, 200, 160, 40)
				GUISetState()
				local $totrig = ""
				While 1
					$hMsg = GUIGetMsg()
					Switch $hMsg
						Case $GUI_EVENT_CLOSE
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a1
							$totrig = "{{}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a2
							$totrig = "{}}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a3
							$totrig = "{^}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a4
							$totrig = "{+}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a5
							$totrig = "{#}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a6
							$totrig = "{!}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
					EndSwitch
				WEnd
				GUIDelete($hChild7)
				ExitLoop
			Case $button728 ;F keys
				$hChild7a = GUICreate("Function Key Press Trigger", 400, 440, -1, -1, -1, -1, $hChild7)
				GUICtrlCreateLabel("Which F key should be set as the keypress trigger?", 20, 20, 360, 40)
				GUICtrlSetStyle(-1, $SS_CENTER)
				$button7a1 = GUICtrlCreateButton("F1", 20, 80, 160, 40)
				$button7a2 = GUICtrlCreateButton("F2", 220, 80, 160, 40)
				$button7a3 = GUICtrlCreateButton("F3", 20, 140, 160, 40)
				$button7a4 = GUICtrlCreateButton("F4", 220, 140, 160, 40)
				$button7a5 = GUICtrlCreateButton("F5", 20, 200, 160, 40)
				$button7a6 = GUICtrlCreateButton("F6", 220, 200, 160, 40)
				$button7a7 = GUICtrlCreateButton("F7", 20, 260, 160, 40)
				$button7a8 = GUICtrlCreateButton("F8", 220, 260, 160, 40)
				$button7a9 = GUICtrlCreateButton("F9", 20, 320, 160, 40)
				$button7a10 = GUICtrlCreateButton("F10", 220, 320, 160, 40)
				$button7a11 = GUICtrlCreateButton("F11", 20, 380, 160, 40)
				$button7a12 = GUICtrlCreateButton("F12", 220, 380, 160, 40)
				GUISetState()
				local $totrig = ""
				While 1
					$hMsg = GUIGetMsg()
					Switch $hMsg
						Case $GUI_EVENT_CLOSE
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a1
							$totrig = "{F1}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a2
							$totrig = "{F2}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a3
							$totrig = "{F3}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a4
							$totrig = "{F4}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a5
							$totrig = "{F5}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a6
							$totrig = "{F6}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a7
							$totrig = "{F7}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a8
							$totrig = "{F8}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a9
							$totrig = "{F9}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a10
							$totrig = "{F10}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a11
							$totrig = "{F11}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a12
							$totrig = "{F12}"
							addKeyPressToTrigger($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
					EndSwitch
				WEnd
				GUIDelete($hChild7)
				ExitLoop
		EndSwitch
	WEnd
EndFunc


Func addKeyPressToTrigger($shift, $alt, $control, $data)
;HotKeySet("^a", "GetPos") ;control
;HotKeySet("+a", "GetPos") ;  Shift
;HotKeySet("!a", "GetPos") ;alt
	local $totrig = ""
	if $shift then
		$totrig = $totrig & "+"
	endif
	if $alt then
		$totrig = $totrig & "!"
	endif
	if $control then
		$totrig = $totrig & "^"
	endif
	$totrig = "HotKeySet('" & $totrig & $data & "', 'HotKeyTrigger'){*}"

	AddToTrigger($totrig)
EndFunc



Func ClipboardTrigger()
	Local $sAnswer = InputBox("Clipboard Trigger", "What text?", "Planet Earth", "")
	local $totrig = "ClipGet() == '" & $sAnswer &"'"
	AddToTrigger($totrig)
EndFunc


Func MouseClickTrigger()
	Local $hChild1 = GUICreate("Mouse Click Trigger", 400, 200, -1, -1, -1, -1, $hGUI)
	GUICtrlCreateLabel("Which button should be the trigger if cliked?", 20, 20, 360, 35)
	GUICtrlSetStyle(-1, $SS_CENTER)
	local $button1a1 = GUICtrlCreateButton("Primary (left)", 20, 80, 160, 60)
	local $button1a2 = GUICtrlCreateButton("Secondary (right)", 220, 80, 160, 60)
	GUISetState()

	local $totrig = ""
	While 1
		$hMsg = GUIGetMsg()
		Switch $hMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($hChild1)
				ExitLoop
			Case $button1a1
				$totrig = "_IsPressed('01')"
				AddToTrigger($totrig)
				GUIDelete($hChild1)
				ExitLoop
			Case $button1a2
				$totrig = "_IsPressed('02')"
				AddToTrigger($totrig)
				GUIDelete($hChild1)
				ExitLoop
		EndSwitch
	WEnd
EndFunc


Func AddToTrigger($data)
	if $triggerText == "" then
		$triggerText = $data
	else
		$triggerText = $triggerText & " And " & $data
	endif
	msgbox(64,"trigger text", $triggerText)
EndFunc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Specific Behaviors

Func ClipboardBehavior()
	Local $sAnswer = InputBox("Clipboard Behavior", "What text should be put onto the Clipboard?", "Planet Jupiter", "")
	local $totrig = "clip " & $sAnswer
	AddToBehavior($totrig)
EndFunc


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Func WaitBehavior()
	Local $sAnswer = InputBox("Wait Behavior", "For how long should ReflexMem do nothing in miliseconds? (Max = 10000)", "1000", "")
	local $totrig = "sleep " & $sAnswer
	AddToBehavior($totrig)
EndFunc


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Func SendKeysBehavior()
	Local $hChild7 = GUICreate("Key Send Behavior", 400, 640, -1, -1, -1, -1, $hGUI)
	GUICtrlCreateLabel("Which key(s) should be pressed?", 20, 20, 360, 40)
	GUICtrlSetStyle(-1, $SS_CENTER)
	local $button71 = GUICtrlCreateButton("Text", 20, 60, 160, 30)
	local $button72 = GUICtrlCreateButton("Enter", 220, 60, 160, 30)
	local $button73 = GUICtrlCreateButton("Space", 20, 100, 160, 30)
	local $button74 = GUICtrlCreateButton("Shift", 220, 100, 160, 30)
	local $button75 = GUICtrlCreateButton("Alt", 20, 140, 160, 30)
	local $button76 = GUICtrlCreateButton("Control", 220, 140, 160, 30)
	local $button77 = GUICtrlCreateButton("Left", 20, 180, 160, 30)
	local $button78 = GUICtrlCreateButton("Right", 220, 180, 160, 30)
	local $button79 = GUICtrlCreateButton("Up", 20, 220, 160, 30)
	local $button710 = GUICtrlCreateButton("Down", 220, 220, 160, 30)
	local $button711 = GUICtrlCreateButton("Tab", 20, 260, 160, 30)
	local $button712 = GUICtrlCreateButton("Escape", 220,260, 160, 30)
	local $button713 = GUICtrlCreateButton("Page Up", 20, 300, 160, 30)
	local $button714 = GUICtrlCreateButton("Page Down", 220, 300, 160, 30)
	local $button715 = GUICtrlCreateButton("Home", 20, 340, 160, 30)
	local $button716 = GUICtrlCreateButton("End", 220, 340, 160, 30)
	local $button717 = GUICtrlCreateButton("Delete", 20, 380, 160, 30)
	local $button718 = GUICtrlCreateButton("Backspace", 220, 380, 160, 30)
	local $button719 = GUICtrlCreateButton("Caps Lock", 20, 420, 160, 30)
	local $button720 = GUICtrlCreateButton("Num Lock", 220, 420, 160, 30)
	local $button721 = GUICtrlCreateButton("Print Screen", 20, 460, 160, 30)
	local $button722 = GUICtrlCreateButton("Windows Key", 220, 460, 160, 30)
	local $button723 = GUICtrlCreateButton("Insert", 20, 500, 160, 30)
	local $button724 = GUICtrlCreateButton("Shift + Other Keys", 220, 500, 160, 30)
	local $button725 = GUICtrlCreateButton("Alt + Other Keys", 20, 540, 160, 30)
	local $button726 = GUICtrlCreateButton("Control + Other Keys", 220, 540, 160, 30)
	local $button727 = GUICtrlCreateButton("Special Symbols ({}^+#!)", 20, 580, 160, 30)
	local $button728 = GUICtrlCreateButton("F Keys", 220, 580, 160, 30)
	GUISetState()

	local $totrig = ""
	Local $sAnswer = ""
	local $Shift = false
	local $alt = false
	local $control = false

	While 1
		$hMsg = GUIGetMsg()
		Switch $hMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($hChild7)
				ExitLoop
			Case $button71
				$sAnswer = InputBox("Send Keys Behavior", "What text should be entered? (Letters, numbers, single-spaces and these symbols allowed: @$%&*()-_=~/|\[];:?)", "Hello World?", "")
				$sAnswer = StringReplace($sAnswer, "{", "")
				$sAnswer = StringReplace($sAnswer, "}", "")
				$sAnswer = StringReplace($sAnswer, "^", "")
				$sAnswer = StringReplace($sAnswer, "+", "")
				$sAnswer = StringReplace($sAnswer, "!", "")
				$sAnswer = StringReplace($sAnswer, "#", "")
				$totrig = $sAnswer
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button72
				$totrig = "{ENTER}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button73
				$totrig = "{SPACE}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button74
				$totrig = "{LSHIFT}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button75
				$totrig = "{ALT}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button76
				$totrig = "{LCTRL}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button77
				$totrig = "{LEFT}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button78
				$totrig = "{RIGHT}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button79
				$totrig = "{UP}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button710
				$totrig = "{DOWN}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button711
				$totrig = "{TAB}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button712
				$totrig = "{ESCAPE}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button713
				$totrig = "{PGUP}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button714
				$totrig = "{PGDN}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button715
				$totrig = "{HOME}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button716
				$totrig = "{END}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button717
				$totrig = "{DELETE}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button718
				$totrig = "{BACKSPACE}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button719
				$totrig = "{CAPSLOCK}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button720
				$totrig = "{NUMLOCK}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button721
				$totrig = "{PRINTSCREEN}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button722
				$totrig = "{LWIN}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button723
				$totrig = "{INSERT}"
				addSendToBehavior($shift, $alt, $control, $totrig)
				GUIDelete($hChild7)
				ExitLoop
			Case $button724 ;shift
				$shift = true
			Case $button725 ;alt
				$alt = true
			Case $button726 ;Control
				$control = true
				msgbox(64, "info", "")
			Case $button727 ;Special keys
				$hChild7a = GUICreate("Insert special keys", 400, 280, -1, -1, -1, -1, $hChild7)
				GUICtrlCreateLabel("Which special symbol should be sent?", 20, 20, 360, 40)
				GUICtrlSetStyle(-1, $SS_CENTER)
				$button7a1 = GUICtrlCreateButton("{", 20, 80, 160, 40)
				$button7a2 = GUICtrlCreateButton("}", 220, 80, 160, 40)
				$button7a3 = GUICtrlCreateButton("^", 20, 140, 160, 40)
				$button7a4 = GUICtrlCreateButton("+", 220, 140, 160, 40)
				$button7a5 = GUICtrlCreateButton("#", 20, 200, 160, 40)
				$button7a6 = GUICtrlCreateButton("!", 220, 200, 160, 40)
				GUISetState()
				local $totrig = ""
				While 1
					$hMsg = GUIGetMsg()
					Switch $hMsg
						Case $GUI_EVENT_CLOSE
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a1
							$totrig = "{{}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a2
							$totrig = "{}}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a3
							$totrig = "{^}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a4
							$totrig = "{+}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a5
							$totrig = "{#}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a6
							$totrig = "{!}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
					EndSwitch
				WEnd
				GUIDelete($hChild7)
				ExitLoop
			Case $button728 ;F keys
				$hChild7a = GUICreate("Insert Function keys", 400, 440, -1, -1, -1, -1, $hChild7)
				GUICtrlCreateLabel("Which F key should be sent?", 20, 20, 360, 40)
				GUICtrlSetStyle(-1, $SS_CENTER)
				$button7a1 = GUICtrlCreateButton("F1", 20, 80, 160, 40)
				$button7a2 = GUICtrlCreateButton("F2", 220, 80, 160, 40)
				$button7a3 = GUICtrlCreateButton("F3", 20, 140, 160, 40)
				$button7a4 = GUICtrlCreateButton("F4", 220, 140, 160, 40)
				$button7a5 = GUICtrlCreateButton("F5", 20, 200, 160, 40)
				$button7a6 = GUICtrlCreateButton("F6", 220, 200, 160, 40)
				$button7a7 = GUICtrlCreateButton("F7", 20, 260, 160, 40)
				$button7a8 = GUICtrlCreateButton("F8", 220, 260, 160, 40)
				$button7a9 = GUICtrlCreateButton("F9", 20, 320, 160, 40)
				$button7a10 = GUICtrlCreateButton("F10", 220, 320, 160, 40)
				$button7a11 = GUICtrlCreateButton("F11", 20, 380, 160, 40)
				$button7a12 = GUICtrlCreateButton("F12", 220, 380, 160, 40)
				GUISetState()
				local $totrig = ""
				While 1
					$hMsg = GUIGetMsg()
					Switch $hMsg
						Case $GUI_EVENT_CLOSE
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a1
							$totrig = "{F1}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a2
							$totrig = "{F2}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a3
							$totrig = "{F3}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a4
							$totrig = "{F4}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a5
							$totrig = "{F5}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a6
							$totrig = "{F6}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a7
							$totrig = "{F7}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a8
							$totrig = "{F8}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a9
							$totrig = "{F9}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a10
							$totrig = "{F10}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a11
							$totrig = "{F11}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
						Case $button7a12
							$totrig = "{F12}"
							addSendToBehavior($shift, $alt, $control, $totrig)
							GUIDelete($hChild7a)
							ExitLoop
					EndSwitch
				WEnd
				GUIDelete($hChild7)
				ExitLoop
		EndSwitch
	WEnd
EndFunc


Func addSendToBehavior($shift, $alt, $control, $data)
;HotKeySet("^a", "GetPos") ;control
;HotKeySet("+a", "GetPos") ;  Shift
;HotKeySet("!a", "GetPos") ;alt
	local $totrig = ""
	if $shift then
		$totrig = $totrig & "+"
	endif
	if $alt then
		$totrig = $totrig & "!"
	endif
	if $control then
		$totrig = $totrig & "^"
	endif
	$totrig = "send " & $totrig & $data

	AddToBehavior($totrig)
EndFunc


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Func KeyDownBehavior()
	Local $hChild8 = GUICreate("Key Down Behavior", 400, 360, -1, -1, -1, -1, $hGUI)
	GUICtrlCreateLabel("Which key(s) should be pressed and held down?", 20, 20, 360, 40)
	GUICtrlSetStyle(-1, $SS_CENTER)
	local $button81 = GUICtrlCreateButton("Single Letter or Number", 20, 60, 160, 30)
	local $button82 = GUICtrlCreateButton("Enter", 220, 60, 160, 30)
	local $button83 = GUICtrlCreateButton("Space", 20, 100, 160, 30)
	local $button84 = GUICtrlCreateButton("Shift", 220, 100, 160, 30)
	local $button85 = GUICtrlCreateButton("Alt", 20, 140, 160, 30)
	local $button86 = GUICtrlCreateButton("Control", 220, 140, 160, 30)
	local $button87 = GUICtrlCreateButton("Left", 20, 180, 160, 30)
	local $button88 = GUICtrlCreateButton("Right", 220, 180, 160, 30)
	local $button89 = GUICtrlCreateButton("Up", 20, 220, 160, 30)
	local $button810 = GUICtrlCreateButton("Down", 220, 220, 160, 30)
	local $button811 = GUICtrlCreateButton("Delete", 20, 260, 160, 30)
	local $button812 = GUICtrlCreateButton("Backspace", 220, 260, 160, 30)
	local $button813 = GUICtrlCreateButton("Tab", 20, 300, 160, 30)
	local $button814 = GUICtrlCreateButton("F Keys", 220, 300, 160, 30)
	GUISetState()

	local $totrig = ""
	Local $sAnswer = ""
	local $Shift = false
	local $alt = false
	local $control = false

	While 1
		$hMsg = GUIGetMsg()
		Switch $hMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($hChild7)
				ExitLoop
			Case $button81
				$sAnswer = InputBox("Key Down Behavior", "What single key should be pressed and held down? (Letters, numbers and these symbols allowed: @$%&*()-_=~/|\[];:?)", "a", "")
				$sAnswer = StringReplace($sAnswer, "{", "")
				$sAnswer = StringReplace($sAnswer, "}", "")
				$sAnswer = StringReplace($sAnswer, "^", "")
				$sAnswer = StringReplace($sAnswer, "+", "")
				$sAnswer = StringReplace($sAnswer, "!", "")
				$sAnswer = StringReplace($sAnswer, "#", "")
				$totrig = "send {" & StringLeft($sAnswer, 1) & " down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button82
				$totrig = "send {ENTER down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button83
				$totrig = "send {SPACE down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button84
				$totrig = "send {LSHIFT down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button85
				$totrig = "send {ALT down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button86
				$totrig = "send {LCTRL down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button87
				$totrig = "send {LEFT down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button88
				$totrig = "send {RIGHT down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button89
				$totrig = "send {UP down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button810
				$totrig = "send {DOWN down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button811
				$totrig = "send {DELETE down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button812
				$totrig = "send {BACKSPACE down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button813
				$totrig = "send {TAB down}"
				AddToBehavior($totrig)
				GUIDelete($hChild8)
				ExitLoop
			Case $button814 ;F keys
				$hChild8a = GUICreate("Key Down Function keys", 400, 440, -1, -1, -1, -1, $hChild8)
				GUICtrlCreateLabel("Which F key should be pressed and held down?", 20, 20, 360, 40)
				GUICtrlSetStyle(-1, $SS_CENTER)
				$button8a1 = GUICtrlCreateButton("F1", 20, 80, 160, 40)
				$button8a2 = GUICtrlCreateButton("F2", 220, 80, 160, 40)
				$button8a3 = GUICtrlCreateButton("F3", 20, 140, 160, 40)
				$button8a4 = GUICtrlCreateButton("F4", 220, 140, 160, 40)
				$button8a5 = GUICtrlCreateButton("F5", 20, 200, 160, 40)
				$button8a6 = GUICtrlCreateButton("F6", 220, 200, 160, 40)
				$button8a7 = GUICtrlCreateButton("F7", 20, 260, 160, 40)
				$button8a8 = GUICtrlCreateButton("F8", 220, 260, 160, 40)
				$button8a9 = GUICtrlCreateButton("F9", 20, 320, 160, 40)
				$button8a10 = GUICtrlCreateButton("F10", 220, 320, 160, 40)
				$button8a11 = GUICtrlCreateButton("F11", 20, 380, 160, 40)
				$button8a12 = GUICtrlCreateButton("F12", 220, 380, 160, 40)
				GUISetState()
				local $totrig = ""
				While 1
					$hMsg = GUIGetMsg()
					Switch $hMsg
						Case $GUI_EVENT_CLOSE
							GUIDelete($hChild7a)
							ExitLoop
						Case $button8a1
							$totrig = "send {F1 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a2
							$totrig = "send {F2 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a3
							$totrig = "send {F3 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a4
							$totrig = "send {F4 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a5
							$totrig = "send {F5 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a6
							$totrig = "send {F6 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a7
							$totrig = "send {F7 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a8
							$totrig = "send {F8 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a9
							$totrig = "send {F9 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a10
							$totrig = "send {F10 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a11
							$totrig = "send {F11 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
						Case $button8a12
							$totrig = "send {F12 down}"
							AddToBehavior($totrig)
							GUIDelete($hChild8a)
							ExitLoop
					EndSwitch
				WEnd
				GUIDelete($hChild8)
				ExitLoop
		EndSwitch
	WEnd
EndFunc


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Func KeyUpBehavior()
	Local $hChild9 = GUICreate("Key Up Behavior", 400, 360, -1, -1, -1, -1, $hGUI)
	GUICtrlCreateLabel("Which key(s) should be unpressed?", 20, 20, 360, 40)
	GUICtrlSetStyle(-1, $SS_CENTER)
	local $button91 = GUICtrlCreateButton("Single Letter or Number", 20, 60, 160, 30)
	local $button92 = GUICtrlCreateButton("Enter", 220, 60, 160, 30)
	local $button93 = GUICtrlCreateButton("Space", 20, 100, 160, 30)
	local $button94 = GUICtrlCreateButton("Shift", 220, 100, 160, 30)
	local $button95 = GUICtrlCreateButton("Alt", 20, 140, 160, 30)
	local $button96 = GUICtrlCreateButton("Control", 220, 140, 160, 30)
	local $button97 = GUICtrlCreateButton("Left", 20, 180, 160, 30)
	local $button98 = GUICtrlCreateButton("Right", 220, 180, 160, 30)
	local $button99 = GUICtrlCreateButton("Up", 20, 220, 160, 30)
	local $button910 = GUICtrlCreateButton("Down", 220, 220, 160, 30)
	local $button911 = GUICtrlCreateButton("Delete", 20, 260, 160, 30)
	local $button912 = GUICtrlCreateButton("Backspace", 220, 260, 160, 30)
	local $button913 = GUICtrlCreateButton("Tab", 20, 300, 160, 30)
	local $button914 = GUICtrlCreateButton("F Keys", 220, 300, 160, 30)
	GUISetState()

	local $totrig = ""
	Local $sAnswer = ""
	local $Shift = false
	local $alt = false
	local $control = false

	While 1
		$hMsg = GUIGetMsg()
		Switch $hMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($hChild7)
				ExitLoop
			Case $button91
				$sAnswer = InputBox("Key Up Behavior", "What single key should be lifted up? (Letters, numbers and these symbols allowed: @$%&*()-_=~/|\[];:?)", "a", "")
				$sAnswer = StringReplace($sAnswer, "{", "")
				$sAnswer = StringReplace($sAnswer, "}", "")
				$sAnswer = StringReplace($sAnswer, "^", "")
				$sAnswer = StringReplace($sAnswer, "+", "")
				$sAnswer = StringReplace($sAnswer, "!", "")
				$sAnswer = StringReplace($sAnswer, "#", "")
				$totrig = "send {" & StringLeft($sAnswer, 1) & " up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button92
				$totrig = "send {ENTER up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button93
				$totrig = "send {SPACE up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button94
				$totrig = "send {LSHIFT up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button95
				$totrig = "send {ALT up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button96
				$totrig = "send {LCTRL up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button97
				$totrig = "send {LEFT up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button98
				$totrig = "send {RIGHT up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button99
				$totrig = "send {UP up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button910
				$totrig = "send {DOWN up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button911
				$totrig = "send {DELETE up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button912
				$totrig = "send {BACKSPACE up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button913
				$totrig = "send {TAB up}"
				AddToBehavior($totrig)
				GUIDelete($hChild9)
				ExitLoop
			Case $button914 ;F keys
				$hChild9a = GUICreate("Key Up Function keys", 400, 440, -1, -1, -1, -1, $hChild9)
				GUICtrlCreateLabel("Which F key should be unpressed?", 20, 20, 360, 40)
				GUICtrlSetStyle(-1, $SS_CENTER)
				$button9a1 = GUICtrlCreateButton("F1", 20, 80, 160, 40)
				$button9a2 = GUICtrlCreateButton("F2", 220, 80, 160, 40)
				$button9a3 = GUICtrlCreateButton("F3", 20, 140, 160, 40)
				$button9a4 = GUICtrlCreateButton("F4", 220, 140, 160, 40)
				$button9a5 = GUICtrlCreateButton("F5", 20, 200, 160, 40)
				$button9a6 = GUICtrlCreateButton("F6", 220, 200, 160, 40)
				$button9a7 = GUICtrlCreateButton("F7", 20, 260, 160, 40)
				$button9a8 = GUICtrlCreateButton("F8", 220, 260, 160, 40)
				$button9a9 = GUICtrlCreateButton("F9", 20, 320, 160, 40)
				$button9a10 = GUICtrlCreateButton("F10", 220, 320, 160, 40)
				$button9a11 = GUICtrlCreateButton("F11", 20, 380, 160, 40)
				$button9a12 = GUICtrlCreateButton("F12", 220, 380, 160, 40)
				GUISetState()
				local $totrig = ""
				While 1
					$hMsg = GUIGetMsg()
					Switch $hMsg
						Case $GUI_EVENT_CLOSE
							GUIDelete($hChild7a)
							ExitLoop
						Case $button9a1
							$totrig = "send {F1 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a2
							$totrig = "send {F2 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a3
							$totrig = "send {F3 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a4
							$totrig = "send {F4 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a5
							$totrig = "send {F5 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a6
							$totrig = "send {F6 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a7
							$totrig = "send {F7 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a8
							$totrig = "send {F8 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a9
							$totrig = "send {F9 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a10
							$totrig = "send {F10 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a11
							$totrig = "send {F11 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
						Case $button9a12
							$totrig = "send {F12 up}"
							AddToBehavior($totrig)
							GUIDelete($hChild9a)
							ExitLoop
					EndSwitch
				WEnd
				GUIDelete($hChild9)
				ExitLoop
		EndSwitch
	WEnd
EndFunc



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Func MouseMoveBehavior()
	msgbox(64, "Mouse Move Behavior", "Click ok, then click on the screen at the location you'd like the mouse to move")

	Local $aPos
	While 1
	  $aPos = MouseGetPos()
		ToolTip("X: " & $aPos[0] & "  Y: " & $aPos[1])
	  If _IsPressed("01") Then
			$aPos = MouseGetPos()
	    ExitLoop
	  endIf
	WEnd

	Local $xcord = InputBox("Mouse Move Behavior", "What X coordinate would you like the mouse to move to?", $aPos[0], "")
	Local $ycord = InputBox("Mouse Move Behavior", "What X coordinate would you like the mouse to move to?", $aPos[1], "")
	local $totrig = "mouse " & $xcord & " " & $ycord
	AddToBehavior($totrig)
EndFunc




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Func MouseClickBehavior()
	Local $hChild11 = GUICreate("Mouse Click Behavior", 400, 200, -1, -1, -1, -1, $hGUI)
	GUICtrlCreateLabel("Which button should be cliked?", 20, 20, 360, 35)
	GUICtrlSetStyle(-1, $SS_CENTER)
	local $button111 = GUICtrlCreateButton("Primary (left)", 20, 80, 160, 60)
	local $button112 = GUICtrlCreateButton("Secondary (right)", 220, 80, 160, 60)
	GUISetState()

	local $totrig = ""
	While 1
		$hMsg = GUIGetMsg()
		Switch $hMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($hChild11)
				ExitLoop
			Case $button111
				$totrig = "click primary"
				AddToBehavior($totrig)
				GUIDelete($hChild11)
				ExitLoop
			Case $button112
				$totrig = "click secondary"
				AddToBehavior($totrig)
				GUIDelete($hChild11)
				ExitLoop
		EndSwitch
	WEnd
EndFunc



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Func MouseWheelBehavior()
	Local $hChild12 = GUICreate("Mouse Wheel Behavior", 400, 200, -1, -1, -1, -1, $hGUI)
	GUICtrlCreateLabel("Which direction should mouse wheel scroll?", 20, 20, 360, 35)
	GUICtrlSetStyle(-1, $SS_CENTER)
	local $button121 = GUICtrlCreateButton("Up", 20, 80, 160, 60)
	local $button122 = GUICtrlCreateButton("Down", 220, 80, 160, 60)
	GUISetState()

	local $totrig = ""
	While 1
		$hMsg = GUIGetMsg()
		Switch $hMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($hChild12)
				ExitLoop
			Case $button121
				$totrig = "wheel up"
				AddToBehavior($totrig)
				GUIDelete($hChild12)
				ExitLoop
			Case $button122
				$totrig = "wheel down"
				AddToBehavior($totrig)
				GUIDelete($hChild12)
				ExitLoop
		EndSwitch
	WEnd
EndFunc


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Func RunProgramBehavior()
	local $sFile = FileOpenDialog("Choose Program...", @TempDir, "All (*.*)")
	local $split = StringInStr($sFile, "\", 0, -1)
	local $program = stringright($sFile, StringLen($sFile)-$split)
	local $location = StringLeft($sFile, $split)


	Local $hChild14 = GUICreate("Run Program Behavior", 400, 220, -1, -1, -1, -1, $hGUI)
	GUICtrlCreateLabel("How should this program be run?", 20, 20, 360, 35)
	GUICtrlSetStyle(-1, $SS_CENTER)
	local $button141 = GUICtrlCreateButton("Maximized", 20, 80, 160, 40)
	local $button142 = GUICtrlCreateButton("Minimized", 220, 80, 160, 40)
	local $button143 = GUICtrlCreateButton("Hidden", 20, 140, 160, 40)
	local $button144 = GUICtrlCreateButton("No Preference", 220, 140, 160, 40)
	GUISetState()

	local $totrig = ""
	While 1
		$hMsg = GUIGetMsg()
		Switch $hMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($hChild14)
				ExitLoop
			Case $button141
				$totrig = "run " & $program & " " & $location & " @SW_MAXIMIZE"
				AddToBehavior($totrig)
				GUIDelete($hChild14)
				ExitLoop
			Case $button142
				$totrig = "run " & $program & " " & $location & " @SW_MINIMIZE"
				AddToBehavior($totrig)
				GUIDelete($hChild14)
				ExitLoop
			Case $button143
				$totrig = "run " & $program & " " & $location & " @SW_HIDE"
				AddToBehavior($totrig)
				GUIDelete($hChild14)
				ExitLoop
			Case $button144
				$totrig = "run " & $program & " " & $location
				AddToBehavior($totrig)
				GUIDelete($hChild14)
				ExitLoop
		EndSwitch
	WEnd
EndFunc


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Func AddToBehavior($data)
	if $behaviorText == "" then
		$behaviorText = $data
	else
		$behaviorText = $behaviorText & @CRLF & $data
	endif
	msgbox(64,"Behavior text", $behaviorText)
EndFunc



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Save



Func SaveTrigger()
	;get trigger file number, save as global
	local $i = 0
	While FileExists(_PathFull(@ScriptDir & "\scripts\if") & "\" & $i & ".txt")
		$i = $i + 1
	WEnd
	$triggerNumber = $i

	;save trigger text in if/filenumber.txt
  local $file = _PathFull(@ScriptDir & "\scripts\if") & "\" & $triggerNumber & ".txt"

  If Not FileWrite($file, $triggerText) Then
    MsgBox($MB_SYSTEMMODAL, $triggerNumber, "couldn't write trigger")
    Return False
	else
		GUICtrlSetState($hButton16, $GUI_HIDE)
		sleep(1000)
		msgbox(64, "Trigger", "Successfully Saved")
	EndIf

EndFunc

Func SaveBehavior()

	local $file = _PathFull(@ScriptDir & "\scripts\then") & "\" & $triggerNumber & ".txt"

	If Not FileWrite($file, $behaviorText) Then
		MsgBox($MB_SYSTEMMODAL, $triggerNumber, "couldn't write behavior")
		Return False
	else
		GUICtrlSetState($hButton17, $GUI_HIDE)
		sleep(1000)
		msgbox(64, "Behavior", "Successfully Saved")
	EndIf

EndFunc



CreateTriggers()



While 1
	$hMsg = GUIGetMsg()
	Switch $hMsg
		Case $GUI_EVENT_CLOSE
			GUIDelete($hGUI)
			Exit
		Case $hButton
			KeyPressTrigger()
		Case $hButton1
			MouseClickTrigger()
		Case $hButton2
			ClipboardTrigger()
		Case $hButton16
			SaveTrigger()
			HideTriggers()
			CreateBehaviors()
			ExitLoop
		case Else
			SetLabel1()
	EndSwitch
WEnd


While 1
	$hMsg = GUIGetMsg()
	Switch $hMsg
		Case $GUI_EVENT_CLOSE
			GUIDelete($hGUI)
			Exit
		Case $hButton7
			SendKeysBehavior()
		Case $hButton8
			KeyDownBehavior()
		Case $hButton9
			KeyUpBehavior()
		Case $hButton10
			MouseMoveBehavior()
		Case $hButton11
			MouseClickBehavior()
		Case $hButton12
			MouseWheelBehavior()
		Case $hButton13
			ClipboardBehavior()
		Case $hButton14
			RunProgramBehavior()
		Case $hButton15
			WaitBehavior()
		Case $hButton17
			SaveBehavior()
			ExitLoop
		case Else
			SetLabel()
	EndSwitch
WEnd


ReturnToMain()

Func ReturnToMain()
	Run("reflexmem.exe")
	GUIDelete($hGUI)
	Exit
EndFunc
