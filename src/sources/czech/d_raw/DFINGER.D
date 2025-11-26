// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINGER~

IF ~  Global("Finger","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #17479 /* ~Tohle je rozložená a skoro bezmasá kost z prstu humanoida zhruba tvé velikosti. Je na ní stále nějaký zvláštní prsten. Je to složitá věcička, se spoustou malých ozdobných vroubků a výčnělků.~ */
  IF ~~ THEN REPLY #17485 /* ~Sejmi prsten z prstu.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #17486 /* ~Dej kost pryč.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ EXIT
END

IF ~  Global("Finger","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17480 /* ~Vytáhl jsi starou prstní kost, abys ji mohl znovu prozkoumat. Tohle je slušně rozložená a skoro bezmasá kost prstu z humanoida zhruba tvé velikosti. Ještě je na ní nějaký zvláštní prsten - složitá věcička, se spoustou malých ozdobných vroubků a výčnělků.~ */
  IF ~~ THEN REPLY #17487 /* ~Sejmi prsten z prstu.~ */ GOTO 2
  IF ~~ THEN REPLY #17488 /* ~Dej kost pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17481 /* ~Zkoušíš to jak se dá, ale prsten sejmout nemůžeš. Je to skoro jako by se ostré okraje prstenu zaryly do mrtvého prstu a odmítaly se uvolnit. Máš o něm nicméně zvláštní tušení...~ */
  IF ~  HPLT(Protagonist,5)
~ THEN REPLY #17489 /* ~Odstraň vlastní prst a nahraď ho kostí.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 3
  IF ~  HPGT(Protagonist,4)
~ THEN REPLY #17490 /* ~Odstraň vlastní prst a nahraď ho kostí.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 4
  IF ~~ THEN REPLY #17491 /* ~Dej kost pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17482 /* ~Dal sis prsteníček své levé ruky do úst, zavřel oči, zhluboka se nadechl a skousnul jsi tak pevně, jak jsi jen dokázal. Ozvalo se křupnutí a přemohla tě chuť a pach krve. Příliš pozdě sis uvědomil, že tvé tělo není ve stavu, kdy by mohlo přijmout další, byť jen jedinou ránu a zhroutil ses mrtvý na zem.~ */
  IF ~~ THEN REPLY #17492 /* ~Hotovo.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #17483 /* ~Dal sis prsteníček své levé ruky do úst, zavřel oči, zhluboka ses nadechl a skousl tak pevně. jak jsi jen dokázal. Ozvalo se křupnutí a přemohla tě chuť a pach krve. Vyplivl jsi krvavý prst a přiložil jsi shnilou, prstenem obtíženou kost ke krvácejícímu pahýlu...~ */
  IF ~~ THEN REPLY #17493 /* ~Pokračuj...~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17484 /* ~Nic se neděje a ty sis s hrůzou uvědomil, co jsi právě udělal. Náhle jsi však ucítil divné brnění, jak kosti srůstají a šlachy se znovu spojují. V několika okamžicích, se shnilý prst stal živou součástí tvého těla, stále se však bolestivě chvěje. Vroubkovaný prsten se náhle uvolnil a sklouznul přímo do dlaně tvé ruky...~ */
  IF ~~ THEN REPLY #17494 /* ~Hotovo.~ */ DO ~TransformPartyItem("Finger","Jring",1,0,0)
~ EXIT
END
