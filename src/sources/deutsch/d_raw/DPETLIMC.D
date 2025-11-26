// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39450 /* ~Dies ist dein Haustier, ein Lim-Lim. Als es merkt, daß es deine Aufmerksamkeit hat, zirpt es dich liebevoll an. "Piyo!"~ */
  IF ~~ THEN REPLY #42733 /* ~Untersuche dein Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #42734 /* ~Heb dein Lim-Lim wieder auf.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42735 /* ~Streichle dein Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42736 /* ~Gib deinem Lim-Lim einen kräftigen Tritt.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42737 /* ~Hör auf, mit deinem Lim-Lim zu spielen.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42730 /* ~Dein Lim-Lim scheint eine Kreuzung aus einem Insekt und einem anderen Tier zu sein. Seine Beine sind überdimensional groß und seine Arme klein, fast rudimentär. Ein leuchtend gesprenkelter Halbpanzer bedeckt seinen Rücken. Es besitzt zwei Paar insektenartige Flügel und winzige schwarze Augen. Sein Mund scheint die ganze Zeit vergnügt zu grinsen.~ */
  IF ~~ THEN REPLY #42738 /* ~Heb dein Lim-Lim wieder auf.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42739 /* ~Streichle dein Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42740 /* ~Gib deinem Lim-Lim einen kräftigen Tritt.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42741 /* ~Hör auf, mit deinem Lim-Lim zu spielen.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42731 /* ~"Pijo! Pijo!" Das Lim-Lim hüpft fröhlich herum, seine Flügel summen. Es scheint die Zuwendung ganz besonders zu genießen.~ */
  IF ~~ THEN REPLY #42742 /* ~Heb dein Lim-Lim wieder auf.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42743 /* ~Streichle dein Lim-Lim noch etwas mehr.~ */ GOTO 2
  IF ~~ THEN REPLY #42744 /* ~Gib deinem Lim-Lim einen kräftigen Tritt.~ */ GOTO 3
  IF ~~ THEN REPLY #42745 /* ~Hör auf, mit deinem Lim-Lim zu spielen.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42732 /* ~Du willst dem Lim-Lim einen kurzen Tritt versetzen, doch es weicht dir geschickt aus. "Pijo!" Es dreht sich um und flieht mit schwirrenden Flügeln.~ */
  IF ~~ THEN REPLY #42746 /* ~Laß es gehen.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #42747 /* ~Jag ihm hinterher und versuch, es noch mal zu treten.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
END
