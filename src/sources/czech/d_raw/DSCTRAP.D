// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCTRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCTRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66878 /* ~Je to starý vybledlý pergamenový svitek, převázaný jednoduchou rudou stužkou. Stužka je upevněna obyčejnou voskovou pečetí.~ */
  IF ~~ THEN REPLY #66880 /* ~Rozlom pečeť, otevři svitek a přečti ho.~ */ DO ~SetGlobal("CW_Scroll_Trap","GLOBAL",1)
~ JOURNAL #66828 /* ~Otevřel jsem a přečetl svitek s magickou pastí. Stálo v něm:

"To vás možná NEZABIJE, ale ZPOMALÍ vás to, tím sem si JISTÝ"
"PŘESTAŇTE MĚ HONIT, ZLODĚJŠTÍ BASTARDI je to MOJE TĚLO. MOJE, MOJE, MOJE"
"a teď... CHCÍPNĚTE!"

Dostal jsem ten svitek od ženy, která mi řekla, že jí ho dala matka s příkazem odevzdat ho muži, který vypadá jako já.~ */ GOTO 1
  IF ~~ THEN REPLY #66881 /* ~Odlož svitek.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66882 /* ~Svitek obsahuje jenom několik řádků roztřeseného rukopisu a jednu podivnou runu.

"To vás možná NEZABIJE, ale ZPOMALÍ vás to, tím sem si JISTÝ"
"PŘESTAŇTE MĚ HONIT, ZLODĚJŠTÍ BASTARDI je to MOJE TĚLO. MOJE, MOJE, MOJE"
"a teď... CHCÍPNĚTE!"~ */
  IF ~  HPLT(Protagonist,36)
~ THEN REPLY #66883 /* ~"Co to?"~ */ GOTO 2
  IF ~  HPGT(Protagonist,35)
~ THEN REPLY #66884 /* ~"Co to?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66885 /* ~Runy náhle zapulzovaly a celý svitek se rozpadl na páchnoucí černou hmotu. Tekutina prosákla přímo do masa tvých rukou... během několika sekund ti magický hemotoxin změnil krev na černou žluč. Začínáš umírat neuvěřitelně bolestivou smrtí...~ */
  IF ~~ THEN REPLY #66886 /* ~Upadni do temnot...~ */ DO ~Kill(Protagonist)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #66887 /* ~Runy náhle zapulzovaly a celý svitek se rozpadl na páchnoucí černou hmotu. Tekutina prosákla přímo do masa tvých rukou... během několika sekund ti magický hemotoxin začíná měnit krev na černou žluč. Na chvíli se kroutíš a ječíš v agónii... a pak bolest opadla. Přežil jsi hrozivou magii, obsaženou ve svitku.~ */
  IF ~~ THEN REPLY #66888 /* ~Hotovo.~ */ DO ~Damage(Protagonist,LOWER,35)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END
