// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINGER~

IF ~  Global("Finger","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #17479 /* ~C'est la phalange en état de décomposition avancée et presque décharnée d'un humanoïde de ta taille environ. Une sorte d'anneau bizarre se trouve encore sur le doigt. C'est un anneau complexe, formé de bandelettes tordues et entrelacées qui ressemblent à des sarments ou à des tentacules.~ */
  IF ~~ THEN REPLY #17485 /* ~Ôte l'anneau du doigt.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #17486 /* ~Range la phalange.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ EXIT
END

IF ~  Global("Finger","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17480 /* ~Tu sors la vieille phalange pour l'examiner à nouveau. C'est la phalange en état de décomposition avancée et presque décharnée d'un humanoïde de ta taille environ. Une sorte d'anneau bizarre se trouve encore sur le doigt. C'est un anneau complexe, formé de bandelettes tordues et entrelacées qui ressemblent à des sarments ou à des tentacules.~ */
  IF ~~ THEN REPLY #17487 /* ~Ôte l'anneau du doigt.~ */ GOTO 2
  IF ~~ THEN REPLY #17488 /* ~Range la phalange.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17481 /* ~Malgré tous tes efforts, tu ne peux pas retirer l'anneau. On dirait que ses bandelettes se sont enfoncées dans le doigt sans vie et refusent de le libérer. Mais tu éprouves une sensation étrange…~ */
  IF ~  HPLT(Protagonist,5)
~ THEN REPLY #17489 /* ~Enlève ton doigt, remplace-le par la phalange.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 3
  IF ~  HPGT(Protagonist,4)
~ THEN REPLY #17490 /* ~Enlève ton doigt, remplace-le par la phalange.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 4
  IF ~~ THEN REPLY #17491 /* ~Range la phalange.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17482 /* ~Tu places l'annulaire de ta main gauche dans la bouche, tu fermes les yeux, tu inspires profondément et tu mords aussi fort que tu le peux. Il se produit un *craquement* écœurant et tu es envahi par le goût et l'odeur du sang. Malheureusement, ton corps n'est pas en état de recevoir une autre punition et tu t'effondres sur le sol, mourant.~ */
  IF ~~ THEN REPLY #17492 /* ~Terminé.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #17483 /* ~Tu places l'annulaire de ta main gauche dans la bouche, tu fermes les yeux, tu inspires profondément et tu mords aussi fort que tu le peux. Il se produit un *craquement* écœurant et tu es envahi par le goût et l'odeur du sang. Tu craches le doigt ensanglanté et tu places la phalange à l'anneau pourri contre le moignon dégoulinant…~ */
  IF ~~ THEN REPLY #17493 /* ~Continue…~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17484 /* ~D'abord, rien ne se passe et tu es horrifié à la pensée de ce que tu viens de faire. Mais soudain, tu ressens un étrange fourmillement tandis que les os et les tendons fusionnent. En un rien de temps, la phalange pourrissante est devenue une partie vivante de ton corps, bien que tu ressentes encore une douleur lancinante. L'anneau cède et glisse dans la paume de ta main.~ */
  IF ~~ THEN REPLY #17494 /* ~Terminé.~ */ DO ~TransformPartyItem("Finger","Jring",1,0,0)
~ EXIT
END
