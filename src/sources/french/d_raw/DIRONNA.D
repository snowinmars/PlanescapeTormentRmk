// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIRONNA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DIRONNA~

IF ~  Global("Iron_Nalls","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #9346 /* ~Cette femme aux larges épaules marche à pas traînants parmi les poutres jonchant la rue et leur donne des coups de pied avec ses bottes renforcées. Parfois, elle se penche, arrache une pointe à mains nues, puis se redresse et l'examine avant de la laisser tomber dans la sacoche en cuir qu'elle porte en bandoulière.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13094 /* ~"Bonjour…"~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13095 /* ~"Bonjour…"~ */ GOTO 7
  IF ~~ THEN REPLY #13096 /* ~Laisse-la travailler.~ */ EXIT
END

IF ~  Global("Iron_Nalls","AR0300",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #13038 /* ~Pointe-en-Fer se redresse et pose les mains sur ses hanches. "De retour ? Qu'est-ce que tu veux cette fois ?"~ */
  IF ~~ THEN REPLY #13097 /* ~"J'ai des questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13098 /* ~"Rien. Au revoir."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #13040 /* ~Pointe-en-Fer se redresse et pose les mains sur ses hanches. "De retour, hein ? Qu'est-ce que tu --" Elle aperçoit soudain Annah derrière toi. "Dis-donc, matois… qui est ta nouvelle amie ?"~ */
  IF ~~ THEN REPLY #64412 /* ~"Elle s'appelle Annah."~ */ EXTERN ~DANNAH~ 82
  IF ~~ THEN REPLY #64413 /* ~"Elle s'appelle Annah - mais je ne suis pas sûr de pouvoir affirmer qu'elle est mon amie."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 83
END

IF ~  Global("Iron_Nalls","AR0300",2)
!NearbyDialog("DAnnah")
~ THEN BEGIN 3 // from:
  SAY #13050 /* ~Pointe-en-Fer se redresse et pose les mains sur ses hanches. "De retour, hein ?" Elle regarde derrière toi, apparemment troublée. "Dis, matois… où est la petite mignonne qui t'accompagnait ?"~ */
  IF ~  Dead("Annah")
~ THEN REPLY #12967 /* ~"Elle est… morte."~ */ GOTO 26
  IF ~  Dead("Annah")
~ THEN REPLY #13101 /* ~Mensonge : "Je ne sais pas. J'ai quelques questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Dead("Annah")
~ THEN REPLY #13102 /* ~"Je ne sais pas. J'ai quelques questions…"~ */ GOTO 27
  IF ~  Dead("Annah")
~ THEN REPLY #13103 /* ~Mensonge : "Je ne sais pas. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  !Dead("Annah")
~ THEN REPLY #13104 /* ~"Je ne sais pas. Au revoir."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",2)
NearbyDialog("DAnnah")
~ THEN BEGIN 4 // from:
  SAY #13051 /* ~Pointe-en-Fer se redresse et pose les mains sur ses hanches. En voyant Annah, elle sourit. "De retour, hein ? Contente de revoir ton joli minois, jeune fille." Elle se tourne vers toi. "Qu'est-ce qu'il te faut, matois ?"~ */
  IF ~~ THEN REPLY #13105 /* ~"J'ai des questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13106 /* ~"Rien. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 3.4 4.1 6.1 7.1 9.3 10.3 11.3 12.4 13.2 14.3 15.2 16.1 17.3 18.4 19.4 20.4 21.1 22.1 23.1 24.2 25.1 26.1 27.1 28.3 29.6 30.7 31.6 32.6 33.6 34.4 36.5 37.4 38.1
  SAY #13052 /* ~"Au revoir aussi, dans ce cas, matois."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13107 /* ~Pars.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ EXIT
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13108 /* ~Pars.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0
  SAY #13053 /* ~Elle se redresse à ton approche. Elle sourit poliment, mais à voir son regard et la façon dont sa main est posée près du manche de son arme, on comprend qu'elle s'attend à tout. Tu remarques que l'un de ses yeux est voilé par une pellicule laiteuse. "N'approche pas plus, matois… qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #13109 /* ~"J'ai quelques questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13110 /* ~"Rien, tant pis. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #13054 /* ~Elle se redresse, en t'entendant approcher. Son arme est dans son fourreau, mais on voit qu'elle est prête pour le combat. Tu remarques que l'un de ses yeux est voilé par une pellicule laiteuse. En remarquant Annah, elle sourit et salue la tieffeline avant de te regarder à nouveau. "N'approche pas plus, matois… qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #13111 /* ~"J'ai quelques questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13112 /* ~"Rien, tant pis. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.0 4.0 6.0 7.0 9.2 10.0 11.2 13.1 14.2 15.1 16.0 17.2 18.3 19.3 20.3 21.0 22.0 23.0 24.1 25.0 26.0 27.0 28.2 29.5 30.6 31.5 32.5 33.5 34.3 36.4 37.3 38.0
  SAY #13055 /* ~Elle acquiesce. "Demande toujours."~ */
  IF ~  Global("RP_Portal","GLOBAL",3)
~ THEN REPLY #48403 /* ~"On m'a dit de m'adresser à une certaine Pointe-en-Fer, censée se trouver par ici en train de fouiller un tas de bois, pour l'interroger sur le porche rempli d'ordures du Square du Chiffonnier. Tu peux m'aider ?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",4)
GiveItemCreate("Junk",Protagonist,1,0,0)
~ JOURNAL #39472 /* ~Une femme nommée Pointe-en-Fer m'a dit que l'arche pleine de déchets du Square du Chiffonnier est en réalité un portail, qu'elle a découvert par le plus grand des hasards. Sa 'clé' consiste tout simplement en une poignée de déchets qu'il faut ramasser au passage. Selon Pointe-en-Fer, le passage conduit à un petit réduit dans lequel se trouve un second portail menant sous terre. Celui-là, elle a préféré ne pas prendre le risque de voir où il allait.~ */ GOTO 38
  IF ~  Global("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13113 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 9
  IF ~  Global("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13114 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 28
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13115 /* ~"Qui es-tu déjà ?"~ */ GOTO 9
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13116 /* ~"Qui es-tu déjà ?"~ */ GOTO 28
  IF ~~ THEN REPLY #13117 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 11
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13118 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 22
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13119 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 35
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13120 /* ~"Je cherche un certain Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13121 /* ~"Je cherche un journal que j'ai perdu. Tu en as vu un ?"~ */ GOTO 24
  IF ~~ THEN REPLY #13122 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.3
  SAY #13056 /* ~Elle tire trois pointes de son sac en bandoulière, les envoie tourbillonner en l'air, puis les attrape dans la paume de sa main. "Pointe-en-Fer, on m'appelle." Elle les remet dans son sac avec un *tintement* sourd.~ */
  IF ~~ THEN REPLY #13123 /* ~"Pourquoi est-ce que tu récupères des pointes ?"~ */ GOTO 12
  IF ~~ THEN REPLY #13124 /* ~"Qu'est-ce qui est arrivé à ton œil ?"~ */ GOTO 10
  IF ~~ THEN REPLY #13125 /* ~"Tu tombes bien. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13126 /* ~"C'est un nom qui te va bien. Au revoir, Pointe."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.1 20.0 28.1
  SAY #13057 /* ~Le visage de Pointe se durcit. "C'est pas tes oignons, bige. Pourquoi ? T'as envie d'une blessure assortie pour ta collection ?"~ */
  IF ~~ THEN REPLY #13127 /* ~"Non, pas vraiment. J'ai d'autres questions…"~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13128 /* ~"Non, ça ne m'irait pas très bien."~ */ GOTO 21
  IF ~~ THEN REPLY #13129 /* ~"C'est une menace ? Vas-y, essaie un peu…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13130 /* ~"Non. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.5
  SAY #13058 /* ~Elle fait rouler ses yeux. "Que crois-tu que je faisais, bige ? Je ramassais des pointes, des clous quoi !" Elle rit doucement, en secouant la tête.~ */
  IF ~~ THEN REPLY #13131 /* ~"Pourquoi ?"~ */ GOTO 12
  IF ~~ THEN REPLY #13132 /* ~"D'où vient tout ce bois ?"~ */ GOTO 13
  IF ~~ THEN REPLY #13133 /* ~"J'ai d'autres questions."~ */ GOTO 8
  IF ~~ THEN REPLY #13134 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 9.0 11.0 28.0
  SAY #13059 /* ~"Je les vends à un homme, du nom d'Hamrys, dans le Bas Quartier. Un fabricant de cercueils."~ */
  IF ~~ THEN REPLY #13135 /* ~"Qu'est-ce que tu peux me dire d'autre sur ce Hamrys ?"~ */ GOTO 17
  IF ~~ THEN REPLY #13136 /* ~"Où se trouve le Bas Quartier ?"~ */ GOTO 18
  IF ~~ THEN REPLY #13137 /* ~"Est-ce qu'il y a d'autres gens qui récupèrent des pointes ici ?"~ */ GOTO 19
  IF ~~ THEN REPLY #13138 /* ~"D'où vient tout ce bois ?"~ */ GOTO 13
  IF ~~ THEN REPLY #13139 /* ~"C'est tout ce que voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.3
  SAY #13060 /* ~Elle hausse les épaules. "Ici et là, je suppose. Parfois, les dabus balancent des choses et j'y jette un coup d'œil avant qu'un autre groupe vienne les ramasser. Sûrement du déblai des bâtiments ou des murs qu'ils construisent ou démolissent."~ */
  IF ~~ THEN REPLY #13140 /* ~"Les dabus ?"~ */ GOTO 14
  IF ~~ THEN REPLY #13141 /* ~"J'ai d'autres questions."~ */ GOTO 8
  IF ~~ THEN REPLY #13142 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #13061 /* ~"Oui, les dabus - les serviteurs de la Dame." Elle te regarde, l'air perplexe. "T'es nouveau à Sigil, on dirait."~ */
  IF ~~ THEN REPLY #13143 /* ~"Parle-moi de ces dabus."~ */ GOTO 15
  IF ~~ THEN REPLY #13144 /* ~"La Dame ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13145 /* ~"J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13146 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13062 /* ~"Ils travaillent dans toute la cité, suivant la volonté de la Dame. Toujours en train de construire et de reconstruire, utilisant ce qui est tombé ou qui s'est cassé pour faire du neuf."~ */
  IF ~~ THEN REPLY #13147 /* ~"La Dame ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13148 /* ~"J'ai d'autres questions."~ */ GOTO 8
  IF ~~ THEN REPLY #13149 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #13063 /* ~Pointe fronce les sourcils. "Oh, non ! Je ne dirai plus rien sur elle…" Avec un doigt, elle trace un demi-cercle sur son cœur. "Suis mon conseil, bige… ne pose pas de questions sur la Dame."~ */
  IF ~~ THEN REPLY #13150 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13151 /* ~"Alors, au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 12.0 18.1 19.1 20.1
  SAY #13064 /* ~"Y'a pas grand-chose à dire… il est assez bavard - il branlera son râtelier jusqu'à ce que tu deviennes azimuté, si tu le laisses faire - mais c'est un bon marchandeur. Il a besoin des pointes, j'ai besoin du jonc, et rien de plus."~ */
  IF ~~ THEN REPLY #13152 /* ~"Où se trouve le Bas Quartier ?"~ */ GOTO 18
  IF ~~ THEN REPLY #13153 /* ~"Est-ce qu'il y a d'autres gens qui récupèrent des pointes ici ?"~ */ GOTO 19
  IF ~~ THEN REPLY #13154 /* ~"J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13155 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 12.1 17.0 19.2 20.2
  SAY #13065 /* ~"Eh… je connaissais le chemin, mais les dabus ont changé les rues par ici. Je ne sais pas comment on y va, maintenant - il faut que j'établisse un nouveau chemin - mais je pense que les dabus remettront en fin de compte les choses en place."~ */
  IF ~~ THEN REPLY #13156 /* ~"Les dabus ?"~ */ GOTO 14
  IF ~~ THEN REPLY #13157 /* ~"Parle-moi de ce Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13158 /* ~"Est-ce qu'il y a d'autres gens qui récupèrent des pointes ici ?"~ */ GOTO 19
  IF ~~ THEN REPLY #13159 /* ~"Hum. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13160 /* ~"Je vais essayer de trouver de meilleures indications ailleurs. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.2 17.1 18.2
  SAY #13066 /* ~Avec une grimace, elle secoue la tête. "Personne n'a été assez intelligent ou n'a eu la volonté de le faire avant moi et j'ai chassé tous ceux qui ont essayé de s'accaparer mon droit." Elle tapote amoureusement le poignard à longue lame qui pend à sa taille.~ */
  IF ~~ THEN REPLY #13161 /* ~"Ton 'droit' ?"~ */ GOTO 20
  IF ~~ THEN REPLY #13162 /* ~"Parle-moi de ce Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13163 /* ~"Où se trouve le Bas Quartier ?"~ */ GOTO 18
  IF ~~ THEN REPLY #13164 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13165 /* ~"C'est bien. Alors, au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13067 /* ~"Oui, c'est comme ça que je l'appelle ! C'est dur d'avoir un travail honnête dans la Ruche et je ne vais pas laisser une espèce de gringalet me peler d'mon boulot. J'en ai envoyé plus d'un courir en hurlant et en se tenant les boyaux… ou rejoindre les Récupérateurs, quand la chance les avait abandonnés." Son œil mort brille de méchanceté. "La Ruche sait que cet endroit est à Pointe-en-Fer."~ */
  IF ~~ THEN REPLY #13166 /* ~"C'est comme ça que tu as perdu ton œil ?"~ */ GOTO 10
  IF ~~ THEN REPLY #13167 /* ~"Parle-moi de ce Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13168 /* ~"Où se trouve le Bas Quartier ?"~ */ GOTO 18
  IF ~~ THEN REPLY #13169 /* ~"J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13170 /* ~"Je vois. Au revoir, alors."~ */ GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 10.1
  SAY #13068 /* ~Elle rit de bon cœur. "Oui, et en plus j'crois pas qu'il reste beaucoup de place pour une autre cicatrice !"~ */
  IF ~~ THEN REPLY #13171 /* ~"Hé… j'ai d'autres questions."~ */ GOTO 8
  IF ~~ THEN REPLY #13172 /* ~"Tu as peut-être raison. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.6
  SAY #13069 /* ~"Écoute, matois, j'ai beaucoup à faire ; mon sac ne va pas s'remplir tout seul de pointes pendant que j'te fais la chanson. Pourquoi ne pas interroger la boîte grise d'un autre matois pour une fois ?"~ */
  IF ~~ THEN REPLY #13175 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 8
  IF ~~ THEN REPLY #13176 /* ~"Peut-être que je lui demanderai. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 8.8 29.4 30.5 31.4 32.4 33.4 34.2 36.3 37.2
  SAY #13070 /* ~Elle acquiesce. "Ah, j'ai déjà entendu ce nom. Le chef d'un groupe de Récupérateurs, je crois. J'sais pas trop où on peut l'trouver. Tu peux essayer l'Square du Chiffonnier ; c'est au nord-ouest d'ici. C'est plein d'Récupérateurs…"~ */
  IF ~~ THEN REPLY #13173 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13174 /* ~"Alors, je vais essayer de le trouver là-bas. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 8.9
  SAY #13071 /* ~"Nan." Elle s'interrompt un moment. "Tu sais, c'est une bonne idée, ça… un journal. P't-être que j'devrais aussi en commencer un."~ */
  IF ~~ THEN REPLY #13177 /* ~"Oui. C'est fou tout ce qu'on peut oublier… Un journal, ça permet de conserver ses souvenirs."~ */ GOTO 25
  IF ~~ THEN REPLY #13178 /* ~"Peut-être… J'ai une autre question…"~ */ GOTO 8
  IF ~~ THEN REPLY #13179 /* ~"Peut-être. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13072 /* ~Elle rumine ce que tu viens de lui dire. "Eh. T'as raison. Ouais, matois ! J'vais en faire un. J'te r'mercie de l'idée." Elle sourit.~ */
  IF ~~ THEN REPLY #13180 /* ~"Bien sûr. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13181 /* ~"De rien. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 3.0
  SAY #13073 /* ~Pointe a l'air vraiment attristée. "Eh… ah… je vois. C'est triste. Ça arrive trop souvent dans la Ruche." Elle secoue rapidement la tête, comme pour se débarrasser de sa mélancolie. "Bon, qu'est-ce que tu voulais ?"~ */
  IF ~~ THEN REPLY #13182 /* ~"Je t'ai dit que j'ai quelques questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13183 /* ~"Rien, peu importe. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 3.1 3.2
  SAY #13074 /* ~"Oh ?" Ayant attiré à nouveau son attention, elle se tourne et te regarde en fronçant les sourcils. "C'est dommage. Bon, qu'est-ce tu veux encore ?"~ */
  IF ~~ THEN REPLY #13184 /* ~"Je te disais que j'ai quelques questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13185 /* ~"Rien, peu importe. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 8.2 8.4
  SAY #13075 /* ~Elle tire trois pointes de son sac en bandoulière, les envoie tourbillonner en l'air, puis les attrape dans la paume de sa main. "Pointe-en-Fer, on m'appelle." Elle les remet dans son sac avec un *tintement* assourdi. Elle lance un regard à Annah pour voir si elle a vu son tour et voyant que la tieffeline est déjà partie, elle te regarde à nouveau.~ */
  IF ~~ THEN REPLY #13186 /* ~"Pourquoi est-ce que tu récupères des pointes ?"~ */ GOTO 12
  IF ~~ THEN REPLY #13187 /* ~"Comment est-ce que tu as perdu ton œil ?"~ */ GOTO 10
  IF ~~ THEN REPLY #13188 /* ~"Tu tombes bien. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #13189 /* ~"C'est un nom qui te va bien. Au revoir, Pointe."~ */ GOTO 5
END

IF ~~ THEN BEGIN 29 // from:
  SAY #13076 /* ~Pointe-en-Fer est déconcertée par la remarque, mais se reprend vite. Elle sourit un peu tristement. "Certainement, matois. Qu'est-ce que tu cherches ?"~ */
  IF ~~ THEN REPLY #13190 /* ~"Je cherche du travail."~ */ GOTO 30
  IF ~~ THEN REPLY #13191 /* ~"Je voudrais me divertir."~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13192 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13193 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13194 /* ~"Je cherche un certain Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13195 /* ~"Rien, en fait. Je voudrais te demander autre chose…"~ */ GOTO 8
  IF ~~ THEN REPLY #13265 /* ~"Peu importe. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 29.0 33.1 34.0 36.0 37.0
  SAY #13077 /* ~Pointe se gratte la tête. "Il n'y a que deux sortes de boulots dans la Ruche… tu peux attraper de la vermine à cerveau et tu peux récupérer les morts.~ */
  IF ~~ THEN REPLY #13196 /* ~"Attraper de la vermine à cerveau ?"~ */ GOTO 31
  IF ~~ THEN REPLY #13197 /* ~"Récupérer… des morts ?"~ */ GOTO 32
  IF ~~ THEN REPLY #13198 /* ~"Et si je voulais me divertir ?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13199 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13200 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13201 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13202 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 8
  IF ~~ THEN REPLY #13266 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #13078 /* ~"Ouais. La cité de Sigil te paye pour chaque queue des petits cagueurs que tu ramènes. Le bureau local est au sud d'ici, un employé à l'intérieur t'en dira davantage."~ */
  IF ~~ THEN REPLY #13203 /* ~"Tu as parlé de ramasser des 'morts' ?"~ */ GOTO 32
  IF ~~ THEN REPLY #13204 /* ~"Et si je voulais me divertir ?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13205 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13206 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13207 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13208 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 8
  IF ~~ THEN REPLY #13267 /* ~"Alors, j'irai peut-être le voir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #13079 /* ~"Les Hommes-Poussière te donnent du jonc si tu leur amènes des morts… ça garde les rues propres. Les biges qui vivent de ça s'appellent les Récupérateurs… des charognards, comme moi -- mais les pointes ça pue pas comme les morts." Elle sourit d'un air affecté.~ */
  IF ~~ THEN REPLY #13209 /* ~"Tu as parlé d'attraper de la vermine à cerveau ?"~ */ GOTO 31
  IF ~~ THEN REPLY #13210 /* ~"Et si je voulais me divertir ?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13211 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13212 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13213 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13214 /* ~"C'est vrai. Je voudrais te demander autre chose…"~ */ GOTO 8
  IF ~~ THEN REPLY #13268 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 29.1 30.2 31.1 32.1 34.1 37.1
  SAY #13080 /* ~"Bon, tout dépend de ce qui t'amuse. Les meilleures tavernes par ici, ce sont celle de la Poussière accumulée et celle du Cadavre fumant. De la compagnie assez correcte, mais là encore tout dépend du genre de compagnie que tu cherches." Elle lance un regard à Annah, mais la tieffeline ne la remarque pas.~ */
  IF ~~ THEN REPLY #13215 /* ~"Comment est-ce que je peux trouver ces endroits ?"~ */ DO ~SetGlobal("Know_Dustman_Bar","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #13216 /* ~"Et le travail ici ?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13217 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13218 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13219 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13220 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 8
  IF ~~ THEN REPLY #13269 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 29.2 30.3 31.2 32.2 33.2 36.1
  SAY #13081 /* ~"C'est le lot de tout le monde ou presque dans la Ruche… et à te voir, tu n'échappes pas à la règle ! Fais attention à qui tu parles." Elle te flatte une fois de plus. "Je suis sûre que tu peux prendre soin de toi… et ta délicieuse amie m'a l'air assez robuste." Pointe regarde Annah, mais la jeune femme ignore la remarque.~ */
  IF ~~ THEN REPLY #13221 /* ~"Et le travail ici ?"~ */ GOTO 30
  IF ~~ THEN REPLY #13222 /* ~"Et si je voulais me divertir ?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13223 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13224 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 8
  IF ~~ THEN REPLY #13225 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 8.7
  SAY #13082 /* ~Elle fait un signe à Annah. "On dirait que ta belle compagne est une rucheuse… tu l'as interrogée ?" Pointe sourit à la tieffeline, mais son œil mort ne la met pas beaucoup en valeur.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 88
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #13083 /* ~Pointe-en-Fer réfléchit un moment, en se grattant le menton. "Le Bar de la Poussière accumulée est proche de la Morgue ; va vers le sud-ouest en partant de la porte principale. Le Cadavre fumant - mon préféré - se trouve à l'est d'ici. J'y serais bien allée avec toi prendre un verre, mais j'ai beaucoup à faire."~ */
  IF ~~ THEN REPLY #13226 /* ~"Et le travail ici ?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13227 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13228 /* ~"Je dois me méfier de quelque chose par ici ?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13229 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13230 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 8
  IF ~~ THEN REPLY #13270 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 37 // from: 29.3 30.4 31.3 32.3 33.3 36.2
  SAY #13259 /* ~"C'est le lot de tout le monde ou presque dans la Ruche… et à te voir, tu n'échappes pas à la règle ! J'ai entendu dire qu'il y avait un affranchi vraiment dangereux qui traînait par ici, qui cherchait des ennuis et qui voulait rougir son épée. Un noble, d'après son allure." Elle te flatte encore. "J'suis sûre qu'tu peux t'en occuper… ta délicieuse amie a l'air robuste aussi." Pointe regarde Annah, mais la jeune femme ignore la remarque.~ */
  IF ~~ THEN REPLY #13260 /* ~"Et le travail ici ?"~ */ GOTO 30
  IF ~~ THEN REPLY #13261 /* ~"Et si je voulais me divertir ?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13262 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13263 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 8
  IF ~~ THEN REPLY #13264 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 38 // from: 8.0
  SAY #48400 /* ~Pointe-en-Fer hoche la tête, lentement. "C't'un portail, tu sais. J'suis tombé d'ssus par hasard… tout ce dont t'as besoin, c'est d'une poignée de détritus quand t'en approches, et tu pourras le franchir à l'aise. Y'a un espace derrière, et une porte qui mène sous terre, mais j'm'suis dit que ça valait pas l'coup de chercher des ennuis, alors j'suis revenue. Tiens…" Elle te tend une poignée de détritus. "T'as qu'à t'servir de ceux-là, si tu veux. J'allais les jeter, de toute façon."~ */
  IF ~~ THEN REPLY #48401 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #48402 /* ~"Merci, Pointe-en-Fer. Au revoir."~ */ GOTO 5
END
