// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3076 /* ~Tu vois un homme à la peau de cuir. Son visage est cendré. Ses dents paraissent plus aiguisées que la normale. Ses yeux sont remplis de la lassitude d'avoir vu trop de choses. Sa voix est nasillarde et entrecoupée. "Encore toi, hein ! Qu'est-ce que tu veux, cette fois ?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #3077 /* ~"'Encore toi' ? Que veux-tu dire ?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10238 /* ~"Tu as mon œil, n'est-ce pas ? Je voudrais te le racheter."~ */ GOTO 11
  IF ~~ THEN REPLY #10239 /* ~"Qui es-tu ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10240 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10241 /* ~"Que peux-tu me dire sur les clients d'ici ?"~ */ GOTO 15
  IF ~~ THEN REPLY #10242 /* ~"Je voudrais boire quelque chose."~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10243 /* ~"Je cherche un journal."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10244 /* ~"Je cherche Pharod, le Récupérateur."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Giltspur, le commissaire-priseur voulait que tu affiches ce prospectus."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68055 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10245 /* ~"Qu'est-ce que tu veux encore?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10246 /* ~"À mon arrivée, tu m'as dit 'encore toi'. Que voulais-tu dire par là ?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10247 /* ~"Tu as dit que tu avais mon œil. Je voudrais le récupérer maintenant."~ */ GOTO 11
  IF ~~ THEN REPLY #10248 /* ~"Qui es-tu ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10249 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10250 /* ~"Que peux-tu me dire sur les clients d'ici ?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10251 /* ~"Je voudrais boire quelque chose."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10252 /* ~"Tu n'auras plus de problèmes avec Mochai."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10253 /* ~"Je voudrais boire quelque chose."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10254 /* ~"Je cherche un journal."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10255 /* ~"Je cherche Pharod, le Récupérateur."~ */ GOTO 30
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10256 /* ~"Que peux-tu me dire sur les clients d'ici ?"~ */ GOTO 35
  IF ~  Global("Mochai_Dead_KAPUTZ","GLOBAL",1)
GlobalLT("Mochai","GLOBAL",3)
~ THEN REPLY #57941 /* ~"Mochai ne te créera plus de problèmes."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Giltspur, le commissaire-priseur voulait que tu affiches ce prospectus."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68056 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.4 4.2 5.2 7.0 9.0 11.4 12.1 13.1 14.0 15.1 16.0 16.1 17.14 18.7 19.1 20.2 21.2 22.2 23.2 24.4 25.1 26.1 27.0 28.2 29.0 30.0 31.1 32.1 34.0 35.0
  SAY #10257 /* ~"Dépêche-toi, d'accord ? J'ai des clients qui payent, moi."~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10258 /* ~"À mon arrivée, tu m'as dit 'encore toi'. Que voulais-tu dire par là ?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10259 /* ~"Tu as dit que tu avais mon œil. Je voudrais le racheter."~ */ GOTO 11
  IF ~~ THEN REPLY #10260 /* ~"Qui es-tu ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10261 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10262 /* ~"Que peux-tu me dire sur les clients d'ici ?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10263 /* ~"Je voudrais boire quelque chose."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10264 /* ~"J'ai pris soin de la personne qui ne voulait pas payer sa note."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10265 /* ~"Je voudrais boire quelque chose."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10266 /* ~"Je cherche un journal."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10267 /* ~"Je cherche Pharod, le Récupérateur."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Giltspur, le commissaire-priseur voulait que tu affiches ce prospectus."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #45135 /* ~"Que peux-tu me dire sur les clients d'ici ?"~ */ GOTO 35
  IF ~~ THEN REPLY #57942 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0
  SAY #10269 /* ~"Oui, 'encore toi'. Tu es dur de la feuille, ou quoi ? Tu es venu ici il y a quinze ans, tu t'es saoulé, tu as tout cassé et tu m'as donné une pile de pièces qui n'a pas suffi à payer les dégâts. Alors tu t'es arraché l'œil, tu me l'as tendu tout sanguinolent, et tu as dit que tu viendrais le récupérer quand tu aurais mis deux cents pièces de côté. Avec les quinze ans d'intérêt, tu m'en dois cinq cents. Si tu as le jonc, mon pote, moi j'ai ton œil."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10270 /* ~"Cinq cents ? C'est ridicule !"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10271 /* ~"Cinq cents ? C'est ridicule !"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10272 /* ~"Cinq cents ? D'accord. Voilà."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10273 /* ~"Je n'ai pas cette somme."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10274 /* ~"Ça ne m'intéresse pas pour le moment. Réponds plutôt à d'autres questions."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10275 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #10276 /* ~Il hésite, l'air songeur. "Oui, tu as raison. Écoute, si tu veux, je te le laisse pour trois cents."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #10277 /* ~"D'accord. Voilà ton argent."~ */ DO ~TakePartyGold(300)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(300)
