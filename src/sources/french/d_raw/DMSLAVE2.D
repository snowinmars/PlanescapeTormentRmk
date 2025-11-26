// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37792 /* ~Tu vois un vieil homme un peu gros aux vêtements usés. Il semble inquiet et ne cesse de regarder autour de lui. Tu remarques qu'il respire fort et transpire beaucoup.~ */
  IF ~~ THEN REPLY #37804 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37805 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37793 /* ~Il sursaute à ton bonjour et te lance un regard inquiet. "Oui matois ?" Il se fait tout petit, comme s'il craignait que tu le frappes. "Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #37806 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37807 /* ~"Peu importe. Au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37794 /* ~"Des questions ?" Il commence à secouer la tête. "Tu… n'es pas ici pour inspecter la marchandise ?" La sueur perle sur son front.~ */
  IF ~~ THEN REPLY #37809 /* ~"Quelle marchandise ?"~ */ GOTO 3
  IF ~~ THEN REPLY #37810 /* ~"Je veux juste avoir les réponses à certaines questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #37812 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37795 /* ~Il te lance un regard effrayé. "Moi-même… Tu n'es pas ici pour acheter un serviteur ?" Sa respiration se fait de plus en plus difficile.~ */
  IF ~~ THEN REPLY #37813 /* ~"Oui."~ */ GOTO 4
  IF ~~ THEN REPLY #37815 /* ~"Non."~ */ GOTO 6
  IF ~~ THEN REPLY #37816 /* ~"Tu es à vendre ?"~ */ GOTO 8
  IF ~~ THEN REPLY #37817 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #37796 /* ~L'air inquiet, il te regarde avec défiance. Ses yeux se promènent sur tes cicatrices et il se met à transpirer abondamment. "Je… je suis certain de ne pas être le serviteur qu'il faut à un homme comme toi, matois." Il croise ton regard.~ */
  IF ~~ THEN REPLY #37818 /* ~"Ah bon, et pourquoi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37819 /* ~"Oui, je crois que tu as raison."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37797 /* ~Il avale sa salive et ses mains se mettent à trembler. "J'ai vécu une vie sédentaire, m'sieur. Toi, par contre, tu sembles être un homme… d'action. Je ne crois pas être capable de répondre à tes besoins…" Il a l'air très contrarié et respire plus difficilement.~ */
  IF ~~ THEN REPLY #37820 /* ~"Oui, je crois que tu as raison."~ */ GOTO 6
  IF ~~ THEN REPLY #37821 /* ~"Non, je pense que tu feras très bien l'affaire."~ */ DO ~Kill(Myself)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1 5.0 8.1
  SAY #37798 /* ~Il semble soulagé et te sourit. "Alors, au revoir, matois." Il te tourne le dos.~ */
  IF ~~ THEN REPLY #37822 /* ~"J'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #37823 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37800 /* ~Il te regarde un moment, puis ses mains se mettent à trembler violemment. Il ouvre la bouche pour dire quelque chose mais aucun son ne sort. Ses yeux s'agrandissent de surprise alors qu'il se tient la poitrine et s'effondre silencieusement sur le sol.~ */
  IF ~~ THEN REPLY #37824 /* ~Pars avant que quelqu'un le remarque.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #37801 /* ~Il hoche la tête. "Oui, matois. Les personnes ici présentes sont coupables de crimes mineurs. Notre châtiment est de purger une peine de servitude pendant un certain nombre d'années, selon le crime commis. Es-tu là pour acheter ?"~ */
  IF ~~ THEN REPLY #37825 /* ~"Oui."~ */ GOTO 4
  IF ~~ THEN REPLY #37826 /* ~"Non, pas du tout."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 6.0 10.0
  SAY #37802 /* ~Il secoue la tête et te lance un regard triste. "Je n'ai pas de réponses à te donner, matois. J'aimerais que tu me fiches la paix." Il te tourne le dos.~ */
  IF ~~ THEN REPLY #37827 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37803 /* ~Tu vois le même vieil homme un peu gros. Il a l'air inquiet et n'arrête pas de regarder autour de lui. Tu remarques qu'il respire fort et qu'il transpire beaucoup. Il t'adresse un pâle sourire. "Te revoilà, matois. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #37828 /* ~"J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #37829 /* ~"Peu importe. Au revoir."~ */ EXIT
END
