// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCELEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCELEST~

IF ~  Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 0 // from:
  SAY #59104 /* ~Tu tiens Feu Céleste entre tes mains et la lame flamboie d'un feu blanc qui chante dans ta tête. Soudain il t'apparaît que tu pourras plier cette arme à tes désirs *une fois et une seule*.~ */
  IF ~~ THEN REPLY #64490 /* ~Souhaite qu'elle devienne un marteau.~ */ DO ~TransformPartyItem("Celesti2","CFHammer",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #64491 /* ~Souhaite qu'elle devienne une hache.~ */ DO ~TransformPartyItem("Celesti2","CFAxe",1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #64492 /* ~Souhaite que cela devienne une gourdin.~ */ DO ~TransformPartyItem("Celesti2","CFClub",1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #64493 /* ~Souhaite qu'elle devienne un gantelet à pointes.~ */ DO ~TransformPartyItem("Celesti2","CFFist",1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #64494 /* ~Souhaite qu'elle devienne une dague.~ */ DO ~TransformPartyItem("Celesti2","CFDagger",1,0,0)
~ GOTO 6
  IF ~~ THEN REPLY #64495 /* ~Laisse l'épée comme elle est pour l'instant.~ */ EXIT
END

IF ~  !Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 1 // from:
  SAY #64496 /* ~Cette arme très lourde est inerte dans tes mains. Elle est faite d'un argent extrêmement pur. Mais rien ne se passe, même en te concentrant très fort.~ */
  IF ~~ THEN REPLY #64497 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64498 /* ~La lame de l'arme s'allonge, son tranchant s'émousse tandis que le métal coule vers le bout de l'épée à une vitesse incroyable. En quelques instants, l'arme est devenue un marteau extrêmement bien équilibré. C'est une œuvre superbe.~ */
  IF ~~ THEN REPLY #64507 /* ~"Excellent."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64499 /* ~La lame de l'arme s'allonge et s'arrondit. Son tranchant disparaît tandis que le métal coule vers le bout de l'épée à une vitesse incroyable. En quelques instants, l'arme est devenue une hache extrêmement bien équilibrée. C'est une œuvre superbe.~ */
  IF ~~ THEN REPLY #64505 /* ~"Excellent."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64500 /* ~La garde de l'épée se met à fondre tandis que ses tranchants disparaissent et s'arrondissent pour former une superbe poignée couverte des mêmes nervures que celles de l'épée. En quelques instants, l'arme est devenue un gourdin extrêmement bien équilibré.~ */
  IF ~~ THEN REPLY #64506 /* ~"Excellent."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #64501 /* ~Tes yeux n'arrivent pas à suivre la transformation de la lame en gantelets, mais tu peux sentir le métal s'agiter dans tes mains. Quand tu les ouvres, tu découvres un paire de gantelets d'argent magnifiques - et mortels.~ */
  IF ~~ THEN REPLY #64504 /* ~"Excellent."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY #64502 /* ~La lame de l'épée se rétracte sur elle-même, et en un instant, tu découvres une version miniature de l'épée de Trias, dotée d'une belle poignée. Elle semble particulièrement maniable.~ */
  IF ~~ THEN REPLY #64503 /* ~"Excellent."~ */ EXIT
END
