// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DUHIR~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #23329 /* ~Tu as tout juste le temps de voir une expression de panique se dessiner sur le visage défait du Récupérateur avant qu'il ne tourne les talons et s'enfuie.~ */
  IF ~  Global("Uhir","GLOBAL",0)
~ THEN REPLY #22957 /* ~"Peut-être la prochaine fois…"~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~  GlobalGT("Uhir","GLOBAL",0)
~ THEN REPLY #23331 /* ~"Uhir, attends… bon sang."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.2
  SAY #23335 /* ~"Euh… ben, j'me suis fait mordre par une goule, en bas, pendant que j'cherchais quelque chose à vendre."~ */
  IF ~~ THEN REPLY #23337 /* ~"Là en bas ?"~ */ GOTO 5
  IF ~~ THEN REPLY #23340 /* ~"J'ai d'autres questions à te poser."~ */ GOTO 3
  IF ~~ THEN REPLY #23342 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0
  SAY #23344 /* ~"J'm'appelle Uhir, c'est ça." Il crache. "Comme si ça avait de l'importance ici-bas."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23345 /* ~"C'est ton couteau, ça, avec 'UHIR' gravé dessus ?"~ */ GOTO 16
  IF ~~ THEN REPLY #23347 /* ~"Très bien. J'ai d'autres questions à te poser."~ */ GOTO 3
  IF ~~ THEN REPLY #23348 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.1 5.1 7.0 8.0 9.1 10.2 10.3 11.0 12.0
  SAY #23349 /* ~Il acquiesce, mais ne dit rien.~ */
  IF ~~ THEN REPLY #23350 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #23351 /* ~"Que fais-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #23352 /* ~"Tu es couvert de bandages. Qu'est-ce qui s'est passé ?"~ */ GOTO 1
  IF ~~ THEN REPLY #23353 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #23354 /* ~"J'attends qu'mes blessures guérissent, pour pouvoir retourner en bas. J'vends c'que j'trouve en bas."~ */
  IF ~~ THEN REPLY #23355 /* ~"Là en bas ?"~ */ GOTO 5
  IF ~~ THEN REPLY #23357 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #23359 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #23366 /* ~Il secoue la tête. "En bas, dans les catacombes, là où y'a tous les morts. Dis… est-ce que tu y vas bientôt ?"~ */
  IF ~~ THEN REPLY #23368 /* ~"Peut-être. Pourquoi ?"~ */ GOTO 9
  IF ~~ THEN REPLY #23370 /* ~"C'est pas grave. J'ai une autre question …"~ */ GOTO 3
  IF ~~ THEN REPLY #23371 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",3)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #23372 /* ~Uhir te fait un signe de la tête. "Merci d'm'avoir aidé à récupérer mon couteau porte-bonheur, matois."~ */
  IF ~~ THEN REPLY #23373 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",1)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #23374 /* ~Uhir te regarde avec méfiance, comme un chien qui a peur que tu voles son repas. "Hein ? Encore ? Qu'est-ce 'tu veux ?"~ */
  IF ~~ THEN REPLY #23375 /* ~"Je voulais quelques réponses."~ */ GOTO 3
  IF ~~ THEN REPLY #23376 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",0)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #23377 /* ~Cet homme entre deux âges a l'air aigri. Il sursaute lorsque tu t'approches de lui, et porte la main à sa ceinture… n'y trouvant aucune arme, il recule simplement. Tu aperçois que sous ses robes de Récupérateur, ses mollets et ses avant-bras sont emmaillotés dans des bandages crasseux. "Qu'est-ce tu veux ?"~ */
  IF ~~ THEN REPLY #23378 /* ~"Réponds juste à quelques questions…"~ */ DO ~SetGlobal("Uhir","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #23379 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #23380 /* ~"Parce que j'ai perdu mon couteau porte-bonheur !" Il grogne de colère, frappant du pied. "Je l'ai porté pendant des années, ici…" Il indique une gaine vide à sa ceinture.~ */
  IF ~~ THEN REPLY #23381 /* ~"Alors qu'est-ce qui lui est arrivé ?"~ */ GOTO 10
  IF ~~ THEN REPLY #23382 /* ~"C'est dommage. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #23383 /* ~"J'espère que tu le trouveras. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.3
  SAY #23384 /* ~"J'fouillais dans les catacombes en dessous, et j'suis tombé sur une goule ! Ça devait être une traînarde, parce que d'habitude y'en a plus d'une. Elle m'a mordu à la figure, alors j'me suis couvert le visage avec les bras et je l'ai poignardée dans les yeux. Elle est tombée et m'a mordu la jambe pendant un moment avant que j'puisse l'envoyer caguer, puis je suis revenu ici."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23385 /* ~"C'est ce couteau-là, avec 'UHIR' gravé dessus ?"~ */ GOTO 16
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23386 /* ~"Quelle histoire. J'te ramènerai ton couteau si je le vois là-dessous."~ */ DO ~SetGlobal("Uhir","GLOBAL",2)
~ JOURNAL #21912 /* ~Uhir a perdu son 'couteau porte-bonheur' dans les catacombes. Il s'en est servi pour poignarder une goule dans les yeux et s'est enfui. Si je le trouve, je le lui rapporterai peut-être.~ */ GOTO 11
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23387 /* ~"J'espère que tu trouveras le couteau. J'ai d'autres questions."~ */ GOTO 3
  IF ~  Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23388 /* ~"Je te l'ai dit, j'te le ramènerai si je le trouve. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #23389 /* ~"J'parie que la goule est aussi contrariée que toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #23390 /* ~"C'est vrai ? J'serai reconnaissant, c'est sûr. Mon nom est gravé sur la poignée…"~ */
  IF ~~ THEN REPLY #23391 /* ~"Je suis ravi de t'aider. Avant de partir, je voudrais te poser des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #23392 /* ~"J'attends une rémunération, tu réalises."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #23393 /* ~"Bon, je m'en vais. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #23394 /* ~Uhir fronce les sourcils. "J'te donnerai c'que j'ai, mais c'est pas beaucoup. Regarde autour de toi, matois… J'te couvrirai pas de richesses."~ */
  IF ~~ THEN REPLY #23395 /* ~"Bon, cela fera l'affaire. J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #23396 /* ~"Nous parlerons davantage lorsque j'aurais retrouvé ton couteau. Au revoir."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",2)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #23397 /* ~Uhir te regarde en biais. "T'as trouvé mon couteau ?"~ */
  IF ~  PartyHasItem("UhrKnf")
