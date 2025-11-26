// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLACKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLACKR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2823 /* ~L'homme se déplace à une vitesse effrayante, et sa présence ne semble qu'être partielle. Ses yeux sont brûlants, et leur folie perce ton cœur. "Toi." Sa voix est une explosion d'air froid. "Déclare ton allégeance. Sers-tu le bien ou le mal ?"~ */
  IF ~~ THEN REPLY #3749 /* ~"Je trouve ça bien d'aider les moins chanceux que soi. Je choisis le bien."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3750 /* ~"L'idée du bien est réservée aux faibles. Je choisis le mal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3751 /* ~"Aucun des deux. Les extrêmes sont dangereux."~ */ GOTO 6
  IF ~~ THEN REPLY #3752 /* ~"Qui es-tu ?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #3363 /* ~"Il y a un homme nommé William le Véreux. C'est un homme fourbe et maléfique. Il dirige les Shivs de Sombrallée. Cherche-le dans cette allée, et tue-le, et tu serviras la cause du bien. Échoue, et le mal s'élèvera. Refuse, et je te tuerai."~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3753 /* ~"D'accord. Je vais le faire."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("RWill")
~ THEN REPLY #3754 /* ~"Je ne le ferai pas. Je refuse d'assassiner qui que ce soit."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3755 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3756 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37838 /* ~"William le Véreux est déjà mort. Je les ai tués tous les deux, lui et Krystall."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #37839 /* ~"William le Véreux est déjà mort."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #3728 /* ~"Je suis Rosenoire. Je suis la chasse et la faim. Je suis le fléau. Maintenant, déclare ton allégeance."~ */
  IF ~~ THEN REPLY #3757 /* ~"Je trouve ça bien d'aider les moins chanceux que soi. Je choisis le bien."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3758 /* ~"L'idée du bien est réservée aux faibles. Je choisis le mal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3759 /* ~"Aucun des deux. Les extrêmes sont dangereux."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 5.0 7.0 7.1 7.2 7.3 13.1 15.1
  SAY #3730 /* ~"Je t'attendrai. Pars. Maintenant."~ */
  IF ~~ THEN REPLY #3760 /* ~"J'avais d'abord quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #3762 /* ~"Je m'en vais."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #3731 /* ~"Il n'y pas de réponses. Seulement des actes. Pars."~ */
  IF ~~ THEN REPLY #3763 /* ~"Très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #3732 /* ~"Une femme nommée Krystall est leader des Anges Rasoirs. Elle cherche à 'éclairer' cette allée en en faisant un exemple de ce que la bonté peut accomplir. Tue-la et tu seras récompensé. Échoue, et tu seras pourchassé jusqu'à ta mort."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3764 /* ~"Je m'en charge."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
~ THEN REPLY #3765 /* ~"Sûrement pas."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3766 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3767 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37841 /* ~"Elle et William le Véreux sont déjà morts."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37843 /* ~"Elle est déjà morte."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 0.2 2.2
  SAY #3733 /* ~Son regard s'enflamme, puis s'adoucit. Sa voix sonne comme une exhalation. "Neutre. Un allié. Tu connais l'équilibre. Accorde-moi ton aide. J'élimine les extrêmes."~ */
  IF ~~ THEN REPLY #3768 /* ~"Qu'est-ce que je peux faire ?"~ */ GOTO 7
  IF ~~ THEN REPLY #3769 /* ~"Je n'ai pas vraiment envie de t'aider."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #3734 /* ~"Je chasse les Anges Rasoirs et les Shivs de Sombrallée. Choisis l'un des deux leaders et élimine-le."~ */
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3770 /* ~"Je prends les Anges Rasoirs."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3771 /* ~"Je prends les Shivs de Sombrallée."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
Dead("Rwill")
~ THEN REPLY #3772 /* ~"William le Véreux, le chef des Shivs de Sombrallée, est déjà mort. Je vais tuer Krystall."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3773 /* ~"Krystall, la responsable des Anges Rasoirs, est déjà morte. Je vais tuer William le Véreux."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3774 /* ~"Les deux sont déjà morts."~ */ GOTO 9
  IF ~~ THEN REPLY #3775 /* ~"Ça ne m'intéresse pas vraiment de t'aider."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.5 11.0 13.0 14.0 15.0
  SAY #3735 /* ~Il ouvre ses yeux ardents et murmure. "Alors tu es un ennemi." Dans le flou de l'action, il attaque !~ */
  IF ~~ THEN REPLY #3776 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3777 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4 5.4 7.4 11.2 14.2
  SAY #3736 /* ~"Nous établissons nos philosophies. Un bras de fer. Le gagnant est le vainqueur de notre combat pour la vérité."~ */
  IF ~~ THEN REPLY #3778 /* ~"D'accord, mais je ne peux pas mourir. Au bout du compte, c'est toi qui mourras."~ */ DO ~AddexperienceParty(1500)
~ GOTO 10
  IF ~~ THEN REPLY #3779 /* ~"Tu es vraiment fou, hein ?"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3780 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #3737 /* ~Ses yeux s'écarquillent. "Tu es éternel. Ta vérité est éternelle. Je te salue. Tu m'honores. Au revoir."~ */
  IF ~~ THEN REPLY #3781 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("BR_RW","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #3738 /* ~"As-tu tué William le Véreux ?"~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3782 /* ~"Pas encore. Et je n'ai pas l'intention de le faire."~ */ GOTO 8
  IF ~  !Dead("Rwill")
~ THEN REPLY #3783 /* ~"Non. Pas encore."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3784 /* ~"Oui."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #3785 /* ~"Oui."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1 14.1
  SAY #3745 /* ~"Travaille *plus vite*. Pars, maintenant. Je t'attendrai." Il croise les bras.~ */
  IF ~~ THEN REPLY #3786 /* ~"Eh bien d'accord."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 11.3
  SAY #3746 /* ~"Ta tâche suivante consiste à tuer Krystall, leader des Anges Rasoirs. L'équilibre nécessite sa mort."~ */
  IF ~~ THEN REPLY #3787 /* ~"Je ne ferai pas ça."~ */ GOTO 8
  IF ~~ THEN REPLY #3788 /* ~"Je reviendrai."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
END

IF ~  Global("BR_Krys","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #3747 /* ~"As-tu tué Krystall ?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3790 /* ~"Pas encore. Et je n'ai pas l'intention de le faire."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3791 /* ~"Non. Pas encore."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3792 /* ~"Oui."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3793 /* ~"Oui."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 5.5 14.3
  SAY #3748 /* ~"Ta tâche suivante consiste à tuer William le Véreux, leader des Shivs de Sombrallée. L'équilibre nécessite que tu le fasses."~ */
  IF ~~ THEN REPLY #3794 /* ~"Je ne ferai pas ça."~ */ GOTO 8
  IF ~~ THEN REPLY #3795 /* ~"Je reviendrai."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
END
