// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BMORTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~BMORTE~

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31485 /* ~"Ça ne peut pas t'faire de mal de m'parler un peu, tieffeline."~ [MRT478] */
  IF ~~ THEN EXTERN ~DANNAH~ 289
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61707 /* ~"Annah, tu pourrais arrêter de remuer la queue ? C'est agaçant."~ [MRT476A] */
  IF ~~ THEN EXTERN ~DANNAH~ 290
END

IF ~~ THEN BEGIN 2 // from:
  SAY #61709 /* ~"Remue-la, dans ce cas."~ [MRT476B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #61710 /* ~"Dis, Annah… cette queue, elle est assez longue pour aller… tout au fond ?"~ [MRT479A] */
  IF ~~ THEN EXTERN ~DANNAH~ 291
END

IF ~~ THEN BEGIN 4 // from:
  SAY #61712 /* ~"'Ouais… elle peut même aller jusqu'à ton râtelier et faire gicler ton cerveau'."~ [MRT479B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #61713 /* ~"Fiélonne, j'ai une chose à te demander. D'où vient cet accent ?"~ [MRT544A] */
  IF ~~ THEN EXTERN ~DANNAH~ 292
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61714 /* ~"Peu importe."~ [MRT544B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",4)
~ THEN BEGIN 7 // from:
  SAY #61715 /* ~"Allez fiélonne, laisse-moi me… euh… m'asseoir sur tes genoux et écouter une petite histoire."~ [MRT477A] */
  IF ~~ THEN EXTERN ~DANNAH~ 293
END

IF ~~ THEN BEGIN 8 // from:
  SAY #61716 /* ~"Je vais bouder par là-bas, alors."~ [MRT477B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",5)
~ THEN BEGIN 9 // from:
  SAY #61717 /* ~"Tu es toujours aussi peu amicale ?"~ [MRT480] */
  IF ~~ THEN EXTERN ~DANNAH~ 294
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",6)
~ THEN BEGIN 10 // from:
  SAY #61718 /* ~"Tu es une sacrée petite tripoteuse de cadavre. Je t'admire pour ça."~ [MRT542A] */
  IF ~~ THEN EXTERN ~DANNAH~ 295
END

IF ~~ THEN BEGIN 11 // from:
  SAY #61719 /* ~"Hé, si tu peux retrouver mon corps, ne te gêne pas."~ [MRT542B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",7)
~ THEN BEGIN 12 // from:
  SAY #61720 /* ~"Dis-moi fiélonne, cette queue, c'est ton seul attribut démoniaque ?"~ [MRT549A] */
  IF ~~ THEN EXTERN ~DANNAH~ 296
END

IF ~~ THEN BEGIN 13 // from:
  SAY #61721 /* ~"Ta bouche aussi m'a l'air tout à fait démoniaque."~ [MRT549B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",8)
~ THEN BEGIN 14 // from:
  SAY #61722 /* ~"Tu sais petite fiélonne, tu es plutôt sympathique - enfin, si on oublie ton côté harpie."~ [MRT541A] */
  IF ~~ THEN EXTERN ~DANNAH~ 297
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61723 /* ~"Ah… je suis amoureux."~ [MRT541B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",9)
~ THEN BEGIN 16 // from:
  SAY #61724 /* ~"Si ça doit empirer, j'irai plutôt tremper ma plume dans la Dame des Douleurs."~ [MRT553A] */
  IF ~~ THEN EXTERN ~DANNAH~ 298
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61725 /* ~"Quoi ? La *Dame des Douleurs* ? En quoi parler d'elle pourrait-il poser problème ? Pourquoi la *Dame des Douleurs* y verrait-elle à redire, hein ?"~ [MRT553B] */
  IF ~~ THEN EXTERN ~DANNAH~ 299
END

IF ~~ THEN BEGIN 18 // from:
  SAY #61726 /* ~"Le destin ne devrait pas me tenter *moi*."~ [MRT553C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",10)
~ THEN BEGIN 19 // from:
  SAY #61727 /* ~"Tu sais, petite fiélonne, tu aurais meilleure allure si tu t'habillais un peu. Tu sais, une paire de bottes à lacets à talons hauts, pour aller avec tes yeux émeraude."~ [MRT546A] */
  IF ~~ THEN EXTERN ~DANNAH~ 300
END

IF ~~ THEN BEGIN 20 // from:
  SAY #61728 /* ~"Si j'étais toi, je me louerais une suite et je n'en sortirais pas pendant tout un mois."~ [MRT546B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",11)
~ THEN BEGIN 21 // from:
  SAY #61729 /* ~"Tu sais, petite fiélonne, tu me fais penser à une semence de flammes d'Arborée."~ [MRT547A] */
  IF ~~ THEN EXTERN ~DANNAH~ 301
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61730 /* ~"Ouais. Tes cheveux évoquent un gentil petit feu, mais, à l'intérieur, tu es amère, comme une piqûre de scarabée."~ [MRT547B] */
  IF ~~ THEN EXTERN ~DANNAH~ 302
END

IF ~~ THEN BEGIN 23 // from:
  SAY #61732 /* ~"J'aimerais, de temps à autre, que tu m'aimes pour ce que je suis, pas pour ce que je peux t'offrir."~ [MRT542C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",12)
~ THEN BEGIN 24 // from:
  SAY #61733 /* ~"Oh, puissances supérieures, ça recommence à me chatouiller derrière la tête. Je vais finir par en crever."~ [MRT554A] */
  IF ~~ THEN EXTERN ~DANNAH~ 303
