// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DECCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DECCO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 25 26 37 45 46 even though they appear after this state */
~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN BEGIN 0 // from:
  SAY #38209 /* ~Cette superbe jeune femme a la peau couleur cuivre poli. Une robe blanche translucide, tenue précairement par des agrafes dorées, est savamment drapée sur ses jolies formes.~ */
  IF ~  Global("Ecco","GLOBAL",0)
~ THEN REPLY #38269 /* ~"Bonjour…"~ */ DO ~SetGlobal("Ecco","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Ecco","GLOBAL",1)
~ THEN REPLY #38270 /* ~"Rebonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #38271 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #2909 /* ~La femme fait un signe de la tête et sourit un instant. L'odeur de ses cheveux, délicatement parfumés, emplit tes narines.~ */
  IF ~~ THEN REPLY #38272 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38273 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 5.1 6.4 7.1 10.6 11.1 12.1 13.1 14.1 15.1 16.1 25.0 29.0 30.0 40.0 41.0 42.0 43.1 44.0 45.0 46.0 47.1 49.0 51.1 52.1 53.1 54.0 55.0
  SAY #2910 /* ~Elle fait un signe de la tête.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38274 /* ~"Tu t'appelles 'Ecco' ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~J'ai eu confirmation que la prostituée 'silencieuse' s'appelle 'Ecco'.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalLT("Ecco_Rumor_6","AR0605",2)
~ THEN REPLY #38276 /* ~"Je peux te demander pourquoi tu ne peux pas communiquer ?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38278 /* ~"Est-ce qu'il y a un moyen de lever ton maléfice ?"~ */ GOTO 21
  IF ~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN REPLY #38279 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38283 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38284 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 47
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38285 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
Global("Know_Kesai_Ravel","AR0605",0)
~ THEN REPLY #38286 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 48
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #38287 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38290 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais pas où il peut être ?"~ */ JOURNAL #66727 /* ~Une des prostituées m'a conseillé d'aller demander à Nenny si elle savait quoi que ce soit au sujet du vol du parfum personnel de Viviane. Apparemment, Nenny est connue pour passer son temps à fureter et à observer les autres.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38291 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais pas où il peut être ?"~ */ GOTO 29
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38292 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais pas où il peut être ?"~ */ JOURNAL #66728 /* ~Une des prostituées m'a conseillé d'aller demander à Nenny si elle savait quoi que ce soit au sujet du vol du Voile Pourpre de Marissa. Apparemment, Nenny est connue pour passer son temps à fureter et à observer les autres.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38293 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais pas où il peut être ?"~ */ GOTO 29
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38294 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 53
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38295 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 54
  IF ~~ THEN REPLY #38296 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3
  SAY #38210 /* ~Elle sourit et fait une révérence, mais n'offre aucune réponse.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38280 /* ~"Tu t'appelles 'Ecco' ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~J'ai eu confirmation que la prostituée 'silencieuse' s'appelle 'Ecco'.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38297 /* ~"Tu parles ?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38281 /* ~"Hmm. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38298 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.0 6.3 9.0 53.0
  SAY #38211 /* ~Elle secoue la tête et te sourit tristement.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN JOURNAL #66704 /* ~Une des prostituées que j'ai rencontrées à la Maison de tolérance est désormais incapable de communiquer. Elle ne peut ni parler, ni écrire, ni même mimer. Je ne pourrai l'interroger tant qu'elle n'aura pas recouvré la parole.~ */ EXTERN ~DMORTE~ 402
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38299 /* ~"Tu peux peut-être écrire ou mimer, alors ?"~ */ JOURNAL #66704 /* ~Une des prostituées que j'ai rencontrées à la Maison de tolérance est désormais incapable de communiquer. Elle ne peut ni parler, ni écrire, ni même mimer. Je ne pourrai l'interroger tant qu'elle n'aura pas recouvré la parole.~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 2.6
  SAY #38212 /* ~Elle te regarde et sourcille.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38300 /* ~"Tu parles ?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38301 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38302 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 21.1
  SAY #38213 /* ~Elle fait un signe de tête et sourit agréablement.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38303 /* ~Serment : "Je te jure de chercher un moyen de lever ton maléfice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38304 /* ~"Je vais essayer de trouver un moyen de lever ton maléfice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38305 /* ~"Je peux essayer de lever le maléfice… À condition que tu me paies."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38306 /* ~"Tu parles ?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38307 /* ~"J'avais d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #52815 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #38214 /* ~Elle fait la moue en secouant la tête.~ */
  IF ~~ THEN REPLY #38308 /* ~"Je peux te demander pourquoi tu ne peux pas communiquer ?"~ */ GOTO 10
  IF ~~ THEN REPLY #38309 /* ~"Bon, J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38310 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.8
  SAY #38215 /* ~Elle fronce le front et se mord la lèvre… Soudain, ses yeux s'illuminent et elle sourit. Elle te fait un signe de la tête.~ */
  IF ~~ THEN REPLY #38311 /* ~"Quoi ? Qu'est-ce que tu sais sur elle ?"~ */ JOURNAL #66724 /* ~La prostituée silencieuse semble détenir des informations au sujet de Ravel Puits-de-Rébus… mais elle est incapable de me les communiquer.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38216 /* ~Elle te regarde simplement.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38312 /* ~"Tu parles ?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #38313 /* ~"Je peux te demander pourquoi tu ne peux pas communiquer ?"~ */ GOTO 10
  IF ~~ THEN REPLY #38314 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 7.0 9.1 11.0 12.0 13.0 14.0 15.0
  SAY #38217 /* ~Elle soupire légèrement et fait un signe de la tête.~ */
  IF ~  Global("Ecco_Rumor_1","AR0605",1)
