// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIVIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIVIAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 28 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",0)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 0 // from:
  SAY #2999 /* ~Cette femme grande et élégante, aux traits anguleux et au port royal, est la figure même de la beauté aristocratique. Ses vêtements sont tissés avec du fil d'argent, et une fiole pend de son collier. Son parfum aux notes exotiques semble t'attirer vers elle.~ */
  IF ~~ THEN REPLY #3000 /* ~"Bonjour…"~ */ DO ~SetGlobal("Vivian","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #38430 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #38431 /* ~Cette femme grande et élégante, aux traits fins et au comportement délicieux, est l'exemple même de la beauté aristocratique. Ses vêtements semblent tissés dans du fil d'argent et une petite fiole pend autour de son cou. Elle porte un parfum exotique et érotique à la fois qui semble t'attirer vers elle. Morte le renifle, en poussant de petits gémissements.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #38434 /* ~Elle t'observe, sourcillant légèrement, ce que tu prends pour du dédain. "Bonjour. Je m'appelle Viviane, on m'a fait appeler ?"~ */
  IF ~~ THEN REPLY #38435 /* ~"Non, j'ai juste quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #38436 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.1 7.2 9.2 10.1 12.0 17.0 18.0 19.1 20.1 21.1 22.0 23.0 24.1 25.0 26.0 27.0 28.0 29.2 30.1 37.0 38.0
  SAY #39059 /* ~Elle fait un signe de tête impétueux. "Alors, vas-y."~ */
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39060 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 4
  IF ~  GlobalGT("Scent_Quest","AR0605",0)
