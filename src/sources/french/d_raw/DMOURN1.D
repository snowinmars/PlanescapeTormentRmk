// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7078 /* ~Cet Homme-Poussière est vêtu d'une longue robe noire et ses mains sont enfoncées dans ses manches. Il a la tête penchée et il chante en chœur avec les autres Hommes-Poussière qui l'entourent.~ */
  IF ~~ THEN REPLY #7079 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #7810 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #7759 /* ~L'Homme-Poussière semble t'avoir entendu, mais il ne lève pas les yeux.~ */
  IF ~~ THEN REPLY #7811 /* ~"Je voudrais parler avec toi un moment."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7812 /* ~Écoute-les chanter.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7813 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7814 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7815 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7816 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7817 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7818 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7819 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #7760 /* ~Tous les Hommes-Poussière chantent sur le même ton et au même rythme. À intervalles réguliers, le chant se transforme presque en un cri, puis diminue lentement, tel un écho. Une fois le chant terminé, les Hommes-Poussière prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #7820 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #7821 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #7761 /* ~L'Homme-Poussière relève la tête. Il n'arrête pas de chanter, gardant le même rythme et le même ton que les autres Hommes-Poussière qui l'entourent.~ */
  IF ~~ THEN REPLY #7823 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7824 /* ~"Je pleure un mort."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7825 /* ~"Je suis là pour une personne qui a perdu quelqu'un."~ */ GOTO 35
  IF ~~ THEN REPLY #7828 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #7762 /* ~L'Homme-Poussière t'ignore, baisse la tête et se remet à chanter.~ */
  IF ~~ THEN REPLY #7839 /* ~"Je voudrais parler avec toi."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7840 /* ~Écoute-les chanter.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7841 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7842 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7843 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7844 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7845 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7846 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7847 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #7763 /* ~Le pleureur s'arrête soudain et t'observe. "Eprouves-tu de la souffrance face à cette mort ?"~ */
  IF ~~ THEN REPLY #7848 /* ~"Non. La mort ne m'émeut pas."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #7849 /* ~Vérité : "Oui… Je crois que je suis responsable de la mort d'une innocente femme, Deionarra. Non seulement cela me tourmente, mais je me sens coupable du chagrin que j'ai causé à son père."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #7850 /* ~Vérité : "Oui… Je suis responsable de la mort d'un innocent, Xachariah. Sa disparition me tourmente."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #7851 /* ~Vérité : "Oui… Je crois que je suis responsable de la mort de nombreux innocents à travers les plans. Cette révélation provoque en moi une douleur presque insoutenable."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7852 /* ~"Ce n'est pas moi. Il y a une femme, la femme d'Angyar, qui a perdu un fils. Cette mort l'a beaucoup peinée."~ */ GOTO 9
  IF ~~ THEN REPLY #7853 /* ~Mensonge : "Non, euh, je parle au nom d'un ami, euh… Adahn - c'est lui qui souffre de la mort de la personne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7854 /* ~"Oui, cette mort récente m'a causé beaucoup de peine et de chagrin."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"Et bien, euh, avant cela, j'aurais des questions à te poser…"~ */ GOTO 20
  IF ~~ THEN REPLY #14817 /* ~"Excuse-moi… Ce n'est pas ce que je voulais dire. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #7764 /* ~"Nous nous permettrons de pleurer pour elle et son père, si ça ne te fait rien."~ */
  IF ~~ THEN REPLY #7856 /* ~"Si tu le pouvais, ça atténuerait énormément la peine de son père et la mienne."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7857 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #7765 /* ~"Nous pleurerons pour toi, si tel est ton désir."~ */
  IF ~~ THEN REPLY #7858 /* ~"Si tu le pouvais, ça atténuerait énormément ma peine."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #7859 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #7766 /* ~"Nous pleurerons pour toi, si tel est ton désir."~ */
  IF ~~ THEN REPLY #7860 /* ~"Si tu le pouvais, ça atténuerait énormément ma peine."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #7861 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #7767 /* ~"Nous pleurerons pour elle, si ça ne lui fait rien."~ */
  IF ~~ THEN REPLY #7862 /* ~"Si tu le pouvais, ça atténuerait énormément sa peine."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #7863 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #7768 /* ~"Nous pleurerons pour lui, si ça ne lui fait rien."~ */
  IF ~~ THEN REPLY #7864 /* ~"Si tu le pouvais, ça atténuerait énormément sa peine."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #7865 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #7769 /* ~L'Homme-Poussière s'incline et se remet à chanter.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7866 /* ~Écoute-les chanter.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7867 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7868 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7869 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7870 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7871 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7872 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7873 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.7 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #7770 /* ~L'Homme-Poussière baisse la tête et se remet à chanter.~ */
  IF ~~ THEN REPLY #7874 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #7771 /* ~"Nous sommes en deuil."~ */
  IF ~~ THEN REPLY #7875 /* ~"Qui est mort ?"~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7876 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7877 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7878 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7879 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7880 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7881 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #7882 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7772 /* ~"Nous ne pleurons pas les morts, mais les vivants."~ */
  IF ~~ THEN REPLY #7883 /* ~"Les vivants ?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7884 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7885 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7886 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7887 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7888 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7889 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #7890 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7891 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #7773 /* ~"Nous pleurons les vivants qui ont perdu un être cher."~ */
  IF ~~ THEN REPLY #7892 /* ~"Pourquoi ?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7893 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7894 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7895 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7896 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7897 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7898 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #7899 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7900 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7774 /* ~"Le passage d'une âme dans la Vraie Mort laisse souvent une vague de troubles derrière lui. Lorsque le défunt est un être cher, sa mort s'accompagne souvent de souffrance et d'un sentiment de perte."~ */
  IF ~~ THEN REPLY #7901 /* ~"Ce qui est naturel…"~ */ GOTO 17
  IF ~~ THEN REPLY #7902 /* ~"Alors, vous pleurez les vivants parce que…"~ */ GOTO 17
  IF ~~ THEN REPLY #7903 /* ~"La Vraie Mort ?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7904 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7905 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7906 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7907 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7908 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7909 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #7910 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7911 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #7781 /* ~"La souffrance et le sentiment de perte sont des émotions fortes. De telles émotions rattachent les vivants à cette existence, les empêchant d'atteindre la Vraie Mort lorsque leur heure est venue. Nous pleurons les vivants prisonniers de telles émotions."~ */
  IF ~~ THEN REPLY #7912 /* ~"La Vraie Mort ?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7913 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7914 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7915 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7916 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7917 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7918 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #7919 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7920 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #7782 /* ~"On l'appelle parfois la mort finale. La Vraie Mort est la délivrance de cette sombre et douloureuse existence. C'est la délivrance des émotions. La délivrance de la raison. La délivrance de ces carapaces."~ */
  IF ~~ THEN REPLY #7921 /* ~"Ça ressemble à de l'oubli."~ */ GOTO 19
  IF ~~ THEN REPLY #7922 /* ~"C'est pour ça que vous pleurez les vivants ?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7923 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7924 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7925 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7926 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7927 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7928 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #7929 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7930 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7783 /* ~L'Homme-Poussière s'incline. "Certains l'appellent comme ça, mais ce n'est pas tout à fait exact."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7931 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7932 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7933 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7934 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7935 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7936 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #7937 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7938 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #7784 /* ~L'Homme-Poussière attend.~ */
  IF ~~ THEN REPLY #7939 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #7940 /* ~"Pourquoi votre chant a-t-il changé ?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7941 /* ~"Je pleure un mort."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7942 /* ~"Je parle au nom d'une personne qui a perdu quelqu'un."~ */ GOTO 35
  IF ~~ THEN REPLY #7943 /* ~"J'aimerais vous écouter chanter."~ */ GOTO 11
  IF ~~ THEN REPLY #7944 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #7785 /* ~Tous les Hommes-Poussière chantent sur le même ton et au même rythme. Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, celui-ci comporte des cycles, comme le flux et le reflux des vagues sur le rivage. Ta mémoire est attisée par cette pensée…~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #7945 /* ~Essaie de te rappeler…~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #7946 /* ~Essaie de te rappeler…~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #7947 /* ~Essaie de te rappeler…~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #7948 /* ~Essaie de te rappeler…~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #7949 /* ~Repousse le souvenir.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #7786 /* ~Tu te souviens vaguement de t'être retrouvé sur un lointain rivage… ailleurs, loin d'ici. Une femme t'accompagne. Elle se tient à ta gauche et tu n'arrives pas à la distinguer clairement. Lorsque tu tentes de saisir le souvenir, il s'évanouit…~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7950 /* ~Retrouve tes repères.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7951 /* ~Retrouve tes repères.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #7787 /* ~… et tu te retrouves de nouveau avec les Hommes-Poussière pleureurs. Leur chant est à peine audible à présent. Ils s'arrêtent, prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #7952 /* ~Écoute de nouveau.~ */ GOTO 21
  IF ~~ THEN REPLY #7953 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #7788 /* ~Tous les Hommes-Poussière chantent sur le même ton et au même rythme. Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, le ton de celui-ci est beaucoup plus aigu, tel le sifflement d'une flèche ou le bruit du vent soufflant à travers un canyon. Ce chant commence et finit rapidement, après quoi les Hommes-Poussière se taisent, prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #7954 /* ~"J'ai des questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #7955 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #7789 /* ~Tous les Hommes-Poussière chantent sur le même ton et au même rythme. Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, celui-ci se caractérise par une certaine énergie et un caractère aléatoire. C'est un chant imprévisible, dont le ton semble changer par le simple fait d'être prononcé. Quelle que soit la façon dont le chant varie, les Hommes-Poussière réussissent à conserver une parfaite harmonie. Lorsque ce chant s'évanouit presque, les Hommes-Poussière prononcent plusieurs lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #7956 /* ~"J'ai des questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #7957 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #7790 /* ~Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, celui-ci ne comporte qu'une seule note, tenue pendant plusieurs minutes… Il rappelle le bruit d'une énorme cloche. Les Hommes-Poussière restent un moment silencieux une fois la note terminée, prononcent plusieurs lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #7958 /* ~"J'ai des questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #7959 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #7791 /* ~Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, celui-ci est plus subtil. Parfois, ce chant est si lent qu'il semble se mélanger au bruit de la rue. Les Hommes-Poussière se taisent complètement au bout d'une minute environ, prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur 'chant'.~ */
  IF ~~ THEN REPLY #7960 /* ~"J'ai des questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #7961 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #7792 /* ~L'Homme-Poussière te regarde froidement. "Notre chant n'a pas changé. C'est le même chant depuis le début."~ */
  IF ~~ THEN REPLY #7962 /* ~"Votre chant a changé… Il y a une différence de ton et de rythme."~ */ GOTO 29
  IF ~~ THEN REPLY #7963 /* ~"Très bien, peu importe."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #7793 /* ~L'Homme-Poussière secoue la tête. "C'est peut-être toi qui as changé."~ */
  IF ~~ THEN REPLY #7964 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7965 /* ~"Peut-être. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.1 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #7794 /* ~"Je pleure Iannis. Il souffre de la perte de sa fille unique, Deionarra."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7966 /* ~"Deionarra ? J'ai entendu parler d'elle. Sais-tu comment elle est morte ?"~ */ JOURNAL #27450 /* ~Les pleureuses Hommes-Poussière m'ont dit qu'elles pleuraient pour le deuil d'un homme dénommé Iannis, apparemment le père de cet esprit que j'ai rencontré à la Morgue. Iannis en saura peut-être plus sur Deionarra et moi…~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7967 /* ~"J'ai d'autres questions…"~ */ JOURNAL #27451 /* ~Les pleureuses Hommes-Poussière m'ont dit qu'elles pleuraient pour le deuil d'un homme dénommé Iannis, qui avait perdu sa seule et unique fille, Deionarra. Ces noms m'ont paru familiers, sans que je puisse mettre des visages dessus.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7968 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ JOURNAL #27451 /* ~Les pleureuses Hommes-Poussière m'ont dit qu'elles pleuraient pour le deuil d'un homme dénommé Iannis, qui avait perdu sa seule et unique fille, Deionarra. Ces noms m'ont paru familiers, sans que je puisse mettre des visages dessus.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.2 13.5 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #7795 /* ~"Nous pleurons pour la souffrance que tu éprouves face à cette perte."~ */
  IF ~~ THEN REPLY #7969 /* ~"Ça va mieux. Celui que tu pleurais avant que nous n'entamions notre conversation est plus dans le besoin que moi."~ */ GOTO 34
  IF ~~ THEN REPLY #7970 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7971 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.3 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #7796 /* ~"Nous pleurons la femme d'Angyar, qui éprouve de la souffrance face à cette perte."~ */
  IF ~~ THEN REPLY #7972 /* ~"Elle va mieux. Celui que tu pleurais avant que nous n'entamions notre conversation est plus dans le besoin qu'elle."~ */ GOTO 34
  IF ~~ THEN REPLY #7973 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7974 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.4 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #7797 /* ~"Nous pleurons Adahn, qui éprouve de la souffrance face à cette perte."~ */
  IF ~~ THEN REPLY #7975 /* ~"Euh… Adahn va mieux. Celui que tu pleurais avant que nous n'entamions notre conversation est plus dans le besoin que lui."~ */ GOTO 34
  IF ~~ THEN REPLY #7976 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7977 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #7798 /* ~L'Homme-Poussière s'incline, hoche la tête et reprend son chant.~ */
  IF ~~ THEN REPLY #7978 /* ~"J'ai d'autres questions…"~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #7979 /* ~Écoute.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #7980 /* ~Pars.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #7799 /* ~Le pleureur s'arrête soudain et t'observe. "Cette personne éprouve-t-elle de la souffrance face à cette perte ?"~ */
  IF ~~ THEN REPLY #7981 /* ~"Non. Ça ne les émeut pas."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7982 /* ~"Oui. Une femme, la femme d'Angyar, a perdu un fils. Cette mort l'a beaucoup peinée."~ */ GOTO 9
  IF ~~ THEN REPLY #7983 /* ~Mensonge : "Euh, oui… Mon ami, euh… Adahn… vient de perdre un proche. Cette mort l'a beaucoup peiné."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7984 /* ~"Oui, cette mort récente leur a causé beaucoup de peine et de chagrin."~ */ GOTO 38
  IF ~~ THEN REPLY #7985 /* ~"Excuse-moi… Ce n'est pas ce que je voulais dire. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #7800 /* ~"Nous pleurerons pour toi, si tel est ton désir."~ */
  IF ~~ THEN REPLY #7986 /* ~"Si tu le pouvais, ça atténuerait énormément ma peine."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #7987 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #7801 /* ~"Les circonstances qui entourent sa mort me sont inconnues."~ */
  IF ~~ THEN REPLY #7988 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7989 /* ~"Très bien. C'est tout ce que je voulais savoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #7802 /* ~"Nous pleurerons pour leur peine, si ça ne te fait rien."~ */
  IF ~~ THEN REPLY #7990 /* ~"Si tu le pouvais, ça atténuerait énormément leur peine."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #7991 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 4.7 11.6
  SAY #7803 /* ~Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, le ton de celui-ci n'est pas facile à identifier. Pendant que tu écoutes, tu remarques qu'il est étrangement atténué, comme si l'air seul absorbait le chant. Le chant des Hommes-Poussière s'évanouit au bout d'une minute environ, ils prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #7992 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #7993 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.6 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #7804 /* ~"Nous pleurons la personne dont tu parlais et qui éprouve de la souffrance face à cette perte."~ */
  IF ~~ THEN REPLY #7994 /* ~"La personne va mieux. Celui que tu pleurais avant que nous n'entamions notre conversation est plus dans le besoin que celle dont je parlais."~ */ GOTO 34
  IF ~~ THEN REPLY #7995 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #7996 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ GOTO 12
END
