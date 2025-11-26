// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINGRESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINGRESS~

IF ~  Global("Ingress","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3408 /* ~Tu vois une femme au visage hagard, vêtue de vieilles hardes. Ses cheveux sont sales et emmêlés. Son teint est très sombre. Des brûlures couvrent ses bras. Sa main droite n'est plus qu'un moignon qui semble avoir été fondu comme de la cire exposée à une forte chaleur.~ */
  IF ~~ THEN REPLY #3409 /* ~"Bonjour."~ */ DO ~SetGlobal("Ingress","GLOBAL",1)
~ JOURNAL #28839 /* ~J'ai rencontré dans la cité une femme défigurée du nom d'Ingress, à l'extérieur de la Morgue. Elle portait des balafres terribles - il ne fait aucun doute que les blessures dont elle a souffert ont aussi affecté son esprit.~ */ GOTO 1
  IF ~~ THEN REPLY #6167 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6168 /* ~"Qu'est-ce tu veux d'moi ?" Cette femme parle avec un tel accent que tu as du mal à la comprendre. "Tu veux qu'je parte ? J'quitterai PAS c'te cité. J'peux pas, j'ai essayé, c'est pas une cité, c'est une prison partout."~ */
  IF ~~ THEN REPLY #6169 /* ~"Partout ?"~ */ DO ~SetGlobal("Ingress","GLOBAL",2)
~ GOTO 2
  IF ~~ THEN REPLY #6170 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.1 18.2
  SAY #6171 /* ~"Y a des Mondes, il y a…" Ses yeux brillent d'une lueur folle. "… des sables mouvants, des champs asséchés, des mondes infinis où la vie et la haine naissent, des cités de poussière où les habitants sont qu'de la poussière et respirent la cendre, des maisons où y a pas d'portes, les Terres du Crépuscule, les vents chantants…" Elle se met à sangloter en silence, mais elle n'a pas de larmes. "Et les ombres… les terribles ombres."~ */
  IF ~~ THEN REPLY #6172 /* ~"Où sont ces endroits ?"~ */ DO ~SetGlobal("Ingress","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #6173 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #6174 /* ~"Où ? Où est-ce que c'est ?" Elle décrit un arc de cercle avec son moignon, indiquant la cité. "Tout est LÀ. Des portes, encore des portes, toujours des portes, des portes qui mènent *partout*."~ */
  IF ~~ THEN REPLY #6175 /* ~"Des portes ?"~ */ GOTO 4
  IF ~~ THEN REPLY #6176 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 18.3
  SAY #6177 /* ~"Toi ! Tu sais pas ça ?!" Elle plisse les yeux et ses dents se mettent à claquer. "J'vais t'dire que'que chose : prends garde à tous les endroits où tu passes et à tout ce que tu touches dans c'te cité trois fois maudite… Des portes, des portails, des arcades, des f'nêtres, des cadres, la bouche ouverte d'une statue, les espaces entre deux étagères… Attention à tous les espaces clos. Ils mènent TOUS vers d'aut'es lieux."~ */
  IF ~~ THEN REPLY #6178 /* ~"Que veux-tu dire ?"~ */ DO ~SetGlobal("Ingress","GLOBAL",4)
~ GOTO 5
  IF ~~ THEN REPLY #6179 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.4
  SAY #6180 /* ~"Chaque porte a une CLÉ, et c'est c'te clé qui leur permet d'montrer leur vraie nature… Une arcade d'vient un portail, un cadre d'vient un portail, une fenêtre d'vient un portail… tous désireux de t'emm'ner AILLEURS. Tous ces lieux t'enlèvent…" Elle lève son bras droit et montre son moignon. "Et parfois, il t'faut payer la DÎME de l'aut' côté."~ */
  IF ~~ THEN REPLY #6181 /* ~"À quoi ressemblent ces clés ?"~ */ GOTO 6
  IF ~~ THEN REPLY #6182 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #6183 /* ~"Les clés, y a autant d'clés que d'portes dans c'te cité. À chaque porte, une clé et à chaque clé, une porte." Ses dents se remettent à claquer, comme si elle avait froid. "Et qu'est-ce que c'est qu'une clé… ? Une clé, c'est *tout*. Ça peut être une émotion, un clou en fer que tu tiens entre l'deuxième et l'cinquième doigt d'une main, une pensée à laquelle tu penses trois fois, puis une fois à l'envers, ou encore une rose de verre."~ */
  IF ~~ THEN REPLY #6184 /* ~"Et ce sont toutes des clés qui ouvrent ces portes ?"~ */ JOURNAL #28838 /* ~Ingress m'a mis en garde contre les 'portes' de la cité… Selon elle, tout espace limité - un cadre, une voûte, une fenêtre - toutes ces choses peuvent se transformer en portail et vous transporter dans un lieu différent si vous marchez près d'eux avec la bonne clé. Ces clés peuvent être de n'importe quelle nature… physique ou non-physique : des pointes en fer, une pensée répétée trois fois, une rose en verre, une émotion… toutes ces choses peuvent ouvrir une porte vers un autre lieu.~ */ GOTO 7
  IF ~~ THEN REPLY #6185 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6186 /* ~"Oui." Ses dents se mettent à claquer, elle ferme la bouche et plisse les yeux. "O-o-oui. J'peux pas partir… j'peux pas partir…"~ */
  IF ~~ THEN REPLY #6187 /* ~"Comment es-tu arrivée ici ?"~ */ DO ~SetGlobal("Ingress","GLOBAL",5)
~ JOURNAL #28837 /* ~Ingress a été transportée de son plan natal à cette cité par l'une de ces portes… Elle a fredonné un air dans une clairière entre deux arbres morts, et elle a ouvert un portail vers cette cité. Elle l'a franchi et depuis, elle n'a jamais réussi à trouver le chemin du retour.~ */ GOTO 8
  IF ~~ THEN REPLY #6188 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 18.5
  SAY #6189 /* ~"De…" Elle semble un peu plus calme et son regard se perd au loin. "D'ailleurs, et ça fait une éternité ; j'fredonnais un air dans une clairière où deux arbres morts s'étaient effondrés ensemble. Une porte éblouissante s'est ouverte entre les arbres, et j'ai vu c'te cité de l'autre côté… J'ai franchi la porte et j'ai atterri ici."~ */
  IF ~~ THEN REPLY #6190 /* ~"Pourquoi ne peux-tu pas repartir ?"~ */ GOTO 9
  IF ~~ THEN REPLY #6191 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6192 /* ~"J'ai essayé !" Elle essaie de nouveau de sangloter, mais aucune larme ne vient. "J'ai essayé ! TOUTES les portes ici mènent vers d'AUTRES lieux." Elle frissonne et saisit son moignon. "J'ai traversé une trentaine d'portails, des fois exprès, des fois par accident, sans jamais trouver l'bon. Impossible de r'trouver le chemin du r'tour…"~ */
  IF ~~ THEN REPLY #6193 /* ~"Il doit bien y avoir un portail qui te permettra de repartir."~ */ GOTO 10
  IF ~~ THEN REPLY #6194 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #6195 /* ~"J'peux même pas partir d'ici ! Ce square ! Et là, la mort m'attend derrière c'te porte !" Elle indique la Morgue derrière le portail, puis se retourne vers toi, le visage désespéré. "J'peux aller nulle part dans c'te cité !"~ */
  IF ~~ THEN REPLY #6196 /* ~"Tu ne peux pas partir ? Que veux-tu dire ?"~ */ GOTO 11
  IF ~~ THEN REPLY #6197 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #6198 /* ~"Une porte ça peut être n'importe quoi. C't'arcade là-bas ou c'te porte peuvent être des portails. Si j'sais pas qu'j'ai la clé, j'peux être envoyée dans un autre endroit horrible…" Ses dents se remettent à claquer. "… faut rester à l'écart des espaces clos, ça pourrait être une porte. J'pourrais avoir une clé sur moi que j'le saurais même pas…"~ */
  IF ~~ THEN REPLY #6199 /* ~"Tu… tu as peur de passer par les portes ou les arcades de peur qu'il *s'agisse* de portails ?"~ */ GOTO 12
  IF ~~ THEN REPLY #6200 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #6201 /* ~Elle acquiesce et claque des dents.~ */
  IF ~~ THEN REPLY #6202 /* ~"Depuis combien de temps en as-tu peur ?"~ */ GOTO 13
  IF ~~ THEN REPLY #6203 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #6204 /* ~Elle plisse les yeux. "Depuis la dernière fois qu'j'ai traversé le dernier portail, là où ma main…" Elle s'arrête. "Depuis mon dixième Tournant… J'en suis à mon quatrième dixième Tournant." Ses dents se remettent à claquer.~ */
  IF ~~ THEN REPLY #6205 /* ~"Trente ans ? Tu n'as franchi *aucune* porte depuis trente ans ?"~ */ GOTO 14
  IF ~~ THEN REPLY #6206 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6207 /* ~Sa vision semble s'éclaircir légèrement. Elle te regarde, ses dents continuent à claquer.~ */
  IF ~~ THEN REPLY #6208 /* ~"Pour arriver ici, tu as dû passer par un portail, le même qui te permettrait de repartir. Le tout est de le trouver -"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #6209 /* ~"Avoir trop peur de franchir *une* porte, c'est -"~ */ GOTO 15
  IF ~~ THEN REPLY #6210 /* ~"Tu es *folle*, ma pauvre ! Tu dois avoir perdu la tête pour refuser de passer par tout ce qui peut ressembler à une porte -"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #6211 /* ~"Excuse-moi, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #6212 /* ~Elle sourit. Ses dents ne claquent pas parce qu'elle a froid… elles bougent à l'intérieur de sa bouche et ses gencives vibrent en même temps. Ses dents montent et descendent, et claquent lorsqu'elles se rencontrent.~ */
  IF ~~ THEN REPLY #6213 /* ~"Quoi… ?"~ */ GOTO 16
  IF ~~ THEN REPLY #6214 /* ~"Euh… il vaut mieux que je m'en aille… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #6215 /* ~Elle t'interpelle en sifflant. "Y t'suffit d'passer par UN seul portail par accident pour qu'la PEUR te paralyse. J'en ai traversé trois fois dix, j'ai perdu ma main, brûlé ma chair, perdu la tête." Elle regarde ses pieds. "Plus jamais, plus jamais."~ */
  IF ~~ THEN REPLY #6216 /* ~"Je suis désolé… si je peux trouver un moyen de t'aider, je le ferai. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_1","GLOBALGood",1)
~ JOURNAL #28836 /* ~Ingress est victime de sa peur des portails… Ses expériences de voyageuse des plans l'ont rendue tellement peureuse qu'elle refuse de passer sous tout ce qui ressemble, de près ou de loin, à un portail. Si je réussissais à trouver un voyageur des plans d'expérience dans la cité, je pourrais peut-être trouver un moyen de la ramener chez elle.~ */ EXIT
  IF ~~ THEN REPLY #6217 /* ~"Alors, tu mourras dans une cité que tu as peur de quitter. Laisse ta peur dicter ta conduite. Au revoir et bon débarras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_1","GLOBALGood",-1)
~ JOURNAL #28835 /* ~Cette folle d'Ingress a tellement peur de son ombre et de tout ce qui POURRAIT vaguement ressembler à un portail qu'elle vit comme un chien dans les rues de la cité. Je n'ai pour ainsi dire aucune compassion pour elle… Ceci dit, si je rencontre un jour un voyageur des plans qui connaît le portail par lequel elle a voyagé pour venir ici, je reviendrai peut-être le lui dire.~ */ EXIT
  IF ~~ THEN REPLY #6218 /* ~"Ton avertissement me va droit au cœur. Au revoir."~ */ JOURNAL #28836 /* ~Ingress est victime de sa peur des portails… Ses expériences de voyageuse des plans l'ont rendue tellement peureuse qu'elle refuse de passer sous tout ce qui ressemble, de près ou de loin, à un portail. Si je réussissais à trouver un voyageur des plans d'expérience dans la cité, je pourrais peut-être trouver un moyen de la ramener chez elle.~ */ EXIT
END

IF ~  GlobalGT("Ingress","GLOBAL",0)
GlobalLT("Ingress","GLOBAL",7)
~ THEN BEGIN 17 // from:
  SAY #6219 /* ~Tu aperçois Ingress. Elle est recroquevillée dans ses loques et ses dents claquent. Elle jette des coups d'œil furtifs autour d'elle, comme si elle s'attendait à être attaquée à tout moment.~ */
  IF ~~ THEN REPLY #6220 /* ~"Bonjour, Ingress."~ */ GOTO 18
  IF ~~ THEN REPLY #6221 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #6222 /* ~"Hé ? Toi !" Elle te regarde en plissant les yeux. "Qu'est-ce tu veux de moi, maint'nant ?! Tu veux qu'je parte ? J'quitterai PAS c'te cité. J'peux pas, j'ai essayé, c'est pas une cité, c'est une prison partout."~ */
  IF ~  Global("Ingress","GLOBAL",6)
!Dead("Candrian")
~ THEN REPLY #6228 /* ~"Ingress, j'ai trouvé quelqu'un qui peut te ramener sur ton plan natal."~ */ DO ~SetGlobal("Ingress","GLOBAL",7)
~ GOTO 19
  IF ~  Global("Ingress","GLOBAL",1)
~ THEN REPLY #6223 /* ~"Une prison partout ? Qu'est-ce que tu veux dire ?"~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",2)
~ THEN REPLY #6224 /* ~"Parle-moi de ces endroits… de ces plans que tu as visités."~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",3)
~ THEN REPLY #6225 /* ~"C'est quoi ces portes dont tu as parlé ?"~ */ GOTO 4
  IF ~  Global("Ingress","GLOBAL",4)
~ THEN REPLY #6226 /* ~"C'est quoi ces clés dont tu as parlé ?"~ */ GOTO 5
  IF ~  Global("Ingress","GLOBAL",5)
~ THEN REPLY #6227 /* ~"Comment as-tu atterri ici ?"~ */ GOTO 8
  IF ~~ THEN REPLY #28840 /* ~"Excuse-moi de t'avoir dérangée, Ingress. Fais attention à toi."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #28815 /* ~Ingress se tait. "J'veux partir. J'veux PARTIR d'ici."~ */
  IF ~~ THEN REPLY #28841 /* ~"Il s'appelle Candrian. Il ne devrait pas tarder à arriver… fais-lui confiance, d'accord ?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #28816 /* ~Ingress se tait, en acquiesçant simplement, ses dents claquant dans sa bouche.~ */
  IF ~~ THEN REPLY #28842 /* ~"Je retournerai voir Candrian au Bar du Cadavre fumant pour m'assurer que tout s'est bien passé. Sois forte, Ingress."~ */ JOURNAL #28834 /* ~J'ai prévenu Ingress que Candrian la ramènerait chez elle. Je vais retrouver Candrian au Cadavre fumant pour m'assurer que tout s'est bien passé.~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",7)
~ THEN BEGIN 21 // from:
  SAY #28817 /* ~Ingress te regarde approcher avec méfiance. "Cun - dri- unh ?"~ */
  IF ~  !Dead("Candrian")
~ THEN REPLY #28843 /* ~"Non, je ne suis pas Candrian… Il ne devrait pas tarder à arriver pour t'aider. Je dois le retrouver au Bar du Cadavre fumant pour savoir comment ça s'est passé. Sois forte, Ingress."~ */ EXIT
  IF ~  Dead("Candrian")
~ THEN REPLY #28844 /* ~"Non, je ne suis pas Candrian… Candrian a connu une fin tragique, il est mort. Heureusement, ça signifie que toi et Candrian, vous vous rencontrerez un jour. Au revoir."~ */ EXIT
END
