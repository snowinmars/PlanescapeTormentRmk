// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39450 /* ~C'est ton animal de compagnie, Lim-Lim. Il remarque que tu le regardes et gazouille amoureusement. "Piyo !"~ */
  IF ~~ THEN REPLY #42733 /* ~Examine ton Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #42734 /* ~Ramasse ton Lim-Lim.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42735 /* ~Câline ton Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42736 /* ~Repousse ton Lim-Lim du pied.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42737 /* ~Arrête de jouer avec ton Lim-Lim pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42730 /* ~Ton Lim-Lim semble à la fois d'origine insecte et animale. Ses pattes postérieures sont surdimensionnées, tandis que ses pattes antérieures sont toutes petites, presque inexistantes. Une demi-carapace joliment tachetée recouvre son dos surmonté de deux paires d'ailes semblables à celles d'un insecte. Ses yeux noirs sont minuscules et sa bouche semble toujours afficher un sourire joyeux.~ */
  IF ~~ THEN REPLY #42738 /* ~Ramasse ton Lim-Lim.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42739 /* ~Câline ton Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42740 /* ~Repousse ton Lim-Lim du pied.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42741 /* ~Arrête de jouer avec ton Lim-Lim pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42731 /* ~"Piyo ! Piyo !" Le Lim-Lim rebondit joyeusement, ses ailes bourdonnant. Il semble apprécier grandement cette affection.~ */
  IF ~~ THEN REPLY #42742 /* ~Ramasse ton Lim-Lim.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42743 /* ~Câline encore ton Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42744 /* ~Repousse ton Lim-Lim du pied.~ */ GOTO 3
  IF ~~ THEN REPLY #42745 /* ~Arrête de jouer avec ton Lim-Lim pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42732 /* ~Tu essaies de donner un vif coup de pied à ton Lim-Lim, mais il s'échappe d'un saut agile. "Piyo !" Il se tourne et s'enfuit, ses ailes bourdonnant.~ */
  IF ~~ THEN REPLY #42746 /* ~Laisse-le partir.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #42747 /* ~Poursuis-le et essaie de lui redonner un coup de pied.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
END
