## Save AppleScript as text
A little time-saving AppleScript to quickly save a plain text .applescript file of the script you’ve got open, in the same folder, with the same name. It then closes the newly saved .applescript and re-opens your original script, so you can keep working.

### Things to note
* **There are two versions.**  
If you write scripts in Apple’s own AppleScript Editor you’ll want `ASE-Save as text.scpt`. If you write scripts in [Script Debugger](http://www.latenightsw.com) then you’ll want `SD-Save as text.scpt`.
* **The script is saved to disk at the very start.**  
I’d advise against removing `save` on line 3, because there isn’t a good way of keep your script open with unsaved changes anyway. (Your script “becomes” the .applescript when it is created.)
* **Script Debugger 4.5 or earlier users may need to edit the script first**  
I haven’t tested it. But it uses standard commands so I don’t see why not. Even so, if you’re using an earlier version I’d recommend you check out Script Debugger 5 as it’s really nice.
* **Leopard (OSX 10.5) or earlier users may need to edit the script first.**  
AppleScript Editor was called Script Editor before Snow Leopard (10.6), so you may need to edit `ASE-Save as text.scpt` so the application references just say `"Script Editor"`.

### Meta
* *What happens if you run this script while working on it?*  
It fails, because you can’t close a running script. But it works fine if you run it from somewhere else. (I created the .applescript files for Github by having [FastScripts](http://www.red-sweater.com/fastscripts/) run the script via an alias while it was open.)
* *What’s wrong with using the save dialog?*  
It takes longer and you have to think. I tend to treat .applescript files as an afterthought, so this makes it more likely that I’ll include one when committing to Github, for example.