~ THEN REPLY #10278 /* ~"Je n'en ai toujours pas les moyens."~ */ GOTO 7
  IF ~~ THEN REPLY #10279 /* ~"Laisse tomber. Réponds plutôt à d'autres questions pour moi."~ */ GOTO 2
  IF ~~ THEN REPLY #10280 /* ~"Laisse tomber. Je reviendrai plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 11.1
  SAY #10281 /* ~"Tu prends ou tu cagues. C'est mon dernier prix."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10282 /* ~"Bien, je le prends."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10283 /* ~"Je n'ai pas cette somme."~ */ GOTO 7
  IF ~~ THEN REPLY #10284 /* ~"Laisse tomber. Réponds plutôt à d'autres questions pour moi."~ */ GOTO 2
  IF ~~ THEN REPLY #10285 /* ~"Je cague. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0 11.2
  SAY #10286 /* ~"Tope là." Il tire de sa poche un flacon à large goulot, peint en noir et bouché à la cire. L'objet, lorsqu'il te le tend, produit un bruit de liquide, et un autre, plus sourd. Tu l'ouvres ; un relent de lotion d'embaumement te soulève le cœur. Un globe oculaire flotte dans le fluide épais. "Tu ferais mieux de décider ce que tu vas en faire… maintenant que tu l'as exposé à l'air libre, tu pourrais aussi bien mettre un œuf dur à la place. Décide-toi, matois… l'œuf dur ou non?"~ */
  IF ~  HPGT(Protagonist,15)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10287 /* ~Arrache ton globe oculaire et place celui-ci dans l'orbite.~ */ DO ~GiveExperience(Protagonist,1000)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPGT(Protagonist,15)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10288 /* ~Arrache ton globe oculaire et place celui-ci dans l'orbite.~ */ DO ~GiveExperience(Protagonist,750)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #10289 /* ~Arrache ton globe oculaire et place celui-ci dans l'orbite.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 10
  IF ~~ THEN REPLY #10290 /* ~Regarde-le pourrir.~ */ GOTO 25
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.1 5.1 11.3
  SAY #10291 /* ~"Dans ce cas, je garde ton œil. Tu as compris ? Reviens le jour où tu auras le jonc."~ */
  IF ~~ THEN REPLY #10292 /* ~"Très bien. Alors, réponds à d'autres questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10293 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1
  SAY #10294 /* ~Un temps d'hésitation, et puis tu insères tes doigts dans ton orbite et tu recueilles le globe oculaire dans la paume de ta main. Le barman, obligeamment, tranche le nerf optique et guide ta main vers le flacon sur le comptoir. Tu places ton œil dans la lotion d'embaumement, saisis l'ancien du bout des doigts et le glisses dans ton orbite vide. L'opération toute entière te cause une atroce souffrance, mais, au bout d'un moment, tu sens le nerf optique se rattacher à l'œil. Soudain des souvenirs te reviennent en mémoire !~ */
  IF ~~ THEN REPLY #10295 /* ~Absorbe-les.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10296 /* ~Souvenir : Une vaste étendue chaotique et changeante, un vol de vautours humanoïdes piquant vers toi, prêts à frapper de leurs armes cruelles, ta lame brillante serrée dans ton poing…

