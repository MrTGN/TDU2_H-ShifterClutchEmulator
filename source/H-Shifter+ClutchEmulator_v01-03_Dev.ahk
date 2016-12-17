; Copyright (C) 2012 Tsiryuta Gleb, E-mail: spbtgn@gmail.com
;
; This program is free software; you can redistribute it and/or
; modify it under the terms of the GNU General Public License
; as published by the Free Software Foundation; either version 2
; of the License, or (at your option) any later version.
; 
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
;
; Read the full text of the License in the license.txt file
;
Process, Priority, , High
Menu, TRAY, NoStandard
Menu, TRAY, Tip, H-Shifter+ClutchEmulator
Menu, TRAY, Add, Reload, Program_Reload
Menu, TRAY, Add ; separator
Menu, TRAY, Add, Settings, Settings_Window
Menu, TRAY, Default, Settings
Menu, TRAY, Add ; separator
Menu, TRAY, Add, Settings Help, Settings_Help
Menu, TRAY, Add ; separator
Menu, TRAY, Add, Exit, Program_Exit

IfExist, H-Shifter+ClutchEmulator.ini
{
	Gearbox := {-1:"0", 1:"0", 2:"0", 3:"0", 4:"0", 5:"0", 6:"0", 7:"0"}
	iButton =
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Reverse_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Reverse_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Reverse_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	Gearbox[-1] := iButton
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, First_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "First_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "First_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	Gearbox[1] := iButton
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Second_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Second_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Second_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	Gearbox[2] := iButton
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Third_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Third_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Third_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	Gearbox[3] := iButton
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Fourth_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Fourth_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Fourth_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	Gearbox[4] := iButton
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Fifth_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Fifth_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Fifth_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	Gearbox[5] := iButton
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Sixth_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Sixth_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Sixth_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	Gearbox[6] := iButton
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Seventh_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Seventh_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Seventh_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	Gearbox[7] := iButton
	iButton =
	IniRead, Clutch, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Clutch, Error
	if (Clutch = "Error")
	{
		MsgBox, , Error, Failed to read the "Clutch" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Clutch" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	IniRead, Joy_Clutch, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Joy_Clutch, Error
	if (Joy_Clutch = "Error")
	{
		MsgBox, , Error, Failed to read the "Joy_Clutch" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Joy_Clutch" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	IniRead, Gear_Up, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Gear_Up, Error
	if (Gear_Up = "Error")
	{
		MsgBox, , Error, Failed to read the "Gear_Up" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Gear_Up" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	IniRead, Gear_Down, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Gear_Down, Error
	if (Gear_Down = "Error")
	{
		MsgBox, , Error, Failed to read the "Gear_Down" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Gear_Down" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	IniRead, Map, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Map, Error
	if (Map = "Error")
	{
		MsgBox, , Error, Failed to read the "Map" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Map" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	IniRead, Menu, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Menu, Error
	if (Menu = "Error")
	{
		MsgBox, , Error, Failed to read the "Menu" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Menu" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	IniRead, Start_Minimized, H-Shifter+ClutchEmulator.ini, Main_Settings, Start_Minimized, Error
	if (Start_Minimized = "Error")
	{
		MsgBox, , Error, Failed to read the "Start_Minimized" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Start_Minimized" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}

	; Only Joy 10, only keyboard 01, Joy and Keyboard 11
	Capture_button(Button_type)
	{
		global
		Gui, New, , Key_capture
		Gui Key_capture: +ToolWindow -SysMenu +AlwaysOnTop
		Gui, Key_capture:Font, s9 w600, Verdana
		Gui, Key_capture:Add, Text, x10 y0 w200 h20 0x201, Press any key
		Gui, Key_capture:Font, s12 Bold, Verdana
		Gui, Key_capture:Add, Text, x10 y30 w200 h30 vKey_Name 0x201 +Border, 
		Gui, Key_capture:Font, s8 w600, Verdana
		Gui, Key_capture:Add, Text, x10 y80 w200 h20 vClose_Time 0x201,
		Gui, Key_capture:Show, w220 h100 Center, % "Press any key"
		Auto_Close := 10
		SetTimer, Auto_Close_Timer, 1000
		if (Button_type = 10) or (Button_type = 11)
		{
			if JoystickNumber =
			{
				JoystickNumber = 0
				Loop 16  ; Query each joystick number to find out which ones exist.
				{
					GetKeyState, JoyName, %A_Index%JoyName
					if JoyName <>
					{
						JoystickNumber = %A_Index%
						break
					}
				}
			}
			if (JoystickNumber <= 0) and (Button_type = 10)
			{
					SetTimer, Auto_Close_Timer, Off
					Auto_Close =
					Gui, Key_capture:Destroy
					MsgBox, , Error, The system does not appear to have any joysticks., 10
					Return
			}
			if JoystickNumber > 0
			{
				GetKeyState, joy_buttons, %JoystickNumber%JoyButtons
				SetTimer, JoyButtons_Monitorring, 50
			}
			if Button_type = 11
			{
				SetTimer, Keyboard_Keys_Monitorring, 500
			}
		}
		else if Button_type = 01
		{
			SetTimer, Keyboard_Keys_Monitorring, 500
		}
		WinWaitClose, Press any key
		Return
		
		Auto_Close_Timer:
		if Auto_Close > 0
		{
			Auto_Close -= 1
			GuiControl, Key_capture:, Close_Time, Closing after %Auto_Close% sec
		}
		else
		{
			if (Button_type = 10) or (Button_type = 11)
			{
				SetTimer, JoyButtons_Monitorring, Off
				if Button_type = 11
				{
					SetTimer, Keyboard_Keys_Monitorring, Off
				}
			}
			else if Button_type = 01
			{
				SetTimer, Keyboard_Keys_Monitorring, Off
			}
			SetTimer, Auto_Close_Timer, Off
			Gui, Key_capture:Destroy
			Auto_Close =
			Return
		}
		Return
		
		JoyButtons_Monitorring:
		Loop, %joy_buttons%
		{
			GetKeyState, joy%a_index%, %JoystickNumber%joy%a_index%
			if (joy%a_index% = "D")
			{
				SetTimer, Auto_Close_Timer, Off
				if Button_type = 11
				{
					SetTimer, Keyboard_Keys_Monitorring, Off
				}
				SetTimer, JoyButtons_Monitorring, Off
				Captured_button = Joy%a_index%
				GuiControl, Key_capture:, Key_Name, Joy%a_index%
				Sleep, 2000
				Gui, Key_capture:Destroy
				Auto_Close =
				Break
			}
		}
		Return
		
		Keyboard_Keys_Monitorring:
		Input, SingleKey, L1 T1, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{Backspace}{Capslock}{Numlock}{NumpadIns}{NumpadEnd}{NumpadDown}{NumpadPgDn}{NumpadLeft}{NumpadClear}{NumpadRight}{NumpadHome}{NumpadUp}{NumpadPgUp}{NumpadDel}{NumpadDiv}{NumpadMult}{NumpadAdd}{NumpadSub}{NumpadEnter}{PrintScreen}{Pause}{Enter}{Space}
		if ErrorLevel contains EndKey:
		{
			SetTimer, Auto_Close_Timer, Off
			if Button_type = 11
			{
				SetTimer, JoyButtons_Monitorring, Off
			}
			SetTimer, Keyboard_Keys_Monitorring, Off
			SetFormat, Integer, Hex
			Scan_code := GetKeySC(SubStr(ErrorLevel, 8))
			SetFormat, Integer, Decimal
			Scan_code := "SC" SubStr(Scan_code, 3)
			Scan_code_to_name := GetKeyName(Scan_code)
			Captured_button = %Scan_code%
			GuiControl, Key_capture:, Key_Name, %Scan_code_to_name%
			Sleep, 2000
			Gui, Key_capture:Destroy
			Scan_code =
			Scan_code_to_name =
			Auto_Close =
			Return
		}
		else if SingleKey
		{
			SetTimer, Auto_Close_Timer, Off
			if Button_type = 11
			{
				SetTimer, JoyButtons_Monitorring, Off
			}
			SetTimer, Keyboard_Keys_Monitorring, Off
			SetFormat, Integer, Hex
			Scan_code := GetKeySC(SingleKey)
			SetFormat, Integer, Decimal
			Scan_code := "SC" SubStr(Scan_code, 3)
			Scan_code_to_name := GetKeyName(Scan_code)
			Captured_button = %Scan_code%
			GuiControl, Key_capture:, Key_Name, %Scan_code_to_name%
			Sleep, 2000
			Gui, Key_capture:Destroy
			Scan_code =
			Scan_code_to_name =
			Auto_Close =
			Return
		}
		Return
	}
	
	if (Start_Minimized = "0")
	{
		Settings_Window:
		IfWinExist, H-Shifter+ClutchEmulator Settings
			Gui, Main_Window:Destroy
		Gui, New, , Main_Window
		; /--- Gui H-Shifter+ClutchEmulator Settings ---/
		; -- "Emulated Game Keys" GroupBox --
		Gui, Main_Window:Font, c006400 s8 w600, Verdana
		Gui, Main_Window:Add, GroupBox, x15 y10 w410 h480, Emulated Game Keys (only a keyboard keys)
		; -- "Emulated Game Keys" Description --
		Gui, Main_Window:Font, cDefault s8 w500, Verdana
		Gui, Main_Window:Add, Text, x35 y35 w360 h30 +Center, This section contains a list of keyboard keys the program will emulate for the game.
		; -- "Emulated Game Keys" Buttons --
		Gui, Main_Window:Font, cDefault s8 w600, Verdana
		Gui, Main_Window:Add, Button, x30 y80 w120 h30 gCapture_Clutch, Clutch
		Gui, Main_Window:Add, Button, x290 y80 w120 h30 gSet_Clutch_None, Set "None"
		Gui, Main_Window:Add, Button, x30 y125 w120 h30 gCapture_Reverse_gear, Reverse gear
		Gui, Main_Window:Add, Button, x30 y170 w120 h30 gCapture_First_gear, First gear
		Gui, Main_Window:Add, Button, x30 y215 w120 h30 gCapture_Second_gear, Second gear
		Gui, Main_Window:Add, Button, x30 y260 w120 h30 gCapture_Third_gear, Third gear
		Gui, Main_Window:Add, Button, x30 y305 w120 h30 gCapture_Fourth_gear, Fourth gear
		Gui, Main_Window:Add, Button, x30 y350 w120 h30 gCapture_Fifth_gear, Fifth gear
		Gui, Main_Window:Add, Button, x30 y395 w120 h30 gCapture_Sixth_gear, Sixth gear
		Gui, Main_Window:Add, Button, x30 y440 w120 h30 gCapture_Seventh_gear, Seventh gear
		; -- "Emulated Game Keys" Text fields --
		Gui, Main_Window:Font, cDefault s8 w700, Verdana
		Gui, Main_Window:Add, Text, x165 y86 w110 h18 0x201 +Border vtxt_Clutch, None
		Gui, Main_Window:Add, Text, x165 y131 w110 h18 0x201 +Border vtxt_Reverse_gear, None
		Gui, Main_Window:Add, Text, x165 y176 w110 h18 0x201 +Border vtxt_First_gear, None
		Gui, Main_Window:Add, Text, x165 y221 w110 h18 0x201 +Border vtxt_Second_gear, None
		Gui, Main_Window:Add, Text, x165 y266 w110 h18 0x201 +Border vtxt_Third_gear, None
		Gui, Main_Window:Add, Text, x165 y311 w110 h18 0x201 +Border vtxt_Fourth_gear, None
		Gui, Main_Window:Add, Text, x165 y356 w110 h18 0x201 +Border vtxt_Fifth_gear, None
		Gui, Main_Window:Add, Text, x165 y401 w110 h18 0x201 +Border vtxt_Sixth_gear, None
		Gui, Main_Window:Add, Text, x165 y446 w110 h18 0x201 +Border vtxt_Seventh_gear, None
		; -- "Program Hotkeys" GroupBox --
		Gui, Main_Window:Font, c780000 s8 w600, Verdana
		Gui, Main_Window:Add, GroupBox, x440 y10 w410 h480, Program Hotkeys
		; -- "Program Hotkeys" Description --
		Gui, Main_Window:Font, cDefault s8 w500, Verdana
		Gui, Main_Window:Add, Text, x460 y35 w360 h30 +Center, This section contains a list of keyboard keys and/or joystick buttons which the program will react to (shift the gear etc).
		; -- "Program Hotkeys" Buttons --
		Gui, Main_Window:Font, cDefault s8 w600, Verdana
		Gui, Main_Window:Add, Button, x455 y80 w120 h30 gCapture_Joy_Clutch, JoyClutch
		Gui, Main_Window:Add, Button, x715 y80 w120 h30 gSet_Joy_Clutch_None, Set "None"
		Gui, Main_Window:Add, Button, x455 y125 w120 h30 gCapture_Gear_Up, Gear Up
		Gui, Main_Window:Add, Button, x455 y170 w120 h30 gCapture_Gear_Down, Gear Down
		; -- "Program Hotkeys" Text fields --
		Gui, Main_Window:Font, cDefault s8 w700, Verdana
		Gui, Main_Window:Add, Text, x590 y86 w110 h18 0x201 +Border vtxt_Joy_Clutch, None
		Gui, Main_Window:Add, Text, x590 y131 w110 h18 0x201 +Border vtxt_Gear_Up, None
		Gui, Main_Window:Add, Text, x590 y176 w110 h18 0x201 +Border vtxt_Gear_Down, None
		; -- Sub_"Game Buttons" GroupBox --
		Gui, Main_Window:Font, c780000 s8 w600, Verdana
		Gui, Main_Window:Add, GroupBox, x455 y265 w380 h185, Game Buttons
		; -- Sub_"Game Buttons" Description --
		Gui, Main_Window:Font, cDefault s8 w500, Verdana
		Gui, Main_Window:Add, Text, x475 y290 w330 h45 +Center, When you will press one of these buttons, the gearbox will be automatically shifted to the neutral position.
		; -- Sub_"Game Buttons" Buttons --
		Gui, Main_Window:Font, cDefault s8 w600, Verdana
		Gui, Main_Window:Add, Button, x470 y350 w105 h30 gCapture_Map, Map
		Gui, Main_Window:Add, Button, x470 y395 w105 h30 gCapture_Menu, Menu
		; -- Sub_"Game Buttons" Text fields --
		Gui, Main_Window:Font, cDefault s8 w700, Verdana
		Gui, Main_Window:Add, Text, x590 y356 w110 h18 0x201 +Border vtxt_Map, None
		Gui, Main_Window:Add, Text, x590 y401 w110 h18 0x201 +Border vtxt_Menu, None
		; -- Main Checkboxes --
		Gui, Main_Window:Font, cDefault s8 w600, Verdana
		Gui, Main_Window:Add, Checkbox, x15 y510 vCbx_Clutch_pedal gCheck_Clutch_pedal, I will use the clutch pedal (automatic clutch pushing function will be disabled)
		Gui, Main_Window:Add, Checkbox, x15 y550 vCbx_Start_minimized gCheck_Start_minimized, Start minimized
		; -- Main buttons --
		Gui, Main_Window:Font, cDefault s8 w600, Verdana
		Gui, Main_Window:Add, Button, x700 y500 w150 h30 gProgram_Reload, Apply changes
		Gui, Main_Window:Add, Button, x700 y540 w150 h30 gMnz_to_tray, Minimize to tray
		Gui, Main_Window:Add, Button, x700 y580 w70 h30 gSettings_Help, Help
		Gui, Main_Window:Add, Button, x780 y580 w70 h30 gProgram_Exit, Exit
		; /--- Writing key names to the text fields ---/
		iButton =
		; -- Reverse_gear --
		iButton := Gearbox[-1]
		if (iButton != "None")
		{
			iButton := GetKeyName(iButton)
		}
		GuiControl, Main_Window:, txt_Reverse_gear, %iButton%
		; -- First_gear --
		iButton := Gearbox[1]
		if (iButton != "None")
		{
			iButton := GetKeyName(iButton)
		}
		GuiControl, Main_Window:, txt_First_gear, %iButton%
		; -- Second_gear --
		iButton := Gearbox[2]
		if (iButton != "None")
		{
			iButton := GetKeyName(iButton)
		}
		GuiControl, Main_Window:, txt_Second_gear, %iButton%
		; -- Third_gear --
		iButton := Gearbox[3]
		if (iButton != "None")
		{
			iButton := GetKeyName(iButton)
		}
		GuiControl, Main_Window:, txt_Third_gear, %iButton%
		; -- Fourth_gear --
		iButton := Gearbox[4]
		if (iButton != "None")
		{
			iButton := GetKeyName(iButton)
		}
		GuiControl, Main_Window:, txt_Fourth_gear, %iButton%
		; -- Fifth_gear --
		iButton := Gearbox[5]
		if (iButton != "None")
		{
			iButton := GetKeyName(iButton)
		}
		GuiControl, Main_Window:, txt_Fifth_gear, %iButton%
		; -- Sixth_gear --
		iButton := Gearbox[6]
		if (iButton != "None")
		{
			iButton := GetKeyName(iButton)
		}
		GuiControl, Main_Window:, txt_Sixth_gear, %iButton%
		; -- Seventh_gear --
		iButton := Gearbox[7]
		if (iButton != "None")
		{
			iButton := GetKeyName(iButton)
		}
		GuiControl, Main_Window:, txt_Seventh_gear, %iButton%
		; -- Clutch --
		if Clutch contains Joy, None
		{
			GuiControl, Main_Window:, txt_Clutch, %Clutch%
		}
		else if Clutch contains SC
		{
			iButton := GetKeyName(Clutch)
			GuiControl, Main_Window:, txt_Clutch, %iButton%
		}
		; -- Joy_Clutch --
		if Joy_Clutch contains Joy, None
		{
			GuiControl, Main_Window:, txt_Joy_Clutch, %Joy_Clutch%
		}
		else if Joy_Clutch contains SC
		{
			iButton := GetKeyName(Joy_Clutch)
			GuiControl, Main_Window:, txt_Joy_Clutch, %iButton%
		}
		; -- Gear_Up --
		if Gear_Up contains Joy, None
		{
			GuiControl, Main_Window:, txt_Gear_Up, %Gear_Up%
		}
		else if Gear_Up contains SC
		{
			iButton := GetKeyName(Gear_Up)
			GuiControl, Main_Window:, txt_Gear_Up, %iButton%
		}
		; -- Gear_Down --
		if Gear_Down contains Joy, None
		{
			GuiControl, Main_Window:, txt_Gear_Down, %Gear_Down%
		}
		else if Gear_Down contains SC
		{
			iButton := GetKeyName(Gear_Down)
			GuiControl, Main_Window:, txt_Gear_Down, %iButton%
		}
		; -- Map --
		if Map contains Joy, None
		{
			GuiControl, Main_Window:, txt_Map, %Map%
		}
		else if Map contains SC
		{
			iButton := GetKeyName(Map)
			GuiControl, Main_Window:, txt_Map, %iButton%
		}
		; -- Menu --
		if Menu contains Joy, None
		{
			GuiControl, Main_Window:, txt_Menu, %Menu%
		}
		else if Menu contains SC
		{
			iButton := GetKeyName(Menu)
			GuiControl, Main_Window:, txt_Menu, %iButton%
		}
		iButton =
		; /--- Writing Checkboxes state ---/
		if (Clutch = "None" AND Joy_Clutch = "None")
		{
				GuiControl, Main_Window:, Cbx_Clutch_pedal, 1
		}
		else
		{
			GuiControl, Main_Window:, Cbx_Clutch_pedal, 0
		}
		GuiControl, Main_Window:, Cbx_Start_minimized, %Start_minimized%
		; /--- Copyright ---/
		Gui, Main_Window:Font, cDefault s7 w500, Verdana
		Gui, Main_Window:Add, Text, x310 y600 w240 h18 +Center, Created by TGN (E-mail: spbtgn@gmail.com)
		; /--- Show main window ---/
		Gui, Main_Window:Show, w865 h620 Center, H-Shifter+ClutchEmulator Settings
		WinWaitClose, H-Shifter+ClutchEmulator Settings
		if IsLabel(A_ThisLabel)
		{
			Return
		}
	}
}
else IfNotExist, H-Shifter+ClutchEmulator.ini
{
	MsgBox, , H-Shifter+ClutchEmulator, H-Shifter+ClutchEmulator.ini configuration file does not exist! `nThe default configuration file will be generated automatically.
	FileAppend,
	(
; H-Shifter+ClutchEmulator configuration file.
; Original author - TGN. E-Mail: spbtgn@gmail.com
; Program is free for use.
; In this configuration file some values in quotes can looks like "SC9" - it is not a key name, it's a scan code - something like keyboard key ID. 
; Scan code is used for a multi-language keyboard layout for prevent situations, when user have changed input language and program became not working.

[Main_Settings]
; Always starts the program without gui:
Start_Minimized="0"

[Emulated_Game_Keys]
; -This section contains a list of keyboard keys the program will emulate for the game.-

;	!IMPORTANT!
;	The script engine can't emulate joystick button press, but can react to it.
;	It means that in this section you can set ONLY keyboard keys and you'll need to set those keys to the same parameters in the game settings.
;
; If you want to set or change a key for one of these parameters, change the parameter value in quotes. (Do not change the parameter name!)

; Reverse gear:
Reverse_gear="SC9"

; First gear:
First_gear="SC2"

; Second gear:
Second_gear="SC3"

; Third gear:
Third_gear="SC4"

; Fourth gear:
Fourth_gear="SC5"

; Fifth gear:
Fifth_gear="SC6"

; Sixth gear:
Sixth_gear="SC7"

; Seventh gear:
Seventh_gear="SC8"

; "Clutch" - keyboard key that you have set in TDU2 settings for the Clutch. Before shifting gear, the program is checking the "Clutch" button state
; and in case it is not pressed, the program will press and hold it automaticly while gear is shifting.
; This function works all the time, so you don't need to press clutch key every time you shift gear.
Clutch="SCA"

[Program_Hotkeys]
; -This section contains a list of keyboard keys and/or joystick buttons which the program will react to (shift the gear etc).-

;	The "JoyClutch" parameter was added for those people who want to use the joystick button as Clutch in the game.
;	It was done because the program can't emulate joystick button press but can react to it.
;	When user presses the "Joy_Clutch" Joystick button, the program will press the "Clutch" keyboard key for the game.
;	Also before shifting gear the program is checking the "Clutch" state and in case it is not pressed, program will press and hold it automaticly while the gear is shifting.
;	This function works all the time, so you don't need to press JoyClutch !button! every time you shift gear.
;
;	If you use a keyboard for playing, set "None" for the "Joy_Clutch" parameter.
;
;	If you have a clutch pedal and you want to use it in the game, set "None" for the "Clutch" and "Joy_Clutch" parameters.
;	In this case the automatic clutch pushing function will be disabled and you will need to push the clutch pedal every time you shift gear.
Joy_Clutch="None"

; Gear Up - shift to the next gear
Gear_Up="None"

; Gear Down - shift to the previous gear
Gear_Down="None"

; "Map" and "Menu" keys were added to prevent key (gear) holding when you open game map or game menu.
; When you press one of these keys, the gearbox will automatically be shifted to the neutral position.
Map="SC32"
Menu="SC1"
	), H-Shifter+ClutchEmulator.ini
	MsgBox, , H-Shifter+ClutchEmulator, Default configuration file has been successfully generated! `nPress OK to go to the main settings window.
	MsgBox, , H-Shifter+ClutchEmulator, Each time you run this program you will be hear two sound beeps. `nIt signalises that all parameters were read successfully and program is waiting for you to run the game. `nProgram emulates H-Shifter gearbox function only if the TDU2 window is active.
	MsgBox, , H-Shifter+ClutchEmulator, You can send all your questions and suggestions `nto my e-mail: spbtgn@gmail.com. `nEnjoy your game! =)
	Reload
}

; /--- Checking button varibles ---/
Variables_check := {"Reverse gear": "0", "First gear": "0", "Second gear": "0", "Third gear": "0", "Fourth gear": "0", "Fifth gear": "0", "Sixth gear": "0", "Seventh gear": "0", "Gear Up": "0", "Gear Down": "0", "Map": "0", "Menu": "0"}
Variables_check["Reverse gear"] := Gearbox[-1]
Variables_check["First gear"] := Gearbox[1]
Variables_check["Second gear"] := Gearbox[2]
Variables_check["Third gear"] := Gearbox[3]
Variables_check["Fourth gear"] := Gearbox[4]
Variables_check["Fifth gear"] := Gearbox[5]
Variables_check["Sixth gear"] := Gearbox[6]
Variables_check["Seventh gear"] := Gearbox[7]
Variables_check["Gear Up"] := Gear_Up
Variables_check["Gear Down"] := Gear_Down
Variables_check["Map"] := Map
Variables_check["Menu"] := Menu
For key, value in Variables_check
{
	if value =
	{
		MsgBox, , Error, %key% button does not assigned!
		key =
		value =
		Variables_check =
		if (Start_Minimized = "1")
		{
			IniWrite, "0", H-Shifter+ClutchEmulator.ini, Main_Settings, Start_Minimized
		}
		Reload
	}
	else if value contains None
	{
		MsgBox, , Error, %key% button does not assigned!
		key =
		value =
		Variables_check =
		if (Start_Minimized = "1")
		{
			IniWrite, "0", H-Shifter+ClutchEmulator.ini, Main_Settings, Start_Minimized
		}
		Reload
	}
}
key =
value =
Variables_check =

SoundBeep, 250, 250

iGear := 0

SetKeyDelay, 0, 2
SendMode Input

JoyClutchFunc()
{
	global
	iClutchPrev := iClutch
	; -Joy Clutch state checking-
	GetKeyState, JoyClutchBttn, %Joy_Clutch%
	if (JoyClutchBttn = "D")
	{
		iClutch := 1
	}
	else if (JoyClutchBttn = "U")
	{
		iClutch := 0
	}
	; -Clutch state changing-
	if iClutch != %iClutchPrev%
	{
		if iClutch = 1
		{
			Send {%Clutch% down}
		}
		else if iClutch = 0
		{
			Send {%Clutch% up}
			Sleep, 4
			Send {%Clutch% down}
			Sleep, 6
			Send {%Clutch% up}
		}
	}
}

CheckingMenuKey()
{
	global
	; -Checking Menu key state-
	GetKeyState, MenuKey, %Menu%
	if (MenuKey = "D")
	{
		KeyWait %Menu%
		iGear := 0
	}
}

CheckingMapKey()
{
	global
	; -Checking Map key state-
	GetKeyState, MapKey, %Map%
	if (MapKey = "D")
	{
		KeyWait %Map%
		iGear := 0
	}
}

CheckingGearsBttns()
{
	global
	; -Checking Gear Down button state-
	GetKeyState, GearDownBttn, %Gear_Down%
	if (GearDownBttn = "D")
	{
		KeyWait %Gear_Down%
		if iGear between 0 and 7
		{
			iGear := iGear - 1
		}
	}
	; -Checking Gear Up button state-
	GetKeyState, GearUpBttn, %Gear_Up%
	if (GearUpBttn = "D")
	{
		KeyWait %Gear_Up%
		if iGear between -1 and 6
		{
			iGear := iGear + 1
		}
	}
}

ClutchShiftingGears()
{
	global
	; -Shifting gears-
	if iGear != 0
	{
		; -Checking clutch state-
		GetKeyState, ClutchBttn, %Clutch%
		if (ClutchBttn = "U")
		{
			Send {%Clutch% down}
			Sleep, 1
			; -Release previous gear-
			if iPrevGear != 0
			{
				PrevGear := Gearbox[iPrevGear]
				Send {%PrevGear% up}
				Sleep, 5
			}
			; -Shifting new gear-
			Gear := Gearbox[iGear]
			Send {%Gear% down}
			Sleep, 5
			Send {%Clutch% up}
		}
		else if (ClutchBttn = "D")
		{
			; -Release previous gear-
			if iPrevGear != 0
			{
				PrevGear := Gearbox[iPrevGear]
				Send {%PrevGear% up}
				Sleep, 5
			}
			; -Shifting new gear-
			Gear := Gearbox[iGear]
			Send {%Gear% down}
		}
	}
	else if iGear = 0
	{
		; -Release previous gear-
		if iPrevGear != 0
		{
			PrevGear := Gearbox[iPrevGear]
			Send {%PrevGear% up}
			Sleep, 3
		}
	}
}

ShiftingGears()
{
	global
	; -Shifting gears-
	if iGear != 0
	{
	; -Release previous gear-
		if iPrevGear != 0
		{
			PrevGear := Gearbox[iPrevGear]
			Send {%PrevGear% up}
			Sleep, 5
		}
		; -Shifting new gear-
		Gear := Gearbox[iGear]
		Send {%Gear% down}
	}
	else if iGear = 0
	{
		; -Release previous gear-
		if iPrevGear != 0
		{
			PrevGear := Gearbox[iPrevGear]
			Send {%PrevGear% up}
			Sleep, 3
		}
	}
}

SoundBeep, 300, 250

; /---- Main Loop section ----/
if (Clutch = "None" AND Joy_Clutch = "None")
{
	Loop
	{
		IfWinActive, Test Drive Unlimited 2
		{
			iPrevGear := iGear
			CheckingMenuKey()
			CheckingMapKey()
			CheckingGearsBttns()
			if iGear != %iPrevGear%
			{
				ShiftingGears()
			}
		}
		else IfWinNotActive, Test Drive Unlimited 2
			WinWaitNotActive, Test Drive Unlimited 2
		Sleep, 1
	}
}
else if (Joy_Clutch = "None")
{
	Loop
	{
		IfWinActive, Test Drive Unlimited 2
		{
			iPrevGear := iGear
			CheckingMenuKey()
			CheckingMapKey()
			CheckingGearsBttns()
			if iGear != %iPrevGear%
			{
				ClutchShiftingGears()
			}
		}
		else IfWinNotActive, Test Drive Unlimited 2
			WinWaitNotActive, Test Drive Unlimited 2
		Sleep, 1
	}
}
else if (Joy_Clutch != "None")
{
	iClutch := 0
	Loop
	{
		IfWinActive, Test Drive Unlimited 2
		{
			iPrevGear := iGear
			JoyClutchFunc()
			CheckingMenuKey()
			CheckingMapKey()
			CheckingGearsBttns()
			if iGear != %iPrevGear%
			{
				ClutchShiftingGears()
			}
		}
		else IfWinNotActive, Test Drive Unlimited 2
			WinWaitNotActive, Test Drive Unlimited 2
		Sleep, 1
	}
}
else
{
	MsgBox Error! Check parameters in H-Shifter+ClutchEmulator.ini configuration file.
}

; /--- Emulated Game Keys Buttons Functions ---/
Capture_Clutch:
Capture_button(01)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Clutch
	IniRead, Clutch, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Clutch, Error
	if (Clutch = "Error")
	{
		MsgBox, , Error, Failed to read the "Clutch" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Clutch" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if Clutch contains Joy, None
	{
		GuiControl, Main_Window:, txt_Clutch, %Clutch%
	}
	else if Clutch contains SC
	{
		iButton := GetKeyName(Clutch)
		GuiControl, Main_Window:, txt_Clutch, %iButton%
		iButton =
	}
	Captured_button =
}
Return

Set_Clutch_None:
IniWrite, "None", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Clutch
IniRead, Clutch, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Clutch, Error
if (Clutch = "Error")
{
	MsgBox, , Error, Failed to read the "Clutch" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Clutch" parameter if this file exists. `nPress OK to close the program.
	ExitApp
}
GuiControl, Main_Window:, txt_Clutch, %Clutch%
Return

Capture_Reverse_gear:
Capture_button(01)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Reverse_gear
	iButton =
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Reverse_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Reverse_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Reverse_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if (iButton != "None")
	{
		iButton := GetKeyName(iButton)
	}
	GuiControl, Main_Window:, txt_Reverse_gear, %iButton%
	iButton =
	Captured_button =
}
Return

Capture_First_gear:
Capture_button(01)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, First_gear
	iButton =
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, First_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "First_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "First_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if (iButton != "None")
	{
		iButton := GetKeyName(iButton)
	}
	GuiControl, Main_Window:, txt_First_gear, %iButton%
	iButton =
	Captured_button =
}
Return

Capture_Second_gear:
Capture_button(01)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Second_gear
	iButton =
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Second_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Second_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Second_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if (iButton != "None")
	{
		iButton := GetKeyName(iButton)
	}
	GuiControl, Main_Window:, txt_Second_gear, %iButton%
	iButton =
	Captured_button =
}
Return

Capture_Third_gear:
Capture_button(01)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Third_gear
	iButton =
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Third_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Third_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Third_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if (iButton != "None")
	{
		iButton := GetKeyName(iButton)
	}
	GuiControl, Main_Window:, txt_Third_gear, %iButton%
	iButton =
	Captured_button =
}
Return

Capture_Fourth_gear:
Capture_button(01)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Fourth_gear
	iButton =
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Fourth_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Fourth_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Fourth_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if (iButton != "None")
	{
		iButton := GetKeyName(iButton)
	}
	GuiControl, Main_Window:, txt_Fourth_gear, %iButton%
	iButton =
	Captured_button =
}
Return

Capture_Fifth_gear:
Capture_button(01)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Fifth_gear
	iButton =
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Fifth_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Fifth_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Fifth_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if (iButton != "None")
	{
		iButton := GetKeyName(iButton)
	}
	GuiControl, Main_Window:, txt_Fifth_gear, %iButton%
	iButton =
	Captured_button =
}
Return

