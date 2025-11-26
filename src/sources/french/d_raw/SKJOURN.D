// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKJOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~SKJOURN~

IF ~  Global("Maze_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #60402 /* ~On dirait une sorte de journal. Des feuilles de chair humaine séchée ont été placées sur un cadre en os et étrangement, il semble que les feuilles de peau se soient cicatrisées aux jointures, formant l'arête d'un livre artisanal. On dirait que les feuilles de peau extérieures servent de couverture aux feuilles de peau situées à l'intérieur du cadre en os.~ */
  IF ~~ THEN REPLY #60403 /* ~Examine l'extérieur.~ */ GOTO 1
  IF ~~ THEN REPLY #61187 /* ~Examine la peau.~ */ GOTO 2
  IF ~~ THEN REPLY #61188 /* ~Examine le cadre.~ */ GOTO 3
  IF ~~ THEN REPLY #61189 /* ~Ouvre le cadre en os. ~ */ GOTO 4
  IF ~~ THEN REPLY #61190 /* ~Laisse l'étrange journal.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 3.0
  SAY #61191 /* ~Plusieurs symboles ont été écrits au sang sur les feuilles de peau, mais tu ne parviens pas à les déchiffrer ; on dirait des écritures, mais elles semblent écrites à l'envers, de droite à gauche, sous un angle qui te fait mal aux yeux.~ */
  IF ~~ THEN REPLY #61192 /* ~Examine la peau.~ */ GOTO 2
  IF ~~ THEN REPLY #61193 /* ~Examine le cadre.~ */ GOTO 3
  IF ~~ THEN REPLY #61194 /* ~Ouvre le cadre en os. ~ */ GOTO 4
  IF ~~ THEN REPLY #61195 /* ~Laisse l'étrange journal.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.1
  SAY #61196 /* ~La peau semble aussi pâle que la tienne ; sa surface grise et balafrée te rappelle la peau d'un zombi et les pages ressemblent davantage à du cuir tanné qu'à de la peau.~ */
  IF ~~ THEN REPLY #61197 /* ~Examine l'extérieur.~ */ GOTO 1
  IF ~~ THEN REPLY #61198 /* ~Examine le cadre.~ */ GOTO 3
  IF ~~ THEN REPLY #61199 /* ~Ouvre le cadre en os. ~ */ GOTO 4
  IF ~~ THEN REPLY #61200 /* ~Laisse l'étrange journal.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #61201 /* ~Malgré l'aspect grossier de l'écriture, tu dois bien admettre que la conception du cadre en os est relativement complexe ; les os ont été sculptés pour s'imbriquer. On dirait que les os peuvent être décrochés les uns des autres de manière à pouvoir ouvrir et lire le livre.~ */
  IF ~~ THEN REPLY #61202 /* ~Examine l'extérieur.~ */ GOTO 1
  IF ~~ THEN REPLY #61203 /* ~Examine la peau.~ */ GOTO 2
  IF ~~ THEN REPLY #61204 /* ~Ouvre le cadre en os. ~ */ GOTO 4
  IF ~~ THEN REPLY #61205 /* ~Laisse l'étrange journal.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 2.2 3.2
  SAY #61206 /* ~Tu ouvres le cadre en os et il s'ensuit un *bruit* sec. Tu ouvres le livre et tu étudies les pages… Comme la couverture, elles sont remplies d'étranges symboles qui semblent dénués de sens.~ */
  IF ~~ THEN REPLY #61207 /* ~Essaie de déchiffrer les symboles.~ */ GOTO 5
  IF ~~ THEN REPLY #61208 /* ~Raccroche le cadre en os et laisse le journal.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 5.0
  SAY #61209 /* ~Les symboles ne semblent répondre à aucune logique - du moins tu n'en vois pas. Les angles et les images semblent totalement arbitraires, mais tu n'en es pas certain.~ */
  IF ~~ THEN REPLY #61210 /* ~Essaie encore de déchiffrer les symboles.~ */ GOTO 5
  IF ~~ THEN REPLY #61211 /* ~Raccroche le cadre en os et laisse le journal.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.1
  SAY #61212 /* ~Alors que tu refermes le cadre en os, une étrange pensée te traverse l'esprit - les pages intérieures ne sont pas *supposées* avoir de sens. Tu… et peu importe qui tu étais alors… as mis les symboles là pour tromper quiconque serait à la recherche du contenu réel, qui est caché quelque part dans le cadre du journal.~ */
  IF ~~ THEN REPLY #61213 /* ~Examine le cadre en os.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61214 /* ~Tu examines le côté du cadre et tu remarques qu'un des os est légèrement ébréché ; tu y passes la main et tu dévisses le haut de l'os pour y découvrir un espace vide. Cet espace contient un petit morceau de peau enroulé.~ */
  IF ~~ THEN REPLY #61215 /* ~Sors la peau et lis-la.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 12.0
  SAY #61216 /* ~Ce petit morceau de peau est couvert de symboles ; c'est comme si on n'avait cessé d'y écrire jusqu'à le rendre illisible. Tu parviens néanmoins à déchiffrer quelques mots et quelques symboles…~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61217 /* ~"PIEGéé PieGéé que la VOLONTÉ DE LA DAME soit, fuis son regard… Trop de MORTS, TROP de strangulations et de morts, trop de GORGES coupées… Il y a une ISSUE, je le sais et alors je donnerai de quoi rire à celle QUI PORTE LES LAMES…"~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61218 /* ~"… UNE des ARCHES ouvre Dehors, UNE d'elles, UNE seule, je ne peux pas continuer de les FRANCHIR l'une après l'autre, peut-être que je devrais en franchir une puis retourner vers le même portail…"~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61219 /* ~L'entrée se perd dans des griffonnages illisibles. Bizarrement, tu as l'impression qu'il s'agit de la dernière entrée… peut-être l'incarnation est-elle morte dans le dédale ou peut-être s'est-elle enfuie.~ */
  IF ~  Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61220 /* ~Remets les pages et range le journal.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #61223 /* ~J'ai trouvé l'un de mes journaux dans le dédale de la Dame. À l'intérieur se trouvait un lambeau de chair couvert de phrases sans queue ni tête. J'ignore qui j'étais lorsque je les ai rédigées, mais il me manquait manifestement une case.~ */ EXIT
  IF ~  !Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61221 /* ~Remets les pages et range le journal.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
~ EXIT
END

IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #61224 /* ~On dirait une sorte de journal. Des feuilles de chair humaine séchée ont été placées sur un cadre en os et étrangement, il semble que les feuilles de peau se soient cicatrisées aux jointures, formant l'arête d'un livre artisanal. On dirait que les feuilles de peau extérieures servent de couverture aux feuilles de peau situées à l'intérieur du cadre en os.~ */
  IF ~~ THEN REPLY #61225 /* ~Décroche le cadre en os et lis le morceau de peau qui est à l'intérieur…~ */ GOTO 8
  IF ~~ THEN REPLY #61226 /* ~Laisse l'étrange journal.~ */ EXIT
END
