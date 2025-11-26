// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISHO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #50027 /* ~Tu vois une petite femme potelée aux cheveux roux. Les soucis, l'inquiétude et la haine pèsent sur son visage depuis trop longtemps. Elle sourit d'un air moqueur en te voyant approcher et détourne la tête pour que tu ne puisses pas voir ses yeux - elle fait en sorte que tu ne puisses pas la voir si elle ne te voit pas. Pour elle, tu n'existes même pas.~ */
  IF ~~ THEN REPLY #50029 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #50030 /* ~Cette femme continue à t'ignorer. Rien de ce que tu lui dit ne semble susciter chez elle la moindre émotion.~ */
  IF ~~ THEN REPLY #50031 /* ~"Très bien, alors."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 2 // from:
  SAY #50033 /* ~Tu vois une petite femme potelée aux cheveux roux. Les soucis, l'inquiétude et la haine pèsent sur son visage depuis trop longtemps. Elle dit d'une voix rauque : "C'est toi qui veux aller sous terre, hein ? Tu devras rendre un service à Dona Quisho pour qu'elle accepte de te donner une partie de la clé. Il y a un fiélon enfermé en ville. Tu dois le libérer." Elle te met un parchemin entre les mains avant même que tu aies le temps de réagir.~ */
  IF ~~ THEN REPLY #50035 /* ~"Pourquoi ?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50036 /* ~"Je suis contre la libération des fiélons."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50038 /* ~"Dis-moi ce que je dois faire."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50039 /* ~"Tombée-en-Disgrâce, qu'est-ce que vous en pensez ?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #50040 /* ~"Parce qu'il m'appartient ! Parce que j'ai fait trop de sacrifices pour lui ! Parce qu'ils me l'ont pris et l'ont enfermé et que personne ne m'aidera alors que c'est tout ce que je veux !" Sa voix devient sournoise. "Mais je connais quelque chose qui t'intéresse et si tu veux le savoir, tu vas devoir libérer Agril-Shanak."~ */
  IF ~~ THEN REPLY #50041 /* ~"Et qu'est-ce qui m'assure que tout ça ne va pas mal finir ?"~ */ GOTO 6
  IF ~~ THEN REPLY #50042 /* ~"Je suis contre la libération des fiélons."~ */ GOTO 4
  IF ~~ THEN REPLY #50043 /* ~"Dis-moi ce que je dois faire."~ */ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50044 /* ~"Tombée-en-Disgrâce, qu'est-ce que vous en pensez ?"~ */ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 8.1
  SAY #50045 /* ~Elle éclate de rire. "Cela importe peu. Tu as besoin de la cinquième partie de la Clé. Je l'ai. À moins que tu trouves une autre solution pour rejoindre ton précieux souterrain, tu vas devoir faire ce que je te dis."~ */
  IF ~~ THEN REPLY #50046 /* ~"Et qu'est-ce qui m'assure que tout ça ne va pas mal finir ?"~ */ GOTO 6
  IF ~~ THEN REPLY #50047 /* ~"Je ne ferai pas ça."~ */ GOTO 7
  IF ~~ THEN REPLY #50048 /* ~"Dis-moi ce que je dois faire."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.2 6.0 8.2
  SAY #50049 /* ~"Trouve le silo à grains dans la cité. Trouve le pentacle inscrit sur le sol. Utilise ce parchemin et lorsqu'Agril-Shanak apparaîtra… libère-le. Débrouille-toi comme tu l'entends, mais libère-le. Peu m'importe ce que tu feras alors."~ */
  IF ~~ THEN REPLY #50050 /* ~"Très bien. Au revoir."~ */ JOURNAL #50051 /* ~Pour obtenir la cinquième partie de la clé, je dois me rendre au silo de la ville, puis trouver le pentacle tracé à l'intérieur et libérer le fiélon Agril-Shanak en lisant le parchemin à proximité. Une fois cela fait, Dona Quisho me donnera la clé.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0
  SAY #50052 /* ~Un petit sourire emplit ses yeux, un des sourires les plus empoisonnés que tu aies jamais vu. "Ce n'est pas mon problème. Tu te débrouilleras avec le fiélon. Je veux juste que tu le libères."~ */
  IF ~~ THEN REPLY #50053 /* ~"Qu'est-ce que je dois faire ?"~ */ GOTO 5
  IF ~~ THEN REPLY #50054 /* ~"Je ne ferai pas ça."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 9.1
  SAY #50055 /* ~"Alors, tu n'auras pas la cinquième partie de la Clé… à moins que tu changes d'avis. Dans ce cas, reviens me voir." Elle éclate de rire et se détourne de toi.~ */
  IF ~~ THEN REPLY #50056 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",5)
