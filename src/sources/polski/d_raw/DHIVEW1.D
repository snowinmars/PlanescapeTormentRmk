// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2293 /* ~Widzisz kobietę ubraną w wyblakłe, połatane ubranie. Gdy podchodzisz, patrzy i potem szybko się odwraca, jak gdyby nie chciała patrzeć ci w oczy.~ */
  IF ~~ THEN REPLY #2294 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #2295 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2296 /* ~Kobieta znów patrzy na ciebie, obdarzając cię lodowatym spojrzeniem, a potem odwraca się.~ */
  IF ~~ THEN REPLY #2297 /* ~"Uch... proszę pani?"~ */ GOTO 2
  IF ~~ THEN REPLY #2298 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2299 /* ~Odwraca się znowu... i tym razem, widzisz w jej ręce sztylet. "Zostaw mnie w spokoju, psie, albo wbiję ci go tam, gdzie go nikt, nigdy nie znajdzie!"~ */
  IF ~~ THEN REPLY #2300 /* ~"Uspokój się... Chcę ci tylko zadać parę pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #2301 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2302 /* ~Wolną ręką robi znak półkola nad sercem, jak gdyby chciała odgonić złe moce. "Nie mam ci nic do powiedzenia! Odejdź!"~ */
  IF ~~ THEN REPLY #2303 /* ~Zaatakuj ją.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #2304 /* ~Odjedź.~ */ EXIT
END
