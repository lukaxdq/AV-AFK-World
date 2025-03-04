#Requires AutoHotkey v2.0
#Include %A_ScriptDir%\scr\GDIP\Gdip_All.ahk
#include %A_ScriptDir%\scr\ocr\Lib\OCR.ahk
#Include %A_ScriptDir%\scr\IsProcessElevated.ahk
#Include %A_ScriptDir%\scr
#Include %A_ScriptDir%\scr\FindText.ahk
#include time.ahk
#include Discord-Webhook-master\lib\resources\AttachmentBuilder.ahk
#include Discord-Webhook-master\lib\resources\FormData.ahk
#include Discord-Webhook-master\lib\resources\JSON.ahk
#include Discord-Webhook-master\lib\resources\EmbedBuilder.ahk
#include Discord-Webhook-master\lib\resources\WebHookBuilder.ahk

; Read the webhook URL from the INI file
IniRead(WebhookURL, A_ScriptDir "\config.ini", "Settings", "WebhookURL")

; If the webhook URL is not set, prompt the user to enter it
if (WebhookURL = "") {
    InputBox(WebhookURL, "Enter Webhook URL", "Please enter your Discord webhook URL:")
    if (WebhookURL != "") {
        IniWrite(WebhookURL, A_ScriptDir "\config.ini", "Settings", "WebhookURL")
    } else {
        MsgBox("You must enter a webhook URL to continue.")
        ExitApp
    }
}

Updatetxt := Text:="|<>*152$260.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
WebhookURL := "https://discord.com/api/webhooks/1337184082420826174/r2D8cYjrG5iPniO90Tiv90rI8b_uMYxv21eSSouss1tmjNa4oNjjOMZ5MT6mwjcSPxoE"
global MacroStartTime := A_TickCount
global StageStartTime := A_TickCount
global hotkeyKeybind1 := "F1"
global hotkeyKeybind2 := "F2"
global hotkeyKeybind3 := "F3"

global keyw := "w"
global keyd := "d"
global keys := "s"
global keye := "e"
global RobloxWindow := "RobloxPlayerBeta.exe"
global area := "66, 555"
clickx := "1342, 324"
playtp := "887, 628"

