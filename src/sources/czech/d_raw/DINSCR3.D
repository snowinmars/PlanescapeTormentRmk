// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38101 /* ~Je extrémně důležité zaznamenávat si své cesty, aby ses z nich mohl poučit. Důležitější ale je, že zdroje informací, které ti pomáhají rozluštit tuto záhadu, musí být ochráněny. Pokud by byly klíčové postavy, dokumenty, či věštci odstraněni, smrtí či zničením, pak nikdy nezjistíš kdo nebo co jsi, nebo jak ses takovým stal.~ */
  IF ~  Global("Inscr_3","GLOBAL",0)
~ THEN REPLY #53707 /* ~Prozkoumej panel.~ */ GOTO 1
  IF ~~ THEN REPLY #53708 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53709 /* ~Práce mistra. Panel je zasazen do zdi s takovou přesností, jaké dosáhne pouze řemeslník - mistr. Máš pocit, že panel by se dal zatlačit do zdi.~ */
  IF ~~ THEN REPLY #53710 /* ~Zatlač na panel.~ */ DO ~SetGlobal("Inscr_3","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53711 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53712 /* ~Panel se do zdi zasunul, stačilo do něj lehoučce strčit. Ze sarkofágu za tebou slyšíš cvaknutí.~ */
  IF ~~ THEN REPLY #53713 /* ~Odvrať se od nápisu.~ */ EXIT
END
