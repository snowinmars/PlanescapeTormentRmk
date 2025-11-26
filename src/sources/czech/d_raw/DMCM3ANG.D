// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37707 /* ~Vidíš hezkého, dobře oblečeného mladého muže. Jenom se tak potuluje a prohlíží si zboží. Všiml si že přicházíš, ale nevěnuje ti žádnou pozornost.~ */
  IF ~~ THEN REPLY #37713 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~~ THEN REPLY #37714 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37706 /* ~Změřil si tě pohledem a nasadil pohrdavý výraz. "Zásadně se nestýkám se zaostalými jedinci. A jak se na tebe tak dívám, k téhle sortě právě patříš. Zmiz, troubo." ~ */
  IF ~~ THEN REPLY #37715 /* ~"Chtěl bych se tě na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37716 /* ~"Tak dobře, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37708 /* ~Zamračil se a vztyčil prst, jako by peskoval dítě. "To mě nezajímá, troubo. Nech mě být, nebo zavolám stráže!"~ */
  IF ~~ THEN REPLY #37717 /* ~"Sem s nimi..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37718 /* ~"Tak dobře, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37709 /* ~Udělal na tebe neslušné gesto. "Jak chceš... Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #37719 /* ~Připrav se na boj...~ */ EXIT
  IF ~~ THEN REPLY #37720 /* ~Vypadni než dorazí.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37710 /* ~Muž se k tobě otočil a hned tě poznal. Zamračil se na tebe. "Co mám udělat ,abych se tě konečně zbavil, troubo."~ */
  IF ~~ THEN REPLY #37721 /* ~"Mohl bys mi odpovědět na nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #37722 /* ~"Omlouvám se, už jdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37711 /* ~Udělal na tebe neslušné gesto. "Nechci odpovídat na tvoje pitomé otázky. Najdi si mudrce." Gestem tě odhání. "A teď zmiz nebo zavolám stráže."~ */
  IF ~~ THEN REPLY #37723 /* ~"Sem s nimi..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37724 /* ~"Tak jo, sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_2","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37712 /* ~Muž se k tobě otočil a hned tě poznal. Zamračil se na tebe. "Co mám udělat ,abych se tě konečně zbavil, troubo." Povzdechl si a znechuceně pokrčil rameny. "Jednou už jsem na tebe zavolal stráže, můžu je zavolat znova... když se ti to tak líbí."~ */
  IF ~~ THEN REPLY #37725 /* ~"Sem s nimi..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37726 /* ~"Tak jo, sbohem."~ */ EXIT
END