Global("Good_Uhir_1","GLOBAL",1)
~ THEN REPLY #23398 /* ~"Oui… le voici."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~  PartyHasItem("UhrKnf")
Global("Evil_Uhir_1","GLOBAL",1)
~ THEN REPLY #23399 /* ~"Oui."~ */ GOTO 15
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23400 /* ~Mensonge : "Non… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Uhir_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23401 /* ~"Non, pas encore. Où est-ce que tu l'as perdu déjà ?"~ */ GOTO 10
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23402 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 15.1 16.0
  SAY #23403 /* ~Uhir prend le couteau et le serre avec amour. "Ah, tu es de retour ! Mon couteau porte-bonheur… merci, matois. Et *toi* !" Il réprimande son couteau, le secouant : "Ne t'en vas plus jamais !" Il glisse le couteau dans sa gaine en souriant.~ */
  IF ~~ THEN REPLY #23404 /* ~"Au revoir, Uhir."~ */ JOURNAL #22025 /* ~J'ai rendu son 'couteau porte-bonheur' à Uhir. Il fonctionnera peut-être un peu mieux à l'avenir… même s'il lui a *effectivement* permis d'éviter de se faire dévorer par une goule une fois.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.1
  SAY #23405 /* ~"Tout c'que j'ai est cette poignée de pièces de cuivre, matois…" Il t'offre environ une douzaine de pièces. "Ça suffit ?"~ */
  IF ~~ THEN REPLY #23406 /* ~"Oui, ça ira. Voici ton couteau."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
GivePartyGold(13)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23407 /* ~"Garde ton argent, Uhir… voici ton couteau."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23408 /* ~"Hum. Je garderai juste ça alors. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~J'ai décidé de garder le "couteau porte-bonheur" d'Uhir. Ça n'a pas eu l'air de trop lui plaire.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 10.0
  SAY #23409 /* ~Les yeux d'Uhir s'écarquillent de surprise. "C'est mon couteau porte-bonheur !"~ */
  IF ~~ THEN REPLY #23410 /* ~"Tiens, prends-le. Il t'appartient."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Uhir_1","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #23411 /* ~"Si tu veux le récupérer, je pourrais envisager de le vendre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #23412 /* ~"C'est un beau couteau … Je vais le garder, Uhir. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~J'ai décidé de garder le "couteau porte-bonheur" d'Uhir. Ça n'a pas eu l'air de trop lui plaire.~ */ EXIT
END
