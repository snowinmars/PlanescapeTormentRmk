// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNONAME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNONAME~

IF ~  Global("NoName","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23470 /* ~Ce cadavre de femme pourrissant secoue la tête et gémit tristement. Alors que tu t'approches, toutefois, elle se tourne et tend les mains vers toi, comme pour demander de l'aide.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23518 /* ~"Bonjour…"~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23519 /* ~"Bonjour…"~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23520 /* ~Laisse le zombi tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 18.1
  SAY #23491 /* ~Le zombi gémit doucement en guise de réponse : "Ggnhuuu… fnnnnuuugh ?" À chacune de ses exhalations, une odeur de viande pourrie emplit l'atmosphère.~ */
  IF ~~ THEN REPLY #23521 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #23522 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #23492 /* ~"Saaaahh… mmmaaa-uuhrrr ?" Tu n'arrives pas à déchiffrer les gémissements du zombi, mais il semble qu'elle te demande quelque chose.~ */
  IF ~~ THEN REPLY #23523 /* ~"Je ne te comprends pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 18.0
  SAY #23493 /* ~Le zombi gémit doucement en guise de réponse. Seule ton expérience de la conversation avec les morts te permet de la comprendre : "Nooom ? Mooon nnnooomm ?"~ */
  IF ~~ THEN REPLY #23524 /* ~"Non… est-ce pour cela que tu es si bouleversée ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_NoName_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #23525 /* ~"Non. Il faudrait ?"~ */ GOTO 4
  IF ~~ THEN REPLY #23526 /* ~"Non. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #23527 /* ~"Non. Il faut que je parte à présent. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #23494 /* ~"Ouuubiiié mmmooo nnooom… mmooon nnnooom !" Ses yeux laiteux se mouillent d'une substance noire, gluante - les larmes d'un cadavre.~ */
  IF ~~ THEN REPLY #23528 /* ~"Est-ce que je peux t'aider à retrouver ton nom ?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23529 /* ~"Pourquoi ne pas choisir un nouveau nom ?"~ */ GOTO 8
  IF ~~ THEN REPLY #23530 /* ~"Pourquoi c'est si important pour toi ?"~ */ GOTO 7
  IF ~~ THEN REPLY #23531 /* ~"C'est dommage. J'avais encore des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_NoName_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #23532 /* ~"J'espère que tu le trouveras. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 7.1 15.0
  SAY #23495 /* ~Le cadavre acquiesce lentement. "Mmmaaa toommbe…" Elle indique le sud. "Caatacoommbes hummides…"~ */
  IF ~~ THEN REPLY #23533 /* ~"Mais comment le saurai-je ?"~ */ JOURNAL #23566 /* ~Une zombi m'a demandé de rechercher son nom. Elle m'a dit qu'il devait être inscrit sur son tombeau - situé près d'un 'coffre à pointes' boulonné au sol - dans les catacombes des Nations Englouties, au sud-ouest des Nations Mortes, lieu où je l'ai rencontrée.~ */ GOTO 6
  IF ~~ THEN REPLY #23534 /* ~"Je vais le chercher alors. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #23537 /* ~"Je vais peut-être le chercher. Au revoir ."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23496 /* ~"Cofffre… coofffre ààà piiiinnnt, abaaattuu… prrrèèès mmmaa tooombeee…"~ */
  IF ~~ THEN REPLY #23539 /* ~"Pourquoi ne pas choisir un nouveau nom ?"~ */ GOTO 8
  IF ~~ THEN REPLY #23543 /* ~"Pourquoi c'est si important pour toi ?"~ */ GOTO 7
  IF ~~ THEN REPLY #23545 /* ~"Je vais le chercher alors. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #23547 /* ~"Je vais peut-être le chercher. Au revoir ."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1 19.3
  SAY #23497 /* ~Elle lève ses mains décomposées pour que tu les examines. Pendant que tu le fais, un ongle se décroche, frappant les carreaux avec un petit *clic*. "Pouurrriiis… biiiennntoot, pluuuuus riiiien… riiiien qu'oooss et noooom…"~ */
  IF ~~ THEN REPLY #23557 /* ~"Je n'ai pas de nom, non plus. Je suis sûr que tu peux aussi te débrouiller sans."~ */ GOTO 14
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23560 /* ~"Alors, est-ce que je peux t'aider à trouver ton nom ?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23573 /* ~"Pourquoi ne pas choisir un nouveau nom ?"~ */ GOTO 8
  IF ~~ THEN REPLY #23576 /* ~"Je vois. J'ai des questions…"~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23579 /* ~"J'espère que tu le trouveras. Au revoir."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23582 /* ~"Je vais continuer à chercher, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 6.0 7.2 15.1 19.2 23.0
  SAY #23498 /* ~Elle reste immobile, te regardant en silence.~ */
  IF ~~ THEN REPLY #23586 /* ~"T'as compris ? Tu peux choisir un nouveau nom."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #23499 /* ~Elle secoue la tête, reculant comme si elle était effrayée. "Mais… nnnooonn…"~ */
  IF ~~ THEN REPLY #23588 /* ~"Tu ne vois pas comment t'as changé ? Tu crois que ton vrai nom te conviendrait encore ?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23500 /* ~Elle s'arrête et porte les mains à ses joues. Le cadavre se mordille la lèvre inférieure.~ */
  IF ~~ THEN REPLY #23591 /* ~"Oui, tu vois ? Tu peux laisser tomber ton ancien nom, maintenant. Deviens quelque chose d'autre."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23501 /* ~"Mais… Quiiiii ? Queeeell nooom ?" Elle paraît troublée, accablée.~ */
  IF ~~ THEN REPLY #23593 /* ~"Tout ce que tu voudras. N'importe quoi."~ */ GOTO 12
  IF ~~ THEN REPLY #23594 /* ~"Tu en trouveras bien un. Au revoir."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #23502 /* ~Elle reste immobile pendant un instant, fixant le sol. Elle dresse soudainement la tête. "Toooon… nooom ? Moooon nooom ?"~ */
  IF ~~ THEN REPLY #23599 /* ~Pense à un nom pour elle.~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #67827 /* ~J'ai trouvé un nom pour une zombi qui n'en avait pas. Elle en a été très contente.~ */ GOTO 13
  IF ~~ THEN REPLY #23602 /* ~"Je pense que ce serait mieux si tu choisissais le tien. Au revoir."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 19.1
  SAY #23504 /* ~Tu penses à un nom, mais avant que tu aies pu le prononcer, la zombi te fait signe de te taire. Elle se rapproche et porte la main à son oreille. Tu lui murmures le nom… le cadavre fait un signe de tête, puis sourit. "Ouiiii… merciiii…"~ */
  IF ~~ THEN REPLY #23603 /* ~"Bien sûr. J'avais encore des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #23606 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #23506 /* ~"Coommment peeeux tuuu-teee sennntiir…. entiiiiier ?"~ */
  IF ~~ THEN REPLY #23608 /* ~Vérité : "T'as peut-être raison, mais je pense qu'il me manque plus que mon nom."~ */ GOTO 15
  IF ~~ THEN REPLY #23610 /* ~Mensonge : "Je me sens entier, avec ou sans nom."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_1","GLOBALLaw",-1)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #23507 /* ~Le zombi secoue simplement la tête tranquillement.~ */
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23617 /* ~"Alors, est-ce que je peux t'aider à trouver ton nom ?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23618 /* ~"Pourquoi ne pas choisir un nouveau nom ?"~ */ GOTO 8
  IF ~~ THEN REPLY #23620 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23622 /* ~"J'espère que tu le trouveras. Au revoir."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23625 /* ~"Je vais continuer à chercher. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3 7.3 13.0 15.2 19.4 20.1 21.0 22.0
  SAY #23508 /* ~Un long silence s'instaure. "Uuuuhhh ?" Le zombi hausse les épaules, l'une plus haut que l'autre. " Deeeemande Mmmarie, Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #23631 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #23634 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #23509 /* ~"Ellleee nooous guiiiide. Veillle suuur nooouus."~ */
  IF ~~ THEN REPLY #23637 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #23510 /* ~Alors que le zombi te fait face, un éclair de reconnaissance passe dans ses yeux morts. "Uuuhhhn." Elle te tend ses mains pourrissantes, comme pour demander de l'aide.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23640 /* ~"Bonjour…"~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23645 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #23646 /* ~Laisse le zombi tranquille.~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #23511 /* ~Alors que le zombi te fait face, un éclair de reconnaissance passe dans ses yeux morts. "Mmoon nnnooom… tuuu aaaas trouuuuvé mmmooon nooom ?"~ */
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23650 /* ~Vérité : "J'ai trouvé la tombe, mais le nom était… effacé. Illisible."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_NoName_1","GLOBALLaw",1)
~ JOURNAL #23659 /* ~J'ai dit à la zombi sans nom que le nom inscrit sur le tombeau était illisible… elle est devenue tout affolée.~ */ GOTO 23
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23653 /* ~Mensonge : "Oui, ton nom est… euh…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_2","GLOBALLaw",-1)
SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23660 /* ~J'ai menti à la zombi sans nom en lui disant que le nom inscrit sur le tombeau était lisible et je lui ai donné un nom de mon invention. Elle était contente.~ */ GOTO 13
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23655 /* ~"Non… mais pourquoi ne pas te choisir un nouveau nom ?"~ */ GOTO 8
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23656 /* ~"Pas encore. Pourquoi c'est tellement important pour toi ?"~ */ GOTO 7
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23657 /* ~"Pas encore, mais j'ai d'autres questions…"~ */ GOTO 16
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23658 /* ~"Non, mais je vais continuer à chercher."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #23512 /* ~Le cadavre te fait signe avec impatience lorsqu'elle s'aperçoit de ta présence. "Nnnooom ! J'aiii choisiii uuun nnnooom…"~ */
  IF ~~ THEN REPLY #23661 /* ~"Ah bon ? Qu'as-tu choisi ?"~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~La zombi sans nom a finalement suivi mon conseil et s'est choisi un nom : "Leicha".~ */ GOTO 21
  IF ~~ THEN REPLY #23662 /* ~"Bien, je suis content pour toi. J'ai des questions…"~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~La zombi sans nom a finalement suivi mon conseil et s'est choisi un nom : "Leicha".~ */ GOTO 16
  IF ~~ THEN REPLY #23663 /* ~"C'est bien. Je vais m'en aller, maintenant… au revoir."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~La zombi sans nom a finalement suivi mon conseil et s'est choisi un nom : "Leicha".~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23513 /* ~"Llleeeiiichaaa…"~ */
  IF ~~ THEN REPLY #23665 /* ~"Intéressant… ça colle, en quelque sorte. J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #23666 /* ~"C'est bien. Au revoir, Leicha."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",4)
~ THEN BEGIN 22 // from:
  SAY #23514 /* ~Le cadavre se dirige vers toi, souriant. "Meeeerciii… deee m'aiderrr aveeec moooon noooom…"~ */
  IF ~~ THEN REPLY #23667 /* ~"Bien sûr. J'ai des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #23668 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0
  SAY #23515 /* ~"N…n…nooon…" Le zombi tient sa tête secouée de tremblements dans les mains. "Paaas pooossiiiible…"~ */
  IF ~~ THEN REPLY #23669 /* ~"Pourquoi ne pas choisir un nouveau nom ?"~ */ GOTO 8
  IF ~~ THEN REPLY #23670 /* ~"Je m'excuse… au revoir."~ */ DO ~SetGlobal("NoName","GLOBAL",5)
~ EXIT
END

IF ~  Global("NoName","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #23516 /* ~Cette femme zombi fixe le vide, mâchoire pendante.~ */
  IF ~~ THEN REPLY #23671 /* ~"J'ai des questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #23672 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23517 /* ~Le cadavre est entièrement immobile… elle ne réagit pas à ta présence.~ */
  IF ~~ THEN REPLY #23673 /* ~Laisse-la tranquille.~ */ EXIT
END
