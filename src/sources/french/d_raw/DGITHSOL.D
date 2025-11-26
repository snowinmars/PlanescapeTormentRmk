// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHSOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHSOL~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #2917 /* ~Cet homme a une peau jaune pâle et des oreilles pointues. Ses yeux ressemblent à de petites pierres noires et il porte une cotte de mailles souple plaquée d'émail ouvragé. Il te regarde approcher avec méfiance, en mettant la main sur la garde de son épée. Il ne dit rien.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #2918 /* ~"Salut à toi, sonneur d'épées."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 2
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44575 /* ~"Bonjour, githyanki honoré."~ */ GOTO 3
  IF ~~ THEN REPLY #44576 /* ~"Je voudrais te poser quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #44578 /* ~"Je suis désolé, je crois que je me suis trompé de personne. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #44581 /* ~"Je n'adresse pas la parole à quelqu'un qui n'appartient pas au Peuple. Va voir Yi'minn si tu veux parler avec nous." Il continue à te regarder.~ */
  IF ~~ THEN REPLY #44582 /* ~"J'avais juste quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #44584 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #44585 /* ~En un éclair, il s'empare de son épée. "Tu t'adresses à moi à la manière des chiens githzeraïs ? Excuse-toi ou je te transperce le corps."~ */
  IF ~~ THEN REPLY #44587 /* ~"Que je m'excuse ? Non, je ne crois pas."~ */ GOTO 4
  IF ~~ THEN REPLY #44589 /* ~"Excuse-moi. Je croyais que tu étais un githzeraï."~ */ GOTO 4
  IF ~~ THEN REPLY #44591 /* ~"Je te présente mes excuses."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #44592 /* ~Il incline la tête, mais sa main ne quitte pas le manche de son épée.~ */
  IF ~~ THEN REPLY #44593 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 5
  IF ~~ THEN REPLY #44595 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 5.1 6.0
  SAY #44597 /* ~Dans une aspiration sifflante, il attaque !~ */
  IF ~~ THEN REPLY #44599 /* ~Bats-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44600 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 3.0
  SAY #44602 /* ~"Je ne réponds pas aux questions. Je suis un chevalier githyanki. Mes paroles sont mes actes. Va parler à Yi'minn ou ne parle pas aux githyankis."~ */
  IF ~~ THEN REPLY #44604 /* ~"Yi'minn ? Je le ferai. Où est-ce que je peux le trouver ?"~ */ GOTO 7
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44678 /* ~"Oh, tu es un githyanki ? À la puanteur que tu dégages, je croyais que tu étais un illithid. À moins que ça ne vienne de ton sang affaibli."~ */ GOTO 4
  IF ~~ THEN REPLY #44679 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #44680 /* ~"Inutile de continuer à mettre ma patience à l'épreuve. Va-t'en. Tout de suite."~ */
  IF ~~ THEN REPLY #44681 /* ~"J'ai juste quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #44682 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #44683 /* ~Il te regarde. "Cherche-le toi-même. Va-t'en maintenant. Cesse de mettre ma patience à l'épreuve."~ */
  IF ~~ THEN REPLY #44684 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
~ THEN BEGIN 8 // from:
  SAY #44685 /* ~Cet homme a la peau jaune pâle et les oreilles en pointes. Ses yeux sont semblables à deux petites pierres noires et il porte une armure souple couverte d'émaux travaillés. Quand ses yeux se posent sur Dak'kon, il s'empare de sa lame. "Chien githzeraï ! Viens te battre !"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 159
END

IF ~~ THEN BEGIN 9 // from:
  SAY #44686 /* ~"Tu te mettrais entre nous, humain ? Alors, tu mourras toi aussi." Il se rue sur toi.~ */
  IF ~~ THEN REPLY #44687 /* ~Bats-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44688 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44689 /* ~Les deux giths se ruent l'un sur l'autre.~ */
  IF ~~ THEN REPLY #44690 /* ~Attaque le githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44691 /* ~Laisse-les se battre.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
