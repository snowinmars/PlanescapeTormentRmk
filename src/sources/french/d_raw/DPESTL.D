// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42050 /* ~Cet homme ressemble beaucoup à Pilon Dufour, mais sans la peau mouvante et sans mutations constantes. "Rebonjour. Heureuse rencontre. Je suis Pilon, que puis-je faire pour toi ?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42051 /* ~"Tu m'avais promis des potions curatives."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42052 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #42053 /* ~"Je voudrais acheter quelque chose…"~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42054 /* ~"En fait, je ne faisais que passer. Au revoir, Pilon."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #42055 /* ~"Oui, bien sûr ; pour ta récompense ? Voyons ça tout de suite… Je vais te les préparer gratuitement, bien sûr… mais il me faut certains ingrédients. Hmmm… un cœur d'oni, ou de l'hématite en poudre, ou un cheveu de deva, ou un fil de robe d'aasimon, ou le sang d'une créature en recomposition, comme un troll, ou encore…"~ */
  IF ~~ THEN REPLY #42056 /* ~"En fait, mes blessures guérissent *très* vite."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42057 /* ~Pilon hausse un sourcil. "Vraiment ? Eh bien, dans ce cas, ton sang devrait faire l'affaire. Bon… donne-m'en quelques gouttes, si tu veux bien."~ */
  IF ~~ THEN REPLY #42058 /* ~Donne-lui quelques gouttes de ton sang.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveItemCreate("ClotChrm",Protagonist,10,0,0)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42059 /* ~Après t'avoir prélevé quelques gouttes de sang et s'être rendu au fond de la réserve, Pilon revient avec ce qui ressemble à des gouttes de sang séché. "Placées sur la langue de quelqu'un, ces Charmes de caillot guériront les blessures existantes et préviendront toute nouvelle blessure pendant un certain temps."~ */
  IF ~~ THEN REPLY #42060 /* ~"Merci, Pilon. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #42061 /* ~"Merci beaucoup. Je voudrais acheter quelque chose, maintenant…"~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42062 /* ~"Au revoir, Pilon, et merci."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.0 6.1
  SAY #42063 /* ~"Mes plus humbles excuses, mais je ne parle que du magasin. D'ailleurs, je quitte rarement cet endroit, tu comprends ? Il vaudrait mieux que tu trouves quelqu'un d'autre à interroger."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42064 /* ~"Le vieil ingénieur de la Grande Fonderie m'a dit qu'il lui fallait un échantillon de mon sang et de ma peau pour faire fonctionner sa machine. Voilà pourquoi j'ai besoin de toi."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 5
  IF ~~ THEN REPLY #42065 /* ~"Bon, alors je voudrais acheter quelque chose…"~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42066 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42067 /* ~"Un échantillon ? Très bien." Sa main droite s'empare d'une lame de rasoir et la gauche d'une bouteille à large goulot. Il te prélève un petit morceau de peau sur l'avant-bras, puis le place dans la bouteille en y ajoutant quelques gouttes de ton sang. Il recouvre ensuite ta blessure de gaze et te tend la bouteille. "Il te faut autre chose ?"~ */
  IF ~~ THEN REPLY #42068 /* ~"Oui… Je voudrais acheter quelque chose."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42069 /* ~"Non, ce sera tout. Merci et au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #42070 /* ~Tu vois Pilon, l'alchimiste. "Rebonjour. Heureuse rencontre. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42071 /* ~"Tu m'avais promis des potions curatives."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42072 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #42073 /* ~"Je voudrais acheter quelque chose…"~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42074 /* ~"En fait, je ne faisais que passer. Au revoir, Pilon."~ */ EXIT
END
