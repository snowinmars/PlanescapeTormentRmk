// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19696 /* ~Cette femme-goule empeste la charogne et le sang. Des scarabées et des vers rampent dans ses longs cheveux filandreux, qu'elle écarte de ses yeux jaunes avec ses doigts crochus. Sa chair couverte de pourriture et de plaies suintantes a pris une couleur verte morbide.~ */
  IF ~~ THEN REPLY #19705 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #19706 /* ~Laisse la goule.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19697 /* ~La goule ferme à moitié ses yeux et gronde. Sa langue, qui est longue comme deux mains mises bout à bout, se déroule pour lécher ses lèvres répugnantes.~ */
  IF ~~ THEN REPLY #19707 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #19708 /* ~"Je dois m'en aller maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19698 /* ~La femme-goule continue à te lorgner avec appétit. Elle serre et desserre ses poings armés de griffes, comme si elle combattait le besoin impérieux de te sauter dessus pour te dévorer.~ */
  IF ~~ THEN REPLY #19709 /* ~"Calme-toi et réponds à mes questions."~ */ GOTO 3
  IF ~~ THEN REPLY #19710 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19699 /* ~La femme-goule pousse un cri perçant. "Silence, viande ! Pas parler ! J'écoute pas la viande ! J'écoute seulement ton cœur, le sang dans les veines de ta chair, sang doux, délicieux… goûteux, riche, viande du cœur…" De la bave dégouline de sa bouche, éclaboussant les tuiles poussiéreuses… "PAS PARLER !"~ */
  IF ~~ THEN REPLY #19711 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19700 /* ~La femme-goule te hurle dessus lorsque tu t'approches : "Va-t'en ! Va-t'en ! Je *parle* pas à la viande, j'*écoute* pas, viande ! VA-T'EN !"~ */
  IF ~~ THEN REPLY #19712 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19701 /* ~Cette femme-goule empeste la charogne et le sang. Des scarabées et des vers rampent dans ses longs cheveux filandreux, qu'elle écarte de ses yeux jaunes avec ses doigts crochus. Sa chair couverte de pourriture et de plaies suintantes a pris une couleur verte morbide.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 204
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50422 /* ~Cette goule femelle empeste la charogne et le sang. Des scarabées et des vers rampent dans ses longs cheveux filandreux, qu'elle écarte de ses yeux jaunes avec ses doigts crochus. Sa chair couverte de pourriture et de plaies suintantes a pris une couleur verte morbide.~ */
  IF ~~ THEN REPLY #50423 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #50425 /* ~Laisse la goule.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