Capture_Sixth_gear:
Capture_button(01)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Sixth_gear
	iButton =
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Sixth_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Sixth_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Sixth_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if (iButton != "None")
	{
		iButton := GetKeyName(iButton)
	}
	GuiControl, Main_Window:, txt_Sixth_gear, %iButton%
	iButton =
	Captured_button =
}
Return

Capture_Seventh_gear:
Capture_button(01)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Seventh_gear
	iButton =
	IniRead, iButton, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Seventh_gear, Error
	if (iButton = "Error")
	{
		MsgBox, , Error, Failed to read the "Seventh_gear" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Seventh_gear" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if (iButton != "None")
	{
		iButton := GetKeyName(iButton)
	}
	GuiControl, Main_Window:, txt_Seventh_gear, %iButton%
	iButton =
	Captured_button =
}
Return

; /--- Program Hotkeys Buttons Functions ---/
Capture_Joy_Clutch:
Capture_button(10)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Joy_Clutch
	IniRead, Joy_Clutch, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Joy_Clutch, Error
	if (Joy_Clutch = "Error")
	{
		MsgBox, , Error, Failed to read the "Joy_Clutch" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Joy_Clutch" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	GuiControl, Main_Window:, txt_Joy_Clutch, %Joy_Clutch%
	Captured_button =
}
Return

