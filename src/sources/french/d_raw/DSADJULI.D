// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSADJULI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSADJULI~

IF ~  Global("SadJuli","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2982 /* ~Cette jeune femme aux cheveux sombres regarde dans le vide avec indifférence, en soupirant pitoyablement et en touchant occasionnellement les coutures de sa robe de velours vert. Il est difficile de savoir si elle est déprimée ou si elle s'ennuie, tout simplement.~ */
  IF ~~ THEN REPLY #2984 /* ~"Bonjour…"~ */ DO ~SetGlobal("SadJuli","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2983 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40226 /* ~Elle te jette un très rapide coup d'œil avant de regarder de nouveau dans le vide. "Bonjour, oui… je m'appelle Juliette. Qu'est-ce que je… oh, et puis, peu importe. Laisse-moi tranquille, je t'en prie." Elle soupire d'exaspération.~ */
  IF ~~ THEN REPLY #40280 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 2
  IF ~~ THEN REPLY #40281 /* ~"J'avais d'abord quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40282 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 35.0
  SAY #40227 /* ~"Oh, rien du tout. Juste que je passe mes journées à contempler la médiocrité, à voir si je peux trouver quelque chose pour effacer la terrible monotonie de son passage."~ */
  IF ~~ THEN REPLY #40283 /* ~"Ta vie est si ennuyeuse que ça ?"~ */ GOTO 3
  IF ~~ THEN REPLY #40284 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40285 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 26.0
  SAY #40228 /* ~"Hélas, oui." Elle soupire en fermant les yeux et se masse les tempes. "Terriblement assommante !"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40286 /* ~"Je pourrais peut-être la rendre moins ennuyeuse."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40287 /* ~"Je suis sûr que je pourrais mettre un peu de piment dans ta vie…"~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #40288 /* ~"Je suis sûr que je pourrais mettre un peu de piment dans ta vie…"~ */ GOTO 5
  IF ~~ THEN REPLY #40289 /* ~"Je vois. J'avais des questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40290 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #40229 /* ~"Non, non… mais c'est très gentil de ta part. J'ai déjà un homme, monsieur, et je l'aime. C'est juste que je voudrais…" Elle se tapote le menton. "… autre chose qu'une simple liaison."~ */
  IF ~~ THEN REPLY #66195 /* ~"La relation manque de quelque chose, alors ?"~ */ GOTO 7
  IF ~~ THEN REPLY #66196 /* ~"Il y a un problème dans votre relation ?"~ */ GOTO 8
  IF ~~ THEN REPLY #66197 /* ~"Je vois. J'ai des questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #66198 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #40230 /* ~Elle fronce les sourcils et lève les yeux au ciel. "Douteux, au mieux. J'ai déjà un homme, monsieur, et je l'aime. C'est juste que je voudrais…" Elle se tapote le menton. "… autre chose qu'une simple liaison."~ */
  IF ~~ THEN REPLY #66199 /* ~"La relation manque de quelque chose, alors ?"~ */ GOTO 7
  IF ~~ THEN REPLY #66200 /* ~"Il y a un problème dans votre relation ?"~ */ GOTO 8
  IF ~~ THEN REPLY #66201 /* ~"Je vois. J'ai des questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #66202 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #40231 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #40232 /* ~"Tout ce qu'il y manque, c'est l'excitation. Nos familles s'apprécient mutuellement et apprécient de nous savoir liés, et nos amis tiennent notre union pour bénie par les Puissances. C'est parfait, mais les choses se passent un peu…" Elle grimace. "… un peu *trop* bien. Ce n'est pas normal, pour une cour nuptiale."~ */
  IF ~~ THEN REPLY #66747 /* ~"Je ne sais pas…"~ */ GOTO 10
  IF ~~ THEN REPLY #66748 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #66749 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1
  SAY #40233 /* ~"Oui, le problème…" Elle soupire. "… c'est justement qu'il n'y a en pas ! Nos familles s'apprécient mutuellement et apprécient de nous savoir liés, et nos amis tiennent notre union pour bénie par les Puissances. C'est parfait, mais les choses se passent un peu…" Elle grimace. "… un peu *trop* bien. Ce n'est pas normal, pour une cour nuptiale."~ */
  IF ~~ THEN REPLY #66750 /* ~"Je ne sais pas…"~ */ GOTO 10
  IF ~~ THEN REPLY #66751 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #66752 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #40234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0
  SAY #40235 /* ~"Vraiment ? Tu as déjà eu une relation comme ça ?" Elle te jette un rapide coup d'œil. "On dirait que ta vie est parsemée d'embûches, à en juger par la pâleur de ton teint."~ */
  IF ~~ THEN REPLY #66203 /* ~"C'est une chose dont je n'aime pas parler…"~ */ GOTO 11
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #40298 /* ~"Je ne me souviens d'aucune aventure que j'aurais pu avoir."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #40299 /* ~"Je ne me souviens d'aucune aventure que j'aurais pu avoir. D'après les bribes de souvenirs que m'ont laissé celles que j'ai rencontrées, je crois que j'ai eu quelques problèmes."~ */ GOTO 11
  IF ~~ THEN REPLY #40300 /* ~"Je vois. J'avais des questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40301 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #40236 /* ~"C'est juste que toutes mes amies ont des relations tellement intéressantes… les unes pleines d'agitations, les autres avec des querelles de familles, à se poignarder dans le dos les uns les autres, à s'empoisonner, des frères fous et des pères furieux avec de longues épées. J'ai un amant dont la famille m'adore et que le monde adore." Elle soupire de nouveau. "C'est une grande source d'irritation. Comme j'aimerais mettre du piment dans tout ça…"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 427
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40302 /* ~"Ça ne me paraît pas très sage. Tu ferais mieux de profiter de ce que tu as."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40303 /* ~"À quoi tu penses ?"~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40304 /* ~"Je vois. J'avais des questions…"~ */ GOTO 24
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40305 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #40237 /* ~"Mais j'ai envie de rencontrer des problèmes, de connaître les hauts et les bas de la vie de couple… avec lui, pas avec un autre." Elle soupire. "Ah, l'amour… il peut être aussi assommant qu'un gourdin, et tellement inutile pour une Sensate en herbe."~ */
  IF ~~ THEN REPLY #40307 /* ~"Tu as une idée quant à la façon de pimenter votre relation ?"~ */ GOTO 13
  IF ~~ THEN REPLY #40308 /* ~"Une Sensate en herbe ?"~ */ GOTO 25
  IF ~~ THEN REPLY #40309 /* ~"Je vois. J'ai des questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40310 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0
  SAY #40238 /* ~"Je ne sais pas exactement. Un brin de danger. Ou de jalousie. Quelque chose *d'intense*."~ */
  IF ~~ THEN REPLY #40311 /* ~"Et si tu avais une aventure ?"~ */ GOTO 14
  IF ~~ THEN REPLY #40312 /* ~"Pourquoi tu n'écrirais pas de fausses lettres d'amour, comme si tu avais une liaison ?"~ */ GOTO 19
  IF ~~ THEN REPLY #40313 /* ~"Je peux faire semblant d'être un prétendant jaloux, si tu veux."~ */ GOTO 21
  IF ~~ THEN REPLY #40314 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40315 /* ~"Bonne chance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40239 /* ~Elle se mordille la lèvre. "Je ne pourrais jamais avoir une *véritable* aventure, je l'aime trop ! Mais peut-être… que je pourrais en avoir une fausse ?" Elle te regarde des pieds à la tête d'un œil critique. "Tu as l'air de t'y connaître en comportements dangereux. Ça t'intéresserait de devenir mon soupirant ?"~ */
  IF ~~ THEN REPLY #40316 /* ~"Oui, d'accord."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40317 /* ~"Qu'est-ce que tu m'offres ?"~ */ GOTO 15
  IF ~~ THEN REPLY #40318 /* ~"Non… mais j'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40319 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 22.1
  SAY #40240 /* ~Juliette se renfrogne. "Ma compagnie et ma gratitude suffiront."~ */
  IF ~~ THEN REPLY #40320 /* ~"D'accord ; je le ferai."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40321 /* ~"Non, elles ne suffiront pas."~ */ GOTO 16
  IF ~~ THEN REPLY #40322 /* ~"Laisse tomber. J'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40323 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #40241 /* ~Elle se renfrogne davantage suite à cette complication. "À quoi pensais-tu… ça n'implique *pas* de me toucher !"~ */
  IF ~~ THEN REPLY #40324 /* ~"Ne te flatte pas, tu risquerais de me mettre en colère. Je veux des informations."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #40325 /* ~"Je veux des informations."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40242 /* ~Juliette réfléchit, puis acquiesce. "D'accord. Je remplirai ma part du marché une fois que *tu* auras rempli la tienne. Compris ?"~ */
  IF ~~ THEN REPLY #40326 /* ~"D'accord."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40327 /* ~"Non ; je ne marche pas."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #40243 /* ~"Alors, nous voilà dans une impasse. Tu es sûr de ne pas vouloir y réfléchir ?"~ */
  IF ~~ THEN REPLY #40328 /* ~"D'accord… je le ferai."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40329 /* ~"Non, désolé. J'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40330 /* ~"Non. Au revoir, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #40244 /* ~Le regard de Juliette s'illumine. "Excellente idée ! Absolument excellente !" Elle se renfrogne soudain. "Mais il connaît mon écriture… tu voudras bien écrire quelque chose à ma place ?"~ */
  IF ~~ THEN REPLY #40331 /* ~"C'est pas mon truc. Mais je peux t'en trouver."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #40332 /* ~"En fait, laisse tomber. J'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40333 /* ~"Je ne préfère pas. Au revoir, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40245 /* ~"Oh, c'est vrai ? Excellent ! Quand tu en auras, donne-les, je te prie, à l'amour de ma vie, mon cher Montague. Tu le trouveras à la Salle des Fêtes. Quant aux lettres… essaie Penn Loimoqueuse. Il tient une imprimerie dans le Bas Quartier. Je te remercie !"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66206 /* ~"De qui… Montague ? Nous avons un problème : il refuse de me parler."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Juliette m'a demandé de porter de "fausses" lettres d'amour à son amant, Montague, mais je lui ai expliqué que ce dernier m'en voulait et qu'il refusait de me parler.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66207 /* ~"De qui… Montague ? Nous avons un problème : il s'est fait tuer."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Juliette m'a demandé de porter de "fausses" lettres d'amour à son amant, Montague, mais je lui ai expliqué que ce dernier avait été tué.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40334 /* ~"Bien sûr. Au revoir."~ */ JOURNAL #39456 /* ~J'ai accepté de porter de 'fausses' lettres d'amour à un certain Montague pour sa maîtresse, Juliette. Le but est de lui faire croire que cette dernière a une aventure ; apparemment, Juliette trouve leur relation trop terne. Dès que j'aurai trouvé les lettres, je dois les apporter à la Salle des Fêtes, où je les remettrai à Montague. Juliette m'a suggéré d'aller voir Penn Loimoqueuse, que je devrais trouver dans son imprimerie du Bas Quartier.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #40246 /* ~Juliette te jette un coup d'œil, puis pouffe de rire. "Oh, j'en doute fran- hum. En y réfléchissant, cette idée n'est pas si mauvaise que je pensais. Tu as l'air suffisamment *dangereux*, c'est sûr." Elle te regarde dans les yeux, comme si elle évaluait un cheval. "Est-ce que tu es aussi rude et fruste que tu en as l'air ?"~ */
  IF ~~ THEN REPLY #40335 /* ~"Y a pas plus rude que moi, j'peux te l'assurer."~ */ GOTO 22
  IF ~~ THEN REPLY #40336 /* ~"Oui."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #40247 /* ~"Tu feras ça pour moi, alors ?"~ */
  IF ~~ THEN REPLY #40337 /* ~"Oui, je le ferai."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40338 /* ~"Et qu'est-ce que tu me proposes en échange ?"~ */ GOTO 15
  IF ~~ THEN REPLY #40339 /* ~"En fait… non. Mais j'ai quelques questions…"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 14.0 15.0 17.0 18.0 22.0
  SAY #40248 /* ~"Parfait ! Tu trouveras mon amour, Montague, à la Salle des Fêtes. Je te remercie !"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66210 /* ~"De qui… Montague ? Nous avons un problème : il refuse de me parler."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Juliette m'a demandé de me faire passer pour son soupirant afin de rendre Montague jaloux, mais je lui ai expliqué que ce dernier m'en voulait et qu'il refusait de me parler.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66211 /* ~"De qui… Montague ? Nous avons un problème : il s'est fait tuer."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Juliette m'a demandé de me faire passer pour son soupirant afin de rendre Montague jaloux, mais je lui ai expliqué que ce dernier avait été tué.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40341 /* ~"D'accord. Je vais aller lui parler… au revoir."~ */ JOURNAL #39455 /* ~J'ai accepté de me faire passer pour un amoureux jaloux de Juliette, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels. Je dois aller trouver son amant, Montague, à la Salle des Fêtes et exiger qu'il renonce à elle.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.1 2.1 3.3 4.2 5.2 7.1 8.1 10.3 11.3 12.2 13.3 14.2 15.2 18.1 19.1 22.2 26.1 27.1 28.0 29.1 30.0 31.0 32.0 33.1 34.0 35.1 38.0 39.1 39.2 40.0 40.1 42.0 42.1 43.1 43.2 46.0 47.0 48.0 49.0
  SAY #40249 /* ~Juliette lève les yeux au ciel. "Oh, vas-y, si c'est vraiment nécessaire."~ */
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40342 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40343 /* ~Tu peux me parler de cet endroit ?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40344 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ GOTO 25
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40345 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ GOTO 25
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40346 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 25
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40347 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40348 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 25
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40349 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 25
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40350 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 27
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40351 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 29
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #63596 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 49
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67848 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 49
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40352 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ DO ~SetGlobal("Know_Kim_Kes","AR0605",1)
~ JOURNAL #39457 /* ~Juliette m'a dit que Kimasxi Langue-de-Vipère, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels, n'était autre que la demi-sœur de Kesai-Serris, dont j'ai appris qu'elle était la fille de Ravel Puits-de-Rébus.~ */ GOTO 48
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40353 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ JOURNAL #66727 /* ~Une des prostituées m'a conseillé d'aller demander à Nenny si elle savait quoi que ce soit au sujet du vol du parfum personnel de Viviane. Apparemment, Nenny est connue pour passer son temps à fureter et à observer les autres.~ */ GOTO 30
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40354 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ JOURNAL #66728 /* ~Une des prostituées m'a conseillé d'aller demander à Nenny si elle savait quoi que ce soit au sujet du vol du Voile Pourpre de Marissa. Apparemment, Nenny est connue pour passer son temps à fureter et à observer les autres.~ */ GOTO 31
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40355 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ JOURNAL #66742 /* ~J'ai interrogé l'une des prostituées de la Maison de tolérance au sujet de Ravel, et elle m'a dit d'aller voir Yvonne. Celle-ci recueille apparemment les histoires, et il y a de fortes chances qu'elle en connaisse quelques-unes au sujet de Ravel.~ */ GOTO 32
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40356 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 33
  IF ~~ THEN REPLY #40357 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.1 24.0 24.1 24.2 24.3 24.4 24.5 24.6 24.7
  SAY #40250 /* ~Juliette pousse un long soupir mélancolique. Tu te rends compte qu'elle ne te regarde pas vraiment.~ */
  IF ~~ THEN REPLY #40358 /* ~"Juliette ? Tu m'as entendu ?"~ */ JOURNAL #66753 /* ~Juliette, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels, refuse de répondre à mes questions. La petite égoïste ne sait parler que de sa morne existence.~ */ GOTO 26
  IF ~~ THEN REPLY #40359 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #40251 /* ~"Hum ? Oh, je n'écoutais pas vraiment, désolée. Mais je suppose que tu n'es pas venu ici pour me poser toute une série de questions sur ma vie et mes assommantes activités… ?"~ */
  IF ~~ THEN REPLY #40360 /* ~"Ta vie est si ennuyeuse que ça ?"~ */ GOTO 3
  IF ~~ THEN REPLY #40361 /* ~"En fait, oui. J'avais des questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40362 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.8
  SAY #40252 /* ~"Je suis ici pour devenir Sensate. Maîtresse Grâce est notre professeur. Ici, toutes les prostituées sont ses élèves."~ */
  IF ~~ THEN REPLY #40363 /* ~"Un Sensat ?"~ */ GOTO 28
  IF ~~ THEN REPLY #40364 /* ~"J'avais une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40365 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #40253 /* ~Juliette fait un signe de tête. "C'est un membre de la Société des Sensations, faction consacrée aux sensations et aux expériences. Maîtresse Grâce sera plus à même que moi de répondre à tes questions sur les Sensats."~ */
  IF ~~ THEN REPLY #40366 /* ~"J'avais une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40367 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.9
  SAY #40254 /* ~Juliette sourit d'un air suffisant. "La Maison de tolérance… c'est l'école réservée aux Sensats en herbe. Maîtresse Grâce est notre professeur ; c'est aussi la personne la plus qualifiée pour répondre à ce genre de questions. Tu devrais peut-être plutôt lui parler."~ */
  IF ~~ THEN REPLY #40389 /* ~"Tu es une… Sensate en herbe ?"~ */ GOTO 28
  IF ~~ THEN REPLY #40390 /* ~"Pas tout de suite. J'ai une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40391 /* ~"Peut-être bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.13
  SAY #40255 /* ~Juliette secoue la tête d'un air triste. "La pauvre ! J'avoue qu'il m'est arrivé de me glisser en cachette dans sa chambre pour lui prendre une ou deux gouttes de parfum… mais que quelqu'un le lui avait volé ? C'est terrible ! En tout cas, tu peux demander à Nenny. Elle surveille tout le monde."~ */
  IF ~~ THEN REPLY #40392 /* ~"J'avais une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40393 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.14
  SAY #40256 /* ~"Oh, qui en voudrait ? Quant à moi, j'espère qu'on va consigner cette femme détestable et malpolie dans sa chambre jusqu'à mon départ ! Mais, pour ce qui est de ta question, non, je n'ai aucune idée de l'endroit où cet objet pourrait se trouver et je ne l'ai jamais vu. Demande à Nenny, on ne sait jamais - elle surveille tout le monde, ici."~ */
  IF ~~ THEN REPLY #40394 /* ~"J'avais une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40395 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.15
  SAY #40257 /* ~"Ravel Puits-de-quoi ? Qui ?" Juliette a l'air perplexe. "C'est un nom ? Dans ce cas, Yvonne en a peut-être entendu parler. Elle en connaît, des histoires, et devrait pouvoir te dire quelque chose sur cette 'Ravel', donc."~ */
  IF ~~ THEN REPLY #40396 /* ~"Peu importe. J'avais une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40397 /* ~"Laisse tomber, Juliette. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.16
  SAY #40258 /* ~"De quoi tu *parles* ?"~ */
  IF ~~ THEN REPLY #40398 /* ~"La dixième prostituée - c'est qui ?"~ */ GOTO 34
  IF ~~ THEN REPLY #40399 /* ~"Peu importe. J'avais une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40400 /* ~"Laisse tomber, Juliette. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #40259 /* ~"Je ne vois absolument pas de qui tu veux parler."~ */
  IF ~~ THEN REPLY #40401 /* ~"Alors j'ai une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40402 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",0)
Global("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 35 // from:
  SAY #40260 /* ~Tu vois la triste Juliette, toujours aussi pitoyable. Elle te remarque à peine, ne se tournant vers toi que très brièvement avant de regarder de nouveau dans le vide.~ */
  IF ~~ THEN REPLY #40403 /* ~"Qu'est-ce qui ne va pas, Juliette ?"~ */ GOTO 2
  IF ~~ THEN REPLY #40404 /* ~"J'avais quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40405 /* ~"Je ne faisais que passer, Juliette. Au revoir."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_1","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #40261 /* ~Juliette te regarde avec espoir. "Alors ? Tu as du nouveau ?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #40406 /* ~"Non, pas encore. Au revoir."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66215 /* ~"Nous avons un problème : il refuse de me parler."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Juliette m'a demandé de porter de "fausses" lettres d'amour à son amant, Montague, mais je lui ai expliqué que ce dernier m'en voulait et qu'il refusait de me parler.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66216 /* ~"Nous avons un problème : il s'est fait tuer."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Juliette m'a demandé de porter de "fausses" lettres d'amour à son amant, Montague, mais je lui ai expliqué que ce dernier avait été tué.~ */ GOTO 50
  IF ~  Global("Jul_Mission_1","GLOBAL",2)
~ THEN REPLY #40407 /* ~"Oui, en fait. Ça lui a brisé le cœur et il a décidé de te laisser à ton 'nouvel amour'."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~J'ai expliqué à Juliette ce qui s'était passé avec Montague, et elle a éclaté en sanglots.~ */ GOTO 37
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #40408 /* ~"Montague avait l'intention de te laisser à ton 'nouvel amour', alors je lui ai dit que c'était un stratagème. Je ne sais pas ce qu'il compte faire maintenant."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~J'ai expliqué à Juliette ce qui s'était passé avec Montague. Cela ne lui a pas fait plaisir, mais elle a tout de même accepté de répondre à mes questions.~ */ GOTO 39
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40409 /* ~"Montague a eu l'air indifférent… je me souviens qu'il a dit qu'il 's'ennuyait de toute façon'."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~J'ai expliqué à Juliette ce qui s'était passé avec Montague. Cela ne lui a pas fait plaisir, mais elle a tout de même accepté de répondre à mes questions.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40410 /* ~"Je lui ai donné les lettres, mais… je n'ai senti aucune réaction. Je te conseille de lui parler toi-même."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~J'ai expliqué à Juliette ce qui s'était passé avec Montague. Cela ne lui a pas fait plaisir, mais elle a tout de même accepté de répondre à mes questions.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40411 /* ~"Montague a eu l'air indifférent… je me souviens qu'il a dit que lui aussi avait une aventure de son côté."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~J'ai expliqué à Juliette ce qui s'était passé avec Montague. Cela ne lui a pas fait plaisir, mais elle a tout de même accepté de répondre à mes questions.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40412 /* ~"Je lui ai donné les lettres, mais… je n'ai senti aucune réaction. Je te conseille de lui parler toi-même."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~J'ai expliqué à Juliette ce qui s'était passé avec Montague. Cela ne lui a pas fait plaisir, mais elle a tout de même accepté de répondre à mes questions.~ */ GOTO 43
END

IF ~~ THEN BEGIN 37 // from: 36.3 45.0 50.0
  SAY #40262 /* ~Juliette a l'air choquée et se met à gémir et à pleurer lamentablement.~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40413 /* ~"Assez pleuré… je veux que tu répondes à mes questions, et tout de suite. On a fait un marché."~ */ GOTO 38
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #66151 /* ~"Je… j'ai quelques questions à te poser, Juliette…"~ */ GOTO 38
  IF ~~ THEN REPLY #40414 /* ~"C'est dommage que les choses finissent comme ça. Je reviendrai une autre fois, Juliette ; au revoir."~ */ EXIT
  IF ~~ THEN REPLY #40415 /* ~Pars discrètement.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #40263 /* ~Elle ravale ses pleurs, s'essuie les yeux et te regarde.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 39 // from: 36.4 44.4
  SAY #40264 /* ~"Tu lui as dit ? Mince ! Et maintenant, qu'est-ce que je dois faire ?"~ */
  IF ~~ THEN REPLY #40418 /* ~"Puisqu'il sait tout, autant que tu parles ouvertement de ce que tu ressens à propos de votre relation."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40419 /* ~"C'est à toi de décider ; j'ai rempli ma part du marché. Maintenant, je veux que tu répondes à mes questions…"~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40420 /* ~"Je ne sais pas, mais j'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40421 /* ~"Je ne sais pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 43.0
  SAY #40265 /* ~Juliette acquiesce. "C'est plutôt une bonne idée. Je te remercie."~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40422 /* ~"Évidemment. Maintenant, je veux que tu répondes à mes questions…"~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40423 /* ~"Évidemment. Maintenant, j'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40424 /* ~"De rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #40266 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 36.7 45.1 45.2
  SAY #40267 /* ~Juliette a l'air choquée. "Il… il a dit *quoi* ?! Comment est-ce que j'ai pu être aussi… oh ! On dirait bien que ma relation avait les problèmes que je voulais, et que je les ai ratés à cause de ma mélancolie !"~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40426 /* ~"Peut-être. En tout cas, j'ai rempli ma part de marché… maintenant, je veux que tu répondes à mes questions."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40427 /* ~"Peut-être. Maintenant j'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40428 /* ~"Peut-être. Au revoir, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.0 23.0 36.1 36.6 36.8 44.1
  SAY #40268 /* ~Juliette serre les dents de frustration. "Oooh ! Que c'est frustrant ! Il faut que j'essaie autre chose."~ */
  IF ~~ THEN REPLY #40429 /* ~"Pourquoi est-ce que tu ne lui en *parles* pas, tout simplement ? Il vaut mieux que tu discutes ouvertement de votre relation avant d'inventer une autre machination."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40430 /* ~"Peut-être. En tout cas, j'ai rempli ma part de marché… maintenant, je veux que tu répondes à mes questions."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40431 /* ~"Peut-être. Maintenant j'ai quelques questions…"~ */ GOTO 24
  IF ~~ THEN REPLY #40432 /* ~"Peut-être. Au revoir, Juliette."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #40269 /* ~Juliette te regarde avec espoir. "Alors ? Tu as du nouveau ?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #40433 /* ~"Non, pas encore. Au revoir."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66217 /* ~"Nous avons un problème : il refuse de me parler."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Juliette m'a demandé de me faire passer pour son soupirant afin de rendre Montague jaloux, mais je lui ai expliqué que ce dernier m'en voulait et qu'il refusait de me parler.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66218 /* ~"Nous avons un problème : il s'est fait tuer."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Juliette m'a demandé de me faire passer pour son soupirant afin de rendre Montague jaloux, mais je lui ai expliqué que ce dernier avait été tué.~ */ GOTO 50
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40434 /* ~"Oui, en fait. Ça lui a brisé le cœur et il a décidé de te laisser avec moi."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~J'ai expliqué à Juliette ce qui s'était passé avec Montague, et elle a éclaté en sanglots.~ */ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #40435 /* ~"Montague avait l'intention de te laisser avec moi, alors je lui ai dit que c'était un stratagème. Je ne sais pas ce qu'il compte faire maintenant."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~J'ai expliqué à Juliette ce qui s'était passé avec Montague. Cela ne lui a pas fait plaisir, mais elle a tout de même accepté de répondre à mes questions.~ */ GOTO 39
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40436 /* ~"Montague a eu l'air indifférent…"~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40437 /* ~"Je lui ai fait part de mes revendications, mais… je n'ai remarqué aucune réaction. En tout cas, il n'a pas voulu se battre avec moi. Je te conseille de lui parler toi-même."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40438 /* ~" Montague a eu l'air indifférent…"~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40439 /* ~"Je lui ai fait part de mes revendications, mais… je n'ai remarqué aucune réaction. Je te conseille de lui parler toi-même."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.3 44.5 44.6 44.7 44.8
  SAY #40270 /* ~"Alors il ne va pas se battre pour moi ?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40440 /* ~"Non."~ */ GOTO 37
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40441 /* ~"Non. Je me souviens qu'il a dit qu'il 's'ennuyait de toute façon'."~ */ GOTO 42
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40442 /* ~"Non. Je me souviens qu'il a dit que lui aussi avait une aventure de son côté."~ */ GOTO 42
END

IF ~  Global("SadJuli","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #40271 /* ~Juliette ne t'a jamais parue aussi accablée. Son visage est blême et défait, elle a des poches noires sous les yeux et ceux-ci sont injectés de sang. Elle te dédie un sourire mal assuré, comme si elle essayait de faire bonne figure.~ */
  IF ~~ THEN REPLY #40443 /* ~"J'ai quelques questions, Juliette."~ */ GOTO 24
  IF ~~ THEN REPLY #40444 /* ~"Je ne faisais que passer. Au revoir, Juliette."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",3)
~ THEN BEGIN 47 // from:
  SAY #40272 /* ~"Bonjour. Je suppose que tu es venu me poser tes questions ?"~ */
  IF ~~ THEN REPLY #40445 /* ~"Oui…"~ */ GOTO 24
  IF ~~ THEN REPLY #40446 /* ~"Non, je ne faisais que passer. Au revoir, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 24.12
  SAY #40273 /* ~"Je ne sais pas, mais j'ai effectivement entendu cette rumeur. Tu devrais poser cette question à Kimasxi Langue-de-Vipère… elles sont demi-sœurs, tu comprends."~ */
  IF ~~ THEN REPLY #40447 /* ~"Ah bon ? Intéressant. J'ai une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40448 /* ~"Je vois… c'est tout ce que je voulais savoir. Au revoir, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.10 24.11
  SAY #40274 /* ~"Oh, tu veux parler d'Ecco. On dit qu'elle a fait la promesse de ne plus jamais parler, pour une raison ou pour une autre. J'ai du mal à imaginer pourquoi quelqu'un ferait ça."~ */
  IF ~~ THEN REPLY #40449 /* ~"J'ai une autre question…"~ */ GOTO 24
  IF ~~ THEN REPLY #40450 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 20.1 23.1 36.2 44.2
  SAY #66204 /* ~Juliette te toise d'un regard méprisant. "Comment ? Quel est ce jeu cruel auquel tu t'amuses avec moi ?"Soudain, elle porte la main à sa bouche. "Non, non… tu dis la vérité, je le sais. Il s'est encore battu en duel, c'est ça ?"~ */
  IF ~~ THEN REPLY #66205 /* ~"Quelque chose comme ça, oui…"~ */ GOTO 37
END
