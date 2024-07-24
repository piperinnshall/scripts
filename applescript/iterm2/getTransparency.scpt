tell application "iTerm2"
    tell current session of current window
        set transparencyValue to transparency
    end tell
end tell

return transparencyValue as string
