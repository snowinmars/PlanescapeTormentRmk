// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVCOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVCOLL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #54788 /* ~Muž je oblečen ve špinavé potrhané hnědé robě, většinu jeho tváře zakrývá kápě.~ */
  IF ~~ THEN REPLY #54789 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #54790 /* ~Nechej ho být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #54791 /* ~Oči pod kápí se zamhouřily, muž ustoupil o krok zpátky. "Co chceš?"~ */
  IF ~~ THEN REPLY #54792 /* ~"Co to děláš?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54793 /* ~"Co je tohle za místo?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54794 /* ~"Co je tohle za místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #54795 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #54796 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 9.0
  SAY #54797 /* ~"Starám se o vlastní věci a po tobě bych chtěl, abys dělal to samý, kámo."~ */
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54799 /* ~"Co je tohle za místo?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54798 /* ~"Co je tohle za místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #54800 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #54801 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 9.1
  SAY #54802 /* ~Rozhlédl se kolem. "Nemá to přesný jméno. Dalo by se tomu říkat Smetiště."~ */
  IF ~~ THEN REPLY #54803 /* ~"Co tady děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #54804 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #54805 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 9.2
  SAY #54806 /* ~"Pharodova vesnice, kámo." Ukázal vzhůru. "Pohřbená Vesnice."~ */
  IF ~~ THEN REPLY #54807 /* ~"Co tady děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #54808 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #54809 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2 3.1 4.1 9.3
  SAY #54810 /* ~"Eh?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54811 /* ~"Hledám muže jménem Pharod."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54812 /* ~"Hledám muže jménem Pharod."~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54813 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 6
  IF ~~ THEN REPLY #54814 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 7.0 8.0
  SAY #54815 /* ~Jenom zmateně zavrtěl hlavou.~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54816 /* ~"Co takhle Pharod? Víš, kde je?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54817 /* ~"Co takhle Pharod? Víš, kde je?"~ */ GOTO 8
  IF ~~ THEN REPLY #54818 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #54819 /* ~Muž přikývl. "Musíš jít do jihozápadního konce. Sou tam padací dveře, vedou k Pharodovi."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54820 /* ~"Taky hledám deník, který jsem ztratil."~ */ GOTO 6
  IF ~~ THEN REPLY #54821 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #54822 /* ~Muž kývl. "Je tady průchod na severozápad z týhle místnosti... tam najdeš starýho Pharoda."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54823 /* ~"Taky hledám deník, který jsem ztratil."~ */ GOTO 6
  IF ~~ THEN REPLY #54824 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #54825 /* ~Muž ustoupil o krok zpátky, podezřívavě si tě prohlíží. "Už zase? Co chceš?"~ */
  IF ~~ THEN REPLY #54826 /* ~"Co to děláš?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54827 /* ~"Co je tohle za místo?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54828 /* ~"Co je tohle za místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #54829 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #54830 /* ~"Nic. Sbohem."~ */ EXIT
END
