// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOET~

IF ~  !Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43386 /* ~Ten staruszek o subtelnym wyglądzie obdarza cię tylko najkrótszym ze spojrzeń, po czym powraca do swojej recytacji.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43387 /* ~Naśmiewaj się z poety.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43838 /* ~Naśmiewaj się z poety.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43839 /* ~Naśmiewaj się z poety.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43840 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #43841 /* ~Twoje impertynencje, składające się z okrzyków typu "Poezja jest do kitu!" i rzuconej od czasu do czasu truskawki, prowokują tylko kilka zdenerwowanych spojrzeń... ale nic więcej.~ */
  IF ~~ THEN REPLY #43842 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #43843 /* ~Naśmiewasz się i przedrzeźniasz poetę, robisz sobie żarty z jego poezji, wyglądu i stylu życia. Prowokujesz jednak tylko kilka zdenerwowanych spojrzeń i krótkie, gniewne spojrzenie samego poety... ale nic więcej.~ */
  IF ~~ THEN REPLY #43844 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #43845 /* ~Naśmiewasz się i przedrzeźniasz poetę, robisz sobie żarty z jego poezji, wyglądu i stylu życia. Przerywasz nawet kilka z jego wierszy, które kończysz swoimi wstawkami, co prowokuje parę chichotów wśród oglądających i sprawia, że stary poeta - robiąc co w jego mocy, żeby nie zwracać na ciebie uwagi - zaczyna zgrzytać na ciebie zębami.~ */
  IF ~~ THEN REPLY #43846 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #43847 /* ~Stary poeta spogląda na ciebie ze zmarszczonym czołem, po czym powraca do recytacji.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43848 /* ~Ponaśmiewaj się z poety jeszcze trochę.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43849 /* ~Ponaśmiewaj się z poety jeszcze trochę.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43850 /* ~Ponaśmiewaj się z poety jeszcze trochę.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43851 /* ~Odejdź.~ */ EXIT
END
