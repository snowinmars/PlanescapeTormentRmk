// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALAIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DALAIS~

IF ~  Global("Know_Alais","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3067 /* ~Le primaire te regarde d'un air de dégoût. "Qu'est-ce que VOUS voulez ?" Sa façon d'accentuer le "vous" est presque furieuse et manifestement insultante.~ */
  IF ~~ THEN REPLY #11435 /* ~"Cool ! Je voulais juste te poser quelques questions."~ */ GOTO 1
  IF ~~ THEN REPLY #11436 /* ~"De toi ? Rien."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11437 /* ~"À en juger par votre attitude, vous n'avez plus besoin de moi, et il me plairait grandement que vous ne me dérangiez plus. Bien le bonjour." Il se détourne avec raideur.~ */
  IF ~~ THEN REPLY #11438 /* ~"Écoute, excuse-moi pour ce que je t'ai dit tout à l'heure. J'ai juste besoin de réponses à certaines questions."~ */ GOTO 2
  IF ~~ THEN REPLY #11439 /* ~"Eh bien d'accord."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11440 /* ~"Ce qui est dit est dit, et n'est pas passé inaperçu. Mais je ne suis pas non plus complètement inflexible. Que voulez-vous me demander ?"~ */
  IF ~~ THEN REPLY #11441 /* ~"Qui es-tu déjà ?"~ */ GOTO 3
  IF ~~ THEN REPLY #11442 /* ~"Qui sont les clients de cette taverne ?"~ */ GOTO 4
  IF ~~ THEN REPLY #11443 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11444 /* ~"Je cherche un journal. En as-tu vu un récemment ?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11445 /* ~"Est-ce que tu as entendu parler d'un Récupérateur dénommé Pharod ?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11446 /* ~"Je voudrais te présenter mes excuses."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11447 /* ~"Je voudrais te présenter mes excuses."~ */ GOTO 11
  IF ~~ THEN REPLY #11448 /* ~"Rien. Laisse tomber"~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #11449 /* ~Il te foudroie du regard. "Vous m'avez assez insulté, 'l'ami'. La discussion s'arrête là." Dans sa fierté blessée, il te tourne le dos, rouge de colère. Tu as beau lui présenter tes excuses, il se fait un devoir de t'ignorer.~ */
  IF ~~ THEN REPLY #11450 /* ~Attaque-le.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11451 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #11452 /* ~"Ici, la seule personne que je connaisse, c'est Ebb, là-bas. Je viens d'arriver, et je n'ai pas pour habitude de me mêler des affaires des autres. Vous avez d'autres questions, ou je peux continuer à jouir de ma solitude ?"~ */
  IF ~~ THEN REPLY #11454 /* ~"Eh bien, en fait, j'aurais d'abord d'autres questions à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #11455 /* ~"Tu peux reprendre ce que tu étais en train de faire."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 8.0 22.0
  SAY #11456 /* ~Il soupire et te jette un regard dédaigneux. "Allons, le couturé, finissons-en. Posez votre question."~ */
  IF ~~ THEN REPLY #11458 /* ~"Qui es-tu déjà ?"~ */ GOTO 3
  IF ~~ THEN REPLY #11460 /* ~"Qui sont les clients de cette taverne ?"~ */ GOTO 4
  IF ~~ THEN REPLY #11461 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11462 /* ~"Je cherche un journal. En as-tu vu un récemment ?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11464 /* ~"Est-ce que tu as entendu parler d'un Récupérateur dénommé Pharod ?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11465 /* ~"Je voudrais te présenter mes excuses."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11466 /* ~"Je voudrais te présenter mes excuses."~ */ GOTO 11
  IF ~~ THEN REPLY #11467 /* ~"Rien. Laisse tomber"~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.2
  SAY #11469 /* ~"Ici, c'est une taverne, spectacle familier s'il en est. Enfin, si l'on excepte les fiélons dans le coin là-bas et la parade de bizarreries qui défile devant moi sans répit. Dans cet endroit, au moins, je trouve une certaine humanité, ce qui me réconforte."~ */
  IF ~~ THEN REPLY #11470 /* ~"Ah, d'accord. Tu es béjaune, c'est ça ?"~ */ GOTO 12
  IF ~~ THEN REPLY #11471 /* ~"Tu es un primaire, hein ?"~ */ GOTO 13
  IF ~~ THEN REPLY #11472 /* ~"J'imagine. J'aurais d'autres questions, si tu permets."~ */ GOTO 5
  IF ~~ THEN REPLY #11473 /* ~"J'imagine. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 5.3
  SAY #11474 /* ~"Un journal ? Où l'aurais-je vu ? Je découvre cet endroit, comment voulez-vous que je me rappelle avoir vu un JOURNAL ? Voilà maintenant que vous ajoutez l'idiotie à l'insulte et à l'agressivité."~ */
  IF ~~ THEN REPLY #11475 /* ~"Disons qu'on est quittes côté insultes maintenant, d'accord ?"~ */ GOTO 14
  IF ~~ THEN REPLY #11476 /* ~"Tu me provoques ?"~ */ GOTO 15
  IF ~~ THEN REPLY #11477 /* ~"Laisse tomber. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #11478 /* ~Attaque-le.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 5.4
  SAY #11524 /* ~"J'ai dit que je venais d'arriver, et vous vous êtes moqué de moi. À l'évidence, je ne sais rien de ces 'Récupérateurs'. Allez-vous me laisser en paix, à présent ?"~ */
  IF ~~ THEN REPLY #11525 /* ~"Pas encore. J'ai encore besoin de réponses de ta part."~ */ GOTO 5
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11526 /* ~"Je voudrais te présenter mes excuses."~ */ GOTO 11
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11527 /* ~"J'aimerais faire amende honorable."~ */ GOTO 9
  IF ~~ THEN REPLY #11528 /* ~"Certainement. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 5.5 8.2
  SAY #11529 /* ~Il paraît choqué, comme si la notion même lui était inconnue. "Vous voulez me… présenter vos excuses ?"~ */
  IF ~~ THEN REPLY #11530 /* ~"C'est ce que j'ai dit."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
IncrementGlobal("Alais_Apology","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #11531 /* ~"Non, j'ai réfléchi et j'ai changé d'avis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 14.0
  SAY #11532 /* ~"Alors… l'honneur exige que je les accepte, j'imagine. Bon. En retour, je vous présente moi aussi mes excuses. Laissons cela et n'en parlons plus."~ */
  IF ~~ THEN REPLY #11533 /* ~"D'accord. Tu pourrais répondre à d'autres questions pour moi ?"~ */ GOTO 16
  IF ~~ THEN REPLY #11534 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.6 5.6 8.1
  SAY #11535 /* ~"Je ne suis pas stupide au point de me laisser insulter et de vous pardonner sans autre cérémonie. Allez donc vous faire empaler, monsieur. J'espère vous revoir plus couturé, et plus honorable, qui sait ? Bien le bonjour." Il se détourne avec raideur et t'ignore complètement.~ */
  IF ~~ THEN REPLY #11536 /* ~Attaque-le.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11537 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 13.1
  SAY #11538 /* ~"C'est la seconde fois que vous m'insultez et… c'est une fois de trop. En garde !"~ */
  IF ~~ THEN REPLY #11539 /* ~"Ça peut s'arranger…"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11540 /* ~"Si vous entendez que je viens du monde réel, alors oui, je suis primaire. Là-bas, j'ai quelque réputation comme guerrier. Et, même si je ne connais pas tous les points faibles de cet endroit, je n'irais certes pas me qualifier de 'béjaune', comme m'ont appelé plusieurs vauriens d'ici."~ */
  IF ~~ THEN REPLY #11541 /* ~"Non, c'est bon. On oublie les insultes, d'accord ?"~ */ GOTO 14
  IF ~~ THEN REPLY #11542 /* ~"Vraiment ? Moi, si."~ */ GOTO 12
  IF ~~ THEN REPLY #11543 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0 13.0
  SAY #11545 /* ~"En rester là ? J'attends d'abord vos excuses, mécréant." Il a l'air de chercher la bagarre. "Dois-je encore vous provoquer ?"~ */
  IF ~~ THEN REPLY #11546 /* ~"Bon, très bien. Excuse-moi."~ */ GOTO 10
  IF ~~ THEN REPLY #11547 /* ~"Que je m'excuse ? Auprès de toi ? Jamais."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 7.1 14.1
  SAY #11549 /* ~"Vous n'êtes qu'un valet, qu'un gringalet sans honneur, qu'un bout de viande sans âme, qu'un homme plus tout jeune sous ses cicatrices, qu'un pauvre hère condamné à l'exil et dépossédé des qualités qui font l'homme. J'en terminerai là, car vous ne m'inspirez que de la pitié. Bien le bonjour." Il te tourne le dos.~ */
  IF ~~ THEN REPLY #11550 /* ~Attaque-le.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11551 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from: 10.0 19.0 20.1 23.3 25.1 26.0 27.0 28.1
  SAY #11553 /* ~"Que voulez-vous savoir ?"~ */
  IF ~~ THEN REPLY #11555 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11559 /* ~"Qui sont les clients de cette taverne ?"~ */ GOTO 23
  IF ~~ THEN REPLY #11561 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11562 /* ~"Je cherche un journal. En as-tu vu un récemment ?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11583 /* ~"Est-ce que tu as entendu parler d'un Récupérateur dénommé Pharod ?"~ */ GOTO 27
  IF ~~ THEN REPLY #11658 /* ~"Rien. Laisse tomber"~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #11565 /* ~Tu vois un homme svelte et musclé aux vêtements ternes et banals en regard des tenues plus extravagantes que l'on porte habituellement dans cette cité. Il regarde tout le monde de haut, et n'a pas du tout l'air à sa place par ici. "Que voulez-vous ?" te demande-t-il.~ */
  IF ~~ THEN REPLY #11566 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11568 /* ~"Qui sont les clients de cette taverne ?"~ */ GOTO 23
  IF ~~ THEN REPLY #11570 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11573 /* ~"Je cherche un journal. En as-tu vu un récemment ?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11574 /* ~"Est-ce que tu as entendu parler d'un Récupérateur dénommé Pharod ?"~ */ GOTO 27
  IF ~~ THEN REPLY #11580 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0
  SAY #11585 /* ~"Alaïs, le grand guerrier ! Vous me connaissez sans doute ?"~ */
  IF ~~ THEN REPLY #11588 /* ~Mensonge : "Oui."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaos_Alais_One","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #11590 /* ~Vérité : "Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Alais_One","GLOBALLaw",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11592 /* ~"Enfin ! Tout le monde ici n'est donc pas totalement ignare ! Je vous permets de m'offrir un verre, et nous pourrons échanger des anecdotes ! Je vous régalerai de mes dernières aventures, dont celle qui m'a amené dans cette cité étonnante et désespérante."~ */
  IF ~~ THEN REPLY #11594 /* ~"Je meurs d'impatience. Mais d'abord, est-ce que tu pourrais répondre à quelques questions pour moi ?"~ */ GOTO 16
  IF ~~ THEN REPLY #11595 /* ~"Tu viens d'où ? Comment est-ce que tu ES arrivé ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #11597 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #11606 /* ~"Est-ce possible ? Se peut-il que nul dans cette cité n'ait entendu parler de moi, de mes exploits ? Hélas… une fois de plus je dois prouver ma valeur. Et moi qui croyais que ma renommée avait franchi les frontières…"~ */
  IF ~~ THEN REPLY #11608 /* ~"De quel monde *tu* viens ?"~ */ GOTO 21
  IF ~~ THEN REPLY #11609 /* ~"C'est sûrement le cas. Réponds à quelques questions pour moi, d'accord ?"~ */ GOTO 16
  IF ~~ THEN REPLY #11612 /* ~"On a tous des déceptions. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 25.0
  SAY #11629 /* ~"Je viens de la cité d'Ali brûle, sur la rivière Saine. Tu as sûrement entendu parler de ses splendeurs et de ses merveilles ? C'est pas grave, c'est pas grave… cet endroit est arriéré et ignorant quand il s'agit des splendeurs des vraies cités. J'ai appris que les sauvages de cette cité affublaient ma terre natale du qualificatif de "primaire" - mais primaire par rapport à quoi, j'aimerais bien le savoir."~ */
  IF ~~ THEN REPLY #45189 /* ~"Comment est-ce que tu as atterri ici ?"~ */ GOTO 28
  IF ~~ THEN REPLY #45190 /* ~"Je vois. Tu es très loin de chez toi. Bonne chance et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.2 28.0
  SAY #11637 /* ~Il se hérisse, rougit et serre la poignée de son épée. "Béjaune, hein ? Monsieur, vos paroles me blessent, et je vous dis adieu en espérant bien que nos chemins ne se croisent plus jamais." Il se détourne, fou de rage de cette atteinte à sa fierté.~ */
  IF ~~ THEN REPLY #11638 /* ~"Je voulais juste te poser quelques questions."~ */ GOTO 5
  IF ~~ THEN REPLY #11639 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.1 17.1
  SAY #11640 /* ~"Je ne connais que l'ancien, Ebb Craquerotules, qui m'enseigne les mœurs de la cité et des 'plaines'. La magie de mon adversaire a dû nous catapulter fort loin, car il n'y avait pas de plaine d'où nous venons."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",0)
~ THEN REPLY #11641 /* ~"Non, non… Les plans. Comme pour les plans de l'existence. Il y a les plans de l'imagination, de la pensée et de la croyance. Ce ne sont pas des prairies ou des prés physiques, mais d'autres dimensions."~ */ DO ~AddexperienceParty(250)
SetGlobal("Alais_Ed","GLOBAL",1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",1)
~ THEN REPLY #11642 /* ~"Non, non… Les plans. Comme pour les plans de l'existence. Il y a les plans de l'imagination, de la pensée et de la croyance. Ce ne sont pas des prairies ou des prés physiques, mais d'autres dimensions."~ */ GOTO 24
  IF ~~ THEN REPLY #11643 /* ~"J'y suis. Tu es béjaune."~ */ GOTO 22
  IF ~~ THEN REPLY #11644 /* ~"Hum. Bon. Écoute, j'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #11645 /* ~"Je vois. Tu es très loin de chez toi. Bonne chance et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #11646 /* ~La confusion l'envahit. "Je… je vois. Je commence à saisir ce que disait le vieil homme… je vous prie de m'excuser. Je dois réfléchir à tout cela. Au revoir."~ */
  IF ~~ THEN REPLY #11647 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.2 17.2
  SAY #11648 /* ~"Je ne le connais pas. Dès mon arrivée ici, j'ai compris qu'il me fallait trouver un endroit où prendre le temps de me repérer. Imaginez ma surprise lorsque j'ai découvert que, dans cette partie du monde, une simple taverne regorge de fous et d'excentriques. J'ai débarqué dans un asile !"~ */
  IF ~~ THEN REPLY #11649 /* ~"D'où viens-tu ?"~ */ GOTO 21
  IF ~~ THEN REPLY #11650 /* ~"C'est comme ça parfois. Je voudrais te poser d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #11651 /* ~"Oui, c'est vrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.3 17.3
  SAY #11652 /* ~Je crains de ne guère pouvoir vous aider. Je fais mon possible pour trouver mes marques en ce lieu inconnu et, même si je prête attention à des détails infimes, je dois bien avouer que je n'ai pas spécifiquement cherché un quelconque journal."~ */
  IF ~~ THEN REPLY #11653 /* ~"Bon, très bien. Réponds à d'autres questions pour moi."~ */ GOTO 16
  IF ~~ THEN REPLY #11654 /* ~"Très bien. Merci de m'avoir accordé un peu de temps."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.4 17.4
  SAY #11655 /* ~"Pharod ? Récupérateur ? Ce sont là des termes qui me sont inconnus, mais, si jamais je les entends dans un autre contexte, je penserai à vous. D'ailleurs, il serait difficile d'oublier votre visage."~ */
  IF ~~ THEN REPLY #11656 /* ~"Merci. Réponds à d'autres questions pour moi, d'accord ?"~ */ GOTO 16
  IF ~~ THEN REPLY #11657 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 21.0
  SAY #2950 /* ~"J'étais en train de traquer mon vieil ennemi, le maléfique Tir Tanelel." Il fait une courte pause, comme pour vérifier que tu sais de qui il parle, puis poursuit : "Faisant appel à sa magie démoniaque, il s'est enfui par le biais d'un portail. Mais, avant qu'il ne puisse m'échapper, je me suis élancé à sa poursuite… et je me suis retrouvé ici."~ */
  IF ~~ THEN REPLY #45193 /* ~"J'y suis. Tu es un béjaune."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",3)
~ GOTO 22
  IF ~~ THEN REPLY #45195 /* ~"Quelle aventure ! J'ai d'autres questions à te poser."~ */ GOTO 16
  IF ~~ THEN REPLY #45196 /* ~"Bonne chance. Tu en auras besoin. Au revoir."~ */ EXIT
END
