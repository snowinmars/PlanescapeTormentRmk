// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTLE~

IF ~  Global("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 0 // from:
  SAY #2968 /* ~Tu vois un homme qui louche et dont la peau semble se tordre et onduler le long de tout son corps. Il claque sa langue marbrée sur ses lèvres gercées. Tandis que tu le regardes, son œil droit bouge indépendamment vers la gauche pour se concentrer sur toi. Une seconde plus tard, l'œil gauche se déplace vers toi, puis reprend sa position initiale. L'œil droit cligne. La gorge de l'homme émet un étrange gargouillis.~ */
  IF ~~ THEN REPLY #2969 /* ~"Bonjour…"~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",1)
~ GOTO 1
  IF ~~ THEN REPLY #42001 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42002 /* ~L'homme sourit en coin en se montrant du pouce droit. "Je m'appelle Pilon, - *gugh* ! - l'alchimiste." Il se montre de nouveau du doigt, cette fois avec l'index gauche. "Mon nom de famille, c'est Dufour. *Hgrk* ! T'as besoin de quelque chose ?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42003 /* ~"Ça va ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42004 /* ~"Qu'est-ce que tu vends ?"~ */ GOTO 2
  IF ~~ THEN REPLY #42005 /* ~"Oui, j'avais des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #42006 /* ~"Non, ça ira. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #42007 /* ~"*Hugahk* !" Sa main gauche s'élance pour atterrir à la surface d'un comptoir, tandis que les poils de son avant-bras ondulent. Tu aperçois des griffonnages - une liste de prix à côté d'un certain nombre d'articles. Tu remarques que différentes mixtures et potions curatives semblent disponibles.~ */
  IF ~~ THEN REPLY #42008 /* ~"Je voudrais acheter quelque chose…"~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42009 /* ~"Ça va ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42010 /* ~"J'avais des questions, en fait…"~ */ GOTO 3
  IF ~~ THEN REPLY #42011 /* ~"Je n'ai besoin de rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.2 4.1 5.1 6.1 7.0 8.3
  SAY #42012 /* ~La moitié de sa bouche se tord d'un air désapprobateur ; il secoue la tête. "Je travaille toute la journée dans la réserve. *Gaaaahk* !" Il est pris d'un violent frisson. Soudain, un troisième œil apparaît sur l'arête de son nez… L'œil gauche s'écarte pour céder la place au nouvel œil. "Je ne parle que de la - *fnahk* ! - réserve, monsieur." La peau de son visage semble alors 'avaler' le nouvel œil et l'œil gauche se remet en place.~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42013 /* ~"Ça va ?"~ */ GOTO 4
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42014 /* ~"Le vieil ingénieur de la Grande Fonderie m'a dit qu'il lui fallait un échantillon de mon sang et de ma peau pour faire fonctionner sa machine. Voilà pourquoi j'ai besoin de toi."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 12
  IF ~~ THEN REPLY #42015 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.0 8.1 12.0
  SAY #42016 /* ~"Oui. *Hgak* !" Sa gorge se convulse pendant quelques instants, puis se relâche. Une grosse pustule d'un vert luisant se forme tout à coup dans son cou. "Alors, tu avais besoin de quelque chose ? *Ghok* !" Sa gorge se serre de nouveau et un pli de chair frémissante avale la pustule verte qui disparaît sous la peau de sa gorge. Une brève et violente quinte de toux s'empare de lui, après quoi il semble se détendre. "Pfff !"~ */
  IF ~~ THEN REPLY #42017 /* ~"Puis-je me permettre de te demander ce qui t'est arrivé ?"~ */ GOTO 5
  IF ~~ THEN REPLY #42018 /* ~"J'avais quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #42019 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42020 /* ~L'œil gauche roule vers le haut avec une expression d'exaspération. Le droit regarde de travers. "J'en ai trop bu."~ */
  IF ~~ THEN REPLY #42021 /* ~"Trop bu de *quoi* ?"~ */ GOTO 6
  IF ~~ THEN REPLY #42022 /* ~"J'avais une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #42023 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42024 /* ~"Trop de potions, j'ai bu. Trop de potions. *Fgaohg* !" Sa bouche glisse sous son menton ; sa narine gauche forme une nouvelle bouche. "*Je* n'en avais jamais bu autant, c'est sûr ! Des potions polymorphiques… *Hgrk!* … des Limbes."~ */
  IF ~~ THEN REPLY #42025 /* ~"Puis-je t'aider d'une manière ou d'une autre ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_PK_1","GLOBALGood",1)
SetGlobal("Pestle_Kilnn","AR0612",2)
SetGlobal("PK_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #42026 /* ~"J'avais une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #42027 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42028 /* ~Les yeux de l'homme se rentrent pour se regarder, puis se retournent vers toi. "Je sais pas. *Fng* !" Il frémit ; la bouche qui se trouve sous son menton remonte pour envelopper celle formée par sa narine. "Ce genre de chose arrive assez souvent ; c'est comme si on ne pouvait pas - *Fnug* ! - s'empêcher de goûter le stock. Si tu trouvais un moyen de nous aider, on te serait tous les deux - *guhkahk* ! - très reconnaissants."~ */
  IF ~~ THEN REPLY #42029 /* ~"J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #42030 /* ~"Si je trouve un moyen, je vous préviendrai. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 8 // from:
  SAY #42031 /* ~Tu vois Pilon Dufour. Il - ou ils - semble plus surnaturel que jamais, la chair de son visage et de son corps se modifiant sans cesse. "Content de te - *snrf* ! - revoir."~ */
  IF ~  PartyHasItem("ElixirS")
Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42032 /* ~"J'ai cet Élixir d'horrifique séparation… Tu crois que ça peut t'aider ?"~ */ GOTO 9
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42033 /* ~"Ça va ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42034 /* ~"Je voulais acheter quelque chose…"~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42035 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #42036 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #42037 /* ~Ses deux yeux happent soudain la petite bouteille que tu tiens dans tes mains. Il acquiesce en se pinçant les lèvres.~ */
  IF ~~ THEN REPLY #42038 /* ~"Tiens…"~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42039 /* ~"J'attends une récompense, tu sais."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_PK_1","GLOBALGood",-2)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #42040 /* ~Pilon Dufour prend la bouteille à deux mains et la range sous le comptoir. Il te considère de l'œil gauche, tandis que le droit observe ce que sa main droite griffonne sur le comptoir. "Nous pouvons utiliser ceci pour concocter un truc qui nous - *hgrk!* - r'mettra d'aplomb. Si tu nous laisses - *gak!* - un moment, nous t'fabriquerons des potions de soins en récompense." Il tourne la tête vers l'arrière de sa boutique…~ */
  IF ~~ THEN REPLY #42042 /* ~"D'accord… au revoir, donc."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #42043 /* ~L'œil gauche roule, mais le droit continue à te fixer. Il acquiesce. "Quelques objets curatifs te - *fng* ! - suffiront ?"~ */
  IF ~~ THEN REPLY #42044 /* ~"Oui. Tiens."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42045 /* ~"Non… Je garde ça pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #42046 /* ~"Un échantillon ? Très - *schnik* ! - bien." Sa main droite s'empare d'une lame de rasoir et la gauche d'une bouteille à large goulot. Il te prélève un petit morceau de peau sur l'avant-bras, puis le place dans la bouteille en y ajoutant quelques gouttes de ton sang. Il recouvre ensuite ta blessure de gaze et te tend la bouteille. "Il te faut autre - *guh-gack* ! - chose ?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42047 /* ~"Non, mais… Est-ce que ça va ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42048 /* ~"Oui… Je voudrais acheter quelque chose."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42049 /* ~"Non, ce sera tout. Merci et au revoir."~ */ EXIT
END
