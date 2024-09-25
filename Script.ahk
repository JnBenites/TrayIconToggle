SendMode("Input")
SetWorkingDir(A_ScriptDir)

; Set the initial tray icon.
TraySetIcon("Rojo.png")
estado := 1  ; Set the initial state.

; Define a function to toggle the icon.
ToggleIcon() {
    global estado
    if (estado = 1) {
        TraySetIcon("Verde.png")  ; Change the icon to green.
        estado := 0  ; Change the state.
    } else {
        TraySetIcon("Rojo.png")  ; Change the icon to red.
        estado := 1  ; Change the state.
    }
}

; Use the Volume_Mute key to toggle the icon.
Volume_Mute::ToggleIcon()