~ THEN REPLY #39067 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 30
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39068 /* ~"Qu'est-ce que c'est que cette fantastique odeur ?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39069 /* ~"Qu'est-ce que c'est que cette fiole que tu portes autour du cou ?"~ */ GOTO 20
  IF ~~ THEN REPLY #39070 /* ~Tu peux me parler de cet endroit ?"~ */ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39071 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 38
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67850 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 38
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39072 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ JOURNAL #66743 /* ~J'ai demandé à l'une des prostituées si elle savait si Kesai-Serris était vraiment la fille de Ravel, et elle m'a conseillé d'aller poser ma question à Juliette. Apparemment, Kesai et Juliette étaient de bonnes amies avant que cette dernière ne rencontre Montague.~ */ GOTO 26
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39073 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39074 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 21
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39075 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 27
  IF ~~ THEN REPLY #39076 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39077 /* ~"À part mon travail d'étudiante ? En fait, je cherche quelque chose. Tu ne l'aurais pas senti, par hasard ?"~ */
  IF ~~ THEN REPLY #39078 /* ~"Étudiante ?"~ */ GOTO 5
  IF ~~ THEN REPLY #39079 /* ~"Senti ?"~ */ GOTO 6
  IF ~~ THEN REPLY #39080 /* ~"Non, je ne crois pas…"~ */ GOTO 7
  IF ~~ THEN REPLY #39081 /* ~"En fait, il vaut mieux que je parte. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #39082 /* ~Viviane acquiesce, d'un air vaguement ennuyé. "C'est exact. Maîtresse Grâce nous enseigne l'art du langage et de la conversation - l'aptitude à toucher quelqu'un avec des mots et à acquérir une connaissance plus approfondie de soi et des autres. Ici, toutes les prostituées sont des étudiantes de ce type."~ */
  IF ~~ THEN REPLY #39083 /* ~"Tu… tu m'as demandé si j'avais senti quelque chose ?"~ */ GOTO 6
  IF ~~ THEN REPLY #39084 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39085 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 19.0 20.0
  SAY #39086 /* ~"Oui, l'un de mes parfums semble avoir disparu… il *vagabonde*. C'est un peu… difficile de le faire tenir en place. J'espère que personne ne l'a pris par mégarde… mais on ne sait jamais, avec les 'dames' qui traînent ici." Elle fronce les sourcils. "Alors… tu ne l'aurais pas senti quelque part, par hasard ?"~ */
  IF ~~ THEN REPLY #39087 /* ~"Tu sais, tu sens déjà très bon en ce moment…"~ */ GOTO 8
  IF ~~ THEN REPLY #39088 /* ~"Comment est-ce qu'un parfum peut vagabonder ?"~ */ GOTO 9
  IF ~~ THEN REPLY #39089 /* ~"Je ne crois pas l'avoir senti…"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2 8.1
  SAY #39090 /* ~"Dommage. J'ai peur de ne jamais le retrouver."~ */
  IF ~~ THEN REPLY #39091 /* ~"Comment est-ce que tu le saurais si tu le trouvais ?"~ */ GOTO 10
  IF ~~ THEN REPLY #39092 /* ~"Je peux t'aider…"~ */ GOTO 11
  IF ~~ THEN REPLY #39093 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39094 /* ~"Bonne chance pour le retrouver. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #39095 /* ~Elle se renfrogne un instant, puis te sourit. "Oui, oui, et je te remercie du compliment… mais je t'assure que cette odeur n'a *rien* à voir avec mon parfum personnel." Elle soupire.~ */
  IF ~~ THEN REPLY #39096 /* ~"Comment est-ce qu'un parfum peut vagabonder ?"~ */ GOTO 9
  IF ~~ THEN REPLY #39097 /* ~"Je ne crois pas l'avoir senti…"~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #39098 /* ~Viviane secoue la tête. "Je voulais dire qu'il avait été *pris*. Ici, les 'dames' ont tendance à être un peu jalouses, et je sais qu'il leur est déjà arrivé de prendre mes divers parfums. Mais cette fois-ci, quelqu'un s'est enfui avec mon parfum personnel. J'avais travaillé sur ce parfum, je l'avais perfectionné, et puis *pouf* ! Évaporé ! Je n'ai vraiment pas besoin de tels tracas !" Viviane trépigne : "Je veux qu'on me rende ce parfum, et tout de suite !"~ */
  IF ~~ THEN REPLY #39099 /* ~"Comment est-ce que je le saurais si je le trouvais ?"~ */ GOTO 10
  IF ~~ THEN REPLY #39100 /* ~"Je peux t'aider…"~ */ GOTO 11
  IF ~~ THEN REPLY #39101 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39102 /* ~"Bonne chance pour le retrouver. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #39103 /* ~"Tu le reconnaîtrais à l'odeur, je peux te l'assurer. C'est un parfum qui frappe, surtout pour les hommes."~ */
  IF ~~ THEN REPLY #39104 /* ~"Je peux t'aider…"~ */ GOTO 11
  IF ~~ THEN REPLY #39105 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39106 /* ~"Bonne chance pour le retrouver. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 9.1 10.0
  SAY #39107 /* ~Viviane semble incertaine. "Tu es sûr ? Je ne voudrais pas te déranger."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #39108 /* ~"Tu ne me déranges pas. Je suis heureux d'aider une femme aussi charmante que toi."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~J'ai accepté d'aider Viviane, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels, à retrouver son 'parfum personnel'. Elle m'a dit que je le reconnaîtrais quand je le sentirai.~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #39109 /* ~"Tu ne me déranges pas. Je suis heureux d'aider une femme aussi charmante que toi."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~J'ai accepté d'aider Viviane, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels, à retrouver son 'parfum personnel'. Elle m'a dit que je le reconnaîtrais quand je le sentirai.~ */ EXTERN ~DANNAH~ 194
  IF ~~ THEN REPLY #39110 /* ~"Oh, tu ne me déranges pas ; j'attends une récompense."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vivian_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #39111 /* ~"Si tu doutes, je ne pourrai peut-être pas t'aider."~ */ GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #39112 /* ~Viviane sourit et te fait un signe de tête. "Tu es trop gentil. D'accord… si tu tombes dessus, préviens-moi. J'ai vraiment hâte de le récupérer. C'est un parfum unique, vraiment."~ */
  IF ~~ THEN REPLY #39113 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39114 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #39115 /* ~Viviane lève les yeux au ciel. "J'aurais dû m'en douter à ton aspect bestial de mercenaire. D'accord… Récupère mon odeur et je t'aiderai pour la tienne."~ */
  IF ~~ THEN REPLY #39116 /* ~"La mienne ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39117 /* ~Elle sourit d'un air narquois et pointe le doigt vers toi : "Oui, la *tienne.* Cette immonde odeur acide." Elle renifle, puis plisse le nez. "Tu as ça dans la *peau*, aussi… un bain ne suffirait pas à faire disparaître cette puanteur."~ */
  IF ~~ THEN REPLY #39118 /* ~"Comment comptes-tu t'y prendre et qu'est-ce que ça m'apporterait ?"~ */ GOTO 15
  IF ~~ THEN REPLY #39119 /* ~"Laisse tomber. Tu me fais perdre mon temps."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39120 /* ~"Pour répondre à ta première question, je maîtrise certaines compétences - de nature magique, mais sur lesquelles je ne m'étendrai pas - qui me permettent de créer et de transformer l'odeur des gens."~ */
  IF ~~ THEN REPLY #39121 /* ~"Et les avantages… ?"~ */ GOTO 16
  IF ~~ THEN REPLY #39122 /* ~"Laisse tomber. Tu me fais perdre mon temps."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39123 /* ~"Tu ne peux pas nier le fait que l'odeur d'un homme ou d'une femme joue un rôle important dans la façon dont ils sont perçus. Qu'on te l'ait déjà dit ou pas, je suis absolument certaine que ce relent de cadavre que tu dégages repousse les gens. Ça pourrait drôlement augmenter ton charisme si tu sentais meilleur, tu sais."~ */
  IF ~~ THEN REPLY #39124 /* ~"D'accord… je vais retrouver ton parfum."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~J'ai accepté d'aider Viviane, l'une des prostituées de la Maison de tolérance des Plaisirs Intellectuels, à retrouver son 'parfum personnel'. Elle m'a dit que je le reconnaîtrais quand je le sentirai.~ */ GOTO 17
  IF ~~ THEN REPLY #39125 /* ~"Laisse tomber. Tu me fais perdre mon temps."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39126 /* ~"Marché conclu, alors. Si tu tombes dessus, préviens-moi. J'ai hâte de le récupérer. C'est un parfum unique, vraiment."~ */
  IF ~~ THEN REPLY #39127 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39128 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 14.1 15.1 16.1
  SAY #39129 /* ~"D'accord. C'est pas grave ; je suis sûre que je finirai par le retrouver, avec ou sans ton aide."~ */
  IF ~~ THEN REPLY #39130 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39131 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.2
  SAY #39132 /* ~Elle te sourit. "Merci du compliment… mais je t'assure que cet arôme particulier est une odeur fade et dérisoire comparé à mon parfum personnel." Elle soupire.~ */
  IF ~~ THEN REPLY #39133 /* ~"Ton… parfum 'personnel' ?"~ */ GOTO 6
  IF ~~ THEN REPLY #39134 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39135 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.3
  SAY #39136 /* ~Viviane se penche pour regarder la fiole qui pend à son cou. "Oh… ça. C'est qu'une fiole de parfum. Mais je t'assure que cet arôme n'a rien à voir avec mon parfum personnel." Elle soupire.~ */
  IF ~~ THEN REPLY #39137 /* ~"Ton… parfum 'personnel' ?"~ */ GOTO 6
  IF ~~ THEN REPLY #39138 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39139 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.9
  SAY #39140 /* ~"C'est pas un personnage historique ? Je ne m'en souviens pas très bien. C'est qui ?"~ */
  IF ~~ THEN REPLY #39141 /* ~"Une guenaude noire issue du passé de Sigil, je crois."~ */ JOURNAL #66742 /* ~J'ai interrogé l'une des prostituées de la Maison de tolérance au sujet de Ravel, et elle m'a dit d'aller voir Yvonne. Celle-ci recueille apparemment les histoires, et il y a de fortes chances qu'elle en connaisse quelques-unes au sujet de Ravel.~ */ GOTO 22
  IF ~~ THEN REPLY #39142 /* ~"Peu importe… laisse-moi te demander autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #39143 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #39144 /* ~"Alors j'espère qu'elle restera dans le passé. Les guenaudes noires sont des créatures immondes ; elles font du tort aux femmes partout dans les plans." Elle s'interrompt. "Tu devrais en parler à Yvonne. Elle connaît toutes sortes de petites histoires."~ */
  IF ~~ THEN REPLY #39146 /* ~"J'avais une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39147 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.8
  SAY #39148 /* ~"Si je savais où il se trouve, j'y mettrais le feu et je jetterais ses restes dans un trou sans fond ! J'espère que cette misérable garce ne trouvera *jamais* son précieux voile et qu'elle restera enfermée dans cette chambre pour le restant de ses jours !" Viviane claque la langue de dédain.~ */
  IF ~~ THEN REPLY #39149 /* ~"J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39150 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.4
  SAY #39151 /* ~"La Maison de tolérance de Maîtresse Grâce ? C'est une école, où elle nous enseigne l'art du langage et de la conversation - l'aptitude à toucher quelqu'un avec des mots et à acquérir une connaissance plus approfondie de soi et des autres. Pour beaucoup, c'est une préparation à la Société des Sensations."~ */
  IF ~~ THEN REPLY #39152 /* ~"La Société des Sensations ?"~ */ GOTO 25
  IF ~~ THEN REPLY #39153 /* ~"J'avais une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39154 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0
  SAY #39155 /* ~Viviane soupire. "Tu devrais évoquer le sujet des Sensats avec Tombée-en-Disgrâce ou, mieux encore, avec quelqu'un de la Salle des Fêtes. Je suis certaine qu'ils seraient contents de t'en parler."~ */
  IF ~~ THEN REPLY #39156 /* ~"J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39157 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 3.7
  SAY #39158 /* ~Viviane hoche la tête et baisse la voix. "J'ai eu vent de cette rumeur. Ça expliquerait ses yeux rouges et la couleur… inhabituelle de sa peau. Mais j'ignore ce qu'il en est en vérité. Tâche d'en savoir plus sur Juliette - jusqu'à ce qu'elle tombe amoureuse de Montague, c'était la meilleure amie de Kesai-Serris'."~ */
  IF ~~ THEN REPLY #39159 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39160 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 3.10
  SAY #39161 /* ~"La dixième étudiante ?" Elle t'observe comme si elle n'était pas sûre d'avoir bien entendu. "Tu as sans doute reçu un peu trop de coups sur la tête. Ou peut-être que l'une des filles s'est moquée de toi. Il n'y a pas de dixième prostituée, que je sache."~ */
  IF ~~ THEN REPLY #39162 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39163 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",1)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 28 // from:
  SAY #39164 /* ~Viviane te salue d'un signe de tête majestueux. Elle est toujours entourée de l'odeur exotique et érotique de son parfum, qui semble t'attirer irrésistiblement vers elle.~ */
  IF ~~ THEN REPLY #39165 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39166 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 37 even though they appear after this state */
