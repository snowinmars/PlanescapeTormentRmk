// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSDTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSDTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2933 /* ~Muž s divokýma očima je skrčený, vyje a štěká ze všech svých sil. Pod jeho hustými chlupy sis všiml série podivných tetování, od řvoucích obličejů přes bizarní geometrické tvary po něco, co vypadá jako řádky básně. Je téměř nahý, ale špína, kterou má na sobě ho zahaluje dostatečně.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13755 /* ~"Zdravíčko."~ */ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13756 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13757 /* ~Dlouze a zoufale zavyj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13758 /* ~Dlouze a zoufale zavyj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13759 /* ~Nechej muže být.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13760 /* ~Nechej muže být.~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.0
  SAY #2934 /* ~Muž na tebe zírá, vydává hluboké vrčení. Po chvíli přestal vrčet a začal na tebe zuřivě štěkat. Z dálky slyšíš odpověď, taktéž štěkání. ~ */
  IF ~~ THEN REPLY #13761 /* ~"*Řekl jsem* 'Zdravíčko'" ~ */ GOTO 3
  IF ~~ THEN REPLY #13762 /* ~Zavrč na něj a vyceň zuby.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13763 /* ~"Uh... tak teda sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13764 /* ~"Uh... tak teda sbohem."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 2 // from: 0.3 4.1
  SAY #13745 /* ~Muž se otočil, jak uslyšel tvoje zavytí, pak se křivě usmál a zaklonil hlavu vyjíc s tebou. Po chvíli přestal a rozmýšlí se, co dělat, vrčí a štěká jako nějaký zdivočelý pes.~ */
  IF ~~ THEN REPLY #13765 /* ~"Řekl jsem 'Zdravíčko'."~ */ GOTO 3
  IF ~~ THEN REPLY #13766 /* ~Zavrč na něj a vyceň zuby.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13767 /* ~"Uh... s tebou jsem si teda pokecal."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13768 /* ~"Uh... s tebou jsem si teda pokecal."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0 2.1
  SAY #13746 /* ~Mužovo poštěkávání skončilo zavrčením a pak po tobě skočil!~ */
  IF ~~ THEN REPLY #13769 /* ~"No jestli to je způsob, jak chceš zemřít, vlčí čumáku..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #13747 /* ~Tento bláznivý muž stále váhá, štěká a řve z plných plic.~ */
  IF ~~ THEN REPLY #13770 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~~ THEN REPLY #13771 /* ~Dlouze a zoufale zavyj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13772 /* ~Nechej muže být.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13773 /* ~Nechej muže být.~ */ EXTERN ~DMORTE~ 162
END
