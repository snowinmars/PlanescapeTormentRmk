// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2293 /* ~Vidíš ženu ve vybledlých, zaplátovaných šatech. Když ses přiblížil, hodila po tobě okem, ale rychle se otočila, zjevně se ti nechce dívat do očí.~ */
  IF ~~ THEN REPLY #2294 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #2295 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2296 /* ~Žena se na tebe znovu podívala, nasadila ledový výraz a otočila se pryč.~ */
  IF ~~ THEN REPLY #2297 /* ~"Uh... slečno?"~ */ GOTO 2
  IF ~~ THEN REPLY #2298 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2299 /* ~Znovu se otočila... a tentokrát vidíš v její ruce dýku. "Nech mě být, ty pse, nebo ti tohle vrazím tam, kde to nikdy nikdo nenajde!"~ */
  IF ~~ THEN REPLY #2300 /* ~"Uklidni se... Mám pro tebe jenom nějaké otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #2301 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2302 /* ~Volnou rukou si před hrudí opsala polokruh, jako nějaké znamení proti zlu. "Nemám ti co říct! Jdi pryč!"~ */
  IF ~~ THEN REPLY #2303 /* ~Zaútoč na ni.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #2304 /* ~Odejdi.~ */ EXIT
END
