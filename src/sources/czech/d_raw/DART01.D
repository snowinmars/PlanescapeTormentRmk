// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34187 /* ~Stovky střepin průsvitného zeleného skla, které vytvářejí toto barevné okno jakoby nebyly drženy ničím pohromadě, vypadá to spíše, že se volně vznášejí a jsou tajemně udržovány v železném rámu. Úlomky se pohybují v pomalých vlnkách, vytvářejíce na povrchu okna bizarní vzorce, jak různé části odrážejí světlo galérie v různých směrech. Vedle okna je malá kartička s nápisem 'Arkadianské  okno z barevného skla'.~ */
  IF ~~ THEN REPLY #42709 /* ~Dotkni se skla.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42710 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42706 /* ~Natahuješ se, aby ses dotkl zvlněného skleněného úlomku, ale zjišťuješ, že to nemůžeš udělat... tvoje ruka se jen na chvilku dotkne povrchu skla.~ */
  IF ~~ THEN REPLY #42714 /* ~Udeř do skla.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sglass_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #42717 /* ~Odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42708 /* ~Uspěl jsi jen v tom, že jsi si zranil klouby; sklo může být klidně z ocelového plechu.~ */
  IF ~~ THEN REPLY #42718 /* ~Odejít.~ */ EXIT
END
