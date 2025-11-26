// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_06~

IF ~  !Global("S_Stone","AR0603",6)
!Global("S_Stone","AR0603",13)
~ THEN BEGIN 0 // from:
  SAY #34217 /* ~Je to nezvyklý fialový kámen. Je bezpečně připevněný k podstavci, na kterém leží.~ */
  IF ~~ THEN REPLY #47460 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",6)
~ THEN BEGIN 1 // from:
  SAY #47461 /* ~Tenhle fialový kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'vyčerpaného odevzdání.'~ */
  IF ~~ THEN REPLY #47462 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47463 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47464 /* ~Roztřesený a chvějící se, hřeješ se nadějí, že budeš nalezen. Pod sněhovou pokrývkou se choulíš do klubíčka, aby sis udržel tu trochu tepla, co ti zbývá. Svádíš tuhý boj, abys ještě chvíli udržel oči otevřené - nesmíš usnout - uvědomuješ si, že už necítíš ruce... a nohy... led tě studí na tváři... a jsi unavený, tak unavený. Nakonec se podvoluješ nevyhnutelnému. Zavíráš oči, odevzdáváš se spánku a jak tě opouštějí poslední sily, klouže ti z očí - odsouzená zmrznout dřív, než se dotkne tvé tváře - poslední slza.~ */
  IF ~  Global("Sensation06","AR0603",0)
~ THEN REPLY #47465 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation06","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation06","AR0603",1)
~ THEN REPLY #47466 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",13)
~ THEN BEGIN 3 // from:
  SAY #47467 /* ~Tenhle fialový kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'ponurého odhodlání.'~ */
  IF ~~ THEN REPLY #47468 /* ~Začni vjem.~ */ GOTO 4
  IF ~~ THEN REPLY #47469 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47470 /* ~Celý sál je v troskách a dosud ničení pokračuje, jak tucty bojujících mávají zbraněmi, smrtí, tajemnou magií a sebou samotnými v zoufalém boji o právo zůstat posledními živými. Z hromady nehybných těl, z níž ses vyhrabal, když jsi předtím o vlásek unikl hrůze nějakého ďábelského kouzla, stoupá štiplavý zelený kouř. Tamhle je - na druhé straně, skrze bojující dav, skrze krvelačnou bitvu před tebou, spočívá na zázrakem stále stojícím stole nedotknut - tvůj pohár s medovinou! A ty ho dostaneš zpátky, i kdybys měl pozabíjet všechny přeživší hospodské rváče do posledního, abys to dokázal!~ */
  IF ~  Global("Sensation13","AR0603",0)
~ THEN REPLY #47471 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation13","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation13","AR0603",1)
~ THEN REPLY #47472 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47473 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47474 /* ~Odejdi.~ */ EXIT
END
