// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #3176 /* ~Siabha crache à tes pieds. "Chien ! Tu oses revenir me parler alors que tes mensonges m'ont fait emprisonner ici ! Traître ! J'espère que le Styx t'avalera et recrachera tes os blanchis sur le rivage, pour qu'une armée de bouffeurs de bouse puisse s'en faire des flûtes !"~ */
  IF ~~ THEN REPLY #68278 /* ~"Au revoir, Siabha."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3178 /* ~Cette femme au visage aquilin est très hautaine, et le mépris qu'elle a pour toi est clairement visible quand elle te parle. "Je suis une femme occupée. Ne me retiens pas trop longtemps."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #3180 /* ~"J'avais juste quelques questions…"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60214 /* ~"J'avais juste quelques questions sur Maudith."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60215 /* ~"J'ai parlé à An'Izius. Il avait une proposition intéressante."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60216 /* ~"Alors, laisse tomber. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",3)
GlobalLT("C_Off","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #60217 /* ~"Eh bien ?~ */
  IF ~  Global("C_Off","GLOBAL",5)
~ THEN REPLY #60218 /* ~"Il m'a proposé une grosse somme pour te duper."~ */ GOTO 9
  IF ~  Global("C_Off","GLOBAL",6)
~ THEN REPLY #60219 /* ~"J'ai parlé au capitaine des gardes et il a dit qu'il enverrait un détachement pour escorter An'Izius jusqu'à la prison."~ */ DO ~SetGlobal("C_Off","GLOBAL",10)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #60222 /* ~Je suis allé dire à Sabhia que j'avais livré An'Izius aux gardes de Maudith. Folle de joie, elle m'a payé très cher pour cette petite traîtrise sans grande conséquence.~ */ GOTO 10
  IF ~~ THEN REPLY #60220 /* ~"J'y travaille. J'avais quelques questions…"~ */ GOTO 11
  IF ~~ THEN REPLY #60221 /* ~"J'y travaille. Je vais revenir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #60223 /* ~"C'est terminé. Déguerpis ou j'appelle les gardes."~ */
  IF ~~ THEN REPLY #60224 /* ~"Très bien."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #60225 /* ~"Déjà de retour ? Je n'ai pas de temps pour tes questions, balafré."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #60226 /* ~"J'avais juste quelques questions…"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60227 /* ~"J'avais juste quelques questions sur Maudith."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60228 /* ~"J'ai parlé à An'Izius. Il avait une proposition intéressante."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60229 /* ~"Alors, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #60230 /* ~"Je ne suis pas un rabatteur au service de ton plaisir et de ta fantaisie. Vas-t'en."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60231 /* ~"Alors, ça doit t'intéresser de savoir que j'ai parlé avec An'Izius. Il avait quelque chose d'intéressant à dire."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60232 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 4.1
  SAY #60233 /* ~Elle te regarde d'un œil critique. "J'aimerais vraiment rester et discuter avec un si charmant spécimen, mais le travail m'appelle. Tu comprends, pas vrai ? Bien sûr que tu comprends."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60234 /* ~"Alors, ça doit t'intéresser de savoir que j'ai parlé avec An'Izius. Il avait quelque chose d'intéressant à dire."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60235 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 4.2 5.0 6.0
  SAY #60236 /* ~"Il complote encore quelque diffamation contre moi, pas vrai ? Comment faire pour déjouer son plan ? Et si je t'offrais le double de ce qu'il te paie ?"~ */
  IF ~~ THEN REPLY #60237 /* ~"D'accord. Marché conclu."~ */ GOTO 8
  IF ~~ THEN REPLY #60238 /* ~"Il te salue. C'est tout."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60239 /* ~"Et si on inversait ce qu'il t'a demandé de me faire, hein ? Je te récompenserai généreusement."~ */
  IF ~~ THEN REPLY #60240 /* ~"Je vais revenir, alors."~ */ JOURNAL #60241 /* ~Siabha, l'autre haut fonctionnaire de Maudith, m'a promis le double de ce que m'a offert An'Izius si j'accepte de trahir ce dernier. Je vais y réfléchir.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #60242 /* ~"Bah ! Ça suffit ! Je veux bien m'aligner sur sa promesse, mais je ne surenchérirai pas." Elle te défie d'un sourire. "Tu vas devoir prendre une décision. Mais n'oublie pas… que je peux t'offrir un petit quelque chose en plus."~ */
  IF ~~ THEN REPLY #60243 /* ~"Très bien. Au revoir."~ */ JOURNAL #68274 /* ~Siabha m'a fait sa dernière offre pour trahir An'Izius.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #60244 /* ~Elle te tend un gros sac de pièces. "Prends ça et va-t'en. Nous n'avons jamais parlé de cette affaire." Elle te fait un clin d'œil. "Je te suis reconnaissante… pour tu sais quoi. Au revoir, étranger."~ */
  IF ~~ THEN REPLY #60245 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY #60246 /* ~"J'ai beaucoup à faire. Peut-être lorsque tu auras terminé cette petite course ? Merci quand même." Elle te fait un grand sourire étincelant et se détourne.~ */
  IF ~~ THEN REPLY #60247 /* ~"Je vais revenir, alors…"~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #60248 /* ~Elle sourit d'un air moqueur. "Oui, je suis certaine que c'était tout. Souviens-toi… que je double son offre, quelle qu'elle soit. Penses-y, étranger."~ */
  IF ~~ THEN REPLY #60249 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 13 // from:
  SAY #66785 /* ~Cet homme, qui porte l'uniforme d'un haut fonctionnaire de Maudith, est visiblement terrifié. "Ils veulent me tuer ! Je faisais juste mon travail quand la ville a glissé, et ils pensent que j'y suis pour quelque chose parce que je signais les ordres d'exécution ! Mais je faisais juste mon travail ! Aide-moi !"~ */
  IF ~~ THEN REPLY #66792 /* ~"Je ferai de mon mieux. Souhaite-moi bonne chance."~ */ EXIT
  IF ~~ THEN REPLY #66793 /* ~"Tu as bien mérité ce qui t'arrive."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #66794 /* ~"Dans ce cas, j'espère que les gehreleths vous massacreront tous, salopard !"~ */
  IF ~~ THEN REPLY #66795 /* ~"Meurs de façon honorable."~ */ EXIT
END
