// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVORTEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVORTEN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42519 /* ~Tu vois un officier de l'Harmonium. À ton approche, il te lance un regard d'ennui.~ */
  IF ~~ THEN REPLY #44833 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #44834 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42520 /* ~Il te lance un regard d'ennui. "Bonjour, citoyen. Mesure Trois Vorten à ton service."~ */
  IF ~~ THEN REPLY #44838 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44839 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #44835 /* ~Il soupire. "Je ne voudrais pas être impoli, mais je suis en service et je n'ai pas le temps de répondre à des questions." Il marque une pause. "Si tu veux des renseignements, va voir Ebb Craquerotules."~ */
  IF ~~ THEN REPLY #44836 /* ~"Qui est Ebb Craquerotules ?"~ */ GOTO 3
  IF ~~ THEN REPLY #44837 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44840 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44841 /* ~"C'est un vieil ami à moi. Je crois qu'il se considère comme un rabatteur maintenant, alors il te donnera le ton de la chanson sur à peu près n'importe quoi."~ */
  IF ~~ THEN REPLY #44842 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44843 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #44844 /* ~Il réfléchit un moment. "Aux dernières nouvelles, il était souvent au Bar du Cadavre fumant. Ça se trouve quelque part dans la Ruche."~ */
  IF ~~ THEN REPLY #44845 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #44846 /* ~Tu vois Mesure Trois Vorten, l'officier de l'Harmonium. Il te fait signe de la tête. "Rebonjour."~ */
  IF ~~ THEN REPLY #44847 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #44848 /* ~"Peu importe, au revoir."~ */ EXIT
END
