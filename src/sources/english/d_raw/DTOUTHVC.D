// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVC~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33767 /* ~This thuggish-looking man approaches you with a wry smile. "Oye there, blood... 'ow ye doin? I's the local tout, I am, so if ye've got a copper ta spare, I'm yer man fer directions an' the like."~ */
  IF ~~ THEN REPLY #33776 /* ~"What's a tout?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33777 /* ~"Sure... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33778 /* ~"Nothing, right now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33768 /* ~"Oye there, blood... 'ow ye doin? I's the local tout, I am, so if ye've got a copper ta spare, I'm yer man fer directions an' the like."~ */
  IF ~~ THEN REPLY #33779 /* ~"What's a tout?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33780 /* ~"Sure... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33781 /* ~"Nothing, right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33769 /* ~"Hooo, by the powers' bottoms... ye must be newer ta Sigil than ye looks! A tout's a guide, blood."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33782 /* ~"All right... here's a copper piece."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33783 /* ~"No directions right now, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33770 /* ~The man snatches the coin from your grasp and winks. "Right! This here part o' the Hive's got two gates leadin' out o' it - one in the north, an' one in the southeast. Oh, an' if ye're lookin' fer a good fight, there's an alley leadin' northeast ye might want to swing by. We've also got the Office fer Vermin an' Disease Control an' a good-sized Market here."~ */
  IF ~~ THEN REPLY #33784 /* ~"Where's the Office for Vermin and Disease Control?"~ */ GOTO 4
  IF ~~ THEN REPLY #33785 /* ~"Where the Market?"~ */ GOTO 5
  IF ~~ THEN REPLY #33786 /* ~"Where's the north gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33787 /* ~"Where's the southeast gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33788 /* ~"What about this alleyway you mentioned?"~ */ GOTO 8
  IF ~~ THEN REPLY #33789 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33771 /* ~"In the middle southern half o' this area... its door faces southwards, so just walk along the southernmost east-west road till ye sees it."~ */
  IF ~~ THEN REPLY #33790 /* ~"Where the Market?"~ */ GOTO 5
  IF ~~ THEN REPLY #33791 /* ~"Where's the north gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33792 /* ~"Where's the southeast gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33793 /* ~"What about this alleyway you mentioned?"~ */ GOTO 8
  IF ~~ THEN REPLY #33794 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33772 /* ~"In the southern crook of an 'L' shaped buildin' in the northern middle half o' this area. If ye walks along the northernmost east-west road here, ye'll sees it. Lotta people, lotta merchants an' the like."~ */
  IF ~~ THEN REPLY #33795 /* ~"Where's the Office for Vermin and Disease Control?"~ */ GOTO 4
  IF ~~ THEN REPLY #33796 /* ~"Where's the north gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33797 /* ~"Where's the southeast gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33798 /* ~"What about this alleyway you mentioned?"~ */ GOTO 8
  IF ~~ THEN REPLY #33799 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33773 /* ~"Leads ta more o' the Hive, blood. There's a flophouse up there, if ye're tired... or just plain hurtin'... an' need ta catch a few winks."~ */
  IF ~~ THEN REPLY #33800 /* ~"Where's the Office for Vermin and Disease Control?"~ */ GOTO 4
  IF ~~ THEN REPLY #33801 /* ~"Where's the Market?"~ */ GOTO 5
  IF ~~ THEN REPLY #33802 /* ~"Where's the southeast gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33803 /* ~"What about this alleyway you mentioned?"~ */ GOTO 8
  IF ~~ THEN REPLY #33804 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3
  SAY #33774 /* ~"Just another bit o' the Hive, blood. Ye can get some tattoos, there, and there's a great lil' pub, name o' the Smolderin' Corpse."~ */
  IF ~~ THEN REPLY #33805 /* ~"Where's the Office for Vermin and Disease Control?"~ */ GOTO 4
  IF ~~ THEN REPLY #33806 /* ~"Where the Market?"~ */ GOTO 5
  IF ~~ THEN REPLY #33807 /* ~"Where's the north gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33808 /* ~"What about this alleyway you mentioned?"~ */ GOTO 8
  IF ~~ THEN REPLY #33809 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3
  SAY #33775 /* ~The man shrugs. "Just a place ta go if ye're lookin' fer a little rough an' tumble, that's all... ye looks a bit the fightin' type, so's I brought it up. Like I said, it's to the northeast... so stays away if ye're not lookin' for trouble."~ */
  IF ~~ THEN REPLY #33810 /* ~"Where's the Office for Vermin and Disease Control?"~ */ GOTO 4
  IF ~~ THEN REPLY #33811 /* ~"Where the Market?"~ */ GOTO 5
  IF ~~ THEN REPLY #33812 /* ~"Where's the north gate lead?"~ */ GOTO 6
  IF ~~ THEN REPLY #33813 /* ~"Where's the southeast gate lead?"~ */ GOTO 7
  IF ~~ THEN REPLY #33814 /* ~"That's all I wished to know; farewell."~ */ EXIT
END
