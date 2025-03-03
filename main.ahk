#Requires AutoHotkey v2.0
#include scr\ocr\Lib\OCR.ahk
#SingleInstance force
#Include scr
#include time.ahk
#include Discord-Webhook-master\lib\resources\AttachmentBuilder.ahk
#include Discord-Webhook-master\lib\resources\FormData.ahk
#include Discord-Webhook-master\lib\resources\JSON.ahk
#include Discord-Webhook-master\lib\resources\EmbedBuilder.ahk
#include Discord-Webhook-master\lib\resources\WebHookBuilder.ahk
#Include C:\Users\PCuse\OneDrive\Radna površina\afk\scr\lib\Gdip_All.ahk

WebhookURL := "https://discord.com/api/webhooks/1337184082420826174/r2D8cYjrG5iPniO90Tiv90rI8b_uMYxv21eSSouss1tmjNa4oNjjOMZ5MT6mwjcSPxoE"
global MacroStartTime := A_TickCount
global StageStartTime := A_TickCount
keyw := "w"
keyd := "d"
keys := "s"
keye := "e"
Text := "|<>*103$76.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw8A677zzzzzzzUksMQDzzzzzzw001UkzzzzzzzU00UkMzzzzzzwA673XlzzzzzzU0MAA67zzzzzw0000037zzzzzVUkkMQCDzzzzw0231VkszzzzzU0000011zzzzw006331VlzzzzU0EMQCC77zzzw00000EMQDzzzU000EMACDDzzw00331VkswTzzU00T467nXlzzw003y01zUkvzzU00QQQC777Xzw003UsksCQSDzU00A1k70Mazzy000U3Vs1swSzw00306707Xlvzk00A0AM0w67zz000M0T0373Xzw001k0s0QQSDzk001U103Vkszz0003000MkMTzw000C003XXlzzk000Q00QCD7zzU000s03aHPzzy0001k0QwSTTzzU00701Xltzzzzk00Q076LTzzzzk03U0Dbbzzzzzk1w00STTzzzzzzzU00zzzzzzzzzw001zzzzzzzzzU103zzzzzzzzw0C07zzzzzzzzU1w0Dzzzzzzzy0Ds0zzzzzzzzk1zk1zzzzzzzy0DzU7zzzzzzzw1zz0TzzzzzzzkDzw3zzzzzzzzkzzsTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzvzzzzzzzzzzzzjzzzzzzzzzzzyzzzzzzzzzzzzvzzzzzzzzzzzzjzzzs"
RobloxWindow := "RobloxPlayerBeta.exe"
area := "66, 555"
clickx := "1342, 324"
playtp := "887, 628"

l:: {
    play()
}
play(){
    if !ProcessExist("RobloxPlayerBeta.exe") {
        Run("https://www.roblox.com/games/16146832113/UPDATE-4-0-Anime-Vanguards?privateServerLinkCode=56232876547840639715220438241907")
        Sleep(10000)
        WinActivate("Roblox")
    } else {  
        WinActivate("Roblox")
        Sleep(10000)
        main()
    }
}

main() {
    CoordMode("Mouse", "Window")
    OCR.WaitText("Update" && "Tasks",, OCR.FromWindow.Bind(OCR, "A"))
    MouseClick("Left")
    
    global MacroStartTime := A_TickCount
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
    
    if (result := OCR.FromDesktop(, 2).FindStrings("You have been disconnected")) {
        main()
    }
}

+::main()
k::Exit
c::Close()
Close(){
    ExitApp
}

p::sendWebhook()
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
            content: "Afk World: Macro has been running for " elapsedTimeFormatted,
            files: [attachment]
        })
    } catch {
        
    }
    
    ; Clean up resources.
    Gdip_DisposeImage(pBitmap)
    Gdip_Shutdown(pToken)
}

SetTimer(sendWebhook,1800000 )
