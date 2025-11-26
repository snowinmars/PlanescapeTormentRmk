// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKARINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKARINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36099 /* ~Cette jolie jeune femme est habillée simplement. Elle se promène dans le marché, examine tout mais n'achète rien. Tu remarques que les gens semblent l'éviter, mais en essayant de ne pas le montrer. À ton approche, elle t'adresse un chaleureux sourire.~ */
  IF ~~ THEN REPLY #36100 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36101 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36102 /* ~Son sourire s'élargit. "Bonjour, je m'appelle Karina. Ravie de faire ta connaissance, matois !" Elle continue à sourire en attendant ta réponse.~ */
  IF ~~ THEN REPLY #36103 /* ~"J'ai quelques questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 20.0
  SAY #36104 /* ~Elle secoue la tête. "D'accord. Que veux-tu savoir ?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36105 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36106 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 4
  IF ~~ THEN REPLY #36107 /* ~"Où est-ce que je pourrais acheter des armes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #36108 /* ~"Où est-ce que je pourrais acheter de la magie ?"~ */ GOTO 6
  IF ~  GlobalGT("Girl_Talks_Alot","AR0504",1)
!Global("Karina_Friend","GLOBAL",4)
~ THEN REPLY #36109 /* ~"Tu, euh… Tu aimes bien parler, hein ?"~ */ GOTO 15
  IF ~~ THEN REPLY #36110 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36111 /* ~Elle fronce les sourcils. "Lothar… Je ne connais personne du nom de Lothar. Je ne me souviens d'ailleurs pas avoir jamais entendu ce nom." Elle te jette un regard inquiet. "As-tu dit Maître des Os ? Ça semble de mauvaise augure, n'est-ce pas ? Pourquoi quelqu'un choisirait-il ce nom ?"~ */
  IF ~~ THEN REPLY #36113 /* ~"Eh bien… c'est plutôt impressionnant…"~ */ GOTO 7
  IF ~~ THEN REPLY #36114 /* ~"Eh bien… pour effrayer les gens, je suppose."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36116 /* ~"Un crâne ? Pourquoi veux-tu une telle chose ? C'est plutôt morbide, n'est-ce pas ? Ma foi, si tu veux un crâne, je pense que tu en trouveras peut-être un à la Morgue… ou peut-être pas. Maintenant que j'y pense, ils n'aiment pas donner ces choses-là… De toute façon, je ne vois pas qui prendrait ton crâne. Que veux-tu faire d'un crâne ?"~ */
  IF ~~ THEN REPLY #36118 /* ~"C'est un ami."~ */ GOTO 8
  IF ~~ THEN REPLY #36119 /* ~"Il a de la valeur."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #36121 /* ~Elle sourit et t'indique l'un des étals. "Anze, par-là, vend des armes. Toutes sortes d'armes. Es-tu un guerrier ? Suis-je stupide, bien sûr que tu l'es. Sinon, pourquoi aurais-tu toutes ces cicatrices… Oh, je suis désolée, je ne devrais pas en parler. Ça ne te dérange pas d'en parler, non ?"~ */
  IF ~~ THEN REPLY #36123 /* ~"Non, c'est une question d'habitude."~ */ GOTO 9
  IF ~~ THEN REPLY #36124 /* ~"Si, alors ne remets pas ça sur le tapis."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #36126 /* ~Elle sourit et indique l'un des étals. "Aalek vend des choses magiques. Es-tu un mage ? Tu n'en as pas l'air, mais j'imagine qu'on ne peut pas toujours se fier aux apparences. Je ne sais pas à quoi un mage ressemble vraiment, maintenant que j'y pense. Et toi ?"~ */
  IF ~~ THEN REPLY #36128 /* ~"Oui. Ils portent des robes ornées de drôles de symboles et un chapeau pointu."~ */ GOTO 10
  IF ~~ THEN REPLY #36129 /* ~"Non, pas vraiment."~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #36131 /* ~Elle secoue la tête. "Oui… Je pense que je vois ce que tu veux dire. Il y a en effet quelque chose de curieux. Hmmm. C'est intrigant, quand on y pense." Elle paraît perdue dans ses pensées."~ */
  IF ~~ THEN REPLY #36132 /* ~"J'ai quelques questions…"~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #36133 /* ~Elle te regarde d'un air interrogateur. "Vraiment ? Un crâne ? Ça sonne bizarre, tu sais. Je n'ai jamais entendu parler de quelqu'un ayant un crâne pour ami. J'ai vu des gens avec des animaux domestiques et tout, mais jamais de crâne. Mais en plus, tu n'as pas dit que c'était un animal, mais un ami, ce qui est encore plus étrange." Elle s'arrête pour réfléchir.~ */
  IF ~~ THEN REPLY #36134 /* ~"J'ai quelques questions…"~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #36135 /* ~Elle paraît soulagée. "Oh, tant mieux… je ne voulais vexer personne. Il faut juste faire attention quand tu parles, tu sais ? Les gens sont différents et on ne sait jamais. Ce qui pourrait offenser une personne, pourrait ne pas en offenser une autre. Enfin, bref." Elle s'arrête pour respirer et te sourit.~ */
  IF ~~ THEN REPLY #36136 /* ~"J'ai quelques questions…"~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #36137 /* ~"Vraiment ? C'est bon à savoir. Je veux dire, les mages me font tellement peur que je veux savoir à quoi ils ressemblent. J'imagine que ça vient de tout ce pouvoir qu'ils ont, de ces choses incroyables qu'ils peuvent faire, mais je ne sais pas à quoi ils ressemblent. Les guerriers et les prêtres… et… les autres gens puissants paraissent seulement puissants avec tout le fatras qu'ils portent et qui montre qu'ils sont puissants. Mais pas les mages." Elle s'interrompt.~ */
  IF ~~ THEN REPLY #36138 /* ~"J'ai d'autres questions…"~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY #36139 /* ~Elle paraît perdue dans ses pensées, tapotant son doigt sur son menton. Elle acquiesce finalement. "Oui… Je pense que tu as raison. Ça me donne des frissons rien que d'y penser. 'Maître des Os', c'est vraiment un titre effrayant. Je ne pense pas que j'irai chatouiller une personne avec un pareil titre." Elle réfléchit davantage.~ */
  IF ~~ THEN REPLY #36140 /* ~"J'ai quelques questions…"~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #36141 /* ~Elle hausse les épaules. "Oh… D'accord, tu veux un crâne, c'est bien. Les gens collectionnent de drôles de choses. Je ne collectionne rien, mais je connais beaucoup de gens qui le font. Mais, tu es le seul à ma connaissance qui collectionne les crânes. Peut-être que je devrais les collectionner…"~ */
  IF ~~ THEN REPLY #36142 /* ~"J'ai quelques questions…"~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 5.1
  SAY #36143 /* ~Elle paraît triste et te regarde d'un air inquiet. "Je suis désolé. Pardonne-moi, je ne veux pas blesser les gens. Je veux dire, je n'aime pas que quelqu'un me blesse, alors pourquoi blesser quelqu'un d'autre ? Les autres n'aiment sûrement pas ça non plus… à moins qu'ils ne soient bizarres…" Elle te regarde innocemment.~ */
  IF ~~ THEN REPLY #36144 /* ~"J'ai d'autres questions…"~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #36145 /* ~Elle s'anime et pointe le doigt sur toi. "Tu vois ! C'est exactement ce que je veux dire. Ils ont ces pouvoirs extraordinaires et peuvent faire des choses incroyables, mais impossible de les démasquer. Ils peuvent s'approcher de toi sans se faire remarquer. Les prêtres et les guerriers se baladent avec tout cet attirail qui montre qu'il faut faire attention. Mais pas les mages." Elle te regarde d'un air entendu.~ */
  IF ~~ THEN REPLY #36146 /* ~"J'ai quelques questions…"~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #36147 /* ~Elle traîne les pieds et paraît gênée. "Je… Eh bien… On m'a dit que je parlais un peu trop… Les gens ont tendance à m'éviter… et je n'ai pas vraiment d'amis et de soupirants… Parfois je me sens seule…" Le ton de sa voix baisse graduellement, jusqu'à ce qu'elle se taise. Elle fixe le sol à ses pieds.~ */
  IF ~~ THEN REPLY #36148 /* ~"Et bien, je comprends pourquoi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Karina_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #36149 /* ~"Tu n'es pas une mauvaise personne, Karina. En fait, je t'aime bien."~ */ DO ~AddexperienceParty(2000)
