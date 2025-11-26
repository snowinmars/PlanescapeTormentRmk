// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAIMON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAIMON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23859 /* ~Ce rat-garou à l'air las semble rechercher toute excuse pour le tirer de son ennui. "Qu'est-ce que tu veux, viande ?"~ */
  IF ~~ THEN REPLY #23860 /* ~"J'aimerais sortir."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23861 /* ~"Je veux simplement te parler."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #23862 /* ~"Rien. Laisse tomber."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #23863 /* ~"Vraiment ? Qu'est-ce qui pourrait valoir la peine de désobéir à Mantuok et de risquer le courroux des rats, hein ?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23864 /* ~"Vos vies. Si tu me laisses sortir d'ici, je vous laisserai vivre."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23865 /* ~"Vos vies. Si tu me laisses sortir d'ici, je vous laisserai vivre."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23866 /* ~"Je promets que personne ne saura jamais ce que j'ai fait… et en plus quelques pièces plus tard, peut-être."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23867 /* ~"Comment pourraient-ils le savoir ?"~ */ GOTO 11
  IF ~~ THEN REPLY #23868 /* ~"Qu'est-ce que tu dirais d'un peu de jonc ?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23869 /* ~"Penses-y : je représente un vrai danger pour toi et pourtant je te parle d'égal à égal. Crois-tu vraiment que ces murs peuvent me retenir si je ne le veux pas ? Je te suggère sans menaces que ton intérêt est de me laisser partir."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23870 /* ~"Parce que je vais sortir d'ici un de ces jours, et ce jour-là, ce sera pas joli."~ */ GOTO 4
  IF ~~ THEN REPLY #23871 /* ~"En y réfléchissant, je ne pense à rien."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #23872 /* ~Raimon t'examine soigneusement. En voyant la violence qui anime tes yeux et la taille de tes muscles, il déverrouille très soigneusement la porte et l'ouvre pour toi. Il s'écarte et détourne son regard du tien.~ */
  IF ~~ THEN REPLY #23873 /* ~"Merci, mon pote."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
  IF ~~ THEN REPLY #23874 /* ~"Salut."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
END

IF WEIGHT #3 /* Triggers after states #: 13 12 even though they appear after this state */
~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #23875 /* ~Il a toujours les yeux détournés. "Ne me fais pas mal, s'il te plaît, affranchi… J'faisais qu'mon boulot."~ */
  IF ~~ THEN REPLY #23876 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #23877 /* ~Il te regarde et ricane. "Tu crois pouvoir me blesser, hein ? Faudra d'abord que tu trouves un moyen de sortir !"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23878 /* ~"Et si je promets que personne ne saura jamais ce que j'ai fait … et en plus quelques pièces plus tard, peut-être."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23879 /* ~"Pourquoi tu me laisses pas sortir ?"~ */ GOTO 11
  IF ~~ THEN REPLY #23880 /* ~"Et si je te donnais quelques pièces ?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23881 /* ~"Penses-y : je représente un vrai danger pour toi et pourtant je te parle d'égal à égal. Crois-tu vraiment que ces murs peuvent me retenir si je ne le veux pas ? Je te suggère sans menaces que ton intérêt est de me laisser partir."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23882 /* ~"Parce que je vais sortir d'ici un de ces jours, et ce jour-là, ce sera pas joli."~ */ GOTO 4
  IF ~~ THEN REPLY #23883 /* ~"J'vais essayer d'en trouver une, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #23884 /* ~"Pourquoi pas. J'ai jamais trop aimé l'autoritarisme de Mantuok." Il déverrouille la porte, l'ouvre et s'écarte. "Maintenant, dégage avant que je ne puisse plus prétendre ne pas t'avoir vu."~ */
  IF ~~ THEN REPLY #23885 /* ~"T'as compris. Au revoir."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #23886 /* ~"Tu sais quoi… ta bourse tintait joyeusement quand t'es entré. Cents pièces - j'suis sûr que tu peux te le permettre - ensuite tu pourras partir."~ */
  IF ~~ THEN REPLY #23887 /* ~"C'est d'accord."~ */ GOTO 7
  IF ~~ THEN REPLY #23888 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23889 /* ~"Jette le jonc à travers les barres et j'te laisserai partir. Et avant que tu me poses la question, t'as pas d'autre choix que de me faire confiance, pas vrai, Shaddeus ?" Il sourit à son partenaire.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #23890 /* ~"Très bien. Voilà."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(200)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #23891 /* ~"Je n'en ai pas tant …"~ */ GOTO 9
  IF ~~ THEN REPLY #23892 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #23893 /* ~Il compte les pièces soigneusement. Une fois convaincu que le compte y est, il déverrouille la porte devant toi. "Allez, dégage !"~ */
  IF ~~ THEN REPLY #23894 /* ~"D'accord, d'accord."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #23895 /* ~"Alors, tu sors pas, hein ?" Il a un petit rire aigu. Il se détourne.~ */
  IF ~~ THEN REPLY #23896 /* ~"Bon sang…"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #23897 /* ~"Tu veux parler, hein ? Bon, c'est pas le vieux Raimon qui t'fera causette, ça c'est sûr !" Il te tourne le dos.~ */
  IF ~~ THEN REPLY #23898 /* ~"J'aimerais qu'on discute pour que tu me sortes d'ici."~ */ GOTO 1
  IF ~~ THEN REPLY #23899 /* ~"Bien."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #23900 /* ~Il ricane. "Tu crois que j'vais te faire confiance ?" Ses moustaches se tordent. "Essaie encore."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23901 /* ~"Si tu me laisses sortir, je te laisserai vivre."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23902 /* ~"Si tu me laisses sortir, je te laisserai vivre."~ */ GOTO 4
  IF ~~ THEN REPLY #23903 /* ~"Qu'est-ce que tu dirais d'un peu de jonc ?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23904 /* ~"Penses-y : je représente un vrai danger pour toi et pourtant je te parle d'égal à égal. Crois-tu vraiment que ces murs peuvent me retenir si je ne le veux pas ? Je te suggère sans menaces que ton intérêt est de me laisser partir."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23905 /* ~"Parce que je vais sortir d'ici un de ces jours, et ce jour-là, ce sera pas joli."~ */ GOTO 4
  IF ~~ THEN REPLY #23906 /* ~"Laisse tomber."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #23907 /* ~"Qu'est-ce que tu veux encore, espèce d'enfumé ?"~ */
  IF ~~ THEN REPLY #23908 /* ~"Je veux te parler."~ */ GOTO 10
  IF ~~ THEN REPLY #23909 /* ~"Je veux parler des mes options de départ."~ */ GOTO 1
  IF ~~ THEN REPLY #23910 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #23911 /* ~"Qu'est-ce que tu fais encore ici, bige ? Dégage !" Il baisse la tête et évite de te regarder.~ */
  IF ~~ THEN REPLY #23912 /* ~"Très bien."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #23913 /* ~"Par… SHADDEUS ! ATTRAPE-LE !" Les deux rats-garous t'attaquent.~ */
  IF ~~ THEN REPLY #23914 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
