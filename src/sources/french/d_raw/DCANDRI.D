// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANDRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANDRI~

IF ~  Global("Ingress","GLOBAL",7)
!Dead("Ingress")
~ THEN BEGIN 0 // from:
  SAY #3068 /* ~Candrian se redresse à ton approche. "La femme dent te donne ceci", dit-il en tendant la main. "Elle veut t'exprimer sa gratitude, rétablir l'équilibre et clore cette sacrée affaire." Dans la paume de sa main se trouvent les dents d'Ingress. Il les dépose délicatement dans ta main. "Amuse-toi bien, chercheur."~ */
  IF ~~ THEN REPLY #3364 /* ~"J'ai d'autres questions…"~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~Une fois Ingress libérée de Sigil par Candrian, je suis retourné voir celui-ci et il m'a donné un cadeau de la part d'Ingress : ses dents dansantes. Charmant.~ */ GOTO 5
  IF ~~ THEN REPLY #12009 /* ~"Au revoir."~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~Une fois Ingress libérée de Sigil par Candrian, je suis retourné voir celui-ci et il m'a donné un cadeau de la part d'Ingress : ses dents dansantes. Charmant.~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",8)
~ THEN BEGIN 1 // from:
  SAY #12010 /* ~Une fois de plus, tu es frappé par le peu de substance de cet homme, et une fois de plus les yeux bleu pâle qu'il tourne vers toi te fascinent. "Tes voyages t'ont-ils apporté ce dont tu as besoin ?"~ */
  IF ~~ THEN REPLY #12011 /* ~"Pas encore. J'ai quelques questions à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #12012 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12013 /* ~Tu vois un homme affable dont le regard doux se perd dans le lointain. Il porte des vêtements de cuir souple, et arbore sur sa personne des armes et des outils tels que cordes, pointes, briquets à silex et flacons d'air vides. Il a l'air à moitié absent - au sens propre. Il paraît manquer de substance, comme s'il en était privé d'une partie. Il pose sur toi son étrange regard, qui te semble soudain fascinant et des plus déterminés. "Bonjour à toi qui cherches des réponses."~ */
  IF ~~ THEN REPLY #12014 /* ~"Bonjour."~ */ GOTO 4
  IF ~~ THEN REPLY #12015 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #12016 /* ~Une fois de plus, tu es frappé par le peu de substance de cet homme, et une fois de plus les yeux bleu pâle qu'il tourne vers toi te fascinent. "Tes voyages t'ont-ils apporté ce dont tu as besoin ?"~ */
  IF ~~ THEN REPLY #12017 /* ~"Pas encore. J'ai quelques questions à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #12018 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12019 /* ~Il pose avec soin la chope qu'il tenait et t'accorde son attention pleine et entière. "J'ai vu les confins du multivers et j'en suis revenu. J'ai arpenté des cadavres de dieux morts et tissé des rayons de lune dans l'Astral, poursuivi par mille chevaliers githyankis hurlant de colère. J'ai franchi les limites de l'existence et vu ma substance se racornir sous mes yeux. Que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #12020 /* ~"J'ai des questions à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #12021 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0 3.0 4.0 6.0 7.1 8.5 9.5 10.2 11.6 12.2 13.1 14.1 15.1 16.3 17.2 18.5 19.5 20.5 21.2 22.2 23.2 24.6 25.4 26.3 27.3 28.2 29.2 30.2 31.2 32.2 33.1 34.2 35.2 36.3 37.1 38.1 39.1 40.1 41.2 42.0 43.0 44.0 45.0
  SAY #12022 /* ~"J'ai peut-être les réponses que tu cherches. Parle, je te dirai."~ */
  IF ~  !Dead("Ingress")
