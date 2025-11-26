// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDBIRDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDBIRDS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #31493 /* ~Plusieurs éclats de cristal noir - ou de glace - tourbillonnent dans le vent glacé que souffle ce piédestal ornementé. Chaque éclat semble coupant comme une lame ; en toucher ou en saisir un pourrait être dangereux. Un écriteau sur le piédestal indique 'Les oiseaux noirs d'Ocanthus'.~ */
  IF ~~ THEN REPLY #31494 /* ~Laisse-les.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ EXIT
  IF ~~ THEN REPLY #31495 /* ~Touches-en un.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #31496 /* ~Prends-en un.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31497 /* ~Attrapes-en un dans ta Chope de bière givrée.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.1
  SAY #31498 /* ~Alors que tu tends le bras pour toucher l'un des éclats tourbillonnants, ton doigt pénètre dans le vent glacé qui s'échappe du piédestal. Aussitôt, une couche de gel se forme autour de ton doigt, te faisant momentanément reculer.~ */
  IF ~~ THEN REPLY #31499 /* ~Laisse-les.~ */ EXIT
  IF ~  HPLT(Protagonist,3)
~ THEN REPLY #31500 /* ~Remets ton doigt dedans et touches-en un.~ */ GOTO 2
  IF ~  HPGT(Protagonist,2)
~ THEN REPLY #31501 /* ~Remets ton doigt dedans et touches-en un.~ */ DO ~Damage(Protagonist,LOWER,2)
~ GOTO 3
  IF ~~ THEN REPLY #31502 /* ~Prends-en un.~ */ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31503 /* ~Attrapes-en un dans ta Chope de bière givrée.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #31504 /* ~Tu pointes soudain ton doigt dans le vent glacé. Même si tu ne t'en aperçois pas tout de suite, ton index gèle. Lorsqu'un des éclats noirs tournoyant le heurte, son extrémité se brise et ricoche sur le sol la galerie. Cette blessure, est normalement anodine ; dans ton état critique, elle entraîne la mort.~ */
  IF ~~ THEN REPLY #31505 /* ~Effondre-toi et meure.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #31506 /* ~Tu pointes soudain ton doigt dans le vent glacé. À ton insu, ton index gèle. Lorsqu'un des éclats tournoyants le heurte, son extrémité se brise et ricoche sur le sol de la galerie. Les Oiseaux Noirs de glace continuent à tourbillonner pendant que tu attends que ton doigt repousse.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31507 /* ~Attrapes-en un dans ta Chope de bière givrée.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31508 /* ~Pars, en espérant que personne n'a rien vu.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.3
  SAY #31509 /* ~Alors que tu tends le bras pour attraper l'un des éclats tournoyants, tes doigts pénètrent dans le vent glacé qui s'échappe du piédestal. Aussitôt, une couche de gel se forme autour d'eux, te faisant momentanément reculer.~ */
  IF ~~ THEN REPLY #31510 /* ~Laisse-les.~ */ EXIT
  IF ~~ THEN REPLY #31511 /* ~Touches-en juste un.~ */ GOTO 1
  IF ~  HPLT(Protagonist,6)
~ THEN REPLY #31512 /* ~Remets ta main dedans et attrapes-en un.~ */ GOTO 5
  IF ~  HPGT(Protagonist,5)
~ THEN REPLY #31513 /* ~Remets ta main dedans et attrapes-en un.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31514 /* ~Attrapes-en un dans ta Chope de bière givrée.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #31515 /* ~Tu pointes soudain ta main dans le vent glacé. À ton insu, elle gèle alors que tu essaies d'attraper l'un des Oiseaux Noirs. Lorsqu'un des éclats tournoyants la heurte, elle se brise au niveau du poignet et ricoche sur le sol de la galerie. Déjà en piètre condition physique, tu t'écroules, mourant.~ */
  IF ~~ THEN REPLY #31516 /* ~Meure.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #31517 /* ~Tu pointes soudain ta main dans le vent glacé. À ton insu, elle gèle alors que tu essaies d'attraper l'un des Oiseaux Noirs. Lorsqu'un des éclats tournoyants la heurte, elle se brise au niveau du poignet et ricoche sur le sol de la galerie.~ */
  IF ~~ THEN REPLY #31518 /* ~Ramasse ta main et refixe-la, vite !~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31519 /* ~Tu ramasses le poing couvert de gel et le places sur ton moignon sanglant, non sans remarquer que l'Oiseau Noir que tu as voulu saisir - un éclat de glace noire coupant comme un rasoir - a déjà fondu. Pour l'attraper, il faudra sans doute que tu le mettes dans quelque chose qui le garde froid. Ta main retrouve chaleur et sensations à mesure que tes tissus dégèlent et se régénèrent.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31520 /* ~Attrapes-en un dans ta Chope de bière givrée.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31521 /* ~Pars, en espérant que personne n'a rien vu.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.4 3.0 4.4 7.0
  SAY #31522 /* ~Tu 'immerges' la chope dans le vent glacé qui s'échappe du piédestal, attrapant un petit éclat dans un léger *cling*. En regardant dans la chope, tu peux voir que l'Oiseau noir est une lamelle de glace noire, coupante comme un rasoir. Seule la magie de la chope empêche l'éclat de fondre.~ */
  IF ~~ THEN REPLY #31523 /* ~Pars.~ */ EXIT
END