~ THEN REPLY #38315 /* ~"Tu restes silencieuse parce que tu as le cœur brisé ?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",2)
~ GOTO 11
  IF ~  Global("Ecco_Rumor_2","AR0605",1)
~ THEN REPLY #38316 /* ~"Tu connais le mot qui défera le multivers s'il est prononcé ?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",2)
~ GOTO 12
  IF ~  Global("Ecco_Rumor_3","AR0605",1)
~ THEN REPLY #38317 /* ~"Tu as une blessure émotionnelle ? C'est pour ça que tu ne peux pas parler ?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",2)
~ GOTO 13
  IF ~  Global("Ecco_Rumor_4","AR0605",1)
~ THEN REPLY #38318 /* ~"Est-ce que ta voix a causé la mort de quelqu'un ou provoqué une autre tragédie ?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",2)
~ GOTO 14
  IF ~  Global("Ecco_Rumor_5","AR0605",1)
~ THEN REPLY #38319 /* ~"Tu as juré de ne plus jamais parler pour une raison ou pour une autre ?"~ */ DO ~SetGlobal("Ecco_Rumor_5","AR0605",2)
~ GOTO 15
  IF ~  Global("Ecco_Rumor_6","AR0605",1)
~ THEN REPLY #38320 /* ~"Quelqu'un t'a maudite ?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",2)
SetGlobal("Ecco_Speak","GLOBAL",2)
~ JOURNAL #66725 /* ~Il semblerait que ce que Dolora m'a dit sur Ecco soit exact ; la pauvre ne peut plus parler depuis qu'on lui a volé sa voix.~ */ GOTO 16
  IF ~~ THEN REPLY #38321 /* ~"En fait, je voudrais te demander autre chose…"~ */ GOTO 2
  IF ~~ THEN REPLY #38322 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38218 /* ~Elle sourit gentiment, puis secoue la tête.~ */
  IF ~~ THEN REPLY #38323 /* ~"Alors, je peux te demander si c'est autre chose ?"~ */ GOTO 10
  IF ~~ THEN REPLY #38324 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38325 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #38219 /* ~Ses yeux s'écarquillent de surprise… Puis elle te sourit, roule des yeux et secoue la tête.~ */
  IF ~~ THEN REPLY #38326 /* ~"Alors, je peux te demander si c'est autre chose ?"~ */ GOTO 10
  IF ~~ THEN REPLY #38327 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38328 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #38220 /* ~Elle te regarde bizarrement et secoue la tête lentement…~ */
  IF ~~ THEN REPLY #38329 /* ~"Alors, je peux te demander si c'est autre chose ?"~ */ GOTO 10
  IF ~~ THEN REPLY #38330 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38331 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #38221 /* ~Sur ce, elle s'arrête, ouvre la bouche, puis fronce les sourcils. Après un moment, elle secoue la tête.~ */
  IF ~~ THEN REPLY #38332 /* ~"Alors, je peux te demander si c'est autre chose ?"~ */ GOTO 10
  IF ~~ THEN REPLY #38333 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38334 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #38222 /* ~Elle fronce les sourcils et secoue la tête.~ */
  IF ~~ THEN REPLY #38335 /* ~"Alors, je peux te demander si c'est autre chose ?"~ */ GOTO 10
  IF ~~ THEN REPLY #38336 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38337 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.5
  SAY #38223 /* ~Elle fait un signe net de la tête, rassemble ses mains et te sourit.~ */
  IF ~~ THEN REPLY #38338 /* ~"Tu connais un moyen, *quel qu'il soit*, de retrouver ta voix ?"~ */ GOTO 21
  IF ~~ THEN REPLY #38339 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38340 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #38224 /* ~Elle reste calme et son visage dégage une certaine frustration.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #38225 /* ~Elle secoue la tête.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #38226 /* ~Elle s'arrête un moment et réfléchit… puis secoue la tête. Elle te regarde d'un air implorant.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #38227 /* ~Elle sourit et secoue vigoureusement la tête. Elle semble vraiment soulagée.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.2 16.0
  SAY #38228 /* ~Elle secoue la tête dans sa frustration. Elle te regarde, suppliante, comme si elle attendait une réponse.~ */
  IF ~  Global("Ecco_Name","AR0605",0)
