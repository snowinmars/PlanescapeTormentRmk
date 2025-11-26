// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLAN~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #49373 /* ~Vidíš vysokého muže s černými vlasy až po ramena a s pichlavýma očima. Vše se jeho pohledem zdá být rozpalováno. Vedle něj stojí dost mladá žena, která se vágně usmívá na vše, co jí říká. Otočil k tobě ty své jasné modré oči a zeširoka se usmál. Nabízí svou ruku: "Jsem Dallan. Je mi potěšením."~ */
  IF ~~ THEN REPLY #49374 /* ~"Měl bych pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #49375 /* ~"Těší mě. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #49376 /* ~"Cokoliv. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #49377 /* ~Dallan se na tebe znovu zeširoka usměje. "Co se děje?"~ */
  IF ~~ THEN REPLY #49378 /* ~"Měl bych pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #49379 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0 7.1
  SAY #49380 /* ~"Co potřebuješ vědět?"~ */
  IF ~~ THEN REPLY #49381 /* ~"Slyšel jsem, že je ve městě déva."~ */ GOTO 3
  IF ~~ THEN REPLY #49382 /* ~"Kdo jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #49383 /* ~"Kdo je ta dívka?"~ */ GOTO 5
  IF ~~ THEN REPLY #49384 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49385 /* ~Směje se a kroutí hlavou. "Ještě nějaké otázky?"~ */
  IF ~~ THEN REPLY #49386 /* ~"Ano. Co víš o tom dévovi?"~ */ GOTO 6
  IF ~~ THEN REPLY #49387 /* ~"Kdo jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #49388 /* ~"Kdo je tady tvá přítelkyně?"~ */ GOTO 5
  IF ~~ THEN REPLY #49389 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.2
  SAY #49390 /* ~"Jsem bard, historik, herec a všeobecně bavič. Nejrychlejší prsty v Pustině." Znovu propuká v nakažlivý smích. "Přinejmenším to každému tvrdím."~ */
  IF ~~ THEN REPLY #49391 /* ~"Tak mi řekni něco o tom dévovi..."~ */ GOTO 6
  IF ~~ THEN REPLY #49392 /* ~"Kdo je tvá přítelkyně?"~ */ GOTO 5
  IF ~~ THEN REPLY #49393 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.1 6.1
  SAY #49394 /* ~Ušklíbl se. "Je to přítelkyně. To je vše, co potřebuješ vědět." Ona se na něj usměje a začervená se.~ */
  IF ~~ THEN REPLY #49395 /* ~"Dobrá, pověz mi o tom dévovi..."~ */ GOTO 6
  IF ~~ THEN REPLY #49396 /* ~"Tak mi pověz o sobě..."~ */ GOTO 4
  IF ~~ THEN REPLY #49397 /* ~"Nechej si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 5.0
  SAY #49398 /* ~Nahlas se zasmál. "Všechny věci mají svou cenu a já ještě nejsem připraven ohodnotit tuto informaci. Možná později."~ */
  IF ~~ THEN REPLY #49399 /* ~"Co třeba kdybych ti za ni vyhrožoval?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 7
  IF ~~ THEN REPLY #49400 /* ~"Tak mi pověz tady o tvé přítelkyni..."~ */ GOTO 5
  IF ~~ THEN REPLY #49401 /* ~"Tak mi pověz o sobě..."~ */ GOTO 4
  IF ~~ THEN REPLY #49402 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #49403 /* ~Jeho ruka chvatně sáhla po zbrani. "Pak předpokládám, že bychom zjistili, kdo je lepší bojovník."~ */
  IF ~~ THEN REPLY #49404 /* ~"Klid. Jen jsem kladl otázky. Odpověz mi ještě na pár dalších."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANCETOSTAND)
~ GOTO 2
  IF ~~ THEN REPLY #49405 /* ~"Možná později. Měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #49406 /* ~"Hmm. Budu o tom přemýšlet. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 8 // from:
  SAY #49407 /* ~Vidíš vysokého muže s černými vlasy až po ramena a s pichlavýma očima. Vše se jeho pohledem zdá být rozpalováno. Vedle něj stojí dost mladá žena, která se vágně usmívá na vše, co jí říká. Otočil k tobě ty své jasné modré oči a zeširoka se usmál. "Jsem Dallan. A ty sháníš Klíč."~ */
  IF ~~ THEN REPLY #49408 /* ~"Je tomu tak. Co pro to mám udělat?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~Pro Dallanovu část Klíče mám promluvit s githyankiským úředníkem jménem An'izius. Měl by se nacházet blízko brány do Carceri v centru města.~ */ GOTO 10
  IF ~~ THEN REPLY #49409 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",4)