Global("Free_Fiend","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #50057 /* ~Cette fois, alors que tu t'approches d'elle, ses yeux te fixent d'un air déterminé. Elle dit d'une voix rauque : "C'est toi qui veux aller sous terre, hein ? Tu devras rendre un service à Dona Quisho pour qu'elle accepte de te donner une partie de la clé. Il y a un fiélon enfermé dans la cité. Tu dois le libérer." Elle te met un parchemin entre les mains avant même que tu aies le temps de réagir.~ */
  IF ~~ THEN REPLY #50058 /* ~"Pourquoi ?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50059 /* ~"Je suis contre la libération des fiélons."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50060 /* ~"Dis-moi ce que je dois faire."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50061 /* ~"Tombée-en-Disgrâce, qu'est-ce que vous en pensez ?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~  GlobalGT("Free_Fiend","GLOBAL",0)
GlobalLT("Free_Fiend","GLOBAL",3)
~ THEN BEGIN 9 // from:
  SAY #50062 /* ~Dona Quisho lève les yeux alors que tu t'approches et le mépris se lit sur son visage. "Tu n'as pas encore libéré Agril-Shanak, pas vrai ? Reviens quand ce sera fait."~ */
  IF ~~ THEN REPLY #50063 /* ~"Qu'est-ce que j'étais censé faire, déjà ?"~ */ GOTO 10
  IF ~~ THEN REPLY #50064 /* ~"Je ne le ferai pas."~ */ GOTO 7
  IF ~~ THEN REPLY #50065 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #50066 /* ~Elle soupire d'impatience. "Silo à grains. Pentacle. Lire le parchemin. C'est si difficile ? Vas-y." Elle se détourne de toi.~ */
  IF ~~ THEN REPLY #50067 /* ~"Alors, au revoir." ~ */ EXIT
END

IF ~  Global("Free_Fiend","GLOBAL",3)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #50068 /* ~"Tu as réussi, pas vrai ? Oui… mais où est Agril-Shanak ?"~ */
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50069 /* ~Vérité : "Il est mort."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 13
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50070 /* ~Mensonge : "Il va arriver."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50071 /* ~"Je suis sûr qu'il sera bientôt là."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #68287 /* ~"Je l'ai laissé emprisonné dans le pentacle. Va le libérer, si tu veux. Moi, je l'ai appelé de nouveau. Maintenant, à toi de jouer."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.2 11.3
  SAY #50072 /* ~Elle éclate de rire. "Et nous allons établir des plans et poser des pièges, ils vont amèrement regretter leurs erreurs, oh oui." Elle te remet une bourse de pièces. "Voici la dernière partie de la Clé : 'Depuis le centre, trois fois jusqu'au pôle le plus distant'. Repars et va parler à Barlouche maintenant ; il te guidera." Tout en riant, elle rassemble ses affaires et décampe.~ */
  IF ~~ THEN REPLY #50073 /* ~"Au revoir…"~ */ DO ~GivePartyGold(1500)
AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50074 /* ~Dona Quisho m'a donné la cinquième partie de la clé ('Depuis le centre, trois fois jusqu'au pôle le plus distant'). Elle m'a vaguement parlé de vengeance, en disant qu'il fallait que je retourne discuter avec Barlouche si je voulais apprendre comment utiliser la clé.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #50075 /* ~Son visage pâlit. "Mort…. mais… ? Tu l'as tué ? Alors, je suis perdue. Prends ta maudite clé et fiche le camp." Elle débite ces mots sans vie : "Depuis le centre, trois fois jusqu'au pôle le plus distant." Elle regarde un moment autour d'elle. "Parle à Barlouche. Il saura quoi faire." Elle rassemble ses affaires et s'en va.~ */
  IF ~~ THEN REPLY #50076 /* ~"Alors, au revoir."~ */ DO ~AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50077 /* ~Dona Quisho m'a donné la cinquième partie de la clé ('Depuis le centre, trois fois jusqu'au pôle le plus distant'). Elle a bougonné qu'elle était perdue quand je lui ai dit qu'Agril-Shanak était mort, puis s'est enfuie comme si tous les diables des Neuf Enfers étaient à ses trousses.~ */ EXIT
END
