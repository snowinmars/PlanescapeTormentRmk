// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17155 /* ~Ce type à l'aspect miteux a vite vu que tu le regardais. "Eh, basha, viens ici ! Viens voir c'que j'ai en réserve !" Il cligne de l'œil et te fait signe.~ */
  IF ~~ THEN REPLY #17158 /* ~"Qu'est-ce que tu me proposes ?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17159 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17160 /* ~"Je ne faisais que passer. Au revoir."~ */ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17156 /* ~Ses petits yeux percés en vrille luisent comme de minuscules joyaux noirs lorsqu'il te regarde. "Eh, t'as pas eu ton compte ? Viens ici voir ce que je te réserve cette fois !"~ */
  IF ~~ THEN REPLY #17192 /* ~"Qu'est-ce que tu me proposes ?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17203 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17204 /* ~"Je ne faisais que passer. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17157 /* ~L'homme t'interrompt avant que tu aies terminé ta phrase. "Tu croiras pas ce que j'ai pour toi aujourd'hui ! T'es un basha rusé pour être venu me voir, je ne vais pas te tromper comme ces maudits estampeurs." Il fait un geste vers l'endroit où se trouvent les autres marchands.~ */
  IF ~~ THEN REPLY #17208 /* ~"Très bien, qu'est-ce que tu me proposes ?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17209 /* ~"En fait, j'ai des questions…~ */ GOTO 3
  IF ~~ THEN REPLY #17211 /* ~"Je m'en vais. Au revoir."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #17168 /* ~Il acquiesce mais c'est clair qu'il n'écoute pas. "Oui'sieur, c'est du bon que j'ai là ! Jette un coup d'œil ! Et ces prix, qu'est-ce qu't'en dis ? Ce serait pratiquement du *vol* de ta part, ouais !"~ */
  IF ~~ THEN REPLY #17212 /* ~"Très bien, qu'est-ce que tu me proposes ?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17214 /* ~"Écoute-moi : J'AI - DES - QUESTIONS."~ */ GOTO 4
  IF ~~ THEN REPLY #17219 /* ~Retourne-toi et pars.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17169 /* ~"C'est sûr ! Comme, 'comment il fait pour offrir des affaires aussi dingues ?' Ou, qui aurait un assortiment aussi épatant de camelote ?' Ben t'en fais pas, basha ! Tout ce qu'il faut qu'tu saches c'est qu'j'ai un peu d'tout ! Sauf ces truc, les Lim-Lim… mais qui en aurait besoin, hein ? Ah ! Ha ha ha !"~ */
  IF ~~ THEN REPLY #17224 /* ~"Bien, bien… Qu'est-ce que tu me proposes ?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17225 /* ~Retourne-toi et pars.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 7.1
  SAY #17175 /* ~Il te rappelle : "Attends, basha, où tu vas ? T'veux pas voir ces bonnes affaires ? Reviens ici ! T'sais pas ce que tu manques, ça non !"~ */
  IF ~~ THEN REPLY #17226 /* ~"Très bien. Qu'est-ce que tu me proposes ?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17227 /* ~Ne t'arrête pas.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2 1.2
  SAY #17473 /* ~L'homme t'interrompt avant que tu aies terminé ta phrase. "Tu croiras pas ce que j'ai pour toi aujourd'hui ! T'es un basha rusé pour être venu me voir, je ne vais pas te tromper comme ces maudits estampeurs." Il se dirige vers l'endroit où se trouvent les autres marchands.~ */
  IF ~~ THEN REPLY #17475 /* ~"Très bien, qu'est-ce que tu me proposes ?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17476 /* ~"Je m'en vais. Au revoir."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.2 6.1
  SAY #17474 /* ~Il acquiesce mais c'est clair qu'il n'écoute pas. "Oui'sieur, c'est du bon que j'ai là ! Jette un coup d'œil ! Et ces prix, qu'est-ce qu't'en dis ? Ce serait pratiquement du *vol* de ta part, ouais !"~ */
  IF ~~ THEN REPLY #17477 /* ~"Très bien, qu'est-ce que tu me proposes ?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17478 /* ~Retourne-toi et pars.~ */ GOTO 5
END
