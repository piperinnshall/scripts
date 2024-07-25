tell application "Processing"
    activate
end tell

-- Wait until Processing is the frontmost application and has an open window
repeat
    tell application "System Events"
        if exists (window 1 of process "Processing") then
            exit repeat
        end if
    end tell
    delay 1 -- Wait 1 second before checking again
end repeat

tell application "System Events"
-- Send Command + R
    keystroke "r" using {command down}
    delay 1 -- Wait a second before hiding
-- Hide Processing
    tell process "Processing"
        set frontmost to true
        keystroke "h" using {command down}
    end tell
end tell