~  Global("Scent_Quest","AR0605",1)
~ THEN BEGIN 29 // from:
  SAY #39167 /* ~Viviane te salue d'un demi-sourire poli. "Est-ce que tu aurais réussi à trouver mon parfum, par hasard ?"~ */
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #39168 /* ~"Oui… je l'ai trouvé sur ce voile rouge…"~ */ DO ~DestroyPartyItem("SVeil",FALSE)
GiveItemCreate("CVeil",Protagonist,1,0,0)
AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~J'ai rendu à Viviane son odeur personnelle.~ */ GOTO 31
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #39169 /* ~"Si on veut… je crois qu'il était sur le voile perdu de Marissa, que je lui ai rendu. C'est elle qui a ton parfum."~ */ DO ~AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~J'ai rendu à Viviane son odeur personnelle.~ */ GOTO 35
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39170 /* ~"Non, mais j'avais des questions…"~ */ GOTO 3
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39171 /* ~"Non, mais je vais continuer mes recherches. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.1
  SAY #39172 /* ~"Je suis l'une des prostituées de Maîtresse Grâce - l'une de ses élèves - ici, à la Maison de tolérance. J'étudie pour devenir membre de la faction des Sensats, et ma famille m'a recommandé cet établissement pour examiner mon moi intérieur et voir si je voulais vraiment devenir membre."~ */
  IF ~~ THEN REPLY #39173 /* ~"La faction des Sensats ?"~ */ GOTO 25
  IF ~~ THEN REPLY #39174 /* ~"J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39175 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #39176 /* ~Les yeux de Viviane s'illuminent. "Oh, c'est tout simplement merveilleux !" Elle te prend le voile des mains, murmure quelques mots et te le redonne. Elle secoue ses cheveux roux et, en quelques instants, te voilà baigné dans l'odeur la plus intensément exotique et excitante que tu aies jamais eu le plaisir de sentir.~ */
  IF ~  Global("Evil_Vivian_1","GLOBAL",0)
