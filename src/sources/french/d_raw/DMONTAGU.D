// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMONTAGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMONTAGU~

IF ~  Global("Montague","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #43991 /* ~Ce beau jeune homme semble perdu dans ses pensées, le front plissé et les lèvres légèrement pincées.~ */
  IF ~~ THEN REPLY #43992 /* ~"Bonjour…"~ */ DO ~SetGlobal("Montague","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #43993 /* ~Laisse-le à ses pensées.~ */ EXIT
END

IF ~  GlobalGT("Montague","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #43994 /* ~Ce jeune homme semble inquiet. À ton approche, il te salue. "Une fois de plus, je t'adresse mes salutations. Puis-je faire quelque chose pour toi ?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66154 /* ~"C'est toi, Montague ? Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66155 /* ~"C'est toi, Montague ? Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66156 /* ~"Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66157 /* ~"Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #43995 /* ~"J'avais des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #43996 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #43997 /* ~"Je te salue également, messire. Que puis-je pour toi ?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66152 /* ~"C'est toi, Montague ? Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66153 /* ~"C'est toi, Montague ? Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #43998 /* ~"J'avais des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #43999 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.2 4.4 5.1 6.1 7.1 8.2 9.1 10.1 11.1 12.1 13.2 15.0 16.0 17.2 39.0 40.0
  SAY #44000 /* ~"Oui ?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
~ THEN REPLY #44001 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Montague","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Montague","GLOBAL",1)
~ THEN REPLY #44002 /* ~"Qui es-tu déjà ?"~ */ GOTO 4
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66158 /* ~"C'est toi, Montague ? Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66159 /* ~"C'est toi, Montague ? Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44003 /* ~"Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44004 /* ~"Il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #44005 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #44006 /* ~"J'ai quelques questions sur cet endroit…"~ */ GOTO 39
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #44007 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 40
  IF ~~ THEN REPLY #44008 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #44009 /* ~"Je me nomme Montague, factotum des Sensats."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #52994 /* ~"Montague… il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #52995 /* ~"Montague… il faut que je te parle de Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #44010 /* ~"Factotum ?"~ */ GOTO 5
  IF ~~ THEN REPLY #44011 /* ~"Les Sensats ?"~ */ GOTO 6
  IF ~~ THEN REPLY #44012 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44013 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.0
  SAY #44014 /* ~"Tout à fait, messire. Un 'membre', si tu préfères."~ */
  IF ~~ THEN REPLY #44016 /* ~"Tu as dit 'Sensats' ?"~ */ GOTO 6
  IF ~~ THEN REPLY #44017 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44018 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3 5.0
  SAY #44015 /* ~"Tout à fait, messire… la 'Société des Sensations'. Une faction de Sigil, messire… la plus importante. Si tu veux en savoir plus sur les Sensats, adresse-toi à Écharde. Tu le trouveras dans ce bâtiment, à l'entrée."~ */
  IF ~~ THEN REPLY #44019 /* ~"Tu as dit 'factotum' ?"~ */ GOTO 5
  IF ~~ THEN REPLY #44020 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44021 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.6
  SAY #44022 /* ~"Je travaille comme assistant d'un administrateur de la faction. Mais, plus encore aujourd'hui que jadis, je suis confondu par une étrange facette de la vie."~ */
  IF ~~ THEN REPLY #44023 /* ~"Quoi… ?"~ */ GOTO 8
  IF ~~ THEN REPLY #44025 /* ~"Je vois. J'avais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44026 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #44024 /* ~"Les problèmes liés à la gent féminine."~ */
  IF ~~ THEN REPLY #44027 /* ~"C'est quoi ton problème, exactement ?"~ */ GOTO 10
  IF ~~ THEN REPLY #44028 /* ~"Tu es une femme ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44029 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44030 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #44031 /* ~Le jeune homme te regarde longuement. "Non."~ */
  IF ~~ THEN REPLY #44032 /* ~"C'est quoi ton problème, exactement ?"~ */ DO ~SetGlobal("Montague","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY #44033 /* ~"Quoi qu'il en soit, j'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44034 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #44035 /* ~"J'ignore ce qui la préoccupe. J'ai essayé de lui rendre sa gaieté. J'ignore tout de son problème."~ */
  IF ~~ THEN REPLY #44036 /* ~"Comment ça va entre vous deux ?"~ */ GOTO 11
  IF ~~ THEN REPLY #44037 /* ~"C'est dommage. J'avais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44038 /* ~"Bonne chance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #44039 /* ~"Hormis cet accès de mécontentement et de monotonie, tout va pour le mieux ! Tout ce qui nous entoure est tranquille… Nos familles sont plus que satisfaites de notre union potentielle et ses frères et sœurs m'adorent. Il n'y a aucun problème."~ */
  IF ~~ THEN REPLY #44040 /* ~"Hum. Peut-être que le problème, c'est justement qu'il n'y en a pas."~ */ GOTO 12
  IF ~~ THEN REPLY #44041 /* ~"C'est dommage. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44042 /* ~"J'espère que ça va s'arranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44043 /* ~"En quoi l'absence de problèmes pourrait-il en être un ? Parle-moi sans détour, messire."~ */
  IF ~~ THEN REPLY #44045 /* ~"Peut-être qu'elle voudrait que votre relation soit un peu plus pimentée."~ */ GOTO 13
  IF ~~ THEN REPLY #44046 /* ~"Peu importe, j'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44047 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #44048 /* ~"Comment peux-tu savoir ce qu'elle désire ?!" Il s'échauffe. "Nous nous aimons, sans réserve, sans que rien de sordide, ni de pernicieux ne vienne entraver notre jeune amour. Je te prie te t'en aller, messire. Tu n'es qu'un fripon et un imbécile !"~ */
  IF ~~ THEN REPLY #44049 /* ~"Attends… Calme-toi."~ */ GOTO 14
  IF ~~ THEN REPLY #44050 /* ~"Tu as tort de me provoquer, mais si tu veux te battre…"~ */ DO ~SetGlobal("Montague_Problem","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44051 /* ~"Bon, ça suffit les insultes. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44052 /* ~"Tu ferais mieux de tenir ta langue si tu ne veux pas que je te l'arrache. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44053 /* ~"Je suis désolé… Je me suis laissé emporter. Je vous présente mes excuses, à toi et aux tiens, mon bon messire."~ */
  IF ~~ THEN REPLY #44054 /* ~"Laisse tomber. C'est rien."~ */ GOTO 15
  IF ~~ THEN REPLY #44055 /* ~"Méfie-toi. Te battre avec moi pourrait bien être la plus grosse erreur de ta vie."~ */ GOTO 16
  IF ~~ THEN REPLY #44056 /* ~Ignore-le et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44057 /* ~"Tu es vraiment très indulgent, messire."~ */
  IF ~~ THEN REPLY #44058 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44059 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #44060 /* ~"Eh bien, je serai vigilant, messire."~ */
  IF ~~ THEN REPLY #44061 /* ~"J'avais des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44062 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.0 1.1 1.2 1.3 2.0 2.1 3.2 3.3 3.4 3.5 4.0 4.1
  SAY #44063 /* ~"Oh ?" Il te lance un regard déconcerté, légèrement méfiant.~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44064 /* ~"J'ai surpris une de ses conversations à la Maison de tolérance. Elle a une aventure, tu sais."~ */ GOTO 18
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44065 /* ~"J'exige son amour. Et j'exige que tu retires toutes tes fausses déclarations d'amour avant que je te réduise en miettes."~ */ GOTO 34
  IF ~~ THEN REPLY #44066 /* ~"En fait, peu importe. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44067 /* ~"On parlera d'elle plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44068 /* ~"Tu mens. Pour que je te croie, tu dois me donner des preuves."~ */
  IF ~  PartyHasItem("LoveLtr")
~ THEN REPLY #44069 /* ~"J'ai aussi trouvé ces lettres… Tiens, lis-les."~ */ DO ~TakePartyItemNum("LoveLtr",1)
~ GOTO 20
  IF ~  !PartyHasItem("LoveLtr")
~ THEN REPLY #44070 /* ~Mensonge : "Je… je l'ai vue lire des lettres de lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Montague_1","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #44071 /* ~"On parlera de ça plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #44072 /* ~"Pas moi. Je refuse d'accorder la moindre crédibilité à ces accusations… Je dois d'abord voir ces lettres de mes propres yeux avant de pouvoir en juger. Si tu m'apportes ces lettres, alors j'accepterai d'en parler avec toi."~ */
  IF ~~ THEN REPLY #44073 /* ~"Quand je les aurai, je reviendrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #44074 /* ~Il prend les lettres et les parcourt. "Hélas ! C'est vrai ! Elle a rencontré un autre qui l'aime passionnément. Ah, les peines de cœur sont le sort des Sensats, je crois. Il y a tant de passion dans ces lettres que je vais devoir me mettre en quête d'un autre amour et la céder à cet autre soupirant."~ */
  IF ~~ THEN REPLY #44075 /* ~"Attends, ce n'était qu'une ruse."~ */ GOTO 21
  IF ~~ THEN REPLY #44076 /* ~"Je te souhaite bonne chance, alors. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #44077 /* ~"Comment ? De quoi parles-tu ?"~ */
  IF ~~ THEN REPLY #44078 /* ~"Elle emploie la ruse pour essayer d'attiser ta passion."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 22
  IF ~~ THEN REPLY #44079 /* ~"Peu importe… Au revoir."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44080 /* ~"Et pourquoi ne m'a-t-elle rien dit, tout simplement ?"~ */
  IF ~~ THEN REPLY #44081 /* ~"À mon avis, elle a inventé tout ça."~ */ GOTO 23
  IF ~~ THEN REPLY #44082 /* ~"Ça a peut-être été plus facile pour elle comme ça."~ */ GOTO 32
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44083 /* ~"Apparemment, non. Alors, que dois-je faire ?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44084 /* ~"Un revirement serait fair-play…"~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44085 /* ~"Un revirement serait fair-play…"~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44086 /* ~"Rien, je pense."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.2 25.2 27.1 28.0 31.2 33.2 37.2
  SAY #44087 /* ~"Très bien. Alors, je prendrai mes distances, le temps de trouver une réponse."~ */
  IF ~~ THEN REPLY #44088 /* ~"J'espère que tu réussiras à arranger les choses. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #44089 /* ~"Comme tu veux. Au revoir."~ */ GOTO 41
END

IF ~~ THEN BEGIN 25 // from: 23.0 33.0 37.0
  SAY #44090 /* ~"Comment dois-je m'y prendre, messire ?"~ */
  IF ~~ THEN REPLY #44091 /* ~"Dis-lui que tu en as assez de votre relation, qu'elle ne t'intéresse plus."~ */ GOTO 26
  IF ~~ THEN REPLY #44092 /* ~"Dis-lui que tu as une aventure."~ */ GOTO 27
  IF ~~ THEN REPLY #44093 /* ~"Je ne sais pas. C'est à toi de décider."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 25.0 31.0
  SAY #44094 /* ~"Tu veux dire que je devrais feindre de me désintéresser d'elle pour stimuler son intérêt. Quelle ironie, assurément ! Je vais suivre tes conseils et en observer les résultats."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44095 /* ~"Bonne chance. J'espère que ça s'arrangera. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44096 /* ~"Je m'en vais, maintenant. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44097 /* ~"Bonne chance. J'espère que ça s'arrangera. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44098 /* ~"Je m'en vais, maintenant. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 27 // from: 25.1 31.1
  SAY #44099 /* ~"C'est un conseil qui pourrait s'avérer dangereux, mais je vais la mettre à l'épreuve pour analyser notre relation et me battre pour la sauvegarder. Qu'il en soit ainsi. Comment dois-je m'y prendre ?"~ */
  IF ~~ THEN REPLY #44100 /* ~"Je m'en charge. Je vais lui dire que je t'ai vu avec une autre femme."~ */ GOTO 28
  IF ~~ THEN REPLY #44101 /* ~"Je ne sais pas. C'est à toi de décider."~ */ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44102 /* ~"Très bien. Qu'il en soit ainsi."~ */
  IF ~~ THEN REPLY #44103 /* ~"Tout bien réfléchi, je préférerais que tu t'en charges toi-même."~ */ GOTO 24
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44104 /* ~"Je lui en parlerai la prochaine fois que je la verrai. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44105 /* ~"Je lui en parlerai la prochaine fois que je la verrai. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 29 // from:
  SAY #44106 /* ~"Vraiment ?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 465
END

IF ~~ THEN BEGIN 30 // from:
  SAY #44107 /* ~"Oui, ça me plaît beaucoup."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44108 /* ~"Bonne chance. J'espère que ça s'arrangera. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44109 /* ~"Je m'en vais, maintenant. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44110 /* ~"Bonne chance. J'espère que ça s'arrangera. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44111 /* ~"Je m'en vais, maintenant. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 31 // from:
  SAY #44112 /* ~"Bon… Et alors, messire ?"~ */
  IF ~~ THEN REPLY #44113 /* ~"Dis-lui que tu en as assez de votre relation, qu'elle ne t'intéresse plus."~ */ GOTO 26
  IF ~~ THEN REPLY #44114 /* ~"Dis-lui que tu as une aventure."~ */ GOTO 27
  IF ~~ THEN REPLY #44115 /* ~"Je ne sais pas. C'est à toi de décider."~ */ GOTO 24
END

IF ~~ THEN BEGIN 32 // from: 22.1
  SAY #44116 /* ~"Mais… je croyais que nous pouvions parler de tout ensemble."~ */
  IF ~~ THEN REPLY #44117 /* ~"C'était peut-être quelque chose qui, par sa nature même, ne pouvait être dit."~ */ GOTO 33
  IF ~~ THEN REPLY #44118 /* ~"Tu t'es peut-être trompé."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #44119 /* ~"Que me conseilles-tu de faire, messire ?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44120 /* ~"Un revirement serait fair-play…"~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44121 /* ~"Un revirement serait fair-play…"~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44122 /* ~"Rien, je pense."~ */ GOTO 24
END

IF ~~ THEN BEGIN 34 // from: 17.1
  SAY #44123 /* ~"Tu l'aimes au point de te battre avec moi ?"~ */
  IF ~~ THEN REPLY #44124 /* ~"Oui."~ */ GOTO 35
  IF ~~ THEN REPLY #44125 /* ~"Non, je ne l'aime pas, mais je me battrai pour elle."~ */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #44126 /* ~Il t'observe quelques instants. "Je vois que cette histoire te passionne. La passion est issue de l'amour. Tu l'aimes et je ne peux pas lui refuser un amour tel que le tien. À partir de cet instant, je ne la convoiterai plus ; fais ce qui te plaira."~ */
  IF ~~ THEN REPLY #44127 /* ~"Attends un peu… Ce n'était qu'une ruse."~ */ GOTO 36
  IF ~~ THEN REPLY #44128 /* ~"Eh… Bon, d'accord. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.0
  SAY #44130 /* ~"Une ruse ? Quel genre de ruse ?"~ */
  IF ~~ THEN REPLY #44131 /* ~"Elle voulait te provoquer pour que tu te battes pour elle."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 37
  IF ~~ THEN REPLY #44132 /* ~"Peu importe… Au revoir."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44133 /* ~"Oh ? Pensait-elle que mon amour était si infini que j'accepterais de me battre avec un homme de ta stature, défiguré par les cicatrices ? Peut-être place-t-elle trop haut mon dévouement envers elle. Eh bien… Que dois-je faire ?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44134 /* ~"Un revirement serait fair-play…"~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44135 /* ~"Un revirement serait fair-play…"~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44136 /* ~"Rien, je pense."~ */ GOTO 24
END

IF ~~ THEN BEGIN 38 // from: 34.1
  SAY #44137 /* ~"Ah, mais… C'est de la passion. La passion est issue de l'amour. Tu l'aimes et je ne peux pas lui refuser un amour tel que le tien. Je connais pertinemment sa beauté, sa retenue, sa vertu, et je sais quelle noblesse elle peut inspirer aux hommes. À partir de cet instant, je ne la convoiterai plus ; fais ce qui te plaira."~ */
  IF ~~ THEN REPLY #44138 /* ~"Attends un peu… Ce n'était qu'une ruse."~ */ GOTO 36
  IF ~~ THEN REPLY #44139 /* ~"Eh… Bon, d'accord. Au revoir."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 3.7
  SAY #44140 /* ~"La Salle des Fêtes ? Tu devrais en parler à Écharde. Il se trouve dans ce bâtiment, à l'entrée."~ */
  IF ~~ THEN REPLY #44141 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44142 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.8
  SAY #44143 /* ~"Hum… la légendaire guenaude noire, n'est-ce pas ? Tu devrais en parler à Étouffe, messire - il est mieux informé que moi sur ce genre de choses. Il se trouve dans la Salle des Fêtes, mais où exactement, je l'ignore."~ */
  IF ~~ THEN REPLY #44144 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44145 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.1 21.1 24.1 26.0 26.1 26.2 26.3 28.1 28.2 30.0 30.1 30.2 30.3 35.1 36.1 38.1
  SAY #44146 /* ~"Je te fais également mes adieux, messire. À présent, je devrai être plus vigilant ; si nous avons l'occasion de nous revoir, nous reparlerons de tout ça." Montague te salue et s'en va.~ */
  IF ~~ THEN REPLY #44147 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END