Global("Ingress","GLOBAL",5)
~ THEN REPLY #12023 /* ~"J'ai rencontré Ingress, une femme aux *très* mauvaises dents. Elle m'a dit qu'elle était arrivée d'un autre monde par un portail que l'on ouvre en chantonnant un air de musique et qui se trouve près de deux arbres en croix. Est-ce que tu peux la ramener chez elle ?"~ */ DO ~SetGlobal("Ingress","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #12024 /* ~"Qui es-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #12025 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 40
  IF ~~ THEN REPLY #12026 /* ~"Où sommes-nous ?"~ */ GOTO 41
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12027 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 44
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12028 /* ~"Est-ce que tu connais un Récupérateur dénommé Pharod ?"~ */ GOTO 45
  IF ~~ THEN REPLY #12029 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12030 /* ~Il s'accorde un temps de réflexion. "Je connais le portail dont tu parles, même si je ne l'ai pas franchi depuis trente ans. Je la ramènerai chez elle. Va lui dire d'attendre ma venue, puis retrouve-moi ici et je te dirai si j'ai réussi ou non."~ */
  IF ~~ THEN REPLY #12031 /* ~"Merci. J'ai d'autres questions…"~ */ JOURNAL #28754 /* ~J'ai parlé d'Ingress à Candrian et il m'a dit qu'il la ramènerait chez elle. Il m'a demandé d'aller la prévenir de l'attendre, puis de le retrouver au Cadavre fumant.~ */ GOTO 5
  IF ~~ THEN REPLY #12032 /* ~"Merci. Au revoir."~ */ JOURNAL #28754 /* ~J'ai parlé d'Ingress à Candrian et il m'a dit qu'il la ramènerait chez elle. Il m'a demandé d'aller la prévenir de l'attendre, puis de le retrouver au Cadavre fumant.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12033 /* ~"Je suis Candrian Porteguigne, voyageur, rêveur, conteur, et ainsi de suite."~ */
  IF ~~ THEN REPLY #12034 /* ~"Tu es un voyageur ? Parle-moi des plans."~ */ GOTO 8
  IF ~~ THEN REPLY #12035 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12036 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #12037 /* ~"Je suis las, si las… Je reviens tout juste de la négation. Je répondrai, si cela m'est possible, mais je ne promets pas que mes réponses te satisferont. Que veux-tu savoir ? Veux-tu des informations sur les Plans Extérieurs, le Plan Primaire ou les Plans Intérieurs?"~ */
  IF ~~ THEN REPLY #12038 /* ~"Quelle est la différence ?"~ */ GOTO 10
  IF ~~ THEN REPLY #12039 /* ~"Parle-moi des Plans Extérieurs."~ */ GOTO 11
  IF ~~ THEN REPLY #12040 /* ~"Parle-moi des Plans Intérieurs."~ */ GOTO 35
  IF ~~ THEN REPLY #12041 /* ~"Parle-moi du Plan Primaire."~ */ GOTO 39
  IF ~~ THEN REPLY #12042 /* ~"De la négation ? Qu'est-ce que tu veux dire ?"~ */ GOTO 36
  IF ~~ THEN REPLY #12043 /* ~"Aucun. Mais j'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12044 /* ~"Aucun. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 13.0 17.1 18.4 19.3 20.4 34.0 35.1 36.2 37.0 38.0 39.0
  SAY #12045 /* ~"Tu veux mieux connaître les plans ? Demande, je répondrai. Veux-tu des informations sur les Plans Extérieurs, le Plan Primaire ou les Plans Intérieurs?"~ */
  IF ~~ THEN REPLY #12046 /* ~"Quelle est la différence ?"~ */ GOTO 10
  IF ~~ THEN REPLY #12047 /* ~"Parle-moi des Plans Extérieurs."~ */ GOTO 11
  IF ~~ THEN REPLY #12048 /* ~"Parle-moi des Plans Intérieurs."~ */ GOTO 35
  IF ~~ THEN REPLY #12049 /* ~"Parle-moi du Plan Primaire."~ */ GOTO 39
  IF ~~ THEN REPLY #12050 /* ~"Qu'est-ce que tu voulais dire par 'négation' ?"~ */ GOTO 36
  IF ~~ THEN REPLY #12051 /* ~"Aucun. Mais j'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12052 /* ~"Aucun. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #12053 /* ~"La différence se situe au niveau de l'essence même. Les Plans Intérieurs sont matière et substance. Ce sont les matériaux de construction du multivers, car c'est en eux que la croyance dans les éléments prend sa source. Les Plans Intérieurs sont filtrés par le Plan Éthéré - le plan des potentiels, selon certains, qui façonne les éléments en mondes où vivent les mortels. Passé le Plan Éthéré, on atteint le Plan Primaire, où existent mortels, monstres, mythes et machines. C'est là que naît la croyance, là que naissent les esprits qui créent les Plans Extérieurs. Quand les mortels meurent, ils passent par le Plan Astral, un non-endroit qui est pensée et énergie spirituelle. Il est en tout, et en rien. Il est paradoxe, entre autres, et c'est par lui que sont filtrés les esprits du Grand Anneau. Tu as compris, jusque là ?"~ */
  IF ~~ THEN REPLY #12054 /* ~"Oui. Continue."~ */ GOTO 11
  IF ~~ THEN REPLY #12055 /* ~"Je ne sais pas."~ */ GOTO 12
  IF ~~ THEN REPLY #12056 /* ~"Oublie cette question. J'en ai d'autres…"~ */ GOTO 5
  IF ~~ THEN REPLY #12057 /* ~"On verra ça plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #12058 /* ~"Ah, les Plans Extérieurs… Par où commencer ? Connais-tu les règles cardinales des plans, dont toutes les autres découlent ? Sais-tu de quoi se composent les Plans Extérieurs ? Connais-tu le Grand Anneau, et les divisions qu'il induit en nous ? Sais-tu quels sont les Plans Extérieurs ? Chacun mène au suivant, aussi vaut-il mieux commencer par le commencement."~ */
  IF ~  Global("Know_Rule_Of_3","GLOBAL",1)
~ THEN REPLY #12059 /* ~"Parle-moi des règles cardinales."~ */ GOTO 14
  IF ~~ THEN REPLY #12060 /* ~"Parle-moi de la composition des plans."~ */ GOTO 15
  IF ~~ THEN REPLY #12061 /* ~"Parle-moi du Grand Anneau et de ses divisions."~ */ GOTO 17
  IF ~~ THEN REPLY #12062 /* ~"Parle-moi des différents plans."~ */ GOTO 18
  IF ~~ THEN REPLY #12063 /* ~"Parle-moi plutôt des Plans Intérieurs."~ */ GOTO 35
  IF ~~ THEN REPLY #12064 /* ~"Parle-moi plutôt du Plan Primaire."~ */ GOTO 39
  IF ~~ THEN REPLY #12065 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12066 /* ~"On devrait peut-être voir ça plus tard. Au revoir."~ */ EXIT
  IF ~  Global("Know_Rule_Of_3","GLOBAL",0)
