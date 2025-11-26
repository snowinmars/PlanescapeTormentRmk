// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLINGASH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLINGASH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46175 /* ~Sur ce petit meuble à tiroirs est posée une urne pleine de cendres et de morceaux d'os calcinés. On peut y lire, gravés sur son socle, les mots suivants: "Fin Andlye - Mari et Père Adoré, et Connaisseur Estimé de Cent Langages.'~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46176 /* ~Utilise Histoires-Os-Conter sur les cendres.~ */ GOTO 1
  IF ~~ THEN REPLY #46177 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46178 /* ~Les cendres paraissent se soulever légèrement, comme si ton souffle les faisait bouger. Un murmure lointain jaillit de l'urne : "Pourquoi, ô pourquoi ai-je été rappelé vers ces cendres, qui sont froides et grises comme le cœur d'une guenaude ?"~ */
  IF ~~ THEN REPLY #46179 /* ~"Pour répondre à certaines questions, esprit…"~ */ GOTO 2
  IF ~~ THEN REPLY #46180 /* ~"Ce n'est pas la peine. Au revoir, esprit."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46181 /* ~"Pose tes questions, pour que je puisse retrouver le calme et la méditation…"~ */
  IF ~~ THEN REPLY #46182 /* ~"Qui étais-tu ?"~ */ GOTO 3
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46183 /* ~Décris-lui les caractères inscrits sur le dodécaèdre pliable et demande-lui s'il connaît cette langue.~ */ GOTO 4
  IF ~~ THEN REPLY #46184 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46185 /* ~"Je me nommais Fin et j'étais un linguiste et un érudit. J'ai été assassiné - assassiné, oui ! - par l'un de mes élèves, qui m'a tué pour que je ne puisse apprendre à d'autres le langage que je lui avais enseigné. Il s'agissait de la langue des Uyos, l'une des plus rares de tout le multivers. Je ne connaissais personne qui la parlait, sauf moi et mon assassin d'élève…"~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46186 /* ~Décris-lui les caractères inscrits sur le dodécaèdre pliable et demande-lui s'il connaît cette langue.~ */ GOTO 5
  IF ~~ THEN REPLY #46187 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46188 /* ~"Je connais cette langue, oui. J'étais un linguiste et un érudit, vois-tu. J'ai été assassiné - assassiné, oui ! - par l'un de mes élèves, qui m'a tué pour que je ne puisse apprendre à d'autres le langage que je lui avais enseigné. Il s'agissait de la langue des Uyos, l'une des plus rares de tout le multivers. Je ne connaissais personne qui la parlait, sauf moi et mon assassin d'élève…"~ */
  IF ~~ THEN REPLY #46189 /* ~"Alors, peux-tu m'aider à apprendre cette langue morte ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #46190 /* ~"Je pourrais te l'enseigner, oui… et ça me ferait plaisir, ne serait-ce que pour contrecarrer les plans de mon assassin. Commence d'abord par me dire quelles sont les langues que tu parles…"~ */
  IF ~~ THEN REPLY #46191 /* ~Absorbe tout ce que l'esprit peut t'apprendre.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46193 /* ~Alors que l'esprit te parle de la langue des Uyos, tu éprouves une sensation douloureuse au niveau des tempes et une porte s'ouvre dans ta mémoire… une porte menant justement à ce langage disparu. Tu te souviens de lettres, puis de mots et enfin de phrases, jusqu'à ce que, tel un grand vent poussant devant lui les nuées toxiques issues de la Grande Fonderie, tu te souviennes totalement de cette langue.~ */
  IF ~~ THEN REPLY #46194 /* ~Continue…~ */ DO ~GiveExperience(Protagonist,8000)
~ JOURNAL #39479 /* ~En parlant avec l'esprit du linguiste, Fin Andlye, je me suis rendu compte que je connaissais moi aussi le langage utilisé pour rédiger le texte du dodécaèdre. Je vais enfin être capable de comprendre ce qu'il dit.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46195 /* ~Mais un autre souvenir remonte à la surface… plus désagréable, celui-là. Il te trouble et t'inspire un grand malaise, ainsi que d'inexplicables remords.~ */
  IF ~~ THEN REPLY #46196 /* ~Refoule les souvenirs.~ */ GOTO 11
  IF ~~ THEN REPLY #46197 /* ~Laisse le souvenir refaire surface.~ */ DO ~SetGlobal("Murdered_Fin","GLOBAL",1)
GiveExperience(Protagonist,4000)
PlaySoundNotRanged("SPTR_01")
~ JOURNAL #39480 /* ~Alors que je discutais avec Fin Andlye le linguiste, je me suis souvenu que c'est moi qui l'avais assassiné. Sans doute était-ce pour l'empêcher d'enseigner à quiconque la langue des Uyos, et ainsi garder pour mon seul usage ce que j'avais inscrit sur le dodécaèdre.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #46198 /* ~Enfin, tu te souviens de Fin Andlye lui-même. Tu te rappelles sa voix douce et la pédagogie dont il a fait preuve alors qu'il t'enseignait l'ancienne langue des Uyos. Et tu te remémores tes mains couvertes de cicatrices refermées autour de sa gorge, broyant son larynx afin de garantir que le contenu de ton journal intime, piégé et camouflé dans un étrange dodécaèdre et rédigé dans le langage le plus hermétique qui soit, resterait bien secret aux yeux de tous…~ */
  IF ~~ THEN REPLY #46199 /* ~"Fin… je dois t'avouer que… c'est moi qui t'ai tué."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ashes_1","GLOBALGood",1)
~ JOURNAL #39506 /* ~J'ai avoué à Fin Andlye que je l'avais tué, en lui expliquant pourquoi. Il m'a pardonné, ce qui m'emplit de joie. J'ai l'impression qu'un fardeau - léger, certes, mais un fardeau tout de même - vient d'être ôté de mes épaules.~ */ GOTO 9
  IF ~~ THEN REPLY #46200 /* ~"Je crois que je connais suffisamment le langage, désormais. Merci, Fin, et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46201 /* ~L'esprit garde le silence pendant un instant, mais les cendres continuent de bruisser dans l'urne. Quand il reprend la parole, c'est d'une voix emplie de tristesse. "Mais… pourquoi… et pourquoi es-tu revenu me voir ? As-tu oublié tout ce que je t'ai enseigné ?"~ */
  IF ~~ THEN REPLY #46202 /* ~"Non, enfin si… c'est difficile à expliquer, mais je crois que c'est l'une de mes incarnations précédentes qui t'a tué. Chaque fois que je meurs, je me réveille comme si je sortais d'un long sommeil… mais j'oublie systématiquement qui j'étais ou ce que j'ai fait…"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46203 /* ~"Je crois que je comprends. Je sais que tes regrets sont sincères, et je te pardonne. Puisses-tu trouver la paix, mon jeune élève, et puisses-tu être meilleur dans cette vie que dans celle qui a mis un terme à la mienne…"~ */
  IF ~~ THEN REPLY #46204 /* ~"Merci, Fin. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #46205 /* ~L'esprit est étonné par ta maîtrise apparente de la langue des Sidhis. "Tu sembles déjà la connaître partiellement, mon jeune élève…"~ */
  IF ~~ THEN REPLY #46206 /* ~"Oui, je crois que je comprends suffisamment le langage maintenant. Merci, Fin, et au revoir."~ */ EXIT
END
