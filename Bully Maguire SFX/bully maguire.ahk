Menu, Tray, Icon, mmcndmgr.dll, 6 ;tray icon is now a little keyboard, or piece of paper or something
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetWorkingDir, C:\AHK\2nd-keyboard\support_files
#SingleInstance force
#installkeybdhook
SetNumLockState,On
SetNumLockState,AlwaysOn
return

; IGNORE THESE
; PRE-SPIDERMAN SFX PATHS
; JoyridePath := "C:\Bully Maguire SFX\Pre-Spiderman\Joyride"
; TheCiderHouseRulesPath := "C:\Bully Maguire SFX\Pre-Spiderman\The Cider House Rules"
; MISC PRE-SPIDERMAN SFX PATHS
; GreatScottPath := "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\Great Scott"
; MiscPreSpidermanPath := "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman"

; MOVIE SFX PATHS
; SpidermanMoviePath := "C:\Bully Maguire SFX\Movies\Spiderman"
; Spiderman2MoviePath := "C:\Bully Maguire SFX\Movies\Spiderman 2"
; Spiderman3MoviePath := "C:\Bully Maguire SFX\Movies\Spiderman 3"
; GAME SFX PATHS
; SpidermanGamePath := "C:\Bully Maguire SFX\Games\Spiderman"
; Spiderman2GamePath := "C:\Bully Maguire SFX\Games\Spiderman 2"
; Spiderman3GamePath := "C:\Bully Maguire SFX\Games\Spiderman 3"

; POST-SPIDERMAN SFX PATHS
; BrothersPath := "C:\Bully Maguire SFX\Post-Spiderman\Brothers"
; NoWayHomePath := "C:\Bully Maguire SFX\Post-Spiderman\No Way Home"
; PawnSacrificePath := "C:\Bully Maguire SFX\Post-Spiderman\Pawn Sacrifice"
; TheDetailsPath := "C:\Bully Maguire SFX\Post-Spiderman\The Details"
; MISC POST-SPIDERMAN SFX PATHS
; BabylonPath := "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\Babylon"
; TheGreatGatsbyPath := "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby"
; MiscPostSpidermanPath := "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman"
; I REPEAT, IGNORE THIS, IDIOT.
#ifwinactive ahk_class Notepad++
^r::
send ^s
sleep 10
Soundbeep, 1000, 500
Reload
Return
	
#IfWinActive ahk_exe RobloxPlayerBeta.exe

SoundOverlap(SoundFile) { ; SCRIPT THAT ALLOWS SOUNDS TO OVERLAP
    FileDelete, %A_ScriptDIR%\SoundOverlap.AHK
	if (SoundFile != "") { 
		FileAppend,
		(
		#NoTrayIcon
		SoundPlay, %SoundFile%, Wait
		), %A_ScriptDir%\SoundOverlap.AHK
		Run, %A_ScriptDIR%\SoundOverlap.AHK
	}
} ; IF YOU DO NOT PREFER THIS, JUST COMMENT OUT EVERYTHING HERE
	
global a = ""
global nonfirstquote := false
wavFiles := []
PlayRandomWavFile() {
	global wavFiles
	Random, randIndex, 1, % wavFiles.MaxIndex() 
	if (wavFiles[randIndex] = "C:\Bully Maguire SFX\Post-Spiderman\Brothers\Gun shots.wav") {
		SoundOverlap("C:\Bully Maguire SFX\Post-Spiderman\Brothers\Gun shots.wav")
	}
	else if (wavFiles[randIndex] = "C:\Bully Maguire SFX\Movies\Spiderman\Web Slinging\WOOOHOOO.wav") {
	    sleep 50
		Quote("WOOOOOHOOOOO{!}{!}{!}{!}{!}{!}{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Movies\Spiderman\Web Slinging\WOOOHOOO.wav")
	}
	else if (wavFiles[randIndex] = "C:\Bully Maguire SFX\Games\Spiderman\Web Slinging\YAAAHOOO.wav") {
	    sleep 50
		Quote("YAAAAAHOOOOOO{!}{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Web Slinging\YAAAHOOO.wav")
	}
	else if (wavFiles[randIndex] = "C:\Bully Maguire SFX\Games\Spiderman\Web Slinging\WHOOAAA.wav") {
		sleep 50
		Quote("WHOAAAAA{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Web Slinging\WHOOAAA.wav")
	}
	else if (wavFiles[randIndex] = "C:\Bully Maguire SFX\Games\Spiderman 3\Web Slinging\YEEHAW.wav") {
		sleep 50
		Quote("YEEEHAAWWW{!}{!}{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Web Slinging\YEEHAW.wav")
	}
	else if (wavFiles[randIndex] = "C:\Bully Maguire SFX\Games\Spiderman 3\Web Slinging\HIIIHOO.wav") {
		sleep 50
		Quote("HIIIIHOOOO{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Web Slinging\HIIIHOO.wav")
	}
	else if (wavFiles[randIndex] = "C:\Bully Maguire SFX\Movies\Spiderman 3\Countering\Go ahead lay one on me.wav") {
		sleep 50
		Quote("Go ahead, lay one on me.", "dance", "C:\Bully Maguire SFX\Movies\Spiderman 3\Countering\Go ahead lay one on me.wav")
	}
	else if (wavFiles[randIndex] = "C:\Bully Maguire SFX\Games\Spiderman 3\Stun Grenade\Bombs away.wav") {
		sleep 50
		Quote("Bombs away{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Stun Grenade\Bombs away.wav")
	}
	else if (wavFiles[randIndex] = "C:\Bully Maguire SFX\Games\Spiderman 3\Stun Grenade\FOOOUUUR.wav") {
		sleep 50
		Quote("FOOOUUUR{!}{!}{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Stun Grenade\FOOOUUUR.wav")
	}
	else {
	SoundOverlap(wavFiles[randIndex])
	}
}

~F13 & F1::
	if AbilityChatDisabled {
	AbilityChatDisabled := False
	return
	}
	AbilityChatDisabled := True
	return 

~w & LButton::
	wavFiles := []
	Loop, Files, C:\Bully Maguire SFX\Games\Spiderman\Punch Groans\*.wav
	{
		wavFiles.Push(A_LoopFileFullPath)
	}
	PlayRandomWavFile()
	return
~s & RButton::
	wavFiles := []
	Loop, Files, C:\Bully Maguire SFX\Games\Spiderman\Hurt Groans\*.wav
	{
		wavFiles.Push(A_LoopFileFullPath)
	}
	PlayRandomWavFile()
	return

Quote(x,y,z) { ; QUOTE FUNCTION 
	global a
    global nonfirstquote
	a = %x% ; PREVENTS CONFLICT / DON'T DELETE OR YOU'RE A DUMB OX
	send /
	sleep 50
	send %x%
	sleep 100
	send {Enter} ; MESSAGE IS SENT
	b = %z%
	SoundOverlap(b)
	if (y = "dance" or y = "dance3" or y = "wave" or y = "cheer" or y = "laugh" or y = "point")
	{
		sleep 25
		send /
		sleep 50
		send /e %y%
		sleep 100
		send {Enter} ; SENDS EMOTE TO STYLE ON THOSE LOSERS (IF ONE IS PLACED)
	}
	nonfirstquote := false
	return a
}

QuoteChain(x,y,z) { ; QUOTE FUNCTION 
	Quote(x,y,z)
	nonfirstquote := true
	resetsequencetimer()
	return a
}

Interrupted() { ; QUOTE FUNCTION 
    global nonfirstquote
	send /
	sleep 25
	send .
	sleep 50
	send {Enter} ; MESSAGE IS SENT
	nonfirstquote := false
	return
}

resetsequencetimer() {
    SetTimer, resetsequence, -5000
	return
}
resetsequence() {
    global nonfirstquote
	nonfirstquote := false
	return
}

; QUOTES BEGIN: IF YOU WANT TO EMOTE AFTER SAID QUOTE, TYPE... dance, dance3, wave, etc in quotes after the comma EXAMPLE: Quote("Hello", "wave") 

; SEQUENCES - COPY THE SCRIPT BELOW
/*	
    if (nonfirstquote != true) {
	   QuoteChain("QUOTE", "EMOTE", "AUDIO LOCATION")
	}
    else if (a = "PREVIOUS QUOTE") {
	   QuoteChain("QUOTE", "EMOTE", "AUDIO LOCATION")
    }
	return 
	-- THIRD SEQUENCE
	else if (a = "PREVIOUS QUOTE") {
	   QuoteChain("QUOTE", "EMOTE", "AUDIO LOCATION")
    }
	return 
	-- FOURTH SEQUENCE
	else if (a = "PREVIOUS QUOTE") {
	   Quote("NEW QUOTE", "")
    }
	return 
	-- YOU GET THE IDEA, BUT IF YOU WANT, THEN YOU CAN ALSO INCLUDE ANOTHER QUOTE THAT WILL DO THE NEXT QUOTE by doing - (a = "PREVIOUS QUOTE" or a = "ANOTHER QUOTE")
	Always end off chains with
	else {
	   Interrupted()
	}
	So that if you exit out of a quote chain and say something else, it will first make you look speechless before your next move.
*/
; OH YEA and if you want to add audio files, it must be in wav (32-bit Integer) in order to work