Souvenir : Trois durs portant la livrée d'un ennemi que tu as oublié t'encerclent. Ils tiennent de longues dagues scintillantes ; leurs dents brillent à la lumière. Tu considères tes mains lardées de cicatrices : bientôt, tu le sais, elles seront couvertes de sang…

Souvenir : Une sorte d'énorme crapaud vient vers toi à bonds prodigieux sur/sous/à travers un chaos changeant, ouvrant grand sa gueule dentée. Ta javeline, perçant le matériau instable qui compose le paysage, cloue cette créature au pilier de pierre surgi derrière elle… Tu as recouvré un peu de tes talents guerriers.~ */
  IF ~~ THEN REPLY #10297 /* ~Pose d'autres questions à Barkis.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ GOTO 2
  IF ~~ THEN REPLY #10298 /* ~Pars.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #10299 /* ~Tu insères tes doigts dans ton orbite. La douleur insupportable qui t'envahit a soudain raison de toi, et tu tombes à terre dans un flot de sang. Tu es mort.~ */
  IF ~~ THEN REPLY #10300 /* ~Terminé.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.1 1.1 2.1
  SAY #10301 /* ~"Tu veux le récupérer ? Cinq cents pièces. Si tu ne les as pas, tu peux faire une croix dessus."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10302 /* ~"Cinq cents ? C'est ridicule !"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10303 /* ~"Cinq cents ? C'est ridicule !"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10304 /* ~"Cinq cents ? D'accord. Voilà."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10305 /* ~"Je n'ai pas cette somme."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10306 /* ~"Ça ne m'intéresse pas pour le moment. Réponds plutôt à d'autres questions."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10307 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 1.2 2.2
  SAY #10308 /* ~"Moi ? Barkis. Le propriétaire et le tenancier de l'établissement."~ */
  IF ~~ THEN REPLY #10309 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10310 /* ~"Alors, c'est à toi qu'il faut que je pose les questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10311 /* ~"Bel endroit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.3 1.3 2.3 12.0
  SAY #10312 /* ~"Tu n'as pas vu l'enseigne ? Ni, en entrant, le bige qui brûle sur le fourneau ? C'est le Cadavre fumant, ici, matois, la meilleure biberie de Sigil. Ou du moins la meilleure de ce côté-ci de la Ruche, donc une des meilleures de Sigil. Diantre, ils ont de beaux établissements, avec des plantes et tout, dans le Quartier de La Dame, et des tavernes à fiélons dans le reste de la Ruche, mais il n'y en a pas une qui ait le cachet du Cadavre fumant."~ */
  IF ~~ THEN REPLY #10313 /* ~"C'est qui le cadavre, d'ailleurs ?"~ */ GOTO 14
  IF ~~ THEN REPLY #10314 /* ~"Je vois. Parle-moi d'autre chose, d'accord ?"~ */ GOTO 2
  IF ~~ THEN REPLY #10315 /* ~"Il n'y a pas plus vrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #10316 /* ~"Lui ? Ignus, un magicien du feu. Il a fait flamber une partie de la Ruche, et d'autres mages lui ont réglé son compte. Si tu veux en savoir plus sur lui, va voir Drusilla, là-bas, près de la porte."~ */
  IF ~~ THEN REPLY #10317 /* ~"Très bien. Mais, j'aimerais en savoir plus sur autre chose."~ */ GOTO 2
  IF ~~ THEN REPLY #10318 /* ~"Très bien, c'est ce que je vais faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.4 1.4 2.4
  SAY #10319 /* ~"J'évite de me mêler des affaires de ceux qui me filent leur jonc durement gagné, à moins qu'ils me le demandent. Cela dit, là, tu as Candrian. Un voyageur des plans. Si tu as des questions à ce sujet, il a vu du pays. Au fond, c'est Ebb Craquerotules, un vieux lascar de l'Harmonium - mais faut pas lui en vouloir pour ça. Il a plein de tuyaux à vendre, bon cœur, et il connaît Sigil comme sa poche. Les deux fiélons, Aethelgrin et Tegar'in, suis mon conseil et fuis-les comme la peste. Même s'ils sont au bas de l'échelle dans la hiérarchie des fiélons, ils restent des fiélons. Là-bas, tu as Ilquix - ne te fie JAMAIS à lui - et des Rectifieurs à la recherche d'un pauvre bougre. Pour ce qui est de Dak'kon, le githzeraï, c'est un mystère. Je ne sais rien de lui, ou presque. Il ne parle pas beaucoup. Enfin… ça te dirait, une bonne bibe gratos ?"~ */
  IF ~~ THEN REPLY #10320 /* ~"Oui."~ */ GOTO 16
  IF ~~ THEN REPLY #10321 /* ~"Pas vraiment. Réponds à d'autres questions pour moi, d'accord ?"~ */ GOTO 2
  IF ~~ THEN REPLY #10323 /* ~"Non. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10322 /* ~"Il y a une bibarde, contre le mur opposé, dans l'ombre, qui essaie de trouver le courage de détaler sans régler sa note. Si tu l'en empêches, tu pourras biber aux frais de la maison à vie."~ */
  IF ~~ THEN REPLY #10324 /* ~"Je m'en charge. Réponds d'abord à quelques questions."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10325 /* ~"Je préfère pas. Réponds plutôt à quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10326 /* ~"Je m'en charge. Je te préviendrai quand j'aurai fini."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #10327 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 0.5 1.5 2.5 19.0 20.0 21.0 22.0 23.0 24.1 24.2 28.0
  SAY #10328 /* ~"Qu'est-ce que tu veux ? Ici, ça coute une pièce pour de la bière blonde, deux pour de la brune, quatre pour de l'hydromel. L'eau du Plan Élémentaire coûte huit pièces, le vin de feu et les semences de feu d'Arborée dix, le jus de cœur de Maudith, huit, le whisky de Baator vingt. Tu as fait ton choix ?"~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10329 /* ~"Bière blonde."~ */ DO ~TakePartyGold(1)