~ THEN REPLY #38349 /* ~"Je dois connaître ton nom pour enquêter sur le maléfice…"~ */ GOTO 22
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38350 /* ~"Il faut que je connaisse ton nom pour enquêter sur le maléfice. Est-ce que tu t'appelles 'Ecco' ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~J'ai eu confirmation que la prostituée 'silencieuse' s'appelle 'Ecco'.~ */ GOTO 6
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38351 /* ~Serment : "Je te jure de chercher un moyen de lever le maléfice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38352 /* ~"Je vais essayer de trouver un moyen de lever le maléfice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38353 /* ~"Je peux essayer de lever le maléfice… À condition que tu me paies."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~~ THEN REPLY #38354 /* ~"Il vaut mieux… que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #38229 /* ~Elle hausse les épaules et fronce les sourcils.~ */
  IF ~~ THEN REPLY #38357 /* ~"Bon, il vaudrait mieux que je demande ça à quelqu'un d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.0 6.1 21.2 21.3
  SAY #38230 /* ~Ecco te fait lentement un signe de la tête, te sourit et ses yeux semblent pleins de gratitude.~ */
  IF ~~ THEN REPLY #38358 /* ~"Au revoir, Ecco."~ */ JOURNAL #66726 /* ~J'ai dit à Ecco que j'essaierai de trouver quelque chose qui lui rendrait la parole.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 6.2 21.4
  SAY #38231 /* ~Ecco fronce les sourcils et te regarde. Elle regarde au loin pendant un moment, soupire, puis te fait un signe de la tête.~ */
  IF ~~ THEN REPLY #38359 /* ~"Bon, c'est d'accord. Je chercherai ce qui pourrait te redonner une voix. Au revoir."~ */ JOURNAL #66726 /* ~J'ai dit à Ecco que j'essaierai de trouver quelque chose qui lui rendrait la parole.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 37 45 46 even though they appear after this state */
~  Global("Ecco_Name","AR0605",2)
~ THEN BEGIN 25 // from:
  SAY #38232 /* ~Ecco fait une révérence en te voyant approcher, ses lèvres soigneusement colorées dessinent un très léger sourire.~ */
  IF ~~ THEN REPLY #38360 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38361 /* ~"Je ne faisais que passer, Ecco. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 37 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #38233 /* ~Ecco te regarde pleine d'espoir alors que tu t'approches et se mord la lèvre inférieure.~ */
  IF ~  PartyHasItem("Ftongue")
