#Requires AutoHotkey v2.0

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