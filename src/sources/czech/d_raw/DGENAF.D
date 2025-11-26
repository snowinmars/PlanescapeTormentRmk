// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63508 /* ~Vidíš znuděně vypadající ženu. Když ses přiblížil, vrhla na tebe nemilý pohled a zamračila se.~ */
  IF ~~ THEN REPLY #63509 /* ~"Ahoj."~ */ GOTO 1
  IF ~~ THEN REPLY #63510 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63511 /* ~Povzdechla si a rozhlédla se kolem. Pak ti teprve začala věnovat pozornost. "Nazdar... Copak chceš?"~ */
  IF ~~ THEN REPLY #63512 /* ~"Chtěl bych se tě zeptat na pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #63513 /* ~"Ale nic, zapomeň na to..."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63514 /* ~Její zamračení se ještě více prohloubilo. "Otázek... Zapomeň na to, chlape. Mám moc práce a nemám čas na nějaký pitomý otázky." ~ */
  IF ~~ THEN REPLY #63515 /* ~"Bude tě to stát jenom chvilku..."~ */ GOTO 3
  IF ~~ THEN REPLY #63516 /* ~"Jak chceš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63517 /* ~"Nemám ani tu pitomou chvilku času." Opět se začala rozhlížet. "Táhni, nebo zavolám stráž."~ */
  IF ~~ THEN REPLY #63518 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63519 /* ~Vidíš ženu, která vypadá poměrně zajímavě. Když ses k ní přiblížil, otočila se a mile se na tebe usmála.~ */
  IF ~~ THEN REPLY #63520 /* ~"Zdravím."~ */ GOTO 5
  IF ~~ THEN REPLY #63521 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63522 /* ~"Ah, taky tě zdravím... Potřebuješ něco?"~ */
  IF ~~ THEN REPLY #63523 /* ~"Mám pro tebe pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #63524 /* ~"Ne, vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63525 /* ~Zamračila se a povzdechla si. "Ale pospěš si. Nechci aby mi něco uniklo."~ */
  IF ~~ THEN REPLY #63526 /* ~"Kdo jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #63527 /* ~"Co to děláš?"~ */ GOTO 8
  IF ~~ THEN REPLY #63528 /* ~"Co mi můžeš povědět o této čtvrti?"~ */ GOTO 9
  IF ~~ THEN REPLY #63529 /* ~"Je v této čtvrti něco zajímavého?"~ */ GOTO 11
  IF ~~ THEN REPLY #63530 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63531 /* ~"Cože? Proč to chceš vědět? Prostě jsem někdo, kdo se snaží skoupit pár věcí. Nepotřebuješ přece znát moje jméno." Vrhla na tebe nedůtklivý pohled.~ */
  IF ~~ THEN REPLY #63532 /* ~"Jak myslíš. Měl bych ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #63533 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63534 /* ~"Snažím se koupit pár věcí, které tady na aukci prodávají... Až skončíš s tvýma otázkama, budu se zase moc vrátit ke své práci."~ */
  IF ~~ THEN REPLY #63535 /* ~"Měl bych ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #63536 /* ~"Už musím jít. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63537 /* ~"Je to pozoruhodné místo. Jen se rozhlédni! Jsou tu obchůdky, tržnice, aukce..." Zdá se, že jí došla slova. "A spousta jiných věcí..."~ */
  IF ~~ THEN REPLY #63538 /* ~"Co si tu můžu koupit?"~ */ GOTO 10
  IF ~~ THEN REPLY #63539 /* ~"Mno, měl bych pro tebe ještě pár otázeček..."~ */ GOTO 6
  IF ~~ THEN REPLY #63540 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63541 /* ~Usmála se. "No... V podstatě cokoliv... tedy kromě času. Už jsi skončil s otázkami?"~ */
  IF ~~ THEN REPLY #63542 /* ~"Ještě ne. Mám jich ještě nekolik..."~ */ GOTO 6
  IF ~~ THEN REPLY #63543 /* ~"Ano, užn jsem skončil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63544 /* ~Zamračila se. "Já vlatně nevím... Žiju to celý život a všechno už mi připadá jako samozřejmost." Pokrčila rameny. "Tak se tu porozhlédni, určitě tě něco zaujme."~ */
  IF ~~ THEN REPLY #63545 /* ~"To taky udělám. ale až po dalšch otázkách..."~ */ GOTO 6
  IF ~~ THEN REPLY #63546 /* ~"Díky moc. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63547 /* ~Vidíš vážnou ženu. Všimla si tě a teď se pokouší nějak se ti vyhnout.~ */
  IF ~~ THEN REPLY #63548 /* ~"Ahoj."~ */ GOTO 13
  IF ~~ THEN REPLY #63549 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63550 /* ~Váhavě se na tebe podívala. "Eh... Ahoj." Vypadá znepokojeně.~ */
  IF ~~ THEN REPLY #63551 /* ~"Mohl bych se tě na něco zeptat?"~ */ GOTO 14
  IF ~~ THEN REPLY #63552 /* ~"No nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63553 /* ~"Nepřeju si, abys mě rušil." Zamračila se.~ */
  IF ~~ THEN REPLY #63554 /* ~"Bude to trvat jenom chviličku."~ */ GOTO 15
  IF ~~ THEN REPLY #63555 /* ~"Jak myslíš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63556 /* ~Její zamračení se ještě více prohloubilo. "Už jsem řekla. Nepřeju si, abys mě rišil! Zmiz! Dostals zprávu, ničemo?"~ */
  IF ~~ THEN REPLY #63557 /* ~"Ne, nic jsem nedostal."~ */ GOTO 16
  IF ~~ THEN REPLY #63558 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63559 /* ~Darovala ti znechucený pohled, popotáhla a pak se od tebe odvrátila.~ */
  IF ~~ THEN REPLY #63560 /* ~"Dobrá, sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63561 /* ~Vidíš návštěvnici aukce. Zamávala ti, když ses s ní pokusil znovu promluvit.~ */
  IF ~~ THEN REPLY #63562 /* ~Odejdi.~ */ EXIT
END