Set_Joy_Clutch_None:
IniWrite, "None", H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Joy_Clutch
IniRead, Joy_Clutch, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Joy_Clutch, Error
if (Joy_Clutch = "Error")
{
	MsgBox, , Error, Failed to read the "Joy_Clutch" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Joy_Clutch" parameter if this file exists. `nPress OK to close the program.
	ExitApp
}
GuiControl, Main_Window:, txt_Joy_Clutch, %Joy_Clutch%
Return

Capture_Gear_Up:
Capture_button(11)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Gear_Up
	IniRead, Gear_Up, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Gear_Up, Error
	if (Gear_Up = "Error")
	{
		MsgBox, , Error, Failed to read the "Gear_Up" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Gear_Up" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if Gear_Up contains Joy, None
	{
		GuiControl, Main_Window:, txt_Gear_Up, %Gear_Up%
	}
	else if Gear_Up contains SC
	{
		iButton := GetKeyName(Gear_Up)
		GuiControl, Main_Window:, txt_Gear_Up, %iButton%
		iButton =
	}
	Captured_button =
}
Return

Capture_Gear_Down:
Capture_button(11)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Gear_Down
	IniRead, Gear_Down, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Gear_Down, Error
	if (Gear_Down = "Error")
	{
		MsgBox, , Error, Failed to read the "Gear_Down" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Gear_Down" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if Gear_Down contains Joy, None
	{
		GuiControl, Main_Window:, txt_Gear_Down, %Gear_Down%
	}
	else if Gear_Down contains SC
	{
		iButton := GetKeyName(Gear_Down)
		GuiControl, Main_Window:, txt_Gear_Down, %iButton%
		iButton =
	}
	Captured_button =
}
Return