; --------------- GREETINGS ---------------
~g & F13::Quote("Sup{!}", "wave", "C:\Bully Maguire SFX\Games\Spiderman 2\Sup.wav")
~g & F14::Quote("Yooooo{!}", "cheer", "C:\Bully Maguire SFX\Games\Spiderman 2\Yooo.wav")
~g & F15::Quote("Hey neighbors{!}", "wave", "C:\Bully Maguire SFX\Games\Spiderman 3\Hey Neighbors.wav")
; MEETING SOMEONE
~g & F16::
    if (nonfirstquote != true) {
	   QuoteChain("Hey pal{!}", "wave", "C:\Bully Maguire SFX\Movies\Spiderman 3\Hey pal.wav")
    }
    else if (a = "Hey pal{!}") {
	   Quote("How you doing?", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\How you doing.wav")
    }
	else {
	   Interrupted()
	}
    return
~g & F17::Quote("Hey, buddy!", "wave", "C:\Bully Maguire SFX\Games\Spiderman\Hey buddy.wav")
~g & F18::Quote("What’s up, kid?", "wave", "C:\Bully Maguire SFX\Games\Spiderman 3\Whats up.wav")
; UNEXPECTED ARRIVAL
~g & F19::
   if (nonfirstquote != true) {
	   QuoteChain("Surprise{!}", "cheer", "C:\Bully Maguire SFX\Games\Spiderman 2\Surprise.wav")
   }
   else if (a = "Surprise{!}") {
	   Quote("Happy to see me?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Happy to see me.wav")
   }
   else {
	   Interrupted()
	}
   return
~g & F20::Quote("", "", "")
~g & F21::Quote("Sorry I'm late. It's a jungle out there", "", "C:\Bully Maguire SFX\Movies\Spiderman\Sorry im late It's a jungle out there.wav")
; CHECKING UP
~g & F22::Quote("Something happening?", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby\Something happening.wav")
~g & F23::
    if (nonfirstquote != true) {
	   QuoteChain("Anyone here?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Anyone here.wav")
    }
    else if (a = "Anyone here?") {
	   QuoteChain("... Commiting crimes?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Committing crimes.wav")
    }
    else if (a = "... Commiting crimes?") {
	   Quote("Maybe?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Maybe.wav")
    }
    else {
	   Interrupted()
	}
   return
~g & F24::Quote("", "", "")
; RETURN
~g & F1::Quote("Hey, it's me again{!}", "wave", "C:\Bully Maguire SFX\Movies\Spiderman\Hey it's me again.wav")
~g & F2::
    if (nonfirstquote != true) {
	  QuoteChain("I’M BACK{!}", "wave", "C:\Bully Maguire SFX\Movies\Spiderman 2\I'm back 1.wav")
    }
    else if (a = "I’M BACK{!}") {
	   Quote("I’M BAAAAACK{!}{!}{!}{!}{!}{!}", "wave", "C:\Bully Maguire SFX\Movies\Spiderman 2\I'm back 2.wav")
    }
    else {
	   Interrupted()
	}
   return
~g & F3::Quote("I’m not dead.", "", "C:\Bully Maguire SFX\Pre-Spiderman\Joyride\I'm not dead.wav")
; --------------- BYE ---------------
~F13 & g::Quote("Cya chump{!}", "wave", "C:\Bully Maguire SFX\Movies\Spiderman 3\Cya chump.wav")
~F14 & g::Quote("Bye", "wave", "C:\Bully Maguire SFX\Movies\Spiderman\Bye.wav")
~F15 & g::Quote("Cya around{!}", "wave", "C:\Bully Maguire SFX\Games\Spiderman 2\Cya around.wav")
; IM OUTTA HERE
~F16 & g::Quote("Now to get out of here!", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Now to get out of here.wav")
~F17 & g::Quote("", "", "")
~F18 & g::Quote("", "", "")
; SORRY, GOTTA GO
~F19 & g::Quote("I gotta go", "", "C:\Bully Maguire SFX\Games\Spiderman\I gotta go.wav")
~F20 & g::Quote("I better get going", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I better get going.wav")
~F21 & g::Quote("Afraid I can’t stick around, bye", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Afraid I can't stick around bye.wav")
; ???
~F22 & g::Quote("", "", "")
~F23 & g::Quote("", "", "")
~F24 & g::Quote("", "", "")
; --------------- NAMES ---------------
~n & F13::
    if (nonfirstquote != true) {
	   QuoteChain("Who am I?", "", "")
    }
    else if (a = "Who am I?") {
	   Quote("Are you sure you want to know?", "", "")
    }
	else {
	   Interrupted()
	}
    return
~n & F14::Quote("The Human Spider", "", "")
~n & F15::Quote("", "", "")
; I'M NOT A
~n & F16::
    if (nonfirstquote != true) {
	   QuoteChain("I'M NO {#}{#}{#}{#}{#}{#}{#} HERO{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Brothers\I'm no fucking hero 1.wav")
    }
    else if (a = "I'M NO {#}{#}{#}{#}{#}{#}{#} HERO{!}") {
	   Quote("I'M NO {#}{#}{#}{#}{#}{#}{#} HERO{!}{!}{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Brothers\I'm no fucking hero 2.wav")
    }
	else {
	   Interrupted()
	}
    return
~n & F17::Quote("I'm not a doctor.", "", "")
~n & F18::Quote("", "", "")
; I'M SPIDERMAN
~n & F19::Quote("I’m spiderman", "", "")
~n & F20::
    if (nonfirstquote != true) {
	   QuoteChain("It's just spiderman, ok?", "", "C:\Bully Maguire SFX\Games\Spiderman\It's just spiderman ok.wav")
    }
    else if (a = "It's just spiderman, ok?") {
	   Quote("There's no 'the'", "", "C:\Bully Maguire SFX\Games\Spiderman\There's no 'the'.wav")
    }
	else {
	   Interrupted()
	}
    return
~n & F21::Quote("", "", "")
; I'M PETER PARKER
~n & F22::Quote("That’s me, Peter Parker.", "", "C:\Bully Maguire SFX\Games\Spiderman\That's me Peter Parker.wav")
~n & F23::Quote("", "", "")
~n & F24::Quote("", "", "")

; --------------- SENSING DANGER ---------------
~j & F13::Quote("Wow, spider sense is buzzing like crazy{!}", "", "")
~j & F14::
	if (nonfirstquote != true) {
	   QuoteChain("My spider sense is tingling,", "", "")
    }
	else if (a = "My spider sense is tingling,") {
	   Quote("just need to hone in on what’s setting it off...", "", "")
    }
	else {
	   Interrupted()
	}
    return
~j & F15::
    if (nonfirstquote != true) {
	   QuoteChain("I need to focus on my spider sense,", "", "C:\Bully Maguire SFX\Games\Spiderman 3\I need to focus on my spider sense.wav")
    }
	else if (a = "I need to focus on my spider sense,") {
	   Quote("it’s trying to tell me something", "", "C:\Bully Maguire SFX\Games\Spiderman 3\It's trying to tell me something.wav")
    }
	else {
	   Interrupted()
	}
    return
; TROUBLE
~j & F16::Quote("Uh oh{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Uh oh.wav")
~j & F17::Quote("Wuh oh{!}", "", "")
~j & F18::Quote("Oh no{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Oh no.wav")
; HELP NEEDED
~j & F19::
    if (nonfirstquote != true) {
	   Quote("Sounds like trouble,", "", "")
    }
	else if (a = "Sounds like trouble,") {
	   Quote("better check it out", "", "")
    }
	else {
	   Interrupted()
	}
    return
~j & F20::
    if (nonfirstquote != true) {
	   QuoteChain("Another call for help,", "", "")
    }
	else if (a = "Another call for help,") {
	   Quote("I have to get there quickly{!}", "", "")
    }
	else {
	   Interrupted()
	}
    return
~j & F21::
    if (nonfirstquote != true) {
	   QuoteChain("Trouble huh,", "", "")
    }
	else if (a = "Trouble huh,") {
	   Quote("I guess I better get to it then", "", "")
    }
	else {
	   Interrupted()
	}
    return
; GOTTA SAVE SOMEONE
~j & F22::Quote("Guess that’s my cue to leap into action", "", "")
~j & F23::Quote("Time to got put their lights out", "", "")
~j & F24::Quote("Looks like it's time for the friendly neighborhood spiderman to jump into action{!}", "", "")
; I'M IN DANGER
~j & F1::Quote("I think i’m in trouble", "", "")
~j & F2::
    if (nonfirstquote != true) {
	   QuoteChain("Someone somewhere is trying to kill me...", "", "")
    }
    else if (a = "Someone somewhere is trying to kill me...") {
	   Quote("and i'm such a nice guy 😢", "", "")
    }
	else {
	   Interrupted()
	}
    return
~j & F3::Quote("", "", "")
; --------------- RESCUE TRAVELING ---------------
~F13 & j::Quote("Hang in there{!}", "", "")
~F14 & j::Quote("Hold on tight!", "", "")
~F15 & j::Quote("", "", "")
; I'LL SAVE YOU
~F16 & j::Quote("I’ll be there", "", "") 
~F17 & j::Quote("I’ll save you{!}", "", "")
~F18 & j::
    if (nonfirstquote != true) {
	   QuoteChain("Don’t worry{!}", "", "")
    }
    else if (a = "Don’t worry{!}") {
	   Quote("I’ll have you outta there in a second", "", "")
    }
	else {
	   Interrupted()
	}
    return
; YAPPING
~F19 & j::
    if (nonfirstquote != true) {
	   QuoteChain("Look up in the sky{!}", "", "")
    }
	else if (a = "Look up in the sky{!}") {
	   QuoteChain("It's a bird, it's a plane, it's...", "", "")
    }
    else if (a = "It's a bird, it's a plane, it's...") {
       Quote("Everyone's favorite neighborhood spiderman?", "", "")
    }
	else {
	   Interrupted()
	}
    return
~F20 & j::Quote("", "", "")
~F21 & j::Quote("", "", "")
; I HAVE TO HURRY
~F22 & j::Quote("I need to move fast", "", "")
~F23 & j::Quote("No time to lose", "", "C:\Bully Maguire SFX\Games\Spiderman 2\No time to lose.wav")
~F24 & j::Quote("I have to get em before it’s too late", "", "")
; THEMES
~F1 & j::Soundplay, C:\Bully Maguire SFX\Movies\Spiderman 3\Black Suit Theme.wav
~F2 & j::Soundplay, C:\Bully Maguire SFX\Movies\Spiderman 3\Dance Theme.wav
; --------------- RESCUE SHOUT ---------------
~Shift & F13::Quote("Set him down, tough guy", "point", "")
~Shift & F14::
    if (nonfirstquote != true) {
	   QuoteChain("Leave em alone.", "point", "")
    }
	else if (a = "Leave em alone.") {
	   Quote("I’m the one you want.", "", "")
    }
	else {
	   Interrupted()
	}
    return
~Shift & F15::
    if (nonfirstquote != true) {
	   QuoteChain("If you hurt them...", "point", "")
    }
	else if (a = "If you hurt them...") {
	   Quote("I’ll make you suffer.", "", "")
    }
	else {
	   Interrupted()
	}
    return
; PICK ON SOMEONE YOUR OWN SIZE
~Shift & F16::Quote("Try picking on someone who can fight back", "point", "")
~Shift & F17::Quote("", "", "")
~Shift & F18::Quote("", "", "")
; I'M HERE TO BEAT YOU
~Shift & F19::Quote("You aren’t going to hurt anyone anymore", "point", "")
~Shift & F20::Quote("I’m gonna stop your rampage right now", "point", "")
~Shift & F21::Quote("", "point", "")
; TEAMING RESCUE
~Shift & F22::
    if (nonfirstquote != true) {
	   QuoteChain("Hi guys,", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Hi guys.wav")
    }
	else if (a = "Hi guys,") {
	   Quote("I’m here to beat you up", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I'm here to beat you up.wav")
    }
	else {
	   Interrupted()
	}
    return
~Shift & F23::Quote("Guess I’ll crash the party", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Guess I'll crash the party.wav")
~Shift & F24::Quote("Time to wrap this party up{!}", "", "")
; KEEP FIGHTING ME
~Shift & F1::
    if (nonfirstquote != true) {
	   QuoteChain("This is between you and me", "", "")
    }
	else if (a = "This is between you and me") {
	   Quote("Leave them out of it{!}", "", "")
    }
	else {
	   Interrupted()
	}
    return
~Shift & F2::Quote("", "", "")
~Shift & F3::Quote("", "", "")
; --------------- EVACUATE ---------------
~F13 & Shift::Quote("You okay?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You okay.wav")
~F14 & Shift::Quote("Need a hand?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Need a hand.wav")
~F15 & Shift::Quote("You rang?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You rang.wav")
; I'LL HELP YoU
~F16 & Shift::
    if (nonfirstquote != true) {
	   QuoteChain("Hi,", "", "")
    }
	else if (a = "Hi,") {
	   Quote("My name is spiderman and I’ll be your superhero today", "", "")
    }
	else {
	   Interrupted()
	}
    return
~F17 & Shift::Quote("I'm gonna get you out of this.", "", "")
~F18 & Shift::Quote("We'll get you through this.", "", "")
; GET SAFE
~F19 & Shift::Quote("You get to safety", "", "")
~F20 & Shift::
    if (nonfirstquote != true) {
	   QuoteChain("Find somewhere safe to hide", "", "C:\Bully Maguire SFX\Games\Spiderman\Find somewhere safe to hide.wav")
    }
	else if (a = "Find somewhere safe to hide") {
	   Quote("I’ll take care of mean and gruesome.", "", "")
    }
	else {
	   Interrupted()
	}
    return
~F21 & Shift::Quote("I’ll take these guys out", "", "")
; I'M TRYING TO HELP
~F22 & Shift::
    if (nonfirstquote != true) {
	   QuoteChain("I save you.", "", "C:\Bully Maguire SFX\Games\Spiderman 3\I save you.wav")
    }
	else if (a = "I save you.") {
	   Quote("You attack me?", "", "C:\Bully Maguire SFX\Games\Spiderman 3\You attack me.wav")
    }
	else {
	   Interrupted()
	}
    return
~F23 & Shift::
    if (nonfirstquote != true) {
	   QuoteChain("I was trying to help{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I was trying to help.wav")
    }
	else if (a = "I was trying to help{!}") {
	   Quote("I wish you could see that{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I wish you could see that.wav")
    }
	else {
	   Interrupted()
	}
    return
~F24 & Shift::Quote("This is no way to treat someone who's trying to help you", "", "C:\Bully Maguire SFX\Games\Spiderman 3\This is no way to treat someone who's trying to help you.wav")
; YOU'RE WELCOME
~F1 & Shift::Quote("Anytime{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Anytime.wav")
~F3 & Shift::Quote("Happy to help{!", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Happy to help.wav")
~F4 & Shift::Quote("No sweat{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\No sweat.wav")

; --------------- BATTLE REQUEST ---------------
~q & F13::Quote("Shall we dance?", "", "C:\Bully Maguire SFX\Games\Spiderman\Shall we dance.wav")
~q & F14::
    if (nonfirstquote != true) {
	   QuoteChain("You think you can hit me and not pay for it?", "", "C:\Bully Maguire SFX\Games\Spiderman 3\You think you can hit me and not pay for it.wav")
    }
	else if (a = "You think you can hit me and not pay for it?") {
	   Quote("Think again.", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Think again.wav")
    }
	else {
	   Interrupted()
	}
    return
~q & F15::Quote("Are you teasing me?", "", "")
; CONFIDENT
~q & F16::Quote("I'm REALLY gonna enjoy this.", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\I'm REALLY gonna enjoy this.wav")
~q & F17::Quote("", "", "")
~q & F18::Quote("", "", "")
; ENTERING BATTLE
~q & F19::Quote("Alright you're on{!}", "", "")
~q & F20::Quote("Well i’d better get started", "", "")
~q & F21::Quote("Let’s get this over with", "", "")
; SHOW ME WHAT YOU GOT
~q & F22::Quote("Show me what you got!", "", "")
~q & F23::
    if (nonfirstquote != true) {
	   QuoteChain("Ok Mr. hop & hack,", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Ok mr hop and hack.wav")
    }
	else if (a = "Ok Mr. hop & hack,") {
	   Quote("let's see what you got.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Let's see what you got.wav")
    }
	else {
	   Interrupted()
	}
    return
~q & F24::Quote("", "", "")
; REMATCH
~q & F1::
	if (nonfirstquote != true) {
	   QuoteChain("Guess I’d better take out the trash{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Guess I'd better take out the trash.wav")
    }
	else if (a = "Guess I’d better take out the trash{!}") {
	   QuoteChain("Or…", "", "C:\Bully Maguire SFX\Games\Spiderman 2\or.wav")
    }
	else if (a = "Or…") {
	   QuoteChain("do the laundry-", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Do the laundry.wav")
    }
	else if (a = "do the laundry-") {
	   Quote("You know what I mean.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You know what I mean.wav")
    }
	else {
	   Interrupted()
	}
    return
~q & F2::
    if (nonfirstquote != true) {
	   QuoteChain("I don't know what happened to make you so delusional but...", "", "C:\Bully Maguire SFX\Games\Spiderman 2\ I don't know what happened to make you so delusional but.wav")
    }
	else if (a = "I don't know what happened to make you so delusional but...") {
	   Quote("BRING IT ON", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Bring it on.wav")
    }
	else {
	   Interrupted()
	}
    return
; --------------- BATTLING ---------------
~F13 & q::Quote("Coming at ya{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Coming at ya.wav")
~F14 & q::Quote("Here I come{!}", "", "")
~F15 & q::Quote("", "", "")
; TAKE THIS
~F16 & q::Quote("Now dig on this. ", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Now dig on this.wav")
~F17 & q::Quote("Try this on for size{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Try this on for size.wav")
~F18 & q::Quote("THIS should wake you up{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\This should wake you up.wav")
; MY FIST
~F19 & q::Quote("Let me introduce you to.... my fist{!}", "", "")
~F20 & q::Quote("Try not to run into my FIST with your FACE", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Try not to run into my fist with your face.wav")
~F21 & q::Quote("Im punching you in the face for your own good{!}", "", "")

; --------------- WEB SHOTS ---------------
~1::
	if (AbilityChatDisabled != True) {
		wavFiles := []
		Loop, Files, C:\Bully Maguire SFX\Post-Spiderman\Brothers\Web shots\*.wav
		{
			wavFiles.Push(A_LoopFileFullPath)
		}
		PlayRandomWavFile()
	}
	return
; --------------- WEB SLINGING ---------------
~2 & F13::
	if (AbilityChatDisabled != True) {
		wavFiles := []
		Loop, Files, C:\Bully Maguire SFX\Movies\Spiderman\Web Slinging\*.wav
		{
			wavFiles.Push(A_LoopFileFullPath)
		}
		Loop, Files, C:\Bully Maguire SFX\Games\Spiderman\Web Slinging\*.wav
		{
			wavFiles.Push(A_LoopFileFullPath)
		}
		Loop, Files, C:\Bully Maguire SFX\Games\Spiderman 3\Web Slinging\*.wav
		{
			wavFiles.Push(A_LoopFileFullPath)
		}
		PlayRandomWavFile()
	}
	return
; PHRASES
~F13 & 2::Quote("Fly{!}{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Movies\Spiderman\Fly.wav")
~F14 & 2::Quote("Up up and away{!}", "", "C:\Bully Maguire SFX\Movies\Spiderman\Up up and away.wav")
~F15 & 2::Quote("Go web, go{!}", "", "")
; --------------- COUNTERING ---------------
~3 & F13::
	if (AbilityChatDisabled != True) {
		wavFiles := []
		Loop, Files, C:\Bully Maguire SFX\Movies\Spiderman 3\Countering\*.wav
		{
			wavFiles.Push(A_LoopFileFullPath)
		}
		PlayRandomWavFile()
	}
	return
; COUNTER 
~F13 & 3::Quote("Just kidding{!}", "", "")
~F14 & 3::Quote("Made you look{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Made you look.wav")
~F15 & 3::Quote("", "", "")
; COUNTER TEASING
~F16 & 3::Quote("You really gotta pay more attention.", "", "C:\Bully Maguire SFX\Games\Spiderman\You really gotta pay more attention.wav")
~F17 & 3::Quote("I think you zigged when you should've zagged", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I think you zigged when you should've zagged.wav")
~F18 & 3::Quote("", "", "")
; --------------- STUNNING ---------------
~4 & F13::
    if (AbilityChatDisabled != True) {
		wavFiles := []
		Loop, Files, C:\Bully Maguire SFX\Games\Spiderman 3\Stun Grenade\*.wav
		{
			wavFiles.Push(A_LoopFileFullPath)
		}
		PlayRandomWavFile()
	}
	return
; GOTEEM
~F13 & 4::Quote("Perfect{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Perfect.wav")
~F14 & 4::Quote("Gotcha{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Gotcha.wav")
~F15 & 4::Quote("Now I've got you{!}", "C:\Bully Maguire SFX\Games\Spiderman\Now I've got you.wav", "")
; STAND STILL
~F16 & 4::Quote("Hold still.", "", "")
~F17 & 4::Quote("Batter up{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Batter up.wav")
~F18 & 4::Quote("Bottoms up{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Bottoms up.wav")
; CALM DOWN
~F19 & 4::Quote("Sorry, but i've got to subdue you somehow", "", "")
~F20 & 4::Quote("Have you considered decaf?", "", "C:\Bully Maguire SFX\Games\Spiderman\Have you considered decaf.wav")
~F21 & 4::
	if (a = "FOOOUUUR{!}{!}{!}") {
	   QuoteChain("Well,", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Well.wav")
	}
	else if (a = "Well,") {
	   Quote("I did say four.", "", "C:\Bully Maguire SFX\Games\Spiderman 3\I did say four.wav")
	}
	else {
	   Interrupted()
	}
	return
; STUN N' RUN
~F22 & 4::Quote("Stick around Cue-ball!", "", "")
~F23 & 4::Quote("", "", "")
~F24 & 4::Quote("", "", "")

; --------------- SERIOUS/RAGE ---------------
~r & F13::Quote("I'm sorry, I didn't mean to bore you.", "", "")
~r & F14::Quote("Huh, they're not messing around", "", "C:\Bully Maguire SFX\Games\Spiderman\Huh they're not messing around.wav")
~r & F15::Quote("He’s trying to kill me{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\He's trying to kill me.wav")
; THREAT
~r & F16::Quote("I'm gonna put some dirt in your eye.", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\I'm gonna put some dirt in your eye.wav")
~r & F17::Quote("I'm gonna have to kill you{!}", "", "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\Great Scott\I'm gonna have to kill you.wav")
~r & F18::Quote("This isn’t gonna end well for you", "", "")
; IM GETTING ANGRY
~r & F19::Quote("You’re gonna regret that", "", "C:\Bully Maguire SFX\Games\Spiderman 3\You're gonna regret that.wav")
~r & F20::Quote("Ok now i’m getting ticked off", "", "C:\Bully Maguire SFX\Games\Spiderman\Ok now I'm getting ticked off.wav")
~r & F21::Quote("Now we turn it up a notch", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Now we turn it up a notch.wav")
; TIME TO PAY
~r & F22::Quote("It's time to pay.", "", "")
~r & F23::Quote("I’ll give you a price", "", "")
~r & F24::Quote("You're going to pay with your WORTHLESS hide{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\You're going to pay with your WORTHLESS hide.wav")
; BREATHING
~r & F1::
    Quote("Why you-", "", "C:\Bully Maguire SFX\Games\Spiderman\Why you.wav")
~r & F2::Quote("RAWR", "", "C:\Bully Maguire SFX\\Pre-Spiderman\Misc Pre-Spiderman\Great Scott\Rawr.wav")
~r & F3::Quote("*Intense Breathing*", "", "C:\Bully Maguire SFX\Games\Spiderman\Intense breathing.wav")
; --------------- CHASING ---------------
~F13 & r::Quote("Hey{!} Where you going?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Hey where you going.wav")
~F14 & r::
    if (nonfirstquote != true) {
	   QuoteChain("What’s the rush?", "", "")
    }
	else if (a = "What’s the rush?") {
	   Quote("Going somewhere?", "", "")
    }
	else {
	   Interrupted()
	}
    return
~F15 & r::Quote("Where you headed?", "", "")
; STAY
~F16 & r::Quote("Heyyy, we’re just getting started", "", "")
~F17 & r::Quote("Fight went outta ya huh?", "", "")
~F18 & r::
	if (nonfirstquote != true) {
	   QuoteChain("Don’t go{!}", "", "")
    }
	else if (a = "Don’t go{!}") {
	   Quote("This is the good part.", "", "")
    }
	else {
	   Interrupted()
	}
    return
; GET BACK HERE
~F19 & r::Quote("Not on my watch{!}", "", "")
~F20 & r::Quote("You aren’t getting away from me", "", "C:\Bully Maguire SFX\Games\Spiderman\You aren't getting away from me.wav")
~F21 & r::Quote("Not so fast.", "", "C:\Bully Maguire SFX\Games\Spiderman\Not so fast.wav")
; COWARDS
~F22 & r::Quote("Why so scared?", "", "C:\Bully Maguire SFX\Games\Spiderman\Why so scared.wav")
~F23 & r::Quote("Top of your class in cowardly running, I see{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Top of your class in cowardly running.wav")
~F24 & r::Quote("You’re a coward, kid.", "", "")
; LONG CHASE
~F1 & r::
    if (nonfirstquote != true) {
	   QuoteChain("You’re nothing but a...", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby\You're nothing but a.wav")
    }
	else if (a = "You’re nothing but a...") {
	   Quote("GOD {#}{#}{#}{#} COWARD", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby\GOD DAMN COWARD.wav")
    }
	else {
	   Interrupted()
	}
    return
~F3 & r::Quote("Okay{!} Someone's gonna need a timeout when I catch him{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Okay someone's gonna need a timeout when I catch them.wav")
~F4 & r::Quote("You’re making this alot harder than it needs to be", "", "C:\Bully Maguire SFX\Games\Spiderman\You're making this alot harder than this needs to be.wav")
~F5 & r::Quote("Note to aspiring superheroes: If you can't fly, try to pick non-flying villains.", "", "")

; --------------- WINNING ---------------
~w & F13::Quote("That all you got?", "dance", "C:\Bully Maguire SFX\Movies\Spiderman 3\That all you got.wav")
~w & F14::Quote("Stings doesn’t it", "laugh", "C:\Bully Maguire SFX\Movies\Spiderman 3\Stings doesn't it.wav")
~w & F15::Quote("Having fun yet?", "dance", "C:\Bully Maguire SFX\Games\Spiderman\Having fun yet.wav")
; NOT TOUGH NOW
~w & F16::Quote("Not so tough now are you?", "laugh", "C:\Bully Maguire SFX\Games\Spiderman 3\Not so tough now are you.wav")
~w & F17::
    if (nonfirstquote != true) {
	   QuoteChain("You talk pretty tough when you're in the lead.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You talk pretty tough when you're in the lead.wav")
    }
	else if (a = "You talk pretty tough when you're in the lead.") {
	   Quote("How about now?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\How about now.wav")
    }
	else {
	   Interrupted()
	}
    return
~w & F18::Quote("", "", "")
; TOO SLOW
~w & F19::Quote("Too Slow{!}", "dance", "")
~w & F20::
    if (nonfirstquote != true) {
	   QuoteChain("What’s the matter?", "", "C:\Bully Maguire SFX\Games\Spiderman 3\What's the matter.wav")
    }
	else if (a = "What’s the matter?") {
	   QuoteChain("Am I too fast for you?", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Am I too fast for you.wav")
    }
	else if (a = "Am I too fast for you?") {
	   Quote("Maybe you should hit the gym a little more often", "dance", "C:\Bully Maguire SFX\Games\Spiderman 3\Maybe you should hit the gym a little more often.wav")
    }
	else {
	   Interrupted()
	}
    return
~w & F21::Quote("Still slow and dumb I see{!}", "dance", "C:\Bully Maguire SFX\Games\Spiderman 2\Still slow and dumb I see.wav")
; BOASTING
~w & F22::
    if (nonfirstquote != true) {
	   QuoteChain("Wow{!} Good looks and sparkling wit{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Wow good looks and sparkling wit.wav")
    }
	else if (a = "Wow{!} Good looks and sparkling wit{!}") {
	   Quote("Oh wait, that's me.", "laugh", "C:\Bully Maguire SFX\Games\Spiderman\Oh wait that's me.wav")
    }
	else {
	   Interrupted()
	}
    return
~w & F23::Quote("I’m just getting started", "dance", "C:\Bully Maguire SFX\Games\Spiderman\I'm just getting started.wav")
~w & F24::Quote("I can be him without the black suit!", "", "C:\Bully Maguire SFX\Games\Spiderman 3\I can be him without the black suit.wav")
; --------------- GIVE UP. ---------------
~F13 & w::Quote("Jigs up pal", "", "")
~F14 & w::Quote("You're done.", "point", "C:\Bully Maguire SFX\Games\Spiderman\You're done.wav")
~F15 & w::Quote("Give up, kid.", "", "")
;LOOK AT YOURSELF
~F16 & w::Quote("You’re sweating.", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\Babylon\You're sweating.wav")
~F17 & w::Quote("You're embarrassing yourself, kid", "", "C:\Bully Maguire SFX\Games\Spiderman\You're embarrassing yourself.wav")
~F18 & w::Quote("Yikes{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Yikes.wav")
; WRONG GUY
~F19 & w::Quote("You messed with the wrong guy.", "", "C:\Bully Maguire SFX\Games\Spiderman\You messed with the wrong guy.wav")
~F20 & w::
    if (nonfirstquote != true) {
	   QuoteChain("I guess you haven't heard", "", "")
    }
	else if (a = "I guess you haven't heard") {
	   Quote("I'm the sheriff around here", "laugh", "")
    }
	else {
	   Interrupted()
	}
    return
~F21 & w::Quote("Who put you up to this?", "", "")
; IM DONE WITH YOU
~F22 & w::Quote("I'm done trying to convince you", "", "")
~F23 & w::Quote("Go down already{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Go down already.wav")
~F24 & w::Quote("Time to go", "", "")
; --------------- HURT ---------------
~h & F13::
	if (nonfirstquote != true) {
	   QuoteChain("My back....", "", "C:\Bully Maguire SFX\Movies\Spiderman 2\my back 1.wav")
    }
	else if (a = "My back....") {
	   Quote("MY BACK{!}", "", "C:\Bully Maguire SFX\Movies\Spiderman 2\My back 2.wav")
    }
	else {
	   Interrupted()
	}
    return
~h & F14::
    if (nonfirstquote != true) {
	   QuoteChain("Ouch{!}", "", "")
    }
	else if (a = "Ouch{!}") {
	   Quote("That really hurt{!}", "", "")
    }
	else {
	   Interrupted()
	}
    return
~h & F15::Quote("OW{!} It even burns through the suit{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 3\OW it even burns through the suit.wav")
; STAND GROUND
~h & F16::Quote("Hey, I was just going easy on you before", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Hey I was just going easy on you before.wav")
~h & F17::Quote("I figured you needed a head start{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I figured you needed a headstart.wav")
~h & F18::Quote("I'm just getting warmed up{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I'm just getting warmed up.wav")
; BADLY HURT
~h & F19::Quote("This doesn’t look good", "", "C:\Bully Maguire SFX\Games\Spiderman\This doesn't look good.wav")
~h & F20::Quote("I'm getting torn to pieces{!}", "", "")
~h & F21::Quote("When am I going to learn to listen to my inner monologue{!}", "", "")
; REPLAN
~h & F22::Quote("I need to be more careful{!}", "", "")
~h & F23::Quote("I've gotta think of something fast{!}", "", "")
~h & F24::Quote("Let’s see if I can figure something out…", "", "")
; BARELY WON
~h & F1::Quote("Ugh, that was not my best work", "", "")
; --------------- LOSING ---------------
~F13 & h::Quote("Darn it.", "", "")
~F14 & h::Quote("Rats.", "", "")
~F15 & h::Quote("", "", "")
; DYING
~F16 & h::Quote("I don’t feel so good.", "", "")
~F17 & h::Quote("", "", "")
~F18 & h::Quote("", "", "")
; I LOST?
~F19 & h::Quote("Can't believe I got washed.", "", "")
~F20 & h::
    if (nonfirstquote != true) {
	   QuoteChain("I can’t believe it{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I can't believe it.wav")
    }
	else if (a = "I can’t believe it{!}") {
	   Quote("I lost the bag{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I lost the bag.wav")
    }
	else {
	   Interrupted()
	}
    return
~F21 & h::Quote("", "", "")
; I WAS GONNA BE THE YOUNGEST WORLD CHAMP
~F22 & h::
    if (nonfirstquote != true) {
	   QuoteChain("THIS WAS IT{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Pawn Sacrifice\This was it.wav")
    }
	else if (a = "THIS WAS IT{!}") {
	   QuoteChain("I WAS GONNA BE THE YOUNGEST WORLD CHAMP IN THE HISTORY OF THE GAME{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Pawn Sacrifice\I was gonna be the youngest world champ in the history of the game.wav")
    }
	else if (a = "I WAS GONNA BE THE YOUNGEST WORLD CHAMP IN THE HISTORY OF THE GAME{!}") {
	   QuoteChain("THAT'S OVER NOW{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Pawn Sacrifice\That's over now.wav")
    }
	else if (a = "THAT'S OVER NOW{!}") {
	   QuoteChain("THEY STOLE IT FROM ME{!} THEY TOOK IT{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Pawn Sacrifice\They stole it from me They took it.wav")
    }
	else if (a = "THEY STOLE IT FROM ME{!} THEY TOOK IT{!}") {
	   QuoteChain("THAT WAS TODAY{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Pawn Sacrifice\That was today.wav")
    }
	else if (a = "THAT WAS TODAY{!}") {
	   Quote("TODAAAYYYYY{!}{!}{!}{!}{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Pawn Sacrifice\TODAAAY.wav")
    }
	else {
	   Interrupted()
	}
    return
~F23 & h::Quote("", "", "")
~F24 & h::Quote("", "", "")
; SCREAMS
~F1 & h::Quote("WRAAAAAAHHHHHHHH{!}{!}{!}{!}{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\WRAAHHH.wav")
~F3 & h::Quote("DUOUOUOUOUOUOUOUUUUHHHHHH{!}{!}{!}{!}{!}{!}{!}{!}{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\DUOUOUH.wav")
~F4 & h::Quote("HUUAAAAGGUHUUHHHAHHHHUAHHHHHHHHH", "", "C:\Bully Maguire SFX\Movies\Spiderman 2\Scream.wav")
~F5 & h::Quote("*Faints*", "", "C:\Bully Maguire SFX\Games\Spiderman\Faints.wav")
~F6 & h::Quote("NOOOOOO{!}{!}{!}", "", "")

; --------------- FINISHER ---------------
~5 & F13::Quote("So much for you{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\So much for you.wav")
~5 & F14::Quote("Looks like you’re done now.", "", "")
~5 & F15::Quote("Here’s your change{!}", "", "")
; THIS WILL HURT
~5 & F16::Quote("This may sting a little", "", "")
~5 & F17::Quote("Hope your insurance is paid up{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Hope your insurance is paid up.wav")
~5 & F18::Quote("", "", "")
; TIME TO SLEEP
~5 & F19::Quote("Say goodnight.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Say goodnight.wav")
~5 & F20::Quote("I'm putting you to sleep", "", "")
~5 & F21::Quote("Take a nap sap{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Take a nap sap.wav")
; FALL.
~5 & F22::Quote("This is the part where you fall down", "", "C:\Bully Maguire SFX\Games\Spiderman 2\This is the part where you fall down.wav")
~5 & F23::Quote("Go flock yourself featherface", "", "")
~5 & F24::Quote("That'll knock the wind out of your sails", "", "C:\Bully Maguire SFX\Games\Spiderman\That'll knock the wind outta your sails.wav")
; I HATE YOU
~5 & F1::Quote("I’m sick of your ugly face", "", "C:\Bully Maguire SFX\Games\Spiderman\I'm sick of your ugly face.wav")
~5 & F3:: 
    if (nonfirstquote != true) {
	   QuoteChain("You want forgiveness?", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\You want forgiveness Get religion.wav")
    }
	else if (a = "You want forgiveness?") {
	   Quote("Get religion.", "", "")
    }
	else {
	   Interrupted()
	}
    return
~5 & F4::Quote("", "", "")
; --------------- KILLED ---------------
~F13 & 5::Quote("Goodnight.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Say goodnight.wav")
~F14 & 5::Quote("That takes care of that.", "", "")
~F15 & 5::Quote("", "", "")
; HE TRIED
~F16 & 5::Quote("Atleast he's in peace now", "", "")
~F17 & 5::Quote("", "", "")
~F18 & 5::Quote("", "", "")
; DO BETTER
~F19 & 5::Quote("Get better okay?", "", "")
~F20 & 5::Quote("Work out, get plenty of rest, you know, eat your green vegetables.", "", "")
~F21 & 5::Quote("", "", "")
; ???
~F22 & 5::Quote("", "", "")
~F23 & 5::Quote("", "", "")
~F24 & 5::Quote("", "", "")
; HATED HIM!
~F1 & 5::Quote("Good riddance.", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Good riddance.wav")
~F3 & 5::Quote("You were an embarassment", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\You were an embarrassment.wav")
~F4 & 5::Quote("Hate those things{!}", "", "")
~F5 & 5::Quote("Sorry, no autographs.", "", "C:\Bully Maguire SFX\Games\Spiderman\Sorry no autographs.wav")
; --------------- FINISHING TEAMERS ---------------
~6 & F13::Quote("You guys don't know who you're dealing with{!}", "", "")
~6 & F14::
    if (nonfirstquote != true) {
	   QuoteChain("Next time you ambush someone,", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Next time you ambush someone.wav")
    }
	else if (a = "Next time you ambush someone,") {
	   Quote("check if they're a superhero first.", "", "")
    }
	else {
	   Interrupted()
	}
    return
~6 & F15::Quote("Keep practicing guys.", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Keep practicing guys.wav")
; DUMB PLAN
~6 & F16::Quote("Which of you geniuses came up with this plan?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Which of you geniuses came up with this plan.wav")
~6 & F17::Quote("One of these losers is gonna give me some answers.", "", "C:\Bully Maguire SFX\Games\Spiderman\One of these losers is gonna give me some answers.wav")
~6 & F18::Quote("Was this trap for me or you?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Was this trap for me or you.wav")
; STOP TEAMING
~6 & F19::Quote("You guys are such a nuisance{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You guys are such a nuisance.wav")
~6 & F20::Quote("Why do you guys always think you can take me out?", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Why do you guys always think you can take me out.wav")
~6 & F21::Quote("Next time, stand in line like everyone else.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Next time stand in line like everyone else.wav")
; TEAMERS LOST
~6 & F22::Quote("No more? Thank goodness{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\No more Thank goodness.wav")
~6 & F23::Quote("Phew, that's the last of em.", "", "C:\Bully Maguire SFX\Games\Spiderman\Phew That's the last of them.wav")
~6 & F24::Quote("That's the last of the goons.", "", "C:\Bully Maguire SFX\Games\Spiderman\That's the last of the goons.wav")
; --------------- Finally ---------------
~space & F13::Quote("Finally{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Finally.wav")
~space & F14::Quote("There we go.", "", "")
~space & F15::Quote("That was tough{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\That was tough.wav")
; Sike
~space & F16::Quote("Phew, that was close", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Phew that was close.wav")
~space & F17::Quote("", "", "")
~space & F18::Quote("You just lost the spidey lottery{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You just lost the spidey lottery.wav")
; Dodged
~space & F19::Quote("That would’ve left a mark{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 3\That would've left a mark.wav")
~space & F20::Quote("", "", "")
~space & F21::Quote("", "", "")
; ???
~space & F22::Quote("", "", "")
~space & F23::Quote("", "", "")
~space & F24::Quote("", "", "")
; --------------- HAPPY ---------------
~F13 & space::Quote("This is incredible!", "", "")
~F14 & space::Quote("", "", "")
~F15 & space::Quote("", "", "")
; YOU'RE FUN
~F16 & space::Quote("We should do this again sometimes", "", "C:\Bully Maguire SFX\Games\Spiderman\We should do this again sometime.wav")
~F17 & space::Quote("You’re a wacky funster thats for sure", "", "C:\Bully Maguire SFX\Games\Spiderman\You're a wacky funster that's for sure.wav")
~F18 & space::Quote("He sure knows how to clown around{!}", "", "")
; THAT WAS FUN
~F19 & space::Quote("I've never enjoyed myself as much", "", "C:\Bully Maguire SFX\Pre-Spiderman\The Cider House Rules\I've never enjoyed myself as much.wav")
~F20 & space::Quote("I feel great{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 3\I feel great.wav")
~F21 & space::Quote("I had a good day", "", "")
; BULLSEYE
~F22 & space::Quote("Bam{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Bam.wav")
~F23 & space::Quote("Pizza time{!}", "", "C:\Bully Maguire SFX\Movies\Spiderman 2\Pizza time.wav")
~F24 & space::Quote("Shazam{!}", "", "C:\Bully Maguire SFX\Movies\Spiderman\Shazam.wav")
; LAUGHING
~F1 & space::Quote("*Wheezing*", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Wheezing.wav")
~F3 & space::Quote("PFFFFTTTT", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Pfft.wav")
~F4 & space::Quote("*Crazed Laugh*", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\Babylon\Crazed Laugh.wav")
~F5 & space::Quote("*Laughs SUPER loudly*", "", "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\Laughs SUPER loudly.wav")
~F6 & space::Quote("That's funny", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby\That's funny.wav")

; --------------- UNAMUSED ---------------
~z & F13::Quote("Are you serious?", "", "")
~z & F14::Quote("You're joking right?", "", "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\You're joking right.wav")
~z & F15::Quote("Is this guy for real?", "", "")
; OH GREAT
~z & F16::Quote("Oh great.", "", "")
~z & F17::Quote("Oh, for crying out loud.", "", "")
~z & F18::Quote("Just my luck", "", "C:\Bully Maguire SFX\Games\Spiderman\Just my luck.wav")
; GIVE ME A BREAK
~z & F19::Quote("Give me a break.", "", "C:\Bully Maguire SFX\Games\Spiderman\Give me a break.wav")
~z & F20::Quote("I just never get a break.", "", "C:\Bully Maguire SFX\Games\Spiderman\I just never get a break.wav")
~z & F21::Quote("", "", "")
; ???
~z & F22::Quote("", "", "")
~z & F23::Quote("", "", "")
~z & F24::Quote("", "", "")
;Adorable
~z & F1::Quote("That’s a cute outfit, your dad give it to you?", "", "")
~z & F2::Quote("Aww, look at spiderman jr.", "", "")
~z & F3::Quote("Someone’s ripping me off{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Someone's ripping me off.wav")
~z & F4::Quote("Someone's obviously dressing up as me for publicity ", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Someone's obviously dressing up as me for publicity.wav")
~z & F5::Quote("I don’t take kindly to people impersonating me", "", "")
~z & F6::Quote("I can’t afford to let this jerk keep running around, pretending to be me.", "", "C:\Bully Maguire SFX\Games\Spiderman 3\I can't afford to let this jerk keep running around pretending to be me.wav")
; --------------- WHAT? ---------------
~F13 & z::Quote("WHAT THE HELL", "", "")
~F14 & z::Quote("What… the {#}{#}{#}{#}", "", "")
~F15 & z::Quote("", "", "")
; WHO
~F16 & z::Quote("Who the heck", "", "")
~F17 & z::Quote("You scared the #### outta me", "", "")
~F18 & z::Quote("", "", "")
; WHY?
~F19 & z::Quote("What are you doing?", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby\What are you doing.wav")
~F20 & z::Quote("How is this helping?{!}??{!}", "", "")
~F21 & z::Quote("Why in the world did you just do that?", "", "")
; HOW
~F22 & z::Quote("How’d that get in there...?", "", "")
~F23 & z::
    if (nonfirstquote != true) {
	   QuoteChain("I don’t know how you’re doing that but,", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I don't know how you're doing that but.wav")
    }
	else if (a = "I don’t know how you’re doing that but,") {
	   Quote("KNOCK IT OFF", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Knock it off.wav")
    }
	else {
	   Interrupted()
    }
	return
~F24 & z::Quote("", "", "")
; RIDICULOUS
~F1 & z::Quote("This is dumb", "", "C:\Bully Maguire SFX\Games\Spiderman 3\This is dumb.wav")
~F2 & z::Quote("This is ridiculous", "", "C:\Bully Maguire SFX\Games\Spiderman 3\This is ridiculous.wav")
~F3 & z::Quote("Weird.", "", "")
~F4 & z::Quote("That's ridiculous.", "", "")
; --------------- TOXIC ---------------
~x & F13::Quote("Boy, are you ugly{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Boy are you ugly.wav")
~x & F14::Quote("You're an eye-sore.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You're an eye sore.wav")
~x & F15::Quote("When I look at you, it hurts.", "", "")
; TOO EASY 
~x & F16::Quote("You're trash, kid", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\You're trash.wav")
~x & F17::Quote("How embarrassing", "", "C:\Bully Maguire SFX\Games\Spiderman\How embarrassing.wav")
~x & F18::Quote("Should’ve known that was too easy... 😔", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Should've known that was too easy.wav")
; STUPID
~x & F19::Quote("You dumb ox", "", "")
~x & F20::
    if (nonfirstquote != true) {
	   QuoteChain("Poor stupid idiot.", "", "")
    }
	else if (a = "Poor stupid idiot.") {
	   Quote("You don't know anything don't you?", "", "")
    }
	else {
	   Interrupted()
    }
	return
~x & F21::Quote("", "", "")
; ???
~x & F22::Quote("", "", "")
~x & F23::Quote("", "", "")
~x & F24::Quote("", "", "")
; EXTRA TOXIC
~x & F1::
    if (nonfirstquote != true) {
	   QuoteChain("You never met your father.", "", "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\Don's Plum\You've never met your father.wav")
    }
	else if (a = "You never met your father.") {
	   Quote("I have", "", "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\Don's Plum\I have.wav")
    }
	else {
	   Interrupted()
    }
	return
~x & F2::Quote("Dumb... AND ugly{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Dumb and ugly.wav")
; --------------- ARE YOU CRAZY ---------------
~F13 & x::Quote("Maybe, you're crazy.", "", "")
~F14 & x::Quote("Have you been in the crazy juice again?", "", "C:\Bully Maguire SFX\Games\Spiderman\Have you been in the crazy juice again.wav")
~F15 & x::Quote("Your education must've been special", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Your education must've been special.wav")
; YOU'RE CRAZY
~F16 & x::Quote("Boy, squirrels must love you… cuz you’re nuts{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Boy squirrels must love you cuz your nuts.wav")
~F17 & x::Quote("You're the kinda crazy, other crazy people look to for inspiration.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You're the kind of crazy other crazy people look to for inspiration.wav")
~F18 & x::Quote("Is there a history of mental illness in your family?", "", "C:\Bully Maguire SFX\Games\Spiderman\Is there a history of mental illness in your family.wav")
; GET HELP
~F19 & x::Quote("Off your medication apparently", "", "C:\Bully Maguire SFX\Games\Spiderman\Off your medication apparently.wav")
~F20 & x::Quote("You need help", "", "You need help.wav")
~F21 & x::Quote("####### DERANGED MORON{!}", "", "")
; CREEPY
~F22 & x::Quote("Okay creepy, I get message", "", "C:\Bully Maguire SFX\Games\Spiderman\Okay creepy I get the message.wav")
~F23 & x::Quote("Big words creep ", "", "C:\Bully Maguire SFX\Games\Spiderman\Big words creep.wav")
~F24 & x::Quote("", "", "")
; WEIRDO
~F1 & x::Quote("You’re seriously freaking me out", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You're seriously freaking me out.wavr")
~F2 & x::
    if (nonfirstquote != true) {
	   QuoteChain("Huagh, you're weirding me out", "", "C:\Bully Maguire SFX\Games\Spiderman\Huagh you're weirding me out.wav")
    }
	else if (a = "Huagh, you're weirding me out") {
	   Quote("I’ll make a note of that{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\I'll make a note of that.wav")
    }
	else {
	   Interrupted()
    }
	return
~F4 & x::Quote("Ima have to get a restraining order{!}", "", "")

; --------------- Crying? ---------------
~c & F13::
    if (nonfirstquote != true) {
	   QuoteChain("Aww.....", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Awww.wav")
    }
	else if (a = "Aww.....") {
	   QuoteChain("Look at little ^v jr.", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Look at little goblin jr.wav")
    }
	else if (a = "Look at little ^v jr." or a = "What’s the matter?") {
	   Quote("Gonna cry?", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Gonna cry.wav")
    }
	else {
	   Interrupted()
    }
	return
~c & F14::Quote("Aw don’t cry", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Aw don't cry.wav")
~c & F15::Quote("Ohoho, someone needs a hug", "laugh", "C:\Bully Maguire SFX\Games\Spiderman\Ohoho someone needs a hug.wav")
; MAD?
~c & F16::
    if (nonfirstquote != true) {
	   QuoteChain("Whoaho{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Whoaho.wav")
    }
	else if (a = "Whoaho{!}") {
	   QuoteChain("Sounds like I hit a nerve", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Sounds like I hit a nerve.wav")
    }
	else {
	   Interrupted()
    }
	return
~c & F17::
    if (nonfirstquote != true) {
	   QuoteChain("What an attitude{!}", "", "")
    }
	else if (a = "What an attitude{!}") {
	   Quote("You just eat a whole box of bran?{!}", "", "")
    }
	else {
	   Interrupted()
    }
	return
~c & F18::
	if (nonfirstquote != true) {
	   QuoteChain("You’re a sore Loser,", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You're a sore loser.wav")
    }
	else if (a = "You’re a sore Loser,") {
	   Quote("and that’s Loser with a CAPITAL L.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\And that's loser with a capital L.wav")
    }
	else {
	   Interrupted()
    }
	return
; BAD BOY
~c & F19::Quote("What a crybaby", "", "C:\Bully Maguire SFX\Games\Spiderman\What a crybaby.wav")
~c & F20::Quote("Even… FOUR year olds know better than this{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Even FOUR year olds know better than this.wav")
~c & F21::Quote("I think you need a time out.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I think you need a timeout.wav")
; SAD BACKSTORY
~c & F22::
    if (nonfirstquote != true) {
	   QuoteChain("You know,", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You know.wav")
    }
	else if (a = "You know,") {
	   QuoteChain("if the cool kids beat you up in school,", "", "C:\Bully Maguire SFX\Games\Spiderman 2\If the cool kids beat you up in school.wav")
    }
	else if (a = "if the cool kids beat you up in school,") {
	   Quote("you’re really taking it out on the wrong guy.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You're really taking it out on the wrong guy.wav")
    }
	else {
	   Interrupted()
    }
	return
~c & F23::Quote("Your parents never hugged you, did they?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Your parents never hugged you did they.wav")
~c & F24::Quote("I guess you had a pretty dysfunctional home life huh?", "", "")
; --------------- RUDENESS ---------------
~F13 & c::Quote("That was just plain rude{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\That was just plain rude.wav")
~F14 & c:: Quote("There's no call for rudeness baldy", "", "C:\Bully Maguire SFX\Games\Spiderman\There's no call for rudeness baldy.wav")
~F15 & c::
    if (nonfirstquote != true) {
	   QuoteChain("I know I made some enemies,", "", "C:\Bully Maguire SFX\Games\Spiderman\I know I made some enemies.wav")
    }
	else if (a = "I know I made some enemies,") {
	   Quote("but this is a bit much", "", "C:\Bully Maguire SFX\Games\Spiderman\but this is a bit much.wav")
    }
	else {
	   Interrupted()
    }
	return
; HEARD IT
~F16 & c::Quote("Oh, like I haven't heard that before", "", "C:\Bully Maguire SFX\Games\Spiderman\Oh like I haven't heard that before.wav")
~F17 & c::Quote("If I had a nickel for every time i’ve heard that…", "", "C:\Bully Maguire SFX\Games\Spiderman 2\If I had a nickel for every time I've heard that.wav") 
~F18 & c::
    if (nonfirstquote != true) {
	   QuoteChain("Uhuh.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Uhuh.wav")
    }
	else if (a = "Uhuh.") {
	   Quote("Heard it before…", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Heard it before.wav") 
    }
	else if (a = "Heard it before…") {
	   Quote("About a million times", "", "C:\Bully Maguire SFX\Games\Spiderman 2\About a million times.wav") 
    }
	else {
	   Interrupted()
    }
	return
; LAME INSULTS
~F19 & c::Quote("Ohhhh Yawn.", "", "")
~F20 & c::Quote("Uhh, clever wordplay definitely isn't your strength", "", "C:\Bully Maguire SFX\Games\Spiderman\Uhh clever wordplay definitely isn't your strength.wav")
~F21 & c::
    Quote("Oh, and I thought my jokes were bad", "", "")
; NO RIGHTS
~F22 & c::Quote("Easy to say that behind a locked door coward{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Easy to say that behind a locked door coward.wav")
~F23 & c::Quote("Oh please, you’re a sad little man, kid", "", "")
~F24 & c::Quote("Potty mouth’s getting a spanking{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Potty mouth's getting a spanking.wav")
; INSULT REACTIONS
~F1 & c::Quote("Ohhhh, Clever", "", "C:\Bully Maguire SFX\Games\Spiderman\Ohhh Clever.wav")
~F3 & c::Quote("Clever, I have to write that down{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Clever let me write that down.wav")
~F4 & c::Quote("Awwwwww don't get your diapers in a bunch", "", "")
~F5 & c::Quote("It always crack me up when people say that.", "", "C:\Bully Maguire SFX\Games\Spiderman\It always crack me up when people say that.wav")
~F6 & c::Quote("Speak for yourself", "", "C:\Bully Maguire SFX\Games\Spiderman\Speak for yourself.wav")
~F7 & c::Quote("Right back at you.", "", "")
~F8 & c::
	if (nonfirstquote != true) {
	   QuoteChain("I have a father,", "", "")
    }
	else if (a = "I have a father,") {
	   Quote("his name is Ben Parker", "", "") 
    }
	else {
	   Interrupted()
    }
	return
; --------------- IDC ---------------
~v & F13::Quote("I missed the part where that’s my problem", "", "C:\Bully Maguire SFX\Movies\Spiderman\I missed the part where that's my problem.wav")
~v & F14::Quote("I don't think I'd care too", "", "")
~v & F15::Quote("", "", "")
; NOT SORRY
~v & F16::Quote("Sorry, my sympathy meter is totally out.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Sorry my sympathy meter is totally out.wav")
~v & F17::Quote("I'm a jerk so...", "", "")
~v & F18::Quote("It's just how my brain works, I guess.", "", "")
; DEAL WITH IT
~v & F19::Quote("Too late.", "", "C:\Bully Maguire SFX\Games\Spiderman\Too late.wav")
~v & F20::Quote("Should’ve thought of that earlier", "", "")
~v & F21::Quote("", "", "")
; WHATEVER
~v & F22::Quote("Okay", "", "")
~v & F23::Quote("Whatever", "", "")
~v & F24::Quote("", "", "")
; --------------- SHUT UP ---------------
~F13 & v::Quote("Would you be quiet?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Would you be quiet.wav")
~F14 & v::Quote("Will you please shut up?", "", "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\Great Scott\Will you please shut up.wav")
~F15 & v::
	if (nonfirstquote != true) {
	   QuoteChain("Why don’t you just shut up.", "", "")
    }
	else if (a = "Why don’t you just shut up.") {
	   QuoteChain("WHY DON’T YOU JUST SHUT THE HELL UP MAN", "", "") 
    }
	else if (a = "WHY DON’T YOU JUST SHUT THE HELL UP MAN") {
	   QuoteChain("JUST SHUT THE HELL UP", "", "") 
    }
	else {
	   Interrupted()
    }
	return
; YOU SHUT UP
~F16 & v::Quote("YOU KEEP YOUR ####### VOICE DOWN{!}", "", "")
~F17 & v::Quote("YOU SHUT UP{!}", "", "")
~F18 & v::Quote("", "", "")
; IGNORING
~F19 & v::Quote("Are you still talking?", "", "")
~F20 & v::Quote("I didn’t catch all that", "", "C:\Bully Maguire SFX\Games\Spiderman 3\I didn't catch all that.wav")
~F21 & v::Quote("Laaaalalaaa I can't hear you", "", "")
; YAPPING
~F22 & v::Quote("Blah Blah Blah", "", "C:\Bully Maguire SFX\Games\Spiderman\Blah blah blah.wav")
~F23 & v::Quote("What a big chatterbox", "", "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\Great Scott\What a big chatterbox.wav")
~F24 & v::Quote("STOP LECTURING ME PLEASE", "", "")
; BOOMERS
~v & F1::Quote("Okay you're old and bitter I get it already{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Okay you're old and bitter I get it already.wav")
~v & F2::Quote("Careful, you'll get bugs in your dentures", "", "C:\Bully Maguire SFX\Games\Spiderman\Careful you'll get bugs in your dentures.wav")
~v & F3::Quote("Wow, you flap your gums as much as your arms!", "", "C:\Bully Maguire SFX\Games\Spiderman\Wow you flap your gums as much as your arms.wav")
~v & F4::Quote("EHHHH?? What's that Sonny?", "", "C:\Bully Maguire SFX\Games\Spiderman\EHHH What's that sonny.wav")

; --------------- YEAH ---------------
~y & F13::Quote("Yeah", "", "")
~y & F14::Quote("Of course I am", "", "")
~y & F15::Quote("", "", "")
; AGREE
~y & F16::Quote("Right", "", "")
~y & F17::Quote("I know", "", "")
~y & F18::Quote("Well that's true", "", "")
; OF COURSE
~y & F19::Quote("Why am I not surprised", "", "")
~y & F20::Quote("", "", "")
~y & F21::Quote("", "", "")
; ???
~y & F22::Quote("", "", "")
~y & F23::Quote("", "", "")
~y & F24::Quote("", "", "")
; NEVERMIND
~y & F1::Quote("Nevermind", "", "")
~y & F2::Quote("", "", "")
~y & F3::Quote("", "", "")
; --------------- NO ---------------
~F13 & y::
    if (nonfirstquote != true) {
	   QuoteChain("Umm....", "", "C:\Bully Maguire SFX\Games\Spiderman\Umm.wav")
    }
	else if (a = "Umm....") {
	   Quote("No?", "", "C:\Bully Maguire SFX\Games\Spiderman\No.wav")
    }
	else {
	   Interrupted()
    }
	return
~F14 & y::Quote("No, Not Really", "", "")
~F15 & y::Quote("Hell no", "", "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\Hell no.wav")
; YOU'RE WRONG
~F16 & y::Quote("That's just wrong", "", "C:\Bully Maguire SFX\Games\Spiderman 2\That's just wrong.wav")
~F17 & y::Quote("Statistically impossible", "", "")
~F18 & y::Quote("Yeah in your dreams maybe", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Yeah in your dreams maybe.wav")
; DENYING
~F19 & y::Quote("Wanna bet?", "", "")
~F20 & y::Quote("I’d like to vote against that", "", "")
~F21 & y::Quote("Are you lying again now?", "", "")
; WHAT ARE YOU TALKING ABOUT
~F22 & y::Quote("What do you mean?", "", "")
~F23 & y::Quote("What are you talking about?", "", "C:\Bully Maguire SFX\Post-Spiderman\Pawn Sacrifice\What are you talking about.wav")
~F24 & y::Quote("", "", "")
; NO THANKS
~F1 & y::Quote("No Thanks, You?", "", "")
~F3 & y::Quote("Oh no, my nerves are fine, thanks", "", "")

; --------------- TEAMING --------------
~t & F13::Quote("Heyy{!}{!} More losers who think they can handle me{!}", "", "")
~t & F14::Quote("Looks like you got the local goon squad fighting for you", "", "")
~t & F15::Quote("Guess i'll have to fight these goons{!}", "", "")
; ???
~t & F16::Quote("", "", "")
~t & F17::Quote("", "", "")
~t & F18::Quote("", "", "")
; RETREAT FROM TEAMERS
~t & F19::Quote("I have to get away from these things", "", "")
~t & F20::Quote("I better find some cover before they land a lucky shot and things turn ugly!", "", "")
~t & F21::Quote("If I can't get rid of these nuisances i'll never get outta here{!}", "", "")
; REQUEST BACKUP
~t & F22::Quote("I can't fight them both alone, not by myself.", "", "")
~t & F23::Quote("I could use some help over here", "", "")
~t & F24::Quote("I need your help", "", "")
; TEAM SHAMING
~t & F1::Quote("What a bunch of losers", "", "")
~t & F2::Quote("You guys are such a nuisance{!}", "", "")
~t & F3::Quote("You guys must be the dancing FOOLS I heard about", "", "C:\Bully Maguire SFX\Games\Spiderman 2\You guys must be the dancing fools I heard about.wav")
~t & F4::Quote("Great, I'm guessing they were belligerent and showing poor judgment BEFORE they walked in.", "", "")

; --------------- SOLO PLEASE ---------------
~F13 & t::Quote("I’m fine", "", "")
~F14 & t::Quote("I don't need your help.", "", "")
~F15 & t::
    if (nonfirstquote != true) {
	   QuoteChain("Hey Kiddo,", "", "")
    }
	else if (a = "Hey Kiddo,") {
	   Quote("Let mom and dad talk for a minute, will ya?", "", "")
    }
	else {
	   Interrupted()
    }
	return
; DON'T TAKE MY FOOD
~F16 & t::Quote("There’s always someone trying to take what’s yours", "", "")
~F17 & t::
    if (nonfirstquote != true) {
	   QuoteChain("Why dont you mind your own business?", "", "")
    }
	else if (a = "Why dont you mind your own business?") {
	   Quote("You decripete piece of ####", "", "")
    }
	else {
	   Interrupted()
    }
	return
~F18 & t::Quote("Don't tell me how to do my business", "", "")
; GET OUT THE WAY
~F19 & t::Quote("Outta my way{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\Outta my way.wav")
~F20 & t::Quote("I want you to get the {#}{#}{#}{#} outta here.", "", "C:\Bully Maguire SFX\Pre-Spiderman\Joyride\I want you to get the fuck outta here.wav")
~F21 & t::
    if (nonfirstquote != true) {
	   QuoteChain("HEY{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby\HEY.wav")
    }
	else if (a = "HEY{!}") {
	   QuoteChain("GET OUTTA HERE{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby\GET OUTTA HERE.wav")
    }
	else if (a = "GET OUTTA HERE{!}") {
	   QuoteChain("GO ON{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby\GO ON.wav")
    }
	else if (a = "GO ON{!}") {
	   Quote("GET THE HELL OUTTA HERE{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Misc Post-Spiderman\The Great Gatsby\GET THE HELL OUTTA HERE.wav")
    }
	else {
	   Interrupted()
    }
	return
; WE'RE NOT ALLIES
~F22 & t::Quote("I was never working with you", "", "")
~F23 & t::Quote("There's no way I'm working with you", "", "C:\Bully Maguire SFX\Games\Spiderman\There's no way I'm working with you.wav")
~F24 & t::Quote("", "", "")
; ATTENTION
~F1 & t::Quote("You want my attention?", "", "C:\Bully Maguire SFX\Games\Spiderman 3\You want my attention.wav")
~F3 & t::Quote("You’re dumber than I thought", "", "C:\Bully Maguire SFX\Games\Spiderman 3\You're dumber than I thought.wav")
~F4 & t::Quote("You really need to talk about your methods for getting my attention", "", "")

; --------------- BACK UP  ---------------
~s & F13::
    if (nonfirstquote != true) {
	   QuoteChain("STAY BACK{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Brothers\Stay back 1.wav")
    }
	else if (a = "Stay back{!}") {
	   Quote("STAY BAACKK{!}{!}{!}{!}{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\Brothers\Stay back 2.wav")
    }
	else {
	   Interrupted()
    }
	return
    
~s & F14::Quote("Back off, Ugly{!}", "", "")
~s & F15::Quote("", "", "")
; STOP IT
~s & F16::Quote("Cut it out{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Cut it out.wav")
~s & F17::Quote("Take your hand off of me", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Take your hand off of me.wav")
~s & F18::
    if (nonfirstquote != true) {
	   QuoteChain("I don't wanna hurt you,", "", "")
    }
	else if (a = "I don't wanna hurt you,") {
	   Quote("but that doesn't seem to be a problem.", "", "")
    }
	else {
	   Interrupted()
    }
	return
; WAIT!
~s & F19::Quote("Wait a sec.", "", "")
~s & F20::Quote("Save it, Ugly", "", "C:\Bully Maguire SFX\Games\Spiderman\Save it ugly.wav")
~s & F21::Quote("Can we reschedule this fight?", "", "")
; TRUCE
~s & F22::Quote("We can find a way to settle this", "", "")
~s & F23::Quote("Can’t we all just get along?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Can't we all just get along.wav")
~s & F24::Quote("I dont wanna fight you flash.", "", "")

; --------------- RETREATING ---------------
~F13 & s::Quote("My, what a scary fellow he is.", "", "")
~F14 & s::Quote("I gotta lose em", "", "C:\Bully Maguire SFX\Games\Spiderman\I gotta lose em.wav")
~F15 & s::Quote("I seriously needa get outta here{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\I seriously needa get outta here.wav")
; I GIVE UP
~F16 & s::Quote("I quit{!}", "", "")
~F17 & s::Quote("", "", "")
~F18 & s::Quote("", "", "")
; ???
~F19 & s::Quote("", "", "")
~F20 & s::Quote("", "", "")
~F21 & s::Quote("", "", "")
; HIDING
~F22 & s::Quote("I know there's a hiding spot somewhere around here", "", "")
~F23 & s::Quote("There’s gotta be somewhere there I can hide{!}", "", "C:\Bully Maguire SFX\Games\Spiderman\I know there's a hiding spot somewhere around here.wav")
~F24 & s::Quote("Huh, this place looks like it might be a hideout.", "", "C:\Bully Maguire SFX\Games\Spiderman\It's gotta be somewhere there I can hide.wav")
; BRAVERY
~F1 & s::Quote("I can’t just run away", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I can't just run away.wav")
~F2 & s::
    if (nonfirstquote != true) {
	   QuoteChain("What am I thinking?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\What am I thinking.wav")
    }
	else if (a = "What am I thinking?") {
	   Quote("I can’t just leave", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I can't just leave.wav")
    }
	else {
	   Interrupted()
    }
	return
~F3 & s::Quote("Ok gotta get back in there", "", "")

; --------------- ADMIRING IN-BATTLE ---------------
~a & F13::Quote("Not Too Bad", "", "")
~a & F14::Quote("I'm impressed", "", "")
~a & F15::Quote("OK! That was pretty impressive for a guy with no super powers", "", "")
; THAT'S BETTER
~a & F16::Quote("That’s better", "", "")
~a & F17::Quote("Someone's been busy", "", "")
~a & F18::Quote("Been eating your veggies I see?", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Been eating your veggies I see.wav")
; GOOD, BUT
~a & F19::
    if (nonfirstquote != true) {
	   QuoteChain("Good hustle,", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Good hustle.wav")
    }
	else if (a = "Good hustle,") {
	   Quote("but you lose points for stupidity.", "", "C:\Bully Maguire SFX\Games\Spiderman 2\But you lose points for stupidity.wav")
    }
	else {
	   Interrupted()
    }
	return
~a & F20::
    if (nonfirstquote != true) {
	   QuoteChain("Ohoho, nice trick{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Ohoho nice trick.wav")
    }
	else if (a = "Ohoho, nice trick{!}") {
	   Quote("I’m still gonna kick your teeth in though", "", "C:\Bully Maguire SFX\Games\Spiderman 3\I'm still gonna kick your teeth in though.wav")
    }
	else {
	   Interrupted()
    }
	return
~a & F21::
	if (nonfirstquote != true) {
	   QuoteChain("You guys get points for enthusiasm,", "", "")
    }
	else if (a = "You guys get points for enthusiasm,") {
	   Quote("but low marks for brains", "", "")
    }
	else {
	   Interrupted()
    }
	return
; --------------- ADMIRING ---------------
~F13 & a::Quote("You are amazing", "", "")
~F14 & a::
	if (nonfirstquote != true) {
	   QuoteChain("It's just the self talk. Maybe we should...", "", "C:\Bully Maguire SFX\Post-Spiderman\No Way Home\It's just the self talk maybe we should.wav")
    }
	else if (a = "It's just the self talk. Maybe we should...") {
	   QuoteChain("you know, cuz you’re...", "", "C:\Bully Maguire SFX\Post-Spiderman\No Way Home\You know cuz you're.wav")
    }
	else if (a = "you know, cuz you’re...") {
	   QuoteChain("You're amazing.", "", "C:\Bully Maguire SFX\Post-Spiderman\No Way Home\You're amazing.wav")
    }
	else if (a = "You're amazing.") {
	   QuoteChain("Just to take it in for a minute.", "", "C:\Bully Maguire SFX\Post-Spiderman\No Way Home\Just to take it in for a minute.wav")
    }
	else if (a = "Just to take it in for a minute.") {
	   QuoteChain("You... You are amazing.", "", "C:\Bully Maguire SFX\Post-Spiderman\No Way Home\You You are amazing.wav")
    }
	else if (a = "You... You are amazing.") {
	   QuoteChain("You are amazing{!}", "", "C:\Bully Maguire SFX\Post-Spiderman\No Way Home\You are amazing.wav")
    }
	else if (a = "You are amazing{!}") {
	   Quote("Will you say it?", "", "C:\Bully Maguire SFX\Post-Spiderman\No Way Home\Will you say it.wav")
    }
	else {
	   Interrupted()
    }
	return
~F15 & a::Quote("", "", "")
; COMPLIMENTS
~F16 & a::Quote("You look beautiful", "", "")
~F17 & a::Quote("", "", "")
~F18 & a::Quote("", "", "")
; HE'S GREAT
~F19 & a::Quote("I like this fellow{!}", "", "")
~F20 & a::Quote("Incredible, isn't he? You either are a star or you aren't. And he is{!}", "", "")
~F21 & a::Quote("", "", "")
; THANKS
~F22 & a::Quote("Thanks, hot legs", "", "")
~F23 & a::Quote("Nice to have a fan", "", "")
~F24 & a::Quote("YOU the man{!}", "", "")
; --------------- SHOCKED ---------------
~Capslock & F13::Quote("Holy{!}", "", "")
~Capslock & F14::Quote("Wow{!}", "", "")
~Capslock & F15::Quote("Whoa{!}", "", "")
; SURPRISED
~Capslock & F16::Quote("What a surprise{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 3\What a surprise.wav")
~Capslock & F17::Quote("A surprise? You shouldn't have{!}", "", "")
~Capslock & F18::Quote("", "", "")
; REACTION
~Capslock & F19::Quote("This is something else{!}", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\This is something else.wav")
~Capslock & F20::Quote("You don’t see that everyday", "", "C:\Bully Maguire SFX\Games\Spiderman 3\You don't see that everyday.wav")
~Capslock & F21::Quote("I never thought he’d really do that{!}", "", "")
; WHAT YOU SAY
~Capslock & F22::Quote("I can't believe you just said that{!}", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Can't believe I got washed.wav")
~Capslock & F23::Quote("", "", "")
~Capslock & F24::Quote("", "", "")
; CAN'T BE REAL
~Capslock & F1::Quote("Is that happening?", "", "")
~Capslock & F2::Quote("This is impossible!", "", "")
; --------------- FRIENDSHIPS ---------------
~F13 & CapsLock::Quote("Best friend.", "", "C:\Bully Maguire SFX\Movies\Spiderman 3\Best friend.wav")
~F14 & CapsLock::Quote("", "", "")
~F15 & CapsLock::Quote("", "", "")
; ILY
~F16 & CapsLock::Quote("I’d love to shoot you some time", "", "")
~F17 & CapsLock::Quote("I'm in love", "", "")
~F18 & CapsLock::Quote("I love you", "", "")
; ILYSM
~F19 & CapsLock::Quote("I love you so much I always have", "", "")
~F20 & CapsLock::Quote("You know how much I love you?", "", "")
~F21 & CapsLock::Quote("Why would i want to push you away", "", "")
; YOU CAN DO THIS
~F22 & CapsLock::Quote("Go get em tiger", "", "C:\Bully Maguire SFX\Pre-Spiderman\Misc Pre-Spiderman\Great Scott\Go get em tiger.wav")
~F23 & CapsLock::Quote("", "", "")
~F24 & CapsLock::Quote("", "", "")
; I FORGIVE YOU
~F1 & CapsLock::Quote("I forgive you", "", "")
~F2 & CapsLock::Quote("I've done terrible things too.", "", "")

; --------------- MISTAKES ---------------
~d & F13::
	if (nonfirstquote != true) {
	   QuoteChain("Oops.", "", "")
    }
	else if (a = "Oops .") {
	   Quote("Don’t need spider sense to tell me that wasn’t good", "", "")
    }
	else {
	   Interrupted()
    }
	return
~d & F14::Quote("This wasn’t what I had in mind", "", "C:\Bully Maguire SFX\Games\Spiderman 2\This wasn't what I had in mind.wav")
~d & F15::Quote("Ok{!} There's one for the blooper reel.", "", "")
; MY BAD
~d & F16::Quote("Sorry pal", "", "")
~d & F17::Quote("I'm sorry", "", "")
~d & F18::Quote("", "", "")
; SORRY
~d & F19::Quote("I'm really sorry for what happened earlier.}", "", "")
~d & F20::Quote("I never should have hurt you... said those things.", "", "")
~d & F21::Quote("", "", "")
; EXCUSES
~d & F22::Quote("He was trying to kill me{!}", "", "")
~d & F23::Quote("Well, I was trying to figure out what to say.", "", "")
~d & F24::Quote("", "", "")
; --------------- PITY ---------------
~F13 & d::Quote("I didn’t wanna do this", "", "")
~F14 & d::
    if (nonfirstquote != true) {
	   QuoteChain("I feel bad for him,", "", "")
    }
	else if (a = "I feel bad for him,") {
	   Quote("but I can’t help hoping i’ve seen the last of him", "", "")
    }
	else {
	   Interrupted()
    }
	return
~F15 & d::Quote("", "", "")
; You're mean to him
~F16 & d::Quote("Shame on you", "", "")
~F17 & d::Quote("That’s too mean", "", "")
~F18 & d::
    if (nonfirstquote != true) {
	   QuoteChain("Did you give him a chance?", "", "")
    }
	else if (a = "Did you give him a chance?") {
	   Quote("Did you?", "", "")
    }
	else {
	   Interrupted()
    }
	return
; THEY'LL KILL YOU
~F19 & d::Quote("They'll kill you", "", "")
~F20 & d::Quote("", "", "")
~F21 & d::Quote("", "", "")
;  ???
~F22 & d::Quote("", "", "")
~F23 & d::Quote("", "", "")
~F24 & d::Quote("", "", "")

; --------------- DEPENDS ---------------
~F13 & b::Quote("Watch it monkey boy, you’re drooling all over yourself", "", "")
~F14 & b::Quote("You want the pictures I’ll take the staff job. Double the money", "", "")
~F15 & b::Quote("", "", "")
; GAMEPASSES
~F16 & b::Quote("I’m gonna have to take away your credit card", "", "C:\Bully Maguire SFX\Games\Spiderman 2\I'm gonna have to take away your credit card.wav")
~F17 & b::Quote("Your credit’s no good here", "", "C:\Bully Maguire SFX\Games\Spiderman 2\Your credit's no good here.wav")
~F18 & b::Quote("", "", "")
; GUNS
~F19 & b::
    if (nonfirstquote != true) {
	   QuoteChain("Normally, I’m a forgive-and-forget kinda guy,", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Normally I'm a forgive and forget kinda guy but.wav")
    }
	else if (a = "Normally, I’m a forgive-and-forget kinda guy, but") {
	   Quote("not when they shot at me", "", "C:\Bully Maguire SFX\Games\Spiderman 3\Not when they've shot at me.wav")
    }
	else {
	   Interrupted()
    }
	return
~F20 & b::Quote("You think he'd stop shooting at me if he's so eager to fight me", "", "C:\Bully Maguire SFX\Games\Spiderman\You think he'd stop shooting at me if he's so eager to fight me.wav")
~F21 & b::
    if (nonfirstquote != true) {
	   QuoteChain("What are you gonna do?", "", "")
    }
	else if (a = "What are you gonna do?") {
	   QuoteChain("You gonna shoot me?", "", "")
    }
	else if (a = "You gonna shoot me?") {
	   QuoteChain("HUH?", "", "")
    }
	else if (a = "HUH?") {
	   QuoteChain("{#}{#}{#}{#}{#}{#}{#} SHOOT ME{!}", "", "")
    }
	else if (a = "{#}{#}{#}{#}{#}{#}{#} SHOOT ME{!}") {
	   QuoteChain("SHOOT MEEEE{!}{!}", "", "")
    }
	else if (a = "SHOOT MEEEE{!}{!}") {
	   QuoteChain("{#}{#}{#}{#}{#}{#}{#} COME ONNN", "", "")
    }
	else {
	   Interrupted()
    }
	return
; TRAPS
~F22 & b::Quote("Ah yes, the whole swinging log of doom trick. That one never gets old!", "", "")
~F23 & b::Quote("Eat train{!}", "", "")
~F24 & b::Quote("", "", "")
; --------------- SUSSY ---------------
~b & F13::Quote("Now that is a big trunk", "", "")
~b & F14::Quote("It's too big", "", "")
~b & F15::Quote("", "", "")
;; --------------- MEMES ---------------
~m & F13::Quote("You’ll get your RENT when you FIX THIS #### DOOR", "", "")
~m & F14::Quote("", "", "")
~m & F15::Quote("", "", "")
; Out of Context
~m & F16::Quote("I want to be a horse", "", "")
~m & F17::Quote("", "", "")
~m & F18::Quote("", "", "")
; ???
~m & F19::Quote("", "", "")
~m & F20::Quote("", "", "")
~m & F21::Quote("", "", "")
; ???
~m & F22::Quote("", "", "")
~m & F23::Quote("", "", "")
~m & F24::Quote("", "", "")