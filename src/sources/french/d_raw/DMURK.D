// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMURK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMURK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58784 /* ~Tu aperçois un marchand tout à fait ordinaire. Il sourit et hoche la tête en te voyant approcher.~ */
  IF ~~ THEN REPLY #58785 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58786 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58789 /* ~Il te salue brusquement. "À toi aussi. Je m'appelle Murk. Certaines marchandises t'intéressent ?"~ */
  IF ~~ THEN REPLY #58790 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58791 /* ~"Qu'est-ce que tu transportes ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58792 /* ~"Non, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58793 /* ~Il secoue la tête et fronce les sourcils. "Je ne vends pas des informations. Si tu as des questions, va les poser ailleurs."~ */
  IF ~~ THEN REPLY #58794 /* ~"D'accord, qu'est-ce que tu transportes ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58795 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.0
  SAY #58796 /* ~Ses yeux s'illuminent et il sourit d'un air rusé. "Et bien… il se trouve que j'ai une belle collection de gantelets et de haches. Il n'y a rien de mieux que de réduire quelque chose en charpie de ses mains, sinon peut-être le découper en petits morceaux."~ */
  IF ~~ THEN REPLY #58797 /* ~"Montre-moi tes marchandises."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58798 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #58799 /* ~Tu aperçois Murk, le marchand. Il te fait un signe de tête en te voyant approcher. "Rebonjour. Que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #58800 /* ~"Qu'est-ce que tu transportes ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58801 /* ~"Montre-moi tes marchandises."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58802 /* ~"Au revoir."~ */ EXIT
END
