// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33152 /* ~L'homme recule, un mélange de peur et de répulsion sur son visage. "Re… recule ! Laisse-moi !"~ */
  IF ~~ THEN REPLY #33153 /* ~Laisse-le partir.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33154 /* ~Les yeux de l'homme s'écarquillent alors que tu t'approches de lui, et il s'éloigne de toi. "J'ai rien qui puisse t'être utile, matois, j'le jure - maintenant, fiche-moi la paix !"~ */
  IF ~~ THEN REPLY #33155 /* ~Laisse-le partir.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33156 /* ~"Va caguer ! J'veux rien avoir à faire avec toi !"~ */
  IF ~~ THEN REPLY #33157 /* ~Pars.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33158 /* ~L'homme essaie à grand peine de t'ignorer. Plus tu essaies d'attirer son attention, et plus il montre qu'il ne veut pas te parler.~ */
  IF ~~ THEN REPLY #33159 /* ~Pars.~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33160 /* ~"On dirait qu't'as habité dans la Ruche - ou pire - que t'y a passé toute ta vie, matois. Maintenant va caguer, et fiche-moi la paix !"~ */
  IF ~~ THEN REPLY #33161 /* ~Pars.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33162 /* ~"T'as l'air en piteux état, bige. Va te guitouner au refuge, si t'as besoin de te reposer… c'est juste au centre de cette partie du quartier. Maintenant, fiche-moi la paix ! J'ai pas de temps à perdre avec tes questions."~ */
  IF ~~ THEN REPLY #33163 /* ~Pars.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33164 /* ~"T'es déjà allé au Bar de la Poussière accumulée, bige ? Tu m'rappelles un d'ceux qui travaillent là-bas…" Il rit cruellement.~ */
  IF ~~ THEN REPLY #33165 /* ~Pars.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33166 /* ~L'homme est en train de mâcher ce qui semble être un rat sur une brochette. "Quoi, bige ? T'as jamais vu de rat cuit ? C'est bon pour toi et en plus ça a bon goût ! Parles-en à Crédo, si t'as faim… il est dehors, devant le Bureau de Lutte contre la vermine et la maladie."~ */
  IF ~~ THEN REPLY #33167 /* ~Pars.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33168 /* ~"T'as rencontré un des Chiens Affamés récemment ? J'éviterais ces bougres hurlants pleins de combines, si j'étais toi… y sont complètement azimutés !"~ */
  IF ~~ THEN REPLY #33169 /* ~Pars.~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33170 /* ~"J'sais rien qui pourrait t'aider, bige… fiche-moi la paix."~ */
  IF ~~ THEN REPLY #33171 /* ~Pars.~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33172 /* ~L'homme te dévisage et fait un demi-cercle sur son cœur. "J'm'occupe de mes propres affaires et j'te suggère d'en faire autant. Au revoir."~ */
  IF ~~ THEN REPLY #33173 /* ~Laisse-le partir.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33174 /* ~L'homme fronce les sourcils alors que tu approches. "J'ai pas l'temps de branler m'râtelier avec les étrangers, matois. En plus, c'est pas très sûr d'faire ça dans la Ruche. Au revoir."~ */
  IF ~~ THEN REPLY #33175 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33176 /* ~"La vie dans la Ruche est un diable d'fouttoir, j'te l'dis."~ */
  IF ~~ THEN REPLY #33177 /* ~Pars.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33178 /* ~"T'as l'air en piteux état, bige. Va te guitouner au refuge, si t'as besoin de te reposer… c'est juste au centre de cette partie du quartier. Maintenant, fiche-moi la paix ! J'ai pas de temps à perdre avec tes questions."~ */
  IF ~~ THEN REPLY #33179 /* ~Pars.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33180 /* ~"T'es déjà allé au Bar de la Poussière accumulée, bige ? Tu m'rappelles un d'ceux qui travaillent là-bas…" Il rit cruellement.~ */
  IF ~~ THEN REPLY #33181 /* ~Pars.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33182 /* ~L'homme est en train de mâcher ce qui semble être un rat sur une brochette. "Quoi, bige ? T'as jamais vu de rat cuit ? C'est bon pour toi et en plus ça a bon goût ! Parles-en à Crédo, si t'as faim… il est dehors, devant le Bureau de Lutte contre la vermine et la maladie."~ */
  IF ~~ THEN REPLY #339 /* ~Pars.~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #340 /* ~"T'as rencontré un des Chiens Affamés récemment ? J'éviterais ces bougres hurlants pleins de combines, si j'étais toi… y sont complètement azimutés !"~ */
  IF ~~ THEN REPLY #341 /* ~Pars.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #3921 /* ~"J't'ai bien entendu, bige… tu cherchais Pharod, hein ? Si tu l'cherches toujours, va voir plus au nord, Square du Chiffonnier."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33184 /* ~"Alors, je vais essayer. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33188 /* ~"Je l'ai déjà trouvé, mais merci quand même. Au revoir."~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33192 /* ~"Si j'ai déjà entendu parler d'l'Allée des Angles dangereux ? Y'avait tout un quartier, là-bas, mais il a été réduit en cendres. Plus rien, y'a qu'des sicaires errants là-bas, maintenant."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33193 /* ~"Oui, je connais cet endroit."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33194 /* ~Pars.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33195 /* ~"Si t'arrives à supporter la puanteur de cet abruti, y'a un gars qui s'appelle Pestilent dans les environs, qu'a sûrement des histoires intéressantes pour toi."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33196 /* ~"J'irai peut-être le trouver. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33197 /* ~"Oui, je l'ai rencontré. Au revoir."~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33198 /* ~"Le Cadavre fumant est ma taverne préférée dans la Ruche… Mais c'est parfois chaud à caguer, à cause du Cadavre fumant et tout l'reste."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33199 /* ~"Il n'y a plus de cadavre, maintenant. Au revoir."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33200 /* ~"Oui, je connais cet endroit. Au revoir."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33201 /* ~Pars.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33202 /* ~L'homme te fait un signe de tête. "Bonjour, matois. J't'aiderais si je l'pouvais… mais j'sais rien qui pourrait t'intéresser."~ */
  IF ~~ THEN REPLY #33203 /* ~"Merci quand même. Au revoir."~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33205 /* ~"Je hais c't'endroit… si seulement j'avais assez d'jonc pour quitter la Ruche pour de bon. Si tu veux un conseil, matois, fiche le camp tant que tu peux."~ */
  IF ~~ THEN REPLY #33206 /* ~Pars.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33207 /* ~"Fais gaffe par ici, bige… la violence est d'rigueur dans la Ruche."~ */
  IF ~~ THEN REPLY #33208 /* ~Pars.~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33209 /* ~"T'as l'air en piteux état, bige. Va chercher guitoune au refuge, si t'as besoin de te reposer… c'est juste au centre de cette partie du quartier. Maintenant, fiche-moi la paix ! J'ai pas de temps à perdre avec tes questions."~ */
  IF ~~ THEN REPLY #33210 /* ~Pars.~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33211 /* ~"J't'ai bien entendu, bige… tu cherchais Pharod, hein ? Si tu l'cherches toujours, va voir plus au nord, Square du Chiffonnier."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~"Alors, je vais essayer. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~"Je l'ai déjà trouvé, mais merci quand même. Au revoir."~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33214 /* ~"Y'a un affranchi qu'j'ai rencontré ici, une fois. Porphiron… il pouvait apprendre à un homme à se battre, ouais."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33215 /* ~"J'irai peut-être le trouver, alors. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33216 /* ~"Oui, je l'ai rencontré. Au revoir."~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33217 /* ~"Va voir la Poste, si t'essaies de te repérer. C'est juste à côté du Bar d'la Poussière accumulée."~ */
  IF ~~ THEN REPLY #33218 /* ~Pars.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33219 /* ~"Si j'ai déjà entendu parler d'l'Allée des Angles dangereux ? Y'avait tout un quartier, là-bas, mais il a été réduit en cendres. Plus rien, y'a qu'des sicaires errants là-bas, maintenant."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33220 /* ~"Oui, je connais cet endroit."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33221 /* ~Pars.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33222 /* ~"Pas mal d'gens viennent par ici, pour pleurer leurs morts… y'a un Homme-Poussière bizarre au Mémorial Homme-Poussière, qui peut t'dire si la personne que tu recherches est morte, et enterrer son nom si tu veux qu'on se souvienne d'elle."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #1252 /* ~"Oui, il s'appelle 'Mort-des-Noms'. Au revoir."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #1254 /* ~Pars.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33223 /* ~"Pratiquement tous les Hommes-Poussière fréquentent le Bar d'la Poussière accumulée. Si tu cherches l'un d'eux en particulier, tu ferais bien d'commencer par-là."~ */
  IF ~~ THEN REPLY #33225 /* ~Pars.~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33228 /* ~L'homme est en train de mâcher ce qui semble être un rat sur une brochette. "Quoi, bige ? T'as jamais vu de rat cuit ? C'est bon pour toi et en plus ça a bon goût ! Parles-en à Crédo, si t'as faim… il est dehors, devant le Bureau de Lutte contre la vermine et la maladie."~ */
  IF ~~ THEN REPLY #33230 /* ~Pars.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33232 /* ~"Si t'arrives à supporter la puanteur de cet abruti, y'a un gars qui s'appelle Pestilent dans les environs, qu'a sûrement des histoires intéressantes pour toi."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33233 /* ~"J'irai peut-être le trouver. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33234 /* ~"Oui, je l'ai rencontré. Au revoir."~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33235 /* ~"Tu devrais pouvoir trouver tout c'que tu cherches ici, sur le marché."~ */
  IF ~~ THEN REPLY #33236 /* ~Pars.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33237 /* ~"Tu t'es déjà arrêté pour écouter Prophyre, sur le marché ? Sigil va devenir un sacré chaos si ce qu'elle dit est vrai - et si elle est pas seulement azimutée, comme disent la plupart des gens."~ */
  IF ~~ THEN REPLY #33238 /* ~Pars.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33239 /* ~"Si j'ai déjà entendu parler d'l'Allée des Angles dangereux ? Y'avait tout un quartier, là-bas, mais il a été réduit en cendres. Plus rien, y'a qu'des sicaires errants là-bas, maintenant."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33240 /* ~"Oui, je connais cet endroit."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33241 /* ~Pars.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33242 /* ~"T'as rencontré un des Chiens Affamés récemment ? J'éviterais ces bougres hurlants pleins de combines, si j'étais toi… y sont complètement azimutés !"~ */
  IF ~~ THEN REPLY #33243 /* ~Pars.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33244 /* ~"Le Cadavre fumant est ma taverne préférée dans la Ruche… Mais c'est parfois chaud à caguer, à cause du Cadavre fumant et tout l'reste."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33246 /* ~"Il n'y a plus de cadavre, maintenant. Au revoir."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33247 /* ~"Oui, je connais cet endroit. Au revoir."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33248 /* ~Pars.~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33249 /* ~"T'as rencontré ce bougre d'abruti de 'Deuils' ? Quel couillon… pour c'qu'on en a à foutre des arbres, ici. Et d'abord, quel est le quoqueret qui les a amenés ici, j'voudrais bien le savoir !"~ */
  IF ~~ THEN REPLY #33250 /* ~Pars.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33251 /* ~"J'peux juste te dire de surveiller ta bourse par ici, matois… y'a d'sacrés pickpockets dans les environs, tu sais."~ */
  IF ~~ THEN REPLY #33252 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33253 /* ~"Y'a une espèce de folle par ici, parfois… j'ai entendu dire qu'c'était une béjaune qu'était devenue azimutée en essayant d'retrouver son chemin."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33254 /* ~"Oui… Elle devrait être chez elle, ou sinon elle le sera bientôt. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33255 /* ~"Je l'ai rencontrée, elle s'appelle Ingress. Au revoir."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33256 /* ~Pars.~ */ EXIT
