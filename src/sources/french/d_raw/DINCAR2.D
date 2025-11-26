// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR2~

IF ~~ THEN BEGIN 0 // from:
  SAY #52685 /* ~"Peut-être… que tu mourras QUAND MÊME. N'oublie PAS que je vous OBSERVE, VOLEURS, TUEURS - des TUEURS, tous les TROIS…"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59901 /* ~"Vous êtes des VOLEURS… vous portez MON corps… MON corps, et vous allez me le RENDRE !"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 3
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63713 /* ~L'homme devant toi te ressemble mais il est voûté comme s'il craignait en permanence d'être frappé. Il te regarde avec méfiance et émet un sifflement quand tu approches. Ses mains se crispent comme s'il voulait t'étrangler. Ses bras sont horriblement noueux, comme si on les avait plongés dans de l'acide. Le bras gauche tient littéralement à un fil.~ */
  IF ~~ THEN REPLY #63714 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Paranoid_Incarnation","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #63715 /* ~Laisse cet homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63716 /* ~"SACHE que tu ne feras pas long feu ici, VOLEUR !" L'homme bave et son visage est déformé par une grimace démente. "LABYRINTHES, REGRETS ET MORT, c'est tout ce qu'il y a ICI…"~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 55
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63717 /* ~"Que veux-tu dire ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63718 /* ~"VOLEUR !" Les mains de l'incarnation se tordent comme si elles voulaient étrangler l'autre. "Je sentirai les os de ton cou SE ROMPRE sous mes doigts… rends-moi mon CORPS." Il se tourne vers toi. "VOLEUR ! Tu te vêts de mon corps comme d'un MANTEAU et tu me fais HONTE…"~ */
  IF ~~ THEN REPLY #63719 /* ~"Je ne suis pas un voleur. Je ne t'ai *rien* volé."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #63720 /* ~"Tu es un VOLEUR !" Les mains de l'incarnation se tordent comme si elles enserraient ton cou. "Je sentirai les os de ton cou SE ROMPRE sous mes doigts… rends-moi mon CORPS. Tu te vêts de mon corps comme d'un MANTEAU et tu me fais HONTE…"~ */
  IF ~~ THEN REPLY #63721 /* ~"Je ne suis pas un voleur. Je ne t'ai *rien* volé."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #63722 /* ~"TU AS TOUT VOLÉ ! JE ME SUIS RÉVEILLÉ DANS LES RUES DE LA VILLE DU CERCLE ET TOUS CEUX QUI ME VOYAIENT ME CONNAISSAIENT !"~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63723 /* ~Elle prend une inspiration bruyante. "Tout ce que tu as fait, tous ceux que tu as blessés - ils m'attendaient tous, me reprochant tout, me maltraitant, jusqu'à ce que je ne puisse plus SUPPORTER les voix…" Ses doigts déchirent l'air. "Et j'ai dû les faire TAIRE."~ */
  IF ~  Global("Pstone","GLOBAL",0)
