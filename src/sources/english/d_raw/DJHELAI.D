// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJHELAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJHELAI~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21487 /* ~You see a thin man with stained clothes, a hooked nose, and two stubby horns jutting from his forehead. He is stumbling about, and muttering to himself... he stinks of brine, vomit, and cheap wine.~ */
  IF ~~ THEN REPLY #21488 /* ~"Greetings."~ */ GOTO 1
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22653 /* ~"Are you Jhelai? If so, Craddock needs you back at the marketplace."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22654 /* ~Pass on by.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22655 /* ~"Eh?" The man squints blearily at you. "Wahizzit? Wot?"~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22656 /* ~"Are you Jhelai? If so, Craddock needs you back at the marketplace."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22657 /* ~"Never mind. Sorry to bother you."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #22658 /* ~"Crad-ok?" The man's eyes widen. "Ah, Craddock, me gen-rez bosss... well, ye ken tell 'im this: 'Ee can PIKE off... and that ee's a filthy dog, a cur of the lowest sort, and Jhelai's not a-working for 'im any-MORE!" He jabs you with his finger. "Tell 'im that!"~ */
  IF ~~ THEN REPLY #22659 /* ~"I'll tell him... from a distance. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #22660 /* ~"Uh... I'll tell him... farewell, Jhelai."~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalLT("Craddock_Quest","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #22661 /* ~You see Jhelai. He is still stumbling about, and muttering to himself... he stinks of brine, vomit and cheap wine.~ */
  IF ~~ THEN REPLY #22662 /* ~Leave him to his stupor.~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalGT("Craddock_Quest","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #22663 /* ~You see Jhelai. He looks like he's sobered up since you spoke to him last.~ */
  IF ~  GlobalGT("Lawful_Craddock_1","GLOBAL",0)
~ THEN REPLY #22664 /* ~"Jhelai... look. I'd watch out. Craddock's angry, and he threatened to kill you if he sees you again."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22672 /* ~I went back and warned Jhelai about Craddock; it was the least I could do. Jhelai looked sorry he'd ever said anything, but he thanked me for the warning, the poor sod.~ */ GOTO 5
  IF ~  GlobalGT("Chaotic_Craddock_1","GLOBAL",0)
~ THEN REPLY #22667 /* ~"Jhelai... look. I told Craddock that I was filling in for you... you still have your job, just watch yourself."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22673 /* ~I went back and told Jhelai that I filled in for him, and that he still had his job. He looked sorry he'd ever said anything, and he thanked me for saving his job.~ */ GOTO 6
  IF ~~ THEN REPLY #22668 /* ~Pass on by.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #22665 /* ~Jhelai grunts. "Wot a fool I was... I jest popped out fer a quick bite o' bub, an' the next moment..." He grinds his teeth. "Thank ye fer the warning..."~ */
  IF ~~ THEN REPLY #22666 /* ~"Just be careful. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #22646 /* ~Jhelai grunts. "Wot a fool I was... I jest popped out fer a quick bite o' bub, an' the next moment..." He grinds his teeth. "Thank ye fer the good word... I appreciate it, I do."~ */
  IF ~~ THEN REPLY #22670 /* ~"Just be careful next time. Farewell."~ */ EXIT
END
