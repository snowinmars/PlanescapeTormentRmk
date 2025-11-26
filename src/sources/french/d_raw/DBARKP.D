// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50470 /* ~L'homme souriant hoche joyeusement la tête en te voyant approcher. "Bienvenue dans mon café, mon bon monsieur. Qu'est-ce que je te sers ? Du vin, peut-être ?"~ */
  IF ~~ THEN REPLY #50866 /* ~"Je ne veux pas de vin, mais j'avais quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #50867 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50868 /* ~L'homme te lance un regard un peu désemparé. "Mes plus humbles excuses, mais je me fais un devoir de servir à boire et rien de plus. Si tu veux faire la conversation, adresse-toi à quelqu'un d'autre. Tu es sûr que tu ne veux rien boire ? Ou peut-être qu'un peu de pain et de fromage te feraient plaisir ?"~ */
  IF ~~ THEN REPLY #50869 /* ~"Non, je n'ai besoin de rien. Au revoir."~ */ EXIT
END
