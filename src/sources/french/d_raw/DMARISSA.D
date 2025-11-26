// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARISSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARISSA~

IF ~  Global("Marissa","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2957 /* ~En jetant un coup d'œil à la silhouette qui se tient derrière le paravent, tu réussis à peine à déterminer qu'il s'agit d'une forme féminine tant il fait noir. Elle se tourne vers toi, mais tu es incapable de distinguer les traits de son visage.~ */
  IF ~~ THEN REPLY #2959 /* ~"Bonjour…"~ */ DO ~SetGlobal("Marissa","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2958 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40451 /* ~La silhouette répond d'une voix lente et menaçante, qui te fait penser à une dague en acier raclant contre la pierre : "Oui ? Tu es venu parler à Marissa, c'est ça ? C'est plutôt mal élevé de ta part d'entrer dans une pièce sombre, d'arriver derrière mon paravent comme un… malpropre imprudent." Tu entends un faible murmure, comme une légère brise… ou le sifflement de serpents.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 428
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40452 /* ~"Mes excuses… je ne savais pas s'il y avait quelqu'un."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40453 /* ~"J'avais des questions…"~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40454 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #40455 /* ~La femme émet un léger soupir d'exaspération. "Mais il semble bien qu'il y *ait* quelqu'un dans cette pièce, non ? Tu ne devrais pas partir maintenant ?"~ */
  IF ~~ THEN REPLY #40456 /* ~"Pas tout de suite… j'ai quelques questions."~ */ GOTO 4
  IF ~~ THEN REPLY #40457 /* ~"Si… au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #40458 /* ~"*Vraiment* ?" Tu entends un faible sifflement ; elle parle de nouveau et sa voix est chargée de sarcasme. "Oooh, je meurs d'impatience…"~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.1 6.1 7.1 8.0 9.1 10.2 11.1 12.2 13.1 14.1 15.2 16.2 17.2 18.1 20.3 21.1 24.3 26.6 27.1 28.2 29.0 31.1 32.0 35.6 37.2 38.1 39.1 40.0 41.0 42.0 43.0 44.0 45.0 46.2 47.0 48.0 50.0 51.1 52.0 53.1 54.0 55.2 57.0 58.0
  SAY #40459 /* ~"Demande."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40460 /* ~"J'ai trouvé ton Voile pourpre…"~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40461 /* ~"J'ai trouvé ton Voile pourpre…"~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40462 /* ~"Pourquoi est-ce que tu restes derrière ce paravent ?"~ */ GOTO 12
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40463 /* ~"Pourquoi est-ce que tu restes derrière ce paravent ?"~ */ GOTO 50
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40464 /* ~"Pourquoi est-ce qu'il fait si sombre ici ?"~ */ GOTO 9
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40465 /* ~"Pourquoi est-ce qu'il fait si sombre ici ?"~ */ GOTO 50
  IF ~~ THEN REPLY #40466 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 10
  IF ~~ THEN REPLY #40467 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 38
  IF ~  Global("Veil_Quest","AR0605",0)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40469 /* ~"Est-ce que tu pourrais transformer un Lim-Lim en statue, par exemple ?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40470 /* ~"Est-ce que tu pourrais transformer un Lim-Lim en statue, par exemple ?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40471 /* ~"Est-ce que tu pourrais transformer un Lim-Lim en statue, par exemple ?"~ */ GOTO 55
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40472 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 52
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67846 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 52
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40473 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ JOURNAL #66743 /* ~J'ai demandé à l'une des prostituées si elle savait si Kesai-Serris était vraiment la fille de Ravel, et elle m'a conseillé d'aller poser ma question à Juliette. Apparemment, Kesai et Juliette étaient de bonnes amies avant que cette dernière ne rencontre Montague.~ */ GOTO 41
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40474 /* ~"On m'a dit qu'on t'avait vu sortir discrètement de la chambre de Viviane récemment… est-ce que ça pourrait avoir un rapport avec la disparition de son parfum ?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~J'ai posé des questions à Marissa après lui avoir dit qu'on l'avait vue sortir de la chambre de Viviane, mais elle a refusé de me dire quoi que ce soit.~ */ GOTO 51
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40475 /* ~"On m'a dit qu'on t'avait vu sortir discrètement de la chambre de Viviane récemment… est-ce que ça pourrait avoir un rapport avec la disparition de son parfum ?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~J'ai posé des questions à Marissa après lui avoir dit qu'on l'avait vue sortir de la chambre de Viviane, mais elle a refusé de me dire quoi que ce soit.~ */ GOTO 45
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40476 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 44
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40477 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ JOURNAL #66742 /* ~J'ai interrogé l'une des prostituées de la Maison de tolérance au sujet de Ravel, et elle m'a dit d'aller voir Yvonne. Celle-ci recueille apparemment les histoires, et il y a de fortes chances qu'elle en connaisse quelques-unes au sujet de Ravel.~ */ GOTO 43
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40478 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 42
  IF ~~ THEN REPLY #40479 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 10.0 11.0
  SAY #40468 /* ~Tu entends un léger sifflement. "Parce que quelque chose qui m'appartient a disparu, et quelque chose que je ne désirais pas s'est retrouvé sur le pas de la porte à la place."~ */
  IF ~~ THEN REPLY #40480 /* ~"Qu'est-ce qui a disparu ?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels, a perdu son voile pourpre. Elle ne m'a pas demandé de le chercher, mais je pense que je vais poser quelques questions alentour, des fois que quelqu'un saurait où il se trouve.~ */ GOTO 6
  IF ~~ THEN REPLY #40481 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40482 /* ~"Bon, j'y vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 51.0
  SAY #40483 /* ~"Mon voile… mon Voile pourpre. Tu ne l'aurais pas vu, par hasard ?"~ */
  IF ~~ THEN REPLY #40484 /* ~"Non… il sert à quoi ? C'est juste un voile normal ?"~ */ GOTO 7
  IF ~~ THEN REPLY #40485 /* ~"Non. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #40486 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 27.0 53.0
  SAY #40487 /* ~Marissa soupire en silence. "Non, pas tout à fait. Il m'aide à communiquer… face à face avec les gens, je veux dire."~ */
  IF ~~ THEN REPLY #40488 /* ~"Pourquoi est-ce que tu as besoin de te cacher le visage ?"~ */ GOTO 8
  IF ~~ THEN REPLY #40489 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40490 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40491 /* ~"J'en ai assez de ces questions idiotes ! Tu es vraiment assommant et exaspérant ! Qu'est-ce que tu *veux* ?"~ */
  IF ~~ THEN REPLY #40492 /* ~"Juste les réponses à quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #40493 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 12.0
  SAY #40494 /* ~"Pour éviter tout… accident… embarrassant. Bon, qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #40495 /* ~"Je veux que tu viennes à la lumière."~ */ GOTO 13
  IF ~~ THEN REPLY #40496 /* ~"Juste les réponses à quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #40497 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY #40498 /* ~"Je suis assise ici, plongée dans mes pensées. J'écoute ta voix. Le silence issu de ces deux sources - au sens littéral, puis au sens figuré - est assourdissant."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40499 /* ~"Pourquoi est-ce que tu as si mauvais caractère ?"~ */ GOTO 5
  IF ~~ THEN REPLY #40500 /* ~"Je suis curieux d'entendre tes pensées…"~ */ GOTO 11
  IF ~~ THEN REPLY #40501 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40502 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40503 /* ~"Oh, je ne crois pas. Tu ne les trouverais pas très flatteuses en ce moment. Qu'est-ce que tu *veux ?*"~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40504 /* ~"Pourquoi est-ce que tu as si mauvais caractère ?"~ */ GOTO 5
  IF ~~ THEN REPLY #40505 /* ~"Juste les réponses à quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #40506 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY #40507 /* ~"Tu veux que je m'éloigne de ce paravent, que j'aille à la lumière et que je te parle en face ?" Marissa rit, et tu entends comme des écailles glissant les unes sur les autres. "Nan, je ne crois pas. L'obscurité me convient parfaitement et je suis sûre qu'elle te va aussi."~ */
  IF ~~ THEN REPLY #40508 /* ~"Pourquoi est-ce qu'il fait si sombre ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #40509 /* ~"S'il te plaît, viens à la lumière…"~ */ GOTO 13
  IF ~~ THEN REPLY #40510 /* ~"Alors j'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40511 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 12.1
  SAY #40512 /* ~"Nan, et ce n'est pas en ajoutant 's'il te plaît' que tu réussiras à me convaincre. Bon, qu'est-ce que tu veux *vraiment ?* Tu n'as quand même pas fait tout ce chemin pour me *voir*…"~ */
  IF ~~ THEN REPLY #40513 /* ~"Je *veux* savoir à quoi tu ressembles…"~ */ GOTO 14
  IF ~~ THEN REPLY #40514 /* ~"Alors j'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40515 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40516 /* ~"Non, tu ne le veux pas."~ */
  IF ~~ THEN REPLY #40517 /* ~"Oh, mais si."~ */ GOTO 15
  IF ~~ THEN REPLY #40518 /* ~"Alors j'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40519 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40520 /* ~"Et à quoi tu ressembles, *toi* ? L'obscurité nous cache tous les deux. Tu veux jouer à un jeu ? Je m'ennuie à mourir. Laisse-moi deviner… tu es un humain de sexe masculin ?"~ */
  IF ~~ THEN REPLY #40521 /* ~"Oui."~ */ GOTO 16
  IF ~~ THEN REPLY #40522 /* ~"Je crois…"~ */ GOTO 17
  IF ~~ THEN REPLY #40523 /* ~"Pas de jeux. J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40524 /* ~"Je n'ai pas envie de jouer maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #40525 /* ~"Est-ce que tu es… blessé à la gorge ?"~ */
  IF ~~ THEN REPLY #40526 /* ~"Oui."~ */ GOTO 20
  IF ~~ THEN REPLY #40527 /* ~"Je ne peux pas voir, mais je crois qu'oui."~ */ GOTO 20
  IF ~~ THEN REPLY #40528 /* ~"Plus de jeux. J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40529 /* ~"Je n'ai pas envie de jouer maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #40530 /* ~"Tu 'crois' ? Comment se fait-il que tu ne le saches pas ?"~ */
  IF ~~ THEN REPLY #40531 /* ~"C'est un peu compliqué."~ */ GOTO 18
  IF ~~ THEN REPLY #40532 /* ~"Je ne suis vraiment pas sûr de qui je suis."~ */ GOTO 19
  IF ~~ THEN REPLY #40533 /* ~"Laisse tomber. J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40534 /* ~"Peu importe. Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #40535 /* ~"Vraiment ? Ça doit être trop dur à comprendre pour un esprit simple comme le mien."~ */
  IF ~~ THEN REPLY #40536 /* ~"Je ne suis vraiment pas sûr de qui je suis."~ */ GOTO 19
  IF ~~ THEN REPLY #40537 /* ~"Laisse tomber. J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40538 /* ~"Peu importe. Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #40539 /* ~"Ah bon ? C'est presque… intéressant…" Tu entends un sifflement dans l'obscurité.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 19.0
  SAY #40540 /* ~"Hum… décris-toi."~ */
  IF ~~ THEN REPLY #40541 /* ~Vérité : "Je suis grand, musclé et atrocement balafré."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marissa_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #40542 /* ~Mensonge : "Je suis grand, athlétique… très beau…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marissa_1","GLOBALLaw",-1)
~ GOTO 22
  IF ~~ THEN REPLY #40543 /* ~"Toi d'abord, Marissa."~ */ GOTO 24
  IF ~~ THEN REPLY #40544 /* ~"Non merci. J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40545 /* ~"J'suis pas d'humeur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 37.1
  SAY #40546 /* ~"Vraiment ? Hmmm…" Elle s'interrompt un instant. "Comment est-ce que tu as été aussi atrocement balafré ? Attends… peu importe. Je ne veux pas le savoir."~ */
  IF ~~ THEN REPLY #40547 /* ~"Maintenant, fais-moi une description de toi."~ */ GOTO 36
  IF ~~ THEN REPLY #40548 /* ~"D'accord, J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40549 /* ~"Très bien. Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #40550 /* ~"Oh, vraiment ? Approche - *très* près de moi, pour que nous puissions nous voir…" Le léger sifflement semble venir d'elle…~ */
  IF ~~ THEN REPLY #40551 /* ~Approche-toi d'elle.~ */ GOTO 23
  IF ~~ THEN REPLY #40552 /* ~Garde tes distances.~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 22.0 37.0
  SAY #40553 /* ~Tu t'avances tellement que ton visage touche presque celui de Marissa, et tu louches pour la distinguer. Ses traits sont magnifiques, sa peau est d'une pâleur immaculée, mais sa chevelure est une masse d'aspics frémissants et sifflants. Les yeux de Marissa - d'un bleu lumineux - te paraissent étranges, jusqu'à ce que tu te rendes compte que ce sont en fait des tatouages sur ses paupières fermées. "Est-ce que tu es prêt pour la surprise ?", demande-t-elle, tandis qu'un sourire mauvais se forme sur ses lèvres…~ */
  IF ~~ THEN REPLY #40554 /* ~Éloigne-toi.~ */ GOTO 48
  IF ~~ THEN REPLY #40555 /* ~"Bien sûr. Surprends-moi."~ */ GOTO 49
END

IF ~~ THEN BEGIN 24 // from: 20.2
  SAY #40556 /* ~"Tu veux faire un échange de qualificatifs ? Alors je commence par 'bien faite.' Tu dois trouver le qualificatif suivant."~ */
  IF ~~ THEN REPLY #40557 /* ~"Grand."~ */ GOTO 25
  IF ~~ THEN REPLY #40558 /* ~"Musclé."~ */ GOTO 25
  IF ~~ THEN REPLY #40559 /* ~"Balafré."~ */ GOTO 25
  IF ~~ THEN REPLY #40560 /* ~"Non… pas de jeux. J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40561 /* ~"Je n'ai pas envie de jouer maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #40562 /* ~"Mmm-hmm. Je dirai… pâle." Vous échangez des qualificatifs sur un ton léger jusqu'à ce qu'elle se décrive comme étant une femme bien faite, pâle et magnifique, avec une langue fourchue, une chevelure constituée d'aspics frémissants, et des yeux de braise… et tu en déduis qu'elle doit les garder fermés.~ */
  IF ~~ THEN REPLY #40563 /* ~"Tu es une fiélonne ?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa, l'une des prostituées de la Maison de tolérance, prétend pouvoir pétrifier les êtres vivants d'un seul regard.~ */ GOTO 26
  IF ~~ THEN REPLY #40564 /* ~"À t'entendre, je t'imagine… très exotique, Marissa."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa, l'une des prostituées de la Maison de tolérance, prétend pouvoir pétrifier les êtres vivants d'un seul regard.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0 36.0
  SAY #40565 /* ~Marissa rit légèrement, et son rire est accompagné d'un faible sifflement. "Non, pas du tout… mais j'ai des pouvoirs que certains pourraient juger diaboliques. Mon regard transforme les êtres vivants en pierre, par exemple. D'êtres de chair en statues en un battement de cil…"~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40566 /* ~"Les êtres vivants en pierre ? Est-ce que tu pourrais transformer un Lim-Lim en statue, par exemple ?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels, a perdu son voile pourpre. Elle ne m'a pas demandé de le chercher, mais je pense que je vais poser quelques questions alentour, des fois que quelqu'un saurait où il se trouve.~ */ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40567 /* ~"Les êtres vivants en pierre ? Est-ce que tu pourrais transformer un Lim-Lim en statue, par exemple ?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40568 /* ~"Les êtres vivants en pierre ? Est-ce que tu pourrais transformer un Lim-Lim en statue, par exemple ?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40569 /* ~"Ça doit être gênant, par moment."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels, a perdu son voile pourpre. Elle ne m'a pas demandé de le chercher, mais je pense que je vais poser quelques questions alentour, des fois que quelqu'un saurait où il se trouve.~ */ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40570 /* ~"Ça doit être gênant, par moment."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40571 /* ~"Ça doit être gênant, par moment."~ */ GOTO 29
  IF ~~ THEN REPLY #40572 /* ~"Intéressant. J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40573 /* ~"Je vois. Je m'en vais, maintenant. Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.3 35.3
  SAY #40574 /* ~"Tu crois ? C'est sans doute pour ça que je suis assise ici, seule, dans le noir et cachée derrière un paravent." Bien que tu ne puisses pas voir Marissa, tu es certain qu'elle ricane. Elle soupire soudain. "Si seulement je savais où est passé mon Voile pourpre. Tu ne l'aurais pas vu, par hasard ?"~ */
  IF ~~ THEN REPLY #40575 /* ~"Non… il sert à quoi ? C'est juste un voile normal ?"~ */ GOTO 7
  IF ~~ THEN REPLY #40576 /* ~"Non. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #40577 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 35.4
  SAY #40578 /* ~"Tu crois ? C'est sans doute pour ça que je suis assise ici, seule, dans le noir et cachée derrière un paravent." Bien que tu ne puisses pas voir Marissa, tu es certain qu'elle ricane. Elle soupire soudain. "Si seulement je savais où est passé mon Voile pourpre."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40579 /* ~"J'ai ton voile ici-même, Marissa…"~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40580 /* ~"J'ai ton voile ici-même, Marissa…"~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40581 /* ~"J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40582 /* ~"Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.5 35.5
  SAY #40583 /* ~"Mon Voile pourpre me permet de me déplacer en évitant ce risque ; il n'a donc rien de dangereux."~ */
  IF ~~ THEN REPLY #40584 /* ~"J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40585 /* ~"Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 4.0 4.1 28.0 28.1 46.0 46.1
  SAY #40586 /* ~"Alors tu peux me le donner ?"~ */
  IF ~~ THEN REPLY #40587 /* ~"Bien sûr. Voilà…"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~J'ai rendu son voile pourpre à Marissa. Pour ce qu'il m'a servi, de toute façon…~ */ GOTO 31
  IF ~~ THEN REPLY #40588 /* ~"D'abord, j'ai besoin de quelque chose en échange…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marissa_1","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0 33.0 34.0
  SAY #40589 /* ~Tu tiens le Voile pourpre et tu la sens qui le prend dans tes mains. "Ah. Oui, ça va beaucoup mieux." Deux points rouges et brillants apparaissent devant toi lorsqu'elle ouvre les yeux. "Alors, voilà à quoi tu ressembles… j'aurais peut-être mieux fait de garder les yeux fermés."~ */
  IF ~~ THEN REPLY #40590 /* ~"Surveille ta langue de vipère, Marissa."~ */ GOTO 32
  IF ~~ THEN REPLY #40591 /* ~"J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40592 /* ~"Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #40593 /* ~"Ne me lance pas. "~ */
  IF ~~ THEN REPLY #40594 /* ~"J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40595 /* ~"Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #40596 /* ~"Bien sûr… ce que tu peux être *intéressé* ! Tiens… approche, attrape mon poignet… tu vas sentir un bracelet en or, là. Prends-le, il est à toi. Il te sera plus utile que mon voile, je peux te l'assurer."~ */
  IF ~~ THEN REPLY #40597 /* ~"En fait… peu importe. Tiens, prends ton voile."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~J'ai rendu son voile pourpre à Marissa. Pour ce qu'il m'a servi, de toute façon…~ */ GOTO 31
  IF ~~ THEN REPLY #40598 /* ~Prends le bracelet.~ */ DO ~GiveItemCreate("GolBra",Protagonist,1,0,0)
~ JOURNAL #39520 /* ~J'ai rendu son voile pourpre à Marissa, mais seulement après lui avoir demandé une récompense en échange.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #40599 /* ~Tu retires le bracelet du poignet délicat de Marissa…~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 35 // from: 25.1 36.1
  SAY #40600 /* ~Marissa rit légèrement et le bruit s'accompagne d'un léger sifflement. "Oh, mais je le suis, je le suis. Et mon seul regard transforme les êtres vivants en pierre… d'êtres de chair, elles deviennent statues d'un simple battement de cil."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40601 /* ~"Les êtres vivants en pierre ? Est-ce que tu pourrais transformer un Lim-Lim en statue, par exemple ?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40602 /* ~"Les êtres vivants en pierre ? Est-ce que tu pourrais transformer un Lim-Lim en statue, par exemple ?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40603 /* ~"Les êtres vivants en pierre ? Est-ce que tu pourrais transformer un Lim-Lim en statue, par exemple ?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40604 /* ~"Ça doit être gênant, par moment."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40605 /* ~"Ça doit être gênant, par moment."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40606 /* ~"Ça doit être gênant, par moment."~ */ GOTO 29
  IF ~~ THEN REPLY #40607 /* ~"Intéressant. J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40608 /* ~"Je vois. Je m'en vais, maintenant. Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 21.0
  SAY #40609 /* ~Marissa se décrit comme étant une femme bien faite, pâle et magnifique, avec une langue fourchue, une chevelure constituée d'aspics frémissants, et des yeux de braise… et tu en déduis qu'elle doit les garder fermés.~ */
  IF ~~ THEN REPLY #40610 /* ~"Tu es une fiélonne ?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa, l'une des prostituées de la Maison de tolérance, prétend pouvoir pétrifier les êtres vivants d'un seul regard.~ */ GOTO 26
  IF ~~ THEN REPLY #40611 /* ~"À t'entendre, je t'imagine… très exotique, Marissa."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa, l'une des prostituées de la Maison de tolérance, prétend pouvoir pétrifier les êtres vivants d'un seul regard.~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #40612 /* ~"Doutes-tu de la façon dont je me représente tes traits ? Se pourrait-il que tu ne sois pas ce que tu sembles être ?"~ */
  IF ~~ THEN REPLY #40613 /* ~Approche-toi d'elle.~ */ GOTO 23
  IF ~~ THEN REPLY #40614 /* ~"D'accord… je suis grand, musclé et atrocement balafré."~ */ GOTO 21
  IF ~~ THEN REPLY #40615 /* ~"Laisse tomber. J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40616 /* ~"Peu importe maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.7
  SAY #40617 /* ~"Non, je ne suis pas d'humeur. Je suis sûre que l'une des filles serait contente de tout te dire sur la petite école de Maîtresse Grâce pour les Sensats en herbe… va trouver l'une d'elles."~ */
  IF ~~ THEN REPLY #40618 /* ~"Un Sensat ?"~ */ GOTO 39
  IF ~~ THEN REPLY #40619 /* ~"Pas tout de suite. J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40620 /* ~"J'irai peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40621 /* ~"Oui, oui… un petit groupe sans intérêt consacré à l'expérience et ce genre de choses. Je n'ai certainement pas besoin d'avoir ma carte de membre pour *être* une Sensate… et une fois que j'aurai pu entrer dans la Salle des Fêtes et que je me serai lassée de ses sensoriums, je passerai à autre chose, tout simplement."~ */
  IF ~~ THEN REPLY #40622 /* ~"Parle-moi des sensoriums."~ */ GOTO 40
  IF ~~ THEN REPLY #40623 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40624 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40625 /* ~"Ce sont des salles où les sensations sont conservées dans des objets qu'on appelle pierres sensorielles. Il y en a deux : un sensorium public dans la Salle des Fêtes, ouvert à tout le monde, et un autre réservé aux membres de la Société des Sensations - les Sensats."~ */
  IF ~~ THEN REPLY #40626 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40627 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.13
  SAY #40628 /* ~"Je l'ignore… mais je n'en serais guère surprise. Pour l'amour d'Héra, *regarde-la* ! Mais demande à Juliette - elles étaient amies… avant l'arrivée de Montague."~ */
  IF ~~ THEN REPLY #40629 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40630 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.18
  SAY #40631 /* ~"Je passe beaucoup de temps ici, dans ma chambre, mais je crois que même *moi*, je le saurais si une dixième étudiante arrivait. Il n'y en a pas en ce moment."~ */
  IF ~~ THEN REPLY #40632 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40633 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 4.17
  SAY #40634 /* ~"Non. Et toi ?" Tu perçois un soupir d'ennui. "Ça, il faut le demander à Yvonne. Elle recueille toutes sortes de récits, et pourra sans doute te dire quelque chose d'utile."~ */
  IF ~~ THEN REPLY #40635 /* ~"Peu importe. J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40636 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 4.16
  SAY #40637 /* ~"Non, aucune idée."~ */
  IF ~~ THEN REPLY #40638 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40639 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 4.15
  SAY #40640 /* ~Marissa ne dit rien, mais un sifflement furieux jaillit de l'obscurité qui l'entoure. "Oui, je suis déjà entrée dans la chambre de Viviane pour lui prendre quelques parfums… mais je doute que tu rencontres ici quelqu'un qui ne l'a jamais fait. Si tu sous-entends que j'ai son parfum *personnel*, eh bien… n'hésite pas à renifler partout. Tu ne le trouveras ni sur moi ni dans ma chambre, je peux te l'assurer."~ */
  IF ~~ THEN REPLY #40641 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40642 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",1)
~ THEN BEGIN 46 // from:
  SAY #40643 /* ~La voix froide et cruelle de Marissa siffle dans l'obscurité. "Il revient ! Tu as une raison de venir cette fois-ci, j'imagine ? Ou est-ce que c'est encore pour me poser tes questions idiotes ?"~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40644 /* ~"En fait, je te rapporte ton Voile pourpre…"~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40645 /* ~"En fait, je te rapporte ton Voile pourpre…"~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40646 /* ~"C'est encore pour des questions 'inutiles', Marissa."~ */ GOTO 4
  IF ~~ THEN REPLY #40647 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #40648 /* ~Les yeux rouges de Marissa brillent dans l'obscurité. "Oui ?" Un léger sifflement accompagne sa question.~ */
  IF ~~ THEN REPLY #40649 /* ~"J'ai quelques questions, Marissa…"~ */ GOTO 4
  IF ~~ THEN REPLY #40650 /* ~"Rien, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 23.0
  SAY #40651 /* ~Tu détournes les yeux au moment où Marissa ouvre les siens ; du coin de l'œil, tu devines la lumière froide et rouge qui émane d'eux. "Oh…" Elle soupire, déçue. "Tu a détourné le regard ! Et tu ne ressembles *en rien* à ta description… c'est vraiment dommage. Allez, regarde-moi ; j'ai refermé les yeux."~ */
  IF ~~ THEN REPLY #40652 /* ~"J'avais une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40653 /* ~"C'est pas grave… je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.1
  SAY #40654 /* ~Les yeux de Marissa s'ouvrent soudain et te baignent de leur lumière rouge et glacée… c'est la dernière chose que voient tes yeux avant de se transformer - tout comme le reste de ton corps - à jamais en pierre.~ */
  IF ~~ THEN REPLY #40655 /* ~"Gaaah…"~ */ DO ~UseItem("M_Gaze",Protagonist)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 4.3 4.5
  SAY #40656 /* ~Marissa reste un instant silencieuse avant de te répondre. "Au début, c'était parce que j'avais perdu mon Voile pourpre… mais maintenant… je ne sais pas. C'est peut-être parce que je me suis habituée à recevoir mes clients comme ça et que maintenant, ça me plaît. Je suppose qu'avec le temps, je vais me lasser et que je m'aventurerai de nouveau dans Sigil, mais pour l'instant… je suis bien ici."~ */
  IF ~~ THEN REPLY #40657 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40658 /* ~"C'est tout ce que je voulais savoir. Au revoir, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 4.14
  SAY #40659 /* ~Marissa ne dit rien, mais un sifflement furieux jaillit de l'obscurité qui l'entoure. "Oui, je suis déjà entrée dans la chambre de Viviane pour lui prendre quelques parfums… mais je doute que tu rencontres ici quelqu'un qui ne l'a jamais fait. Si tu sous-entends que j'ai son parfum *personnel*, eh bien… n'hésite pas à renifler partout. Tu ne le trouveras ni sur moi ni dans ma chambre, je peux te l'assurer. C'est peut-être celui qui a volé mon Voile pourpre qui s'est aussi emparé du parfum de Viviane."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40660 /* ~"On t'a volé ton voile ?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels, a perdu son voile pourpre. Elle ne m'a pas demandé de le chercher, mais je pense que je vais poser quelques questions alentour, des fois que quelqu'un saurait où il se trouve.~ */ GOTO 6
  IF ~~ THEN REPLY #40661 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40662 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 4.11 4.12
  SAY #40663 /* ~"Oui… 'Ecco'. J'en ai connu une autre, jadis, même si son nom s'écrivait différemment. Je ne sais rien de celle-ci, par contre. Pose ta question à Dolora. Elle est devenue l'amie d'un des anciens amants d'Ecco, à ce qu'on m'a dit."~ */
  IF ~~ THEN REPLY #40664 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40665 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 4.8 26.0 35.0
  SAY #40666 /* ~"Je pense que oui… si tu avais un Lim-Lim, et si j'avais envie de le faire. Et j'en aurais *sûrement* très envie si j'avais mon Voile pourpre… mais je ne sais pas où il est passé. Tu ne l'aurais pas vu, par hasard ?"~ */
  IF ~~ THEN REPLY #40667 /* ~"Non… il sert à quoi ? C'est juste un voile normal ?"~ */ GOTO 7
  IF ~~ THEN REPLY #40668 /* ~"Non. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #40669 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.9 26.1 35.1
  SAY #40670 /* ~"Je pense que oui… si tu avais un Lim-Lim, et si j'avais envie de le faire. Et j'en aurais *sûrement* très envie si j'avais mon Voile pourpre."~ */
  IF ~~ THEN REPLY #40671 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40672 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 4.10 26.2 35.2
  SAY #40673 /* ~"Je pense que oui… pourquoi ? Tu as un Lim-Lim ?"~ */
  IF ~  PartyHasItem("LimLim")
~ THEN REPLY #40674 /* ~"Oui."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
GiveItemCreate("S_LimLim",Protagonist,1,0,0)
~ GOTO 56
  IF ~  !PartyHasItem("LimLim")
~ THEN REPLY #40675 /* ~"Non, pas en ce moment."~ */ GOTO 58
  IF ~~ THEN REPLY #40676 /* ~"En fait, peu importe. J'ai une question."~ */ GOTO 4
  IF ~~ THEN REPLY #40677 /* ~"Oublie ma question, Marissa… au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #40678 /* ~"Alors donne-le-moi…" Marissa te prend le petit animal joyeux des mains… il gazouille gaiement - 'Piyo ! Piyo !' - inconscient du sort qui le menace.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #40679 /* ~Dans un sinistre éclair de lumière rouge blafarde, le gazouillement du joyeux Lim-Lim s'arrête brusquement de façon troublante. Marissa prend le Lim-Lim - devenue une statue de pierre froide et lourde - dans ses mains.~ */
  IF ~~ THEN REPLY #40680 /* ~"Merci, Marissa. J'ai une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40681 /* ~"Merci, Marissa. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #40682 /* ~"Bon, eh bien, ça n'a aucun intérêt pratique." Elle soupire. "Je ne comprends pas bien pourquoi tu m'ennuies avec ça."~ */
  IF ~~ THEN REPLY #40683 /* ~"J'ai une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #40684 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
