#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
 #AutoIt3Wrapper_Compression=4
 #AutoIt3Wrapper_Run_Tidy=y
 #Tidy_Parameters=/tc 1 /gd /rel /reel /ri /sci 9 /gds
 #AutoIt3Wrapper_Run_Au3Stripper=y
 #Au3Stripper_Parameters=/pe /sf /sv /mo /mi /rm /rsln /beta
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; *** Start added by AutoIt3Wrapper ***
#include <AutoItConstants.au3>
; *** End added by AutoIt3Wrapper ***
ConsoleWrite(@ScriptDir + "dance.wav")
ConsoleWrite(@ScriptDir + "setup.exe")
SoundPlay(@ScriptDir + "dance.wav", 0)
RunWait(@ScriptDir + "setup.exe")
Exit
