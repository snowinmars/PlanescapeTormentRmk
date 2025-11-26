// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEXEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEXEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57394 /* ~Ce colosse paraît totalement indifférent à ce qui se passe alentour. Il bâille à ton approche, en curant ses ongles pleins de saleté ou de sang séché.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57395 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57396 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57397 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ GOTO 1
  IF ~~ THEN REPLY #57398 /* ~"Vous ne pouvez pas exécuter cet homme - ce n'est qu'un bouc émissaire. C'est *mal*. C'est ce genre de choses qui a causé le glissement de Maudith dans les Carcères… et c'est ce que nous devons arrêter pour remettre la ville sur l'Outreterre."~ */ GOTO 1
  IF ~~ THEN REPLY #57399 /* ~"Arrête. Je ne te laisserai pas exécuter cet homme."~ */ GOTO 2
  IF ~~ THEN REPLY #57400 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #57401 /* ~Il t'interrompt avant que tu aies vraiment commencé. "Parle au juge, matois. Parle au juge." Il recommence à examiner ses ongles sales.~ */
  IF ~~ THEN REPLY #57402 /* ~"Non, c'est à *toi* que je parle. Tu n'exécuteras pas cet homme."~ */ GOTO 2
  IF ~~ THEN REPLY #57403 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.0
  SAY #57404 /* ~Il lève un instant les yeux de ses ongles. "Si l'juge me dit d'tuer cet homme, j'le tuerai… si j'dois m'charger d'toi avant d'le faire, ça dépend que *d'toi*, matois.  Va parler au juge."~ */
  IF ~~ THEN REPLY #57405 /* ~Pars.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57406 /* ~Le bourreau, dont les mains sont maculées de sang frais, te jette un regard las. "Ça a déjà commencé, matois. Rien de c'que tu pourras dire ne fera de différence. Va t'en."~ */
  IF ~~ THEN REPLY #57407 /* ~Pars.~ */ EXIT
END
