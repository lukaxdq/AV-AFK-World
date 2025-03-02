#Requires AutoHotkey v2.0
#include scr\ocr\Lib\OCR.ahk
#SingleInstance force
#Include scr
#include time.ahk
#include FindText.ahk
webhookURL := "https://discord.com/api/webhooks/1337184082420826174/r2D8cYjrG5iPniO90Tiv90rI8b_uMYxv21eSSouss1tmjNa4oNjjOMZ5MT6mwjcSPxoE"
keyw := "w"
keyd := "d"
keys := "s"
keye := "e"
Text:="|<>*103$76.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw8A677zzzzzzzUksMQDzzzzzzw001UkzzzzzzzU00UkMzzzzzzwA673XlzzzzzzU0MAA67zzzzzw0000037zzzzzVUkkMQCDzzzzw0231VkszzzzzU0000011zzzzw006331VlzzzzU0EMQCC77zzzw00000EMQDzzzU000EMACDDzzw00331VkswTzzU00T467nXlzzw003y01zUkvzzU00QQQC777Xzw003UsksCQSDzU00A1k70Mazzy000U3Vs1swSzw00306707Xlvzk00A0AM0w67zz000M0T0373Xzw001k0s0QQSDzk001U103Vkszz0003000MkMTzw000C003XXlzzk000Q00QCD7zzU000s03aHPzzy0001k0QwSTTzzU00701Xltzzzzk00Q076LTzzzzk03U0Dbbzzzzzk1w00STTzzzzzzzU00zzzzzzzzzw001zzzzzzzzzU103zzzzzzzzw0C07zzzzzzzzU1w0Dzzzzzzzy0Ds0zzzzzzzzk1zk1zzzzzzzy0DzU7zzzzzzzw1zz0TzzzzzzzkDzw3zzzzzzzzkzzsTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzvzzzzzzzzzzzzjzzzzzzzzzzzyzzzzzzzzzzzzvzzzzzzzzzzzzjzzzs"
if !ProcessExist("RobloxPlayerBeta.exe") {
    
    Run("https://www.roblox.com/games/16146832113/UPDATE-4-0-Anime-Vanguards?privateServerLinkCode=56232876547840639715220438241907")
    Sleep(10000)
    WinActivate("Roblox")
} else {
    
    WinActivate("Roblox")
}
resize(){
    WinMove 0, 0, A_ScreenWidth/4, A_ScreenHeight/2, "ahk_exe RobloxPlayerBeta.exe"

}
main() {
    CoordMode("Mouse", "Window")
    OCR.WaitText("Update" && "Tasks",, OCR.FromWindow.Bind(OCR, "A"))
    MouseClick("Left")
    
    Sleep(1000)
    MouseMove(34, 341) ;click area
    MouseClick("Left")
    
    Sleep(3000)
    MouseMove(374, 368) ;click tp e
    Sleep(1000)
    MouseClick("Left")
    
    Sleep(2000)
    MouseMove(574, 229)
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


test(){
    OCR.WaitText("Update" && "Tasks",, OCR.FromWindow.Bind(OCR, "A"))
}
t::test()
r::resize()
+::main() ; Call the main function
k::Exit ; Suspend the script



