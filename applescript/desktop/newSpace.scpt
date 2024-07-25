tell application "System Events"
    key code 126 using control down 
    
    
    click button 1 of group "Spaces Bar" of group 1 of group "Mission Control" of process "Dock"

     tell process "Dock"
        repeat until exists group "Spaces Bar" of group 1 of group "Mission Control"
            delay 0.1
        end repeat
        
        click button 1 of group "Spaces Bar" of group 1 of group "Mission Control"
    end tell

    key code 53
end tell
