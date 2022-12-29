#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#Include <WinAPI.au3>
Run(@WorkingDir & "\Checkmarx95CR.exe")
;$success1 = ControlFocus("[+] Checkmarx 9.5.0 Crack - uCare | v1", "", "[CLASS:WindowsForms10.BUTTON.app.0.1ca0192_r6_ad1; INSTANCE:1]")
ControlFocus("[+] Checkmarx 9.5.0 Crack - uCare | v1", "", "[CLASS:WindowsForms10.BUTTON.app.0.1ca0192_r6_ad1; INSTANCE:1]")
;Switch $success1
;    Case 0
;        MsgBox(16,"Autoit","ControlClick Failed")
;    Case 1
;        MsgBox(0,"Autoit","ControlClick Success")
;EndSwitch
;$success2 = ControlClick("[+] Checkmarx 9.5.0 Crack - uCare | v1", "", "[CLASS:WindowsForms10.BUTTON.app.0.1ca0192_r6_ad1; INSTANCE:1]")
ControlClick("[+] Checkmarx 9.5.0 Crack - uCare | v1", "", "[CLASS:WindowsForms10.BUTTON.app.0.1ca0192_r6_ad1; INSTANCE:1]")
;Switch $success2
;    Case 0
;        MsgBox(16,"Autoit","ControlClick Failed")
;    Case 1
;        MsgBox(0,"Autoit","ControlClick Success")
;EndSwitch
exit