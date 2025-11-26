// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DARLO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30049 /* ~Tu vois un petit homme atteint de calvitie, debout dans ce qui sert de foyer à ce refuge minable. Tout à ses réflexions, il fronce ses sourcils broussailleux et gratte ce qui ressemble à des croûtes sur son gros nez bulbeux.~ */
  IF ~~ THEN REPLY #30077 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #30078 /* ~Ne fais pas attention à l'homme et explore la pièce.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30050 /* ~L'homme ne prend pas la peine de lever la tête. Au lieu de cela, il continue à loucher sur son nez. "Ouais ? Qu'est-ce qu'vous voulez ?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30079 /* ~"Est-ce que je pourrais me reposer ici ?"~ */ GOTO 4
  IF ~  Dead("Nestor")
~ THEN REPLY #30080 /* ~"Est-ce que je pourrais me reposer ici ?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30081 /* ~"Est-ce que je pourrais me reposer ici ?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30082 /* ~"Est-ce que je peux me reposer ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #30083 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #30084 /* ~"Excuse-moi de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3 9.0
  SAY #30051 /* ~"Sûr qu'tu peux, bige… Si t'as le jonc pour. Personne loge à l'œil, ici, sauf l'vieux Nestor là-bas - et c'est juste parce qu'personne est assez enfumé pour l'embêter."~ */
  IF ~~ THEN REPLY #30085 /* ~"Très bien. C'est combien pour un lit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #30086 /* ~"Parle-moi de ce… Nestor."~ */ GOTO 5
  IF ~~ THEN REPLY #30087 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 9.5
  SAY #30052 /* ~"C'est-y pas mignon ?" Il t'adresse un bref sourire aussi jaunâtre que sarcastique. "Et j'suis sûr qu'tu trouveras un jour les réponses. Mais faut qu'je m'occupe de mon affaire. Alors si tu veux pas d'lit, j'suggère que t'ailles caguer ailleurs !"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30088 /* ~"Je vois. Je peux avoir un lit, alors ?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30089 /* ~"Je vois. Je peux avoir un lit, alors ?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30090 /* ~"Je vois. Je peux avoir un lit, alors ?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30091 /* ~"Je vois. Je peux avoir un lit, alors ?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30092 /* ~"Je vois. Bon, je crois que je vais me reposer un peu."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30093 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 2.0 3.0 3.1 3.2 5.1 6.2 7.1 9.1 9.2 9.3
  SAY #30053 /* ~"Ça t'coûtera cinq pièces de cuivre." Il essuie sa main sale sur sa chemise encore plus sale et te tend la main, paume en l'air.~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30094 /* ~Donne-lui cinq pièces de cuivre. Va te reposer.~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #30095 /* ~"Excuse-moi, mais je n'ai pas cinq pièces de cuivre sur moi. Peut-être une autre fois. Au revoir."~ */ EXIT
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30096 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #30054 /* ~"Nestor, c'est l'espèce d'azimuté dans l'coin, là-bas." Le pouce par-dessus l'épaule, il indique l'arrière de la pièce. "Fais gaffe lorsqu'il est dans les environs, bige. Ça tourne pas rond dans sa tête. Il est toujours en train de branler son râtelier au sujet d'sa fourchette, et tout et tout. Si seulement quelqu'un pouvait nous débarrasser d'lui."~ */
  IF ~~ THEN REPLY #30097 /* ~"Pourquoi tu ne t'en débarrasses pas toi-même ?"~ */ GOTO 6
  IF ~~ THEN REPLY #30098 /* ~"Peu importe. C'est combien pour un lit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #30099 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #30055 /* ~"Tu crois pas que j'ai essayé ? Et r'garde ce que ça m'a rapporté…" Il se penche et désigne ses croûtes sanguinolentes. "Cette espèce d'azimuté m'a mordu l'nez !"~ */
  IF ~~ THEN REPLY #30100 /* ~"Je pourrais me débarrasser de lui pour toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Arlo_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #30101 /* ~"Je pourrais t'en débarrasser… moyennant finances."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Arlo_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #30102 /* ~"Peu importe. C'est combien pour un lit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #30103 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #30056 /* ~"J'vais t'dire, matois. Si t'arrives à m'en débarrasser, tu peux loger ici gratuitement autant que tu veux. Marché conclu ?"~ */
  IF ~~ THEN REPLY #30105 /* ~"D'accord. Tu peux compter sur moi."~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",1)
~ JOURNAL #29872 /* ~J'ai accepté d'aider Arlo, le propriétaire, à se débarrasser d'un vieux fou dénommé Nestor. Ce type semble s'être définitivement installé au refuge et personne ne peut l'en faire bouger.~ */ GOTO 8
  IF ~~ THEN REPLY #30107 /* ~"Peu importe. C'est combien pour un lit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #30108 /* ~"Peu importe. J'ai des choses plus importantes à faire." Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30073 /* ~"Ben alors reste pas là à rien faire, mets-toi au travail !" Il se remet immédiatement à gratter ses croûtes. "Tu vois pas qu'je suis occupé ?"~ */
  IF ~~ THEN REPLY #30109 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #30074 /* ~Arlo est activement occupé à son emploi du temps favori, le grattage de croûtes. Alors que tu approches, il t'observe du coin de l'œil. "Qu'est-ce que tu veux, maintenant ?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30110 /* ~"Est-ce que je pourrais me reposer ici ?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30111 /* ~"Est-ce que je peux me reposer ici ?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30112 /* ~"Est-ce que je peux me reposer ici ?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30113 /* ~"Est-ce que je peux me reposer ici ?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30114 /* ~"Je voudrais me reposer un peu."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30115 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #30116 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Arlo_Quest","GLOBAL",1)
Dead("Nestor")
~ THEN BEGIN 10 // from:
  SAY #30075 /* ~"Par les Puissances et leurs mères, bige ! Quand je t'ai dit de me débarrasser de cet idiot, j'ai pas dit d'l'inscrire au livre des morts !" Arlo te regarde fixement, incrédule. "OK… un marché est un marché. Tu peux loger ici gratuitement - mais t'es certainement pas l'bienvenu."~ */
  IF ~~ THEN REPLY #30117 /* ~Pars.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Arlo_2","GLOBALGood",-1)
AddexperienceParty(250)
~ JOURNAL #29870 /* ~J'ai fait ce que m'avait demandé Arlo et je me suis débarrassé de Nestor. Le propriétaire a eu l'air choqué de la façon dont je me suis débarrassé du vieux fou, mais il a quand même accepté de m'héberger gratuitement au refuge.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #30076 /* ~"Alors Nestor est rentré chez lui ? P'têt que ce bon à rien était pas si azimuté." Il te donne une tape amicale dans le dos. "P'têt qu'on peut enfin s'reposer. Tu es libre d'venir loger quand tu veux, matois."~ */
  IF ~~ THEN REPLY #30118 /* ~Pars.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #29869 /* ~En rapportant la fourchette de Nestor et en le raccompagnant, j'ai accompli ma part du marché avec Arlo. Il m'a dit que je pouvais séjourner au refuge gratuitement.~ */ EXIT
END