Global("C_Off","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49412 /* ~"Chceš ten Klíč, že?"~ */
  IF ~~ THEN REPLY #49413 /* ~"Je tomu tak. Co pro to mám udělat?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~Pro Dallanovu část Klíče mám promluvit s githyankiským úředníkem jménem An'izius. Měl by se nacházet blízko brány do Carceri v centru města.~ */ GOTO 10
  IF ~~ THEN REPLY #49414 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #49415 /* ~"Je to jednoduchost sama. Jeden z městských vůdců má trochu... politických nesnází, dá se říct. Jeden z jeho nepřátel v městské radě mu způsobuje nějaké potíže. Jdi a promluv s ním o tom, s čím bys mu mohl ohledně toho pomoct. Jmenuje se An'izius - je to githyanki a najdeš ho blízko brány do Carceri v centru města."~ */
  IF ~~ THEN REPLY #49416 /* ~"Dovol mi zeptat se ohledně toho na pár věcí. Je to tvůj přítel? Očekáváš nějaký určitý výsledek toho celého?"~ */ GOTO 11
  IF ~~ THEN REPLY #49418 /* ~"Dobrá. Ještě se vrátím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #49419 /* ~Zašklebil se. "Prostě řekněme, že důvěřuji v tvou diskrétnost. Uvidíš, co mám na mysli."~ */
  IF ~~ THEN REPLY #49421 /* ~"Dobrá. Ještě se vrátím. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",1)
GlobalLT("C_Off","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #49422 /* ~Dallan se na tebe opět usmál svým charakteristickým úsměvem a položil ruku na ramena své přítelkyně. "Tak jak to jde? Nějaký pokrok?"~ */
  IF ~~ THEN REPLY #49423 /* ~"Dělám na tom. Měl bych pro tebe pár otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #49424 /* ~"Dělám na tom. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49425 /* ~"Možná později. Mám teď něco důležitého na práci..." Vágně se rozhlédl po místnosti. "Promluvíme si, až budeš hotov."~ */
  IF ~~ THEN REPLY #49426 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #49427 /* ~"Slyšel jsem o tvé skvělé práci vše, příteli. To byla zajímavá křivárnička. Nelíbila by se ti politická kariéra v Curstu, hm?" Obrátil do sebe pivo. "Tady je vyplacení z mé strany." Jeho hlas poklesl, nabývajíc téměř rituálního tónu: "Tak vzdáleni Bohům a světlu Nebes..." Opět zklidnil hlas a povídá, "Kvůli poslední části Klíče si promluv támhle s Donou Quisho."~ */
  IF ~~ THEN REPLY #49428 /* ~"Nejdřív jsem se tě chtěl zeptat na pár otázek..."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan mě vyplatil svou částí Klíče a poslal mě k Doně Quisho. Jeho část zní: "Tak vzdáleni Bohům a světlu Nebes..." ~ */ GOTO 16
  IF ~~ THEN REPLY #49429 /* ~"Díky. Sbohem."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan mě vyplatil svou částí Klíče a poslal mě k Doně Quisho. Jeho část zní: "Tak vzdáleni Bohům a světlu Nebes..." ~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 15 // from:
  SAY #49431 /* ~"Zase zpět, eh? Ještě toho nemáš dost?" Jeho dívka je nepatrně jiná... jakoby to byla jiná osoba, alespoň podle tvého úsudku, ale chová se tak podobně, až máš obtíže rozpoznat, zda tomu tak skutečně je.~ */
  IF ~~ THEN REPLY #49432 /* ~"Měl bych pár otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #49433 /* ~"Teď už očividně ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0
  SAY #49434 /* ~"Co jsi chtěl vědět?"~ */
  IF ~~ THEN REPLY #49435 /* ~"Kdo je tady tvá přítelkyně?"~ */ GOTO 17
  IF ~~ THEN REPLY #49436 /* ~"Proč jsi vlastně chtěl vyřídit tu záležitost? Co s tím máš společného?"~ */ GOTO 18
  IF ~~ THEN REPLY #49437 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49438 /* ~"Je to přítelkyně, přítelkyně a docela dobře si rozumíme. Chtěl jsi ještě něco dalšího?"~ */
  IF ~~ THEN REPLY #49439 /* ~"Ano. Proč jsi vlastně chtěl vyřídit tu záležitost? Co s tím máš společného?"~ */ GOTO 18
  IF ~~ THEN REPLY #49440 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #49441 /* ~"Protože mi An'zinius zakázal v tomto městě hrát." Odplivl si na podlahu. "Protože mi Siabha odmítla pomoc i přes naše dávné přátelství. Řekla, že není správný čas si s tím špinit ruce. Protože on byl mocichtivý podvraťák a ona sebezveličující děvka. Věděl jsem to, jeden nebo oba mohli padnout, tím či oním způsobem."~ */
  IF ~~ THEN REPLY #49442 /* ~"Chápu. Sbohem."~ */ EXIT
END
