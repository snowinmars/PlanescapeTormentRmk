// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM782.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM782~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24708 /* ~Ce cadavre s'arrête et te fixe alors que tu t'approches. Le numéro '782' est gravé sur son front, et ses lèvres ont été cousues. Une légère odeur de formol émane de lui.~ */
  IF ~  NearbyDialog("DMorte1")
~ THEN REPLY #24709 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ EXTERN ~DMORTE1~ 34
  IF ~  !NearbyDialog("DMorte1")
~ THEN REPLY #24712 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ GOTO 1
  IF ~~ THEN REPLY #24713 /* ~Examine le cadavre et regarde s'il possède une clé.~ */ GOTO 2
  IF ~~ THEN REPLY #24714 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ GOTO 2
  IF ~~ THEN REPLY #24717 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #24710 /* ~Le cadavre ne répond pas.~ */
  IF ~~ THEN REPLY #24711 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #42304 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY #24715 /* ~Ce cadavre doit être celui qui possède la clé. Il la tient serrée dans sa main gauche, le pouce et l'index comme figés autour. On dirait que tu vas être obligé d'arracher la main du corps pour récupérer la clé.~ */
  IF ~~ THEN REPLY #24716 /* ~"J'ai besoin de cette clé, cadavre… on dirait bien que tu ne vas pas faire long feu dans ce monde."~ */ DO ~ForceAttack(Protagonist,"ZM782")
~ EXIT
  IF ~~ THEN REPLY #42305 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
