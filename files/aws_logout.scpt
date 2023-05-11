if application "Brave Browser" is running then
    tell application "Brave Browser"
        activate
        set newTab to make new tab at end of tabs of window 1
        set URL of newTab to "https://eu-central-1.console.aws.amazon.com/iot/logout!doLogout"
        repeat while (loading of newTab)
            delay 1
        end repeat
        close active tab of window 1
    end tell
end if

if application "Chrome Browser" is running then
    tell application "Chrome Browser"
        activate
        set newTab to make new tab at end of tabs of window 1
        set URL of newTab to "https://eu-central-1.console.aws.amazon.com/iot/logout!doLogout"
        repeat while (loading of newTab)
            delay 1
        end repeat
        close active tab of window 1
    end tell
end if