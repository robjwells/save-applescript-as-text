(*
Written by Rob Wells on September 7th 2012
https://github.com/robjwells/save-applescript-as-text
*)

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
set newName to ((characters 1 through thePoint of originalName) as text) & "applescript"
set savePath to theFolder & newName

launch application "AppleScript Editor"
tell application "AppleScript Editor"
	open posixPath
	save document originalName as "text" in savePath
	close document newName saving no
	quit
end tell

(* Remove the comments around this block if you want to do this entirely in Script Debugger.
Warning: Github will not be able to properly interpret your .applescript file.

tell application "Script Debugger"
	save the front document as text script in savePath
	open oldPath
	close document newName saving no
end tell
*)