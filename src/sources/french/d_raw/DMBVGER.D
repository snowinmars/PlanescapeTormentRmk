// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20067 /* ~L'homme en haillons fuit lorsque tu t'approches, la peur au ventre.~ */
  IF ~~ THEN REPLY #20068 /* ~"Peut-être la prochaine fois…"~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20069 /* ~L'homme décharné te regarde avec crainte puis comprend que tu ne lui veux pas de mal, et il se redresse. "Qu'est-ce que tu veux, bige ?"~ */
  IF ~~ THEN REPLY #20070 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #20071 /* ~"Que fais-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #20072 /* ~"De quoi tu as peur ?"~ */ GOTO 5
  IF ~~ THEN REPLY #20073 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20074 /* ~"C'est pas important, matois. J'ai glissé par les fentes y'a trop longtemps - ou alors c'était mon père. De toute façon, je n'suis qu'un d'plus qui essaie de gagner sa vie comme il peut."~ */
  IF ~~ THEN REPLY #20075 /* ~"Très bien. J'ai d'autres questions à te poser."~ */ GOTO 3
  IF ~~ THEN REPLY #20076 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20077 /* ~"Fais vite, matois. J'ai des bouches à nourrir."~ */
  IF ~~ THEN REPLY #20078 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #20079 /* ~"Que fais-tu ?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20080 /* ~"De quoi tu as peur ?"~ */ GOTO 5
  IF ~~ THEN REPLY #20081 /* ~"Bon, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20082 /* ~"J'essaie de vivre. Qu'est-ce que tu crois ? On n'arrête pas de me poser des questions et ça m'empêche de travailler. T'as fini maintenant ?"~ */
  IF ~~ THEN REPLY #20083 /* ~"Non. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #20084 /* ~"Pour l'instant."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20085 /* ~"Tu veux dire mis à part les dabus qui nous emmurent constamment dans cet endroit, ou bien les Têtes-de-Bois qui nous 'nettoient', ou bien les morts qui sortent des catacombes du dessous, ou encore les rats-crâne qui essaient de nous éliminer, ou bien les couteaux menaçants de nos semblables, ou bien la famine ? L'ordinaire mis à part, ce sont sûrement ces créatures qui ont eu raison de Pharod."~ */
  IF ~~ THEN REPLY #20086 /* ~"Des créatures ? Quelles créatures ?"~ */ GOTO 6
  IF ~~ THEN REPLY #20087 /* ~"Pharod est mort ?"~ */ GOTO 6
  IF ~~ THEN REPLY #20088 /* ~"J'ai d'autres questions, alors…"~ */ GOTO 3
  IF ~~ THEN REPLY #20089 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20090 /* ~"Des créatures sorties tout droit des entrailles de Baator… des choses cauchemardesques au possible, faites d'ombre pure. Elles l'ont pris et l'ont déchiqueté. Il n'en restait plus rien. Nous avons enterré ce que nous avons pu."~ */
  IF ~~ THEN REPLY #20091 /* ~"Très bien. Alors, parle-moi d'autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #20092 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20093 /* ~Il tousse bruyamment dans sa main. "Qu'est-ce que tu veux cette fois ?"~ */
  IF ~~ THEN REPLY #20094 /* ~"Je voulais quelques réponses."~ */ GOTO 3
  IF ~~ THEN REPLY #20095 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20096 /* ~Tu aperçois un homme décharné, vêtu de haillons. Sa peau est jaunâtre, et une odeur de fumée et de détritus émane de lui. Il te regarde de biais. "Qu'est-ce que tu m'veux, matois ?"~ */
  IF ~~ THEN REPLY #20097 /* ~"Réponds juste à quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #20098 /* ~"Rien. Au revoir."~ */ EXIT
END
