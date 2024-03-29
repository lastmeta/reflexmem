#cs ----------------------------------------------------------------------------
 AutoIt Version: 3.3.12.0
 Author:         Jordan Miller
 Script Function:
	This uses the tesseract library
 Requirements
  (Tesseract 3.04 installed on the machine)
  tesseract must be the folder called lib which is in the same folder as ocr.au3
  a folder called image must be in the same folder as ocr.au3
  a folder called output must be in the same folder as ocr.au3
#ce ----------------------------------------------------------------------------
;#RequireAdmin
#NoTrayIcon
#include <Crypt.au3>
#include <GUIConstantsEx.au3>
#include <lib\filelocations.au3>
#include <lib\applieddpi.au3>
#include <lib\httprequest.au3>
#include <Misc.au3>

;$R = GetScale()
$R = 1
ReflexGui()


Func ReflexGui()
  Local $hGUI = GUICreate("Reflex Memory Startup", 620*$R, 80*$R)
  Local $idCreate = GUICtrlCreateButton("Create", 20*$R, 20*$R, 130*$R, 40*$R)
  Local $idRun = GUICtrlCreateButton("Run", 170*$R, 20*$R, 130*$R, 40*$R)
  Local $idPlugin = GUICtrlCreateButton("Import Plugin", 320*$R, 20*$R, 130*$R, 40*$R)
  Local $idAbout = GUICtrlCreateButton("About", 470*$R, 20*$R, 130*$R, 40*$R)

  GUISetState(@SW_SHOW, $hGUI)

  ; Loop until the user exits.
  While 1
    Switch GUIGetMsg()
      Case $GUI_EVENT_CLOSE
        ExitLoop
      Case $idRun
        run("rmrun.exe")
        ExitLoop
      Case $idCreate
        run("rmcreate.exe")
        ExitLoop
      Case $idPlugin
        MsgBox(64, "ReflexMem Elite", "You are running ReflexMem Elite which doesn't yet have the ability to import or run plugins. Please go to www.reflexmem.com and buy the Elite version of ReflexMem. In the meantime, thanks for using ReflexMem Elite!")
        ImportFileToInclude()
      Case $idAbout
        MsgBox(64, "About ReflexMem Elite 1.0", "ReflexMem is an attempt to create non-coding trigger-based automation on Windows. It was created by ReflexMem Industrries LLC. If you have feedback about this product or find this software useful please contact us at reflexmem@gmail.com.")
   EndSwitch
  wend
  GUIDelete($hGUI)
EndFunc


Func ImportFileToInclude()
  local $sFile = FileOpenDialog("Choose Image...", @scriptDir & "\plugins\", "ReflexMem Plugins (*.rmplugin)")
  if $sFile <> "" then
    ;FileCopy ($sFile, GetScriptsPath("plugins") & "temporaryplugin.au3", 1)
    _Crypt_DecryptFile($sFile, GetScriptsPath("plugins") & "temporaryplugin.rmplug", "thispasswordshouldcomefromourserversinordertobemoresecure", $CALG_AES_256)
    DirCopy (@scriptDir & "\lib", GetScriptsPath("") & "lib", 0)
    ;FileMove(GetScriptsPath("") & "lib\*.rmplib", GetScriptsPath("") & "lib\*.au3", $FC_OVERWRITE + $FC_CREATEPATH) ;not technically needed. idk.
    MsgBox(0, "Importing...", "Please wait...", 2)
    Sleep(1000)
    Run("rmplugs.exe")
    Exit
  endif
EndFunc

Func Login()
  ;if email and password are saved to their hard drive retrieve it
  if FileExists(GetScriptsPath("user") & "id.id") then
    ;and send it to the server for varification
    if GetVarification() then
      AskForLogin()
    else
      ;modify a variable or something that indicates they have pro.
      ;AllowPro()
    endif
  else
    ;otherwise get the email and password, and save to file.
    AskForLogin()
  endif
EndFunc

Func GetVarification()
  local $path = GetScriptsPath("user") & "id.id"
  local $file = FileOpen($path, $FO_READ)
  local $read = FileRead($file)
  FileClose($file)
  $read = BinaryToString(_Crypt_DecryptData($nread, "sillyrabbit", $CALG_AES_256))
  $read = Stringsplit($read, @CRLF, 2)
  ;send read[0] to server as username  ;send read[1] to server as salted password
  ;return true or false based on what the server says.
  HttpRequest($read[0], $read[1])
EndFunc

Func AskForLogin()
  Local $loginGUI = GUICreate("Login to Use Pro Features", 620*$R, 80*$R)
  Local $loginB = GUICtrlCreateButton("Login", 20*$R, 20*$R, 130*$R, 40*$R)
  Local $cancelB = GUICtrlCreateButton("Use Demo Version", 170*$R, 20*$R, 130*$R, 40*$R)
  GUISetState(@SW_SHOW, $loginGUI)
  While 1
    Switch GUIGetMsg()
      Case $GUI_EVENT_CLOSE
        ExitLoop        ;return message saying to run the demo versio of whatever they clicked on.
      Case $loginB
        $emailaddress = InputBox("Login", "Email Address?", "", "")
        $password     = InputBox("Login", "Password?",      "", "")
        $emailaddress = StringStripWS($emailaddress, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
        $password     = StringStripWS($password, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
        $password     = $password & StringReverse($emailaddress)        ;salt password
        $iddata       = _Crypt_EncryptData($emailaddress & $password, "sillyrabbit", $CALG_AES_256)
        local $filename = GetScriptsPath("user") & "id.id"
        FileWrite($filename, $iddata)         ;save to a file.
        Login();submitemailaddress and password to the server
        ExitLoop
      Case $cancelB
        run("rmcreate.exe")
        ExitLoop
   EndSwitch
  wend
  GUIDelete($loginGUI)
EndFunc
