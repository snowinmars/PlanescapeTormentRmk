// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTAI~

IF ~  Global("Mortai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1794 /* ~Cet homme ratatiné a l'air d'un nain dans son habit d'Homme-Poussière. On dirait qu'ils ont voulu cacher sa petite stature. Il paraît avoir près de cent ans, mais c'est un homme extrêmement énergique. Il gigote sans cesse et ses yeux scrutent le bar comme ceux d'un oiseau.~ */
  IF ~~ THEN REPLY #13417 /* ~"Bonjour."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #13418 /* ~Ignore l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1795 /* ~Les yeux de l'homme brillent tandis qu'il t'examine et il fait un léger signe de tête. "Bienvenue, voyageur. On dirait que tu viens juste d'arriver à Sigil…" Il s'éloigne en traînant les pieds. "Excuse-moi, est-ce qu'on ne s'est pas déjà vu ? Ton visage m'a l'air familier."~ */
  IF ~~ THEN REPLY #13419 /* ~"C'est possible. Tu es sûr que c'était moi ?"~ */ GOTO 2
  IF ~~ THEN REPLY #13420 /* ~"Non… En tout cas, je ne me souviens pas de toi."~ */ GOTO 2
  IF ~~ THEN REPLY #13421 /* ~"Peu importe. Il faut que je m'en aille."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #13350 /* ~"Hmmmm… je me suis peut-être trompé." Mortaï secoue la tête. "Bon, peu importe. Comment Mortaï Envoitombe peut-il t'aider ? Cherches-tu…" Il fait claquer sa langue en parlant. "… le *contrat* peut-être ?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13422 /* ~"Le contrat ?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13423 /* ~"Le contrat ?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
~ THEN REPLY #13424 /* ~"Mortaï Envoitombe ? Tu es l'Homme-Poussière avec qui Angyar a passé ce contrat ?"~ */ GOTO 42
  IF ~~ THEN REPLY #13425 /* ~"Pas aujourd'hui, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 10.0 61.0
  SAY #13351 /* ~"Le contrat ? Ce n'est qu'une simple transaction." Des profondeurs de son ample robe, Mortaï tire un parchemin poussiéreux et une plume. "Je te donne cinquante pièces. En échange - après ta mort - la faction des Hommes-Poussière pourra réclamer tes restes." Il sourit, puis fait claquer sa langue. "Qu'en ferais-tu de toute façon, hein ?"~ */
  IF ~~ THEN REPLY #13426 /* ~"Qu'est-ce que les Hommes-Poussière font du corps ?"~ */ GOTO 5
  IF ~~ THEN REPLY #13427 /* ~"Cinquante pièces de cuivre pour ma dépouille ? D'accord, je vais signer."~ */ GOTO 12
  IF ~~ THEN REPLY #13428 /* ~"Ça ne m'intéresse pas, merci. Mais, j'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13429 /* ~"Je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.1 9.1 10.1 61.1
  SAY #13352 /* ~"Le contrat ? Ce n'est qu'une simple transaction." Des profondeurs de son ample robe, Mortaï tire un parchemin poussiéreux et une plume. "D'habitude, c'est cinquante… mais pour toi, ça sera cent pièces. En échange - après ta mort - la faction des Hommes-Poussière pourra réclamer tes restes." Il sourit, puis fait claquer sa langue. "Qu'en ferais-tu de toute façon, hein ?"~ */
  IF ~~ THEN REPLY #13430 /* ~"Qu'est-ce que les Hommes-Poussière font du corps ?"~ */ GOTO 5
  IF ~~ THEN REPLY #13431 /* ~"Cent pièces de cuivre pour ma dépouille ? D'accord, je vais signer."~ */ GOTO 12
  IF ~~ THEN REPLY #13432 /* ~"Ça ne m'intéresse pas, merci. Mais, j'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13433 /* ~"Je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #13353 /* ~Mortaï lève les mains, comme s'il ne savait pas. "Quelle importance ? Cela n'a aucune conséquence une fois mort."~ */
  IF ~~ THEN REPLY #13434 /* ~"Pour moi, c'est important."~ */ GOTO 6
  IF ~~ THEN REPLY #13435 /* ~"D'accord, je vais signer."~ */ GOTO 12
  IF ~~ THEN REPLY #13436 /* ~"Ça ne m'intéresse pas, merci. Mais, j'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13437 /* ~"Je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13354 /* ~"Bon, si tu *veux* vraiment le savoir, la plupart du temps, on ne fait *rien* avec le corps et nous, les Hommes-Poussière, perdons tout cet argent ! Fous que nous sommes !" Mortaï sourit légèrement, puis semble s'excuser. "Mais… *de temps en temps*, il arrive que les… employés de la Morgue soient remplacés… et alors, nous pouvons avoir besoin de ton corps."~ */
  IF ~~ THEN REPLY #13438 /* ~"Tu veux dire que mon cadavre sera animé pour travailler à la Morgue ? Ça ne me plaît pas beaucoup."~ */ GOTO 7
  IF ~~ THEN REPLY #13439 /* ~"D'accord, je vais signer."~ */ GOTO 12
  IF ~~ THEN REPLY #13440 /* ~"Ça ne m'intéresse pas, merci. Mais, j'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13441 /* ~"Je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #13355 /* ~"Ah, mais aucun mal n'est fait, aucune souffrance…" Mortaï lève un doigt pour souligner ses paroles. "Et aucun danger. En échange de l'argent que tu peux dépenser dans *cette* vie, tu n'as qu'à nous donner quelque chose dont tu n'auras pas besoin lorsque tu seras mort." Mortaï tapote sa poitrine. "J'ai signé le contrat moi-même, si tu veux savoir… Je n'aurai pas besoin de *mon* corps quand je serai mort."~ */
  IF ~~ THEN REPLY #13442 /* ~"Hmmmm… C'est vrai. Bon, je vais signer."~ */ GOTO 12
  IF ~~ THEN REPLY #13443 /* ~"Je vais y réfléchir. Pour l'instant, j'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13444 /* ~"Eh bien, je préférerais reposer en paix, pour différentes raisons. Je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.2 12.5 13.5 20.3 21.4 32.3 34.2 35.2 40.2 61.5 63.4
  SAY #13356 /* ~"Mais si, je peux t'aider ! Puisque je te le dis !" Mortaï t'appelle d'une voix implorante alors que tu t'éloignes. "Reviens si tu as besoin de fonds et Mortaï peut t'aider… rien qu'en échange de ta signature."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 4.2 5.2 6.2 7.1 10.2 11.2 12.4 13.4 20.2 21.3 22.0 23.0 24.3 25.2 26.1 27.5 27.6 27.7 27.8 27.9 28.1 29.2 30.0 31.1 32.2 33.1 34.1 35.1 36.3 37.2 38.1 40.1 41.3 42.3 43.5 44.5 45.4 46.5 49.4 52.4 55.3 60.0 61.4 62.0 63.3 66.2
  SAY #13357 /* ~"Bien sûr, bien sûr…" Mortaï acquiesce. "Ce serait un plaisir de répondre à tes questions…"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13445 /* ~"Reparle-moi de ce contrat."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13446 /* ~"Reparle-moi de ce contrat."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13447 /* ~"Je voudrais signer le contrat dont tu as parlé."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13448 /* ~"Je voudrais annuler le contrat que j'ai signé avec toi."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13449 /* ~"C'est avec toi qu'Angyar a signé son Contrat à mort ?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13450 /* ~"Je peux voir le contrat que tu as signé avec Angyar ?"~ */ GOTO 54
  IF ~~ THEN REPLY #13451 /* ~"Tu peux me parler de certains clients d'ici ?"~ */ GOTO 27
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13452 /* ~"Tu n'aurais pas vu un journal récemment ? J'ai perdu le mien."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13453 /* ~"Je cherche un certain Pharod. Tu ne l'aurais pas vu ?"~ */ GOTO 11
  IF ~~ THEN REPLY #13454 /* ~"Pas de question aujourd'hui. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 10 // from: 9.7
  SAY #13358 /* ~Mortaï secoue la tête. "Je n'ai pas entendu parler de journal." Il sourit. "Je traite des papiers d'une toute *autre* espèce…"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13455 /* ~"Tu veux parler du contrat que tu as mentionné tout à l'heure ? Tu peux m'en dire plus ?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13456 /* ~"Tu veux parler du contrat que tu as mentionné tout à l'heure ? Tu peux m'en dire plus ?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #13457 /* ~"Tu me l'as déjà dit. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13458 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 11 // from: 9.8
  SAY #13359 /* ~Mortaï fronce les sourcils. "C'est l'un des Récupérateurs, c'est ça ? Je ne le connais pas beaucoup… je crois que l'Initié Emoric l'a déjà mentionné en passant." Mortaï jette un coup d'œil autour de lui. "Emoric doit être ici, dans le bar… en général, on peut le trouver dans le coin le plus éloigné de la table principale, je crois."~ */
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13459 /* ~"L'Initié Emoric ?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13460 /* ~"L'Initié Emoric ?"~ */ GOTO 33
  IF ~~ THEN REPLY #13461 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13462 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 12 // from: 3.1 4.1 5.1 6.1 7.0 9.2 35.0
  SAY #13360 /* ~"Excellent ! Excellent !" Mortaï a l'air fou de joie… avec un petit sourire, il place une feuille poussiéreuse de parchemin et la plume devant toi. "Tu *ne* le regretteras *pas*." Il désigne de son doigt trois points différents sur la page. "Signe là, là et là et notre affaire est conclue !"~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13463 /* ~Signe là, là et là.~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13464 /* ~Signe là, là et là.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #13465 /* ~"Tu sais… Tu affiches plus d'émotions que les autres Hommes-Poussière que j'ai rencontrés."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13466 /* ~"Tu sais… Tu affiches plus d'émotions que les autres Hommes-Poussière que j'ai rencontrés."~ */ GOTO 13
  IF ~~ THEN REPLY #13467 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13468 /* ~"Laisse tomber. Je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.2 12.3
  SAY #13361 /* ~Le sourire de Mortaï se dissipe. "J'espère que tu ne pensais pas à mal."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13469 /* ~"Non. Laisse-moi signer le contrat."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13470 /* ~"Non. Laisse-moi signer le contrat."~ */ GOTO 21
  IF ~~ THEN REPLY #13471 /* ~"Il y a un problème ?"~ */ GOTO 29
  IF ~~ THEN REPLY #13472 /* ~"Je ne veux pas te vexer… Mais tu as l'air terriblement impatient de me voir signer ce contrat. Et pour un Homme-Poussière, cette impatience me surprend."~ */ GOTO 63
  IF ~~ THEN REPLY #13473 /* ~"Excuse-moi. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13474 /* ~"Je ne veux pas te vexer… Mais je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 21.2 63.0
  SAY #13362 /* ~Tu prends la plume dans ta main et tu commences à griffonner ta signature sur le parchemin… la plume *grince* curieusement en touchant le parchemin, comme une dague qui écrirait sur de l'acier.~ */
  IF ~~ THEN REPLY #13475 /* ~Continue à signer…~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13363 /* ~Alors que tu essaies de signer le parchemin, il semble bouger sous ta plume… plus tu essaies, moins tu arrives à signer ton nom. Tu as l'impression que le contrat se contorsionne pour passer d'un morceau de parchemin poussiéreux à quelque chose… de vivant.~ */
  IF ~~ THEN REPLY #13476 /* ~"Euh… Mortaï ? Qu'est-ce qu'il a, ce contrat ?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #13364 /* ~Lorsque tu lèves les yeux pour parler à Mortaï, son visage a été remplacé par celui d'un crâne grimaçant. Le reste du bar semble s'interrompre, les clients deviennent silencieux et s'immobilisent comme des statues. Mortaï ouvre la bouche et un ruban de poussière se déroule du crâne.~ */
  IF ~~ THEN REPLY #13477 /* ~"Mortaï… ?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13365 /* ~Avec un crissement, la tête de mort parle, de la poussière s'échappe de ses dents…

*Signe*

*Mais souviens-toi… tout a un prix*.

*Et qu'est-ce qui peut changer la nature d'un homme ?*

Les mots sont une sorte de refrain haché, mort, comme s'ils étaient prononcés par cinq, dix, vingt, cent voix - des voix vieilles, jeunes, féminines, masculines, désespérées, calmes, hystériques…~ */
  IF ~~ THEN REPLY #13478 /* ~"La nature d'un homme… ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13366 /* ~En prononçant les mots, tu te sens soudain affaibli et tu entends la voix de Mortaï, redevenue normale ; tu sens sa main sur ton épaule. "Eh, ça va ?" Il rit, embarrassé. "J'ai cru pendant un moment que je t'avais perdu…"~ */
  IF ~~ THEN REPLY #13479 /* ~Essaie de reprendre tes esprits…~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #13367 /* ~On dirait que le temps a expiré et repris sa respiration normale… le reste du bar est redevenu normal et le visage de Mortaï n'est plus une tête de mort. Tu ressens une pression étrange à l'intérieur de ton crâne, comme si quelque chose cherchait désespérément à faire surface sans y parvenir. L'expérience de la tête de mort qui parlait en poussière… c'était comme si tu te souvenais simultanément d'une douzaine de flashs, se heurtant les uns aux autres pour créer une image… et tu sais que chaque voix de la tête de mort appartenait à *quelqu'un*… mort depuis longtemps.~ */
  IF ~~ THEN REPLY #13480 /* ~"Laisse-moi un peu de temps… Ça va aller."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13368 /* ~Mortaï retire sa main de ton épaule… il semble gêné, plus à l'idée de perdre un client que par un souci quelconque de ta santé. En regardant le parchemin poussiéreux sur la table, tu as la certitude que ce n'est pas la première fois que tu as apposé ton nom sur un contrat… et peut-être pas la première fois que tu as signé un contrat de ce genre.~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13481 /* ~Finis de signer le contrat.~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13482 /* ~Finis de signer le contrat.~ */ GOTO 23
  IF ~~ THEN REPLY #13483 /* ~"En fait, Mortaï… je crois que je vais attendre avant de signer ça. J'avais d'abord d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13484 /* ~"Je ne crois pas que tu puisses m'aider… Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 12.1 13.1 63.1
  SAY #13369 /* ~Lorsque tu retouches le parchemin avec la plume, tu ressens un léger trouble, des pensées t'envahissent et des souvenirs jaillissent de ton crâne…~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13485 /* ~Refoule les souvenirs, signe le contrat…~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13486 /* ~Refoule les souvenirs, signe le contrat…~ */ GOTO 23
  IF ~~ THEN REPLY #13487 /* ~Laisse revenir le souvenir.~ */ GOTO 14
  IF ~~ THEN REPLY #13488 /* ~"En fait, Mortaï… je crois que je vais attendre avant de signer ça. J'avais d'abord d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13489 /* ~"Je ne crois pas que tu puisses m'aider… Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #13370 /* ~Tu griffonnes un "X" sur le contrat aux trois endroits désignés par Mortaï. Alors que tu termines le dernier X, les mains de Mortaï se ruent comme deux fouets. Sa main gauche asperge de poussière le parchemin pour aider l'encre à sécher et sa main droite pousse une poignée de pièces de cuivre dans ta main… cinquante en tout.~ */
  IF ~~ THEN REPLY #13490 /* ~"Bon, maintenant j'aurais d'autres questions à te poser…"~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13491 /* ~"Marché conclu… Au revoir."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 23 // from: 20.1 21.1
  SAY #13371 /* ~Tu griffonnes un "X" sur le contrat aux trois endroits désignés par Mortaï. Alors que tu termines le dernier X, les mains de Mortaï se ruent comme deux fouets. Sa main gauche asperge de poussière le parchemin pour aider l'encre à sécher et sa main droite pousse une poignée de pièces de cuivre dans ta main… une centaine en tout.~ */
  IF ~~ THEN REPLY #13492 /* ~"Bon, maintenant j'aurais d'autres questions à te poser…"~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13493 /* ~"Marché conclu… Au revoir."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 24 // from: 9.3
  SAY #13372 /* ~Mortaï a l'air de se méfier. "J'ai peur que ça ne puisse pas se faire. Le contrat est décidé, signé et engage les responsabilités."~ */
  IF ~~ THEN REPLY #13494 /* ~"Est-ce qu'on pourrait annuler ce contrat ?"~ */ GOTO 25
  IF ~~ THEN REPLY #13495 /* ~Bluff : "Je te conseille de me donner mon contrat tout de suite, ou je te massacre sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13496 /* ~Vérité : "Je te conseille de me donner mon contrat tout de suite, ou je te massacre sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13497 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13498 /* ~"Simple curiosité. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13373 /* ~Mortaï secoue la tête. "C'est maintenant une question juridique." Il tapote son menton et fait claquer sa langue. "Pour un autre, je serais prêt à rompre ce contrat, mais pour toi… vu ton aspect, je pense qu'il arrivera bientôt à échéance."~ */
  IF ~~ THEN REPLY #13499 /* ~Bluff : "Qu'est-ce que tu dis de ça : donne-moi tout de suite mon contrat ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13500 /* ~Vérité : "Qu'est-ce que tu dis de ça : donne-moi tout de suite mon contrat ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13501 /* ~"Bon, d'accord. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13502 /* ~"Alors, au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 26 // from: 24.1 24.2 25.0 25.1
  SAY #13374 /* ~Mortaï s'immobilise, ses yeux te jaugent. "Si tu sors tes armes ici, tu ne vivras pas assez longtemps pour les utiliser. Des gardes que tu ne peux pas *voir* planent au-dessus de cet endroit. Si tu arrivais à partir, les Hommes-Poussière veilleraient à ta punition. Pas de menaces insensées en ma présence."~ */
  IF ~~ THEN REPLY #13503 /* ~"J'en prends le risque… Prépare-toi à mourir."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13504 /* ~"Alors, laisse tomber. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13505 /* ~"Alors, tant pis. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 27 // from: 9.6
  SAY #13375 /* ~"Bien sûr. Sur quel client désires-tu des informations ?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13506 /* ~"Tu peux me parler d'Attente-de-la-Mort ?"~ */ GOTO 28
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13507 /* ~"Tu peux me parler de Sère ?"~ */ GOTO 31
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13508 /* ~"Tu peux me parler de l'Initié Emoric ?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13509 /* ~"Tu peux me parler de l'Initié Emoric ?"~ */ GOTO 33
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13510 /* ~"Tu peux me parler du Vieil Œilcuivré ?"~ */ GOTO 36
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
~ THEN REPLY #13511 /* ~"En fait, peu importe - je ne connais pas leurs noms. Mais j'ai d'autres questions…"~ */ GOTO 9
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13512 /* ~"En fait, peu importe. Mais j'ai d'autres questions…"~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13513 /* ~"En fait, peu importe. Mais j'ai d'autres questions…"~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #13653 /* ~"En fait, peu importe. Mais j'ai d'autres questions…"~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13654 /* ~"En fait, peu importe. Mais j'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13655 /* ~"Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13376 /* ~"Un initié agité, agité." Mortaï fait claquer sa langue en signe de désapprobation. "Il recherche la mort avec une passion *tout à fait* inappropriée pour un Homme-Poussière."~ */
  IF ~~ THEN REPLY #13514 /* ~"Les Hommes-Poussière n'ont pas le droit d'avoir des passions ?"~ */ GOTO 29
  IF ~~ THEN REPLY #13515 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13516 /* ~"Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 29 // from: 13.2 28.0 31.0 33.0 36.0 37.0 40.0 63.2
  SAY #13377 /* ~"Oh oui." Mortaï fronce les sourcils. "Trop de passions, trop d'émotions empêchent d'atteindre la Vraie Mort. La passion est contraire à la philosophie de notre faction."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #13517 /* ~"La Vraie Mort ?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 30
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13518 /* ~"La Vraie Mort ?"~ */ GOTO 30
  IF ~~ THEN REPLY #13519 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13520 /* ~"Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #13378 /* ~"La Vraie Mort est l'état d'oubli paisible auquel tous les Hommes-Poussière aspirent… et aident tous les autres à atteindre." Il glousse en signe de désapprobation. "Tout ce qui lie une âme à cette vie est fui par notre faction, que ces liens soient des possessions ou des émotions. Tu vois… les passions sont une ancre sur l'âme, l'empêchant d'atteindre la Vraie Mort…" Il secoue la tête. "Très mauvais, très mauvais."~ */
  IF ~~ THEN REPLY #13521 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13522 /* ~"Je vois. Très intéressant. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY #13379 /* ~"Une initiée agitée. J'ai entendu dire qu'elle avait contracté une maladie et qu'elle… avait changé, il y a peu. Elle semble amère et fâchée et ne profère plus les croyances des Hommes-Poussière avec la conviction qu'on lui connaissait. Je crains que l'amertume soit une passion qui ne compromette sa position dans la faction."~ */
  IF ~~ THEN REPLY #13523 /* ~"Les Hommes-Poussière n'ont pas le droit d'avoir des passions ?"~ */ GOTO 29
  IF ~~ THEN REPLY #13524 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13525 /* ~"Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 32 // from: 11.0 27.2
  SAY #13380 /* ~"C'est un initié respecté du Quatrième Cercle. Un homme *très* sage." Mortaï te dévisage, légèrement inquiet. "Qu'est-ce que tu lui veux, si j'peux m'permettre ? P'être que j'peux t'aider à sa place."~ */
  IF ~~ THEN REPLY #13526 /* ~"Eh bien, je pensais passer un contrat avec Emoric."~ */ GOTO 34
  IF ~~ THEN REPLY #13527 /* ~Mensonge : "Eh bien, j'avais l'intention de signer un contrat avec Emoric."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_2","GLOBALLaw",-1)
~ GOTO 34
  IF ~~ THEN REPLY #13528 /* ~"Je ne crois pas. Mais j'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13529 /* ~"Non, je ne crois pas que tu puisses m'aider. Au revoir, Mortaï."~ */ GOTO 8
END

IF ~~ THEN BEGIN 33 // from: 11.1 27.3
  SAY #13381 /* ~"C'est un initié respecté du Quatrième Cercle. Un homme *très* sage. Il a abandonné toute attache et toute passion pour cette existence…" Il fait un signe de tête approbateur.~ */
  IF ~~ THEN REPLY #13530 /* ~"Les Hommes-Poussière n'ont pas le droit d'avoir des passions ?"~ */ GOTO 29
  IF ~~ THEN REPLY #13531 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13532 /* ~"Merci du renseignement. Au revoir, Mortaï."~ */ GOTO 56
END

IF ~~ THEN BEGIN 34 // from: 32.0 32.1
  SAY #13382 /* ~Mortaï a l'air visiblement angoissé. "Non, non, mon bon monsieur ! Il ne te donnera pas la moitié du prix que je te donnerais pour ce contrat, ce serait une… *maigre rétribution* par rapport à ce que je pourrais te donner ! Songes-y avant de prendre une décision hâtive !"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13533 /* ~"Tu m'offres combien en plus ?"~ */ DO ~SetGlobal("Mortai_Blackmail","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #13534 /* ~"Je vais y réfléchir. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13535 /* ~"Je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #13383 /* ~"Je…" Mortaï fait claquer sa langue. "Je t'offrirai soixante-quinze… cent pièces de cuivre ! Beaucoup, beaucoup plus que n'importe quel autre Homme-Poussière."~ */
  IF ~~ THEN REPLY #13536 /* ~"Très bien, je vais signer avec toi."~ */ GOTO 12
  IF ~~ THEN REPLY #13537 /* ~"Je vais y réfléchir. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13538 /* ~"Je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 27.4
  SAY #13384 /* ~Son regard devient froid. "Celui qui a les yeux de cuivre ? *Ses* yeux sont comme un livre ouvert." Il fait un demi-cercle sur son cœur. "C'est peut-être un membre des Hommes-Poussière mais je ne signerai *jamais* un Contrat à mort avec lui. Son âme est de cuivre et pour moi, c'est le signe d'une passion excessive pour l'argent. Il n'a des Hommes-Poussière que le nom."~ */
  IF ~~ THEN REPLY #13539 /* ~"Les Hommes-Poussière n'ont pas le droit d'avoir des passions ?"~ */ GOTO 29
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13540 /* ~"Oh, il propose des contrats lui aussi ?"~ */ GOTO 37
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13541 /* ~"Tu veux dire que je pourrais signer un Contrat à mort avec lui ?"~ */ GOTO 40
  IF ~~ THEN REPLY #13542 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13545 /* ~"Merci du renseignement. Au revoir, Mortaï."~ */ GOTO 56
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #13385 /* ~Mortaï glousse en guise de désapprobation. "Oui, mais c'est beaucoup mieux que tu aies signé avec moi qu'avec ce monstre cupide. La cupidité est la passion qui tue et elle est deux fois plus meurtrière pour un Homme-Poussière."~ */
  IF ~~ THEN REPLY #13543 /* ~"Les Hommes-Poussière n'ont pas le droit d'avoir des passions ?"~ */ GOTO 29
  IF ~~ THEN REPLY #13546 /* ~"Et si je passais un contrat avec lui ?"~ */ GOTO 38
  IF ~~ THEN REPLY #13547 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13548 /* ~"Merci du renseignement. Au revoir, Mortaï."~ */ GOTO 56
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #13386 /* ~Mortaï te fixe de son regard froid. "Tu commettrais alors une offense criminelle. Je te ferais arrêter et la loi le permettant, les Hommes-Poussière prélèveraient ton Contrat à mort beaucoup plus *tôt* que prévu."~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #13544 /* ~"Eh bien, j'en ai déjà signé un avec lui. Qu'est-ce que tu vas faire ?"~ */ GOTO 39
  IF ~~ THEN REPLY #13549 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13550 /* ~"Merci du renseignement. Au revoir, Mortaï."~ */ GOTO 56
END

IF ~~ THEN BEGIN 39 // from: 38.0 50.0 52.0
  SAY #13387 /* ~Le visage de Mortaï pâlit… tu ne pensais pas que cela était possible pour un Homme-Poussière. Il bredouille un moment, comme s'il ne savait pas quoi faire. "Tu…" Il se retourne soudain et tape trois fois dans ses mains ; un intense tourbillon de vent traverse le bar.~ */
  IF ~~ THEN REPLY #13551 /* ~"Bon, d'accord. Prépare-toi à mourir…"~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.2
  SAY #13388 /* ~"Oui, mais il vaut mieux que tu signes avec moi plutôt qu'avec ce monstre avide." Mortaï glousse en guise de désapprobation. "La cupidité est la passion qui tue et elle est deux fois plus mortelle pour un Homme-Poussière. Ne perds pas ton temps à parler avec Œil-Cuivré, mon bon ami… traite plutôt avec moi."~ */
  IF ~~ THEN REPLY #13552 /* ~"Les Hommes-Poussière n'ont pas le droit d'avoir des passions ?"~ */ GOTO 29
  IF ~~ THEN REPLY #13553 /* ~"Je vois. Mais j'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13554 /* ~"Je ne crois pas que tu puisses m'aider. Au revoir, Mortaï."~ */ GOTO 8
END

IF ~~ THEN BEGIN 41 // from: 42.1 55.1
  SAY #13389 /* ~Mortaï fronce les sourcils, puis regarde dans les plis de sa robe. "Normalement, je ne garde pas les documents avec moi, mais il se peut que…" Mortaï tire une liasse de papiers de sa robe et commence à parcourir les documents. "Non, je ne l'ai pas sur moi. Aimerais-tu que j'aille le chercher dans l'une des arrière-salles ?"~ */
  IF ~~ THEN REPLY #13555 /* ~"Si c'était possible, j'aimerais le voir."~ */ GOTO 64
  IF ~~ THEN REPLY #13556 /* ~"Pas exactement. Je voudrais annuler ce contrat."~ */ GOTO 43
  IF ~~ THEN REPLY #13557 /* ~"Tu gardes les contrats ici, dans cet établissement ?"~ */ GOTO 55
  IF ~~ THEN REPLY #13558 /* ~"Non, pas pour le moment. J'aurais plutôt quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13559 /* ~"Je voulais juste savoir si c'était avec toi qu'il avait signé son contrat. Tant pis."~ */ GOTO 56
END

IF ~~ THEN BEGIN 42 // from: 2.2 9.4 61.2
  SAY #13390 /* ~Mortaï fronce les sourcils. Il a l'air consterné. "Peut-être…" Il réfléchit un moment. "Mais je ne me souviens pas du nom."~ */
  IF ~~ THEN REPLY #13560 /* ~"Je voudrais annuler ce contrat."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13561 /* ~"Tu as ce contrat sur toi ?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13562 /* ~"Je peux revoir le contrat d'Angyar ?"~ */ GOTO 54
  IF ~~ THEN REPLY #13563 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13564 /* ~"Simple curiosité. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 43 // from: 41.1 42.0 55.0 66.0
  SAY #13391 /* ~Mortaï a l'air de se méfier. "J'ai peur que cela soit impossible. Le contrat est décidé, signé et engage les responsabilités."~ */
  IF ~~ THEN REPLY #13565 /* ~"Ce contrat est en train de gâcher la vie de cet homme."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13566 /* ~"Ce contrat est en train de gâcher la vie de cet homme. Depuis qu'il l'a signé, il est très angoissé… et si de telles émotions perturbent son esprit, il ne pourra peut-être pas accéder à la Vraie Mort."~ */ GOTO 45
  IF ~~ THEN REPLY #13567 /* ~"Est-ce qu'on pourrait annuler ce contrat ?"~ */ GOTO 49
  IF ~~ THEN REPLY #13568 /* ~Bluff : "Je te conseille de me donner ce contrat tout de suite ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13569 /* ~Vérité : "Je te conseille de me donner ce contrat tout de suite ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13570 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13571 /* ~"Simple curiosité. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 44 // from: 43.0 49.2 52.1
  SAY #13392 /* ~Mortaï secoue la tête. "C'est bien malheureux… mais c'est maintenant une question légale et non plus de cœur."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13572 /* ~"Depuis qu'il a signé ce contrat, cet homme est très angoissé… et si de telles émotions perturbent son esprit, il ne pourra peut-être pas accéder à la Vraie Mort."~ */ GOTO 45
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13573 /* ~"Est-ce qu'on pourrait annuler ce contrat ?"~ */ JOURNAL #64581 /* ~J'ai abordé la question du contrat à mort d'Angyar avec Mortaï Envoitombe, mais ce dernier n'a rien voulu savoir. J'ignore comment le faire changer d'avis, mais il doit bien exister un moyen… J'ai remarqué que Mortaï se comportait différemment des autres Hommes-Poussière de Sigil. Peut-être que si je parviens à me renseigner sur les croyances de ces derniers auprès des clients du bar, je trouverai les arguments nécessaires pour lui faire entendre raison.~ */ GOTO 49
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #64585 /* ~"Y a-t-il quoi que ce soit que je puisse faire pour régler ce contrat avec toi ?"~ */ GOTO 49
  IF ~~ THEN REPLY #13574 /* ~Bluff : "Je te conseille de me donner ce contrat tout de suite ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13575 /* ~Vérité : "Je te conseille de me donner ce contrat tout de suite ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13576 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13577 /* ~"Simple curiosité. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.0 49.3 52.2
  SAY #13393 /* ~Mortaï rumine un moment, on dirait que tu l'as acculé dans un angle. "Je ne peux pas. C'est une question légale, mon ami… en outre, le fardeau repose sur le signataire qui doit surmonter ses propres sentiments pour atteindre la Vraie Mort. Je ne peux--"~ */
  IF ~~ THEN REPLY #13578 /* ~"Alors, tu lui refuserais la Vraie Mort au nom d'un simple morceau de parchemin ?"~ */ GOTO 46
  IF ~~ THEN REPLY #13579 /* ~"Est-ce qu'on pourrait annuler ce contrat ?"~ */ GOTO 49
  IF ~~ THEN REPLY #13580 /* ~Bluff : "Je te conseille de me donner ce contrat tout de suite ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13581 /* ~Vérité : "Je te conseille de me donner ce contrat tout de suite ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13582 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13583 /* ~"Simple curiosité. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #13394 /* ~Mortaï soupire et lève les mains comme pour t'apaiser. "Écoute, ce n'est *pas* ce que tu crois…."~ */
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13584 /* ~"Si tu acceptes de condamner l'âme d'un homme pour un simple morceau de papier, c'est que tu méprises la philosophie des Hommes-Poussière. Est-ce que les autres membres de ta faction connaissent tes agissements ? En tout cas, ça ne saurait tarder."~ */ GOTO 47
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13585 /* ~"Si tu acceptes de condamner l'âme d'un homme pour un simple morceau de papier, c'est que tu méprises la philosophie des Hommes-Poussière. Est-ce que les autres membres de ta faction connaissent tes agissements ? En tout cas, ça ne saurait tarder."~ */ GOTO 51
  IF ~~ THEN REPLY #13586 /* ~"Est-ce qu'on pourrait annuler ce contrat ?"~ */ GOTO 49
  IF ~~ THEN REPLY #13587 /* ~Bluff : "Je te conseille de me donner ce contrat tout de suite ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13588 /* ~Vérité : "Je te conseille de me donner ce contrat tout de suite ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13589 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13590 /* ~"Simple curiosité. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #13395 /* ~Mortaï te regarde un moment, ouvre la bouche, la ferme, puis l'ouvre de nouveau. "Par les Neuf Enfers… attends ici." Il baisse la voix pour murmurer. "Et ferme ton râtelier." Il prend un air menaçant et quitte la pièce d'un pas lourd.~ */
  IF ~~ THEN REPLY #13591 /* ~Attends…~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #13396 /* ~Au bout de quelques secondes, il revient. Il tient un morceau de parchemin poussiéreux, qu'il te donne. "Voilà !" Il renifle de façon dédaigneuse. "Tout ce qu'il faut pour la tranquillité d'esprit d'un homme… maintenant pars et ne m'irrite plus avec tes sermons !"~ */
  IF ~~ THEN REPLY #13592 /* ~"Je pars… pour le moment. Au revoir, Mortaï."~ */ DO ~GiveItemCreate("Acontrac",Protagonist,1,0,0)
SetGlobal("Mortai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 43.2 44.1 44.2 45.1 46.2 52.3
  SAY #13397 /* ~Mortaï secoue la tête. "C'est désormais une question légale, qui n'a plus à être discutée."~ */
  IF ~~ THEN REPLY #13593 /* ~Bluff : "Qu'est-ce que tu dis de ça : donne-moi le contrat d'Angyar ou je te tue sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13594 /* ~Vérité : "Qu'est-ce que tu dis de ça : donne-moi le contrat d'Angyar ou je t'égorge sur place."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13595 /* ~"Mais ce contrat est en train de gâcher la vie de cet homme."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13596 /* ~"Mais ce contrat est en train de gâcher la vie de cet homme. Depuis qu'il l'a signé, il est très angoissé… et si de telles émotions perturbent son esprit, il ne pourra peut-être pas accéder à la Vraie Mort."~ */ GOTO 45
  IF ~~ THEN REPLY #13597 /* ~"Bon, d'accord. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13598 /* ~"Alors, au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from:
  SAY #13398 /* ~Mortaï s'immobilise, ses yeux te jaugent. "Si tu prends ce contrat, tu ne quitteras pas ces lieux en vie. Des gardes que tu ne peux pas *voir* planent au-dessus de cet endroit. Si tu réussissais à partir, les Hommes-Poussière veilleraient à ta punition. Ne profère pas de menaces aussi insensées en ma présence."~ */
  IF ~~ THEN REPLY #13599 /* ~"J'en prends le risque. Essaie un peu de m'arrêter."~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 39
  IF ~~ THEN REPLY #13600 /* ~Rends le contrat à Mortaï.~ */ GOTO 66
END

IF ~~ THEN BEGIN 51 // from: 46.1
  SAY #13399 /* ~Mortaï te fixe un moment, ouvre la bouche, la ferme, puis l'ouvre. "Par les Neuf Enfers…" Il fouille dans sa robe et te jette le contrat. "Voilà !" Il renifle de façon dédaigneuse. "Tout ce qu'il faut pour la paix d'esprit d'un homme… pars maintenant."~ */
  IF ~~ THEN REPLY #13601 /* ~"Je pars… pour le moment. Au revoir, Mortaï."~ */ DO ~SetGlobal("Mortai","GLOBAL",2)
GiveItem("Acontrac",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.3 43.4 44.3 44.4 45.2 45.3 46.3 46.4 49.0 49.1
  SAY #13400 /* ~Mortaï s'immobilise, ses yeux te jaugent. "Si tu sors tes armes ici, tu ne vivras pas assez longtemps pour les utiliser. Des gardes que tu ne peux pas *voir* planent au-dessus de cet endroit. Si tu arrivais à partir, les Hommes-Poussière veilleraient à ta punition. Pas de menaces insensées en ma présence."~ */
  IF ~~ THEN REPLY #13602 /* ~"J'en prends le risque… Prépare-toi à mourir."~ */ GOTO 39
  IF ~~ THEN REPLY #13603 /* ~"Ce contrat est en train de gâcher la vie de cet homme."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13604 /* ~"Ce contrat est en train de gâcher la vie de cet homme. Depuis qu'il l'a signé, il est très angoissé… et si de telles émotions perturbent son esprit, il ne pourra peut-être pas accéder à la Vraie Mort."~ */ GOTO 45
  IF ~~ THEN REPLY #13605 /* ~"Est-ce qu'il existe un autre moyen d'annuler ce contrat ?"~ */ GOTO 49
  IF ~~ THEN REPLY #13606 /* ~"Alors, laisse tomber. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13607 /* ~"Alors, peu importe."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from:
  SAY #13401 /* ~(VIDE)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 9.5 42.2 55.2 61.3 66.1
  SAY #13402 /* ~Mortaï fouille dans les plis de sa robe et te tend le contrat. "Voilà, monsieur… Angyar est devenu très riche avec une simple signature." Tu prends un moment pour examiner le contrat ; il semble authentique… et très officiel. ~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13608 /* ~Fais semblant de l'examiner, remplace le parchemin par le faux contrat, puis rends-le à Mortaï.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13609 /* ~Fais semblant de l'examiner, remplace le parchemin par le faux contrat, puis rends-le à Mortaï.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13610 /* ~Fais semblant de l'examiner, remplace le parchemin par le faux contrat, puis rends-le à Mortaï.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13611 /* ~"Très bien… tout a l'air en ordre."~ */ GOTO 66
END

IF ~~ THEN BEGIN 55 // from: 41.2
  SAY #13403 /* ~"Jusqu'à ce qu'ils soient expédiés à la Morgue, oui. J'ai signé beaucoup de contrats dans ma vie, beaucoup de contrats… y compris le mien. Tout cela pour les traîner tous à la Morgue."~ */
  IF ~~ THEN REPLY #13613 /* ~"Je voudrais annuler le contrat que tu as passé avec Angyar."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13614 /* ~"Tu as le contrat que tu as passé avec Angyar sur toi ?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13615 /* ~"Je peux revoir le contrat d'Angyar ?"~ */ GOTO 54
  IF ~~ THEN REPLY #13616 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13617 /* ~"Simple curiosité. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 9.9 10.3 11.3 22.1 23.1 24.4 25.3 26.2 27.10 28.2 29.3 30.1 31.2 33.2 36.4 37.3 38.2 41.4 42.4 43.6 44.6 45.5 46.6 49.5 52.5 55.4 66.3
  SAY #13404 /* ~Mortaï fait un signe de tête alors que tu t'apprêtes à partir. "Hmmmm…" Son visage a une expression étrange.~ */
  IF ~~ THEN REPLY #13618 /* ~"Il y a un problème ?"~ */ GOTO 57
  IF ~~ THEN REPLY #13619 /* ~"Au revoir, Mortaï."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #13405 /* ~Mortaï fronce les sourcils. "Pardonne-moi, je *dois* te le demander une fois encore… es-tu sûr qu'on ne s'est pas déjà rencontrés ?"~ */
  IF ~~ THEN REPLY #13620 /* ~"C'est possible. Je ne me souviens pas de toi."~ */ GOTO 58
  IF ~~ THEN REPLY #13621 /* ~"Non, je ne crois pas."~ */ GOTO 58
  IF ~~ THEN REPLY #13622 /* ~"Au revoir, Mortaï."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #13406 /* ~"Hmmm." Mortaï secoue la tête. "Bon, peu importe."~ */
  IF ~~ THEN REPLY #13623 /* ~"Au revoir, Mortaï."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 56.1 57.2 58.0
  SAY #13407 /* ~"Oui, adieu, adieu…" Mortaï t'examine alors que tu t'éloignes et tu l'entends marmonner. "Il y a quelque chose…"~ */
  IF ~~ THEN REPLY #13624 /* ~Pars.~ */ EXIT
END

IF ~  Global("Mortai","GLOBAL",2)
~ THEN BEGIN 60 // from:
  SAY #13408 /* ~"Ah…" Mortaï se renfrogne lorsque tu t'approches, faisant claquer sa langue. "Encore toi… es-tu venu pour que je cède d'autres contrats au nom de la faction des Hommes-Poussière ?" Il fronce les sourcils, puis soupire. "Bon, peu importe, peu importe, le passé est le passé… " Il reprend son ancien sourire et acquiesce. "Que puis-je faire pour toi ?"~ */
  IF ~~ THEN REPLY #13625 /* ~"J'ai des questions à te poser…"~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #13626 /* ~"Peu importe. Il faut que je m'en aille."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ EXIT
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN BEGIN 61 // from:
  SAY #13409 /* ~"Ah, voyageur !" Mortaï sourit en te voyant. "Te revoilà… que puis-je pour toi en cette belle journée sigilienne ?" Il a l'air plein d'espoir. "Peut-être es-tu venu signer le contrat ?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13627 /* ~"Le contrat ?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13628 /* ~"Le contrat ?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13629 /* ~"C'est avec toi qu'Angyar a signé son Contrat à mort ?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13630 /* ~"Je peux voir le contrat que tu as signé avec Angyar ?"~ */ GOTO 54
  IF ~~ THEN REPLY #13631 /* ~"Non, j'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13632 /* ~"Je ne crois pas que tu puisses m'aider. Je dois partir."~ */ GOTO 8
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",1)
~ THEN BEGIN 62 // from:
  SAY #13410 /* ~"Ah, voyageur !" Mortaï sourit en te voyant. "Te revoilà… que puis-je pour toi en cette belle journée sigilienne ?"~ */
  IF ~~ THEN REPLY #13633 /* ~"J'ai des questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #13634 /* ~"Peu importe. Il faut que je m'en aille."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 13.3
  SAY #13411 /* ~"Empressé ?! Moi…" Mortaï fronce les sourcils, puis tousse poliment. "… veux-tu signer le contrat oui ou non ? Sinon…"~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13635 /* ~"Je voudrais signer le contrat."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",0)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13636 /* ~"Je voudrais signer le contrat."~ */ GOTO 21
  IF ~~ THEN REPLY #13637 /* ~"C'est un problème d'afficher ses émotions ?"~ */ GOTO 29
  IF ~~ THEN REPLY #13638 /* ~"Excuse-moi, je ne veux pas signer ce contrat. Mais j'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13639 /* ~"Je ne veux pas te vexer… Mais je ne crois pas que tu puisses m'aider. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 64 // from: 41.0
  SAY #13412 /* ~"Attends un moment…" Il s'éloigne de la table.~ */
  IF ~~ THEN REPLY #13640 /* ~Attends qu'il revienne…~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
GiveItemCreate("Acontrac",Myself,1,0,0)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #64582 /* ~Apparemment, Mortaï n'avait pas le contrat à mort d'Angyar sur lui. Il a dû aller le chercher… mais il ne l'a pas remis dans la salle de derrière quand il en a eu fini.~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 69.0
  SAY #13413 /* ~"Voilà, monsieur… Angyar… un type bien morne, il a eu vite fait de signer…" Il fait claquer sa langue. "Et voilà un gars *bien* plus riche." Tu prends un moment pour examiner le contrat, il a l'air authentique… et très officiel. ~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13641 /* ~Fais semblant de l'examiner, remplace le parchemin par le faux contrat, puis rends-le à Mortaï.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13642 /* ~Fais semblant de l'examiner, remplace le parchemin par le faux contrat, puis rends-le à Mortaï.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13643 /* ~Fais semblant de l'examiner, remplace le parchemin par le faux contrat, puis rends-le à Mortaï.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13644 /* ~"Très bien… tout a l'air en ordre."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 50.1 54.3 65.3 67.0 68.0
  SAY #13414 /* ~Tu redonnes le document à Mortaï et tu vois qu'il le rentre dans ses robes plutôt que de le remettre dans l'arrière-salle. Mortaï fait claquer sa langue. "Est-ce que cela répond à tes questions sur le contrat ?"~ */
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13646 /* ~"Je voudrais annuler ce contrat."~ */ GOTO 43
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13647 /* ~"Je peux revoir le contrat d'Angyar ?"~ */ GOTO 54
  IF ~~ THEN REPLY #13648 /* ~"Oui, mais j'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #13649 /* ~"Oui, c'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 54.0 65.0
  SAY #13415 /* ~En examinant le document, tu te détournes un instant de Mortaï… tu es sur le point d'échanger les contrats mais Mortaï tousse. "… je serais prudent avec ce contrat. S'il se perdait, je serais forcé d'entamer une procédure." Il fait claquer sa langue et ses doigts. "Le contrat, s'il te plaît…"~ */
  IF ~~ THEN REPLY #13650 /* ~Rends-le-lui.~ */ GOTO 66
END

IF ~~ THEN BEGIN 68 // from: 54.1 54.2 65.1 65.2
  SAY #13416 /* ~En examinant le document, tu te détournes brièvement de Mortaï et tu échanges les contrats. Il ne semble avoir rien remarqué.~ */
  IF ~~ THEN REPLY #13652 /* ~Rends-lui le 'Contrat d'Angyar'.~ */ DO ~DestroyItemObject("FalseCon",Protagonist,FALSE)
AddexperienceParty(500)
~ GOTO 66
END

IF ~~ THEN BEGIN 69 // from: 64.0
  SAY #48404 /* ~Au bout d'un moment Mortaï revient, un bout de parchemin poussiéreux en mains. Il te le montre, mais il ne le lâche pas.~ */
  IF ~~ THEN REPLY #48405 /* ~Examine le parchemin.~ */ GOTO 65
END
