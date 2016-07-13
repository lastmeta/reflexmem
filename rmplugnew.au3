#NoTrayIcon
#include <File.au3>
#include <Crypt.au3>
#include <Array.au3>
#include <lib\filelocations.au3>
;METHOD 3 (special Raw Execute)
;at least 3 arrays:
  ;1. proc code, arguments of procs = 2d array p[]
  ;2. variables (public)  g[]
  ;3. variables (private) v[]

;this script loads the entire plugin.
;as it loads it it fills up the arrays.
;no returns, args
;everything is separated by spaces
;encoding of Functions:
  ;proc 0          - tells you which i to put it in.
    ;args: 1 2     - array 1 1-99
    ;              - array 1 first,
  ;endp            - none
;encoding calling functions
  ;goto 2          - start loading each line from p[2] into execution
;encoding of variables:
  ;set 1 [code]       - v[1] = Execute($restofline)
  ;set 1 puts 2       - v[1] = v[2]

;so first we analyze it to separate it out,
;then the very last line of the code should be only number
;thats when we switch over to run mode
;and starting with the numbered proc we being to execute each line of code.

;limitations:
  ; we could make arrays of 1000 or something like a1-10
  ; no includes
  ; clunky. but basically func becomes proc args call becomes goto and local becomes set 














Func ImportPlugin()
  local $path = GetScriptsPath("plugins") & "temporaryplugin.rmplug"
  local $file = FileOpen($path, $FO_READ)
  local $read = FileRead($file)
  FileClose($file)
  local $nread = Stringsplit($read, @CRLF, 2)
  msgbox(64, "$read", $nread[0] &".")
  local $newread = BinaryToString(_Crypt_DecryptData($nread[0], "a", $CALG_AES_256))
    msgbox(64, "$read", $newread)
  local $newnewread = Stringsplit($newread, @CRLF, 2)
  _arrayDisplay($newnewread, "$read")
  ExecutePlugin($newnewread)
EndFunc

Func ExecutePlugin($__READ__)
  for $__R__ in $__READ__
    if $__R__ <> "" then
      Execute($__R__)
      if $__R__ == "Exit" then
        Exit
      endif
    endif
  next
EndFunc

msgbox(64, "running", "")
ImportPlugin()

;how to prepare plugins
  ;1. create a plugin script
  ;2. encrypt the data, replace code
  ;3. encryptfile, put in the plugins folder in scriptdir.

;plugin requirements:
  ;1. cannot have a function called "ImportPlugin"
  ;2. cannot have a function called "ExecutePlugin"
  ;3. cannot have a variable called "$__R__"
  ;4. cannot have a variable called "$__READ__"
  ;5. you must load everything into Memory before you being to execute.
  ;6. Your plugin cannot have more than 30k lines of code.
  ;7. cannot #include anything.
  ;8. cannot assign variables the normal way. you must use Assign("message", "world") (Assign, Call, Eval)
  ;9. convention suggests you use RMPlugin_ at the beginning of all function and variables in order to avoid duplicates because all the includes have to be
