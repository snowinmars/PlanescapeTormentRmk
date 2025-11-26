// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2921 /* ~Les yeux de cette femme githzeraï au visage dur sont emplis de haine. "*Sache* que tu m'as volé les miens. *Sache* que tu vas *souffrir.*" Ses mains commencent à tracer un symbole lumineux en l'air.~ */
  IF ~~ THEN REPLY #2922 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43584 /* ~Bats-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43585 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #43586 /* ~Cette femme a le teint jaune et des traits sévères. Son corps est couvert de tatouages et elle porte une longue lame sur la hanche. Ses yeux ressemblent à deux petites perles noires. À ton approche, ils suivent tes déplacements.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43587 /* ~"Salut à toi, sonneur d'épées."~ */ GOTO 3
  IF ~~ THEN REPLY #43588 /* ~"Bonjour."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43589 /* ~"Tu connais la forteresse Vristigor ?"~ */ GOTO 7
  IF ~~ THEN REPLY #43590 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #43591 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 3
  IF ~~ THEN REPLY #43592 /* ~"Désolé, je me suis trompé de personne. Au revoir."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #43593 /* ~Cette femme a le teint jaune et des traits sévères. Son corps est couvert de tatouages et elle porte une longue lame sur la hanche. Ses yeux ressemblent à deux petites perles noires. À ton approche, ils suivent tes déplacements.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43594 /* ~"Salut à toi, sonneur d'épées."~ */ GOTO 3
  IF ~~ THEN REPLY #43595 /* ~"Bonjour."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43596 /* ~"Tu connais la forteresse Vristigor ?"~ */ GOTO 7
  IF ~~ THEN REPLY #43597 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #43598 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 3
  IF ~~ THEN REPLY #43599 /* ~"Désolé, je me suis trompé de personne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.3 1.4 2.0 2.1 2.3 2.4
  SAY #43600 /* ~"Le Peuple… *sait* que tu es un ami. Je ne *sais* encore rien de toi. Je ne peux pas t'aider."~ */
  IF ~~ THEN REPLY #43601 /* ~"J'avais juste quelques questions…"~ */ GOTO 4
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43602 /* ~"Tu connais la forteresse Vristigor ?"~ */ GOTO 7
  IF ~~ THEN REPLY #43603 /* ~"Peut-être une autre fois, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43604 /* ~Ses yeux scintillent tout en te fixant. "Écoute mes paroles et *sache* ce que pense mon esprit : je ne peux pas t'aider. Va-t'en."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43605 /* ~"Tu connais la forteresse Vristigor ?"~ */ GOTO 7
  IF ~~ THEN REPLY #43606 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 5 // from:
  SAY #43607 /* ~"Je ne *sais* encore rien de toi. *Sache* que je n'ai rien à te dire."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43608 /* ~"Tu connais la forteresse Vristigor ?"~ */ GOTO 7
  IF ~~ THEN REPLY #43609 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #43610 /* ~"Je ne *sais* encore rien de toi. *Sache* que je n'ai rien à te dire."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43611 /* ~"Tu connais la forteresse Vristigor ?"~ */ GOTO 7
  IF ~~ THEN REPLY #43612 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 3.1 4.0 5.0 6.0 23.2 24.2
  SAY #43613 /* ~Elle se raidit légèrement. "Comment *sais-tu* ce nom ?"~ */
  IF ~~ THEN REPLY #43614 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 8
  IF ~~ THEN REPLY #43615 /* ~"Une rumeur qui courait."~ */ GOTO 9
  IF ~~ THEN REPLY #43616 /* ~"Laisse tomber."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0 10.0
  SAY #43617 /* ~Son regard te transperce comme une flèche. Tu sens qu'elle te teste. "*Sache* que le peuple githzeraï t'est reconnaissant. Ceci ne sera pas oublié. Que le soleil se couche sur Haldar, voyageur - Je dois prévenir mon peuple."~ */
  IF ~~ THEN REPLY #43618 /* ~"Alors, bonne chance et au revoir."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~J'ai dit à une githzeraï de passage que les githyankis s'apprêtaient à attaquer la forteresse de Vristigor. Elle est partie sans perdre une seconde.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 7.2
  SAY #43619 /* ~Son regard se durcit. "Donne-moi ta source."~ */
  IF ~~ THEN REPLY #43620 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 8
  IF ~~ THEN REPLY #43621 /* ~"Je ne te dirai rien."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #43622 /* ~"Que l'Œil de Vilquar se pose sur toi si tu ne me le dis pas !"~ */
  IF ~~ THEN REPLY #43623 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 8
  IF ~~ THEN REPLY #43624 /* ~"Pourquoi je te le dirais ?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #43625 /* ~D'un sifflement, elle fait apparaître devant toi un éclair bleu…~ */
  IF ~~ THEN REPLY #43626 /* ~Bats-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43627 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #5 ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #43628 /* ~Cette femme a le teint jaune et des traits sévères. Son corps est couvert de tatouages et elle porte une longue lame sur la hanche. Ses yeux ressemblent à deux petites perles noires. À ton approche, ils suivent tes déplacements. "Zerchai et les siens te saluent. Je *sais* tout de ta sagesse et de ta collaboration. Dis-moi en quoi je puis t'être utile."~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43629 /* ~"Et le voyageur en est heureux. J'espérais que tu pourrais répondre à quelques questions."~ */ GOTO 13
  IF ~~ THEN REPLY #43630 /* ~"J'ai quelques questions à te poser."~ */ GOTO 13
  IF ~~ THEN REPLY #43631 /* ~"Qui es-tu ?"~ */ GOTO 14
  IF ~~ THEN REPLY #43632 /* ~"Désolé, je me suis trompé de personne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 16.0 17.1 19.0 20.0 21.0 22.0
  SAY #43633 /* ~"Dis ce que tu penses. Je t'écoute."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43634 /* ~"Quelle est la différence entre les githyankis et les githzeraïs ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43635 /* ~"Quelle est la différence entre les githyankis et les githzeraïs ?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43636 /* ~"Tu peux m'apprendre les expressions githzeraïs ?"~ */ GOTO 18
  IF ~~ THEN REPLY #43637 /* ~"Tu peux m'apprendre la Voie de Zerthimon ?"~ */ GOTO 22
  IF ~~ THEN REPLY #43638 /* ~"Je n'ai pas d'autres questions pour le moment. Merci de m'avoir accordé un peu de temps."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #43639 /* ~"Je m'appelle Kii'na. Je suis une *zerth*. J'enseigne la Voie de Zerthimon et je guide le Peuple vers sa destinée."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43640 /* ~"Quelle est la différence entre les githyankis et les githzeraïs ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43641 /* ~"Quelle est la différence entre les githyankis et les githzeraïs ?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43642 /* ~"Tu peux m'apprendre les expressions githzeraïs ?"~ */ GOTO 18
  IF ~~ THEN REPLY #43643 /* ~"Tu peux m'apprendre la Voie de Zerthimon ?"~ */ GOTO 22
  IF ~~ THEN REPLY #43644 /* ~"Je n'ai pas d'autres questions pour le moment. Merci de m'avoir accordé un peu de temps."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 13.4 14.4
  SAY #43645 /* ~"Que le soleil se couche sur Haldar, voyageur. Tu es comme Elezpah sur la montagne, vaillant et téméraire."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
