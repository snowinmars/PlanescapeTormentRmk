// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39448 /* ~Dies ist dein Haustier, ein Lim-Lim. Als es merkt, daß es deine Aufmerksamkeit hat, zirpt es dich liebevoll an. "Piyo!"~ */
  IF ~~ THEN REPLY #39449 /* ~Untersuche dein Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #42748 /* ~Setz dein Lim-Lim ab, damit es ein wenig herumrennen kann.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42749 /* ~Streichle dein Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42750 /* ~Gib deinem Lim-Lim einen kräftigen Tritt.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42751 /* ~Hör auf, mit deinem Lim-Lim zu spielen.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42752 /* ~Dein Lim-Lim scheint eine Kreuzung aus einem Insekt und einem anderen Tier zu sein. Seine Beine sind überdimensional groß und seine Arme klein, fast rudimentär. Ein leuchtend gesprenkelter Halbpanzer bedeckt seinen Rücken. Es besitzt zwei Paar insektenartige Flügel und winzige schwarze Augen. Sein Mund scheint die ganze Zeit vergnügt zu grinsen.~ */
  IF ~~ THEN REPLY #42753 /* ~Setz dein Lim-Lim ab, damit es ein wenig herumrennen kann.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42754 /* ~Streichle dein Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42755 /* ~Gib deinem Lim-Lim einen kräftigen Tritt.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42756 /* ~Hör auf, mit deinem Lim-Lim zu spielen.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42757 /* ~"Pijo! Pijo!" Das Lim-Lim zappelt fröhlich herum. Seine Flügel schwirren. Es scheint die Zuwendung ganz besonders zu genießen.~ */
  IF ~~ THEN REPLY #42758 /* ~Setz dein Lim-Lim ab, damit es ein wenig herumrennen kann.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42759 /* ~Streichle dein Lim-Lim noch etwas mehr.~ */ GOTO 2
  IF ~~ THEN REPLY #42760 /* ~Gib deinem Lim-Lim einen kräftigen Tritt.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42761 /* ~Hör auf, mit deinem Lim-Lim zu spielen.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42762 /* ~Du versuchst, das Lim-Lim zu treten, doch es befreit sich aus deiner Hand und fliegt auf den Boden!~ */
  IF ~~ THEN REPLY #42763 /* ~"Huch..."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
END
