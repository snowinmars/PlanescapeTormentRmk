// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAIDOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAIDOOR~

IF ~  GlobalLT("Know_Painted_Door","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #47816 /* ~Ce que tu as d'abord pris pour une porte dans ce porche est en réalité une peinture. L'artiste a utilisé les ombres de l'arche en surplomb et quelques subtils effets de texture pour donner l'illusion que la porte est réelle.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47817 /* ~"Tu es sûre que c'est la porte, Annah ?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47818 /* ~Ferme les yeux, ouvre la porte.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 1
  IF ~~ THEN REPLY #47819 /* ~Examine la porte.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ GOTO 2
  IF ~~ THEN REPLY #47820 /* ~Laisse la 'porte'.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1
  SAY #47822 /* ~Tu fermes les yeux, tends la main vers la porte et tâtonnes… À ta grande surprise, tu trouves une poignée. D'une légère poussée, la porte s'ouvre. Un étroit couloir mène au bâtiment et, de l'intérieur, tu entends au loin un hurlement.~ */
  IF ~~ THEN REPLY #47823 /* ~"C'est le moment d'y aller…"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",3)
SetDoorLocked("ar0400d1",FALSE)
OpenDoor("ar0400d1")
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #47824 /* ~Outre le talent de l'artiste, cette peinture n'a rien de remarquable. La 'porte' a été peinte sur un mur en pierre brut ; tu peux voir la pierre et le mortier sous la texture en bois peint.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47825 /* ~"Tu es sûre que c'est la porte, Annah ?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47826 /* ~Ferme les yeux, ouvre la porte.~ */ GOTO 1
  IF ~~ THEN REPLY #47827 /* ~Laisse la 'porte'.~ */ EXIT
END