~ THEN REPLY #63724 /* ~"Tu es celui qui a fait ce journal dodécaédrique, celui qui est piégé, n'est-ce pas ?"~ */ GOTO 9
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63725 /* ~"C'est toi qui as mis ce piège dans la Pierre Sensorielle, n'est-ce pas ? Et le journal dodécaédrique avec les pièges ?"~ */ GOTO 9
  IF ~  Global("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63726 /* ~"Tu es celui que la Dame a enfermé dans les dédales, n'est-ce pas ? J'ai trouvé ton journal… et aussi l'autre, le dodécaèdre couvert de pièges."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63727 /* ~"Tu es celui… celui qui a étranglé tous ces gens, n'est-ce pas ? J'ai trouvé ton journal dans le dédale de la Dame… et j'ai trouvé l'autre journal, le dodécaèdre couvert de pièges."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",0)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63729 /* ~"Tu es celui… celui qui as étranglé tous ces gens, n'est-ce pas ? Et qui a laissé ce journal piégé pour que je le trouve, ce dodécaèdre."~ */ GOTO 9
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63730 /* ~"Tu es celui… celui qui a tué le Linguiste, Fin, n'est-ce pas ? Puis écrit le journal dodécaédrique dans le langage Uyo."~ */ GOTO 9
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #63731 /* ~Cette incarnation folle te regarde avec suspicion et émet un sifflement quand tu approches. Ses mains se serrent comme si elle voulait t'étrangler. Ses bras sont horriblement noueux comme si on les avait plongés dans de l'acide. Le bras gauche tient littéralement à un fil~ */
  IF ~~ THEN REPLY #63732 /* ~"Il y a certaines choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63733 /* ~Ignore l'incarnation folle.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 7.2 7.3 7.4 7.5 8.0 10.0 11.1 12.1 14.0 15.0 16.0 17.0 18.3 19.2 20.0 21.1 22.0 26.0
  SAY #63734 /* ~Elle te fixe d'un regard méfiant - elle semble ne pas être à l'aise en te regardant.~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63735 /* ~"Pour que je puisse quitter cet endroit, tu dois de nouveau faire partie de moi. Acceptes-tu ?"~ */ GOTO 18
  IF ~  GlobalGT("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #63736 /* ~"Tu es celui qui a mis le feu à l'héritage de Iannis, n'est-ce pas ? Qui a essayé de détruire mon héritage ?"~ */ GOTO 10
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63737 /* ~"Le piège de la Pierre Sensorielle - C'est toi qui l'as laissé pour moi, n'est-ce pas ?"~ */ GOTO 11
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #63738 /* ~"Es-tu celui qui a étranglé tous ces gens à Sigil ?"~ */ GOTO 14
  IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN REPLY #63739 /* ~"Tu es l'incarnation que la Dame a emprisonnée dans un dédale, n'est-ce pas ? J'ai trouvé ton journal dans le dédale de la Dame."~ */ GOTO 15
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63740 /* ~"C'est toi le responsable de la mort de Fin le Linguiste, n'est-ce pas ?~ */ GOTO 16
  IF ~~ THEN REPLY #63741 /* ~"Qu'est-il arrivé à ton bras ?"~ */ GOTO 17
  IF ~~ THEN REPLY #63742 /* ~"Sais-tu comment je pourrais quitter cet endroit ?"~ */ GOTO 20
  IF ~~ THEN REPLY #63743 /* ~"Que sais-tu des autres incarnations ?"~ */ GOTO 21
  IF ~  OR(2)
CheckStatGT(Protagonist,15,INT)
GlobalGT("P_Journal","GLOBAL",3)
Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63744 /* ~Dans la langue de l'Uyo : (Parlons en privé, juste nous deux.)~ */ GOTO 23
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63745 /* ~Dans la langue de l'Uyo : (Parlons en privé, juste nous deux.)~ */ GOTO 25
  IF ~  GlobalGT("Choke","GLOBAL",0)
GlobalLT("Choke","GLOBAL",6)
~ THEN REPLY #63746 /* ~Referme tes mains sur son cou pour l'étrangler.~ */ GOTO 30
  IF ~  GlobalGT("Choke","GLOBAL",5)
~ THEN REPLY #63747 /* ~Referme tes mains sur son cou pour l'étrangler.~ */ GOTO 38
  IF ~~ THEN REPLY #63748 /* ~"Aucune importance. Nous reparlerons un peu plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #63749 /* ~"J'ai BRÛLÉ les faux papiers, oui. ENCORE des mensonges, des mensonges sur mes FAUSSES VIES…"~ */
  IF ~~ THEN REPLY #63750 /* ~"Il y a d'autres choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63751 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #63752 /* ~"Oui…" Elle sourit de manière sinistre. "Un simple piège. Un piège pour quelqu'un qui ne peut pas mourir - un piège MENTAL."~ */
  IF ~~ THEN REPLY #63753 /* ~"Il était effectivement facile de s'en échapper."~ */ GOTO 12
  IF ~~ THEN REPLY #63754 /* ~"Il y a d'autres choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63755 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #63756 /* ~Le sourire de l'incarnation se fige. "Tu MENS !"~ */
  IF ~~ THEN REPLY #63757 /* ~"Non, c'était ridiculement facile. J'ai réussi à m'en échapper sans le moindre effort."~ */ GOTO 13
  IF ~~ THEN REPLY #63758 /* ~"Peut-être. Il y a d'autres choses que j'aimerais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63759 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63760 /* ~"MENTEUR DE VOLEUR !" Ses yeux s'embrasent comme deux flammes. Tu la vois alors *tirer* la couture de son épaule en lambeau…~ */
  IF ~~ THEN REPLY #63761 /* ~"Quoi - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SmallWait(1)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63762 /* ~Son regard se porte sur les pierres noires, comme si elle se rappelait quelque chose - quelque chose de désagréable. Elle se met à trembler légèrement. "Ils affirmaient me connaître. J'ai dû faire TAIRE ces voix. Elles m'accusaient, elles ne cessaient de M'ACCUSER …"~ */
  IF ~~ THEN REPLY #63763 /* ~"Je… vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63764 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.4
  SAY #63765 /* ~"Simple évasion, simple piège, j'ai aisément vaincu son labyrinthe. Il aurait pu être plus mortel." Elle sourit. "Elle ne se doutait pas de ce qu'il faut pour ME piéger."~ */
  IF ~~ THEN REPLY #63766 /* ~"On dirait. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63767 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63768 /* ~"J'en…" Elle semble confuse pendant un instant. "J'en ai tués BEAUCOUP. Nombreux étaient ceux que je devais faire taire."~ */
  IF ~~ THEN REPLY #63769 /* ~"Je… vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63770 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.6
  SAY #63771 /* ~Elle pose un instant son regard sur son bras, puis relève la tête et sourit. "Il n'arrêtait pas de se détacher… j'ai dû le recoudre."~ */
  IF ~~ THEN REPLY #63772 /* ~"Il y a des choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63773 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0
  SAY #63774 /* ~"Je préférerais MOURIR."~ */
  IF ~~ THEN REPLY #63775 /* ~"La mort est une solution envisageable. Mais je te donne une chance."~ */ GOTO 19
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63776 /* ~"Alors prépare-toi à mourir."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63777 /* ~"Alors prépare-toi à mourir."~ */ GOTO 34
  IF ~~ THEN REPLY #63778 /* ~"Il y a des choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63779 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63780 /* ~"JAMAIS." Elle crache son dernier mot : "VOLEUR."~ */
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63781 /* ~"Alors prépare-toi à mourir."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63782 /* ~"Alors prépare-toi à mourir."~ */ GOTO 34
  IF ~~ THEN REPLY #63783 /* ~"Il y a des choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63784 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.7
  SAY #63785 /* ~"Je ne te le dirai JAMAIS. Et tu ne partiras JAMAIS…" Elle sourit. "C'est ASSEZ CALME ici."~ */
  IF ~~ THEN REPLY #63786 /* ~"Très bien… Il y a d'autres choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63787 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.8
  SAY #63788 /* ~"VOLEURS. Ce sont des VOLEURS - tous. Et les VOLEURS vont MOURIR."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 56
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63789 /* ~"Il y a des choses que je voudrais savoir."~ */ GOTO 9
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63790 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63791 /* ~"Tu es le VOLEUR ! Tu m'as dérobé mon corps et ma vie ! Et tous les VOLEURS vont mourir !"~ */
  IF ~~ THEN REPLY #63792 /* ~"Il y a d'autres choses que je voudrais savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63793 /* ~"Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.9
  SAY #63794 /* ~Comme tu parles dans le langage de l'Uyo, l'incarnation ouvre grand les yeux et elle te dévisage. Après un instant de silence, elle répond dans la même langue. (Je suis le seul à connaître la langue de l'Uyo. Comment la connais-tu ?)~ */
  IF ~~ THEN REPLY #63795 /* ~(Tu as raison : tu es le seul à connaître le langage de l'Uyo. Donc, si je le connais, c'est que je suis toi.)~ */ DO ~SetAnimState("Incar2",ANIM_MIMESTAND)
~ GOTO 24
  IF ~~ THEN REPLY #63796 /* ~(Aucune importance. Nous reparlerons plus tard. Attends que je revienne.)~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63797 /* ~Elle te regarde en silence. ~ */
  IF ~~ THEN REPLY #63798 /* ~(Ce sont les *autres* qui ne sont pas toi, car elles ignorent le langage de l'Uyo.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 9.10 24.0
  SAY #63799 /* ~Elle hoche la tête… lentement. (Je t'entends.)~ */
  IF ~  Global("Know_Merge","GLOBAL",0)
~ THEN REPLY #63800 /* ~(Quand je frapperai, sois à mes côtés. Nous allons tuer ces voleurs et connaître ainsi la paix.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63801 /* ~(Cet endroit perturbe nos perceptions - nous sommes tous deux toi et, maintenant, nous devons n'être plus qu'un.)~ */ GOTO 27
  IF ~~ THEN REPLY #63802 /* ~(Nous reparlerons, toi et moi. Attends-moi.)~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63803 /* ~(Je frapperai quand tu frapperas.)~ */
  IF ~~ THEN REPLY #63804 /* ~"Il y a d'autres choses que je voudrais savoir…"~ */ GOTO 9
  IF ~~ THEN REPLY #63805 /* ~(Nous reparlerons, toi et moi. Attends-moi.)~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63806 /* ~Elle semble effrayée. "Je…" À ta grande surprise, elle parle de nouveau normalement… et sa voix est vierge de toute intonation. Elle est calme, posée et très semblable à la tienne. "Je… ne veux plus continuer à vivre comme cela."~ */
  IF ~~ THEN REPLY #63807 /* ~(Ce n'est plus nécessaire. Je vais balayer toutes les peines, toutes les inquiétudes et tous les tourments de ton existence.)~ */ GOTO 28
  IF ~~ THEN REPLY #63808 /* ~(Tu as beaucoup souffert. Tu es né dans un monde où rien n'avait de sens, où des étrangers affirmaient te connaître, où ils te blâmaient pour des choses dont tu ne savais rien, et ils ont essayé de te faire du mal.)~ */ GOTO 28
  IF ~~ THEN REPLY #63809 /* ~(Nous reparlerons, toi et moi. Attends-moi.)~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #63810 /* ~Elle te regarde - et tu vois l'incarnation perdre son aura de folie. Ses yeux deviennent alors presque identiques aux tiens. "Oui…"~ */
  IF ~~ THEN REPLY #63811 /* ~(Je te protégerai désormais. Tu connaîtras la paix. Car c'est tout ce que tu as toujours désiré, n'est-ce pas ?)~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #63812 /* ~L'incarnation se détend en t'écoutant, ses yeux, plantés dans les tiens, s'assombrissent. Avec un imperceptible murmure, elle s'effondre sur les pierres noires et tu sens alors une légère démangeaison à l'arrière de ton crâne…~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 30 // from: 9.11
  SAY #63813 /* ~À la vitesse de l'éclair, tes mains agrippent son cou - l'incarnation laisse échapper un cri de surprise tandis que tu l'étrangles. Elle grogne et, avec un regard mauvais, elle t'agrippe le cou et commence à *serrer*.~ */
  IF ~  CheckStatGT(Protagonist,20,STR)
~ THEN REPLY #63814 /* ~"Je… vais mettre… un terme… à ton existence…"~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatLT(Protagonist,21,STR)
~ THEN REPLY #63815 /* ~"Je… vais mettre… un terme… à ton existence…"~ */ GOTO 32
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #63816 /* ~"Je… vais mettre… un terme… à ton existence…"~ */ GOTO 33
  IF ~~ THEN REPLY #63817 /* ~Abandonne-toi, laisse-le te briser le cou.~ */ GOTO 42
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63818 /* ~Tandis que tes mains lui écrasent la gorge, les yeux de l'incarnation se révulsent. Elle relâche son étreinte et griffe tes mains pour les arracher, mais en vain. Elle est trop faible.~ */
  IF ~~ THEN REPLY #63819 /* ~"Je te donne le choix. Soit tu meurs maintenant de mes propres mains, soit tu fusionnes avec moi, et tu *pries* pour avoir une chance de survie dans mon esprit."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63820 /* ~Dans la langue de l'Uyo : (C'est pour la mort de Fin.)~ */ GOTO 39
  IF ~~ THEN REPLY #63821 /* ~"Maintenant nous allons mettre un *terme* à ta misérable existence…"~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #63822 /* ~Tandis que tes mains lui écrasent la gorge, l'incarnation fronce les yeux. Ses doigts s'enfoncent dans ta gorge - vous êtes aussi forts l'un que l'autre et aucun ne peut prendre le dessus… ce sera à celui qui tiendra le plus longtemps… ~ */
  IF ~  CheckStatGT(Protagonist,20,CON)
~ THEN REPLY #63823 /* ~Résiste…~ */ GOTO 35
  IF ~  CheckStatLT(Protagonist,21,CON)
~ THEN REPLY #63824 /* ~Résiste…~ */ GOTO 36
  IF ~~ THEN REPLY #63825 /* ~Tente d'échapper à son étreinte.~ */ GOTO 37
  IF ~~ THEN REPLY #63826 /* ~Abandonne-toi, laisse-le te briser le cou.~ */ GOTO 42
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #63827 /* ~Tandis que tes mains lui écrasent la gorge, l'incarnation te jette un regard mauvais. Ses doigts s'enfoncent dans ta gorge - et tu te rends compte de sa force - tu sais que, dans quelques secondes, elle t'aura étranglé.~ */
  IF ~~ THEN REPLY #63828 /* ~Tente d'échapper à son étreinte.~ */ GOTO 37
  IF ~~ THEN REPLY #63829 /* ~Abandonne-toi, laisse-le te briser le cou.~ */ GOTO 42
END

IF ~~ THEN BEGIN 34 // from: 18.1 18.2 19.0 19.1
  SAY #63830 /* ~Ses yeux s'embrasent comme deux flammes. Tu la vois alors *tirer* sur la couture de son épaule en lambeaux…~ */
  IF ~~ THEN REPLY #63831 /* ~"Quoi - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #63832 /* ~Après ce qui t'a semblé être une éternité, tu sens sur ton cou les mains de l'incarnation trembler, tâtonner à la recherche d'un point faible… sans succès. Tu lis la peur dans ses yeux. Elle relâche son étreinte et griffe tes mains pour les arracher mais en vain. Elle est trop faible.~ */
  IF ~~ THEN REPLY #63833 /* ~"Je te donne le choix. Soit tu meurs maintenant de mes propres mains, soit tu fusionnes avec moi, et tu *pries* pour avoir une chance de survie dans mon esprit."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63834 /* ~Dans la langue de l'Uyo : (C'est pour la mort de Fin.)~ */ GOTO 39
  IF ~~ THEN REPLY #63835 /* ~"Maintenant, nous allons mettre un terme à ton existence…"~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #63836 /* ~Tu continues à serrer, essayant d'être plus fort qu'elle. Mais, soudain, tu te rends compte que la folie qui habite cette incarnation lui donne une force et une endurance bien supérieures aux tiennes… si tu poursuis cet affrontement, elle l'emportera.~ */
  IF ~~ THEN REPLY #63837 /* ~Tente d'échapper à son étreinte.~ */ GOTO 37
  IF ~~ THEN REPLY #63838 /* ~Abandonne-toi, laisse-le te briser le cou.~ */ GOTO 42
END

IF ~~ THEN BEGIN 37 // from: 32.2 33.0 36.0
  SAY #63839 /* ~Tu fais un brusque mouvement sur la droite pour la déstabiliser et elle relâche son étreinte. Ses yeux semblent flamboyer. Tu la vois alors *tirer* sur la couture de son épaule en lambeau…~ */
  IF ~~ THEN REPLY #63840 /* ~"Qu'es-tu - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.12
  SAY #63841 /* ~À la vitesse de l'éclair, tes mains agrippent son cou - l'incarnation laisse échapper un cri de surprise tandis que tu l'étrangles. Elle relâche son étreinte et griffe tes mains pour les arracher, mais en vain. Elle est trop faible.~ */
  IF ~~ THEN REPLY #63842 /* ~"Tu as le choix. Soit tu meurs maintenant de mes propres mains, soit tu fusionnes avec moi, et tu *pries* pour avoir une chance de survie dans mon esprit."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63843 /* ~Dans la langue de l'Uyo : (C'est pour la mort de Fin.)~ */ GOTO 39
  IF ~~ THEN REPLY #63844 /* ~"Maintenant, nous allons mettre un terme à ton existence…"~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 31.1 31.2 35.1 35.2 38.1 38.2
  SAY #63845 /* ~Tu lui tords brutalement le cou vers la gauche - tu entends un craquement, comme si des milliers de cous se brisaient, et l'incarnation s'effondre dans tes bras. Tu la lâches et, en mourant, elle s'affaisse sur les pierres noires. Tu sens alors une légère démangeaison à l'arrière de ton crâne et tu sais que l'incarnation n'est plus.~ */
  IF ~~ THEN REPLY #63846 /* ~"Au revoir…"~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.0 35.0 38.0
  SAY #63847 /* ~Elle te jette un regard haineux, les dents serrées, mais l'instant d'après son visage s'assombrit et elle cesse de lutter. Avec un imperceptible murmure, elle s'effondre sur les pierres noires et tu sens alors une légère démangeaison à l'arrière de ton crâne…~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 29.0 40.0
  SAY #63848 /* ~Alors tu sens un déluge de mémoires, de forces et d'émotions et - tu reprends le dessus, nauséeux pendant quelques instants, puis ta vision s'éclaircit, et tu es de nouveau toi-même.~ */
  IF ~~ THEN REPLY #63849 /* ~"Au revoir…"~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.3 32.3 33.1 36.1
  SAY #63850 /* ~Alors que ta vision s'obscurcit sous l'étreinte mortelle de l'incarnation, la douleur disparaît - remplacée par le frisson du néant. Tu sens ta personnalité se désagréger et, soudain, tu n'existes plus…~ */
  IF ~~ THEN REPLY #63851 /* ~Tout devient noir…~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #63852 /* ~"Cette FEMME - ce FANTÔME ?!" Les yeux de l'homme voûté s'embrasent de fureur. Il se met à baver. "Elle m'a TOURMENTÉ pendant des années, me poursuivant, me maudissant, Et C'EST TOI QUI L'A TUÉE ?!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 30
END

IF ~~ THEN BEGIN 44 // from:
  SAY #63853 /* ~"Sans aucune valeur !" La seconde incarnation éclate d'un rire saccadé, plus joyeux que dément. "Ce fut FACILE de déjouer ce piège enfantin. Je l'ai découvert… et je l'ai MODIFIÉ. Pour qu'il soit plus DUR. J'ai changé les ÉCRITS."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 58
END