global MacroStartTime := A_TickCount
ShowKeybindsAndTimes() {
    global MacroStartTime, StageStartTime
    totalTime := (A_TickCount - MacroStartTime) // 1000
    sessionTime := (A_TickCount - StageStartTime) // 1000
    totalTimeFormatted := Format("{:02}:{:02}:{:02}", totalTime // 3600, Mod(totalTime // 60, 60), Mod(totalTime, 60))
    sessionTimeFormatted := Format("{:02}:{:02}:{:02}", sessionTime // 3600, Mod(sessionTime // 60, 60), Mod(sessionTime, 60))
    
    MsgBox("`n"
    . "(" hotkeyKeybind1 ") Start Macro`n"
    . "(T) Test Function`n"
    . "(R) Reconnect`n"
    . "(" hotkeyKeybind2 ") Close`n"
    . "(P) Send Webhook`n"
    . "`n"
    . "Total Time: " totalTimeFormatted "`n"
    . "Session Time: " sessionTimeFormatted)
}

f1::play()
play(){
    if !ProcessExist("RobloxPlayerBeta.exe") {
        Run("https://www.roblox.com/games/16146832113/UPDATE-4-0-Anime-Vanguards?privateServerLinkCode=56232876547840639715220438241907")
        Sleep(40000)
        Send("^w") ; Send Ctrl+W
        Sleep(10000)
        WinActivate("Roblox")
        main()
    } else {  
        Sleep(5000)
        main()
    }
}
main() {
    WinActivate("Roblox")
    if !(result := OCR.FromDesktop(, 2).FindStrings("Anime Vanguards" && "Tasks" && "Update")) {
        ; Close Roblox
        ProcessClose("RobloxPlayerBeta.exe")
        ; Call reconnect function
        reconnect()
    }
    Sleep(300)
    CoordMode("Mouse", "Window")
    OCR.WaitText("Update" && "Tasks",, OCR.FromWindow.Bind(OCR, "A"))
    MouseMove(1342, 211)
    Sleep(3300)
    MouseClick("Left")

    Sleep(1000)
    MouseMove(StrSplit(area, ",")[1], StrSplit(area, ",")[2]) ;click area
    MouseClick("Left")
    
    Sleep(3000)
    MouseMove(StrSplit(playtp, ",")[1], StrSplit(playtp, ",")[2]) ;click tp e
    Sleep(1000)
    MouseClick("Left")
    
    Sleep(2000)
    MouseMove(StrSplit(clickx, ",")[1], StrSplit(clickx, ",")[2])
    Sleep(1000)
    MouseClick("Left")
    
    Sleep(1000)
    Send("{" keyw " Down}") ; Press and hold the "w" key
    Sleep(2000)
    Send("{" keyw " Up}") ; Release the "w" key
    Send("{" keyd " Down}") ; Press and hold the "d" key
    Sleep(7500) ; Hold for 7500 milliseconds (7.5 seconds)
    Send("{" keyd " Up}") ; Release the "d" key
    Send("{" keys " Down}") ; Press and hold the "s" key
    Sleep(2000)
    Send("{" keys " Up}") ; Release the "s" key
    Send("{e Down}")
    Send("{e Up}")
    if (result := OCR.FromDesktop(, 2).FindStrings("Afk")){
        sendWebhook()
        global StageStartTime := A_TickCount
    }else{
        main()
    }
    
}
t:: {
    test()
}
test() {
    try {
        Send("{" keyd " Down}") ; Press and hold the "d" key
        Sleep(7500) ; Hold for 7500 milliseconds (7.5 seconds)
        Send("{" keyd " Up}")
    }
}
r::reconnect()
+::main()
k::Exit
c::Close()
Close(){
    ExitApp
}

sendWebhook() {
    global WebhookURL, MacroStartTime
    ; Validate webhook URL and create a new WebHookBuilder instance.
    try {
        if (WebhookURL != "")
            Webhook := WebHookBuilder(WebhookURL)
        else {
            MsgBox("Webhook URL is not set.", "Webhook", 4096)
            return
        }
    } catch {
        MsgBox("Your webhook URL is not valid.", "Webhook", 4096)
        return
    }
    
    ; Initialize GDI+
    pToken := Gdip_Startup()
    if !pToken {
        MsgBox("Failed to initialize GDI+")
        return
    }
    
    ; Capture a full-screen screenshot.
    pBitmap := Gdip_BitmapFromScreen()
    if !pBitmap {
        MsgBox("Failed to capture screenshot.")
        Gdip_Shutdown(pToken)
        return
    }
    
    ; Create an attachment from the screenshot.
    attachment := AttachmentBuilder(pBitmap)
    
    ; Calculate the elapsed time in seconds.
    elapsedTime := (A_TickCount - MacroStartTime) // 1000
    hours := elapsedTime // 3600
    minutes := Mod(elapsedTime // 60, 60)
    seconds := Mod(elapsedTime, 60)
    elapsedTimeFormatted := Format("{:02}:{:02}:{:02}", hours, minutes, seconds)
    
    ; Send the webhook with a message and the screenshot as an attachment.
    try {
        Webhook.send({
            content: "lukaxdq-Macro has been running for " elapsedTimeFormatted,
            files: [attachment],
        })
    }
    ; Clean up resources.
    Gdip_DisposeImage(pBitmap)
    Gdip_Shutdown(pToken)
}
sendWebhookdisconect() {
    global WebhookURL, MacroStartTime
    ; Validate webhook URL and create a new WebHookBuilder instance.
    try {
        if (WebhookURL != "")
            Webhook := WebHookBuilder(WebhookURL)
        else {
            MsgBox("Webhook URL is not set.", "Webhook", 4096)
            return
        }
    } catch {
        MsgBox("Your webhook URL is not valid.", "Webhook", 4096)
        return
    }
    
    ; Initialize GDI+
    pToken := Gdip_Startup()
    if !pToken {
        MsgBox("Failed to initialize GDI+")
        return
    }
    
    ; Capture a full-screen screenshot.
    pBitmap := Gdip_BitmapFromScreen()
    if !pBitmap {
        MsgBox("Failed to capture screenshot.")
        Gdip_Shutdown(pToken)
        return
    }
    
    ; Create an attachment from the screenshot.
    attachment := AttachmentBuilder(pBitmap)
    
    ; Calculate the elapsed time in seconds.
    elapsedTime := (A_TickCount - MacroStartTime) // 1000
    hours := elapsedTime // 3600
    minutes := Mod(elapsedTime // 60, 60)
    seconds := Mod(elapsedTime, 60)
    elapsedTimeFormatted := Format("{:02}:{:02}:{:02}", hours, minutes, seconds)
    
    ; Send the webhook with a message and the screenshot as an attachment.
    try {
        Webhook.send({
            files: [attachment],
            content: "lukaxdq-Disconect" elapsedTimeFormatted,
        })
    }
    ; Clean up resources.
    Gdip_DisposeImage(pBitmap)
    Gdip_Shutdown(pToken)
}

SetTimer(sendWebhook,1800000)

; Show keybinds and times when the script starts
ShowKeybindsAndTimes()

Reconnect() {
    ; Check for Disconnected Screen
    color := PixelGetColor(881, 539) ; Get color at (519, 329)
    
    if (color = 0x393B3D) {
        sendWebhookdisconect()
        ; Use Roblox deep linking to reconnect
        Run("roblox://placeID=" 16146832113)
        Sleep 2000
        if WinExist(RobloxWindow) {
            WinActivate(RobloxWindow)
            Sleep 1000
        }
        loop {
            Sleep 15000
            if (ok := FindText(Updatetxt)) {
                return main()
            }
            else {
                Reconnect()
            }
        }
    }
}
