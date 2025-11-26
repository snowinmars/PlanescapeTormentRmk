// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33815 /* ~This attractive, scantily-clad woman calls out to you as she makes her approach. "Pardon me, good sir! Pardon! Ye seem a bit lost, if I may be so bold... would ye require the services of a tout, perchance? Only a single copper, sir..."~ */
  IF ~~ THEN REPLY #33824 /* ~"What's a tout?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33825 /* ~"Sure... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33826 /* ~"Nothing, right now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33816 /* ~"Do ye require the services of a tout, good sir? T'would cost ye but a single copper..."~ */
  IF ~~ THEN REPLY #33827 /* ~"What's a tout?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33828 /* ~"Sure... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33829 /* ~"Nothing, right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33817 /* ~"A guide, sir, to see you 'round this part of the Hive."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33830 /* ~"All right... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33831 /* ~"No directions right now, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33818 /* ~"I thank ye, sir... 'tis jink well-spent." She pockets the copper coin. "There's two gates leadin' from here - both are on the westernmost side of the area, one in the north, and one in the south. Two places ye may wish to visit are the Smolderin' Corpse bar and a tattoo parlor. Lastly, there's a set of buildings oft-times called the Tenement of Thugs... a dangerous, dangerous place, sir."~ */
  IF ~~ THEN REPLY #33832 /* ~"Where's the Smoldering Corpse bar?"~ */ GOTO 4
  IF ~~ THEN REPLY #33833 /* ~"Where's the tattoo parlor?"~ */ GOTO 5
  IF ~~ THEN REPLY #33834 /* ~"Where's the northwest gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33835 /* ~"Where's this Tenement of Thugs?"~ */ GOTO 8
  IF ~~ THEN REPLY #33836 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33819 /* ~"'Tis in the very middle of the area, sir... a square buildin' with a domed roof. Walk along the southernmost east-west road; ye'll see its entrance facing to the south."~ */
  IF ~~ THEN REPLY #33837 /* ~"Where's the tattoo parlor?"~ */ GOTO 5
  IF ~~ THEN REPLY #33838 /* ~"Where's the northwest gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33839 /* ~"Where's the southwest gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33840 /* ~"Where's this Tenement of Thugs?"~ */ GOTO 8
  IF ~~ THEN REPLY #33841 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33820 /* ~"The parlor's at the eastern end of this area, sir... a dome building with wrought iron mesh atop it... its entrance faces southwest."~ */
  IF ~~ THEN REPLY #33842 /* ~"Where's the Smoldering Corpse bar?"~ */ GOTO 4
  IF ~~ THEN REPLY #33843 /* ~"Where's the northwest gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33844 /* ~"Where's the southwest gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33845 /* ~"Where's this Tenement of Thugs?"~ */ GOTO 8
  IF ~~ THEN REPLY #33846 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33821 /* ~"To the part of the Hive where the Mortuary lies, sir. The Gathering Dust bar, the Dustman Memorial, and a mausoleum are there as well."~ */
  IF ~~ THEN REPLY #33847 /* ~"Where's the Smoldering Corpse bar?"~ */ GOTO 4
  IF ~~ THEN REPLY #33848 /* ~"Where's the tattoo parlor?"~ */ GOTO 5
  IF ~~ THEN REPLY #33849 /* ~"Where's the southwest gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33850 /* ~"Where's this Tenement of Thugs?"~ */ GOTO 8
  IF ~~ THEN REPLY #33851 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.2 6.2 8.3
  SAY #33822 /* ~"The gate leads to the part of the Hive which holds the Office for Vermin and Disease Control, as well as a decent-sized market." ~ */
  IF ~~ THEN REPLY #33852 /* ~"Where's the Smoldering Corpse bar?"~ */ GOTO 4
  IF ~~ THEN REPLY #33853 /* ~"Where's the tattoo parlor?"~ */ GOTO 5
  IF ~~ THEN REPLY #33854 /* ~"Where's the northwest gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33855 /* ~"Where's this Tenement of Thugs?"~ */ GOTO 8
  IF ~~ THEN REPLY #33856 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.3
  SAY #33823 /* ~She nods. "'Tis a cluster of buildings along the northern side of this area, sir... ye'll want to avoid the place. Unless, of course, ye're spoilin' for a fight, sir."~ */
  IF ~~ THEN REPLY #33857 /* ~"Where's the Smoldering Corpse bar?"~ */ GOTO 4
  IF ~~ THEN REPLY #33858 /* ~"Where's the tattoo parlor?"~ */ GOTO 5
  IF ~~ THEN REPLY #33859 /* ~"Where's the northwest gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33860 /* ~"Where's the southwest gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33861 /* ~"That's all I wished to know; farewell."~ */ EXIT
END
