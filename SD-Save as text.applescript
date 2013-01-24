-- by Rob Wells
-- https://github.com/robjwells/save-applescript-as-text

tell application "Script Debugger"
	tell the front document
		save
		set originalName to the name
		set posixPath to the path
	end tell
end tell

set oldPath to (POSIX file posixPath) as text
set pathOffset to (the offset of originalName in oldPath)
set theFolder to (characters 1 thru (pathOffset - 1) of oldPath) as text

set thePoint to (the offset of "." in originalName)
if thePoint is not 0 then -- 0 if file ext is hidden
	set newName to ((characters 1 through thePoint of originalName) as text) & "applescript"
else
	set newName to originalName & ".applescript"
end if

set savePath to theFolder & newName

launch application "AppleScript Editor"
tell application "AppleScript Editor"
	open posixPath
	save document originalName as "text" in savePath
	close document newName saving no
	quit
end tell