END

IF WEIGHT #50 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33257 /* ~"Si t'as un peu d'temps et un peu d'jonc, va voir Gaoha sur le marché."~ */
  IF ~~ THEN REPLY #33258 /* ~Pars.~ */ EXIT
END

IF WEIGHT #51 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33259 /* ~"T'as des tatouages intéressants, matois. Y'a un magasin, par ici, tu sais… En plus, c'est un dabus qui s'en occupe !"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33260 /* ~"Je sais. Il s'appelle Fell. Au revoir."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33261 /* ~"Oui, je connais cet endroit. Au revoir."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33262 /* ~"J'irai peut-être là-bas, alors. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,1)
Global("Hive_OT_A","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33263 /* ~"Thlium ! J'pensais jamais t'revoir. Ça fait combien d'temps ? Quatre ans ? T'as l'air… hum, c'est pas grave. Dis voir, j'te devais une centaine de pièces de cuivre. J't'les aurais rendues plus tôt, mais c'est comme si t'avais disparu d'la surface de Sigil ! Faut qu'j'mette les bouts, Thlium… Au revoir !"~ */
  IF ~~ THEN REPLY #33264 /* ~"Euh…"~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33265 /* ~Laisse-le partir.~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,2)
Global("Hive_OT_B","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #33266 /* ~L'homme écarquille les yeux et son visage blêmit. "P-p-puissances d'en haut et d'en bas… elles ont dit que tu reviendrais, mais j'y croyais pas !" Il se retourne soudain pour fuir.~ */
  IF ~~ THEN REPLY #33267 /* ~Essaie de l'attraper.~ */ DO ~SetGlobal("Hive_OT_B","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33268 /* ~Laisse-le partir.~ */ DO ~SetGlobal("Hive_OT_B","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,3)
Global("Hive_OT_C","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33269 /* ~L'homme te regarde de travers. "Morric ? C'est toi ?"~ */
  IF ~~ THEN REPLY #33270 /* ~Mensonge : "Oui… Je suis Morric."~ */ DO ~SetGlobal("Hive_OT_C","GLOBAL",1)
~ GOTO 47
  IF ~~ THEN REPLY #33271 /* ~"Peut-être…"~ */ DO ~SetGlobal("Hive_OT_C","GLOBAL",1)
~ GOTO 47
  IF ~~ THEN REPLY #33272 /* ~"Non, excuse-moi."~ */ DO ~SetGlobal("Hive_OT_C","GLOBAL",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #33273 /* ~"Mes excuses dans ce cas-là, matois. Au revoir."~ */
  IF ~~ THEN REPLY #33274 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0 45.1
  SAY #33275 /* ~"J'croyais qu't'avais dit que tu reviendrais jamais sur Sigil… ? Si Amatael découvre que t'es revenu, t'es un homme mort ! Enfin, j'ai toujours c'parchemin que tu m'as passé. Tiens… prends-le et fiche le camp avant qu'on nous voie ensemble."~ */
  IF ~~ THEN REPLY #33276 /* ~"Mais…"~ */ DO ~GiveItemCreate("SPWI107",Protagonist,1,1,0)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33277 /* ~"Merci… Au revoir."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,1,1,0)
EscapeArea()
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,4)
Global("Hive_OT_Morte","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN BEGIN 48 // from:
  SAY #33278 /* ~L'homme déglutit et indique Morte du doigt. "Ouah, regarde ! Un crâne flottant !"~ */
  IF ~~ THEN DO ~SetGlobal("Hive_OT_Morte","GLOBAL",1)
~ EXTERN ~DMORTE~ 321
END

IF ~~ THEN BEGIN 49 // from:
  SAY #33279 /* ~"Quoi ? ! Tu veux t'faire casser des dents, espèce de râtelier jacassant ?" L'homme s'avance d'un air menaçant vers Morte.~ */
  IF ~~ THEN REPLY #33280 /* ~Arrête l'homme.~ */ GOTO 50
  IF ~~ THEN REPLY #33281 /* ~Laisser Morte régler ça.~ */ EXTERN ~DMORTE~ 322
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #33282 /* ~Tu te places entre l'homme et Morte ; il te jette un regard noir, puis recule. "M'fait perdre mon temps !" Il tourne les talons.~ */
  IF ~~ THEN REPLY #33283 /* ~Laisse-le partir.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #33284 /* ~L'homme jette un regard noir à Morte, puis à toi, puis secoue la tête. "M'fait perdre mon temps !" Il tourne les talons.~ */
  IF ~~ THEN REPLY #33285 /* ~Laisse-le partir.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,5)
Global("Hive_OT_Annah","GLOBAL",0)
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN BEGIN 52 // from:
  SAY #33286 /* ~"Annah ! Qu'est-ce que tu trafiques avec ce tas d'bougres *puants* ? J'croyais que t'étais à *moi*…" L'homme éclate d'un rire bruyant et se frappe la cuisse.~ */
  IF ~~ THEN DO ~SetGlobal("Hive_OT_Annah","GLOBAL",1)
~ EXTERN ~DANNAH~ 180
END

IF ~~ THEN BEGIN 53 // from:
  SAY #33287 /* ~"Ah, t'as qu'des mots, Annah… *qu'des mots*… T'éventrerais *jamais* l'seul gars qui puisse *vraiment* t'satisfaire ! Viens ici et donne-moi un long palot mouillé, ma p'tite princesse tieffeline !" Il tend le bras pour peloter Annah.~ */
  IF ~~ THEN DO ~ForceAttack("Annah",Myself)
Enemy()
Attack("Annah")
~ EXTERN ~DANNAH~ 181
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 54 // from:
  SAY #33288 /* ~Cette personne n'a plus rien à te dire.~ */
  IF ~~ THEN REPLY #33289 /* ~Pars.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 55 // from:
  SAY #33290 /* ~Cette personne n'a plus rien d'important à te dire.~ */
  IF ~~ THEN REPLY #33291 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 56 // from:
  SAY #33292 /* ~Cette personne n'a plus rien à te dire qui ait de l'intérêt.~ */
  IF ~~ THEN REPLY #33293 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 57 // from:
  SAY #33294 /* ~Cette personne n'a plus rien à te dire.~ */
  IF ~~ THEN REPLY #33295 /* ~Pars.~ */ EXIT
END

IF WEIGHT #52 ~  NumTimesTalkedTo(0)
CreatureInArea("AR0305")
~ THEN BEGIN 58 // from:
  SAY #33211 /* ~"J't'ai bien entendu, bige… tu cherchais Pharod, hein ? Si tu l'cherches toujours, va voir plus au nord, Square du Chiffonnier."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~"Alors, je vais essayer. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~"Je l'ai déjà trouvé, mais merci quand même. Au revoir."~ */ EXIT
END
