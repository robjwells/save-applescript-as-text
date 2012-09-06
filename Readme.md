## Save AppleScript as text
A little time-saving AppleScript to quickly save a plain text .applescript file of the script you’ve got open, in the same folder, with the same name.

It also closes the newly saved .applescript and re-opens your original script, so you can keep working.

### Things to note
* **There are two versions.**  
If you write scripts in Apple’s own AppleScript Editor you’ll want `ASE-Save script as text.scpt`. If you write scripts in [Script Debugger](http://www.latenightsw.com) then you’ll want `SD-Save script as text.scpt`.
* **The script is saved to disk at the very start.**  
I’d advise against removing `save` on line 3, because there isn’t a good way of keep your script open with unsaved changes anyway. (Your script “becomes” the .applescript when it is created.)
* **It may not work in Script Debugger 4.5 or earlier.**  
I haven’t tested it. But it uses standard commands so I don’t see why not. Even so, if you’re using an earlier version I’d recommend you check out Script Debugger 5 as it’s really nice.
* **People using Leopard (OSX 10.5) or earlier may need to edit the script first.**  
AppleScript Editor was called Script Editor before Snow Leopard (10.6), so you may need to edit `ASE-Save script as text.scpt` so the application references just say `"Script Editor"`.

### Meta
* *What happens if you run this script when working on it?*  
It fails, because you can’t close a running script. But it works fine if you run it from somewhere else. (I created the .applescript for Github by running an alias of the open script through [FastScripts](http://www.red-sweater.com/fastscripts/).
* *What’s wrong with using the save dialog?*  
It takes longer and you have to think more. I tend to treat .applescript files as an afterthought, so this gives me no excuse not to include one when committing to Github, for example.