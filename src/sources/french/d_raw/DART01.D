// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34187 /* ~Les centaines de morceaux de verre translucide et de couleur verte qui composent le vitrail de cette fenêtre ne semblent pas 'collés' ensemble… On dirait qu'ils flottent en restant mystérieusement suspendus dans le cadre de fer. Les tessons ondulent en vagues lentes, ce qui crée sur la surface de la fenêtre de curieux motifs là où, telle un prisme, elle réfracte la lumière de la galerie. Sur une petite pancarte près de la fenêtre, on peut lire : 'Fenêtre en vitrail d'Arcadie'.~ */
  IF ~~ THEN REPLY #42709 /* ~Touche le verre.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42710 /* ~Pars.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42706 /* ~Tu tends la main pour toucher les tessons de verre ondulés, mais en vain… Ta main s'arrête à la surface du verre.~ */
  IF ~~ THEN REPLY #42714 /* ~Brise le verre.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sglass_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #42717 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42708 /* ~Tu parviens seulement à te meurtrir les articulations ; le verre pourrait aussi bien être de la tôle.~ */
  IF ~~ THEN REPLY #42718 /* ~Pars.~ */ EXIT
END
