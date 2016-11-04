Func ChooseButtonHelper(ByRef $nameofchoice, $shouldsend = false)
  local $return  = ""
  local $send    = ""
  local $waiting = true
  While $waiting
    If _IsPressed("01") Then
      $nameofchoice = "Left mouse button"
      $return = "01"
      $send = ""
      $send = ""
      $waiting = False
    elseif _IsPressed("02") Then
      $nameofchoice = "Right mouse button"
      $return = "02"
      $send = ""
      $waiting = False
    elseif _IsPressed("04") Then
      $nameofchoice = "Middle mouse button"
      $return = "04"
      $send = ""
      $waiting = False
    elseif _IsPressed("05") Then
      $nameofchoice = "X1 mouse button"
      $return = "05"
      $send = ""
      $waiting = False
    elseif _IsPressed("06") Then
      $nameofchoice = "X2 mouse button"
      $return = "06"
      $send = ""
      $waiting = False
    elseif _IsPressed("03") Then
      $nameofchoice = "Control-break processing"
      $return = "03"
      $send = "BREAK"
      $waiting = False
    elseif _IsPressed("08") Then
      $nameofchoice = "BACKSPACE"
      $return = "08"
      $send = "BACKSPACE"
      $waiting = False
    elseif _IsPressed("09") Then
      $nameofchoice = "TAB"
      $return = "09"
      $send = "TAB"
      $waiting = False
    elseif _IsPressed("0C") Then
      $nameofchoice = "CLEAR"
      $return = "0C"
      $send = ""
      $waiting = False
    elseif _IsPressed("0D") Then
      $nameofchoice = "ENTER"
      $return = "0D"
      $send = "ENTER"
      $waiting = False
    elseif _IsPressed("10") Then
      $nameofchoice = "SHIFT"
      $return = "10"
      $send = "LSHIFT"
      $waiting = False
    elseif _IsPressed("11") Then
      $nameofchoice = "CTRL"
      $return = "11"
      $send = "LCTRL"
      $waiting = False
    elseif _IsPressed("12") Then
      $nameofchoice = "ALT"
      $return = "12"
      $send = "ALT"
      $waiting = False
    elseif _IsPressed("13") Then
      $nameofchoice = "PAUSE"
      $return = "13"
      $send = "PAUSE"
      $waiting = False
    elseif _IsPressed("14") Then
      $nameofchoice = "CAPS LOCK"
      $return = "14"
      $send = "CAPSLOCK toggle"
      $waiting = False
    elseif _IsPressed("1B") Then
      $nameofchoice = "ESC"
      $return = "1B"
      $send = "ESCAPE"
      $waiting = False
    elseif _IsPressed("20") Then
      $nameofchoice = "SPACE"
      $return = "20"
      $send = "SPACE"
      $waiting = False
    elseif _IsPressed("21") Then
      $nameofchoice = "PAGE UP"
      $return = "21"
      $send = "PGUP"
      $waiting = False
    elseif _IsPressed("22") Then
      $nameofchoice = "PAGE DOWN"
      $return = "22"
      $send = "PGDN"
      $waiting = False
    elseif _IsPressed("23") Then
      $nameofchoice = "END"
      $return = "23"
      $send = "END"
      $waiting = False
    elseif _IsPressed("24") Then
      $nameofchoice = "HOME"
      $return = "24"
      $send = "HOME"
      $waiting = False
    elseif _IsPressed("25") Then
      $nameofchoice = "LEFT ARROW"
      $return = "25"
      $send = "LEFT"
      $waiting = False
    elseif _IsPressed("26") Then
      $nameofchoice = "UP ARROW"
      $return = "26"
      $send = "UP"
      $waiting = False
    elseif _IsPressed("27") Then
      $nameofchoice = "RIGHT ARROW"
      $return = "27"
      $send = "RIGHT"
      $waiting = False
    elseif _IsPressed("28") Then
      $nameofchoice = "DOWN ARROW"
      $return = "28"
      $send = "DOWN"
      $waiting = False
    elseif _IsPressed("29") Then
      $nameofchoice = "SELECT"
      $return = "29"
      $send = ""
      $waiting = False
    elseif _IsPressed("2A") Then
      $nameofchoice = "PRINT"
      $return = "2A"
      $send = ""
      $waiting = False
    elseif _IsPressed("2B") Then
      $nameofchoice = "EXECUTE"
      $return = "2B"
      $send = ""
      $waiting = False
    elseif _IsPressed("2C") Then
      $nameofchoice = "PRINT SCREEN"
      $return = "2C"
      $send = "PRINTSCREEN"
      $waiting = False
    elseif _IsPressed("2D") Then
      $nameofchoice = "INS"
      $return = "2D"
      $send = "INSERT"
      $waiting = False
    elseif _IsPressed("2E") Then
      $nameofchoice = "DEL"
      $return = "2E"
      $send = "DELETE"
      $waiting = False
    elseif _IsPressed("30") Then
      $nameofchoice = "0"
      $return = "30"
      $send = "0"
      $waiting = False
    elseif _IsPressed("31") Then
      $nameofchoice = "1"
      $return = "31"
      $send = "1"
      $waiting = False
    elseif _IsPressed("32") Then
      $nameofchoice = "2"
      $return = "32"
      $send = "2"
      $waiting = False
    elseif _IsPressed("33") Then
      $nameofchoice = "3"
      $return = "33"
      $send = "3"
      $waiting = False
    elseif _IsPressed("34") Then
      $nameofchoice = "4"
      $return = "34"
      $send = "4"
      $waiting = False
    elseif _IsPressed("35") Then
      $nameofchoice = "5"
      $return = "35"
      $send = "5"
      $waiting = False
    elseif _IsPressed("36") Then
      $nameofchoice = "6"
      $return = "36"
      $send = "6"
      $waiting = False
    elseif _IsPressed("37") Then
      $nameofchoice = "7"
      $return = "37"
      $send = "7"
      $waiting = False
    elseif _IsPressed("38") Then
      $nameofchoice = "8"
      $return = "38"
      $send = "8"
      $waiting = False
    elseif _IsPressed("39") Then
      $nameofchoice = "9"
      $return = "39"
      $send = "9"
      $waiting = False
    elseif _IsPressed("41") Then
      $nameofchoice = "A"
      $return = "41"
      $send = "a"
      $waiting = False
    elseif _IsPressed("42") Then
      $nameofchoice = "B"
      $return = "42"
      $send = "b"
      $waiting = False
    elseif _IsPressed("43") Then
      $nameofchoice = "C"
      $return = "43"
      $send = "c"
      $waiting = False
    elseif _IsPressed("44") Then
      $nameofchoice = "D"
      $return = "44"
      $send = "d"
      $waiting = False
    elseif _IsPressed("45") Then
      $nameofchoice = "E"
      $return = "45"
      $send = "e"
      $waiting = False
    elseif _IsPressed("46") Then
      $nameofchoice = "F"
      $return = "46"
      $send = "f"
      $waiting = False
    elseif _IsPressed("47") Then
      $nameofchoice = "G"
      $return = "47"
      $send = "g"
      $waiting = False
    elseif _IsPressed("48") Then
      $nameofchoice = "H"
      $return = "48"
      $send = "h"
      $waiting = False
    elseif _IsPressed("49") Then
      $nameofchoice = "I"
      $return = "49"
      $send = "i"
      $waiting = False
    elseif _IsPressed("4A") Then
      $nameofchoice = "J"
      $return = "4A"
      $send = "j"
      $waiting = False
    elseif _IsPressed("4B") Then
      $nameofchoice = "K"
      $return = "4B"
      $send = "k"
      $waiting = False
    elseif _IsPressed("4C") Then
      $nameofchoice = "L"
      $return = "4C"
      $send = "l"
      $waiting = False
    elseif _IsPressed("4D") Then
      $nameofchoice = "M"
      $return = "4D"
      $send = "m"
      $waiting = False
    elseif _IsPressed("4E") Then
      $nameofchoice = "N"
      $return = "4E"
      $send = "n"
      $waiting = False
    elseif _IsPressed("4F") Then
      $nameofchoice = "O"
      $return = "4F"
      $send = "o"
      $waiting = False
    elseif _IsPressed("50") Then
      $nameofchoice = "P"
      $return = "50"
      $send = "p"
      $waiting = False
    elseif _IsPressed("52") Then
      $nameofchoice = "Q"
      $return = "52"
      $send = "q"
      $waiting = False
    elseif _IsPressed("51") Then
      $nameofchoice = "R"
      $return = "51"
      $send = "r"
      $waiting = False
    elseif _IsPressed("53") Then
      $nameofchoice = "S"
      $return = "53"
      $send = "s"
      $waiting = False
    elseif _IsPressed("54") Then
      $nameofchoice = "T"
      $return = "54"
      $send = "t"
      $waiting = False
    elseif _IsPressed("55") Then
      $nameofchoice = "U"
      $return = "55"
      $send = "u"
      $waiting = False
    elseif _IsPressed("56") Then
      $nameofchoice = "V"
      $return = "56"
      $send = "v"
      $waiting = False
    elseif _IsPressed("57") Then
      $nameofchoice = "W"
      $return = "57"
      $send = "w"
      $waiting = False
    elseif _IsPressed("58") Then
      $nameofchoice = "X"
      $return = "58"
      $send = "x"
      $waiting = False
    elseif _IsPressed("59") Then
      $nameofchoice = "Y"
      $return = "59"
      $send = "y"
      $waiting = False
    elseif _IsPressed("5A") Then
      $nameofchoice = "Z"
      $return = "5A"
      $send = "z"
      $waiting = False
    elseif _IsPressed("5B") Then
      $nameofchoice = "Left Windows"
      $return = "5B"
      $send = "LWIN"
      $waiting = False
    elseif _IsPressed("5C") Then
      $nameofchoice = "Right Windows"
      $return = "5C"
      $send = "RWIN"
      $waiting = False
    elseif _IsPressed("60") Then
      $nameofchoice = "Numeric keypad 0"
      $return = "60"
      $send = "NUMPAD0"
      $waiting = False
    elseif _IsPressed("61") Then
      $nameofchoice = "Numeric keypad 1"
      $return = "61"
      $send = "NUMPAD1"
      $waiting = False
    elseif _IsPressed("62") Then
      $nameofchoice = "Numeric keypad 2"
      $return = "62"
      $send = "NUMPAD2"
      $waiting = False
    elseif _IsPressed("63") Then
      $nameofchoice = "Numeric keypad 3"
      $return = "63"
      $send = "NUMPAD3"
      $waiting = False
    elseif _IsPressed("64") Then
      $nameofchoice = "Numeric keypad 4"
      $return = "64"
      $send = "NUMPAD4"
      $waiting = False
    elseif _IsPressed("65") Then
      $nameofchoice = "Numeric keypad 5"
      $return = "65"
      $send = "NUMPAD5"
      $waiting = False
    elseif _IsPressed("66") Then
      $nameofchoice = "Numeric keypad 6"
      $return = "66"
      $send = "NUMPAD6"
      $waiting = False
    elseif _IsPressed("67") Then
      $nameofchoice = "Numeric keypad 7"
      $return = "67"
      $send = "NUMPAD7"
      $waiting = False
    elseif _IsPressed("68") Then
      $nameofchoice = "Numeric keypad 8"
      $return = "68"
      $send = "NUMPAD8"
      $waiting = False
    elseif _IsPressed("69") Then
      $nameofchoice = "Numeric keypad 9"
      $return = "69"
      $send = "NUMPAD9"
      $waiting = False
    elseif _IsPressed("6A") Then
      $nameofchoice = "Multiply"
      $return = "6A"
      $send = "NUMPADMULT"
      $waiting = False
    elseif _IsPressed("6B") Then
      $nameofchoice = "Add"
      $return = "6B"
      $send = "NUMPADADD"
      $waiting = False
    elseif _IsPressed("6C") Then
      $nameofchoice = "Separator"
      $return = "6C"
      $send = ""
      $waiting = False
    elseif _IsPressed("6D") Then
      $nameofchoice = "Subtract"
      $return = "6D"
      $send = "NUMPADSUB"
      $waiting = False
    elseif _IsPressed("6E") Then
      $nameofchoice = "Decimal"
      $return = "6E"
      $send = "NUMPADDOT"
      $waiting = False
    elseif _IsPressed("6F") Then
      $nameofchoice = "Divide"
      $return = "6F"
      $send = "NUMPADDIV"
      $waiting = False
    elseif _IsPressed("70") Then
      $nameofchoice = "F1"
      $return = "70"
      $send = "F1"
      $waiting = False
    elseif _IsPressed("71") Then
      $nameofchoice = "F2"
      $return = "71"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("72") Then
      $nameofchoice = "F3"
      $return = "72"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("73") Then
      $nameofchoice = "F4"
      $return = "73"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("74") Then
      $nameofchoice = "F5"
      $return = "74"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("75") Then
      $nameofchoice = "F6"
      $return = "75"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("76") Then
      $nameofchoice = "F7"
      $return = "76"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("77") Then
      $nameofchoice = "F8"
      $return = "77"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("78") Then
      $nameofchoice = "F9"
      $return = "78"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("79") Then
      $nameofchoice = "F10"
      $return = "79"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("7A") Then
      $nameofchoice = "F11"
      $return = "7A"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("7B") Then
      $nameofchoice = "F12"
      $return = "7B"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("7C") Then
      $nameofchoice = "F13"
      $return = "7C"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("7D") Then
      $nameofchoice = "F14"
      $return = "7D"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("7E") Then
      $nameofchoice = "F15"
      $return = "7E"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("7F") Then
      $nameofchoice = "F16"
      $return = "7F"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("80H") Then
      $nameofchoice = "F17"
      $return = "80H"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("81H") Then
      $nameofchoice = "F18"
      $return = "81H"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("82H") Then
      $nameofchoice = "F19"
      $return = "82H"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("83H") Then
      $nameofchoice = "F20"
      $return = "83H"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("84H") Then
      $nameofchoice = "F21"
      $return = "84H"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("85H") Then
      $nameofchoice = "F22"
      $return = "85H"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("86H") Then
      $nameofchoice = "F23"
      $return = "86H"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("87H") Then
      $nameofchoice = "F24"
      $return = "87H"
      $send = $nameofchoice
      $waiting = False
    elseif _IsPressed("90") Then
      $nameofchoice = "NUM LOCK"
      $return = "90"
      $send = "NUMLOCK toggle"
      $waiting = False
    elseif _IsPressed("91") Then
      $nameofchoice = "SCROLL LOCK"
      $return = "91"
      $send = "SCROLLLOCK toggle"
      $waiting = False
    elseif _IsPressed("A0") Then
      $nameofchoice = "Left SHIFT"
      $return = "A0"
      $send = "LSHIFT"
      $waiting = False
    elseif _IsPressed("A1") Then
      $nameofchoice = "Right SHIFT"
      $return = "A1"
      $send = "RSHIFT"
      $waiting = False
    elseif _IsPressed("A2") Then
      $nameofchoice = "Left CONTROL"
      $return = "A2"
      $send = "LCTRL"
      $waiting = False
    elseif _IsPressed("A3") Then
      $nameofchoice = "Right CONTROL"
      $return = "A3"
      $send = "RCTRL"
      $waiting = False
    elseif _IsPressed("A4") Then
      $nameofchoice = "Left MENU"
      $return = "A4"
      $send = "APPSKEY"
      $waiting = False
    elseif _IsPressed("A5") Then
      $nameofchoice = "Right MENU"
      $return = "A5"
      $send = "APPSKEY"
      $waiting = False
    elseif _IsPressed("BA") Then
      $nameofchoice = ";"
      $return = "BA"
      $send = ";"
      $waiting = False
    elseif _IsPressed("BB") Then
      $nameofchoice = "="
      $return = "BB"
      $send = "="
      $waiting = False
    elseif _IsPressed("BC") Then
      $nameofchoice = ","
      $return = "BC"
      $send = ","
      $waiting = False
    elseif _IsPressed("BD") Then
      $nameofchoice = "-"
      $return = "BD"
      $send = "-"
      $waiting = False
    elseif _IsPressed("BE") Then
      $nameofchoice = "."
      $return = "BE"
      $send = "."
      $waiting = False
    elseif _IsPressed("BF") Then
      $nameofchoice = "/"
      $return = "BF"
      $send = "/"
      $waiting = False
    elseif _IsPressed("C0") Then
      $nameofchoice = "`"
      $return = "C0"
      $send = "`"
      $waiting = False
    elseif _IsPressed("DB") Then
      $nameofchoice = "["
      $return = "DB"
      $send = "["
      $waiting = False
    elseif _IsPressed("DC") Then
      $nameofchoice = "\"
      $return = "DC"
      $send = "\"
      $waiting = False
    elseif _IsPressed("DD") Then
      $nameofchoice = "]"
      $return = "DD"
      $send = "]"
      $waiting = False
    EndIf
  WEnd
  if $shouldsend == true then
    return $send
  else
    return $return
  endif
EndFunc
