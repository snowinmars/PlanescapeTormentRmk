// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20067 /* ~Když ses k otrhanému muži přiblížil, na jeho tváři se objevil strach.~ */
  IF ~~ THEN REPLY #20068 /* ~"Možná příště..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20069 /* ~Otrhaný muž se na tebe dívá s hrůzou v očích, než si uvědomil, že mu nechceš ublížit, alespoň pro zatím. Napřímil se a zeptal se: "Co chceš, vole?"~ */
  IF ~~ THEN REPLY #20070 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #20071 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #20072 /* ~"Čeho se bojíš?"~ */ GOTO 5
  IF ~~ THEN REPLY #20073 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20074 /* ~"Nejni důležitý, kámo. Sem zkrátka jeden další, co se snaží přežít na tomdle blbým místě, jak to jen de."~ */
  IF ~~ THEN REPLY #20075 /* ~"Dobrá. Mám pro tebe ještě další otázku."~ */ GOTO 3
  IF ~~ THEN REPLY #20076 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20077 /* ~"Pohni sebou, kámo. Mam hlad a z vykecávání s tebou se nenažeru."~ */
  IF ~~ THEN REPLY #20078 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #20079 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20080 /* ~"Čeho se bojíš?"~ */ GOTO 5
  IF ~~ THEN REPLY #20081 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20082 /* ~"Zkoušim přežít. Jak ti to připadá? Akorát, že se mě furt někdo na něco vyptává a to mě děsně zdržuje. Už si skončil?"~ */
  IF ~~ THEN REPLY #20083 /* ~"Ne. Mám pár dalších otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #20084 /* ~"Pro zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20085 /* ~"Mysliš kromě toho, že dabusové todle místo zazdívaj, že se nás ti parchanti snažej zbavit, nebo že mrtváci vylejzaj z podzemi, anebo ty zasraný krysy, co nás chcou sežrat zaživa, nebo toho, že chcípám hlady? Kromě toho, sou tady ty bestie, co voddělaly Pharoda."~ */
  IF ~~ THEN REPLY #20086 /* ~"Bestie? Jaké bestie?"~ */ GOTO 6
  IF ~~ THEN REPLY #20087 /* ~"Pharod je mrtvý?"~ */ GOTO 6
  IF ~~ THEN REPLY #20088 /* ~"Tak to mám ještě pár dalších otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #20089 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20090 /* ~"Bestie přímo z Baatoru, to byly zač, svině jedny... nejhorší noční můra, udělaná ze stínu. Popadli ho a rozervali na kousíčky. Moc toho z něj nezbylo. Pohřbili sme to málo, co sme našli. Ať odpočívá po kouscích, parchant stará."~ */
  IF ~~ THEN REPLY #20091 /* ~"Dobrá. Řekni mi ještě něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #20092 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20093 /* ~Hlasitě zakašlal, ústa si přitom zakrývá dlaní. "No co je zas? Co chceš teďka?"~ */
  IF ~~ THEN REPLY #20094 /* ~"Chci pár odpovědí."~ */ GOTO 3
  IF ~~ THEN REPLY #20095 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20096 /* ~Vidíš otrhaného muže. Páchne kouřem a odpadky, jeho kůže má zažloutlý odstín. Úkosem se na tebe zadíval. "Co vode mně chceš, kámo?"~ */
  IF ~~ THEN REPLY #20097 /* ~"Jenom odpovědi na pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #20098 /* ~"Nic. Sbohem."~ */ EXIT
END