IncrementGlobalOnceEx("GLOBALGood_Karina_1","GLOBALGood",1)
SetGlobal("Karina_Friend","GLOBAL",1)
~ JOURNAL #35988 /* ~J'ai rencontré une jeune femme du nom de Karina. Elle est un peu trop bavarde et a tendance à parler pour ne rien dire, mais elle a l'air sympathique. Elle m'a dit qu'elle se sentait seule.~ */ GOTO 17
  IF ~~ THEN REPLY #36150 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36151 /* ~Au début, elle ne fait que continuer à fixer le sol. Puis tu remarques qu'elle sanglote en silence. Elle se détourne et s'en va.~ */
  IF ~~ THEN REPLY #36152 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #36153 /* ~Elle te regarde avec espoir. "Vraiment ? Merci beaucoup… Je ne connais pas ton nom."~ */
  IF ~~ THEN REPLY #36154 /* ~Mensonge : "Je suis Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Karina_2","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36155 /* ~"Je ne me souviens pas de mon nom."~ */ GOTO 19
  IF ~~ THEN REPLY #36156 /* ~"Au revoir, Karina."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36157 /* ~Elle sourit. "Merci, Adahn. C'est bon de savoir que j'ai un ami."~ */
  IF ~~ THEN REPLY #36158 /* ~"Au revoir, Karina."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #36159 /* ~Elle se renfrogne, commence à dire quelque chose, puis s'arrête. Elle hausse les épaules. "Qu'est-ce qu'un nom ? C'est quand même bon de savoir que j'ai un ami." Elle sourit.~ */
  IF ~~ THEN REPLY #36160 /* ~"Au revoir, Karina."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #36161 /* ~Tu aperçois Karina. Elle sourit à ton approche. "Rebonjour. Comment vas-tu en cette belle journée ?"~ */
  IF ~~ THEN REPLY #36162 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36163 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Karina_Friend","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #36164 /* ~Karina sourit et paraît pétillante. "Bonjour, l'ami. C'est si bon de te revoir.~ */
  IF ~~ THEN REPLY #36165 /* ~"Je passais juste te dire bonjour, Karina. Bonne journée."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Karina_Friend","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #36166 /* ~À ton approche, le visage de Karina s'illumine. "Rebonjour." On dirait qu'elle va exploser de joie. "Merci mille fois, matois ! Je te suis infiniment reconnaissante de ce que tu as fait."~ */
  IF ~~ THEN REPLY #36167 /* ~"Qu'est-ce que j'ai fait, Karina ?"~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",4)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36168 /* ~Elle rit. "Tu as placé Corvus sur mon chemin, je le sais parce qu'il me l'a dit. Il avait peur de m'approcher, pensait que j'avais de nombreux soupirants… Eh bien, ce que je veux dire, c'est merci." Elle te serre dans ses bras.~ */
  IF ~~ THEN REPLY #36169 /* ~"De rien, Karina. Je vous souhaite beaucoup de bonheur à tous les deux."~ */ DO ~AddexperienceParty(500)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36170 /* ~"Merci, matois. J'espère que toi aussi, tu trouveras le bonheur."~ */
  IF ~~ THEN REPLY #36171 /* ~"Au revoir."~ */ EXIT
END
