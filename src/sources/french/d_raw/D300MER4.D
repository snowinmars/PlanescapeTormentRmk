// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17409 /* ~Cette jeune femme charmante sourit et fait signe à tous les passants en prônant les vertus de sa marchandise. "Assiettes ! Cruches ! Tasses ! Chopes ! Buvez dans les gobelets des plus grands seigneurs !" En te voyant, elle te fait signe comme si elle te connaissait.~ */
  IF ~~ THEN REPLY #17433 /* ~"Je peux voir ce que tu as à vendre ?"~ */ GOTO 2
  IF ~~ THEN REPLY #17434 /* ~"J'ai des questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #17435 /* ~Fais semblant de ne pas la voir, pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17410 /* ~La femme sourit chaleureusement à ton approche. "Rebonjour, monsieur. Qu'aimerais-tu acheter aujourd'hui, hein ?"~ */
  IF ~~ THEN REPLY #17436 /* ~"Qu'est-ce que tu as à vendre ?"~ */ GOTO 2
  IF ~~ THEN REPLY #17437 /* ~"Rien, mais j'ai des questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #17438 /* ~"Rien. Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17412 /* ~"Je vends des assiettes, des tasses, des cruches, des chopes, de la coutellerie et autre. Que de la qualité, monsieur, de la meilleure." Elle recule et soulève le couvercle de la caisse qui se trouve sur la charrette derrière elle. "Jette un œil… n'hésite pas à poser des questions."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22233 /* ~"Il me faut quelque chose pour y mettre de l'encre… as-tu une chope ou un gobelet à vendre ?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17439 /* ~Approche-toi, examine le contenu de la caisse.~ */ GOTO 3
  IF ~~ THEN REPLY #17440 /* ~"Pas tout de suite. J'ai des questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #17441 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 10.0
  SAY #17414 /* ~Tu jettes un regard dans la caisse ; c'est plein… d'assiettes, de tasses, de cruches, de chopes, de coutellerie et autre. La qualité n'est pas homogène mais certaines pièces sont très belles. Tandis que tu regardes, elle se presse contre toi : "Alors, quelque chose te plaît ? Mmm ?" Sa longue chevelure ondoyante frôle ton épaule, déposant de douces effluves de vanille.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22234 /* ~"Il me faut quelque chose pour y mettre de l'encre… as-tu une chope ou un gobelet à vendre ?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17442 /* ~"Ça vient d'où, tout ça ?"~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17444 /* ~"Non, je n'ai besoin de rien. Mais j'ai des questions…"~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17445 /* ~"Non, je n'ai besoin de rien de tout cela. Au revoir."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17446 /* ~"Non, je n'ai besoin de rien. Mais j'ai des questions…"~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17448 /* ~"Non, je n'ai besoin de rien de tout cela. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17415 /* ~Elle a un sourire malicieux. "Mes amants sont tous des voleurs - ces objets ont été chapardés dans les maisons des nobles de Sigil." À ta réaction, elle rit doucement. "C'est une plaisanterie ! Mon père et mes frères sont des étameurs ; ils récupèrent ces objets dont se débarrassent les nobles et leur donnent une nouvelle vie."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22235 /* ~"Il me faut quelque chose pour y mettre de l'encre… as-tu une chope ou un gobelet à vendre ?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17449 /* ~"Je vois. J'ai des questions…"~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17450 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17451 /* ~"Je vois. J'ai des questions…"~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17453 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 3.3 4.1 4.2
  SAY #17416 /* ~"Oh, attends !" Elle pose la main sur ton avant-bras, son toucher est aussi léger qu'une plume. "Es-tu *sûr* de n'avoir besoin de rien ? Quelque chose pour ta maison, ou un cadeau…" Elle se mord la lèvre timidement, en relevant légèrement la tête.~ */
  IF ~~ THEN REPLY #17454 /* ~"Et bien… Je vois une belle assiette, là…"~ */ GOTO 7
  IF ~~ THEN REPLY #17455 /* ~"Euh… Non, je n'ai besoin de rien. Mes questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #17456 /* ~"Excuse-moi… Je n'ai besoin de rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.4 3.5 4.3 4.4
  SAY #17417 /* ~"Monsieur, attends !" Elle pose la main sur ton avant-bras, son toucher est aussi léger qu'une plume. "Es-tu *sûr* de n'avoir besoin de rien ? Quelque chose pour ta maison, ou un cadeau…"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 104
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17418 /* ~"Laquelle, … celle-là, là ?"~ */
  IF ~~ THEN REPLY #17459 /* ~"Non, euh, celle-là - Attends. C'est ridicule, je n'ai pas besoin d'assiettes. J'ai des questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #17460 /* ~"Écoute, je suis désolé. Je n'ai vraiment pas besoin d'assiettes. Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #17419 /* ~Elle a l'air si triste que tu es presque pris de remords. Lentement, elle referme le couvercle de la caisse. "Désolé, monsieur, je n'ai pas le temps de répondre à des questions. Je dois vendre tout ce que je peux avant la fin de la journée car ma famille est nombreuse et affamée."~ */
  IF ~~ THEN REPLY #17461 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 10.1
  SAY #17420 /* ~Elle a l'air si blessé que tu es presque pris de remords. Lentement, elle referme le couvercle de la caisse. "Adieu, monsieur. Si tu as besoin de quelque chose, reviens. Tu ne trouvera nulle part de si belles pièces à ces prix." Elle agite la main tristement.~ */
  IF ~~ THEN REPLY #17462 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 1.1 2.2
  SAY #17421 /* ~"Désolé, monsieur, je n'ai pas le temps de répondre à des questions. Je dois vendre tout ce que je peux avant ce soir car ma famille est nombreuse et affamée." Elle maintient le couvercle ouvert dans son dos. "Es-tu *sûr* de ne pas vouloir voir ce que j'ai à offrir ? Hein ?"~ */
  IF ~~ THEN REPLY #17463 /* ~"Très bien. Je vais jeter un œil."~ */ GOTO 3
  IF ~~ THEN REPLY #17464 /* ~"Peut-être une autre fois. Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY #17422 /* ~La marchande retrousse son joli nez. "Hum ! Es-tu si jalouse que tu volerais une pauvre marchande de sa vente ? Ce bon monsieur est un client, aplanie, et pas un morceau de viande à posséder ou à se disputer." Ceci dit, elle te fait un signe de tête.~ */
  IF ~~ THEN REPLY #17465 /* ~Attends la suite…~ */ EXTERN ~DANNAH~ 105
END

IF ~~ THEN BEGIN 12 // from: 2.0 3.0 4.0
  SAY #22230 /* ~Elle acquiesce. "Oh, oui… de nombreuses sortes. Leur prix peut aller de quelques piécettes à plusieurs centaines…"~ */
  IF ~~ THEN REPLY #22236 /* ~"En fait, je cherche ce que tu as de moins cher."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22231 /* ~Elle lève les sourcils. Elle fouille dans un cageot à ses côtés, puis te lance une chope défoncée. Elle est couverte de bosses et sa poignée semble être sur le point de se détacher.~ */
  IF ~~ THEN REPLY #22237 /* ~"Euh… on dirait que celle-ci a été utilisée sur le crâne de quelqu'un."~ */ DO ~GiveItemCreate("Tankard",Protagonist,1,0,0)
~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22232 /* ~Elle sourit légèrement.~ */
  IF ~~ THEN REPLY #22238 /* ~"Ça ira. Merci et au revoir."~ */ JOURNAL #21909 /* ~J'ai acheté une chope cabossée chez l'un des marchands. Je suis prêt à l'apporter à Meir'am pour la lui montrer.~ */ EXIT
END
