// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33707 /* ~This smiling, middle-aged woman trots up to you and curtseys. "'Lo, sir, an' well-met! Fer merely a single copper common I can offer me services as a tout. Somewheres I can point out fer ye?"~ */
  IF ~~ THEN REPLY #33717 /* ~"What's a tout?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33718 /* ~"Sure... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33719 /* ~"Nothing, right now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33708 /* ~This smiling, middle-aged woman waves cheerfully when she notices your approach. "Greetin's, sir! Fer merely a single copper common I can offer me services as a tout. Somewheres I can point out fer ye?"~ */
  IF ~~ THEN REPLY #33720 /* ~"What's a tout?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33721 /* ~"Sure... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33722 /* ~"Nothing, right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33709 /* ~The woman looks at you skeptically, then shrugs. "A tout's a guide o' sorts, sir. I can helps ye 'round this part o' the Hive, I can."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33723 /* ~"All right... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33724 /* ~"No directions right now, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33710 /* ~The woman palms the coin and curtseys. "This part o' the Hive has gates leadin' west an' south; locations o' note include the Mortuary, the Gatherin' Dust bar, the Dustman Memorial an' a mausoleum. I'd also recommend ye stay away from a particular alley that leads southwest; 'tis full o' dangerous thugs."~ */
  IF ~~ THEN REPLY #33725 /* ~"Where's the Mortuary?"~ */ GOTO 4
  IF ~~ THEN REPLY #33726 /* ~"Where's the Gathering Dust bar?"~ */ GOTO 5
  IF ~~ THEN REPLY #33727 /* ~"Where's the Memorial?"~ */ GOTO 6
  IF ~~ THEN REPLY #33728 /* ~"Where's the mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33729 /* ~"Where's the west gate lead?"~ */ GOTO 8
  IF ~~ THEN REPLY #33730 /* ~"Where's the south gate lead?"~ */ GOTO 9
  IF ~~ THEN REPLY #33731 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0 9.0
  SAY #33711 /* ~"The Mortuary's that enormous, dome-shaped compound over in the northeast part o' the area. The Dustmen won't let ye inside, though, unless ye've got business there. Or if ye're dead, I suppose." She smiles at you.~ */
  IF ~~ THEN REPLY #33732 /* ~"Where's the Gathering Dust bar?"~ */ GOTO 5
  IF ~~ THEN REPLY #33733 /* ~"Where's the Memorial?"~ */ GOTO 6
  IF ~~ THEN REPLY #33734 /* ~"Where's the mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33735 /* ~"Where's the west gate lead?"~ */ GOTO 8
  IF ~~ THEN REPLY #33736 /* ~"Where's the south gate lead?"~ */ GOTO 9
  IF ~~ THEN REPLY #33737 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33712 /* ~"'Tis in the southwest corner o' this area... a dome-shaped buildin' whose door faces southeast. The Gatherin' Dust's one o' the safer, more quiet taverns in the Hive."~ */
  IF ~~ THEN REPLY #33738 /* ~"Where's the Mortuary?"~ */ GOTO 4
  IF ~~ THEN REPLY #33739 /* ~"Where's the Memorial?"~ */ GOTO 6
  IF ~~ THEN REPLY #33740 /* ~"Where's the mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33741 /* ~"Where's the west gate lead?"~ */ GOTO 8
  IF ~~ THEN REPLY #33742 /* ~"Where's the south gate lead?"~ */ GOTO 9
  IF ~~ THEN REPLY #33743 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2 9.1
  SAY #33713 /* ~"Towards the middle o' the nortern half o' this area... 'tis a walled courtyard o' sorts, with an open archway in each wall. There's usually a gaggle o' Dustmen mournin' near the southeast entrance ta the place."~ */
  IF ~~ THEN REPLY #33744 /* ~"Where's the Mortuary?"~ */ GOTO 4
  IF ~~ THEN REPLY #33745 /* ~"Where's the Gathering Dust bar?"~ */ GOTO 5
  IF ~~ THEN REPLY #33746 /* ~"Where's the mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33747 /* ~"Where's the west gate lead?"~ */ GOTO 8
  IF ~~ THEN REPLY #33748 /* ~"Where's the south gate lead?"~ */ GOTO 9
  IF ~~ THEN REPLY #33749 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3 9.2
  SAY #33714 /* ~"The mausoleum's in the northwest corner o' this area. Big ol' square tower-lookin' buildin', it is."~ */
  IF ~~ THEN REPLY #33750 /* ~"Where's the Mortuary?"~ */ GOTO 4
  IF ~~ THEN REPLY #33751 /* ~"Where's the Gathering Dust bar?"~ */ GOTO 5
  IF ~~ THEN REPLY #33752 /* ~"Where's the Memorial?"~ */ GOTO 6
  IF ~~ THEN REPLY #33753 /* ~"Where's the west gate lead?"~ */ GOTO 8
  IF ~~ THEN REPLY #33754 /* ~"Where's the south gate lead?"~ */ GOTO 9
  IF ~~ THEN REPLY #33755 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3 9.3
  SAY #33715 /* ~"More o' the Hive, sir. There's a flophouse there, if ye're tired an' lookin' ta rest."~ */
  IF ~~ THEN REPLY #33756 /* ~"Where's the Mortuary?"~ */ GOTO 4
  IF ~~ THEN REPLY #33757 /* ~"Where's the Gathering Dust bar?"~ */ GOTO 5
  IF ~~ THEN REPLY #33758 /* ~"Where's the Memorial?"~ */ GOTO 6
  IF ~~ THEN REPLY #33759 /* ~"Where's the mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33760 /* ~"Where's the south gate lead?"~ */ GOTO 9
  IF ~~ THEN REPLY #33761 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.5 4.4 5.4 6.4 7.4 8.4
  SAY #33716 /* ~"Just more o' the Hive, sir. There's a tattoo parlor that-away, an' the Smolderin' Corpse bar. Mess o' toughs there, too... there's a whole buildin' full o' them."~ */
  IF ~~ THEN REPLY #33762 /* ~"Where's the Mortuary?"~ */ GOTO 4
  IF ~~ THEN REPLY #33763 /* ~"Where's the Memorial?"~ */ GOTO 6
  IF ~~ THEN REPLY #33764 /* ~"Where's the mausoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33765 /* ~"Where's the west gate lead?"~ */ GOTO 8
  IF ~~ THEN REPLY #33766 /* ~"That's all I wished to know; farewell."~ */ EXIT
END