~ THEN REPLY #38362 /* ~"Je t'ai rapporté cette Langue de fiélon…"~ */ DO ~DestroyPartyItem("Ftongue",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",4)
~ GOTO 31
  IF ~~ THEN REPLY #38364 /* ~"Je n'ai pas encore trouvé de moyen de lever le maléfice. Je reviendrai dès que j'aurai trouvé."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38234 /* ~Elle te regarde un moment, les yeux écarquillés, puis te fait lentement signe.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38235 /* ~Ecco pousse un soupir exaspéré, ses épaules se relâchent. Elle relève les yeux vers toi et secoue la tête.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.10 2.12
  SAY #38236 /* ~Elle secoue la tête, hausse les épaules et adopte un air d'excuse.~ */
  IF ~~ THEN REPLY #38368 /* ~"Alors, je voudrais te demander autre chose…"~ */ GOTO 2
  IF ~~ THEN REPLY #38369 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.9 2.11
  SAY #38237 /* ~Ecco secoue la tête. "Non, je n'en ai aucune idée. Tu as parlé à Nenny ? Elle se balade toujours et observe tout ce qui l'entoure avec des yeux écarquillés."~ */
  IF ~~ THEN REPLY #38370 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38371 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.0
  SAY #38238 /* ~Elle sourcille et te regarde d'un air sceptique.~ */
  IF ~~ THEN REPLY #38372 /* ~"On m'a dit que si tu la plaçais dans ta bouche, tu retrouverais la capacité de communiquer."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38239 /* ~Elle te fait un signe de la tête et te prend la bouteille. Elle attrape doucement la langue coupée dans la solution saumâtre, et après l'avoir fixée avec dégoût, la met dans la bouche… Soudain, ses yeux s'écarquillent et un éclair de lumière rougeâtre se dessine entre ses lèvres !~ */
  IF ~~ THEN REPLY #38373 /* ~"Ça va ?"~ */ GOTO 33
  IF ~~ THEN REPLY #38374 /* ~Attends sa réponse.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38240 /* ~Ecco ouvre la bouche, la referme, puis l'ouvre de nouveau… et parle ! "Je parle… Je parle de nouveau ! Oh, quel bonheur ! Je te rem-CONDAMNE AUX TÉNÈBRES, ESPÈCE D'ASTICOT PUANT ! AGENOUILLE-TOI DEVANT MOI ET SUPPLIE-MOI, INSECTE !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 403
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38375 /* ~"Hein ?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #38241 /* ~Ecco gémit et met les deux mains devant sa bouche… Ses yeux sont écarquillés de panique.~ */
  IF ~~ THEN REPLY #38376 /* ~"Ça doit venir de… la Langue de fiélon…"~ */ JOURNAL #66729 /* ~J'ai donné à Ecco une langue de fiélon qui, selon Vrischika, pouvait rendre la parole à n'importe quelle créature. Mais le résultat n'est guère satisfaisant ; la langue a beaucoup de choses à dire et Ecco n'est pas contente du tout. Il faut désormais que je trouve *autre chose* pouvant contrer l'effet de la langue de fiélon…~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38242 /* ~Elle enlève lentement ses mains en faisant un signe de la tête. "Il semble que je doive DÉVORER TA FRÊLE CARAPACE ET ENVOYER TON ÂME DANS LES ABYSSES POUR L'ÉTERNITÉ ! TU DEVRAS ÊTRE MON ESCLAVE JUSQU'À LA FIN DES PLANS ! TU ES À MOI, À MOI, À M-" Ecco referme la bouche et se met à pleurer en silence.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #66730 /* ~"Attends… essaie d'utiliser ces larmes de deva. Elles devraient empêcher la langue de fiélon de jurer."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~J'ai donné à Ecco les larmes de deva, qui ont mis un terme aux jurons de la langue de fiélon. La jeune femme est désormais capable de recommencer à parler normalement… et de répondre à mes questions.~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #66731 /* ~"Attends, j'ai trouvé le moyen de t'aider : des larmes de deva. Mais elles sont trop chères pour moi, je ne peux les acheter."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~J'ai parlé à Ecco des larmes de deva que j'ai aperçues dans la boutique de Vrischika, et elle m'a donné un billet à ordre afin que je puisse les acheter pour elle. ~ */ GOTO 39
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",1)
~ THEN REPLY #38377 /* ~"Je vais essayer d'arranger ça. Au revoir."~ */ EXIT
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38378 /* ~"Et bien, tu reparles… en quelque sorte… Alors, où est ma récompense ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ecco_1","GLOBALLaw",-1)
~ GOTO 36
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38379 /* ~"Je suppose que je ne toucherai pas ma récompense tant que je n'aurai pas arrangé ça. Je reviens… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.3
  SAY #38243 /* ~Ecco te lance un regard plein de défi, et affiche un sourire moqueur.~ */
  IF ~~ THEN REPLY #38380 /* ~"Je suppose que je ne toucherai pas ma récompense tant que je n'aurai pas arrangé ça. Je reviens… Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",4)
