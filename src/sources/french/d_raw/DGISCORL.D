// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGISCORL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGISCORL~

IF ~  Global("Giscorl","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20655 /* ~Tu aperçois un chétif marchand à la barbe broussailleuse rousse et grise. Il porte plusieurs épaisseurs de robes de couleurs vives, tant et si bien qu'il ressemble à un drapeau sur jambes. Il tremble légèrement tandis que tu le regardes. ~ */
  IF ~~ THEN REPLY #20656 /* ~"Bonjour."~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21068 /* ~"Es-tu Giscorl ?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21069 /* ~Ignore le marchand, promène-toi dans le marché.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #21056 /* ~"Moi, Giscorl." Il s'incline et étend ses mains tremblantes. Tu remarques alors que ses mains et ses avant-bras sont une masse tordue de cicatrices noires… comme s'ils avaient été un jour sévèrement brûlés.~ */
  IF ~~ THEN REPLY #21070 /* ~"Euh, qu'est-ce que tu vends ?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #21071 /* ~"Euh… comment tu t'es blessé les mains ?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21072 /* ~"Je suis venu chercher la lessive de quelqu'un… Mebbeth… la sage-femme… Le Square du chiffonnier ?~ */ GOTO 6
  IF ~~ THEN REPLY #21073 /* ~"Désolé de te déranger. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Giscorl","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21057 /* ~Giscorl se tourne vers toi. "Moi, Giscorl." Il s'incline et étend ses mains tremblantes et couvertes de cicatrices. "Moi, Giscorl."~ */
  IF ~  Global("Giscorl","GLOBAL",2)
~ THEN REPLY #21074 /* ~"Je peux voir ce que tu as ?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Giscorl","GLOBAL",1)
~ THEN REPLY #21075 /* ~"Euh, que fais-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #21076 /* ~"Euh… comment tu t'es blessé les mains ?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21077 /* ~"Je suis venu chercher la lessive de quelqu'un… Mebbeth… la sage-femme… Le Square du chiffonnier ?~ */ GOTO 6
  IF ~~ THEN REPLY #21078 /* ~"Rien aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1
  SAY #21058 /* ~"Giscorl achète le tissu." La voix de Giscorl sonne comme une horloge, plate et mesurée. "Giscorl vend le tissu, lave le tissu, répare le tissu et…" Il fait un signe de ses mains tremblantes vers ses couches de tissu. "… porte le tissu."~ */
  IF ~~ THEN REPLY #21079 /* ~"Je peux voir ce que tu as ?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21080 /* ~"Euh… comment tu t'es blessé les mains ?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21081 /* ~"Je vois. Écoute, je suis venu chercher la lessive de quelqu'un… Mebbeth… la sage-femme… le Square du chiffonnier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #21082 /* ~"Rien aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 3.1 12.1
  SAY #21059 /* ~Giscorl ne semble pas t'avoir entendu ; il répète son message, du même ton plat et monotone : "Giscorl vend le tissu, lave le tissu, répare le tissu et…" Il fait un signe de ses mains tremblantes vers ses couches de tissu. "… porte le tissu."~ */
  IF ~~ THEN REPLY #21083 /* ~"Je peux voir ce que tu as ?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21084 /* ~"J'ai dit : comment tu t'es blessé les mains ?"~ */ GOTO 5
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21085 /* ~"Je vois. Écoute, je suis venu chercher la lessive de quelqu'un… Mebbeth… la sage-femme… le Square du chiffonnier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #21086 /* ~"Rien aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #21060 /* ~Le ton monocorde de Giscorl se brise. "Giscorl v-vend le tissu, l-lave le tissu, r-répare le tissu et…" Il se désigne à nouveau, mais ses mains tremblent tellement qu'il ne peut pas finir.~ */
  IF ~~ THEN REPLY #21087 /* ~"Peu importe. Est-ce que je peux voir ce que tu as ?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21088 /* ~"Euh… peu importe. Écoute, je suis venu chercher la lessive de quelqu'un… Mebbeth… la sage-femme… le Square du chiffonnier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #21089 /* ~"Excuse-moi de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.3 3.2 4.2 5.1 12.2
  SAY #21061 /* ~Giscorl cligne des yeux. "Laver le tissu ?"~ */
  IF ~~ THEN REPLY #21090 /* ~"Oui, Mebbeth… le Square du Chiffonnier ?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #21062 /* ~"Euh… chiffon ? Chiffonnier ?" Il tape des doigts, comme s'il comptait quelque chose. "Je sais. Je me souviens." Il lève un doigt tremblant, comme pour t'indiquer d'attendre.~ */
  IF ~~ THEN REPLY #21091 /* ~Attends qu'il aille chercher la lessive.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21063 /* ~Il revient avec une masse aplatie de chiffon verts, fins comme du papier, mais tellement durs qu'on pourrait les prendre pour des planches à découper. Les chiffons sont tellement recouverts d'une sorte d'amidon vert acidulé qu'il semble qu'il faudrait des années de trempage pour les assouplir.~ */
  IF ~~ THEN REPLY #21092 /* ~"Euh… tu les as lavés combien de fois ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #21064 /* ~"Giscorl lave tissu, amidonne tissu tous les cinq jours." Ses yeux cillent. "Giscorl a lavé de nombreuses années. Toujours amidonné chaque cinq jours. C'est le rituel de Giscorl."~ */
  IF ~~ THEN REPLY #21093 /* ~"Mais ils sont foutus."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #21065 /* ~"Laver le tissu. C'est le rituel de Giscorl." Sa voix est monotone, presque comme celle d'un zombi. "*Dois* amidonner le tissu tous les cinq jours."~ */
  IF ~~ THEN REPLY #3014 /* ~"À quoi ça sert de le faire tous les cinq jours alors qu'il n'y en a pas besoin… oh, ça ne fait rien, donne-les."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #21066 /* ~"Donne tissu." Il fait un signe de la tête, puis te tend les chiffons. Ils sont lourds… presque autant que des briques.~ */
  IF ~~ THEN REPLY #21095 /* ~"Je vais les rapporter à Mebbeth. Au revoir."~ */ DO ~GiveItemCreate("MebRags",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 12.0
  SAY #21067 /* ~Tu finis de parcourir la sélection de Giscorl, et il fait un signe de la tête. "Moi, Giscorl."~ */
  IF ~~ THEN REPLY #21097 /* ~"En fait, j'aimerais jeter un autre coup d'œil à ce que tu vends…"~ */ DO ~StartStore("Giscorl",Protagonist)
~ GOTO 12
  IF ~~ THEN REPLY #21098 /* ~"Euh… comment tu t'es blessé les mains ?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21099 /* ~"Je vois. Écoute, je suis venu chercher la lessive de quelqu'un… Mebbeth… la sage-femme… le Square du chiffonnier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #21100 /* ~"Rien d'autre pour aujourd'hui. Au revoir."~ */ EXIT
END