~ THEN REPLY #43646 /* ~"J'ai dîné à la table de Toryg. Au revoir." ("Je suis très reconnaissant.")~ */ EXIT
  IF ~~ THEN REPLY #43647 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #6 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #43648 /* ~"Salut à toi, sonneur d'épées."~ */
  IF ~~ THEN REPLY #43649 /* ~"Salut à toi. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #43650 /* ~"Salut à toi, Kii'na. Et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 14.1
  SAY #43651 /* ~Elle te regarde *durement* quelques instants. "Gith était une grand guerrière qui a délivré notre peuple de la captivité à l'époque des seigneurs esclavagistes *illithids*. Zerthimon était son lieutenant. Quand ils eurent tous deux délivré notre peuple, Gith se présenta à Zerthimon sur les Plaines désolées. Des paroles furent prononcées, le fer fut croisé - et le peuple se scinda en deux camps. Ceux qui restèrent aux côtés de la reine-garce prirent le nom de Githyanki. Et ceux d'entre nous qui suivirent le chemin de Zerthimon restèrent fidèles au Peuple et prirent le nom de Githzeraï."~ */
  IF ~~ THEN REPLY #43652 /* ~"Et c'est pour ça que vous vous détestez autant ?"~ */ JOURNAL #39486 /* ~J'ai découvert que la rivalité opposant githyankis et githzeraïs découle d'une histoire commune. Depuis leur séparation, chacune des deux races hait ce que l'autre est devenue. Comme il est étrange que deux cultures issues du même moule puissent devenir aussi diamétralement opposées.~ */ GOTO 20
  IF ~~ THEN REPLY #43653 /* ~"Je vois. J'avais d'autres questions…"~ */ JOURNAL #39486 /* ~J'ai découvert que la rivalité opposant githyankis et githzeraïs découle d'une histoire commune. Depuis leur séparation, chacune des deux races hait ce que l'autre est devenue. Comme il est étrange que deux cultures issues du même moule puissent devenir aussi diamétralement opposées.~ */ GOTO 13
  IF ~~ THEN REPLY #43654 /* ~"Grand merci. Au revoir."~ */ JOURNAL #39486 /* ~J'ai découvert que la rivalité opposant githyankis et githzeraïs découle d'une histoire commune. Depuis leur séparation, chacune des deux races hait ce que l'autre est devenue. Comme il est étrange que deux cultures issues du même moule puissent devenir aussi diamétralement opposées.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 14.2
  SAY #43655 /* ~"La langue githzeraï est basée sur l'histoire de notre peuple. Pour nous, tout a toujours un rapport avec l'histoire ; la métaphore est un outil puissant, un moyen d'inspirer l'héroïsme à notre peuple, et un effet dissuasif contre l'infamie. Quand nous parlons de la 'table de Toryg', nous nous souvenons que Toryg était connu pour son sens de l'hospitalité et sa gentillesse. Quand nous parlons du 'cœur de Selqant', nous nous souvenons de la nature débauchée et cruelle de Selqant. Tu comprends ?"~ */
  IF ~~ THEN REPLY #43656 /* ~"Oui."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Kii'na le *zerth* m'a beaucoup appris pour ce qui est de la langue des githzeraïs. Apparemment, elle repose principalement sur les métaphores, les allégories et l'histoire des githzeraïs.~ */ GOTO 21
  IF ~~ THEN REPLY #43657 /* ~"Non."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #43658 /* ~"Alors, je ne peux rien t'enseigner d'autre."~ */
  IF ~~ THEN REPLY #43659 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #43660 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #43661 /* ~"Nos deux peuples sont comme la mule de Penansk - têtus, aveugles et importuns. En plus de ça, les githyankis sont cruels. Ils nous haïssent en raison de notre élévation vers des domaines qu'ils ne peuvent comprendre."~ */
  IF ~~ THEN REPLY #43662 /* ~"Je vois. J'avais d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #43663 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0
  SAY #43664 /* ~Ta formation commence :