~ THEN BEGIN 37 // from:
  SAY #38244 /* ~Ecco te fait un signe de la tête alors que tu t'approches et affiche un regard plein d'espoir.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #38381 /* ~"Je t'ai rapporté ces Larmes de Deva… Elles devraient apaiser les jurons de la langue."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~J'ai donné à Ecco les larmes de deva, qui ont mis un terme aux jurons de la langue de fiélon. La jeune femme est désormais capable de recommencer à parler normalement… et de répondre à mes questions.~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38382 /* ~"Ecco… J'ai trouvé un moyen de t'aider… Les Larmes de Deva. Mais elles sont chères, et je n'ai pas les moyens de les acheter."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~J'ai parlé à Ecco des larmes de deva que j'ai aperçues dans la boutique de Vrischika, et elle m'a donné un billet à ordre afin que je puisse les acheter pour elle. ~ */ GOTO 39
  IF ~~ THEN REPLY #38383 /* ~"Je n'ai toujours pas trouvé de moyen de t'aider… Je reviendrai dès que j'aurai trouvé."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.0 37.0
  SAY #38245 /* ~Elle te fait un signe de la tête, sourit et te prend la fiole. Ecco met quelques gouttes pétillantes bleues sur sa langue : "Je… je crois que les Larmes font effet. Oui… elles font effet ! J'ai retrouvé ma propre voix - oh, je te remercie !" Ecco te serre la main et penche la tête en signe de reconnaissance, ses yeux emplis de larmes de joie.~ */
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38384 /* ~"Ça m'a fait plaisir de t'aider. Au revoir, Ecco."~ */ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38385 /* ~"Ça m'a fait plaisir de t'aider. Au revoir, Ecco."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_2","GLOBALGood",1)
~ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"Ça me fait plaisir d'avoir pu t'aider… Mais les Larmes de Deva m'ont coûté cher…"~ */ DO ~GivePartyGold(1000)
~ GOTO 40
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38387 /* ~"De rien… Et oublie la récompense, Ecco. Ça m'a fait plaisir de pouvoir t'aider."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
GivePartyGold(1000)
~ GOTO 41
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38388 /* ~"De rien… Et oublie la récompense, Ecco. Ça m'a fait plaisir de pouvoir t'aider."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
~ GOTO 42
  IF ~  Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38389 /* ~"Je t'en prie… Et pour ma récompense…"~ */ DO ~GivePartyGold(500)
~ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 35.1 37.1
  SAY #38246 /* ~Ecco te fait un signe de la tête et retire un papier de ses vêtements… On dirait un billet à ordre d'une valeur de mille pièces, que le porteur peut encaisser à la Maison de tolérance. Elle te lance un regard interrogateur.~ */
  IF ~~ THEN REPLY #38390 /* ~"Oui… Ça suffira. Je reviendrai dès que j'aurai les Larmes, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #38247 /* ~"Oh… Je n'y avais pas pensé ! Oui, oui… Ici…" Ecco retire de sa bourse plusieurs rouleaux de pièces de cuivres enveloppées dans du parchemin. "Ça devrait largement suffire. Et encore merci !" Elle te sourit chaleureusement.~ */
  IF ~~ THEN REPLY #66735 /* ~"Évidemment. Maintenant, j'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38391 /* ~"Au revoir, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY #38248 /* ~Ecco rayonne de bonheur : "Encore merci !" Elle s'approche de toi comme pour te murmurer quelque chose à l'oreille, le parfum de ses cheveux t'enivre… "Ton apparence n'est pas à la hauteur de ta gentillesse, monsieur." Elle t'embrasse sur la joue et s'éloigne de toi, attrapant sa bourse. "Voilà, mon ami… Cela devrait largement couvrir ce que t'ont coûté les Larmes. J'insiste pour que tu acceptes."~ */
  IF ~~ THEN REPLY #66736 /* ~"Merci. Maintenant, j'aurais quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #38392 /* ~"Merci, Ecco. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.4
  SAY #38249 /* ~Ecco rayonne de bonheur : "Encore merci !" Elle s'approche de toi pour te murmurer des choses à l'oreille, le parfum de ses cheveux t'enivre… "Ton apparence n'est pas à la hauteur de ta grande bonté, mon cher." Elle t'embrasse sur la joue et s'éloigne de toi en souriant.~ */
  IF ~~ THEN REPLY #66737 /* ~"Merci. Maintenant, j'aurais quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #38393 /* ~"Merci, Ecco. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 38.5
  SAY #38250 /* ~Ecco fait un signe de la tête, essuyant sa dernière larme. Elle sort sa bourse et te tend plusieurs rouleaux de pièces de cuivre enveloppées dans du parchemin. "Ta récompense, monsieur… Tu l'a bien méritée."~ */
  IF ~  Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"Ça me fait plaisir d'avoir pu t'aider… Mais les Larmes de Deva m'ont coûté cher…"~ */ DO ~GivePartyGold(999)
