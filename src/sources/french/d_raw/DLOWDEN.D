// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOWDEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOWDEN~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Lowden","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2883 /* ~Le cadavre mutilé de Lowden tremble à ton approche. "Qu'est-ce que tu veux, hein ?"~ */
  IF ~~ THEN REPLY #2884 /* ~"Juste les réponses à quelques questions, Lowden."~ */ GOTO 1
  IF ~~ THEN REPLY #20821 /* ~"Rien. Laisse tomber"~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.1 4.1 5.0 6.0 7.0
  SAY #20822 /* ~"P'têt que j'parlerai… P'têt que non… Pose tes questions…"~ */
  IF ~  Global("Know_Lowden","GLOBAL",0)
~ THEN REPLY #20823 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Lowden","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20824 /* ~"Parle-moi encore de toi."~ */ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20825 /* ~"Qu'est-ce qui est arrivé à Gris ?"~ */ GOTO 4
  IF ~~ THEN REPLY #20826 /* ~"Comment est-ce que tu es mort ?"~ */ GOTO 3
  IF ~~ THEN REPLY #20827 /* ~"Parle-moi des catacombes."~ */ GOTO 6
  IF ~~ THEN REPLY #20828 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20829 /* ~"Lowden, hein ? Burt et moi, et quelques fois Gris, c'était qu'un cagueur autoritaire, et il était avec nous la dernière fois - on était les rois des catacombes. Sais pas où est Burt. Sans doute mort."~ */
  IF ~~ THEN REPLY #20830 /* ~"Qu'est-ce qui t'est arrivé ?"~ */ GOTO 3
  IF ~~ THEN REPLY #20831 /* ~"Qu'est-ce qui est arrivé à Gris ?"~ */ GOTO 4
  IF ~~ THEN REPLY #20832 /* ~"Dommage. J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20833 /* ~"Sans doute. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0
  SAY #20834 /* ~"J'ai pris la mauvaise direction quand on s'enfuyait de là où on avait abandonné Gris, détalé jusqu'ici et avant de pouvoir me rendre compte de mon erreur, m'suis fait découper en petits morceaux. Mes morceaux ont été jetés au feu et maintenant… hé… même les Hommes-Poussière paieraient pas pour ça." Il laisse échapper un gloussement sentant l'eau croupie.~ */
  IF ~~ THEN REPLY #20835 /* ~"Qu'est-ce qui est arrivé à Gris ?"~ */ GOTO 4
  IF ~~ THEN REPLY #20836 /* ~"Mince alors. J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20837 /* ~"Très drôle, en effet. Au revoir"~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #20838 /* ~"Hé. Une histoire en soi. Presque entièrement mon idée, et ça marchait bien au début - Burt n'avait pas idée de ce que je faisais. J'ai fouillé autour, trouvé où une goule avait fait son terrier, et pensé qu'on pourrait amener l'vieux Gris là-bas. Mais cette goule a fait encore plus de goules, et elles ont failli nous avoir. Poussé Gris à l'intérieur et détalé comme si la Dame elle-même était à nos trousses. Parie que Gris est mort."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #20839 /* ~"Oui."~ */ GOTO 5
  IF ~~ THEN REPLY #20840 /* ~"Sans doute. J'ai d'autres questions à te poser."~ */ GOTO 1
  IF ~~ THEN REPLY #20841 /* ~"On dirait que tu as fait ton boulot comme il fallait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20842 /* ~"J'dirais que c'est dommage, mais je le pense pas. Le bonhomme avait le cœur d'un ver et l'âme d'un serpent et on l'appelait pas vautour pour rien. J'crois que si je suis mort, j'suis content qu'il le soit aussi."~ */
  IF ~~ THEN REPLY #20843 /* ~"C'est bien. J'ai d'autres questions à te poser…"~ */ GOTO 1
  IF ~~ THEN REPLY #20844 /* ~"C'est bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #20845 /* ~"Les pierres pleureuses, qu'on les appelle à cause de l'eau qui tombe du plafond et des visages qui pleurent sur les murs. Plein de cryptes là-bas, et plein de cryptes qu'on a pillées. D'autant plus dommage que ça nous ait attiré des ennuis, mais fallait que ça arrive. J'connais cet endroit comme ma poche, mais… tout devient noir autour de moi maintenant…"~ */
  IF ~~ THEN REPLY #20846 /* ~"Réponds encore à quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20847 /* ~"Reste dans le noir, alors. Au revoir."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #20848 /* ~Ce corps a été horriblement mutilé. Il semble qu'il ait été brûlé, poignardé, découpé, matraqué et passé à travers une grille. Il est en deux morceaux, baignant dans une mare de vieux sang séché. La voix qui en émerge est toutefois presque joviale, avec une nuance de jubilation. "Oh, bige, qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #20849 /* ~"Les réponses à certaines questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20850 /* ~"Rien."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #20851 /* ~Ce corps a été horriblement mutilé. Il semble qu'il ait été brûlé, poignardé, découpé, matraqué et passé à travers une grille. Il est en deux morceaux, baignant dans une mare de vieux sang séché.~ */
  IF ~~ THEN REPLY #20852 /* ~"Rien ? Ah, bon."~ */ EXIT
END
