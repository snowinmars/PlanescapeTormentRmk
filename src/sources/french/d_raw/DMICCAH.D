// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMICCAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMICCAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45919 /* ~La femme est obèse et a un regard de mégère. "Eh bien, eh bien, qu'avons-nous là ?" demande-t-elle d'une voix nasillarde. "Mes yeux me tromperaient-ils ou s'agit-il d'un client ?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DBROKAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45921 /* ~"Le mort est de retour, Brokah ! Le mort est de retour !"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45923 /* ~Sa collègue, une femme de petite taille, t'inspecte rapidement avant de répondre d'une voix nasillarde : "C'est un client, idiot, et ça fait des heures que j'essaye de te le faire comprendre. Je t'avais bien dit que nous en aurions, mais tu ne m'as jamais crue. Es-tu prêt à servir ce… euh… monsieur à l'air mort ?"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45925 /* ~"Évidemment que je le vois ! J'ai des yeux, non ? Arrête de me casser les pieds, espèce de vieux sac d'os !" Elle baisse le ton en se tournant vers toi. "En quoi la vieille Miccah peut-elle t'être utile ?"~ */
  IF ~~ THEN REPLY #45926 /* ~"Parlons plutôt affaires."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45927 /* ~"Peux-tu me parler du quartier ?"~ */ GOTO 5
  IF ~~ THEN REPLY #45928 /* ~"Tu peux me parler de toi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #45929 /* ~"Qui est-ce ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45931 /* ~"Que peux-tu me dire au sujet des factions ?"~ */ GOTO 8
  IF ~~ THEN REPLY #45932 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45933 /* ~"C'est ce que j'essaye de te dire !" Elle baisse le ton en se tournant vers toi. "Que pouvons-nous faire pour toi ?"~ */
  IF ~~ THEN REPLY #45934 /* ~"Parlons plutôt affaires."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45935 /* ~"Peux-tu me parler du quartier ?"~ */ GOTO 5
  IF ~~ THEN REPLY #45936 /* ~"Tu peux me parler de toi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #45939 /* ~"Qui est-ce ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45941 /* ~"Que peux-tu me dire au sujet des factions ?"~ */ GOTO 8
  IF ~~ THEN REPLY #45942 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45944 /* ~"Je suis sûre que mon mari se fera une joie de te parler de la Salle des Fêtes et de la Maison de tolérance." Elle a un petit reniflement de mépris. "Mais, pour ma part, je suis davantage attirée par…"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 14
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45947 /* ~"Moi ? Je suis enchaînée à ce mont-de-piété, avec ce boulet de mari qui est incapable d'apprécier mes qualités…"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 15
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45951 /* ~"Lui ? Il s'appelle Brokah. Ça fait une quarantaine d'années que nous sommes mariés. Mais il est tellement volage que je ne vois pas comment il aurait pu me rester fidèle tout ce temps."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 16
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45955 /* ~"Les factions ? Ha ! Elles ne font rien d'autre que de nous étrangler à force de taxes. Ce sont elles qui nous ont forcés à nous installer dans la Ruche et qui ont fait de mon mari une plus grande loque qu'il ne l'était déjà."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 17
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45958 /* ~"Et j'imagine que tu vas commencer par lui parler de la Maison de tolérance, hein ?" intervient Miccah. "Vous êtes tous les mêmes, vous autres les hommes. Il n'y a que les filles de joie et la Salle des Fêtes qui vous intéressent, pas le marché ni…"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 9
END

IF ~~ THEN BEGIN 10 // from:
  SAY #45961 /* ~"Il se montre poli avec toi, c'est tout. Mais en réalité, il s'en moque. Tu n'as rien d'utile à lui dire, de toute façon. Tu n'es que le gérant d'un mont-de-piété et tu ne seras jamais rien de mieux parce que tu n'as pas d'ambition…"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45964 /* ~"… un véritable don du ciel pour lui, pas vrai ? Je l'ai sauvé de l'existence que ses parents avaient planifiée pour lui, tu comprends, et il m'avait promis de m'emmener loin de tout ça. Au lieu de ça, tu vois la vie que je mène. Sûr que ça en encouragerait plus d'une à trouver refuge dans la boisson…"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45967 /* ~"Évidemment que je comprends ce qu'il dit. Brokah s'entend mal avec les factions parce qu'elles savent toutes qu'il est incapable de s'accrocher à ses croyances plus de quelques minutes."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45969 /* ~"Et je ne dois pas avoir beaucoup de bon sens non plus, parce que je me suis laissée embobiner par tes belles paroles, et maintenant…"

Les noms d'oiseau commencent à voler.~ */
  IF ~~ THEN REPLY #45970 /* ~"J'avais d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #45971 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 17
  IF ~~ THEN REPLY #45972 /* ~"Alors, au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45973 /* ~"Je croyais que le mariage t'en guérirait, mais je vois que je me suis fait des illusions. Bah !" Se désintéressant totalement de toi, ils se lancent dans une nouvelle dispute.~ */
  IF ~~ THEN REPLY #45974 /* ~"J'avais d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #45975 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 17
  IF ~~ THEN REPLY #45976 /* ~"Alors, au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45977 /* ~"Sûr que tu dois sérieusement manquer aux chèvres de la ferme…"
Brokah devient violet et les deux époux recommencent à se disputer. Ils ne t'accordent plus la moindre attention.~ */
  IF ~~ THEN REPLY #45979 /* ~"J'avais d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #45980 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 17
  IF ~~ THEN REPLY #45981 /* ~"Alors, au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45982 /* ~Miccah reste un moment bouche bée, puis elle déverse un torrent d'injures qui te fait rougir. Pour ne pas être en reste, Brokah se met lui aussi à crier. Tu n'existes manifestement plus pour eux.~ */
  IF ~~ THEN REPLY #45983 /* ~"J'avais d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #45985 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 17
  IF ~~ THEN REPLY #45987 /* ~"Alors, au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 13.2 14.0 14.1 14.2 15.0 15.1 15.2 16.0 16.1 16.2
  SAY #45988 /* ~Ils sont en pleine explication. Ils t'ignorent complètement et leur conversation dégénère en un échange d'insultes.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #45989 /* ~"Dans ce cas, je reviendrai plus tard. Au revoir."~ */ DO ~SetGlobal("Insult_BandM_1","GLOBAL",1)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ EXTERN ~DMORTE~ 730
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #66818 /* ~"Dans ce cas, je reviendrai plus tard. Au revoir."~ */ EXIT
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #66819 /* ~"Dans ce cas, je reviendrai plus tard. Au revoir."~ */ EXIT
END
