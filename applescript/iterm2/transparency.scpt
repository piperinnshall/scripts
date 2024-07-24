on run argv
    if (count of argv) is not 1 then
        return
    end if

    set transparencyValue to item 1 of argv
    set transparencyValue to (transparencyValue as number)

    tell application "iTerm2"
        tell current session of current window
            set transparency to transparencyValue
        end tell
    end tell
end run

