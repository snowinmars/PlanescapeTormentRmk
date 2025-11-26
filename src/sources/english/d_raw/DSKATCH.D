// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKATCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKATCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50896 /* ~You see a Harmonium officer, dressed in his ceremonial armor. He seems to be in charge of the workforce of Harmonium slavers. He seems like an especially vicious and haughty member of the breed. "What do you want?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50897 /* ~"I'm here to get Tainted Barse's daughter back."~ */ GOTO 1
  IF ~~ THEN REPLY #50898 /* ~"What are you doing here?"~ */ GOTO 2
  IF ~~ THEN REPLY #50899 /* ~"Who are you?"~ */ GOTO 5
  IF ~~ THEN REPLY #50900 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50901 /* ~He smirks at you. "Are you now? What'll you do if I kill her?" He gestures to his men. "Kill her!" He draws his blade and attacks you!~ */
  IF ~~ THEN REPLY #50902 /* ~Fight.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #50903 /* ~"Why, my men and I are gathering recruits to teach them about right and wrong. As you can see, they're not always willing... but we'll make them see the light eventually." He eyes you. "You'll make a good recruit, I imagine."~ */
  IF ~~ THEN REPLY #50904 /* ~"I'm not interested."~ */ GOTO 3
  IF ~~ THEN REPLY #50905 /* ~"Tell me more."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #50906 /* ~"That's too bad." He gestures to his men. "Ignore the girl. Take him."~ */
  IF ~~ THEN REPLY #50907 /* ~Fight.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #50908 /* ~"Gladly. We'll take you to Arcadia and show you the truth." He gestures to his men. "Take him."~ */
  IF ~~ THEN REPLY #50909 /* ~Fight.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY #50910 /* ~"I'm Measure Two Skatch, of the Harmonium." He bows. "My men and I are here recruiting. Are you interested in learning more about the Harmonium's ways?"~ */
  IF ~~ THEN REPLY #50911 /* ~"No."~ */ GOTO 3
  IF ~~ THEN REPLY #50912 /* ~"Tell me more."~ */ GOTO 4
  IF ~~ THEN REPLY #50913 /* ~"It looks like slavery to me. Is there a chance you'd just let this go this time?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #50914 /* ~"You're not very smart, are you? No. There's no chance. There is our way, and there is the wrong way. Those who are wrong must be... punished." He points to you and calls to his men. "Take him!"~ */
  IF ~~ THEN REPLY #50915 /* ~Fight.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
