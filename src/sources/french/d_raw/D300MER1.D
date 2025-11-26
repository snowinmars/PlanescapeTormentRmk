// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17240 /* ~Ce vieux type sévère semble vendre différentes armes. "Ah - viens ici ! T'es venu voir mes lames, hein ?"~ */
  IF ~~ THEN REPLY #17302 /* ~"Oui."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17303 /* ~"Non, mais j'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17304 /* ~"Non, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17244 /* ~"On s'rencontre encore, matois. Tu viens ach'ter le meilleur acier de Sigil, c'est ça ?"~ */
  IF ~~ THEN REPLY #17305 /* ~"Oui."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17306 /* ~"Non, mais j'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17309 /* ~"Non, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17246 /* ~"J'ai du travail, m'sieur…" Il tourne soudain la tête et tousse dans sa main. "Excuse-moi. Comme j'te disais, j'peux pas arrêter de vendre juste pour parler avec toi."~ */
  IF ~~ THEN REPLY #17311 /* ~"Tu es malade ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Merch1_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #17316 /* ~"Alors, montre-moi tes marchandises."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17317 /* ~"Alors, je te paierai pour le temps que tu auras passé."~ */ GOTO 3
  IF ~~ THEN REPLY #17318 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #17254 /* ~Le vieux marchand s'arrête un moment pour regarder autour. Lorsqu'il est sûr qu'aucun client potentiel ne se trouve à proximité, il te tend la main.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #17319 /* ~Laisse tomber trois pièces dans sa main.~ */ DO ~TakePartyGold(3)
~ GOTO 4
  IF ~~ THEN REPLY #17353 /* ~"Peu importe. Montre-moi tes marchandises."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17355 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17256 /* ~Il incline la tête et fourre les trois pièces sous ses habits. "Bon. Qu'est-ce qu'tu voulais savoir, matois ?"~ */
  IF ~~ THEN REPLY #17357 /* ~"Parle-moi de cette région."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17359 /* ~"Je cherche un certain Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17361 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 7
  IF ~~ THEN REPLY #17362 /* ~"Laisse tomber. Montre-moi tes marchandises."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17363 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1 8.1 9.0
  SAY #17263 /* ~"Ça ? Juste un autre marché de la Ruche, le pire quartier de notre belle cité de Sigil." Il sourit amèrement, puis hausse les épaules. "Si tu surveilles tes arrières et si tu es en lieu sûr avant la nuit, c'est pas trop craignos - pour un taudis."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17364 /* ~"Je cherche un certain Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17365 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 7
  IF ~~ THEN REPLY #17366 /* ~"Montre-moi tes marchandises."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17367 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 7.2 8.2 9.1
  SAY #17265 /* ~"Hum. Non, connais pas l'nom. Désolé, matois."~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17368 /* ~"Ça ne m'aide pas beaucoup."~ */ GOTO 8
  IF ~~ THEN REPLY #17215 /* ~"Parle-moi de cette région."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17217 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 7
  IF ~~ THEN REPLY #17218 /* ~"Laisse tomber. Montre-moi tes marchandises."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17220 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.2 8.3 9.2
  SAY #17267 /* ~"J'en ai pas vu récemment, désolé. Si t'as besoin d'un nouveau journal, peut-être qu'un des autres marchands en a un à vendre." Il hausse les épaules.~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17221 /* ~"Ça ne m'aide pas beaucoup."~ */ GOTO 8
  IF ~~ THEN REPLY #17222 /* ~"Parle-moi de cette région."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17223 /* ~"Je cherche un certain Pharod."~ */ GOTO 6
  IF ~~ THEN REPLY #17268 /* ~"Laisse tomber. Montre-moi tes marchandises."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17310 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #17272 /* ~Le vieux marchand glousse légèrement, puis tousse dans sa main. "Eh, t'me paies pour mon temps, pas pour mes réponses, matois. J't'aurais aidé si j'avais pu, j't'assure. Alors, tu veux voir ma camelote, maintenant ?"~ */
  IF ~~ THEN REPLY #17324 /* ~"Oui."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17332 /* ~"Pas tout de suite. Parle-moi de cette région."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17356 /* ~"Non, mais je cherche un certain Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17358 /* ~"Non, pas maintenant. Je cherche un journal que j'ai perdu."~ */ GOTO 7
  IF ~~ THEN REPLY #17360 /* ~"Non merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #17275 /* ~"Ho ho ! Non, matois, j'suis simplement vieux. J'te remercie quand même." Il te sourit.~ */
  IF ~~ THEN REPLY #17369 /* ~"Peux-tu me parler de cette zone ?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17370 /* ~"Je cherche un certain Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17371 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 7
  IF ~~ THEN REPLY #17372 /* ~"Je peux voir tes marchandises ?"~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17373 /* ~"Prends soin de toi. Au revoir."~ */ EXIT
END
