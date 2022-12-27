#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
 #AutoIt3Wrapper_Compression=4
 #AutoIt3Wrapper_Add_Constants=n
 #AutoIt3Wrapper_Run_Tidy=y
 #Tidy_Parameters=/tc 1 /gd /rel /reel /ri /sci 9 /gds
 #AutoIt3Wrapper_Run_Au3Stripper=y
 #Au3Stripper_Parameters=/pe /sf /sv /mo /mi /rm /rsln /beta
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; *** Start added by AutoIt3Wrapper ***
;#include <AutoItConstants.au3>
;#include <MsgBoxConstants.au3>
; *** End added by AutoIt3Wrapper ***
;MsgBox($MB_SYSTEMMODAL, "Title", @WorkingDir & "\" & "setup.exe", 10)
;MsgBox($MB_SYSTEMMODAL, "Title", @WorkingDir & "\" & "dance.wav", 10)
#include <Sound.au3>
Func StartSetup()
 Run("setup.exe")
EndFunc   ;==>StartSetup
StartSetup()
$vSndID = _SoundOpen(@WorkingDir & "\" & "dance.wav")
AdlibRegister("_ProgExists", 30)
While 1 ;  a loop to keep this script alive
 If _SoundStatus($vSndID) = "stopped" Then _SoundPlay($vSndID)
 Sleep(1000)
WEnd
Func _ProgExists()
 ; While 1
 ;SoundPlay(@WorkingDir & "\" & "dance.wav", 0)
 If ProcessExists("setup.exe") = 0 Then
  AdlibUnRegister("_ProgExists")
  Exit ; eventually
 EndIf
 ; WEnd

 ; Assign a static variable to hold the number of times the function is called.
 Local Static $iCount = 0
 $iCount += 1

 ConsoleWrite("Checked if Prog is running/CDL can be closed " & $iCount & " time(s)" & @CRLF)
EndFunc   ;==>_ProgExists
