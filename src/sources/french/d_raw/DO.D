// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3070 /* ~Tu vois un homme complètement immobile. Il ne sourcille pas. En y regardant de plus près, il ne respire même pas - il est là, c'est tout. Ses orbites sont des trous béants dans son visage. À l'intérieur, une lumière grise et terne semble danser au hasard. En regardant dans les orbites, le sentiment sinistre et creux du vide infini te fait frissonner, comme si tu observais un éclat d'éternité. Il tourne lentement la tête vers toi (tu remarques qu'aucun des muscles ne bouge sous sa peau), et il parle d'un timbre pur et carillonnant : "Enchanté, vagabond. Tu as encore oublié, n'est-ce pas ?"~ */
  IF ~~ THEN REPLY #3370 /* ~"Tu me connais, étranger ?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10698 /* ~"Je n'ai pas de temps à perdre avec ces divagations énigmatiques. Je cherche un journal. C'est urgent. Sais-tu où je pourrais le trouver ?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10699 /* ~"Es-tu Pharod ? Je cherche Pharod, le Récupérateur."~ */ GOTO 14
  IF ~~ THEN REPLY #10700 /* ~"Qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10701 /* ~"Laisse tomber. J'ai autre chose à faire. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10702 /* ~"Re-bonjour, voyageur." O ne paraît pas avoir bougé depuis la dernière fois que tu lui as parlé. "Que puis-je pour toi ?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10703 /* ~"Parle-moi de cet alphabet divin que tu as évoqué tout à l'heure."~ */ GOTO 9
  IF ~~ THEN REPLY #10704 /* ~"Parle-moi de toi."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10705 /* ~"Je cherche un journal. C'est urgent. Sais-tu où je pourrais le trouver ?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10706 /* ~"As-tu vu ou entendu parler de Pharod, le Récupérateur ?"~ */ GOTO 14
  IF ~~ THEN REPLY #10707 /* ~"Parle-moi des clients de cette taverne."~ */ GOTO 20
  IF ~~ THEN REPLY #10708 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #10709 /* ~Lorsqu'il s'exprime, tu te sens de nouveau en contact avec l'éternité - dans sa bouche, tu ne distingues ni langue, ni dents, comme si cet homme était une coquille qui renfermait un infini. "Je t'ai déjà parlé, mais tu ne cesses de l'oublier. Ta quête sans fin pour découvrir qui tu es se termine toujours par l'amnésie. Quand tu t'approches de la vérité, tu ne peux te résoudre à l'affronter. Espérons que tu auras la force de supporter ton existence."~ */
  IF ~~ THEN REPLY #10710 /* ~"Que sais-tu de moi ? Comment sais-tu cela ?"~ */ GOTO 3
  IF ~~ THEN REPLY #10711 /* ~"Je n'ai pas de temps à perdre avec ces folies. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10712 /* ~"Voici ce que je sais… Tel une mouche, tu t'élèves des restes de ton ancien réceptacle, tu volètes de-ci de-là, et tu finis par mourir devant la fenêtre de la vérité. Tu te cognes à la vitre, cherchant la lumière sans avoir de plan d'actions, et tu retombes, épuisé, lorsque tu échoues. Parfois, tu te poses sur les autres pour t'en nourrir, puis tu t'en vas sans te soucier d'eux. Je t'ai observé, je t'ai écouté, je t'ai vu repartir aussi démuni qu'avant. Quand donc tes erreurs t'apprendront-elles quoi que ce soit ?"~ */
  IF ~~ THEN REPLY #10713 /* ~"Ce ton ne me plaît guère."~ */ GOTO 4
  IF ~~ THEN REPLY #10714 /* ~"Qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10715 /* ~"Non, pas cette fois. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #10716 /* ~Attaque-le.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 20.1
  SAY #10717 /* ~Bien qu'il ne rie pas, sa voix ne cache pas l'ironie. "C'est tout ce que tu sais faire pour résoudre tes problèmes ? Te battre aveuglément ? Ou t'arrivera-t-il de réfléchir une fois dans ton existence pitoyable ?"~ */
  IF ~~ THEN REPLY #10718 /* ~"Je te préviens…"~ */ GOTO 5
  IF ~~ THEN REPLY #10719 /* ~"Qui es-tu pour me parler de cette manière ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10720 /* ~"Je n'ai pas besoin de ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10721 /* ~"Tu me défies ? Le verbe m'a créé, et je connais des mots qui te détruiront, dessécheront le peu qu'il te reste d'âme et te laisseront recroquevillé par terre à geindre. Toutefois, je n'ai aucun besoin de gaspiller de tels secrets sur toi quand il me suffit de m'aveugler à ta présence."~ */
  IF ~~ THEN REPLY #10722 /* ~Attaque-le.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #10723 /* ~"Mais qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10724 /* ~"J'en ai assez de cette suffisance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.1 3.1 4.1 5.1 11.4
  SAY #10725 /* ~"Je suis O." Son nom, lorsqu'il le prononce, te semble composé de beaucoup plus qu'une simple lettre - comme s'il comprenait toutes sortes de possibilités et de nuances. Une gorge humaine ne pourrait émettre un tel son.~ */
  IF ~~ THEN REPLY #10726 /* ~"Qu'est-ce que c'est que ce nom ?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10727 /* ~"Qu'est-ce que tu es ?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10728 /* ~"Ça m'a fait plaisir de te rencontrer, O. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #10729 /* ~"C'est mon nom. Le nom d'une portion d'éternité. Une lettre du divin alphabet. Me comprendre, c'est comprendre l'existence. Je suis une part de tout ce qui existe. Mon être embrasse la vérité. Je suis mathématique, organique, métaphysique."~ */
  IF ~~ THEN REPLY #10730 /* ~"Je crois que tu es complètement fou."~ */ GOTO 8
  IF ~~ THEN REPLY #10731 /* ~"Qu'est-ce que ça veut dire ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10732 /* ~"… Bien. Réponds à d'autres questions, d'accord ?"~ */ GOTO 11
  IF ~~ THEN REPLY #10733 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10734 /* ~"Si c'est ce qu'il te plaît de croire. Bonne chance, voyageur. Adieu."~ */
  IF ~~ THEN REPLY #10735 /* ~"Réponds à d'autres questions, d'accord ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10736 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 7.1 11.0
  SAY #10737 /* ~"Le divin alphabet écrit le nom de tout ce qui existe, depuis la graine qui se trouve au cœur de chaque plan élémentaire jusqu'au centre de l'Au-Delà. Mes frères/sœurs…" (un seul mot, traduit par deux dans ton esprit.) "… et moi sommes liés à tout ce qui est, fut et sera. Nous sommes l'idée, la réalité et le concept, et, aussi, l'inimaginable."~ */
  IF ~~ THEN REPLY #10738 /* ~"Parle-moi du Grand Au-Delà."~ */ GOTO 12
  IF ~~ THEN REPLY #10739 /* ~"Alors, qu'est-ce que tu fais ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #10740 /* ~"Alors, cela signifie que tu connais tous les secrets de l'existence, c'est ça ?"~ */ GOTO 18
  IF ~~ THEN REPLY #10741 /* ~"Alors, tu devrais pouvoir répondre à quelques questions pour moi."~ */ GOTO 11
  IF ~~ THEN REPLY #10742 /* ~"Il me faut un peu de temps pour réfléchir à tout ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #10743 /* ~Il t'ignore. Sans savoir comment cette idée t'est venue, tu gages qu'il va continuer ainsi pendant un certain temps. Cette certitude te pèse, soudain.~ */
  IF ~~ THEN REPLY #10744 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2 9.3 12.1 13.2 14.0 15.0 17.0 18.1 20.0
  SAY #10745 /* ~"Que veux-tu savoir ?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10746 /* ~"Tu as parlé d'un alphabet divin ?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10747 /* ~"Je cherche un journal. C'est urgent. Sais-tu où je pourrais le trouver ?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10748 /* ~"As-tu vu ou entendu parler de Pharod, le Récupérateur ?"~ */ GOTO 14
  IF ~~ THEN REPLY #10749 /* ~"Parle-moi des clients de cette taverne."~ */ GOTO 20
  IF ~~ THEN REPLY #10750 /* ~"Parle-moi de toi."~ */ GOTO 6
  IF ~~ THEN REPLY #10751 /* ~"Tout bien réfléchi, rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #10752 /* ~"Tu ne comprendrais pas. Aucun mortel ne comprendrait. Cela échappe à l'entendement, sauf à celui des puissances les plus élevées, et, lorsqu'elles comprennent, elles-mêmes échappent à l'entendement des mortels. Je ne peux pas te l'expliquer autrement. Peut-être comprendras-tu un jour."~ */
  IF ~~ THEN REPLY #10753 /* ~"Alors, qu'est-ce que tu fais ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #10754 /* ~"Alors, réponds à d'autres questions pour moi."~ */ GOTO 11
  IF ~~ THEN REPLY #10755 /* ~"Je vois. Alors au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.1 1.2 11.1
  SAY #10756 /* ~"Je sais où tu peux le trouver, mais il ne m'appartient pas de te révéler cette information. Sois sûr que tu le trouveras, ainsi que l'homme que tu cherches."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10757 /* ~"Sais-tu où se trouve Pharod ?"~ */ GOTO 14
  IF ~~ THEN REPLY #10758 /* ~"Que sais-tu à ce sujet ?"~ */ GOTO 15
  IF ~~ THEN REPLY #10759 /* ~"Je suppose que je dois te remercier. Tu peux peut-être répondre à une autre question ?"~ */ GOTO 11
  IF ~~ THEN REPLY #10760 /* ~"Je suppose que je dois te remercier. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 1.3 11.2 13.0
  SAY #10761 /* ~"Je sais où il est. Un indice : près d'ici. Tu le trouveras dans la Ruche, dissimulé derrière un voile de secret."~ */
  IF ~~ THEN REPLY #10762 /* ~"Comme toutes tes réponses, d'ailleurs. Peux-tu répondre à une autre question pour moi ?"~ */ GOTO 11
  IF ~~ THEN REPLY #10763 /* ~"Alors, il vaudrait mieux que je parte à sa recherche. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #10764 /* ~"Je sais que ta quête t'emmènera loin de ta recherche d'un simple journal, jusqu'aux limites de l'existence. Tu lutteras pour garder ta vie et ton esprit… et je ne t'en dirai pas davantage à ce sujet."~ */
  IF ~~ THEN REPLY #10765 /* ~"Alors, parle-moi d'autre chose."~ */ GOTO 11
  IF ~~ THEN REPLY #10766 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1 12.0
  SAY #10767 /* ~"Et bien, j'observe le flux et le reflux de la mortalité."~ */
  IF ~~ THEN REPLY #10768 /* ~"Et que vois-tu ?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #10769 /* ~"Vous, mortels, êtes pareils aux guêpes, à bâtir vos vies/nids sur des branches fines. Si le vent détruit votre foyer/vie, c'est lui que vous essayez de piquer. Au lieu de prendre conscience de vos erreurs stupides, d'essayer de réparer les dégâts que vous avez causés et de tirer parti de l'expérience, vous faites du mal à ceux qui ont le malheur de se trouver près de vous lorsque vous souffrez. Je vais te donner un conseil, qui s'applique à tout mortel : cesse de te comporter en insecte et apprends à agir en être intelligent."~ */
  IF ~~ THEN REPLY #10770 /* ~"Je vais y réfléchir. En attendant, réponds à d'autres questions pour moi."~ */ GOTO 11
  IF ~~ THEN REPLY #10771 /* ~"Merci du conseil. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #10772 /* ~"Beaucoup, mais en partie. Sans lien avec mes frères/sœurs, je ne suis qu'une lettre. Tout seul, je constitue un symbole. Unis, nous formons un langage et un pouvoir."~ */
  IF ~~ THEN REPLY #10773 /* ~"Alors, tu ne connais pas les secrets de l'existence ?"~ */ GOTO 19
  IF ~~ THEN REPLY #10774 /* ~"Alors, tu ne sais rien. Tu connaîtras peut-être les réponses à quelques-unes de mes questions ?"~ */ GOTO 11
  IF ~~ THEN REPLY #10775 /* ~"Belle métaphore, à bien des égards. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #10776 /* ~"Je n'ai pas dit cela. Une lettre, même seule, demeure une force. Laisse-moi te montrer." Il ouvre la bouche de plus en plus grand. Le masque qui constitue son visage se déchire autour de ses yeux, de son nez, de sa bouche, révélant ce lambeau d'infini que tu as déjà aperçu. Tu t'y perds, à la dérive… jusqu'à t'y fondre. Quand tu reprends conscience… tu constates qu'O a disparu. Et pourtant, tes horizons se sont élargis. L'illumination t'a été accordée, quoique fugacement, fugitivement.~ */
  IF ~~ THEN REPLY #10777 /* ~"C'était… indescriptible."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.4 11.3
  SAY #10778 /* ~"Les clients de cet endroit sont très différents, mais tous mortels. Les préoccupations des mortels sont limitées mais ont cependant le potentiel de les guider vers la Vérité. Mais je te dirai ceci : tu trouveras là un compagnon que tu chériras autant que ton cœur le permettra."~ */
  IF ~~ THEN REPLY #10779 /* ~"Je suppose que je devrais être offensé, mais je préfère ignorer ce commentaire. Réponds à une autre question, veux-tu ?"~ */ GOTO 11
  IF ~~ THEN REPLY #10780 /* ~"Ce ton ne me plaît guère."~ */ GOTO 4
  IF ~~ THEN REPLY #10781 /* ~"Un grand merci. Au revoir."~ */ EXIT
END
