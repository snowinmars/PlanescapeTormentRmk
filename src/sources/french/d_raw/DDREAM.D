// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDREAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDREAM~

IF ~  Global("Dream_Sequence","AR3017",0)
~ THEN BEGIN 0 // from:
  SAY #56043 /* ~Tu te trouves sous le nœud coulant d'une potence. Une voix râpeuse s'élève dans l'obscurité. "Te voilà encore à rêver ? Encore ! Encore !"~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56044 /* ~Ton corps semble étrangement léger et aérien, comme si tu ne le contrôlais plus, comme balayé au gré des vents.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut1",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",1)
~ THEN BEGIN 2 // from:
  SAY #56045 /* ~Tu t'aperçois que tu flottes à travers un dédale de plantes tordues et d'épines noires qui déchirent ton corps sans substance.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut2",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",2)
~ THEN BEGIN 3 // from:
  SAY #56046 /* ~Des créatures cauchemardesques sortent du sol et des murs… Elles te lacèrent les chairs. Sous leurs furieux assauts, tu perds conscience.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut3",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",3)
~ THEN BEGIN 4 // from:
  SAY #56047 /* ~Tu te trouves devant une tour de crânes qui te chuchote des choses, mais tu ne comprends rien. Derrière toi, un fracas… Tu vois un bataillon de fiélons se ruer sur toi.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut5",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",4)
~ THEN BEGIN 5 // from:
  SAY #56048 /* ~Tu te trouves encore une fois dans un dédale, entouré par la puanteur de la mort. Tu sais que tu les as tous tués. La voix caquetante se manifeste à nouveau.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56049 /* ~"Oh, ma jolie petite énigme, tu les as tués… ainsi que tant d'autres que j'en ai perdu le compte." Frappé de mutisme, tu ne peux répondre.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56050 /* ~"Viens à moi, marionnette… viens à Ravel dans son dédale de noirépine. Viens rêver avec moi."~ */
  IF ~~ THEN REPLY #56051 /* ~Secoue-toi pour te réveiller.~ */ DO ~TeleportParty("AR0502",[544.1539],14)
~ EXIT
END
