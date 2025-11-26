// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP1~

IF ~  Global("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26003 /* ~Ce petit sicaire nerveux est enveloppé de chiffons, de couleur rouge et noire. On a l'impression que son corps n'est qu'un paquet de muscles. Il te fixe d'un air menaçant.~ */
  IF ~~ THEN REPLY #26004 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #26005 /* ~Laisse le sicaire tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26878 /* ~"Et comment j'peux t'aider, greffier ?" Il ricane. "On dirait que t'as besoin d'un guérisseur."~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26879 /* ~"Tu fais partie de ceux qui ont volé un moine à la Ruche et qui ont pris son chapelet ?"~ */ GOTO 4
  IF ~~ THEN REPLY #26880 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #26881 /* ~"Arrête de sourire ou c'est toi qui auras besoin d'un guérisseur, 'greffier'."~ */ GOTO 3
  IF ~~ THEN REPLY #26882 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #26883 /* ~"Laisse tomber ! J'ai pas d'temps pour les questions-réponses, greffier." Il crache à tes pieds. "VA CAGUER, sale bougre béjaune !"~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26884 /* ~"Tu fais partie de ceux qui ont volé un moine à la Ruche et qui ont pris son chapelet ?"~ */ GOTO 4
  IF ~~ THEN REPLY #26885 /* ~"Va caguer, toi-même."~ */ GOTO 3
  IF ~~ THEN REPLY #26886 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 4.0 11.0
  SAY #26887 /* ~"À ta place, j'ferais attention de ne pas trop faire de menaces, greffier. Encore une et ça va être ta fête, abruti."~ */
  IF ~~ THEN REPLY #26888 /* ~"Si tu crois pouvoir me battre, vas-y."~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #26889 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #26890 /* ~"Un bougre avec plein d'lignes sur l'visage ? Il se vantait de nous mettre tous dans l'livre des morts, mais on peut l'estamper comme y faut, hein ?" L'homme édenté sourit lentement. "Jamais entendu parler d'un bougre comme ça, ça c'est sûr."~ */
  IF ~~ THEN REPLY #26891 /* ~"Tu as intérêt à me rendre son chapelet avant que *je* ne vous inscrive tous dans le livre des morts."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #26892 /* ~Mensonge : "Tout ça *est* intéressant. Le reste de son ordre te cherche ; *ils* semblent assez bien te connaître."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_PorThug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #26893 /* ~"On peut peut-être trouver un arrangement. Le chapelet n'a pas de valeur pour quelqu'un qui ne fait pas partie de cet ordre. Je pourrais peut-être te l'acheter."~ */ GOTO 5
  IF ~~ THEN REPLY #26894 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #26895 /* ~L'homme se renfrogne. "Non, j'y suis attaché. J'peux pas m'en séparer… sauf si tu mets l'paquet. Cinquante pièces de cuivre, par exemple ?"~ */
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26896 /* ~"C'est fait."~ */ GOTO 6
  IF ~  PartyGoldGT(10)
~ THEN REPLY #26897 /* ~"Et qu'est-ce que tu dirais de dix ?"~ */ GOTO 7
  IF ~~ THEN REPLY #26898 /* ~Bluff : "Non, il ne les vaut pas. Je vais laisser le reste de son ordre s'occuper de toi - à mon avis, ils trouveront un arrangement avec toi, mais ça m'étonnerait que ça te plaise."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  PartyGoldLT(15)
~ THEN REPLY #26899 /* ~"C'est trop cher. Peut-être une autre fois."~ */ EXIT
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26900 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26901 /* ~"OK, ça marche. Voilà…"~ */
  IF ~~ THEN REPLY #26902 /* ~"Merci."~ */ DO ~TakePartyGold(15)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26903 /* ~"Eh, bon… d'accord. C'est trop moche de toute façon. Voilà…"~ */
  IF ~~ THEN REPLY #26904 /* ~"Merci."~ */ DO ~TakePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
GiveItem("PorNeck",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.2
  SAY #26905 /* ~"Eh ?" Le ricanement de l'homme faiblit. "Qu'est-ce que tu racontes ? Quel ordre ? Le bougre était seul, j'en suis sûr."~ */
  IF ~~ THEN REPLY #26906 /* ~Mensonge : "Imbécile, il est membre d'un ordre religieux. Le 'chapelet' que tu as volé est leur relique la plus sacrée. S'ils ne le récupèrent pas, TOUS les membres de l'ordre vont se mettre à ta recherche… et ils n'hésitent pas à tuer les voleurs."~ */ DO ~AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
SetGlobal("Porphiron_Necklace","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #26907 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26908 /* ~Les prunelles de l'homme s'agrandissent. "Eh… on gardait juste la relique pour lui." Il fouille dans le pli de sa robe et en tire le collier, qu'il te tend avec précaution. "Voilà, y'a pas de mal, hein ?"~ */
  IF ~~ THEN REPLY #26909 /* ~Mensonge : "J'espère que ça suffira à apaiser le reste de l'ordre. Une donation serait peut-être la bienvenue. Ça permettrait de calmer le jeu et d'éviter qu'une malédiction ne s'abatte sur toi."~ */ DO ~GivePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Thug_2","GLOBALLaw",-1)
~ JOURNAL #26912 /* ~J'ai parlé du chapelet de Porphiron à l'un des sicaires et je l'ai convaincu par une série de… mensonges anodins que s'il ne rapportait pas le chapelet, il aurait les pairs les plus 'militants' de l'Ordre de Porphiron à ses trousses.~ */ GOTO 10
  IF ~~ THEN REPLY #26910 /* ~"Ta sagesse pourrait soulever des montagnes. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26913 /* ~"Une malédiction ?!" L'homme trace un demi-cercle sur son cœur. "Eh, dis-donc, tu voudrais pas…" Il fouille dans une bourse attachée à sa ceinture et te tend plusieurs pièces de cuivre. "Prends-les avec ma bénédiction, greffier. Dis-lui que j'pensais pas à mal."~ */
  IF ~~ THEN REPLY #26914 /* ~"Ta donation est la bienvenue. Au revoir."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #26915 /* ~Ce gros sicaire est enveloppé de haillons, teints en rouge et noir. On a l'impression que son corps n'est qu'un paquet de muscles. Il te fixe lorsque tu approches et se mord le pouce. "Va caguer, greffier. J'ai plus rien à t'dire !"~ */
  IF ~~ THEN REPLY #26916 /* ~"Va caguer, toi-même."~ */ GOTO 3
  IF ~~ THEN REPLY #26917 /* ~"Très bien. Au revoir."~ */ EXIT
END