~ GOTO 20
  IF ~  PartyGoldLT(1)
~ THEN REPLY #10330 /* ~"Bière blonde."~ */ GOTO 19
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10331 /* ~"Bière brune."~ */ DO ~TakePartyGold(2)
~ GOTO 20
  IF ~  PartyGoldLT(2)
~ THEN REPLY #10332 /* ~"Bière brune."~ */ GOTO 19
  IF ~  PartyGoldGT(3)
~ THEN REPLY #10333 /* ~"Hydromel."~ */ DO ~TakePartyGold(4)
~ GOTO 20
  IF ~  PartyGoldLT(4)
~ THEN REPLY #10334 /* ~"Hydromel."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10335 /* ~"Eau."~ */ DO ~TakePartyGold(8)
~ GOTO 21
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10336 /* ~"Eau."~ */ GOTO 19
  IF ~  PartyGoldGT(9)
~ THEN REPLY #10337 /* ~"Vin de feu et semences de feu."~ */ DO ~TakePartyGold(10)
~ GOTO 22
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10338 /* ~"Vin de feu et semences de feu."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10340 /* ~"Jus de cœur."~ */ DO ~TakePartyGold(8)
~ GOTO 23
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10341 /* ~"Jus de cœur."~ */ GOTO 19
  IF ~  PartyGoldGT(19)
~ THEN REPLY #10342 /* ~"Whisky."~ */ DO ~TakePartyGold(20)
~ GOTO 24
  IF ~  PartyGoldLT(20)