SetGlobal("Ecco","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #66738 /* ~"Merci. Maintenant, j'aurais quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #38395 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #38251 /* ~Elle hoche la tête. "Bien sûr." Sa voix est monocorde. "Tiens." Elle te donne d'autres rouleaux de pièces.~ */
  IF ~~ THEN REPLY #66739 /* ~"Merci. Maintenant, j'aurais quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #38396 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",5)
GlobalLT("Ecco","GLOBAL",3)
~ THEN BEGIN 45 // from:
  SAY #38252 /* ~Ecco te fait gentiment signe alors que tu t'approches d'elle. "Bonjour, monsieur, je suis une fois de plus ravie de te voir !"~ */
  IF ~~ THEN REPLY #38397 /* ~"Bonjour, Ecco… j'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38398 /* ~"Bonjour, Ecco. Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ecco_Speak","GLOBAL",5)
Global("Ecco","GLOBAL",3)
~ THEN BEGIN 46 // from:
  SAY #38253 /* ~Ecco te fait calmement un signe de la tête alors que tu t'approches.~ */
  IF ~~ THEN REPLY #38399 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38400 /* ~"Je ne fais que passer. Au revoir, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.5
  SAY #38254 /* ~"La Maison de tolérance est une sorte d'école, où les jeunes femmes… les 'prostituées'…" Elle sourit en grimaçant. "… étudient l'art du langage et ses subtilités, comme notre Maîtresse Grâce le dit, pour devenir des Sensats. La Maison de tolérance tourne grâce aux donations de ses nombreux clients qui viennent ici pour chercher autre chose que le plaisir physique en compagnie d'une femme."~ */
  IF ~~ THEN REPLY #38401 /* ~"Des Sensats ?"~ */ GOTO 55
  IF ~~ THEN REPLY #38402 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #38403 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 2.7
  SAY #38255 /* ~Ecco fait un signe de la tête et baisse la voix : "En fait, oui… non seulement elle existe, mais en plus elle a des *enfants* !"~ */
  IF ~~ THEN REPLY #38404 /* ~"Elle *quoi* ?"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~Elle m'a dit que Ravel Puits-de-Rébus avait des enfants qui étaient toujours en vie, et que l'une des prostituées de la Maison de tolérance, Kesai-Serris, en faisait partie. Elle a ajouté que Kesai refusait de l'accepter, et qu'elle niera vraisemblablement que Ravel est sa mère si je lui en parle.~ */ GOTO 49
  IF ~~ THEN REPLY #38405 /* ~"Où est-ce que je peux les trouver ?"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~Elle m'a dit que Ravel Puits-de-Rébus avait des enfants qui étaient toujours en vie, et que l'une des prostituées de la Maison de tolérance, Kesai-Serris, en faisait partie. Elle a ajouté que Kesai refusait de l'accepter, et qu'elle niera vraisemblablement que Ravel est sa mère si je lui en parle.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #38256 /* ~"L'un d'entre eux est ici… Kesai-Serris. C'est la fille de Ravel, même si elle répugne à l'admettre. Qui pourrait l'en blâmer ?" Elle s'arrête un moment et réfléchit. "Je ne lui en ai jamais parlé, mais je suis sûre que c'est vrai."~ */
  IF ~~ THEN REPLY #38406 /* ~"Intéressant. J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #38407 /* ~"C'est fascinant. Merci, Ecco. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #38257 /* ~Ecco soupire et hausse les épaules. "Maintenant que je ne vis plus dans sa maison, il n'y a plus d'inquiétude à avoir. Je l'aime, il *est* toujours mon père… mais je ne suis pas pressée de le voir ; j'aurais peur qu'il me lance encore un sort si jamais je n'étais pas à la hauteur de ses attentes."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.4
  SAY #38258 /* ~"Je suis ici pour étudier, comme toutes les 'prostituées'. Nous voulons améliorer l'art du langage pour stimuler nos esprits… pour améliorer la conscience de nous-mêmes et des autres et pour créer de nouveaux moyens de faire l'expérience des autres." Elle s'arrête, perdue dans ses pensées.~ */
  IF ~~ THEN REPLY #38411 /* ~"Continue…"~ */ GOTO 52
  IF ~~ THEN REPLY #38412 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #38413 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #38259 /* ~"Eh bien… je n'ai pas pu parler pendant si *longtemps*. La plupart des clients viennent ici pour trouver quelqu'un qui les écoutent, quelqu'un d'attentif capable de les comprendre pour les aider à se libérer. Je peux de nouveau parler et je me demande si le moment n'est pas venu pour moi… de quitter la Maison de tolérance pour devenir un Sensat."~ */
  IF ~~ THEN REPLY #38414 /* ~"Un Sensat ?"~ */ GOTO 55
  IF ~~ THEN REPLY #38415 /* ~"Intéressant. Je voudrais te demander autre chose…"~ */ GOTO 2
  IF ~~ THEN REPLY #38416 /* ~"Peut-être. Au revoir, Ecco."~ */ EXIT
  IF ~~ THEN REPLY #38417 /* ~"Quel que soit ton choix, je te souhaite plein de bonnes choses, Ecco. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.13
  SAY #38260 /* ~Elle te regarde intriguée avant de secouer la tête.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38418 /* ~"Tu parles ?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38419 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38420 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 2.14
  SAY #38261 /* ~Ecco semble déconcertée. "Je… je n'ai jamais entendu parler d'une dixième étudiante. Elle est peut-être nouvelle ? S'il y a une nouvelle, je ne l'ai pas encore rencontrée."~ */
  IF ~~ THEN REPLY #38421 /* ~"J'ai d'autres questions…."~ */ GOTO 2
  IF ~~ THEN REPLY #38422 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.0 52.0
  SAY #38262 /* ~"Un membre de la Société des Sensations. Adresse-toi à Tombée-en-Disgrâce ou à quelqu'un de la Salle des Fêtes si tu veux en savoir plus."~ */
  IF ~~ THEN REPLY #38423 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #38424 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