~ THEN REPLY #28755 /* ~"Parle-moi des règles cardinales."~ */ DO ~SetGlobal("Know_Rule_Of_3","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #12160 /* ~"Les Plans Intérieurs sont substance. Ils créent la matière. Ils mènent au Plan Primaire, qui est la vie et la mort, et la naissance de la pensée. Le Plan Matériel Primaire mène aux Plans Extérieurs, qui sont croyance solidifiée et idées formalisées. C'est plus simple ?"~ */
  IF ~~ THEN REPLY #12161 /* ~"Je ne comprends toujours rien."~ */ GOTO 13
  IF ~~ THEN REPLY #12162 /* ~"Oui. Continue."~ */ GOTO 11
  IF ~~ THEN REPLY #12163 /* ~"Réponds juste à d'autres questions pour moi…"~ */ GOTO 5
  IF ~~ THEN REPLY #12164 /* ~"Il vaut mieux que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #12165 /* ~"Hélas, je te l'ai expliqué du mieux que je le pouvais. Mais rappelle-toi : là où tu te tiens, il n'y a pas de vraie matière, car elle est créée par la force des croyances qui ont cours sur le Plan Primaire et les Plans Extérieurs. Cette matière peut se modifier, muter sous l'effet de ces mêmes croyances et du pouvoir de la volonté."~ */
  IF ~~ THEN REPLY #12166 /* ~"Très bien. Alors, parle-moi des plans."~ */ GOTO 9
  IF ~~ THEN REPLY #12167 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12168 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 11.8
  SAY #12169 /* ~"Tu dois te rappeler trois règles. La première, c'est la Règle des Trois : jamais deux sans trois. La deuxième, c'est le Centre du Multivers : le cosmos est vaste, au point que l'endroit où tu te trouves, quel qu'il soit, peut être considéré comme son centre. Certains en tiennent pour Sigil ; ils ont raison, mais pourraient aussi en tenir pour un point dans le néant infini de la Géhenne. Le multivers n'ayant pas de bord, il n'a pas non plus de centre. La troisième règle, c'est l'Unité des Anneaux : tout ce qui existe est un anneau, un objet sans début ni fin… Le Grand Anneau des Plans Extérieurs, l'Anneau de Sigil, des Plans Élémentaires… Même les Puissances pensent en termes d'anneaux, de boucles logiques sans fin."~ */
  IF ~~ THEN REPLY #12170 /* ~"Maintenant, parle-moi de la composition des plans."~ */ GOTO 15
  IF ~~ THEN REPLY #12171 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12172 /* ~"On verra ça plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 14.0
  SAY #12173 /* ~"Les Plans Extérieurs sont faits de foi, de pensée, de croyance. Leur forme, imaginée, leur vient du Plan Primaire qui leur donne un aspect défiant l'imagination et les construit en accumulant la croyance. C'est la croyance qui crée les plans. Ici, la croyance, c'est le pouvoir. Change une croyance, et tu peux changer la réalité. Les créatures nées ici - les planaires tels que fiélons et célestes - sont issues des pensées et des concepts des mortels. Elles incarnent toutes un idéal précis, et plus cet idéal est puissant, plus la créature est puissante - celle qui symbolise l'amour est ainsi l'une des plus puissantes de toutes."~ */
  IF ~~ THEN REPLY #12174 /* ~"Continue."~ */ GOTO 16
  IF ~~ THEN REPLY #12175 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12176 /* ~"On verra ça plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12177 /* ~"C'est la raison pour laquelle les puissances - certains les nomment dieux - y vivent. C'est de là que vient toute la foi placée en eux - c'est là qu'ils sont les plus purs et les plus forts. Leurs royaumes sont le prolongement de leurs êtres, la manifestation de leur essence divine et de leur croyance."~ */
  IF ~~ THEN REPLY #12178 /* ~"Alors, la composition des plans, c'est la croyance ? Parle-moi du Grand Anneau, maintenant."~ */ GOTO 17
  IF ~~ THEN REPLY #12179 /* ~"Parle-moi des Plans Intérieurs."~ */ GOTO 35
  IF ~~ THEN REPLY #12180 /* ~"Parle-moi du Plan Primaire."~ */ GOTO 39
  IF ~~ THEN REPLY #12181 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12182 /* ~"Ça suffit pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.2 16.0
  SAY #12183 /* ~"Dans l'unité sommaire des voyageurs des plans, nous concevons les Plans Extérieurs infinis comme un anneau autour du plan de la neutralité suprême - l'Outreterre. L'aiguille sur laquelle repose Sigil est au centre de l'Outreterre. Plus tu t'éloignes de l'aiguille, moins le plan devient neutre, jusqu'à se déverser dans les plans voisins. Chacun de ces plans empiète sur l'Outreterre, ils tournoyent sur eux-mêmes dans la loi et le chaos, le bien et le mal. La Grand-Route est la démarcation entre l'Outreterre et les villes-portail qui surgissent autour des portes menant à ces plans. Au-delà des villes-portail se trouvent les Hinterlands, territoire inexploré, ignoré par l'histoire et absent des pensées de tous. Le danger hante les Hinterlands."~ */
  IF ~~ THEN REPLY #12184 /* ~"Continue."~ */ GOTO 20
  IF ~~ THEN REPLY #12185 /* ~"Revenons un peu en arrière, à la présentation. Parle-moi encore des plans en général."~ */ GOTO 9
  IF ~~ THEN REPLY #12186 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12187 /* ~"Aucun. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 19.4 21.1 22.1 23.1 24.5 25.3 26.2 27.2 28.1 29.1 30.1 31.1 32.1 33.0 34.1
  SAY #12188 /* ~"De quels plans veux-tu que je te parle ?"~ */
  IF ~~ THEN REPLY #12189 /* ~"Des Plans Supérieurs."~ */ GOTO 19
  IF ~~ THEN REPLY #12190 /* ~"Des Plans Inférieurs."~ */ GOTO 24
  IF ~~ THEN REPLY #12191 /* ~"Des Plans Frontaliers."~ */ GOTO 32
  IF ~~ THEN REPLY #12192 /* ~"De l'Outreterre."~ */ GOTO 34
  IF ~~ THEN REPLY #12193 /* ~"Revenons un peu en arrière, à la présentation. Parle-moi encore des plans en général."~ */ GOTO 9
  IF ~~ THEN REPLY #12194 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12195 /* ~"Aucun. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0 22.0 23.0
  SAY #12196 /* ~"Dans les Plans Supérieurs, il y a les plans de la neutralité, les plans de la loi et les plans du chaos. Lesquels veux-tu connaître ?"~ */
  IF ~~ THEN REPLY #12197 /* ~"Les plans de la neutralité."~ */ GOTO 21
  IF ~~ THEN REPLY #12198 /* ~"Les plans de la loi."~ */ GOTO 22
  IF ~~ THEN REPLY #12199 /* ~"Les plans du chaos."~ */ GOTO 23
  IF ~~ THEN REPLY #12200 /* ~"Revenons un peu en arrière, à la présentation. Parle-moi encore des plans en général."~ */ GOTO 9
  IF ~~ THEN REPLY #12201 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12202 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12203 /* ~"Aucun. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #12204 /* ~"Les Plans Extérieurs diffèrent en moralité, non en substance. Pour toi, nous diviserons les plans en trois groupes : les Plans Supérieurs du Bien, les Plans Inférieurs du Mal et les Plans Frontières de la Neutralité. Ils sont ensuite divisés entre Loi et Chaos, avec l'Outreterre au milieu. Quels sont ceux qui t'intéressent ?"~ */
  IF ~~ THEN REPLY #12205 /* ~"Les Plans Supérieurs."~ */ GOTO 19
  IF ~~ THEN REPLY #12206 /* ~"Les Plans Inférieurs."~ */ GOTO 24
  IF ~~ THEN REPLY #12207 /* ~"Les Plans Frontaliers."~ */ GOTO 32
  IF ~~ THEN REPLY #12208 /* ~"L'Outreterre."~ */ GOTO 34
  IF ~~ THEN REPLY #12209 /* ~"Revenons un peu en arrière, à la présentation. Parle-moi encore des plans en général."~ */ GOTO 9
  IF ~~ THEN REPLY #12210 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12211 /* ~"Aucun. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #12212 /* ~"Les Plans Supérieurs neutres contiennent les Terres des Bêtes, un lieu de neutralité et de bonté, légèrement teinté de chaos, où les animaux règnent dans le jour et la nuit éternels. Ils englobent la Bytopie, un paradis où se conjuguent industrie et travail, où tous travaillent au bien de tous, et les Élysées, le plan de bonté et de calme le plus doux que je n'ai jamais connu. Hélas, je ne suis pas assez bien maintenant pour profiter de leurs effets réparateurs. Que voudrais-tu savoir à présent ?"~ */
  IF ~~ THEN REPLY #12213 /* ~"Parle-moi du reste des Plans Supérieurs."~ */ GOTO 19
  IF ~~ THEN REPLY #12214 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12215 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12216 /* ~"Aucun. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #12217 /* ~Candrian frissonne légèrement. "Je ne suis pas le mieux placé pour parler des plans de la loi, car la structure innée et les modèles suprêmes qu'ils imposent m'effraient. J'en reste à l'écart, car j'attache plus d'importance à mon individualité qu'à la connaissance qu'ils m'apporteraient. Ils incluent l'Arcadie réglementée, région la plus proche des plans du bien sous la loi inflexible de Méchanus et du Mont Céleste, île de la Mer Argentée et terre d'origine des archontes."~ */
  IF ~~ THEN REPLY #12218 /* ~"Parle-moi du reste des Plans Supérieurs."~ */ GOTO 19
  IF ~~ THEN REPLY #12219 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12220 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12221 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #12222 /* ~"C'est là que je me sens chez moi, bien que le plus souvent, j'évite de m'approcher d'Ysgard - les batailles sans fin et les tests d'ardeur au milieu des terrebleds du plan ne sont pas trop de mon goût. Mais l'Arborée…" Il soupire. "Les montagnes sont plus hautes, l'air y est plus pur, les rivières plus propres et le gibier plus abondant qu'ailleurs. C'est un véritable paradis, un endroit de passions dévorantes où le vin ne cesse jamais de couler. Lorsque j'aurai retrouvé mes esprits - lorsque nous en aurons fini avec l'Outreterre, tu devrais m'interroger sur les Plans Intérieurs et je te raconterai mon voyage - je retournerai me perdre dans les chaumières et les clairières de l'Arborée."~ */
  IF ~~ THEN REPLY #12223 /* ~"Parle-moi du reste des Plans Supérieurs."~ */ GOTO 19
  IF ~~ THEN REPLY #12224 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12225 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12226 /* ~"Aucun. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1 20.1 25.2 26.1 27.1 28.0 29.0 30.0 31.0
  SAY #12227 /* ~"À l'instar des Plans Supérieurs, les Plans Inférieurs sont divisés en plans de la loi, du chaos et de la neutralité. Chacun d'eux a ses propres horreurs et leur influence varie sur l'esprit du voyageur ; mieux vaut les éviter. Duquel aimerais-tu que je te parle ?"~ */
  IF ~~ THEN REPLY #12228 /* ~"Les plans de la neutralité."~ */ GOTO 25
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #12229 /* ~"Les plans de la loi."~ */ GOTO 28
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #12230 /* ~"Les plans de la loi."~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #12231 /* ~"Les plans du chaos."~ */ GOTO 30
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #12232 /* ~"Les plans du chaos."~ */ GOTO 31
  IF ~~ THEN REPLY #12233 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12234 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12235 /* ~"Aucun. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12236 /* ~"Les plans de la neutralité, hein ? Ils sont vils et à peine compréhensibles et leur caractère insidieux dépasse l'imagination. Prends la Géhenne, par exemple. Quatre volcans en sommeil planant dans le vide infini, chacun d'entre eux *vivant* en quelque sorte et voulant s'emparer de ton âme par tous les moyens. Peuple-la de yugoloths - les pires fiélons selon moi - et tu auras un aperçu du lieu. Et pour terminer le plan du mal suprême - en tout cas, c'est comme ça qu'on l'appelle - la Gaste Grise, un non-lieu qui retire toute couleur de ton corps et de ton esprit, te privant même de ton apathie - et le site des pires champs de bataille de la guerre qui se déroule ici-bas. Ne me lance pas sur ce sujet… Puis tu as les Carcères sur le côté chaotique…"~ */
  IF ~~ THEN REPLY #12237 /* ~"Parle-moi de la guerre."~ */ GOTO 26
  IF ~~ THEN REPLY #12238 /* ~"Parle-moi des Carcères."~ */ GOTO 27
  IF ~~ THEN REPLY #12239 /* ~"Parle-moi du reste des Plans Inférieurs."~ */ GOTO 24
  IF ~~ THEN REPLY #12240 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12241 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12242 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #12243 /* ~"Ah, la Guerre Sanglante." Le seul fait d'entendre ce seul nom glace ton sang dans tes veines. Candrian ne semble pas le remarquer, absorbé dans ses souvenirs. "Deux armées de fiélons luttant sans raison à travers les Plans Inférieurs, massacrant tout au nom de la loi et du chaos. Ils en rajouteront évidemment, mais en fin de compte, il s'agit tout bonnement d'un comportement haineux et stupide qui n'aide personne et blesse beaucoup trop de monde."~ */
  IF ~~ THEN REPLY #12244 /* ~"Parle-moi des Carcères."~ */ GOTO 27
  IF ~~ THEN REPLY #12245 /* ~"Parle-moi du reste des Plans Inférieurs."~ */ GOTO 24
  IF ~~ THEN REPLY #12246 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12247 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12248 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #12249 /* ~"Ah, les Carcères et ses jungles empoisonnées, ses marécages acides, ses eaux destructives, suspendues telle une chaîne de perles pourries imbriquées les unes dans les autres…" Il s'arrête et t'observe fixement. "Souviens-toi, chercheur : les Carcères sont une prison, la demeure des gehreleths, l'un des plus dangereux types de fiélons. La force de la prison est la force du ravisseur, une force tellement puissante que le prisonnier perd toute volonté. Détruis le gardien et un corps peut s'échapper de la Prison Rouge. Il n'y a pratiquement pas d'autre sortie, pas lorsque les portes se referment sur toi et te regardent tourbillonner dans le vaste espace entourant les globes. Méfie-toi des Carcères, voyageur, car leurs liens peuvent être plus forts que la chair."~ */
  IF ~~ THEN REPLY #12250 /* ~"Parle-moi de la guerre."~ */ JOURNAL #28750 /* ~Candrian m'a parlé du Plan des Carcères, la Grande Prison des plans. Il dit que le seul moyen de s'évader de cette prison, c'est d'être plus fort que le gardien de la prison. Il m'a expliqué que les liens du plan sont plus forts que ceux de la chair.~ */ GOTO 26
  IF ~~ THEN REPLY #12251 /* ~"Parle-moi du reste des Plans Inférieurs."~ */ JOURNAL #28750 /* ~Candrian m'a parlé du Plan des Carcères, la Grande Prison des plans. Il dit que le seul moyen de s'évader de cette prison, c'est d'être plus fort que le gardien de la prison. Il m'a expliqué que les liens du plan sont plus forts que ceux de la chair.~ */ GOTO 24
  IF ~~ THEN REPLY #12252 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ JOURNAL #28750 /* ~Candrian m'a parlé du Plan des Carcères, la Grande Prison des plans. Il dit que le seul moyen de s'évader de cette prison, c'est d'être plus fort que le gardien de la prison. Il m'a expliqué que les liens du plan sont plus forts que ceux de la chair.~ */ GOTO 18
  IF ~~ THEN REPLY #12253 /* ~"J'ai d'autres questions."~ */ JOURNAL #28750 /* ~Candrian m'a parlé du Plan des Carcères, la Grande Prison des plans. Il dit que le seul moyen de s'évader de cette prison, c'est d'être plus fort que le gardien de la prison. Il m'a expliqué que les liens du plan sont plus forts que ceux de la chair.~ */ GOTO 5
  IF ~~ THEN REPLY #12254 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ JOURNAL #28750 /* ~Candrian m'a parlé du Plan des Carcères, la Grande Prison des plans. Il dit que le seul moyen de s'évader de cette prison, c'est d'être plus fort que le gardien de la prison. Il m'a expliqué que les liens du plan sont plus forts que ceux de la chair.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #12255 /* ~"Pour autant que je déteste l'ordre des Plans Supérieurs de la loi, ils ont l'avantage de présenter un minimum de bonté. Mais leurs homologues planaires inférieures …l'Achéron est un endroit de cubes qui ricochent où les batailles sont interminables et où grouillent les âmes des humanoïdes morts. Baator…;" dit-il en frissonnant involontairement. "Baator est un endroit qu'il vaut mieux éviter. Ces fiélons que tu as massacrés n'étaient que la plus simple expression de la corruption aberrante incarnée dans cette machine à ordre sans âme. Tout le côté pernicieux de la bureaucratie et de l'ordre provient de Baator et envahit comme un cancer le cœur des mortels. Bien qu'on puisse y trouver un certain savoir, il vaut rarement le viol spirituel qu'on t'y inflige."~ */
  IF ~~ THEN REPLY #12256 /* ~"Parle-moi du reste des Plans Inférieurs."~ */ GOTO 24
  IF ~~ THEN REPLY #12257 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12258 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12259 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.2
  SAY #12260 /* ~"Pour autant que je déteste l'ordre des Plans Supérieurs de la loi, ils ont l'avantage de présenter un minimum de bonté. Mais leurs homologues planaires inférieures… l'Achéron est un endroit de cubes qui ricochent où les batailles sont interminables et où grouillent les âmes des humanoïdes morts. Baator…", dit-il en frissonnant involontairement. "Baator est un lieu qu'il vaut mieux éviter. Ces baatezus - ces fiélons que tu vois dans le coin, là - ne sont que la plus simple expression de la corruption aberrante incarnée dans cette machine à ordre sans âme. Si tu veux en savoir plus, parle-leur mais n'oublie pas : tout le côté pernicieux de la bureaucratie et de l'ordre provient de Baator et envahit comme un cancer le cœur des mortels. Bien qu'on puisse y trouver un certain savoir, il vaut rarement le viol spirituel qu'on t'y inflige."~ */
  IF ~~ THEN REPLY #12261 /* ~"Parle-moi du reste des Plans Inférieurs."~ */ GOTO 24
  IF ~~ THEN REPLY #12262 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12263 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12264 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.3
  SAY #12265 /* ~"Mes excuses auprès de ta compagne", il désigne Tombée-en-Disgrâce, "les Abysses ne sont pas un endroit pour toi. Alors que Baator est tout ordre, les Abysses ne sont que chaos et changement et tout cela n'est pas bien plaisant. C'est quand on pense qu'elles s'approchent de la normalité qu'il vaut mieux s'en méfier le plus. C'est la terre des tanar'ris, que la plupart des primaires appellent 'démons' et leur nom a une explication. Ils sont, vous m'excuserez, madame", et Grâce acquiesce, "imprévisibles et meurtriers, et les rares tanar'ris en qui tu peux avoir confiance ne courent pas les rues. Mes excuses, encore, Dame Grâce - mais vous faites partie, pour autant que j'aie pu le constater, de ce petit nombre."~ */
  IF ~~ THEN REPLY #12266 /* ~"Parle-moi du reste des Plans Inférieurs."~ */ GOTO 24
  IF ~~ THEN REPLY #12267 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12268 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12269 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4
  SAY #12270 /* ~"Les Abysses ne sont pas un endroit pour toi. Alors que Baator est tout ordre, les Abysses ne sont que chaos et changement et tout cela n'est pas bien plaisant. C'est quand on pense qu'elles s'approchent de la normalité qu'il vaut mieux s'en méfier le plus. C'est la terre des tanar'ris, que la plupart des primaires appellent 'démons' et leur nom a une explication. Ils sont imprévisibles et meurtriers, et les rares tanar'ris en qui tu peux avoir confiance ne courent pas les rues. Les rares tanar'ris que j'ai rencontrés et qui m'ont inspiré confiance, confiance encore mitigée - sont les créatures du chaos et du mal incarné, et s'ils te présentent un visage amical, qui te dit que cela ne fait pas partie d'un de leurs plans ?"~ */
  IF ~~ THEN REPLY #12271 /* ~"Parle-moi du reste des Plans Inférieurs."~ */ GOTO 24
  IF ~~ THEN REPLY #12272 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12273 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12274 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 18.2 20.2
  SAY #12275 /* ~"D'après moi, il existe deux Plans Frontières qui sont diamétralement opposés. Le premier, Méchanus, est l'essence même de la loi, un endroit où les croyances se combinent, s'imbriquent, une machine massive qui constitue le plan dans son ensemble. Certaines personnes pensent que les engrenages de Méchanus sont le moteur des plans. Le deuxième, ce sont les Limbes, un marécage tourbillonnant de Chaos qui ne suit aucune règle, aucune, et quand on s'imagine l'avoir classifié, il change - ou pas. Il est impossible de prévoir. J'étais dans les Limbes il n'y a pas si longtemps…"~ */
  IF ~~ THEN REPLY #12277 /* ~"Parle-moi de ton voyage…"~ */ GOTO 33
  IF ~~ THEN REPLY #12278 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12279 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12333 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #12280 /* ~Il ferme les yeux, plongé dans ses souvenirs : "J'avais un guide githzeraï avec moi, un anarchiste qui pouvait modeler la matière illogique du plan pour lui donner les formes de son choix. Nous avions combattu la charge des slaadi, ces créatures de chaos qui appellent ce plan leur demeure. On aurait dit qu'ils étaient plus nombreux que d'habitude, mais qui peut dire ce qui est 'habituel' dans les Limbes… bon je m'écarte du sujet. Au milieu de tout ce chaos, nous sommes parvenus à une série d'énormes cubes métalliques entrelacés, une sorte de boîte à secrets. Ce n'était pas quelque chose que nous avions formé, de façon consciente ou non, et nous ne pouvions pas y pénétrer. C'était comme… comme un bastion d'ordre aux confins du désordre, une graine de loi. C'est ce que je peux t'en dire de plus clair."~ */
  IF ~~ THEN REPLY #12281 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ JOURNAL #28751 /* ~Candrian m'a parlé d'une boîte mystérieuse au cœur des Limbes, quelque chose qui représenterait un début d'ordre dans l'océan bouillonnant du chaos.~ */ GOTO 18
  IF ~~ THEN REPLY #12282 /* ~"J'ai d'autres questions."~ */ JOURNAL #28751 /* ~Candrian m'a parlé d'une boîte mystérieuse au cœur des Limbes, quelque chose qui représenterait un début d'ordre dans l'océan bouillonnant du chaos.~ */ GOTO 5
  IF ~~ THEN REPLY #12283 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ JOURNAL #28751 /* ~Candrian m'a parlé d'une boîte mystérieuse au cœur des Limbes, quelque chose qui représenterait un début d'ordre dans l'océan bouillonnant du chaos.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 18.3 20.3
  SAY #12284 /* ~"L'Outreterre est d'une neutralité absolue. Sûrement le meilleur endroit à visiter dans les Plans Extérieurs, hormis Sigil, si tu ne veux pas qu'on t'impose une quelconque moralité. Tout s'équilibre dans l'Outreterre - c'est normal car il est au centre des Plans Extérieurs. Les royaumes des puissances sont éparpillés et il existe plusieurs 'villes-portail' qui s'ouvrent sur le reste des Plans Extérieurs. Les villes-portail reflètent en général la philosophie du plan sur lequel s'ouvrent leurs portes - et si l'équilibre des croyances n'est pas conservé dans la ville, elle se fond dans le plan voisin. C'est mauvais pour tout le monde, parce que peu d'habitants dans ces villes *désirent* vraiment cette modification. Bon, assez parlé de l'Outreterre. Que veux-tu savoir de plus ?"~ */
  IF ~~ THEN REPLY #12285 /* ~"Revenons un peu en arrière, à la présentation. Parle-moi encore des plans en général."~ */ GOTO 9
  IF ~~ THEN REPLY #12286 /* ~"Parle-moi encore des plans du Grand Anneau."~ */ GOTO 18
  IF ~~ THEN REPLY #12287 /* ~"J'ai d'autres questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12288 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 8.2 9.2 11.4 16.1
  SAY #12289 /* ~Il soupire, comme si cela lui rappelait sa profonde lassitude. "Représente-toi les Plans Intérieurs comme un globe. Au pôle supérieur, tu as le Plan d'Énergie Positive, en bas, le Plan d'Énergie Négative." Il s'interrompt. "Rappelle-moi qu'il faut que je te parle du Plan d'Énergie Négative." Ses yeux semblent regarder une horreur que lui seul connaît. "De l'interaction entre les deux, jaillit toute l'urgence de l'existence et de la non-existence, de la réalité et du néant. D'eux, jaillissent les plans élémentaires de base - le Feu, l'Eau, l'Air et la Terre - les plans para-élémentaires qui reposent entre les quatre éléments de base et les plans quasi-élémentaires qui proviennent de l'interaction des quatre éléments avec le Positif et le Négatif."~ */
  IF ~~ THEN REPLY #12290 /* ~"Parle-moi du Plan d'Énergie Négative."~ */ GOTO 36
  IF ~~ THEN REPLY #12291 /* ~"Parle-moi du reste des plans."~ */ GOTO 9
  IF ~~ THEN REPLY #12292 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12293 /* ~"C'est tout ce que voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 8.4 9.4 35.0 40.0
  SAY #12294 /* ~Ses yeux s'assombrissent. "Je suis allé dans les Plans Intérieurs pour découvrir mon essence véritable. J'ai fait l'erreur de visiter le Plan d'Énergie Négative pour comprendre l'impulsion de mon corps à dépérir et le cycle de mort dans la vie. Je me croyais protégé des effets maléfiques du plan par ma magie, mais j'avais tort. La noirceur du néant infini pesait sur mon âme et j'étais assailli par des ombres qui cherchaient à éteindre ma propre âme. Je me suis perdu un moment - une éternité - et j'ai presque perdu mon existence. Je pouvais sentir mon essence m'échapper et je suis à présent à moitié parti. Je ne reviendrai jamais."~ */
  IF ~  Global("Ntoken_Give","GLOBAL",0)
