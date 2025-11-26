// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITM~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19675 /* ~Cette goule aux yeux jaunes bave et empeste la charogne et le sang. Il cure ses crocs crochus avec des doigts longs et sales et renifle de façon nasillarde. Sa chair a pris une couleur verte morbide et il est couvert de pourriture et de plaies suintantes.~ */
  IF ~~ THEN REPLY #19683 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #19684 /* ~Laisse la goule.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19676 /* ~La goule ferme à moitié les yeux et gronde. Sa langue, qui est longue comme deux mains mises bout à bout, se déroule pour lécher ses lèvres répugnantes.~ */
  IF ~~ THEN REPLY #19685 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #19686 /* ~"Je dois m'en aller maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19677 /* ~La goule continue à te lorgner avec appétit. Il serre et desserre ses poings armés de griffes, comme s'il combattait le besoin impérieux de te sauter dessus pour te dévorer.~ */
  IF ~~ THEN REPLY #19687 /* ~"Calme-toi et réponds à mes questions."~ */ GOTO 3
  IF ~~ THEN REPLY #19688 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19678 /* ~La goule te siffle : "Silence, viande ! Pas parler ! J'écoute pas la viande ! J'écoute seulement ton cœur, le sang dans les veines de ta chair, sang doux, délicieux… goûteux, riche, viande du cœur…" De la bave dégouline de sa bouche, éclaboussant les tuiles poussiéreuses… "PAS PARLER !"~ */
  IF ~~ THEN REPLY #19689 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19679 /* ~La goule siffle à ton approche. "Va-t'en ! Va-t'en ! Je *parle* pas à la viande, j'*écoute* pas, viande ! VA-T'EN !"~ */
  IF ~~ THEN REPLY #19690 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19680 /* ~Cette goule aux yeux jaunes bave et empeste la charogne et le sang. Il cure ses crocs crochus avec des doigts longs et sales et renifle de façon nasillarde. Sa chair a pris une couleur verte morbide et il est couvert de pourriture et de plaies suintantes.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 202
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50419 /* ~Ce goule aux yeux jaunes bave et pue le sang et la charogne. Il cure ses crocs crochus avec des doigts longs et sales et renifle de façon nasillarde. Sa chair a pris une couleur verte morbide et il est couvert de pourriture et de plaies suintantes.~ */
  IF ~~ THEN REPLY #50420 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #50421 /* ~Laisse la goule.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
