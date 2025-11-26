// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63249 /* ~Tu vois une femme qui a l'air de s'ennuyer. Elle te regarde approcher et fronce les sourcils.~ */
  IF ~~ THEN REPLY #63250 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #63251 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63252 /* ~Elle soupire, regarde aux alentours, puis tourne son attention vers toi. "Bonjour à toi aussi… Que veux-tu ?"~ */
  IF ~~ THEN REPLY #63253 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #63254 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63255 /* ~Elle se renfrogne un peu plus. "Des questions… Bâcle ça bige. Je ne suis pas un rabatteur, et je n'ai pas l'intention de le devenir. Va caguer."~ */
  IF ~~ THEN REPLY #63256 /* ~"Cela ne prendra que quelques instants de ton temps…"~ */ GOTO 3
  IF ~~ THEN REPLY #63257 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63258 /* ~"Je n'ai pas un moment à t'accorder." Elle s'interrompt, farfouille derrière elle et sort une dague. "Qu'est-ce que tu dirais si je te faisais plutôt goûter à cette lame de Baator ?"~ */
  IF ~~ THEN REPLY #63259 /* ~Attaque-la.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63260 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63261 /* ~Tu vois une femme qui a l'air de s'ennuyer. Elle te regarde approcher et fronce les sourcils.~ */
  IF ~~ THEN REPLY #63262 /* ~"Bonjour."~ */ GOTO 5
  IF ~~ THEN REPLY #63263 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63264 /* ~Elle te sourit mais semble nerveuse. "Oui. Bonjour et tout ça… tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #63265 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63266 /* ~"Non, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63267 /* ~Elle fronce les sourcils et soupire. "Si tu es vraiment obligé mais, s'il te plait, fais vite."~ */
  IF ~~ THEN REPLY #63268 /* ~"Qui es-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #63269 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 8
  IF ~~ THEN REPLY #63270 /* ~"Que peux-tu me dire sur Maudith ?"~ */ GOTO 9
  IF ~~ THEN REPLY #63271 /* ~"Sais-tu quelque chose à propos d'un Deva ?"~ */ GOTO 11
  IF ~~ THEN REPLY #63272 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63273 /* ~"Qui je suis n'a aucune importance. Contente-toi de poser tes questions et j'essaierai d'y répondre…" Son regard trahit son impatience.~ */
  IF ~~ THEN REPLY #63274 /* ~"Très bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63275 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63276 /* ~"Ce que je fais ne te concerne pas. Contente-toi, s'il te plait, de poser tes questions."~ */
  IF ~~ THEN REPLY #63277 /* ~"Très bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63278 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63279 /* ~"Maudith est une ville de menteurs, d'escrocs et de traîtres. Tu ne peux y faire confiance qu'à toi-même… et même ça, j'y réfléchirais à deux fois. " Elle hausse les épaules. "Souviens-toi de cela et tu ne risqueras rien ici."~ */
  IF ~~ THEN REPLY #63280 /* ~"Des menteurs, des escrocs… En fais-tu partie ?"~ */ GOTO 10
  IF ~~ THEN REPLY #63281 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63282 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63283 /* ~Elle sourit. "Absolument…"~ */
  IF ~~ THEN REPLY #63284 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63285 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63286 /* ~Tout en réfléchissant, elle fronce les sourcils. "Non, rien au sujet d'un deva." Elle hausse les épaules. "Demande au bureau administratif, au centre de la ville."~ */
  IF ~~ THEN REPLY #63287 /* ~"Je le ferai. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63288 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63289 /* ~Tu vois une femme qui a l'air de s'ennuyer. Elle te regarde approcher et fronce les sourcils.~ */
  IF ~~ THEN REPLY #63290 /* ~"Bonjour."~ */ GOTO 13
  IF ~~ THEN REPLY #63291 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63292 /* ~Elle te regarde avec méfiance. "Euh… Bonjour. Quoi que tu veuilles je ne l'ai pas. Fiche-moi la paix." Elle te jette un coup d'œil.~ */
  IF ~~ THEN REPLY #63293 /* ~"J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #63294 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63295 /* ~"Hmm… Peut-être bien, mais  je n'ai toujours pas envie que tu me déranges. Va-t'en." Elle se renfrogne.~ */
  IF ~~ THEN REPLY #63296 /* ~"Ça ne te prendra qu'un instant."~ */ GOTO 15
  IF ~~ THEN REPLY #63297 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63298 /* ~Elle se renfrogne et se met les mains sur les hanches. "D'accord, apparemment, tu ne comprends pas quand je dis *non* poliment… Dois-je te le faire comprendre d'une manière un peu moins courtoise ?"~ */
  IF ~~ THEN REPLY #63299 /* ~"Oui, faites donc."~ */ GOTO 16
  IF ~~ THEN REPLY #63300 /* ~"Non, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63301 /* ~Elle sourit. "Très bien… Va coller tes fesses sur un pieu jusqu'à ce qu'elles touchent le sol et fais la toupie !" Elle te fait un geste obscène. "Va caguer, foutu bâtard !"~ */
  IF ~~ THEN REPLY #63302 /* ~"Très bien, au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63303 /* ~Tu vois une femme qui a l'air de s'ennuyer. Elle te regarde approcher et fronce les sourcils. "J'en ai marre de toi, fous le camp…" Elle se détourne et t'ignore.~ */
  IF ~~ THEN REPLY #63304 /* ~Pars.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #63305 /* ~Ces personnes ne semblent pas du tout apprécier d'être en prison. Quoi que tu tentes, tu ne réussis à obtenir aucune réponse d'elles..~ */
  IF ~~ THEN REPLY #63306 /* ~Pars.~ */ EXIT
END
