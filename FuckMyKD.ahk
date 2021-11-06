#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F3::Send, % "{w " . ((Toggle := !Toggle) ? "down}" : "up}")

Space::

  Send {S}
  Sleep 50
  Send {Space}
  Sleep 50
  DllCall("SetCursorPos", "int", 500, "int", 450)
  Sleep 50
  Send {Click}
  Send {1}
  Send, {a down}
  Sleep 10
  Send, {a up}
  Send {D}
  SendInput {W down}
  Send {A}
  SendInput {RButton Down}
  Send {rbutton down}

Loop

{
  Send {S}
  SendInput {S}
  Sleep 50
  Send {Space}
  SendInput {Space}
  Sleep 50
  DllCall("SetCursorPos", "int", 500, "int", 450)
  Sleep 50
  Send {Click}
  SendInput {Click}
  Send {1}
  Send, {a down}
  Sleep 10
  Send, {a up}
  Send {D}
  Send {A}
  Send, {d down}
  Sleep 10
  Send, {d up}
  Send, {d down}
  Sleep 10
  Send, {d up}
  SendInput {D}
  SendInput {A down}
  SendInput {W down}

  Sleep 800
}

Esc::ExitApp

Return

