on run argv
    set baseKeyCode to 17
    if (count of argv) > 0 then
        set dynamicKeyCode to baseKeyCode + (item 1 of argv)
    else
        error "No arguments provided"
    end if
    
    tell application "System Events"
        key down option
        key down shift
        key code dynamicKeyCode
        key up shift
        key up option
    end tell
end run
