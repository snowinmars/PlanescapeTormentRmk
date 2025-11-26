// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSWORDOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSWORDOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50430 /* ~Wh'ynnův meč - také známý jako Podvodníkova čepel - vyhlíží spíše jako nějaká ozdobná dýka než jako zbraň do boje. I když není zcela důsledně vyvážen, byl obdařen mocnou magií a je proto v bitvě mnohem efektivnější než více 'obyčejné' nože. Nicméně největší moc Wh'ynnnova meče spočívá v jeho schopnosti dovolit jeho nositeli podvádět: prostým držením 'meče' v patřičně melodramatické pozici přemůže jeho držitel jakoukoliv hru, ve které byl tento artefakt nalezen.~ */
  IF ~~ THEN REPLY #50436 /* ~Podváděj: stůj s nohama mírně od sebe, napni všechny svaly a vrhni čepel triumfálně k nebesům.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SwordoW_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #50437 /* ~Odlož dýku.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50438 /* ~Wh'ynnovým mečem pulzuje vlna moci; někde v dálce zaburácel hrom. V tu chvíli je zakončení hry před tebou...~ */
  IF ~~ THEN REPLY #50439 /* ~Pozoruj, jak se odhaluje... ~ */ EXIT
END
