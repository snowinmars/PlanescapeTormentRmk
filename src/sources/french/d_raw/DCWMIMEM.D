// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49756 /* ~Ce gentilhomme regarde avec attention la prestation de l'artiste et un sentiment de confusion se lit sur son visage.~ */
  IF ~~ THEN REPLY #49757 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #49758 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49759 /* ~L'homme se tourne vers toi, mais la prestation de l'artiste continue de retenir toute son attention. "Étrange, non ? Pauvre gars."~ */
  IF ~~ THEN REPLY #49760 /* ~"Qu'est-ce qui se passe ?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49761 /* ~"C'est pas grave. J'avais des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #49762 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49763 /* ~Il continue de regarder l'homme silencieux vêtu de noir, en secouant la tête pour te répondre. "Pas maintenant, s'il te plaît. Au revoir."~ */
  IF ~~ THEN REPLY #49764 /* ~"Attends… Dis-moi au moins ce qui se passe ici."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49765 /* ~"Juste quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #49766 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49767 /* ~"Vraiment, allez. Je suis sûr qu'il y a d'autres personnes à qui tu pourrais parler. Laisse-moi tranquille, s'il te plaît. Au revoir."~ */
  IF ~~ THEN REPLY #49768 /* ~"Attends… Dis-moi au moins ce qui se passe ici."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49769 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49770 /* ~"Eh bien, tu vois… cet homme est un artiste. Sa représentation se compose de divers mimes, avec des passants et des actes physiques, comme tirer sur une corde ou être enfermé dans une boîte invisible. Il s'est moqué de la démarche inhabituelle d'un mage et ce dernier semble lui avoir jeté une malédiction : il *est* pris au piège d'une boîte invisible et ne peut plus parler. Ironique, non ?"~ */
  IF ~~ THEN REPLY #49771 /* ~"Un peu, oui. J'avais quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #49772 /* ~"C'est étrange, c'est vrai. Au revoir."~ */ EXIT
END