~ THEN REPLY #10343 /* ~"Whisky."~ */ GOTO 19
  IF ~~ THEN REPLY #10344 /* ~"Informations."~ */ GOTO 2
  IF ~~ THEN REPLY #10345 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.7 2.7 20.1 21.1 22.1 23.1 24.3 28.1 32.0
  SAY #10339 /* ~"Si tu as soif, on a ce qu'il faut. Fais ton choix : bière blonde, bière brune, hydromel, eau du Plan Élémentaire, vin de feu et semences de feu d'Arborée, jus de cœur de Maudith, whisky de Baator. Qu'est-ce que ce sera ?"~ */
  IF ~~ THEN REPLY #10346 /* ~"Bière blonde."~ */ GOTO 20
  IF ~~ THEN REPLY #10347 /* ~"Bière brune."~ */ GOTO 20
  IF ~~ THEN REPLY #10348 /* ~"Hydromel."~ */ GOTO 20
  IF ~~ THEN REPLY #10349 /* ~"Eau."~ */ GOTO 21
  IF ~~ THEN REPLY #10350 /* ~"Vin de feu et semences de feu."~ */ GOTO 22
  IF ~~ THEN REPLY #10351 /* ~"Jus de cœur."~ */ GOTO 23
  IF ~~ THEN REPLY #10352 /* ~"Whisky."~ */ GOTO 24
  IF ~~ THEN REPLY #10353 /* ~"Informations."~ */ GOTO 2
  IF ~~ THEN REPLY #10354 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.3 17.5 17.7 17.9 17.11 17.13
  SAY #10355 /* ~Le barman fronce les sourcils. "Tu n'as pas le jonc pour payer. Et je ne fais pas crédit non plus. On m'a trop souvent empaillé, ces derniers temps. Autre chose ?"~ */
  IF ~~ THEN REPLY #10356 /* ~"Qu'est-ce que tu as à boire ?"~ */ GOTO 17
  IF ~~ THEN REPLY #10357 /* ~"Oui. Des informations."~ */ GOTO 2
  IF ~~ THEN REPLY #10358 /* ~"Non, pardon."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.2 17.4 18.0 18.1 18.2
  SAY #10359 /* ~Tu bois. Le goût n'est pas très prononcé. L'alcool te remplit l'estomac, mais ne te fait pas beaucoup d'effet. "Qu'est-ce que ce sera, matois ?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10360 /* ~"Ressers-moi à boire."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10361 /* ~"Ressers-moi à boire."~ */ GOTO 18
  IF ~~ THEN REPLY #10362 /* ~"Réponds à quelques questions pour moi."~ */ GOTO 2
  IF ~~ THEN REPLY #10363 /* ~"Rien."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.6 18.3
  SAY #10364 /* ~Il ouvre le robinet d'un tonneau posé contre le mur ; l'eau la plus claire que tu aies jamais vue coule dans le verre qu'il a placé dessous. Il le pose devant toi, tu en bois une grande gorgée… Le liquide le plus pur que tu aies jamais bu, d'une fraicheur qui semble venir de l'eau elle-même, se répand tel de l'air glacé sur ta langue et cascade dans ton estomac et, l'espace d'un instant, apaise tes émotions pourtant brûlantes. "Cette eau provient du cœur du plan de l'Eau, dit le barman. Toutes celles que tu boiras désormais te paraîtront sales, en comparaison."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10365 /* ~"Ressers-moi à boire !"~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10366 /* ~"C'était génial. Ressers-moi à boire."~ */ GOTO 18
  IF ~~ THEN REPLY #10367 /* ~"Dans ce cas, j'aimerais juste poser quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10368 /* ~"Quelle expérience ! Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.8 18.4
  SAY #10369 /* ~Il te tend un verre du vin le plus rouge et une poignée de graines aux couleurs vives. "Mets-les sur ta langue et bois une bonne gorgée de vin. Ne t'étonne pas qu'elles prennent feu, elles ne te feront aucun mal. Le goût est… sans pareil." Il a raison. Quand tu jettes une des semences dans ta bouche, elle se dissout dans ta salive et s'embrase. Tu noies la petite flamme dans le vin. Cette saveur est indescriptible. Barkis sourit. "Un autre ?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10370 /* ~"Oh là là, oui. Ressers-moi à boire."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10371 /* ~"Vas-y, envoie."~ */ GOTO 18
  IF ~~ THEN REPLY #10372 /* ~"Pas maintenant, merci. Je voudrais plutôt te poser quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10373 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.10 18.5
  SAY #10374 /* ~Il te vend un verre du fameux jus de cœur de Maudith, dont le bouquet te coupe le souffle. Le goût, quant à lui, est riche et fruité, l'arrière-goût somptueux. "On utilise de véritables baies de lierre-rasoir", dit le barman. "Je donnerais cher pour connaître le secret de fabrication. Un autre ?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10375 /* ~"Et comment."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10376 /* ~"Et comment."~ */ GOTO 18
  IF ~~ THEN REPLY #10377 /* ~"Non, mais j'aimerais bien quelques réponses."~ */ GOTO 2
  IF ~~ THEN REPLY #10378 /* ~"Non, merci."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.12 18.6
  SAY #10379 /* ~Il pose devant toi un liquide qui paraît en ébullition, mais dégage des vapeurs exquises. Le goût, relevé au point d'atteindre l'insupportable, est ardent, et la sensation que te procure l'alcool se frayant un passage jusqu'à ton estomac s'apparente à une douce souffrance. Le barman te dévisage, les yeux écarquillés. "Tu tiens encore debout ? La plupart n'en boivent même pas une demi-rasade."~ */
  IF ~~ THEN REPLY #10380 /* ~"Je me sens très bien. En fait, je ne sens rien."~ */ GOTO 28
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10381 /* ~"Ressers-moi à boire."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10381 /* ~"Ressers-moi à boire."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10382 /* ~"Ressers-moi à boire."~ */ GOTO 18
  IF ~~ THEN REPLY #10383 /* ~"Je tiens plutôt bien le coup. Réponds à une question pour moi, d'accord ?"~ */ GOTO 2
  IF ~~ THEN REPLY #10384 /* ~"La plupart des gens ne peuvent pas faire ce que je fais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.3
  SAY #10385 /* ~L'œil se décompose devant toi en dégageant un fluide visqueux qui empuantit l'atmosphère avant de t'emplir les narines. Le barman agite la main devant sa figure pour dissiper les relents et dit : "De l'argent gaspillé, ça. Autre chose ?"~ */
  IF ~~ THEN REPLY #10386 /* ~"Rends-moi mon argent. Tout de suite."~ */ GOTO 26
  IF ~~ THEN REPLY #10387 /* ~"Réponds juste à quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10388 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #10389 /* ~"Bige, ce n'est tout de même pas de ma faute si tu décides de laisser périr ton achat. Si tu avais voulu utiliser cet œil, il te suffisait de te triturer l'orbite comme la dernière fois. Ce n'est pas mon problème."~ */
  IF ~~ THEN REPLY #10390 /* ~"Ça le deviendra si je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Barkis_One","GLOBALGood",-1)
