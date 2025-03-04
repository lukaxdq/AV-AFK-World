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
Updatetxt := Text:="|<>*152$260.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzVzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzkDzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw3zy1zzzzzzs3zzzzzzzzzzzzw3zzzzzzzzzzzzzzzzz0zzUTzzzzzy0zzzzzUzzzzzzz0zzzzzzzzzzzzzzzzzk7zs7zzzzzzUDzzzzs7zzzzzzk7zzzzzzzzzzzzzzzzw1zw1zzzzzzs3zzzzw1zzzzzzw1zzzzzzzzzzzzzzzzz0Tz0Tzzzzzy0zzzzz0Tzzzzzz0Tzzzzzzzzzzzzzzzzk7zk7zzzzzzUDzzzzk7zzzzzzk7zzzzzzzzzzzzzzzzw1zw1zzzzzzs3zzzzw1zzzzzzw1zzzzzzzzzzzzzzzzz0Tz0Tzzzzzy0zzzzz0Tzzzzzz0Tzzzzzzzzzzzzzzzzk7zk7kwDzz1UDz1kT00Dy0Dzzk7zzzU7zzUsDs0Tzzzw1zw1s40zz003z043U01y00zzw1zzzU0TzU43w01zzzz0Tz0S003zU00zU00s00S007zz0Tzzk03zk00S00Tzzzk7zk7U00Tk00Dk00C007001zzk7zzs00Ts007007zzzw1zw1s007s003s003U01k00Dzw1zzw003w001k01zzzz0Tz0S000y000w000s00M003zz0Tzy000S000Q3szzzzk7zk7U00D000D000D00C0S0Tzk7zzU307U0070zzzzzw1zw1s1s1k3k3k7k3w1zUDk7zw1zzs3w1k3s1k3zzzzz0Tz0S0z0Q1y0s1w0z0Tk7w1zz0Tzw1zUA1y0Q03zzzzk7zk7UDk60zUC0zUDk7w000Tzk7zz0Ts30Tk7U0Dzzzw1zw1s3y1UDs3UDs3w1z000Dzw1zzk7y0k7w1s01zzzz0Dy0S0z0M3y0s3y0z0Tk003zz0Tzw1zUA1y0T00Dzzzs3zUDUDk70TUC0T0Dk7w003zzk7zz0Dk30DU7w03zzzy0Tk3s0k1k3k3k3U3w1zUDzzzw1zzs3s1s1U1zs0zzzzU000y000w000w000zU7s3zzzz0Tzy000S000SDkDzzzw000TU00DU00D000Ds0C041zzk007U007k0070w3zzzzU00Ds007s003s003y03k00Tzw000w003w001U00zzzzw007y003z000z000zU0w003zz000DU01zU00M00DzzzzU03zU01zs00Ds00Dw0DU00zzk003w00zw006007zzzzw01zs61zz043z043zU3y00Tzw000zU0TzkA1s03zzzzzk1zy1zzzy7Vzw7Vzz1zk0DzzU00Ty0Tzzz0TU3zzzzzzzzzUTzzzzzzzzzzzzzzzzzzzzzzzzzzzzk7zzzzzzzzzzzs7zzzzzzzzzzzzzzzzzzzzzzzzzzz7s3zzzzzzzzzzzy1zzzzzzzzzzzzzzzzzzzzzzzzzzzUQ0zzzzzzzzzzzzUTzzzzzzzzzzzzzzzzzzzzzzzzzzk00Dzzzzzzzzzzzs7zzzzzzzzzzzzzzzzzzzzzzzzzzw007zzzzzzzzzzzy1zzzzzzzzzzzzzzzzzzzzzzzzzzz003zzzzzzzzzzzzUTzzzzzzzzzzzzzzzzzzzzzzzzzzs01zzzzzzzzzzzzs7zzzzzzzzzzzzzzzzzzzzzzzzzzzU0zzzzzzzzzzzzz3zzzzzzzzzzzzzzzzzzzzzzzzzzzy1zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzU"
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
