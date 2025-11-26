// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXT~

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3069 /* ~Tu vois un monstre à tête de chien. Doté de larges épaules, tout en muscles, il a quatre bras dont deux se terminent par des pinces dentelées qui paraissent susceptibles de déchirer leurs victimes jusqu'à l'âme. Il s'exprime d'une voix étonnamment douce. "Ah, je vois que tu nous amènes de valeureux compagnons et…" Il s'interrompt pour humer l'air. "… un parfum *délicieux*, cher voyageur. Annah, j'ai connu ton père - à ce jour, il peine encore au fin fond des Abysses. Et Maîtresse Grâce, votre mère, Rouge Linceul, sera sans doute enchantée de recevoir de vos nouvelles."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #11201 /* ~Tu vois un monstre à tête de chien. Doté de larges épaules, tout en muscles, il a quatre bras dont deux se terminent par des pinces dentelées qui paraissent susceptibles de déchirer leurs victimes jusqu'à l'âme. Il parle d'une voix étonnamment douce. "Ah, je vois que tu nous amènes de valeureux compagnons et…" Il s'interrompt pour humer l'air. "…un parfum *délicieux*, cher voyageur. Annah, j'ai connu ton père - à ce jour, il peine encore au fin fond des Abysses."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #11203 /* ~Tu vois un monstre à tête de chien. Doté de larges épaules, tout en muscles, il a quatre bras dont deux se terminent par des pinces dentelées qui paraissent susceptibles de déchirer leurs victimes jusqu'à l'âme. Il parle d'une voix étonnamment douce. "Ah, je vois que tu nous amènes de valeureux compagnons et…" Il s'interrompt pour humer l'air. "… un parfum *délicieux*, cher voyageur. Maîtresse Grâce, votre mère Rouge Linceul sera sans doute enchantée de recevoir de vos nouvelles."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DGRACE~ 11
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 3 // from:
  SAY #11204 /* ~Tu vois un monstre à tête de chien. Doté de larges épaules, tout en muscles, il a quatre bras dont deux se terminent par des pinces dentelées qui paraissent susceptibles de déchirer leurs victimes jusqu'à l'âme. Il parle d'une voix étonnamment douce. "Réduire les noms de ces abishaï aux syllabes qui les composent s'est avéré une tâche fort gratifiante. Je te remercie de l'occasion que tu m'as donnée."~ */
  IF ~~ THEN REPLY #3367 /* ~"Tout le plaisir est pour moi. Je voudrais te poser des questions…"~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ GOTO 5
  IF ~~ THEN REPLY #11202 /* ~"Tout le plaisir était pour moi. Au revoir."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 4 // from:
  SAY #11205 /* ~Le glabrezu se tourne vers toi avec enthousiasme, comme on accueille un ami. "Voyageur ! Te voilà de retour ! Que puis-je pour toi ?" Il salue Tombée-en-Disgrâce et Annah d'une inclinaison du buste narquoise.~ */
  IF ~~ THEN REPLY #11206 /* ~"Je voudrais te poser d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11207 /* ~"Pas pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0 6.0 7.0 8.0 9.2 10.1 11.0 12.2 13.1 14.1 15.2 16.0 17.0 18.0 18.2 19.0
  SAY #11208 /* ~"Mais bien sûr ! Je ne suis que trop heureux d'aider quelqu'un qui pourrait se révéler un ami et un allié précieux !"~ */
  IF ~~ THEN REPLY #11209 /* ~"Parle-moi de toi."~ */ GOTO 9
  IF ~~ THEN REPLY #11210 /* ~"Pourquoi portais-tu un déguisement ?"~ */ GOTO 10
  IF ~~ THEN REPLY #11211 /* ~"Parle-moi de cette taverne et de ses clients."~ */ GOTO 11
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11212 /* ~"Barkis veut que je trouve une solution au problème de la note de Mochai."~ */ GOTO 12
  IF ~~ THEN REPLY #11213 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 6 // from:
  SAY #11214 /* ~Le glabrezu se tourne vers toi avec enthousiasme, comme on accueille un ami. "Voyageur ! Te voilà de retour ! Que puis-je pour toi ?" Il salue Annah d'une inclinaison du buste narquoise.~ */
  IF ~~ THEN REPLY #11215 /* ~"Je voudrais te poser d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11216 /* ~"Pas pour le moment. Au revoir."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 7 // from:
  SAY #11217 /* ~Le glabrezu se tourne vers toi avec enthousiasme, comme on accueille un ami. "Voyageur ! Te voilà de retour ! Que puis-je pour toi ?" Il salue Tombée-en-Disgrâce d'une inclinaison du buste narquoise.~ */
  IF ~~ THEN REPLY #11218 /* ~"Je voudrais te poser d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11219 /* ~"Pas pour le moment. Au revoir."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 8 // from:
  SAY #11220 /* ~Le glabrezu se tourne vers toi avec enthousiasme, comme on accueille un ami. "Voyageur ! Te voilà de retour ! Que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #11221 /* ~"Je voudrais te poser d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11222 /* ~"Pas pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #11223 /* ~"Moi ? Je ne suis qu'un simple glabrezu, un tanar'ri… soit un démon pour un ignare… qui se plaît à côtoyer les mortels pour apprendre leurs mœurs. À ceux dont j'estime qu'ils méritent un tel honneur, j'offre un surcroît de puissance contre un maigre salaire. Je te le proposerais bien aussi, mais l'ordre exerce un fort attrait sur ton corps et ton esprit… trop fort pour que je brise ses liens à cette heure." Il sourit, exhibant deux rangées de dents acérées. "Si tu veux mettre son pouvoir sur toi à l'épreuve un de ces jours, nous pourrons peut-être parvenir à un accord."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11224 /* ~"Peut-être. Dis-m'en plus sur les tanar'ris."~ */ GOTO 13
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11225 /* ~"Peut-être. Dis-m'en plus sur les tanar'ris."~ */ GOTO 14
  IF ~~ THEN REPLY #11226 /* ~"Peut-être. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11227 /* ~"Peut-être. Mais pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #11228 /* ~"Ce déguisement me servait à la fois à espionner les abishaï, qui sont tous morts désormais, et à épargner aux âmes sensibles la terreur qu'elles ressentent face à un être de ma stature. À présent, néanmoins, l'heure est venue de reprendre ma forme véritable."~ */
  IF ~~ THEN REPLY #11229 /* ~"Pourquoi maintenant ?"~ */ GOTO 17
  IF ~~ THEN REPLY #11230 /* ~"Je vois. J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #11231 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #11232 /* ~"Sans ces détestables baatezus, l'endroit est devenu encore plus agréable. L'odeur de chair rôtie, les luttes de pouvoir et les petits drames composent un cadre enchanteur. J'aimerais plus de hurlements, mais on n'est pas aux Abysses. Les clients… en général… se caractérisent par la petitesse de leurs idées et de leurs rêves. O reste un mystère à mes yeux. Je ne comprends pas son pouvoir, mais je compte y remédier sous peu. Quant aux autres, ils n'ont rien de fascinant pour moi. Il y a des millénaires et des millénaires que je côtoie leurs pareils."~ */
  IF ~~ THEN REPLY #11233 /* ~"Très bien. Alors, réponds à d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11234 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #11235 /* ~"Une solution simple est de mise. Si tu la tuais à l'arme blanche, tu attirerais l'attention sur toi. Je te suggère le poison."~ */
  IF ~~ THEN REPLY #11236 /* ~"Et si je payais son addition pour la sortir d'affaire ?"~ */ GOTO 18
  IF ~~ THEN REPLY #11237 /* ~"En fait, je n'ai pas de poison."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11238 /* ~"Merci du conseil. Réponds à d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11239 /* ~"Merci du conseil. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #11240 /* ~Ilquix désigne Grâce d'un coup de menton. "Ta compagne doit pouvoir t'en dire plus." Un sourire grivois. "Nous sommes chaotiques, et fiers de l'être - nous croyons à la primauté de l'individu. Je parle pour moi, bien sûr." Son trait d'esprit paraît l'amuser. "D'aucuns nous disent mauvais, et peut-être le sommes-nous. Mais je crois que l'individu n'a d'obligations qu'envers lui-même. Se soucier des besoins des autres est une faiblesse. Enfin, garde ceci en tête : tout tanar'ri… ou démon, ainsi que vous, mortels, nous appelez parfois, incarne une volonté, un mode de pensée, particuliers. Compte les foules infinies des Abysses, et dis-moi que nous ne démontrons pas ainsi la force de notre cause aux mortels.~ */
  IF ~~ THEN REPLY #11241 /* ~"Alors, vous n'êtes pas vraiment des êtres physiques ?"~ */ GOTO 15
  IF ~~ THEN REPLY #11242 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11243 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #11244 /* ~"Nous sommes chaotiques, et fiers de l'être - nous croyons à la primauté de l'individu. Je parle pour moi, bien sûr." Son trait d'esprit paraît l'amuser. "D'aucuns nous disent mauvais, et peut-être le sommes-nous. Mais je crois que l'individu n'a d'obligations qu'envers lui-même. Se soucier des besoins des autres est une faiblesse. Enfin, garde ceci en tête : tout tanar'ri… ou démon, ainsi que vous, mortels, nous appelez parfois, incarne une volonté, un mode de pensée, particuliers. Compte les foules infinies des Abysses, et dis-moi que nous ne démontrons pas ainsi la force de notre cause aux mortels.~ */
  IF ~~ THEN REPLY #11245 /* ~"Alors, vous n'êtes pas vraiment des êtres physiques ?"~ */ GOTO 15
  IF ~~ THEN REPLY #11246 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11247 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0 14.0
  SAY #11248 /* ~"Nous avons bien sûr un aspect physique… du moins ici, sur les Plans Extérieurs, mais c'est ici aussi que les pensées prennent corps. Nous sommes donc un symbole qui gagne en puissance tandis que, sur le Plan Primaire, notre cause se renforce. C'est pourquoi nous recrutons parmi des mortels qui ne soupçonnent même pas notre présence dans leur cœur et leur esprit."~ */
  IF ~~ THEN REPLY #11249 /* ~"C'est dégoûtant. Ils devraient avoir leur libre arbitre et la liberté de choix."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_IlquixT_One","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #11250 /* ~"S'ils sont trop faibles pour vous résister ou s'ils vous invitent, alors ils méritent leur sort."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_IlquixT_One","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #11251 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11252 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #11253 /* ~"Bien sûr qu'ils disposent du libre arbitre, balafré. Nous ne pourrions pas nous immiscer en eux s'ils nous résistaient. C'est justement leur faiblesse qui les condamne. S'ils devenaient plus forts, nous n'arriverions à rien. Mais ils restent faibles, et nous devenons plus forts. Ainsi va la vie." Il sourit. "Sinon, nous veillerions à ce qu'il en aille ainsi."~ */
  IF ~~ THEN REPLY #11254 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11255 /* ~"Merci de l'enseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #11256 /* ~"Parce que je l'ai décidé. J'ai mes raisons, petit immortel, et je n'entends pas te les révéler juste pour satisfaire ta curiosité. Sauf si tu parviens à m'y *obliger*, bien sûr…"~ */
  IF ~~ THEN REPLY #11257 /* ~"Je préférerais poser d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11258 /* ~"Si tu insistes. Prépare-toi à mourir."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0
  SAY #11259 /* ~"Si c'est ce que tu veux, alors pourquoi demander conseil à un fiélon ? Allons, réfléchis. Il ne fait aucun doute que le poison est la meilleure solution."~ */
  IF ~~ THEN REPLY #11260 /* ~"Non, je crois que je vais essayer une autre méthode. Réponds à d'autres questions pour moi…"~ */ GOTO 5
  IF ~  !PartyHasItem("Embalm")
~ THEN REPLY #11261 /* ~"Le problème, c'est que je n'ai pas de poison."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11262 /* ~"Je vais y réfléchir. Réponds à d'autres questions pour moi…"~ */ GOTO 5
  IF ~~ THEN REPLY #11263 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.1 18.1
  SAY #11264 /* ~"Tu n'en as pas ? Permets-moi de t'en fournir !" Il se concentre, et un flacon plein apparaît entre ses griffes. "Tu reconnais peut-être la lotion d'embaumement dont se servent les Hommes-Poussière. La mort devrait être relativement indolore, si jamais tu as ce genre de scrupules." Et le fiélon te met le poison dans les mains.~ */
  IF ~~ THEN REPLY #11265 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #11266 /* ~"Grand merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #2072 /* ~Le fiélon a l'air amusé et se tourne vers toi. "Tu lui as pas encore enseigné les bonnes manières, voyageur ?"~ */
  IF ~~ THEN REPLY #2073 /* ~"Annah, calme-toi."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ EXTERN ~DANNAH~ 80
  IF ~~ THEN REPLY #2077 /* ~"Non. Elle est assez grande pour prendre ses responsabilités."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~DANNAH~ 81
END