~ GOTO 27
  IF ~~ THEN REPLY #10391 /* ~"Non, c'est vrai. Alors, réponds à quelques questions pour moi."~ */ GOTO 2
  IF ~~ THEN REPLY #10392 /* ~"Ça le sera peut-être plus tard. Bonne journée."~ */ EXIT
  IF ~~ THEN REPLY #10393 /* ~"Non, je suppose que non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #10394 /* ~Il t'adresse un sourire torve. "Chiche."~ */
  IF ~~ THEN REPLY #10395 /* ~"Laisse tomber. Réponds plutôt à quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10396 /* ~"Laisse tomber."~ */ EXIT
  IF ~~ THEN REPLY #10397 /* ~Attaque-le.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.0
  SAY #10398 /* ~Le menton dans la paume de sa main, le barman te dévisage. "Il y a des gens, tu sais, qui ont une immunité naturelle aux poisons. Certains tiennent la bibe pour du poison. Dans ce cas, il y a des chances pour que tu bénéficies d'une protection bien commode face à un empoisonneur."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10399 /* ~"Et bien, et ce… Quoi qu'il en soit, ressers-moi à boire."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10400 /* ~"Et bien, et ce… Quoi qu'il en soit, ressers-moi à boire."~ */ GOTO 18
  IF ~~ THEN REPLY #10401 /* ~"Ce serait pratique. Réponds à une question pour moi, d'accord ?"~ */ GOTO 2
  IF ~~ THEN REPLY #10402 /* ~"Bien. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.6 1.8 2.8
  SAY #10403 /* ~"Un journal ? Du papier avec des mots dessus ? L'ami, on ne croise guère ce genre de truc par ici. Les gens de la Ruche savent à peine lire mon enseigne, alors un journal… Si tu en cherches un, tu ferais mieux de trouver un autre système que de demander à l'aveuglette."~ */
  IF ~~ THEN REPLY #10404 /* ~"Merci du conseil, mais ce n'est pas ce que je t'ai demandé. Alors, réponds à une autre question."~ */ GOTO 2
  IF ~~ THEN REPLY #10405 /* ~"Très bien. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 0.7 1.9 2.9
  SAY #10406 /* ~Il se détourne et crache par terre. "Pharod ? Peuh ! Tu peux aussi bien lui tourner le dos et le laisser y planter sa dague. À te voir, on dirait d'ailleurs que ça t'est déjà arrivé. Si tu meurs d'envie de le trouver - pardonne-moi le jeu de mots - adresse-toi donc à Ebb Craquerotules, là-bas. Il devrait pouvoir te renseigner."~ */
  IF ~~ THEN REPLY #10407 /* ~"D'accord. J'irai dès que tu auras répondu à d'autres questions pour moi."~ */ GOTO 2
  IF ~~ THEN REPLY #10408 /* ~"Ebb ? Le vieil homme ? Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.6 1.11 2.6
  SAY #10409 /* ~"C'est vrai ? Alors, l'ami, tu as le droit de boire ce que tu veux pour rien. Tout ce que tu veux, quand tu veux."~ */
  IF ~~ THEN REPLY #10410 /* ~"Elle a dû accumuler une sacrée note."~ */ GOTO 32
  IF ~~ THEN REPLY #10411 /* ~"Merci. Encore quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #10412 /* ~"Je te prendrai au mot un de ces jours. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #10413 /* ~"Et tu ne sais pas tout. Tu veux boire un coup ?"~ */
  IF ~~ THEN REPLY #10414 /* ~"Sers-moi."~ */ GOTO 18
  IF ~~ THEN REPLY #10415 /* ~"Pour le moment, ce que je cherche, ce sont des informations."~ */ GOTO 2
  IF ~~ THEN REPLY #10416 /* ~"Non. Mais je reviendrai."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #10417 /* ~"Semences de feu, ça marche !"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.8 1.12 2.10
  SAY #45136 /* ~"Giltspur, hein ? Laisse-moi y jeter un coup d'œil." L'homme prend le prospectus, le lit et fronce les sourcils. "D'accord. Dis-lui que j'accepte de l'afficher. Autre chose ?"~ */
  IF ~~ THEN REPLY #45137 /* ~"J'ai juste besoin de quelques réponses supplémentaires…"~ */ DO ~TakePartyItemNum("GiltPost",1)
~ GOTO 2
  IF ~~ THEN REPLY #45138 /* ~"C'est tout, merci. Au revoir."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.10 2.11
  SAY #57943 /* ~Il te jette un regard interrogateur. "On a déjà discuté de ça, pas vrai ? Tu veux savoir autre chose d'autre que je ne t'ai pas déjà dit ?"~ */
  IF ~~ THEN REPLY #57944 /* ~"Réponds juste à quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #57945 /* ~"Non. Au revoir."~ */ EXIT
END
