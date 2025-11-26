// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITH~

IF ~  Global("Know_Gith","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2276 /* ~Cet homme se retourne lentement à ton approche. Ses yeux, pareils à deux pierres noires, clignotent à la vue de ta silhouette, puis il se met à t'observer. Cet homme a l'air humain, mais sa peau est jaunâtre et ses traits sont creux. Son corps est fin et anguleux, et ses membres semblent être faits de fibres de muscles fixées autour d'un os. Ses vêtements sont un étrange mélange de couleurs vives et ternes, et de taches de boue.~ */
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2350 /* ~"Bonjour."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2351 /* ~"Bonjour."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2352 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #2353 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 46.3 46.4
  SAY #2277 /* ~Il s'arrête un instant et t'observe, puis répond sur un ton contrit : "J't'*c'nais*." Il a un tel accent qu'il est difficile de le comprendre. On dirait qu'il prend chaque mot, le secoue et en retire chacune des voyelles pour l'alléger. L'insistance qu'il place sur le mot *connais* te semble très étrange. "J't'écoute."~ */
  IF ~  Global("Anazi_Help","GLOBAL",0)
Global("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2355 /* ~"Je suis… 'connu' de toi ? Tu sais qui je suis ?"~ */ GOTO 2
  IF ~  Global("Anazi_Help","GLOBAL",0)
GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2356 /* ~"Je suis… 'connu' de toi ? Tu sais qui je suis ?"~ */ GOTO 3
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2357 /* ~"Je suis… 'connu' de toi ? Tu sais qui je suis ?"~ */ GOTO 4
  IF ~~ THEN REPLY #2358 /* ~"Je… vois. Écoute, j'ai des questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #2361 /* ~"Je n'ai rien à te demander. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2278 /* ~"Je *connais* ton nom. Je *connais* tes actions. Ta nature est *connue* grâce à tes actions. Tu es *connu* pour être un ami du Peuple." Ses yeux t'examinent encore, comme pour te ré-évaluer. "Je t'écoute."~ */
  IF ~~ THEN REPLY #2362 /* ~"Très bien. J'ai des questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #2363 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #2279 /* ~"J'*c'nais* ton nom. Tu as laissé le sol absorber du sang githyanki. On *c'naît* ta nature par tes actes." Ses yeux t'examinent, comme s'il voulait te juger de nouveau. "J't'coute."~ */
  IF ~~ THEN REPLY #2364 /* ~"Très bien. J'ai des questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #2366 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #2280 /* ~"Je *connais* ton nom. Tu as aidé un membre de notre Peuple qui avait été rendu malade par les poisons de cette cité. Ta nature est *connue* grâce à cette action. Tu es *connu* pour être un ami du Peuple." Ses yeux t'examinent encore, comme pour te ré-évaluer. "Je t'écoute."~ */
  IF ~~ THEN REPLY #2367 /* ~"Très bien. J'ai des questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #2368 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 46.2
  SAY #2281 /* ~L'homme reste silencieux. Il ne répond pas à ton salut et se contente de te regarder.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #2369 /* ~"Tu es un Githyanki, c'est ça ? J'ai des questions à te poser…"~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8705 /* ~"J'ai dit, 'bonjour'."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8706 /* ~"J'ai dit, 'bonjour'."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8707 /* ~"J'ai dit, 'bonjour'."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8708 /* ~"J'ai dit, 'bonjour'."~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8709 /* ~"J'ai dit, 'bonjour'."~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8710 /* ~"J'ai dit, 'bonjour'."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8711 /* ~"J'ai des questions…"~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8712 /* ~"J'ai des questions…"~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8713 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8714 /* ~"J'ai des questions…"~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8715 /* ~"J'ai des questions…"~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8716 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #8717 /* ~"Tant pis. Excuse-moi de t'avoir dérangé."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #2282 /* ~L'espace d'une seconde, le gith ne semble pas t'avoir entendu. Ensuite, le bruit d'une lame d'acier s'échappant de ses mains se fait entendre. Il s'élance vers toi en émettant un sifflement !~ */
  IF ~~ THEN REPLY #8718 /* ~"Alors très bien…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.3 5.6 5.9 5.12
  SAY #2283 /* ~Le gith reste silencieux, mais ses yeux noirs sont toujours fixés sur toi.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8719 /* ~"Tu es un Githyanki, c'est ça ? J'ai des questions à te poser…"~ */ GOTO 6
  IF ~~ THEN REPLY #8720 /* ~"J'ai dit, 'bonjour'."~ */ GOTO 8
  IF ~~ THEN REPLY #8721 /* ~"Est-ce que tu comprends ce que je te dis ?"~ */ GOTO 8
  IF ~~ THEN REPLY #8722 /* ~"J'ai des questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #8723 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 7.3
  SAY #2284 /* ~Il s'arrête un instant et t'observe, puis répond sur un ton contrit : "Tu m'es *inconnu*." Il a un tel accent qu'il est difficile de le comprendre. On dirait qu'il prend chaque mot, le secoue et en retire chacune des voyelles pour l'alléger. L'emphase qu'il a mise sur le mot *inconnu* te semble très étrange. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #8724 /* ~"J'ai des questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #8725 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 61.1
  SAY #2285 /* ~"J't'écouterai pas." Il semble sur le point de te quitter.~ */
  IF ~~ THEN REPLY #8726 /* ~Empêche-le de passer.~ */ GOTO 10
  IF ~~ THEN REPLY #8727 /* ~Laisse-le partir.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #2286 /* ~Il s'arrête et recommence à te fixer du regard. Avant que tu puisses parler, le bruit d'une lame d'acier s'échappant de ses mains se fait entendre. "Ecart'-toi."~ */
  IF ~~ THEN REPLY #8728 /* ~"Pourrais-tu d'abord répondre à des questions ?"~ */ GOTO 11
  IF ~~ THEN REPLY #8729 /* ~"Non. Réponds d'abord à des questions."~ */ GOTO 11
  IF ~~ THEN REPLY #8730 /* ~"Je ne céderai pas. Je te conseille de ranger ça avant que je ne t'embroche avec."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8731 /* ~Attaque-le d'abord.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #8732 /* ~Reste à l'écart et laisse-le passer.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #2287 /* ~Son expression ne change pas. "Ecart'-toi."~ */
  IF ~~ THEN REPLY #8733 /* ~"J'ai juste quelques questions."~ */ GOTO 12
  IF ~~ THEN REPLY #8734 /* ~"Alors, réponds d'abord à quelques questions."~ */ GOTO 12
  IF ~~ THEN REPLY #8735 /* ~"Je ne céderai pas. Je te conseille de ranger ça avant que je ne t'embroche avec."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8736 /* ~Attaque-le d'abord.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #9037 /* ~Reste à l'écart et laisse-le passer.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 11.1 11.2 70.2 70.4
  SAY #2288 /* ~Il t'attaque en émettant un sifflement !~ */
  IF ~~ THEN REPLY #8737 /* ~"Prépare-toi à mourir…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2289 /* ~Vide.~ */
  IF ~~ THEN REPLY #8738 /* ~Pas de réponse.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.3 2.0 3.0 4.0
  SAY #2290 /* ~"K'atzn'ii-à-la-Porte."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8739 /* ~Essaie de te souvenir de la traduction…~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8740 /* ~Essaie de te souvenir de la traduction…~ */ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #8741 /* ~"Pardon ?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ THEN REPLY #8744 /* ~"Euh… Ça veut dire que tu vas m'écouter ?"~ */ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8745 /* ~"Très bien. Tu vas m'écouter ?"~ */ GOTO 16
  IF ~~ THEN REPLY #8746 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #2291 /* ~K'atzn'ii-à-la-Porte : "Demande, et réponds à nos deux questions."

*(K'atzn'ii était une pèlerine githzeraï qui parcourait le plan des Limbes pour "tester" la discipline de son peuple. Elle apparaissait à la porte de chaque ville githzeraï et posait une série de questions. Les réponses des citoyens lui permettaient de connaître la nature des githzeraïs qui habitaient là. Mais ce que K'aztn'ii ne savait pas, c'est que les questions qu'elle posait permettaient aux githzeraïs de connaître sa nature à elle.)*~ */
  IF ~~ THEN REPLY #8749 /* ~"On verra. Vas-tu m'écouter ?"~ */ GOTO 16
  IF ~~ THEN REPLY #8750 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3 14.4 15.0 17.0 18.0 39.1 40.0 41.1 42.1 43.1 44.2 45.0
  SAY #2292 /* ~Le gith s'arrête, puis se remet à parler. "Pose tes questions, et je t'écouterai."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8751 /* ~"Je cherche un certain Pharod. Tu le connais ?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8752 /* ~"J'ai perdu un journal. En as-tu vu un ?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8753 /* ~"Peux-tu me parler de Dak'kon ?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8754 /* ~"Connais-tu un githzeraï appelé Dak'kon ?"~ */ GOTO 41
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #8755 /* ~"Qu'est-ce que tu peux me dire sur cette cité ?"~ */ GOTO 19
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #8757 /* ~"Tu peux me parler de Sigil ?"~ */ GOTO 19
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8760 /* ~"J'ai quelques… questions… précises sur cette cité."~ */ GOTO 22
  IF ~~ THEN REPLY #8763 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 22.0
  SAY #2344 /* ~"Je ne le *connais* pas."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8768 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8769 /* ~"J'ai d'autres questions… plus précises…"~ */ GOTO 22
  IF ~~ THEN REPLY #8770 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 22.1
  SAY #2345 /* ~"Je ne *connais* pas cet objet."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8771 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8772 /* ~"J'ai quelques… questions… précises sur cette cité."~ */ GOTO 22
  IF ~~ THEN REPLY #8773 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.4 16.5 49.0 54.0
  SAY #2346 /* ~"Ach'ali-La-Noyée."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8774 /* ~Essaie de te souvenir de la traduction…~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8775 /* ~Essaie de te souvenir de la traduction…~ */ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8776 /* ~"Pardon ?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",1)
~ THEN REPLY #8777 /* ~"Euh… Ça veut dire que tu vas répondre à la question ou… ?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #2347 /* ~Ach'ali-La-Noyée : en gros, "Une question dont la réponse ne sert à rien." Il s'agit en général d'une requête auprès de l'orateur pour qu'il explicite une question vague ou 'inutile'.

*(Les githzeraïs habitent dans le Plan Extérieur des Limbes, l'un des plans du chaos. La stabilité n'y est possible qu'en façonnant la matière chaotique de ce plan par la force de l'esprit ; concentration et discipline sont nécessaires pour réussir cela. "Ach'ali" est une githzeraï stupide qui s'est perdue dans les Limbes et qui a à peine pu former une île autour d'elle. Alors qu'elle dérivait dans le chaos de la matière, elle a rencontré un voyageur des plans qui lui a proposé de l'aider. Ach'ali posait tant de questions inutiles et sans objet précis que son île s'est dissoute autour d'elle et qu'elle s'est noyée dans les Limbes.)*~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8778 /* ~"Alors, plus précisément : peux-tu me parler de la Dame des Douleurs ?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8779 /* ~"Alors, je vais te poser une question plus précise : peux-tu me parler des factions ?"~ */ GOTO 24
  IF ~~ THEN REPLY #8780 /* ~"Alors, je vais te poser une question plus précise : peux-tu me dire où se trouve cette cité ?"~ */ GOTO 26
  IF ~~ THEN REPLY #8781 /* ~"Alors, je vais te poser une question plus précise : peux-tu me dire où trouver du travail ?"~ */ GOTO 34
  IF ~~ THEN REPLY #8782 /* ~"Alors, je vais te poser une question plus précise : peux-tu m'indiquer ce qu'il y a d'intéressant à voir par ici ?"~ */ GOTO 33
  IF ~~ THEN REPLY #8783 /* ~"Peu importe. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 19.3
  SAY #2370 /* ~"Ta question n'est qu'un coup d'épée dans l'eau, une flèche sans direction." Il plisse le front. "La réponse à cette question remplirait l'esprit d'un Anarque. Je n'ai pas le temps de te la donner. Dis-moi clairement ce que tu veux *savoir.*"~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8784 /* ~"Alors, plus précisément : peux-tu me parler de la Dame des Douleurs ?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8785 /* ~"Alors, je vais te poser une question plus précise : peux-tu me parler des factions ?"~ */ GOTO 24
  IF ~~ THEN REPLY #8786 /* ~"Alors, je vais te poser une question plus précise : peux-tu me dire où se trouve cette cité ?"~ */ GOTO 26
  IF ~~ THEN REPLY #8787 /* ~"Alors, je vais te poser une question plus précise : peux-tu me dire où trouver du travail ?"~ */ GOTO 34
  IF ~~ THEN REPLY #8788 /* ~"Alors, je vais te poser une question plus précise : peux-tu m'indiquer ce qu'il y a d'intéressant à voir par ici ?"~ */ GOTO 33
  IF ~~ THEN REPLY #8789 /* ~"Peu importe. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.6 17.1 18.1 23.0 24.1 25.0 26.1 27.2 28.1 29.1 30.2 31.1 32.1 33.1 34.2 35.1 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.3 45.1
  SAY #2371 /* ~Le gith s'arrête, puis se remet à parler. "Pose tes questions, et je t'écouterai."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8790 /* ~"Je cherche un certain Pharod. Tu le connais ?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8791 /* ~"J'ai perdu un journal. En as-tu vu un ?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8792 /* ~"Peux-tu me parler de Dak'kon ?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8793 /* ~"Connais-tu un githzeraï appelé Dak'kon ?"~ */ GOTO 41
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8794 /* ~"Tu peux me parler de la Dame des Douleurs ?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8795 /* ~"Qu'est-ce que tu peux me dire sur les factions ?"~ */ GOTO 24
  IF ~~ THEN REPLY #8796 /* ~"Peux-tu me dire où se trouve cette cité ?"~ */ GOTO 26
  IF ~~ THEN REPLY #8797 /* ~"Peux-tu me dire où je pourrais trouver du travail ?"~ */ GOTO 34
  IF ~~ THEN REPLY #8798 /* ~"Peux-tu me dire ce qu'il y a d'intéressant à voir par ici ?"~ */ GOTO 33
  IF ~~ THEN REPLY #8799 /* ~"Je n'ai pas de questions. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.0 21.0 22.4
  SAY #2372 /* ~"On dit que c'est la reine de cette cité. Je ne *connais* pas son esprit."~ */
  IF ~~ THEN REPLY #8801 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8837 /* ~"Peu importe. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.1 21.1 22.5
  SAY #2373 /* ~"Ils ont partagé cette cité entre eux." Le ton de sa voix change à mesure qu'il parle ; il laisse transparaître un vague sentiment de dégoût.~ */
  IF ~~ THEN REPLY #8838 /* ~"On dirait que tu n'aimes pas beaucoup ces factions."~ */ GOTO 25
  IF ~~ THEN REPLY #8839 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8840 /* ~"Peu importe. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #2374 /* ~"Il n'y a pas de force dans la division. Une cité divisée est vouée à l'effondrement."~ */
  IF ~~ THEN REPLY #8841 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8842 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.2 21.2 22.6
  SAY #2375 /* ~"Cette cité touche tous les lieux."~ */
  IF ~~ THEN REPLY #8843 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 27
  IF ~~ THEN REPLY #8844 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8845 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2376 /* ~"Cette cité est une cage remplie de portes. Chaque porte touche un autre lieu."~ */
  IF ~~ THEN REPLY #8846 /* ~"Pourquoi dis-tu que la cité est une cage ?"~ */ GOTO 28
  IF ~~ THEN REPLY #8853 /* ~"Où se trouvent ces portes ?"~ */ GOTO 30
  IF ~~ THEN REPLY #8848 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8849 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #2377 /* ~"Toute structure comportant des portes verrouillées est une cage."~ */
  IF ~~ THEN REPLY #8850 /* ~"Des portes verrouillées ?"~ */ GOTO 29
  IF ~~ THEN REPLY #8851 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8852 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #2378 /* ~"Chaque porte de cette cage est verrouillée. Chaque porte a sa propre clé. Seule cette clé peut te permettre de t'enfuir."~ */
  IF ~~ THEN REPLY #8853 /* ~"Où se trouvent ces portes ?"~ */ GOTO 30
  IF ~~ THEN REPLY #8854 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8855 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 29.0
  SAY #2379 /* ~"Partout. Il y en a autant que de lieux adjacents."~ */
  IF ~~ THEN REPLY #8856 /* ~"Je ne comprends pas."~ */ GOTO 31
  IF ~~ THEN REPLY #8857 /* ~"Des lieux ? Lesquels par exemple ?"~ */ GOTO 32
  IF ~~ THEN REPLY #8858 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8859 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #2380 /* ~"C'est difficile à comprendre, mais pas difficile à accepter."~ */
  IF ~~ THEN REPLY #8860 /* ~"Où mènent les portes dont tu parles ?"~ */ GOTO 32
  IF ~~ THEN REPLY #8861 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8862 /* ~"Alors, peu importe. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #2381 /* ~"Les portes de cette cage mènent partout. À tous les plans. À tous les mondes."~ */
  IF ~~ THEN REPLY #8863 /* ~"Je ne comprends pas."~ */ GOTO 31
  IF ~~ THEN REPLY #8864 /* ~"J'ai d'autres questions… plus précises… sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8865 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 20.4 21.4 22.8
  SAY #2382 /* ~"Tu m'es *inconnu*. Ce qui t'intéresse ne m'intéresse pas forcément."~ */
  IF ~~ THEN REPLY #8866 /* ~"Le travail m'intéresse."~ */ GOTO 34
  IF ~~ THEN REPLY #8867 /* ~"Peu importe. J'ai d'autres… questions… plus précises sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8868 /* ~"Peu importe. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 20.3 21.3 22.7 33.0
  SAY #2383 /* ~"Il n'y a pas beaucoup de travail ici. Tu peux chasser les rats contre des primes. Tu peux ramasser les morts."~ */
  IF ~~ THEN REPLY #8870 /* ~"Des primes sur les rats ?"~ */ GOTO 35
  IF ~~ THEN REPLY #8871 /* ~"Ramasser les morts ?"~ */ GOTO 36
  IF ~~ THEN REPLY #8872 /* ~"Je vois. J'ai d'autres questions… plus précises sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8873 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 36.1 37.1 38.0
  SAY #2384 /* ~"La cité paie pour les queues de rats. Apporte-les à l'un de leurs Bureaux de Lutte contre la vermine."~ */
  IF ~~ THEN REPLY #8875 /* ~"Quel est cet autre travail dont tu as parlé ? La récupération de morts ?"~ */ GOTO 36
  IF ~~ THEN REPLY #8876 /* ~"Je vois. J'ai d'autres questions… plus précises sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8877 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #2385 /* ~"Il y a beaucoup de morts la nuit dans cette cité. Si tu apportes les morts aux Hommes-Poussière, ils les achètent."~ */
  IF ~~ THEN REPLY #8878 /* ~"Les Hommes-Poussière achètent les morts ? Pourquoi ?"~ */ GOTO 37
  IF ~~ THEN REPLY #8879 /* ~"Quel est cet autre travail dont tu as parlé ? Les primes sur les rats ?"~ */ GOTO 35
  IF ~~ THEN REPLY #8880 /* ~"Je vois. J'ai d'autres questions… plus précises sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8881 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2386 /* ~"Les Hommes-Poussière s'occupent des morts. Ils effectuent les derniers rites sur les cadavres."~ */
  IF ~~ THEN REPLY #8882 /* ~"Très bien… Continue."~ */ GOTO 38
  IF ~~ THEN REPLY #8883 /* ~"Je vois. Quel est cet autre travail dont tu as parlé ? Les primes sur les rats ?"~ */ GOTO 35
  IF ~~ THEN REPLY #8884 /* ~"Peu importe. J'ai d'autres… questions… plus précises sur la cité…"~ */ GOTO 22
  IF ~~ THEN REPLY #8885 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #2387 /* ~"Il y a beaucoup de morts. Les Hommes-Poussière ne peuvent pas tous les ramasser. Ils ne veulent pas que les morts restent dans les rues. Ils paient les autres pour leur rapporter les morts."~ */
  IF ~~ THEN REPLY #8886 /* ~"Quel est cet autre travail dont tu as parlé ? Les primes sur les rats ?"~ */ GOTO 35
  IF ~~ THEN REPLY #8887 /* ~"J'ai d'autres questions… plus précises…"~ */ GOTO 22
  IF ~~ THEN REPLY #8888 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 16.2 22.2
  SAY #2388 /* ~"Il marche avec toi." Il plisse le front. "Comment se fait-il que tu ne le *connaisses* pas ?"~ */
  IF ~~ THEN REPLY #8889 /* ~"J'espérais que tu pourrais me parler de lui."~ */ GOTO 40
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8890 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8891 /* ~"Peu importe. J'ai d'autres questions… plus précises…"~ */ GOTO 22
  IF ~~ THEN REPLY #8892 /* ~"Peu importe. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2389 /* ~"Il n'est pas muet. Si tu le *connais*, pose-lui tes questions. Ne nous insulte pas tous les deux en traitant l'un de nous comme une statue."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8893 /* ~"Alors, peu importe. J'ai d'autres questions…"~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8894 /* ~"Peu importe. J'ai d'autres questions… plus précises…"~ */ GOTO 22
  IF ~~ THEN REPLY #8895 /* ~"Peu importe. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 16.3 22.3
  SAY #2390 /* ~"Le nom m'est *connu*. Dak'kon est un *zerth* qui ne fait pas partie du Peuple."~ */
  IF ~~ THEN REPLY #8896 /* ~"Un *zerth* ?"~ */ GOTO 42
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8897 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8898 /* ~"Je vois. J'ai d'autres questions… plus précises…"~ */ GOTO 22
  IF ~~ THEN REPLY #8899 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #2391 /* ~"Quelqu'un qui *connaît* les enseignements de Zerthimon. En *connaissant* ses enseignements, ils se *connaissent* eux-mêmes."~ */
  IF ~~ THEN REPLY #8900 /* ~"Zerthimon ?"~ */ GOTO 43
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8901 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8902 /* ~"Je vois. J'ai d'autres questions… plus précises…"~ */ GOTO 22
  IF ~~ THEN REPLY #8903 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #2392 /* ~"Zerthimon *connaissait* les githzeraïs avant qu'ils ne se *connaissent* eux-mêmes." Le githzeraï se tait un instant, comme par respect, puis se remet à parler. "Il a défini notre Peuple. Il lui a donné un esprit commun. Ce qui *connaissent* son enseignement s'appellent les *zerths.*"~ */
  IF ~~ THEN REPLY #8904 /* ~"Et Dak'kon est un *zerth* ?"~ */ GOTO 44
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8905 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8906 /* ~"Je vois. J'ai d'autres questions… plus précises…"~ */ GOTO 22
  IF ~~ THEN REPLY #8907 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #2393 /* ~"Dak'kon est un *zerth*…" Pour la première fois, le githzeraï a du mal à s'expliquer. Il s'arrête un moment, comme s'il cherchait les mots justes.~ */
  IF ~~ THEN REPLY #8908 /* ~"Oui ?"~ */ GOTO 45
  IF ~~ THEN REPLY #8909 /* ~Attends ses explications.~ */ GOTO 45
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8910 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8911 /* ~"Peu importe. J'ai d'autres questions… plus précises…"~ */ GOTO 22
  IF ~~ THEN REPLY #8912 /* ~"Peu importe. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #2394 /* ~"Dak'kon est un *zerth* dont on dit qu'il ne *connaît* pas les enseignements de Zerthimon. On dit que son esprit est divisé. On dit qu'il ne se *connaît* pas lui-même. Cet état est un véritable poison pour les githzeraïs. Si ces rumeurs sont fondées, alors il ne fait pas partie du Peuple."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8913 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8914 /* ~"Je vois. J'ai d'autres questions… plus précises…"~ */ GOTO 22
  IF ~~ THEN REPLY #8915 /* ~"Merci… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  Global("Know_Gith","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #8666 /* ~Le gith se retourne vers toi tandis que tu approches. Ses yeux sont comme deux pierres noires ; ils parcourent brièvement ta silhouette, puis vos regards se croisent. Il a l'air d'un humanoïde, mais sa peau est jaunâtre et ses formes sont squelettiques. Sa silhouette est mince et anguleuse ; ses membres semblent faits de morceaux de muscles noués les uns autour des autres. Son habillement est un curieux mélange de couleurs vives et de couleurs pâles et sombres.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8916 /* ~"Le parent de Zerchai te salue."~ */ GOTO 47
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8917 /* ~"Salut à toi, sonneur d'épées."~ */ GOTO 48
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8918 /* ~"Bonjour."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8919 /* ~"Bonjour."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #8920 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #8921 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #8667 /* ~Les yeux du gith croisent les tiens. Il s'arrête un moment et t'observe, puis répond sur un ton contrit. Il a un tel accent qu'il est difficile de le comprendre. On dirait qu'il prend chaque mot, le secoue et en retire chacune des voyelles pour l'alléger. Si tu le comprends bien, il vient de dire "Et le voyageur est le bienvenu."~ */
  IF ~~ THEN REPLY #8922 /* ~"Et le voyageur est content."~ */ GOTO 49
  IF ~~ THEN REPLY #8923 /* ~"Je souhaiterais connaître cette cité. M'écouteras-tu ?"~ */ GOTO 49
  IF ~~ THEN REPLY #8924 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.1
  SAY #8668 /* ~Les yeux du gith croisent les tiens. Il s'arrête un moment et t'observe, puis répond sur un ton contrit. Il a un tel accent qu'il est difficile de le comprendre. On dirait qu'il prend chaque mot, le secoue et en retire chacune des voyelles pour l'alléger. Si tu le comprends bien, il vient de dire "Je ne te *connais* pas." Il a insisté sur le mot *connais*.~ */
  IF ~~ THEN REPLY #8925 /* ~"Je souhaiterais connaître cette cité. M'écouteras-tu ?"~ */ GOTO 49
  IF ~~ THEN REPLY #8926 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.0 47.1 48.0
  SAY #8669 /* ~L'expression du visage du gith s'altère légèrement, et son air de défi se transforme en curiosité. "Je ne te *connais* pas." Son regard te parcourt de nouveau. "J't'coute."~ */
  IF ~~ THEN REPLY #8927 /* ~"Très bien. J'ai des questions…"~ */ GOTO 19
  IF ~~ THEN REPLY #8928 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 50 // from:
  SAY #8670 /* ~Ce gith se retourne vers toi lorsque tu approches. Comme Dak'kon, sa peau est jaunâtre et ses formes squelettiques. Son habillement est un curieux mélange de couleurs vives et de couleurs pâles et sombres. Les yeux noirs comme la mort du gith parcourent Dak'kon, puis se posent sur toi.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8929 /* ~"Le parent de Zerchai te salue."~ */ GOTO 55
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8930 /* ~"Salut à toi, sonneur d'épées."~ */ GOTO 55
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8931 /* ~"Bonjour."~ */ GOTO 51
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8932 /* ~"Bonjour."~ */ GOTO 55
  IF ~~ THEN REPLY #8933 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.2
  SAY #8671 /* ~L'homme t'ignore et se tourne vers Dak'kon. Il prononce une série de mots dans une langue étrange que tu ne comprends pas. Son expression ne varie pas tandis qu'il parle, et il ne bouge pas les mains, si bien que tu n'arrives même pas à deviner ce qu'il dit. Dak'kon répond par une avalanche de mots dans la même langue et le githzeraï se tait.~ */
  IF ~~ THEN REPLY #8934 /* ~"Euh… Que dit-il, Dak'kon ?"~ */ GOTO 52
  IF ~~ THEN REPLY #8935 /* ~"Peu importe, Dak'kon. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #8672 /* ~Le githzeraï se tourne vers toi lorsque tu parles, puis vers Dak'kon et se remet à parler, très lentement cette fois. Dak'kon répond par une avalanche de mots, comme auparavant. Le githzeraï se tait de nouveau. Dak'kon dit autre chose et le githzeraï répond par une nouvelle série de mots prononcés lentement.~ */
  IF ~~ THEN REPLY #8936 /* ~"Dak'kon, peux-tu lui poser des questions pour moi ?"~ */ EXTERN ~DDAKKON~ 17
  IF ~~ THEN REPLY #8937 /* ~"Peu importe, Dak'kon. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #8673 /* ~Vide.~ */
  IF ~~ THEN REPLY #8938 /* ~Pas de réponse.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #8674 /* ~"Je *connais* les mots que tu prononces", interrompt le githzeraï. "Tourne-toi vers moi et ouvre ton cœur. Je t'écoute."~ */
  IF ~~ THEN REPLY #8939 /* ~"Très bien. J'ai des questions…"~ */ GOTO 19
  IF ~~ THEN REPLY #8940 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 50.1 50.3
  SAY #8675 /* ~Le githzeraï t'ignore et se tourne vers Dak'kon. Il prononce une série de mots dans une langue étrange que tu ne comprends pas. Si tu interprètes correctement ce discours, il signifie : "Tous redevables, *zerth*."~ */
  IF ~~ THEN REPLY #8941 /* ~Attends et écoute la réponse de Dak'kon.~ */ EXTERN ~DDAKKON~ 11
  IF ~~ THEN REPLY #8942 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #8676 /* ~Le githzeraï se tourne vers toi lorsque tu parles, puis se retourne vers Dak'kon et se remet à parler, très lentement cette fois.~ */
  IF ~~ THEN REPLY #8943 /* ~Essaie de traduire…~ */ GOTO 57
  IF ~~ THEN REPLY #8944 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #8677 /* ~Tu as du mal à décrypter la structure de la phrase, mais tu penses qu'il vient de dire : "Il y en a un du nom de Dak'kon qui ne fait pas partie du Peuple. On dit que son esprit est divisé. On dit que c'est un *zerth* qui ne *connaît* pas les enseignements de Zerthimon."~ */
  IF ~~ THEN REPLY #8945 /* ~Attends et écoute la réponse de Dak'kon.~ */ EXTERN ~DDAKKON~ 12
  IF ~~ THEN REPLY #8946 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #8678 /* ~La réponse du gith est si rapide qu'elle a presque la force d'une attaque. Tu n'es pas sûr d'avoir tout compris, mais il semble que le gith vient de lancer un défi à Dak'kon sous la forme d'une question : "*Zerth*, est-ce que tu *obéis* aux paroles de cet humain ?"~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8947 /* ~En l'interrompant : "Dak'kon obéit. Il est mon esclave."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 61
  IF ~~ THEN REPLY #8948 /* ~En l'interrompant : "Oui, Dak'kon obéit à mes ordres. C'est mon serviteur."~ */ GOTO 61
  IF ~~ THEN REPLY #8949 /* ~En l'interrompant : "Je suis son supérieur. Dak'kon m'accompagne au cours de mon voyage."~ */ GOTO 61
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8950 /* ~Attends de savoir ce que dit Dak'kon…~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 13
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8951 /* ~Attends de savoir ce que dit Dak'kon…~ */ EXTERN ~DDAKKON~ 13
  IF ~~ THEN REPLY #8952 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #8679 /* ~Le gith reste un moment silencieux. "Cette affaire sent l'illithid à plein nez." Ses yeux parcourent le visage de Dak'kon. "Je vois clair en toi. Tu parles selon ton cœur. Comment cette hérésie a-t-elle pu se produire ?"~ */
  IF ~~ THEN REPLY #8953 /* ~Écoute.~ */ EXTERN ~DDAKKON~ 14
  IF ~~ THEN REPLY #8954 /* ~"Dak'kon, peu importe. Allons-nous-en."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #8680 /* ~Le gith ne te regarde pas. Son attention se porte sur Dak'kon. "Qu'il parle. Je l'écoute."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 15
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 58.2
  SAY #8681 /* ~Le gith se tourne vers toi et vos regards se croisent. Dak'kon garde les yeux fixés sur le gith.~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8955 /* ~"Ton regard commence à m'irriter. Maintenant, adresse-toi à moi et non à mon esclave. Tu vas répondre à mes questions, oui ou non ?"~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 63
  IF ~~ THEN REPLY #8956 /* ~"Je préférerais que tu t'adresses à moi plutôt qu'à mon compagnon. Tu vas répondre à mes questions, oui ou non ?"~ */ GOTO 9
  IF ~~ THEN REPLY #8957 /* ~"Il y a un problème ?"~ */ GOTO 63
  IF ~~ THEN REPLY #8958 /* ~"Laisse tomber, Dak'kon. Partons."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 68.2 68.3
  SAY #8682 /* ~La lame du gith disparaît, et il recule. La lame Dak'kon s'abaisse. Le gith siffle Dak'kon. "L'œil de Vilquar n'était pas si bon que ça, et le cœur de Selqant n'était pas si noir. Je n'oublierai pas ça." Il semble sur le point de partir.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8959 /* ~"Tu as peur, chien githyanki ? Attaque-moi si tu l'oses."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8960 /* ~"Tu as peur, chien gith ? Attaque-moi si tu l'oses."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8961 /* ~Laisse-le partir.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #8962 /* ~Attaque le gith au moment où il s'apprête à partir.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.0 61.2
  SAY #8683 /* ~Le gith se tourne vers Dak'kon. "Les paroles de cet humanoïde empoisonnent mes oreilles. Dois-je vraiment l'écouter ?"~ */
  IF ~~ THEN REPLY #8963 /* ~"Adresse-toi à moi et non à lui, gith."~ */ GOTO 64
  IF ~~ THEN REPLY #8964 /* ~"Il y a un problème ?"~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8965 /* ~Attends de savoir ce que dit Dak'kon.~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8966 /* ~"Laisse tomber, Dak'kon. Partons."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #8684 /* ~L'espace d'une seconde, le gith ne semble pas t'avoir entendu. Ensuite, le bruit d'une lame d'acier s'échappant des mains du gith se fait entendre. La lame de Dak'kon est soudain en joue : on dirait qu'il envisage d'attaquer le gith s'il s'avance vers toi.~ */
  IF ~~ THEN REPLY #8967 /* ~"Vas-y. Attaque-moi, gith. On verra bien ce qui se passera."~ */ GOTO 65
  IF ~~ THEN REPLY #8968 /* ~"S'il fait un pas vers moi, Dak'kon, je veux que tu le tues."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 65
  IF ~~ THEN REPLY #8969 /* ~"Que tout le monde se calme. Je voudrais seulement avoir les réponses à mes questions."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 64.1 64.2
  SAY #8685 /* ~Malgré la lame de Dak'kon en joue, le gith ne détache pas ses yeux de ta personne. Sa question suivante semble s'adresser à Dak'kon. "Ton esprit est-il partagé sur ce point ?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 8
END

IF ~~ THEN BEGIN 66 // from:
  SAY #8686 /* ~"Cette affaire rappelle la façon de faire des illithids, *zerth*. Tu as levé ta lame contre un membre du Peuple pour défendre ton compagnon. Au nom de Zerthimon, je ne puis tolérer cette offense faite à ton âme, ni permettre à ses paroles de rester impunies ; il devra le payer le prix du sang."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 9
END

IF ~~ THEN BEGIN 67 // from:
  SAY #8687 /* ~Le gith se tourne vers toi, mais son attention semble toujours se porter sur Dak'kon. "Comment cette hérésie a-t-elle pu se produire, *zerth* ?"~ */
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8970 /* ~Attends de savoir ce que dit Dak'kon…~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 10
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8971 /* ~Attends de savoir ce que dit Dak'kon…~ */ EXTERN ~DDAKKON~ 10
  IF ~~ THEN REPLY #8972 /* ~Attaque le gith pendant qu'il est distrait.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #8688 /* ~Le gith attend. Il semble hésiter.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8973 /* ~"Continue, chien githyanki. Attaque-moi si tu l'oses."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8974 /* ~"Vas-y, chien gith. Attaque-moi si tu l'oses."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8975 /* ~Attends de voir comment cela se termine…~ */ DO ~SetGlobal("Dictionary_Githzerai_Vilquar","GLOBAL",1)
~ GOTO 62
  IF ~  GlobalGT("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8976 /* ~Attends de voir comment cela se termine…~ */ GOTO 62
  IF ~~ THEN REPLY #8977 /* ~Attaque le gith pendant qu'il est distrait.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~  Global("Evil_Githzerai_1","GLOBAL",1)
~ THEN BEGIN 69 // from:
  SAY #8689 /* ~Le gith se retourne vers toi tandis que tu approches. Ses yeux sont comme deux pierres noires ; ils parcourent brièvement ta silhouette, puis vos regards se croisent. Il a l'air d'un humanoïde, mais sa peau est jaunâtre et ses formes sont squelettiques. Sa silhouette est mince et anguleuse ; ses membres semblent faits de morceaux de muscles noués les uns autour des autres. Son habillement est un curieux mélange de couleurs vives et de couleurs pâles et sombres.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8978 /* ~"Le parent de Zerchai te salue."~ */ GOTO 70
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8979 /* ~"Salut à toi, sonneur d'épées."~ */ GOTO 70
  IF ~~ THEN REPLY #8980 /* ~"Bonjour."~ */ GOTO 70
  IF ~~ THEN REPLY #8981 /* ~Laisse le gith tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 69.1 69.2
  SAY #8690 /* ~Tu entends un léger bruit d'acier et une lame jaillit dans la main du githzeraï. "Je te *connais*. Tu as attaqué un membre du Peuple. Les pierres boiront bientôt ton sang."~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8982 /* ~Mensonge : "Tu demandes à un homme qui voyage avec un *zerth* githzeraï s'il a tué un githzeraï ? Tu fais erreur sur la personne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 73
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #8983 /* ~Mensonge : "Il doit y avoir une erreur. Je n'ai jamais attaqué aucun des tiens."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 71
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #8984 /* ~Mensonge : "Je n'ai attaqué personne. Tu as dû me prendre pour quelqu'un d'autre."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8985 /* ~Attaque-le d'abord.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8986 /* ~Ignore le gith et pars.~ */ GOTO 12
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY #8691 /* ~Le gith hésite. "Pas d'erreur. La description correspond : un mâle humain couvert de cicatrices."~ */
  IF ~~ THEN REPLY #8987 /* ~Mensonge : "Écoute, c'est une cité immense. Ce n'est pas moi que tu cherches. Je ne vous veux aucun mal, ni à toi, ni aux tiens."~ */ GOTO 72
  IF ~~ THEN REPLY #8988 /* ~Attaque-le d'abord.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #8692 /* ~Le gith fronce les sourcils, puis finit par baisser sa garde. "Pardonne-moi. À l'avenir, je prendrai garde à mes propos." Il a toujours l'air suspicieux.~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8989 /* ~"En fait, tu avais raison la première fois. J'attendais que tu relâches ta garde…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #8990 /* ~"En fait, tu avais raison la première fois. J'attendais que tu relâches ta garde…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8991 /* ~"S'il te plaît. Au revoir."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #8693 /* ~Le gith hésite. "Pas d'erreur. La description correspond : un mâle humain couvert de cicatrices." Il jette un regard à Dak'kon. "Tu te portes garant de cet homme, *zerth* ?"~ */
  IF ~~ THEN REPLY #8992 /* ~"Dis-lui qu'il fait erreur, Dak'kon."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~DDAKKON~ 16
  IF ~~ THEN REPLY #8993 /* ~Attaque-le pendant qu'il regarde Dak'kon.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END
