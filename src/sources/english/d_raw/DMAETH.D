// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAETH~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33587 /* ~This is one of two men shouting and waving their weapons at one another. It seems as if at any moment they'll leap at each other's throats...~ */
  IF ~~ THEN REPLY #33598 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #33599 /* ~Keep clear of them.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33588 /* ~The man, face reddened from the exertion of hurling curses at his foe, whirls to face you. "What do ye want?! Can't ye see I'm *busy,* ye sod!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33600 /* ~"Your lover wanted me to stop the two of you from fighting."~ */ GOTO 4
  IF ~~ THEN REPLY #33601 /* ~"I'm wondering why you two are fighting."~ */ GOTO 2
  IF ~~ THEN REPLY #33602 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33589 /* ~"None a' yer business, berk. Pike off!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33603 /* ~"Your lover wanted me to stop the two of you from fighting."~ */ GOTO 4
  IF ~~ THEN REPLY #33604 /* ~"Any way I can help resolve the dispute?"~ */ GOTO 3
  IF ~~ THEN REPLY #33605 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33590 /* ~"No, ye can't! This son-of-a-whore keeps stickin' his nose inta me life with Elyce, an' now he's gonna get it cut right off his ugly face! It's no concern a' yers, so stays outta it!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33606 /* ~"Your lover wanted me to stop the two of you from fighting."~ */ GOTO 4
  IF ~~ THEN REPLY #33607 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33591 /* ~The man suddenly becomes silent. "Elyce called fer ye, eh? I dunno who ye are, berk, but I don't see how ye' plans on stoppin' us!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33608 /* ~"By beating you both bloody, if I have to."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33609 /* ~"By beating you both bloody, if I have to."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33610 /* ~"By beating you both bloody, if I have to."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33611 /* ~"By beating you both bloody, if I have to."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33612 /* ~"Look, Elyce doesn't want to see either of you hurt... can't you take care of whatever the problem is without scaring the wits out of her?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33613 /* ~"Look, Elyce doesn't want to see either of you hurt... can't you take care of whatever the problem is without scaring the wits out of her?"~ */ GOTO 6
  IF ~~ THEN REPLY #33614 /* ~"Neither do I. Farewell."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33592 /* ~"What, are ye *barmy,* cutter? Look at yerself... ye may be good an' scarred, but ye don't worries me! Stop rattlin' yer bone-box an' *pike off!*"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33615 /* ~"Look, Elyce doesn't want to see either of you hurt... can't you take care of whatever the problem is without scaring the wits out of her?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33616 /* ~"Look, Elyce doesn't want to see either of you hurt... can't you take care of whatever the problem is without scaring the wits out of her?"~ */ GOTO 6
  IF ~~ THEN REPLY #33617 /* ~"Fine... farewell."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33593 /* ~"Can't ye mind yer own business?! Go stuff yer head in a dung-heap, berk!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33618 /* ~"Stop fighting, or I'll beat you both bloody."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33619 /* ~"Stop fighting, or I'll beat you both bloody."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33620 /* ~"Stop fighting, or I'll beat you both bloody."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33621 /* ~"Stop fighting, or I'll beat you both bloody."~ */ GOTO 5
  IF ~~ THEN REPLY #33622 /* ~"Fine... farewell."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33594 /* ~The man takes a moment to look you over. "Eh... well... I'm sure there's a better way fer me an' this sod ta work things out. That'd make Elyce happier, besides..."~ */
  IF ~~ THEN REPLY #33623 /* ~"Glad you see things that way. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33595 /* ~The man furrows his brow for a moment, then nods his head. "Ye're right, cutter... here I was fightin' ta give her the chance ta get out o' her brother's shadow, an' then I go an' ignore her pleadin' an' do things my way meself." He sighs. "Guess I'll work things out with this sod some other way..."~ */
  IF ~~ THEN REPLY #33624 /* ~"Glad you see things that way. Farewell."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33596 /* ~Elyce's lover nods at you and smiles. "Me thanks fer breakin' up that fight... ye're a decent enough cutter, ta be sure."~ */
  IF ~~ THEN REPLY #33597 /* ~"Thanks. Farewell."~ */ EXIT
END