END

IF ~~ THEN BEGIN 25 // from:
  SAY #61734 /* ~"Un jour, tu auras une démangeaison que tu ne pourras pas atteindre, et je refuserai de t'aider. Et là, ma vengeance sera totale…"~ [MRT554B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",13)
~ THEN BEGIN 26 // from:
  SAY #61735 /* ~"Allez petite fiélonne, tu peux me le dire. Je te plais à ce point ?"~ [MRT548A] */
  IF ~~ THEN EXTERN ~DANNAH~ 304
END

IF ~~ THEN BEGIN 27 // from:
  SAY #61736 /* ~"Bla-bla-bla, et que je menace ! Tu n'en as pas marre d'être tout le temps en pétard ? Pfff."~ [MRT548B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",14)
~ THEN BEGIN 28 // from:
  SAY #61737 /* ~"Tu sais, petite fiélonne, j'ai vu la façon dont tu regardes le chef. Il n'y a pas de quoi avoir honte. Pourquoi ne dis-tu rien ?"~ [MRT551A] */
  IF ~~ THEN EXTERN ~DANNAH~ 305
END

IF ~~ THEN BEGIN 29 // from:
  SAY #61738 /* ~"Bon, bon, du calme… Pfff."~ [MRT551B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",15)
~ THEN BEGIN 30 // from:
  SAY #61739 /* ~"Annah, si ça t'déplaît tant que ça que je matte, pourquoi est-ce que tu mets cette… tu sais… cette… cette veste ?"~ [MRT550A] */
  IF ~~ THEN EXTERN ~DANNAH~ 306
END

IF ~~ THEN BEGIN 31 // from:
  SAY #61740 /* ~"Hum. Pourtant, j'oublie de respirer quand tu la portes."~ [MRT550B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Morte_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #61741 /* ~"Dis, Grâce… tu… euh, tu as des sœurs ?"~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~~ THEN BEGIN 33 // from:
  SAY #61742 /* ~"Laisse-moi donc pleurer de joie."~ [MRT461BD] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 34 // from:
  SAY #61743 /* ~"Allez, Grâce, j'croyais que les succubes, c'étaient des marrantes. Pourquoi tu es si froide ?"~ [MRT462AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 363
END

IF ~~ THEN BEGIN 35 // from:
  SAY #61744 /* ~"Pfff. On leur pose une question, et on se fait écorcher vif."~ [MRT462B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 36 // from:
  SAY #61745 /* ~"On a une succube avec nous, et il faut qu'elle soit puritaine. J'ai vraiment une chance du tonnerre."~ [MRT463AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 364
END

IF ~~ THEN BEGIN 37 // from:
  SAY #61746 /* ~"Certes. Je… Hé, une petite minute !"~ [MRT463B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
InParty("Annah")
~ THEN BEGIN 38 // from:
  SAY #61747 /* ~"Hé, ne te laisse pas irriter par la petite fiélonne, Grâce. Elle n'est pas aussi jolie qu'elle le voudrait."~ [MRT555] */
  IF ~~ THEN EXTERN ~DGRACE~ 365
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Morte_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 39 // from:
  SAY #61749 /* ~"Pourquoi tu ne retournes pas sur Méchanus, Nordom, hein ?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",2)
~ THEN BEGIN 40 // from:
  SAY #61750 /* ~"Je vais lancer cette stupide boîte comme si c'était un dé."~ [MRT464AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 139
END

IF ~~ THEN BEGIN 41 // from:
  SAY #61751 /* ~"Espèce d'horloge ratée !"~ [MRT465] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 42 // from:
  SAY #61752 /* ~"Nordom, comment se fait-il que tu ne recharges jamais tes arbalètes ?"~ [MRT557A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 140
END

IF ~~ THEN BEGIN 43 // from:
  SAY #61753 /* ~"Ça doit être pratique."~ [MRT557B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #61754 /* ~"Nordom, arrête de faire cliqueter tes arbalètes ! Ça m'azimute."~ [MRT558A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 141
END

IF ~~ THEN BEGIN 45 // from:
  SAY #61755 /* ~"Pour une fois, *une seule*, j'aimerais voyager avec des gens normaux."~ [MRT558B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",5)
~ THEN BEGIN 46 // from:
  SAY #61756 /* ~"Hé, Nordom… Toc-toc."~ [MRT556A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 142
END

IF ~~ THEN BEGIN 47 // from:
  SAY #61757 /* ~"C'est une blague, imbécile de polygone. Tu es sensé répondre : 'Qui est là ?'."~ [MRT556B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 143
END

IF ~~ THEN BEGIN 48 // from:
  SAY #61758 /* ~"Écoute, laisse tomber."~ [MRT556C] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 49 // from:
  SAY #61759 /* ~"Psst. Hé, Nordom. Calcule-moi la meilleure façon pour 'se blottir sur les coussins d'Annah', d'accord ?"~ [MRT467AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 144
END

IF ~~ THEN BEGIN 50 // from:
  SAY #61760 /* ~"Tais-toi ! Tais-toi !!"~ [MRT467BA] */
  IF ~~ THEN EXTERN ~DANNAH~ 307
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #64208 /* ~"Alors, Grâce… tu as des sœurs ?"~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
~ THEN BEGIN 52 // from:
  SAY #64209 /* ~"Hé, Nordom, pourquoi tu ne retournerais pas sur Méchanus, hein ?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END
