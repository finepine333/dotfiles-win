#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
SetTitleMatchMode,2
#InstallKeybdHook
#UseHook

; ; 上下左右移動とBS,Del_; F13 & p::Send,{Blind}{Up}
; F13 & n::Send,{Blind}{Down}
; F13 & b::Send,{Blind}{Left}
; F13 & f::Send,{Blind}{Right}
; F13 & h::Send,{Blind}{BS}
; F13 & m::Send,{Blind}{Enter}

; F13 & e::End

; 上下左右移動とBS,Del_
#If not WinActive("ahk_exe emacs.exe") && not WinActive("ahk_exe WindowsTerminal.exe")
    RCtrl & p::Send,{Blind}{RCtrl up}{Up}{RCtrl down}
RCtrl & n::Send,{Blind}{RCtrl up}{Down}{RCtrl down}
RCtrl & b::Send,{Blind}{RCtrl up}{Left}{RCtrl down}
RCtrl & f::Send,{Blind}{RCtrl up}{Right}{RCtrl down}
RCtrl & a::Send,{Blind}{RCtrl up}{Home}{RCtrl down}
RCtrl & e::Send,{Blind}{RCtrl up}{End}{RCtrl down}
RCtrl & h::Send,{RCtrl up}{BS}{RCtrl down}
RCtrl & m::Send,{RCtrl up}{Enter}{RCtrl down}
; RCtrl & i::Send,{RCtrl up}{Tab}{RCtrl down}
RCtrl & [::Send,{RCtrl up}{Esc}{RCtrl down}

; ^h::Send {Left
; ^j::Send {Down}
; ^k::Send {Up}
; ^l::Send {Right}

F14 & k::Send,{Blind}{Up}
F14 & j::Send,{Blind}{Down}
F14 & h::Send,{Blind}{Left}
F14 & l::Send,{Blind}{Right}
F14 & n::Send,{Blind}{BS}
F14 & +::Enter
F14 & [::Esc

; F15 & k::Send,{Blind}{Up}
; F15 & j::Send,{Blind}{Down}
; F15 & h::Send,{Blind}{Left}
; F15 & l::Send,{Blind}{Right}
; F15 & n::Send,{Blind}{BS}
; F15 & +::Enter

F14 & a::Home
F14 & e::End
; F14 & n::Send,{Ctrl down}{BS}{Ctrl up}
; F14 & +::Send,{Ctrl down}{Enter}{Ctrl up}

; F14 & u::Send,{Blind}{Ctrl down}{Left}{Ctrl up}
; F14 & i::Send,{Blind}{Ctrl down}{Right}{Ctrl up}

; 元のキーの機能
F14::Send,{sc07B}
F15::Send,{sc079}
Shift & RCtrl::
    If GetKeyState("CapsLock", "T")
        SetCapsLockState, Off
    Else
        SetCapsLockState, On
Return

; #If not WinActive("ahk_exe emacs.exe") && not WinActive("ahk_exe WindowsTerminal.exe")
#If not WinActive("ahk_exe Code.exe")
    RCtrl & w::Send,{Blind}{BS}
