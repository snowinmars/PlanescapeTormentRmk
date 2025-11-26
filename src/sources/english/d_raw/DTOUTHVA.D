// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33670 /* ~This loud, grimy fellow saunters up to you and gives a quick bow. "Greetin's, cutter! Only a single copper fer me services as a tout! Wot can I leads ye ta?"~ */
  IF ~~ THEN REPLY #33678 /* ~"What's a tout?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33679 /* ~"Sure... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33680 /* ~"Nothing, right now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33671 /* ~This loud, grimy fellow is quick to notice he's got your attention. "Well met, cutter! Only a single copper fer me services as a tout! Wot can I leads ye ta?"~ */
  IF ~~ THEN REPLY #33681 /* ~"What's a tout?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33682 /* ~"Sure... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33683 /* ~"Nothing, right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33672 /* ~The man raises an eyebrow, then shrugs. "A guide, cutter... I points out what ye needs ta find 'round this part o' the Hive."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33684 /* ~"All right... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33685 /* ~"No directions right now, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33673 /* ~The man palms the coin and bows. "This part o' the Hive has gates leadin' east, north an' southwest; locations o' note include the Flophouse, where a weary blood can get some rest."~ */
  IF ~~ THEN REPLY #33686 /* ~"Where's the Flophouse?"~ */ GOTO 4
  IF ~~ THEN REPLY #33687 /* ~"Where's the north gate lead?"~ */ GOTO 5
  IF ~~ THEN REPLY #33688 /* ~"Where's the east gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33689 /* ~"Where's the southwest gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33690 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0
  SAY #33674 /* ~"Right in the middle o' this part o' the Hive, cutter... a long, narrow buildin' whose door faces southeast. Good place ta call kip fer a night if ye're feelin' beat."~ */
  IF ~~ THEN REPLY #33691 /* ~"Where's the north gate lead?"~ */ GOTO 5
  IF ~~ THEN REPLY #33692 /* ~"Where's the east gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33693 /* ~"Where's the southwest gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33694 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1
  SAY #33675 /* ~"It leads ta' Ragpicker's Square, cutter... where all the Collectors call kip."~ */
  IF ~~ THEN REPLY #33695 /* ~"Where's the Flophouse?"~ */ GOTO 4
  IF ~~ THEN REPLY #33696 /* ~"Where's the east gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33697 /* ~"Where's the southwest gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33698 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2
  SAY #33676 /* ~"To another part o' the Hive, cutter. The Mortuary's there, an' the Gatherin' Dust bar, too, where the Dustmen like ta drink. There's a mausoleum an' the big Dustman Memorial there, as well."~ */
  IF ~~ THEN REPLY #33699 /* ~"Where's the Flophouse?"~ */ GOTO 4
  IF ~~ THEN REPLY #33700 /* ~"Where's the north gate lead?"~ */ GOTO 5
  IF ~~ THEN REPLY #33701 /* ~"Where's the southwest gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33702 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2
  SAY #33677 /* ~"Just another part o' the Hive, cutter. The Office fer Vermin an' Disease Control is there, an' a large Market." ~ */
  IF ~~ THEN REPLY #33703 /* ~"Where's the Flophouse?"~ */ GOTO 4
  IF ~~ THEN REPLY #33704 /* ~"Where's the north gate lead?"~ */ GOTO 5
  IF ~~ THEN REPLY #33705 /* ~"Where's the east gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33706 /* ~"That's all I wished to know; farewell."~ */ EXIT
END