~ THEN REPLY #12295 /* ~"Comment tu as survécu ?"~ */ DO ~GiveItemCreate("NToken",Protagonist,20,0,0)
SetGlobal("Ntoken_Give","GLOBAL",1)
~ JOURNAL #28752 /* ~Candrian m'a parlé de son voyage dans le Plan Négatif, lieu où l'existence s'annihile.~ */ GOTO 37
  IF ~  Global("Ntoken_Give","GLOBAL",1)
~ THEN REPLY #12296 /* ~"Comment tu as survécu ?"~ */ JOURNAL #28752 /* ~Candrian m'a parlé de son voyage dans le Plan Négatif, lieu où l'existence s'annihile.~ */ GOTO 38
  IF ~~ THEN REPLY #12297 /* ~"Alors, parle-moi des autres plans."~ */ JOURNAL #28752 /* ~Candrian m'a parlé de son voyage dans le Plan Négatif, lieu où l'existence s'annihile.~ */ GOTO 9
  IF ~~ THEN REPLY #12298 /* ~"J'ai d'autres questions…"~ */ JOURNAL #28752 /* ~Candrian m'a parlé de son voyage dans le Plan Négatif, lieu où l'existence s'annihile.~ */ GOTO 5
  IF ~~ THEN REPLY #12299 /* ~"Je vois. Au revoir."~ */ JOURNAL #28752 /* ~Candrian m'a parlé de son voyage dans le Plan Négatif, lieu où l'existence s'annihile.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #12300 /* ~"Comment ai-je survécu ?" Il sourit mystérieusement. "Avec un morceau de néant qui retenait le néant. Le néant peut arrêter le néant, tu sais, ainsi je ne portais rien dans ma main pour me protéger. As-tu prévu de voyager toi aussi vers la négation suprême ? Un parfum de désespoir t'entoure, je vais donc te faire ce cadeau. Tiens-le dans ta main lorsque tu sens l'ombre te presser et il devrait te protéger toi et tes amis, s'ils restent près de toi. Eh." Il te passe un petit jeton noir dépourvu, dirait-on, de toute dimension.~ */
  IF ~~ THEN REPLY #12301 /* ~"Merci. Parle-moi encore des plans."~ */ GOTO 9
  IF ~~ THEN REPLY #12302 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12303 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #12304 /* ~"J'ai utilisé le jeton que je t'ai donné et j'ai à peine pu sauver ma peau. Sans lui, j'aurais péri."~ */
  IF ~~ THEN REPLY #12305 /* ~"Parle-moi encore des plans."~ */ GOTO 9
  IF ~~ THEN REPLY #12306 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12307 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 8.3 9.3 11.5 16.2
  SAY #12308 /* ~"Tu veux connaître le Plan Primaire, visite-le. Les mondes infinis de ce plan présentent une infinie variété, comme les plans, mais je ne peux pas en rendre compte ici. Il suffit que tu saches qu'ils sont la naissance des Plans Extérieurs, les enfants des Plans Intérieurs et que leur potentiel est illimité à l'intérieur de leurs frontières."~ */
  IF ~~ THEN REPLY #12309 /* ~"Parle-moi encore des plans."~ */ GOTO 9
  IF ~~ THEN REPLY #12310 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12311 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 5.2
  SAY #12312 /* ~"Moi ? Je reviens à peine de la négation et j'essaie de récupérer mon essence avant qu'elle ne m'échappe complètement."~ */
  IF ~~ THEN REPLY #12313 /* ~"La négation ? De quoi tu parles ?"~ */ GOTO 36
  IF ~~ THEN REPLY #12314 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12315 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.3
  SAY #12316 /* ~"À moins que le cosmos ait bougé et que nous ayons été projetés dans les Dédales, je dirais que nous sommes dans le bar du Cadavre fumant."~ */
  IF ~~ THEN REPLY #12317 /* ~"Que peux-tu me dire sur les clients d'ici ?"~ */ GOTO 42
  IF ~~ THEN REPLY #12318 /* ~"Les Dédales ? De quoi tu parles ?"~ */ GOTO 43
  IF ~~ THEN REPLY #12319 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12320 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #12321 /* ~"Je m'occupe de mes affaires, chercheur, car je passe trop de temps à les délaisser. Parle au serveur si tu veux en savoir plus sur ses clients."~ */
  IF ~~ THEN REPLY #12322 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12323 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #12324 /* ~"Oui, les Dédales, où la Dame jette ceux qui lui ont déplu." En prononçant son nom, il fait un petit demi-cercle sur son cœur. "Si tu veux en savoir plus sur la Dame et sur la cité, trouve un rabatteur ou un guide de ce genre-là."~ */
  IF ~~ THEN REPLY #12325 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12326 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.4
  SAY #12327 /* ~"Je n'ai vu aucun journal récemment, sauf le mien - et il s'est anéanti en se froissant. Toutes mes excuses."~ */
  IF ~~ THEN REPLY #12328 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12329 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 5.5
  SAY #12330 /* ~"Pharod est devenu Récupérateur ? Il y a longtemps ? Quand je suis parti la dernière fois, ce n'était qu'un jouvenceau empressé près du Square du Chiffonnier. Eh. Le temps CHANGE certaines personnes. Non, chercheur, je ne connaîtrais plus Pharod maintenant, je suis prêt à le parier."~ */
  IF ~~ THEN REPLY #12331 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12332 /* ~"Très bien. Au revoir."~ */ EXIT
END
