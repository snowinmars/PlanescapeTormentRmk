// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39448 /* ~C'est ton animal de compagnie, Lim-Lim. Il remarque que tu le regardes et gazouille amoureusement. "Piyo !"~ */
  IF ~~ THEN REPLY #39449 /* ~Examine ton Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #42748 /* ~Dépose ton Lim-Lim pour le laisser courir un peu.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42749 /* ~Câline ton Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42750 /* ~Repousse ton Lim-Lim du pied.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42751 /* ~Arrête de jouer avec ton Lim-Lim pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42752 /* ~Ton Lim-Lim semble à la fois d'origine insecte et animale. Ses pattes postérieures sont surdimensionnées, tandis que ses pattes antérieures sont toutes petites, presque inexistantes. Une demi-carapace joliment tachetée recouvre son dos surmonté de deux paires d'ailes semblables à celles d'un insecte. Ses yeux noirs sont minuscules et sa bouche semble toujours afficher un sourire joyeux.~ */
  IF ~~ THEN REPLY #42753 /* ~Dépose ton Lim-Lim pour le laisser courir un peu.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42754 /* ~Câline ton Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42755 /* ~Repousse ton Lim-Lim du pied.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42756 /* ~Arrête de jouer avec ton Lim-Lim pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42757 /* ~"Piyo ! Piyo !" Le Lim-Lim se tortille gaiement, ses ailes bourdonnant. Il semble apprécier grandement cette affection.~ */
  IF ~~ THEN REPLY #42758 /* ~Dépose ton Lim-Lim pour le laisser courir un peu.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42759 /* ~Câline encore ton Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42760 /* ~Repousse ton Lim-Lim du pied.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42761 /* ~Arrête de jouer avec ton Lim-Lim pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42762 /* ~Tu essaies de donner un coup de pied au Lim-Lim, mais il t'échappe et s'envole pour se poser à terre !~ */
  IF ~~ THEN REPLY #42763 /* ~"Oup-là …"~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
END
