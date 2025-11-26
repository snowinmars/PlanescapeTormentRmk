// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Ignus","GLOBAL",1)
NearbyDialog("DIgnus")
~ THEN BEGIN 0 // from:
  SAY #3073 /* ~Alors que tu t'approches de la femme pour lui parler, les yeux d'Ignus s'enflamment et il l'étreint avant que tu aies pu l'arrêter. Elle répond à son étreinte et se perd dans ses flammes. Elle ne crie pas. La dernière chose que tu vois d'elle reste gravée dans ta mémoire : ses yeux brillent d'une passion ardente et d'un amour dévastateur. Il ne reste rien d'elle - pas même des cendres.~ */
  IF ~~ THEN REPLY #10815 /* ~"C'était important et urgent, Ignus. Je voulais lui parler."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
SetAnimState(Myself,ANIM_MIMEDIE)
SetGlobal("Drusilla","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10816 /* ~Cette femme est recouverte de bleus décolorés sur le visage et les bras, et dans ses yeux caves se lit un regard désespéré. Elle a dû être belle jadis… il y a bien longtemps. Elle se tourne vers toi, lentement. Son visage prend vie, et son regard brille soudain d'une lueur si sardonique que tu as du mal à en croire tes yeux. "Bienvenue au Cadavre fumant, Balafré."~ */
  IF ~~ THEN REPLY #10817 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10818 /* ~"Je cherche un journal. Tu ne l'aurais pas vu par hasard ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10819 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 5
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10820 /* ~"Qui est-ce qui brûle près de l'entrée ?"~ */ JOURNAL #68053 /* ~Drusilla, qui se tient à l'entrée du bar du Cadavre fumant, m'a parlé de l'homme brûlant au-dessus du grill. Il se nomme Ignus, et c'est apparemment le plus grand mage issu de la Ruche depuis de nombreuses années. Ses rivaux ont fait de lui un conduit à destination du Plan Élémentaire du Feu, et seule une concentration de tous les instants lui permet de rester en vie. Il doit être extrêmement puissant…~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10821 /* ~"Je cherche un Récupérateur appelé Pharod. L'as-tu vu ou as-tu entendu parler de lui ?"~ */ GOTO 19
  IF ~~ THEN REPLY #10822 /* ~"Rien. Bonne journée."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10823 /* ~Cette fois, Drusilla paraît quelque peu plus animée - du moins, tu ne vois plus le profond désespoir que tu avais ressenti la première fois que tu lui as parlé. "Re-bonjour, voyageur."~ */
  IF ~~ THEN REPLY #10824 /* ~"Bonjour, Drusilla. J'aimerais que tu répondes à quelques questions pour moi."~ */ GOTO 7
  IF ~~ THEN REPLY #10825 /* ~"Bonjour, Drusilla, et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 7.0
  SAY #10826 /* ~"Moi ? Je m'appelle Drusilla. Et toi, tu es un béjaune. Ne me demande pas comment j'le sais. Ça se voit comme le nez au milieu de la figure."~ */
  IF ~~ THEN REPLY #10827 /* ~"Béjaune ? Je ne crois pas."~ */ GOTO 8
  IF ~~ THEN REPLY #10828 /* ~"Ça se voit. C'est ça. Tu peux répondre à quelques questions ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10829 /* ~"Je ne veux pas entendre ça. Surtout pas venant de toi. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 7.1
  SAY #10830 /* ~"Un journal ? Oui, bien sûr. J'ai noté tous les journaux qui ont été égarés, juste au cas où un type tout couturé de cicatrices entrerait dans mon bar favori pour se renseigner. Tu poses la même question à tout le monde ? Fascinant. "~ */
  IF ~~ THEN REPLY #10831 /* ~"Tu as la langue bien pendue, hein ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10832 /* ~"Réponds juste à mes questions et finissons-en."~ */ GOTO 7
  IF ~~ THEN REPLY #10833 /* ~"Plus fascinant que ta vie, apparemment."~ */ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.2 7.2
  SAY #10834 /* ~"Ici, c'est le Cadavre fumant, même si l'individu en question, là-bas, n'est pas encore mort. Il se maintient en vie. Pour venir ici, il faut aimer voir les autres souffrir, et les fiélons adorent, soit dit en passant. Ou il faut apprécier la tranquillité. À lui seul, le nom du bar décourage la plupart des biges."~ */
  IF ~~ THEN REPLY #10835 /* ~"Mais qui est-ce ?"~ */ JOURNAL #68053 /* ~Drusilla, qui se tient à l'entrée du bar du Cadavre fumant, m'a parlé de l'homme brûlant au-dessus du grill. Il se nomme Ignus, et c'est apparemment le plus grand mage issu de la Ruche depuis de nombreuses années. Ses rivaux ont fait de lui un conduit à destination du Plan Élémentaire du Feu, et seule une concentration de tous les instants lui permet de rester en vie. Il doit être extrêmement puissant…~ */ GOTO 6
  IF ~~ THEN REPLY #10836 /* ~"Je comprends. Réponds à d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10837 /* ~"C'est un nom approprié. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 5.0 7.4
  SAY #10838 /* ~Le désespoir que tu lui connaissais s'empare d'elle pendant un bref instant, tel une ombre sur son visage. "C'est Ignus, l'un des plus grands magiciens sortis de ce cloaque. Ils l'ont capturé et ont ouvert à travers lui un conduit vers le Plan Élémentaire du Feu. Il est devenu une porte d'accès au plan et ne se maintient en vie que par sa force de volonté. Si on l'arrosait pendant quelque temps, cela lui redonnerait vie - mais il faudrait plus d'eau qu'on n'en trouve ici."~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10839 /* ~"Et cette carafe ? On dit qu'elle est intarissable."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10840 /* ~"Quelqu'un devrait pouvoir trouver quelque chose. Ah, bref. Peux-tu répondre à d'autres questions pour moi ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10841 /* ~"Quels sont tes liens avec lui ?"~ */ GOTO 18
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20699 /* ~"Et cette carafe d'eau ? On dit qu'elle est intarissable."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10842 /* ~"C'est dommage. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.1 4.1 5.1 6.1 8.0 9.0 18.0 19.0
  SAY #10843 /* ~"Oui, voyageur ? Qu'est-ce que tu cherches ?"~ */
  IF ~~ THEN REPLY #10844 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10845 /* ~"Je cherche un journal. Tu ne l'aurais pas vu par hasard ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10846 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10847 /* ~"Je cherche un Récupérateur appelé Pharod. L'as-tu vu ou as-tu entendu parler de lui ?"~ */ GOTO 19
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10848 /* ~"Qui est-ce qui brûle près de l'entrée ?"~ */ JOURNAL #68053 /* ~Drusilla, qui se tient à l'entrée du bar du Cadavre fumant, m'a parlé de l'homme brûlant au-dessus du grill. Il se nomme Ignus, et c'est apparemment le plus grand mage issu de la Ruche depuis de nombreuses années. Ses rivaux ont fait de lui un conduit à destination du Plan Élémentaire du Feu, et seule une concentration de tous les instants lui permet de rester en vie. Il doit être extrêmement puissant…~ */ GOTO 6
  IF ~~ THEN REPLY #10849 /* ~"Rien. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #10850 /* ~Elle t'adresse un sourire narquois et ses bleus semblent s'effacer. "Si tu le dis, chéri."~ */
  IF ~~ THEN REPLY #10851 /* ~"Peu importe. Réponds à quelques questions pour moi."~ */ GOTO 7
  IF ~~ THEN REPLY #10852 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0
  SAY #10853 /* ~"Oui, la langue bien pendue dans une tête bien faite. Je ne suis pas si enfumée que tu crois, bougre. J'ai un cerveau."~ */
  IF ~~ THEN REPLY #10854 /* ~"Si tu es si intelligente, tu devrais pouvoir répondre à mes questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10855 /* ~"Dommage qu'il ne soit pas EN toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY #10856 /* ~"Ah ? Tu as déjà été amoureux d'une flamme vivante ? Tu as déjà voulu disparaître dans les bras de l'autre, consumé par la passion ? Tes yeux me disent que tu aurais bien voulu, mais que tu n'as pas eu cette chance. Fascinant ? Les cicatrices n'ont rien de fascinant. Les combats n'ont rien de fascinant. Les durs n'ont rien de fascinant. TOI tu n'as rien de fascinant."~ */
  IF ~~ THEN REPLY #10857 /* ~"Je ne vois pas pourquoi je me justifierais auprès de toi."~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #10858 /* ~"Par où dois-je commencer ? Je suis un être immortel, je perds la mémoire à chaque fois que je meurs, j'ai un crâne flottant comme acolyte, j'ai vécu des choses si effrayantes que la plupart des mortels en vomiraient leur âme par les orbites, et tu me dis qu'être amoureux d'un feu est fascinant ? Ça n'a rien de fascinant - c'est simplement insensé."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #10859 /* ~"Par où dois-je commencer ? Je suis un être immortel, je perds la mémoire à chaque fois que je meurs, j'ai vécu des choses si effrayantes que la plupart des mortels en vomiraient leur âme par les orbites, et tu me dis qu'être amoureux d'un feu est fascinant ? Ça n'a rien de fascinant - c'est simplement insensé."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #10860 /* ~"Cette conversation est terminée."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #10861 /* ~"Non, ce serait trop dur, hein ? Allez, on en reste là, j'ai plus rien à te dire." Elle te tourne le dos.~ */
  IF ~~ THEN REPLY #10862 /* ~"Je n'ai pas encore dit mon dernier mot."~ */ EXIT
  IF ~~ THEN REPLY #10863 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 10.2
  SAY #10864 /* ~Elle sursaute et te dévisage. Sa lassitude semble l'abandonner. "C'est toi, hein ? C'est toi !"~ */
  IF ~~ THEN REPLY #10865 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10866 /* ~"Non, ce n'est pas moi. Réponds à d'autres questions."~ */ GOTO 13
  IF ~~ THEN REPLY #10867 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #10868 /* ~"Il a dit que tu viendrais ! Il a dit que tu le délivrerais ! Il m'a parlé en rêve et il m'a dit que tu apporterais tout un océan, afin qu'il puisse brûler d'un bout à l'autre des plans ! Libère-le ! Je t'en supplie, sauve-le !"~ */
  IF ~~ THEN REPLY #10869 /* ~"Quels sont tes liens avec lui ?"~ */ GOTO 14
  IF ~~ THEN REPLY #10870 /* ~"Je vais y réfléchir. Réponds d'abord à d'autres questions."~ */ GOTO 15
  IF ~~ THEN REPLY #10871 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.1
  SAY #10872 /* ~"J'étais l'amour d'Ignus. Nous aimions le feu, lui et moi, même s'il l'aimait plus que moi. Mais à présent que je contemple sa beauté tandis qu'il se débat au cœur du brasier, j'en viens à les aimer autant l'un que l'autre."~ */
  IF ~~ THEN REPLY #10873 /* ~"Tu es complètement azimutée, hein ? Bon, réponds-moi à quelques questions."~ */ GOTO 15
  IF ~~ THEN REPLY #10874 /* ~"Tu as complètement pété les plombs. Au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drusilla","GLOBAL",1)
~ THEN BEGIN 15 // from: 13.1 14.0 17.0 20.0 21.0 22.0 23.0
  SAY #10875 /* ~"Quand libéreras-tu Ignus ?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10876 /* ~"Dès que je le pourrai. On dit que la carafe contient une source intarissable d'eau."~ */ GOTO 16
  IF ~~ THEN REPLY #10877 /* ~"Qui es-tu exactement ?"~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10878 /* ~"Je cherche un journal. Tu ne l'aurais pas vu par hasard ?"~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10879 /* ~"Je cherche un Récupérateur appelé Pharod. L'as-tu vu ou as-tu entendu parler de lui ?"~ */ GOTO 20
  IF ~~ THEN REPLY #10880 /* ~"Que peux-tu me dire sur cette taverne ?"~ */ GOTO 17
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20700 /* ~"Dès que je pourrai lui donner ça. On dit que cette carafe contient une réserve d'eau intarissable."~ */ GOTO 16
  IF ~~ THEN REPLY #20710 /* ~"Dès que je trouverai le temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.3 15.0 15.5
  SAY #10882 /* ~"Oui ! Utilise-la pour l'arroser et mon Ignus sera libre ! Oh, je t'attends, mon aimé !" Elle s'interrompt et te jette un regard anxieux. "Tu connais le mot de commande ?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10883 /* ~"Pas encore."~ */ GOTO 23
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #10884 /* ~"Oui."~ */ GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 15.4
  SAY #10885 /* ~"C'est la prison de mon amour, où on le tient captif depuis des siècles et où j'ai passé des décennies pour communier avec lui dans sa torture ardente. C'est l'endroit qui m'a poussé à vivre plus longtemps que je l'aurais dû et au-dessus de mes moyens. Je hais cet endroit."~ */
  IF ~~ THEN REPLY #10886 /* ~"Très bien. Réponds à d'autres questions."~ */ GOTO 15
  IF ~~ THEN REPLY #10887 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2
  SAY #10888 /* ~Le chagrin fait trembler sa voix : "J'étais l'amour d'Ignus et lui, mon bien-aimé. Il aimait le feu plus que moi et voilà qu'il est devenu le feu ; et parce que je l'aime lui, j'aime le feu… mais à présent tout est fini. À présent, je dois attendre qu'il s'éteigne. Je vends le peu que j'ai pour pouvoir rester auprès de lui."~ */
  IF ~~ THEN REPLY #10889 /* ~"Très bien. Réponds à d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10890 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.4 7.3
  SAY #10891 /* ~"Pharod ?" dit-elle avec un rictus. "Le Roi des Récupérateurs ? Tu le trouveras sans doute flanqué de ses compagnons puants dans les décharges de l'autre côté de la Ruche. Bonne chance pour lui soutirer des renseignements à celui-là… Il est rusé."~ */
  IF ~~ THEN REPLY #10892 /* ~"Très bien. Réponds à d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10893 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3
  SAY #10894 /* ~"Pharod ? dit-elle avec un rictus. Le Roi des Récupérateurs ? Tu le trouveras sans doute flanqué de ses compagnons puants dans les décharges à l'autre bout de la Ruche. Il est rusé. Moins rusé que mon Ignus, toutefois."~ */
  IF ~~ THEN REPLY #10895 /* ~"Très bien. Réponds à d'autres questions."~ */ GOTO 15
  IF ~~ THEN REPLY #10896 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.2
  SAY #10897 /* ~"Je ne me rappelle pas avoir vu de journal. Tu pourrais poser la question aux Récupérateurs, je ne sais pas…"~ */
  IF ~~ THEN REPLY #10898 /* ~"Ça ne m'aide pas beaucoup. Donne-moi quelques réponses, Drusilla."~ */ GOTO 15
  IF ~~ THEN REPLY #10899 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY #20711 /* ~Son regard s'éclaire encore plus, si c'est possible. "Alors utilise-le ! Utilise-le sur lui maintenant !"~ */
  IF ~~ THEN REPLY #20712 /* ~"Dans une minute. Il faut que tu me donnes d'autres réponses."~ */ GOTO 15
  IF ~~ THEN REPLY #20713 /* ~"C'est ce que j'allais faire."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #20714 /* ~Va la trouver, je t'en supplie ! Elle tire sur ton bras. Ses yeux ont maintenant une lueur de folie furieuse.~ */
  IF ~~ THEN REPLY #20715 /* ~"D'accord, d'accord. Mais il me faut d'abord d'autres réponses…"~ */ GOTO 15
  IF ~~ THEN REPLY #20716 /* ~"D'accord. Au revoir."~ */ EXIT
END
