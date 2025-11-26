// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERNET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERNET~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58937 /* ~Tu vois un dur trapu. Il a un visage couturé de cicatrices et creusé de rides, et sa voix évoque le crissement du gravier roulé par les vagues. "Qu'ess'tu veux, bige ?"~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66327 /* ~"Je suis venu te parler de Kyse, le gardien de la décharge."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66328 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #66329 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #66324 /* ~"Encore toi ?" fait-il en rotant.~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66330 /* ~"Je suis venu te parler de Kyse, le gardien de la décharge."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66331 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #66332 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #66325 /* ~"Aaah, le pauvre petit a entendu qu'on venait chercher l'argent ?" Il se gratte. "Va lui dire que, s'il le donne pas, c'est un homme mort. Allez, vas-y."~ */
  IF ~~ THEN REPLY #66333 /* ~"J'ai quelques questions pour commencer…"~ */ GOTO 3
  IF ~~ THEN REPLY #66334 /* ~"Bien. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #66326 /* ~"J'suis pas un cafteur, moi. Si tu veux des réponses à tes questions, pose-les à quelqu'un que ça intéresse. Moi, j'm'en tamponne. Et maintenant, fous-moi le camp avant que j'dise à mes gars de t'refaire le portrait."~ */
  IF ~  Global("Caretaker","GLOBAL",3)
~ THEN REPLY #66335 /* ~"Bien. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  GlobalLT("Caretaker","GLOBAL",3)
~ THEN REPLY #66336 /* ~"Bien. Au revoir."~ */ EXIT
END
