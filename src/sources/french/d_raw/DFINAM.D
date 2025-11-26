// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINAM~

IF ~  NumTimesTalkedTo(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46116 /* ~Le petit homme a l'air érudit. Il t'inspecte des pieds à la tête, manifestement mécontent. "Bonjour. Je me nomme Finam. Je te prie de m'excuser, monsieur, mais je n'apprécie guère les visiteurs, surtout lorsqu'ils s'invitent d'eux-mêmes. Je te prierai donc de partir, à moins que tu puisses justifier ta présence chez moi."~ */
  IF ~~ THEN REPLY #46117 /* ~"J'aurais quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #46118 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46119 /* ~Finam fronce les sourcils. "Alors, comme ça, te revoilà, hein ? Et qu'est-ce que tu veux, cette fois ?"~ */
  IF ~~ THEN REPLY #46120 /* ~"J'avais quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #46121 /* ~"C'est sans importance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #46122 /* ~"Sache que je suis un érudit et un linguiste, monsieur. Je me ferai un plaisir de répondre à n'importe quelle question ayant trait à mon domaine de prédilection, le langage, mais je ne puis guère t'aider pour quoi que ce soit d'autre."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46123 /* ~Déplie le dodécaèdre de manière à obtenir une page de 'texte' et demande à Finam s'il peut la traduire.~ */ GOTO 3
  IF ~~ THEN REPLY #46124 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46125 /* ~Il prend le dodécaèdre déplié et l'examine attentivement. "Il s'agit là d'une langue morte depuis longtemps, et que personne, ou presque, ne connaît. Mon père était linguiste tout comme moi, et je crois qu'il devait être le seul habitant de Sigil à pouvoir interpréter ces caractères. Je les reconnais grâce aux notes qu'il m'a laissées, mais je suis bien incapable de les traduire."~ */
  IF ~~ THEN REPLY #46126 /* ~"Tu as encore ces notes ?"~ */ GOTO 4
  IF ~~ THEN REPLY #46127 /* ~"Merci quand même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46128 /* ~Finam secoue la tête. "Elles ne te seront d'aucune utilité si tu veux traduire quelque chose. Et il me semble que les rares ouvrages qu'il possédait sur le sujet ont disparu le jour où il a été tué."~ */
  IF ~~ THEN REPLY #63620 /* ~"J'aimerais tout de même beaucoup les voir…"~ */ GOTO 8
  IF ~~ THEN REPLY #46129 /* ~"Ton père a été assassiné ?"~ */ GOTO 5
  IF ~~ THEN REPLY #46130 /* ~"C'est bien dommage. Au revoir, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 8.3 11.0 12.3 13.0
  SAY #46131 /* ~Finam hoche la tête. "Il a été étranglé. Il était allé donner des cours, ce qu'il faisait fréquemment pour améliorer l'ordinaire, et on l'a retrouvé mort dans l'une des pièces de la Salle des Fêtes. Le meurtrier n'a jamais été arrêté. Ça s'est produit il y a une cinquantaine d'années ; je n'étais qu'un enfant, à l'époque."~ */
  IF ~~ THEN REPLY #46132 /* ~"Mais il connaissait cette langue et était capable de l'enseigner ?"~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #46133 /* ~"Quel dommage ! Au revoir, Finam."~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46134 /* ~"Nul doute qu'il en serait capable, s'il était encore en vie. Tout le monde s'accordait pour dire que c'était un merveilleux professeur." Il soupire. "Je suis aussi doué que lui pour ce qui est des langues, mais je n'ai malheureusement pas la patience nécessaire pour les enseigner aux autres."~ */
  IF ~~ THEN REPLY #46135 /* ~"Est-ce qu'il a été… enterré à la Morgue ?"~ */ JOURNAL #39478 /* ~Je suis allé voir Finam le linguiste pour lui parler du texte mystérieux trouvé dans le dodécaèdre dépliable que j'ai découvert. Il m'a dit que son père connaissait cet étrange langage, mais qu'il a été étranglé, il y a bien longtemps, par un agresseur inconnu. Les cendres du père ont été recueillies dans une urne, qui se trouve chez Finam. Peut-être serait-il possible de communiquer avec son esprit par le biais des cendres. Sinon, je n'ai que peu de chances de trouver quelqu'un qui comprenne cette langue morte.~ */ GOTO 7
  IF ~~ THEN REPLY #46136 /* ~"Au revoir, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46137 /* ~"Non… ses cendres sont ici." Il désigne une urne en bronze posée sur un meuble à tiroirs, à côté d'un bouquet de fleurs pourpres. "Pourquoi ?" Un sourire ironique étire les lèvres de Finam. "Tu es nécroscope ? Tu parles avec les morts ?" Il fronce soudain les sourcils. "Je ne veux plus en discuter. Tu vas devoir m'excuser… Au revoir."~ */
  IF ~~ THEN REPLY #46138 /* ~"Au revoir, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #49981 /* ~Finam soupire d'un air agacé. "Je ne sais pas exactement où elles se trouvent et je cherche autre chose pour le moment - mon journal de recherche. Quand je l'aurai retrouvé, je prendrai peut-être le temps de chercher ces notes pour toi."~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #49982 /* ~"Ce ne serait pas ce livre, là ?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~J'ai rendu son journal de recherche à Finam le linguiste.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49983 /* ~"Ce ne serait pas ce livre, là ?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~J'ai rendu son journal de recherche à Finam le linguiste.~ */ GOTO 10
  IF ~~ THEN REPLY #49984 /* ~"Je le trouverai pour toi, alors. Où est-ce qu'il était la dernière fois que tu l'as vu ?"~ */ DO ~SetGlobal("Finam","GLOBAL",1)
~ JOURNAL #49988 /* ~J'ai accepté d'aller rechercher le journal de recherche de Finam le linguiste. En contrepartie, j'espère qu'il me laissera compulser les notes de son père au sujet du langage utilisé dans le dodécaèdre. Il semblerait qu'il ait oublié son journal dans la Maison de tolérance des Plaisirs Intellectuels.~ */ GOTO 11
  IF ~~ THEN REPLY #49985 /* ~"Tu as dit que ton père a été assassiné ?"~ */ GOTO 5
  IF ~~ THEN REPLY #49986 /* ~"C'est bien dommage. Au revoir, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #49989 /* ~Finam fronce les sourcils. "Tiens, oui c'est ça !" Il te le prend, puis se met à fouiller dans ses poches. "Tiens… les notes de mon père. Nous sommes quittes, pas vrai ? Bien, je dois consulter mes notes maintenant, alors si tu veux bien m'excuser…"~ */
  IF ~~ THEN REPLY #49990 /* ~"Merci, Finam. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #49991 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 12.1
  SAY #49992 /* ~Finam fronce les sourcils. "Tiens, oui c'est ça !" Il te le prend, puis se met à fouiller dans ses poches. "Hum… c'est bizarre, elles ne sont plus là. Désolé, mais on dirait que quelqu'un a dérobé les notes de mon père. Ah, eh bien… dommage. Je dois consulter mes notes maintenant, alors si tu veux bien m'excuser…"~ */
  IF ~~ THEN REPLY #49993 /* ~"Ne t'inquiète pas pour ça. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #49994 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 12.2
  SAY #49995 /* ~"Eh… eh bien… Je ne sais pas vraiment. Il est peut-être à… eh bien, il est peut-être à la Maison de Tolérance des Plaisirs Intellectuels, mais comment cela aurait-il pu se produire sans que je le sache ?" Il se racle la gorge et détourne le regard.~ */
  IF ~~ THEN REPLY #49997 /* ~"Je vais aller voir là-bas. Tu as dit que ton père a été assassiné ?"~ */ GOTO 5
  IF ~~ THEN REPLY #49996 /* ~"Alors, je vais aller voir là-bas. Au revoir."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #49998 /* ~Finam interrompt sa recherche pour te regarder. "Tu as trouvé mon livre ?"~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #50000 /* ~"Ce ne serait pas ce livre, là ?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~J'ai rendu son journal de recherche à Finam le linguiste.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49999 /* ~"Ce ne serait pas ce livre, là ?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~J'ai rendu son journal de recherche à Finam le linguiste.~ */ GOTO 10
  IF ~~ THEN REPLY #50001 /* ~"Non. Où est-ce qu'il était la dernière fois que tu l'as vu, déjà ?"~ */ GOTO 11
  IF ~~ THEN REPLY #50002 /* ~"Non… Mais qu'est-ce que tu as dit à propos de ton père ? Il a été assassiné ?"~ */ GOTO 5
  IF ~~ THEN REPLY #50003 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #50004 /* ~Finam te jette un coup d'œil un peu agacé. "Je dois consulter mes notes maintenant, alors je te prie de m'excuser…"~ */
  IF ~~ THEN REPLY #50005 /* ~"Juste une question. Tu as dit que ton père a été assassiné ?"~ */ GOTO 5
  IF ~~ THEN REPLY #50006 /* ~"Alors, au revoir."~ */ EXIT
END
