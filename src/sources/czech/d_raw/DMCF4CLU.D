// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37185 /* ~Vidíš nenápadnou ženu. Vypadá jako obyčejný zákazník na trhu.~ */
  IF ~~ THEN REPLY #37193 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #37194 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37186 /* ~Na tvůj pozdrav se otáčí. "Ano..." ~ */
  IF ~~ THEN REPLY #37195 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37196 /* ~"Nevadí."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37187 /* ~Zatváří se znuděně. "Dobře..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37197 /* ~"Hledám muže, kterému říkají Lothar, nebo také Pán kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37198 /* ~"Měl jsem lebku a někdo mi ji ukradl. Nevíš, prosím tě, kdo?"~ */ GOTO 4
  IF ~~ THEN REPLY #37199 /* ~"Kde mohu nakoupit nějaké zbraně?"~ */ GOTO 5
  IF ~~ THEN REPLY #37200 /* ~"Kde mohu nakoupit nějaká kouzla?"~ */ GOTO 5
  IF ~~ THEN REPLY #37201 /* ~"Co mi můžeš říct o této čtvrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #37202 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37188 /* ~"O tom jsem nikdy neslyšela. Titul *Pán kostí* bych si určitě pamatovala. Něco takového by člověku neuniklo." Stále se tváří znuděně.~ */
  IF ~~ THEN REPLY #37203 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37204 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37189 /* ~Chvíli na tebe zírá. "Ztracená lebka... no, tak to se tedy každý den neslyší. Nevím co bych ti řekla." Pokrčí rameny.~ */
  IF ~~ THEN REPLY #37205 /* ~"Ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37206 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37190 /* ~Znuděně se na tebe podívá a pak se rozhlédne po tržišti. "Právě zde, kamaráde. Zkus se zeptat obchodníků. Jsem si jistá, že najdeš vše, co potřebuješ."~ */
  IF ~~ THEN REPLY #37207 /* ~"Ještě se chci zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37208 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37191 /* ~Povzdychne si. "Není to mnoho... ale je to můj jediný domov, který já nebo kdokoliv z přítomných kdy pozná. Nauč se ho milovat, protože odtud se nedostaneš."~ */
  IF ~~ THEN REPLY #37209 /* ~"Ještě otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #37210 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37192 /* ~Jak se přibližuješ, otočí se k tobě a začne se mračit. "Věnovala jsem ti trochu svého času. Víc už ti ho nedám, kamaráde." Odvrátí se od tebe.~ */
  IF ~~ THEN REPLY #37211 /* ~Odejdi.~ */ EXIT
END