Capture_Map:
Capture_button(11)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Map
	IniRead, Map, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Map, Error
	if (Map = "Error")
	{
		MsgBox, , Error, Failed to read the "Map" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Map" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if Map contains Joy, None
	{
		GuiControl, Main_Window:, txt_Map, %Map%
	}
	else if Map contains SC
	{
		iButton := GetKeyName(Map)
		GuiControl, Main_Window:, txt_Map, %iButton%
		iButton =
	}
	Captured_button =
}
Return

Capture_Menu:
Capture_button(11)
if Captured_button
{
	IniWrite, "%Captured_button%", H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Menu
	IniRead, Menu, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Menu, Error
	if (Menu = "Error")
	{
		MsgBox, , Error, Failed to read the "Menu" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Menu" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
	if Menu contains Joy, None
	{
		GuiControl, Main_Window:, txt_Menu, %Menu%
	}
	else if Menu contains SC
	{
		iButton := GetKeyName(Menu)
		GuiControl, Main_Window:, txt_Menu, %iButton%
		iButton =
	}
	Captured_button =
}
Return

; /--- Checkboxes Functions ---/
Check_Clutch_pedal:
IniWrite, "None", H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Clutch
IniWrite, "None", H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Joy_Clutch
IniRead, Clutch, H-Shifter+ClutchEmulator.ini, Emulated_Game_Keys, Clutch, Error
if (Clutch = "Error")
{
	MsgBox, , Error, Failed to read the "Clutch" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Clutch" parameter if this file exists. `nPress OK to close the program.
	ExitApp
}
IniRead, Joy_Clutch, H-Shifter+ClutchEmulator.ini, Program_Hotkeys, Joy_Clutch, Error
if (Joy_Clutch = "Error")
{
	MsgBox, , Error, Failed to read the "Joy_Clutch" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Joy_Clutch" parameter if this file exists. `nPress OK to close the program.
	ExitApp
}
GuiControl, Main_Window:, txt_Clutch, %Clutch%
GuiControl, Main_Window:, txt_Joy_Clutch, %Joy_Clutch%
Return

Check_Start_minimized:
if (Start_Minimized = "1")
{
	IniWrite, "0", H-Shifter+ClutchEmulator.ini, Main_Settings, Start_Minimized
	IniRead, Start_Minimized, H-Shifter+ClutchEmulator.ini, Main_Settings, Start_Minimized, Error
	if (Start_Minimized = "Error")
	{
		MsgBox, , Error, Failed to read the "Start_Minimized" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Start_Minimized" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
}
else if (Start_Minimized = "0")
{
	IniWrite, "1", H-Shifter+ClutchEmulator.ini, Main_Settings, Start_Minimized
	IniRead, Start_Minimized, H-Shifter+ClutchEmulator.ini, Main_Settings, Start_Minimized, Error
	if (Start_Minimized = "Error")
	{
		MsgBox, , Error, Failed to read the "Start_Minimized" parameter from H-Shifter+ClutchEmulator.ini! `nCheck value of the "Start_Minimized" parameter if this file exists. `nPress OK to close the program.
		ExitApp
	}
}
Return

; /--- Main Buttons & Tray Functions ---/
Settings_Help:
IfWinExist, H-Shifter+ClutchEmulator Settings Help
	Gui, Settings_Help:Destroy
Gui, New, , Settings_Help
Gui Settings_Help: +ToolWindow -SysMenu +AlwaysOnTop
; -- Emulated Game Keys Description --
Gui, Settings_Help:Font, c006400 s8 w600, Verdana
Gui, Settings_Help:Add, GroupBox, x10 y10 w580 h200, Emulated Game Keys (only a keyboard keys)
Gui, Settings_Help:Font, cDefault s8 w500, Verdana
Gui, Settings_Help:Add, Text, x30 y30 w540 h30 +Center, This section contains a list of keyboard keys the program will emulate for the game. Those keys must be set to the same parameters in the TDU2 game settings.
; -- !IMPORTANT! --
Gui, Settings_Help:Font, cRed s8 w600, Verdana
Gui, Settings_Help:Add, Text, x20 y65 w100 h20 +Border 0x201, !IMPORTANT!
Gui, Settings_Help:Font, cDefault s8 w500 , Verdana
Gui, Settings_Help:Add, Text, x20 y85 w560 h45, The script engine can't emulate joystick button press, but can react to it. `nIt means that in this section you can set ONLY keyboard keys and you'll need to set those keys to the same parameters in the game settings.
; -- "Clutch" --
Gui, Settings_Help:Font, cDefault s8 w600, Verdana
Gui, Settings_Help:Add, Text, x20 y140 w60 h14, "Clutch"
Gui, Settings_Help:Font, cDefault s8 w500, Verdana
Gui, Settings_Help:Add, Text, x80 y140 w500 h14, - keyboard key that you have set in TDU2 settings for the Clutch.
Gui, Settings_Help:Add, Text, x20 y154 w560 h45, Before shifting gear, the program is checking the "Clutch" button state and in case it is not pressed, the program will press and hold it automaticly while gear is shifting. `nThis function works all the time, so you don't need to press clutch key every time you shift gear.
; -- Program Hotkeys --
Gui, Settings_Help:Font, c780000 s8 w600, Verdana
Gui, Settings_Help:Add, GroupBox, x10 y225 w580 h290, Program Hotkeys
Gui, Settings_Help:Font, cDefault s8 w500, Verdana
Gui, Settings_Help:Add, Text, x30 y245 w540 h30 +Center, This section contains a list of keyboard keys and/or joystick buttons which the program will react to (shift the gear etc).
; -- "JoyClutch" --
Gui, Settings_Help:Font, cDefault s8 w600, Verdana
Gui, Settings_Help:Add, Text, x20 y285 w80 h14, "JoyClutch"
Gui, Settings_Help:Font, cDefault s8 w500, Verdana
Gui, Settings_Help:Add, Text, x100 y285 w480 h14, - this parameter was added for those people who want to use the joystick button
Gui, Settings_Help:Add, Text, x20 y299 w560 h80, as Clutch in the game. It was done because the program can't emulate joystick button press but can react to it. When user presses the "Joy_Clutch" Joystick button, the program will press the "Clutch" keyboard key for the game. Also before shifting gear the program is checking the "Clutch" state and in case it is not pressed, program will press and hold it automaticly while the gear is shifting. This function works all the time, so you don't need to press JoyClutch !button! every time you shift gear.
; -- "Gear Up" --
Gui, Settings_Help:Font, cDefault s8 w600, Verdana
Gui, Settings_Help:Add, Text, x20 y395 w70 h14, "Gear Up"
Gui, Settings_Help:Font, cDefault s8 w500, Verdana
Gui, Settings_Help:Add, Text, x90 y395 w490 h14, - shift to the next gear.
; -- "Gear Down" --
Gui, Settings_Help:Font, cDefault s8 w600, Verdana
Gui, Settings_Help:Add, Text, x20 y425 w90 h14, "Gear Down"
Gui, Settings_Help:Font, cDefault s8 w500, Verdana
Gui, Settings_Help:Add, Text, x110 y425 w470 h14, - shift to the previous gear.
; -- "Map" and "Menu" --
Gui, Settings_Help:Font, cDefault s8 w600, Verdana
Gui, Settings_Help:Add, Text, x20 y455 w124 h14, "Map" and "Menu"
Gui, Settings_Help:Font, cDefault s8 w500, Verdana
Gui, Settings_Help:Add, Text, x144 y455 w436 h14, keys were added to prevent key (gear) holding when you open game map
Gui, Settings_Help:Add, Text, x20 y469 w560 h30, or game menu. When you press one of these keys, the gearbox will automatically be shifted to the neutral position.
; -- "I will use the clutch pedal" --
Gui, Settings_Help:Font, cDefault s8 w600, Verdana
Gui, Settings_Help:Add, Text, x10 y530 w190 h14, "I will use the clutch pedal"
Gui, Settings_Help:Font, cDefault s8 w500, Verdana
Gui, Settings_Help:Add, Text, x200 y530 w390 h14, - if this checkbox is checked "Clutch" and "JoyClutch" will be set
Gui, Settings_Help:Add, Text, x10 y544 w580 h46, to "None". In this case the program will not check the "Clutch" state before shifting gear and will not hold it automaticly while the gear is shifting. So you will need to push clutch pedal every time you shift gear.
; -- Button Close --
Gui, Settings_Help:Font, cDefault s8 w600, Verdana
Gui, Settings_Help:Add, Button, x500 y600 w90 h30 gClose_Settings_Help, Close
Gui, Settings_Help:Show, w600 h640 Center, H-Shifter+ClutchEmulator Settings Help
; -- Wait for Close --
WinWaitClose, H-Shifter+ClutchEmulator Settings Help
Return

Close_Settings_Help:
Gui, Settings_Help:Destroy
Return

Program_Reload:
Reload
Return

GuiClose:
Mnz_to_tray:
IfWinExist, H-Shifter+ClutchEmulator Settings Help
{
	Gui, Settings_Help:Destroy
}
Gui, Main_Window:Destroy
Return

Program_Exit:
ExitApp
Return

Return