Un sage 'a écrit le livre des anarques'.
Accuser quelqu'un de trahison équivaut à se souvenir de 'l'Œil de Vilquar'.
On dit des gens généreux que leurs 'placards sont vides'.
Parmi les formules de politesse, on trouve 'Salut à toi, sonneur d'épées' et 'Zerchai et les siens te saluent', ce à quoi tu dois répondre : 'Et le voyageur en est heureux'.
Ton esprit est empli d'autres phrases comme celles-là.~ */
  IF ~~ THEN REPLY #43665 /* ~"Merci beaucoup, Kii'na. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #43666 /* ~"Merci beaucoup, Kii'na. Que le soleil se couche sur Haldar." ("Ce fut un grand plaisir.")~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.3 14.3
  SAY #43667 /* ~"Je ne peux pas. Tu es trop divisé, trop… humain… pour *connaître* la Voie."~ */
  IF ~~ THEN REPLY #43668 /* ~"Je vois. J'ai encore quelques questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #43669 /* ~"Merci beaucoup, Kii'na. Au revoir."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #43670 /* ~Cette femme a le teint jaune et des traits sévères. Son corps est couvert de tatouages et elle porte une longue lame sur la hanche. Ses yeux ressemblent à deux petites perles noires. À ton approche, ils suivent tes déplacements.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43671 /* ~"Salut à toi, sonneur d'épées."~ */ GOTO 26
  IF ~~ THEN REPLY #43672 /* ~"Bonjour."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43673 /* ~"Tu connais la forteresse Vristigor ?"~ */ GOTO 7
  IF ~~ THEN REPLY #43674 /* ~"Qui es-tu ?"~ */ GOTO 25
  IF ~~ THEN REPLY #43675 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 25
  IF ~~ THEN REPLY #43676 /* ~"Désolé, je me suis trompé de personne. Au revoir."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #43677 /* ~À ton approche, ses yeux te fixent calmement.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43678 /* ~"Salut à toi, sonneur d'épées."~ */ GOTO 26
  IF ~~ THEN REPLY #43812 /* ~"Bonjour."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43813 /* ~"Tu connais la forteresse Vristigor ?"~ */ GOTO 7
  IF ~~ THEN REPLY #43814 /* ~"Qui es-tu ?"~ */ GOTO 25
  IF ~~ THEN REPLY #43815 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 25
  IF ~~ THEN REPLY #43816 /* ~"Désolé, je me suis trompé de personne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.3 23.4 24.1 24.3 24.4
  SAY #43684 /* ~Elle reste impassible. "Je ne… *sais* rien de toi. Cette rencontre ne peut nous être d'aucun avantage. Au revoir."~ */
  IF ~~ THEN REPLY #43685 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0 24.0
  SAY #43686 /* ~"Je ne *sais* rien de toi, pourtant tu me salues à la manière de mon peuple. Peu importe… Je ne peux pas t'aider, voyageur. Au revoir."~ */
  IF ~~ THEN REPLY #43687 /* ~"Le bateau couvert de sel prend la mer."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 60 even though they appear after this state */
