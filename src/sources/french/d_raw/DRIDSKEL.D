// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRIDSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRIDSKEL~

IF ~  GlobalLT("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20324 /* ~Ce squelette secoue la tête et se marre tout seul. Il pouffe de rire et renifle à l'occasion, se mordant sa main osseuse pour s'arrêter. Il est tellement vieux qu'aucune chair ne subsiste sur ses os… seules quelques hardes colorées.~ */
  IF ~~ THEN REPLY #20356 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #20357 /* ~Ignore-le et passe ton chemin.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20325 /* ~"Bonjour, oui !" Il rit sous cape, des nuages de poussière allant et venant à chaque souffle.~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20358 /* ~"Je crois que tu as une devinette difficile."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20359 /* ~"Je voudrais connaître la solution d'une de tes devinettes."~ */ GOTO 3
  IF ~~ THEN REPLY #20360 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #20361 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #20326 /* ~"Tu aurais intérêt à chercher des réponses ailleurs, car je ne m'intéresse nullement à tes questions." Il couvre sa bouche en ricanant et en reniflant. "Je sais, c'est très grossier, mais tu devras me pardonner."~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20362 /* ~"Je crois que tu as une devinette difficile."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20363 /* ~"Je voudrais connaître la solution d'une de tes devinettes."~ */ GOTO 3
  IF ~~ THEN REPLY #20364 /* ~"Très bien, je trouverai quelqu'un d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1
  SAY #20327 /* ~Il ricane ironiquement. "Ça m'étonnerait !" Il ricane d'autant plus en voyant ta mine, claquant des dents à ton visage.~ */
  IF ~~ THEN REPLY #20365 /* ~"Alors, c'est quoi cette devinette ?"~ */ GOTO 5
  IF ~~ THEN REPLY #20366 /* ~Vérité : "Dis-le-moi ou je te découpe en menus morceaux."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20367 /* ~Bluff : "Dis-le-moi ou je te découpe en menus morceaux."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20368 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 15.1 15.2
  SAY #20328 /* ~Le rire s'arrête brusquement. "Pfff !" Le squelette détourne la tête.~ */
  IF ~~ THEN REPLY #20370 /* ~Pars.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0 3.0
  SAY #20329 /* ~Il remue la tête en gloussant. "Veux-tu l'entendre ?"~ */
  IF ~~ THEN REPLY #20371 /* ~"Oui."~ */ GOTO 6
  IF ~~ THEN REPLY #20372 /* ~"Non, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20330 /* ~"Hum ! Si tu trouves le passage, alors je t'apparais. Tu pourras me garder ou bien me partager. Mais si tu me partages alors je disparais. Que suis-je ?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20373 /* ~"Bien sûr, c'est le 'secret'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(6250)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20374 /* ~"C'est… Euh… Hmm."~ */ GOTO 14
  IF ~~ THEN REPLY #20375 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20331 /* ~"Naaaah ! Comment le savais-tu ?!"~ */
  IF ~~ THEN REPLY #20376 /* ~"Si tu trouves le passage secret, il t'apparaît. Tu peux garder un secret ou le partager ; mais si tu dis un secret, ben ce n'est plus un secret."~ */ GOTO 9
  IF ~~ THEN REPLY #20377 /* ~Pars en riant.~ */ GOTO 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #20332 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 29.0 30.0
  SAY #20333 /* ~"Arrh, crotte de troll ! Très bien, mais ne donne la réponse à personne d'autre. Est-ce que tu peux me promettre au moins cela ?"~ */
  IF ~~ THEN REPLY #20378 /* ~"Et pourquoi pas ?"~ */ GOTO 10
  IF ~~ THEN REPLY #20379 /* ~"Bien sûr. Je te le promets. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20380 /* ~"Pas question que je te promette quoi que ce soit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.0
  SAY #20334 /* ~"J'aime beaucoup l'idée de les voir se creuser les méninges éternellement pour essayer de trouver." Il ricane méchamment, sa main squelettique sur la bouche. "Alors, tu me le promets ?"~ */
  IF ~~ THEN REPLY #20381 /* ~"Bien sûr. Je te le promets. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20382 /* ~"Pas question que je te promette quoi que ce soit. Au revoir."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 11 // from:
  SAY #20335 /* ~"Rappelle-toi…" Il s'arrête pour ricaner. "Ne donne la réponse à personne !"~ */
  IF ~~ THEN REPLY #20383 /* ~"D'accord, d'accord. Au revoir."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",3)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 12 // from:
  SAY #20336 /* ~"Misérable ! Me ruiner mon plaisir ! Sois damné sur Baator ! Je te cracherais dessus si je le pouvais ! Pfff !" Le squelette détourne la tête.~ */
  IF ~~ THEN REPLY #20384 /* ~Pars.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 30.1
  SAY #20337 /* ~"Attends, attends ! Ne donne la réponse à personne. Est-ce que tu peux me promettre au moins cela ?"~ */
  IF ~~ THEN REPLY #20385 /* ~"Et pourquoi pas ?"~ */ GOTO 10
  IF ~~ THEN REPLY #20386 /* ~"Bien sûr. Je te le promets. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20387 /* ~"Pas question que je te promette quoi que ce soit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #20338 /* ~Le squelette éclate d'un rire moqueur et ironique. Il pointe vers toi un doigt squelettique, gloussant et caquetant alors qu'il s'imagine en train d'éventrer quelque intestin.~ */
  IF ~~ THEN REPLY #20388 /* ~"Très bien, quelle est la solution ?"~ */ GOTO 15
  IF ~~ THEN REPLY #20389 /* ~"Hé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #20339 /* ~"Pas question ! Pas *question* !" Il ricane d'autant plus en voyant ta mine, claquant ses dents à ta face.~ */
  IF ~~ THEN REPLY #20390 /* ~"Et si je *te* posais une colle ? Tu me le dirais ?"~ */ GOTO 16
  IF ~~ THEN REPLY #20391 /* ~Vérité : "Dis-le-moi ou je te découpe en menus morceaux."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20392 /* ~Bluff : "Dis-le-moi ou je te découpe en menus morceaux."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20393 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #20340 /* ~Le rire s'arrête brusquement. "Qu'est-ce ?" Il porte sa main squelettique à son crâne. "Ai-je bien entendu… ? Un défi… ? Oui… oui… très bien ! Mais si tu perds, ou si tu t'arrêtes à mi-chemin, jamais plus nous ne nous parlerons !"~ */
  IF ~~ THEN REPLY #20394 /* ~"Très bien. Commençons."~ */ GOTO 17
  IF ~~ THEN REPLY #20395 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20341 /* ~Il approuve avec empressement.~ */
  IF ~~ THEN REPLY #20396 /* ~"Hmm. Qu'est-ce qui pèse le plus lourd ? Une livre de pièces d'or pur de cent Communs ou une demi-livre de pièces d'or pur de deux cents Communs ?"~ */ GOTO 18
  IF ~~ THEN REPLY #20397 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #20342 /* ~"Facile, trop facile ! Une livre d'or est *toujours* plus lourd qu'une demi-livre ! Stupide, stupide !" glousse-t-il.~ */
  IF ~~ THEN REPLY #20398 /* ~"Très bien. À ton tour."~ */ GOTO 19
  IF ~~ THEN REPLY #20399 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #20343 /* ~Le squelette s'accroupit et dessine un visage simple dans la poussière. Le pointant, il se met à parler : "D'oncles et frères je n'ai point, mais le père de cet homme est le père de mon fils. Qui est-il, hein ?"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20400 /* ~"C'est ton fils."~ */ DO ~AddexperienceParty(625)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #20401 /* ~"Je… je ne sais pas."~ */ GOTO 31
  IF ~~ THEN REPLY #20402 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20344 /* ~"Bah ! Ton tour."~ */
  IF ~~ THEN REPLY #20403 /* ~"Le fabricant n'en veut pas, l'acheteur ne l'utilise pas, l'utilisateur ne le voit pas. Qu'est-ce que c'est ?"~ */ GOTO 21
  IF ~~ THEN REPLY #20404 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20345 /* ~Le squelette ricane stupidement. "C'est pas vrai, c'est pas vrai ! La réponse est 'cercueil' et je peux certainement voir le mien !"~ */
  IF ~~ THEN REPLY #20405 /* ~"Très bien. Encore à toi."~ */ GOTO 22
  IF ~~ THEN REPLY #20406 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20346 /* ~"Quel est le mot de trois lettres que même le plus sage des mortels prononce mal ?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #20407 /* ~"Hmm. 'Mal'."~ */ DO ~AddexperienceParty(1250)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #20408 /* ~"Je… je ne sais pas."~ */ GOTO 31
  IF ~~ THEN REPLY #20409 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20347 /* ~Il agite le poing. "Ooooh, malédictions ! Allez."~ */
  IF ~~ THEN REPLY #20410 /* ~"La nuit, elles sortent sans qu'on aille les chercher, et le jour, elles sont perdues sans avoir été volées."~ */ GOTO 24
  IF ~~ THEN REPLY #20411 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #20348 /* ~"Euh… hmm. Ah… les étoiles ! Les étoiles ! Hi ! Hi !"~ */
  IF ~~ THEN REPLY #20412 /* ~"Oui, bien sûr. À toi."~ */ GOTO 25
  IF ~~ THEN REPLY #20413 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20349 /* ~Le squelette fait craquer ses articulations. "Je n'ai jamais été, je serai toujours, n'ai jamais été vu, et ne le serai jamais. Et pourtant, de tous je suis l'espoir de vivre et de respirer dans cette sainte salle."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #20414 /* ~"La réponse est… est… Ah ! 'Demain'."~ */ DO ~AddexperienceParty(1875)
~ GOTO 26
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #20415 /* ~"Je… je ne sais pas."~ */ GOTO 31
  IF ~~ THEN REPLY #20416 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20350 /* ~"Ouaaaah ! Oui, bien sûr, demain. Allez, à toi."~ */
  IF ~~ THEN REPLY #20417 /* ~"Oui. Quel est le commencement de l'effroi, la fin de la durée et de l'espace, le commencement de toute extrémité et la fin de chaque contrée ?"~ */ GOTO 27
  IF ~~ THEN REPLY #20418 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20351 /* ~Le squelette commence à glousser de dérision, mais s'arrête brusquement. "Ah… euh. Oh, bon sang."~ */
  IF ~~ THEN REPLY #20419 /* ~"Alors ? J'attends ta réponse… Allez."~ */ GOTO 28
  IF ~~ THEN REPLY #20420 /* ~Moque-toi de lui en éclatant de rire.~ */ GOTO 28
  IF ~~ THEN REPLY #20421 /* ~Attends patiemment.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 27.2
  SAY #20352 /* ~Le squelette baisse la tête. "Je… ne sais pas."~ */
  IF ~~ THEN REPLY #20422 /* ~"Donne-moi la solution de ta première devinette et je te donnerai celle de la mienne."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(2500)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #20353 /* ~Il acquiesce. "C'est le 'secret'." Il soupire bruyamment. "Et qu'elle est la réponse de ta devinette ?"~ */
  IF ~~ THEN REPLY #20423 /* ~"La lettre 'e'."~ */ GOTO 9
  IF ~~ THEN REPLY #20424 /* ~"Pas question, pas question. Au revoir."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #20354 /* ~"Hmm… très drôle. Alors, quelle est la réponse ? Eh… attends ! Où t'en vas-tu ?"~ */
  IF ~~ THEN REPLY #20425 /* ~"Très bien. La lettre 'e'."~ */ GOTO 9
  IF ~~ THEN REPLY #20426 /* ~Ris et éloigne-toi.~ */ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 19.1 22.1 25.1
  SAY #20355 /* ~Le squelette se convulse sous de bruyants rires. Ses hurlements de rire font écho sur les murs des catacombes et il fait joyeusement tournoyer sa tête, tout en faisant claquer ses dents vers toi.~ */
  IF ~~ THEN REPLY #20428 /* ~Pars.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~  Global("DN_Riddler","AR1500",1)
~ THEN BEGIN 32 // from:
  SAY #48939 /* ~Le squelette ignore toutes tes tentatives de discussion.~ */
  IF ~~ THEN REPLY #48940 /* ~Pars.~ */ EXIT
END
