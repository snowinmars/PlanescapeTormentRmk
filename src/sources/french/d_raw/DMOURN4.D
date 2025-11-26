// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7084 /* ~"Je fais partie des pleureurs qui chantent à l'extérieur du kiosque des Hommes-Poussière au point AR0200 (Ruche B). Nous "pleurons les vivants" et le joueur peut nous demander de pleurer pour ceux qui ont perdu un être cher."~ */
  IF ~~ THEN REPLY #7085 /* ~"Merci pour le renseignement."~ */ EXIT
END