~  NearbyDialog("DDakkon")
Global("Dakkon_Know_Kiina","AR0500",0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #43688 /* ~Cette femme a le teint jaune et des traits sévères. Son corps est couvert de tatouages et elle porte une longue lame sur la hanche. Ses yeux ressemblent à deux petites perles noires. À ton approche, ils suivent les déplacements de Dak'kon.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 133
END

IF WEIGHT #11 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 28 // from:
  SAY #43689 /* ~La *zerth* fixe Dak'kon d'un regard noir alors qu'il retourne vers toi. Elle te tourne le dos, comme si elle mettait Dak'kon au défi de frapper.~ */
  IF ~~ THEN REPLY #43690 /* ~"Dak'kon, tue-la."~ */ EXTERN ~DDAKKON~ 137
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43691 /* ~"Ça suffit, Kii'na. Est-ce que tu connais la forteresse Vristigor ?"~ */ GOTO 36
  IF ~~ THEN REPLY #43692 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #43693 /* ~À ton approche, elle t'ignore. Dak'kon la salue discrètement, ce qu'elle ignore également. Elle adresse une série de paroles désagréables à Dak'kon et il répond sur le même ton, ce qui semble la rendre furieuse.~ */
  IF ~~ THEN REPLY #43694 /* ~"Dak'kon, tu peux me traduire ?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #43695 /* ~"Qu'est-ce qu'elle a dit ?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43696 /* ~"Demande-lui si elle connaît la forteresse Vristigor."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 36
  IF ~~ THEN REPLY #43697 /* ~Attends.~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #43698 /* ~"Allons-nous-en d'ici."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from:
  SAY #43699 /* ~"Pourquoi insultes-tu le Cercle ininterrompu de Zerthimon en continuant à le porter sur ton cœur ? Tu ne fais pas partie du Peuple, traître de Shra'kt'lor ! Les anarques et les *zerths* ont parlé et leurs paroles doivent être respectées. Tu ne dois pas dire ce que tu penses… ni à moi, ni à aucun *zerth*."~ */
  IF ~~ THEN DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ EXTERN ~DDAKKON~ 145
END

IF ~~ THEN BEGIN 31 // from: 29.4
  SAY #43700 /* ~Dak'kon lui coupe la parole en la saluant froidement. Elle détourne la tête de lui.~ */
  IF ~~ THEN REPLY #43701 /* ~"Allons-y."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 29.1
  SAY #43702 /* ~"Inutile qu'il te traduise. Je vais te parler. Tu n'es qu'un humain au visage couvert de cicatrices et de sang, tu es indigne d'entendre les paroles de Zerthimon. Mais il m'a convaincue de t'autoriser à m'écouter. Je veux *connaître* ta volonté."~ */
  IF ~~ THEN REPLY #43703 /* ~"J'avais juste quelques questions…"~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43704 /* ~"Tu connais la forteresse Vristigor ?"~ */ GOTO 36
  IF ~~ THEN REPLY #43705 /* ~"Je ne veux rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #43706 /* ~Elle semble à la fois amusée et consternée. "Oui, vas-y, Dak'kon. Que la trahison sorte de ton cœur de githyanki." Elle lui tend sa gorge dénudée.~ */
  IF ~~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXTERN ~DDAKKON~ 138
END

IF ~~ THEN BEGIN 34 // from:
  SAY #43707 /* ~Elle s'adresse de nouveau à Dak'kon. "Préfères-tu obéir à un étranger du Peuple ? Ses paroles ont-elles plus de poids que celles d'un *zerth* ? Tu es complètement perdu, Dak'kon. Comment en es-tu arrivé là ?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 139
END

IF ~~ THEN BEGIN 35 // from:
  SAY #43708 /* ~"Tu t'es égaré, Dak'kon. *Sache* que je te souhaite de trouver ton chemin. Je te plains. Au revoir."~ */
  IF ~~ THEN REPLY #43709 /* ~"Allons-y, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.2 32.1
  SAY #43710 /* ~Elle te regarde - méchamment. "Comment *connais-tu* ce nom, toi qui marche dans l'ombre d'un paria ?"~ */
  IF ~~ THEN REPLY #43711 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 37
  IF ~~ THEN REPLY #43712 /* ~"Une rumeur qui courait."~ */ GOTO 38
  IF ~~ THEN REPLY #43713 /* ~"Laisse tomber."~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0 38.0 41.4 42.2 52.4 55.2 60.1
  SAY #43714 /* ~"*Sache*… *Sache* que je vous suis très reconnaissante… à toi et à ce *zerth*. *Sache* que je ne l'oublierai pas." Elle se tourne vers Dak'kon. "*Sache* que ceci ne rachètera PAS la chute de Shra'kt'lor. Le verdict des anarques est toujours valable."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43715 /* ~"Hmmm… Au revoir."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
SetGlobal("Shrakatlor","GLOBAL",1)
EscapeArea()
~ JOURNAL #39489 /* ~J'ai dit à une githzeraï de passage que les githyankis s'apprêtaient à attaquer la forteresse de Vristigor. Elle est partie sans perdre une seconde.~ */ EXIT
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43716 /* ~"Hmmm… Au revoir."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~J'ai dit à une githzeraï de passage que les githyankis s'apprêtaient à attaquer la forteresse de Vristigor. Elle est partie sans perdre une seconde.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2
  SAY #43717 /* ~"Je dois *savoir* où tu as entendu ce nom."~ */
  IF ~~ THEN REPLY #43718 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 37
  IF ~~ THEN REPLY #43719 /* ~"N'ai-je pas été assez clair ? Je ne te le dirai pas."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #43720 /* ~"Œil de Vilquar !" Elle se tourne vers Dak'kon. "Fais-le parler !"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 140
END

IF ~~ THEN BEGIN 40 // from:
  SAY #43721 /* ~"Alors, vous mourrez tous les deux." Ses mains commencent à décrire des gestes d'incantations.~ */
  IF ~~ THEN REPLY #43722 /* ~Bats-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43723 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.3
  SAY #43724 /* ~Après un nouvel échange, la femme cesse soudain de parler à Dak'kon. "Je ne t'écouterai pas. C'est toi qui vas m'écouter, humain. Je ne *sais* rien de toi, mais ton apparat ne me dit rien qui vaille. Ton corps est un livre couvert de cicatrices et de sang, et tu marches dans l'ombre d'un paria qui ne *sait* rien de Zerthimon et qui ne *sait* rien de lui-même. Dis ce que tu penses !"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43725 /* ~"Salut à toi, sonneur d'épées."~ */ GOTO 42
  IF ~~ THEN REPLY #43726 /* ~"Bonjour."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43727 /* ~"Dans l'ombre d'un paria ? Qu'est-ce que tu veux dire ?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43728 /* ~"Dans l'ombre d'un paria ? Qu'est-ce que tu veux dire ?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43729 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43730 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43731 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43732 /* ~"Tu peux m'apprendre la langue githzeraï ?"~ */ GOTO 56
  IF ~~ THEN REPLY #43733 /* ~"Tu peux m'apprendre la Voie de Zerthimon ?"~ */ GOTO 59
  IF ~~ THEN REPLY #43734 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 52.0 52.1
  SAY #43735 /* ~Elle siffle d'irritation. "Tes civilités ne sont que du vent. Le signe du deuil est proche - le temps presse, humain. Je veux *connaître* tes questions, ensuite ma volonté sera que tu partes."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43736 /* ~"Qu'est-ce que tu insinuais en disant que je marchais dans l'ombre d'un paria ?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43737 /* ~"Qu'est-ce que tu insinuais en disant que je marchais dans l'ombre d'un paria ?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43738 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43739 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43740 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43741 /* ~"Tu peux m'apprendre la langue githzeraï ?"~ */ GOTO 56
  IF ~~ THEN REPLY #43742 /* ~"Tu peux m'apprendre la Voie de Zerthimon ?"~ */ GOTO 59
  IF ~~ THEN REPLY #43743 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.2 41.3 42.0 42.1 52.2 52.3 55.0 55.1 61.0 61.1
  SAY #43744 /* ~"Tu marches aux côtés d'un paria et tu ne *sais* rien de son histoire ? Il est prompt à prononcer d'autres paroles, mais sur son histoire, il est resté silencieux ? Demande-lui de te parler de Shra'kt'lor, de la chute d'une puissante forteresse face aux githyankis, et tu verras ce que son esprit divisé te révélera. Demande-lui comment il parle avec les mots de Zerthimon, mais sa lame de *karach* est comme la brume."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 141
END

IF ~~ THEN BEGIN 44 // from:
  SAY #43745 /* ~"Il n'y a aucun doute sur la façon dont l'esprit de Zerthimon s'exprime. Des générations de *zerth* sont comme le Joyau de Rrakma, unis sur ce sujet. Ton attitude trahit un esprit divisé. Le doute est le tien, un écho lancé par ta propre infidélité."~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 142
END

IF ~~ THEN BEGIN 45 // from:
  SAY #43746 /* ~"Tu demeureras avec les morts de Shra'kt'lor dans le chaos mouvant, car tu vois tout avec l'Œil de Vilquar. Ton esprit est divisé, ta lame de *karach* est vulnérable !"~ */
  IF ~~ THEN REPLY #43747 /* ~Interpose-toi.~ */ EXTERN ~DDAKKON~ 143
  IF ~~ THEN REPLY #43748 /* ~"Dak'kon, arrête ça tout de suite."~ */ GOTO 48
  IF ~~ THEN REPLY #43749 /* ~"Laisse tomber, Dak'kon."~ */ GOTO 48
  IF ~~ THEN REPLY #43750 /* ~Attaque la *zerth*.~ */ EXTERN ~DDAKKON~ 143
END

IF ~~ THEN BEGIN 46 // from:
  SAY #43751 /* ~"Chien ! Traître githyanki !", lance-t-elle en brandissant son épée vers toi !~ */
  IF ~~ THEN REPLY #43752 /* ~"Ton heure a sonné, Kii'na."~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #43753 /* ~Les deux lames s'entrecroisent dans un tourbillon !~ */
  IF ~~ THEN DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2
  SAY #43754 /* ~À contrecœur, Dak'kon baisse sa lame. Kii'na le fixe d'air incrédule pendant quelques instants, puis un sourire malin vient fendre son visage. "La vérité, enfin. Ton esprit n'est pas divisé. Tu es… *l'esclave* de cet humain. Il te parle avec l'autorité d'un anarque et tu *écoutes*."~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",0)
~ EXTERN ~DDAKKON~ 144
END

IF ~~ THEN BEGIN 49 // from:
  SAY #43755 /* ~"Ses paroles portent les tiennes et ont la forme des Limbes. Je ne t'écouterai pas, Dak'kon."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 146
END

IF ~~ THEN BEGIN 50 // from:
  SAY #43756 /* ~"Les paroles de Zerthimon ne doivent pas être entendues par un humain. Leurs esprits sont divisés, et ils ne sèment que la division partout où ils passent. Celui-ci est porteur de cicatrices et de sang, et il voyage en compagnie d'un traître. Le cœur de Vilquar bat dans ta poitrine si tu demandes si je l'écouterai."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 147
END

IF ~~ THEN BEGIN 51 // from:
  SAY #43757 /* ~"Je ne l'écouterai pas. C'est lui qui m'écoutera."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 148
END

IF ~~ THEN BEGIN 52 // from:
  SAY #43758 /* ~La femme gith se tourne vers toi. Ses yeux semblables à des perles noires s'illuminent dangereusement. "Je ne *sais* rien de toi, mais ton apparat ne me dit rien qui vaille, humain. Ton corps est un livre couvert de cicatrices et de sang, et tu marches dans l'ombre d'un paria qui prétend parler pour Zerthimon lui-même. Dis ce que tu penses !"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43759 /* ~"Salut à toi, sonneur d'épées."~ */ GOTO 42
  IF ~~ THEN REPLY #43760 /* ~"Bonjour."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43761 /* ~"Dans l'ombre d'un paria ? Qu'est-ce que tu veux dire ?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43762 /* ~"Dans l'ombre d'un paria ? Qu'est-ce que tu veux dire ?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43763 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43764 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43765 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43766 /* ~"Tu peux m'apprendre la langue githzeraï ?"~ */ GOTO 56
  IF ~~ THEN REPLY #43767 /* ~"Tu peux m'apprendre la Voie de Zerthimon ?"~ */ GOTO 59
  IF ~~ THEN REPLY #43768 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 41.5 41.6 42.3 42.4 52.5 52.6 55.3 55.4 61.2 61.3
  SAY #43769 /* ~Elle te regarde *durement* quelques instants. "Gith était une grand guerrière qui a délivré notre peuple de la captivité à l'époque des seigneurs esclavagistes *illithids*. Zerthimon était son lieutenant. Quand ils eurent tous deux délivré notre peuple, Gith se présenta à Zerthimon sur les Plaines désolées. Des paroles furent prononcées, le fer fut croisé - et le peuple se scinda en deux camps. Ceux qui restèrent aux côtés de la reine-garce prirent le nom de Githyanki. Et ceux d'entre nous qui suivirent le chemin de Zerthimon restèrent fidèles au Peuple et prirent le nom de Githzeraï. Notre rage vient de la trahison de Gith."~ */
  IF ~~ THEN REPLY #43770 /* ~"Et c'est pour ça que vous vous détestez autant ?"~ */ JOURNAL #39486 /* ~J'ai découvert que la rivalité opposant githyankis et githzeraïs découle d'une histoire commune. Depuis leur séparation, chacune des deux races hait ce que l'autre est devenue. Comme il est étrange que deux cultures issues du même moule puissent devenir aussi diamétralement opposées.~ */ GOTO 54
  IF ~~ THEN REPLY #43771 /* ~"Je vois. J'avais d'autres questions…"~ */ JOURNAL #39486 /* ~J'ai découvert que la rivalité opposant githyankis et githzeraïs découle d'une histoire commune. Depuis leur séparation, chacune des deux races hait ce que l'autre est devenue. Comme il est étrange que deux cultures issues du même moule puissent devenir aussi diamétralement opposées.~ */ GOTO 55
  IF ~~ THEN REPLY #43772 /* ~"Grand merci. Au revoir."~ */ JOURNAL #39486 /* ~J'ai découvert que la rivalité opposant githyankis et githzeraïs découle d'une histoire commune. Depuis leur séparation, chacune des deux races hait ce que l'autre est devenue. Comme il est étrange que deux cultures issues du même moule puissent devenir aussi diamétralement opposées.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #43773 /* ~"Nos deux peuples sont comme la mule de Penansk - têtus, aveugles et importuns. En plus de ça, les githyankis sont cruels. Ils nous haïssent en raison de notre élévation vers des domaines qu'ils ne peuvent comprendre."~ */
  IF ~~ THEN REPLY #43774 /* ~"Je vois. J'avais d'autres questions…"~ */ GOTO 55
  IF ~~ THEN REPLY #43775 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.0 53.1 54.0 57.0 58.0 59.0 60.0
  SAY #43776 /* ~"Ach'ali-La-Noyée ! Pose ta question et je te répondrai."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43777 /* ~"Qu'est-ce que tu insinuais en disant que je marchais dans l'ombre d'un paria ?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43778 /* ~"Qu'est-ce que tu insinuais en disant que je marchais dans l'ombre d'un paria ?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43779 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43780 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43781 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43782 /* ~"Tu peux m'apprendre la langue githzeraï ?"~ */ GOTO 56
  IF ~~ THEN REPLY #43783 /* ~"Tu peux m'apprendre la Voie de Zerthimon ?"~ */ GOTO 59
  IF ~~ THEN REPLY #43784 /* ~"Je n'ai pas d'autres questions. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 41.7 42.5 52.7 55.5 61.4
  SAY #43785 /* ~"Si celui avec qui tu voyages n'y voit pas d'inconvénients, je te formerai. La langue githzeraï est basée sur l'histoire de notre peuple. Pour nous, tout est toujours en rapport avec l'histoire ; la métaphore est un outil puissant, un moyen d'inspirer l'héroïsme à notre peuple, et un effet dissuasif contre l'infamie. Quand nous parlons de la 'table de Toryg', nous nous souvenons que Toryg était connu pour son sens de l'hospitalité et sa gentillesse. Quand nous parlons du 'cœur de Selqant', nous nous souvenons de la nature débauchée et cruelle de Selqant. Tu comprends ?"~ */
  IF ~~ THEN REPLY #43786 /* ~"Oui."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Kii'na le *zerth* m'a beaucoup appris pour ce qui est de la langue des githzeraïs. Apparemment, elle repose principalement sur les métaphores, les allégories et l'histoire des githzeraïs.~ */ GOTO 57
  IF ~~ THEN REPLY #43787 /* ~"Non."~ */ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #43788 /* ~Ta formation continue :
Un sage 'a écrit le livre des anarques'.
Accuser quelqu'un de trahison équivaut à se souvenir de 'l'Œil de Vilquar'.
On dit des gens généreux que leurs 'placards sont vides'.
Parmi les formules de politesse, on trouve 'Salut à toi, sonneur d'épées' et 'Zerchai et les siens te saluent', ce à quoi tu dois répondre : 'Et le voyageur en est heureux'.
Ton esprit est empli d'autres phrases comme celles-là.~ */
  IF ~~ THEN REPLY #43789 /* ~"J'avais d'autres questions…"~ */ GOTO 55
  IF ~~ THEN REPLY #43790 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43791 /* ~"Alors, je ne peux rien faire de plus pour toi. Laissons celui qui marche à tes côtés dire ce qu'il pense sur le sujet."~ */
  IF ~~ THEN REPLY #43792 /* ~"J'ai encore quelques questions…"~ */ GOTO 55
  IF ~~ THEN REPLY #43793 /* ~"Je le lui demanderai peut-être, puisque tu ne sais pas ce que tu veux. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 41.8 42.6 52.8 55.6 61.5
  SAY #43794 /* ~Son regard se durcit. "Tu voyages avec quelqu'un qui prétend être un *zerth*, qui me donne des leçons de moralité, et tu oses me demander si je peux t'enseigner la Voie ? *Demande-lui* de te l'enseigner, parce que moi, je ne le ferai pas !"~ */
  IF ~~ THEN REPLY #43798 /* ~"Calme-toi et réponds encore à quelques questions."~ */ GOTO 55
  IF ~~ THEN REPLY #43799 /* ~"J'irai peut-être. Au revoir."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
Global("Kiina_Speak","GLOBAL",1)
~ THEN BEGIN 60 // from:
  SAY #43800 /* ~"Tu es revenu pour me tourmenter ? Qu'est-ce que tu veux cette fois ?"~ */
  IF ~~ THEN REPLY #43801 /* ~"Je voulais juste te poser quelques questions…"~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43802 /* ~"Un groupe de githyankis se prépare à attaquer la forteresse Vristigor dans les sept jours à venir. Ils sont déjà en route."~ */ GOTO 37
  IF ~~ THEN REPLY #43803 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 61 // from:
  SAY #43804 /* ~À ton approche, la *zerth* te salue à contrecœur. "*Sache* que tes paroles nous ont sauvés d'une tragédie. Nous prêtons le Serment de la Main d'or, humain. Tu as mal choisi tes compagnons de voyage…" Elle lance un regard à Dak'kon. "Mais tu t'es montré amical envers le Peuple. Je t'écouterai." Malgré ces paroles, elle semble méfiante à ton égard.~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43805 /* ~"Qu'est-ce que tu peux me dire sur Dak'kon ?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43806 /* ~"Qu'est-ce que tu peux me dire sur Dak'kon ?"~ */ GOTO 43
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43807 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43808 /* ~"Tu peux m'expliquer la différence entre les githzeraïs et les githyankis ?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43809 /* ~"Tu peux m'apprendre la langue githzeraï ?"~ */ GOTO 56
  IF ~~ THEN REPLY #43810 /* ~"Tu peux m'apprendre la Voie de Zerthimon ?"~ */ GOTO 59
  IF ~~ THEN REPLY #43811 /* ~"Je n'ai pas d'autres questions. Au revoir."~ */ EXIT
END
