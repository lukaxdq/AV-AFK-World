#Requires AutoHotkey v2.0
#include scr\ocr\Lib\OCR.ahk
#SingleInstance force
#Include scr\lib\Gdip_Toolbox.ahk
#include scr\Discord-Webhook-master\lib\WEBHOOK.ahk
keybind1 := "g"
keybind2 := "k"
keybind3 := "c"
keyw := "w"
keyd := "d"
keys := "s"
keye := "e"
RobloxWindow := "RobloxPlayerBeta.exe"
area := "66, 555"
clickx := "1342, 324"
playtp := "887, 628"
ToolTip("Press " keybind1 " to start the macro", 413, 371)
start(){
    if !ProcessExist("RobloxPlayerBeta.exe") {
    
        Run("https://www.roblox.com/games/16146832113/UPDATE-4-0-Anime-Vanguards?privateServerLinkCode=56232876547840639715220438241907")
        Sleep(10000)
        WinActivate("Roblox")
        Sleep(10000)
        main()
    } else {
        
        WinActivate("Roblox")
        sleep(10000)
        main()
    }
}
main() {
    global MacroStartTime := A_TickCount
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
    CalculateElapsedTime(MacroStartTime)
    




}
g::start()
t::findtxt()
k::Exit
c::Close()
Close(){
    ExitApp
}
CalculateElapsedTime(StartTime) {
    ElapsedTimeMs := A_TickCount - StartTime
    ElapsedTimeSec := Floor(ElapsedTimeMs / 1000)
    ElapsedHours := Floor(ElapsedTimeSec / 3600)
    ElapsedMinutes := Floor(Mod(ElapsedTimeSec, 3600) / 60)
    ElapsedSeconds := Mod(ElapsedTimeSec, 60)
    ElapsedTime := Format("{} hours, {} minutes, {} seconds", ElapsedHours, ElapsedMinutes, ElapsedSeconds)
    ToolTip ElapsedTime
    Return ElapsedTime
}

findtxt(){
    OCR.WaitText("Command",, OCR.FromWindow.Bind(OCR, "A"))
}
;lukaxdq