~ THEN REPLY #39177 /* ~"Ça sent… tellement bon…"~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39178 /* ~"Ça sent… tellement bon…"~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 36.0
  SAY #39179 /* ~"N'est-ce pas ?" Elle te sourit. "Et puisque tu m'as rendu service, je veux te rendre service à mon tour. Tiens-toi près de moi, balafré…"~ */
  IF ~~ THEN REPLY #39180 /* ~Approche-toi d'elle.~ */ GOTO 33
  IF ~~ THEN REPLY #39181 /* ~"Non merci, ça va. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 34.0
  SAY #39184 /* ~Tu te rapproches de Viviane ; elle te prend la main, la retourne et hume prudemment ton poignet. "Pouah !" Elle plisse le nez. "Du vinaigre ! Ou alors… de la lotion d'embaumement ? Bon, je vais te débarrasser de cette odeur…" Elle murmure quelques paroles étranges et une légère sensation de picotement te parcourt la peau. En quelques instants, ta puanteur chimique a complètement disparu. "Voilà ; qu'est-ce que tu en penses ? À partir de maintenant, les gens seront moins enclins à vouloir éviter de parler avec toi."~ */
  IF ~~ THEN REPLY #39185 /* ~"Merci, Viviane. Au revoir."~ */ DO ~PermanentStatChange(Protagonist,CHR,RAISE,1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1 36.1
  SAY #39186 /* ~"N'est-ce pas ?" Le sourire de Viviane s'évanouit. "Bon, je suppose que tu veux ta récompense, maintenant. Approche-toi de moi, balafré…"~ */
  IF ~~ THEN REPLY #39187 /* ~Approche-toi d'elle.~ */ GOTO 33
  IF ~~ THEN REPLY #39188 /* ~"Non merci, ça va. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.1
  SAY #39189 /* ~Une étincelle de colère passe dans le regard de Viviane. "C'est vrai ? Ça ne va pas se passer comme ça. Ne bouge pas ; je reviens tout de suite."~ */
  IF ~~ THEN REPLY #39190 /* ~Attends.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39191 /* ~"Voilà ! Problème résolu ! Quelle affreuse sorcière… elle est toujours à me prendre mes eaux de toilette, mais jamais j'aurais cru qu'elle aurait le toupet de me voler mon parfum personnel. Hmph !" Elle secoue soudain ses cheveux roux et, en un instant, te voilà baigné dans l'odeur la plus intensément exotique et excitante que tu aies jamais eu le plaisir de sentir.~ */
  IF ~  !Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39192 /* ~"Ça sent… tellement bon…"~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39193 /* ~"Ça sent… tellement bon…"~ */ GOTO 34
END

IF WEIGHT #0 ~  Global("Scent_Quest","AR0605",2)
~ THEN BEGIN 37 // from:
  SAY #39194 /* ~Viviane se retourne pour te saluer. Même sa beauté majestueuse est éclipsée par la splendeur du parfum merveilleusement érotique qui l'entoure… son 'odeur personnelle', délicieusement exotique, que tu as retrouvée pour elle.~ */
  IF ~~ THEN REPLY #39195 /* ~"J'ai une question à te poser, Viviane…"~ */ GOTO 3
  IF ~~ THEN REPLY #39196 /* ~"Je ne fais que passer. Au revoir, Viviane."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 3.5 3.6
  SAY #39197 /* ~"Tu veux dire Ecco ? Elle est adorable. Très discrète." Viviane fronce les sourcils. "Ça fait peut-être partie de son charme. Il circule diverses hypothèses sur la raison de son mutisme, mais je crois qu'elle a eu le cœur brisé. Dolora doit en savoir davantage. Elle a parlé avec un homme qu'Ecco a aimé jadis, avant de perdre sa voix."~ */
  IF ~~ THEN REPLY #39199 /* ~"J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #52814 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
