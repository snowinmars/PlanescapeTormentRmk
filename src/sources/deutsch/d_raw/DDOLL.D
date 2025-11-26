// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLL~

IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22975 /* ~Die Jahre haben ihre Spuren an dieser kleinen Flickenpuppe hinterlassen; ihre Nähte sind aufgeplatzt, und sie sieht aus, als lösten sich ihre Fäden auf. Sie sieht aus wie eine seltsam gewandete Frau mit einem Strahlenkranz aus Stacheln auf dem Kopf.~ */
  IF ~~ THEN REPLY #22981 /* ~"Ohhh.... so eine süße, kleine Puppe, nicht wahr? Nicht wahr? Ja, das bist du!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_3","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22982 /* ~Leg die Puppe weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22976 /* ~Die Puppe reagiert nicht auf deine Redekunst und starrt dich bloß mit ihren Knopfaugen an.~ */
  IF ~~ THEN REPLY #22983 /* ~"Schon gut, schon gut... ich wollte nur mal 'nen kleinen Scherz machen...meine Güte."~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #22977 /* ~Die Jahre sind nicht spurlos an der kleinen Stoffpuppe vorübergegangen. Ihre Füllung bricht an den Nahtstellen hervor, und die Fäden scheinen sich zu lösen. Offensichtlich soll sie eine Nachbildung der Dame der Schmerzen darstellen, aber die Knopfaugen und der weiche Plüsch flößen dir nicht gerade Angst ein.~ */
  IF ~~ THEN REPLY #22984 /* ~"Ohhh... du bist ja eine süße, kleine Dame der Schmerzen, nicht wahr? Nicht wahr...? Ja, das bist du!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22985 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22986 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22987 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #22988 /* ~Scherz: " Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22989 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22990 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22991 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #22992 /* ~Scherz: " Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #22993 /* ~Leg die Puppe weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.6 4.2 4.6
  SAY #22978 /* ~Als du gerade die Worte aussprechen willst, beschleicht dich plötzlich ein seltsames Gefühl, mit dem die Vorahnung einher geht, daß dich das Aussprechen dieser Worte in allergrößte Schwierigkeiten bringen wird... Selbst so zu *fühlen* wie du könnte sich als gefährlich erweisen.~ */
  IF ~  GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22994 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22995 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #22996 /* ~Leg die Puppe weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 2.3 2.4 3.1 4.0 4.1 4.3 4.4 5.0 5.1 5.2
  SAY #22979 /* ~Die Puppe reagiert nicht auf deine Redekunst und starrt dich bloß mit ihren Knopfaugen an.~ */
  IF ~~ THEN REPLY #22997 /* ~" Ohhh... du bist ja eine süße, kleine Dame der Schmerzen, nicht wahr? Nicht wahr...? Ja, das bist du!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22998 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22999 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #23000 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #23001 /* ~Scherz: " Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23002 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23003 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23004 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #23005 /* ~Scherz: " Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #23006 /* ~Leg die Puppe weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 3.0 4.5 4.7 4.8
  SAY #22980 /* ~Als du die Worte aussprichst, fühlst du, wie dich plötzlich ein eiskalter Schauer überkommt... verbunden mit einem Gefühl von Angst. Irgend etwas stimmt da nicht, und die Stoffpuppe wirkt längst nicht mehr so harmlos wie noch kurz zuvor. Einen Moment lang - nur für den Bruchteil eines Augenblicks - hast du geglaubt, daß die Klingen, die den Kopf der Puppe umgeben, metallisch glänzen.~ */
  IF ~~ THEN REPLY #23007 /* ~" Ohhh... du bist ja eine süße, kleine Dame der Schmerzen, nicht wahr? Nicht wahr...? Ja, das bist du!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23008 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #23009 /* ~Scherz: " Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23010 /* ~Leg die Puppe weg.~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #51951 /* ~Die Jahre sind nicht spurlos an der kleinen Stoffpuppe vorübergegangen. Ihre Füllung bricht an den Nahtstellen hervor, und die Fäden scheinen sich zu lösen. Offensichtlich soll sie eine Nachbildung der Dame der Schmerzen darstellen, aber die Knopfaugen und der weiche Plüsch flößen dir nicht gerade Angst ein.~ */
  IF ~~ THEN REPLY #51955 /* ~"Ohhh... du bist ja eine süße, kleine Dame der Schmerzen, nicht wahr? Nicht wahr...? Ja, das bist du!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51956 /* ~Wahrheit: "Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ GOTO 7
  IF ~~ THEN REPLY #51957 /* ~Scherz: " Oh, große Dame der Schmerzen, Göttin von Sigil, erhöre mein Flehen und hilf mir in dieser Stunde der Not."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51958 /* ~Leg die Puppe weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #51960 /* ~Die Puppe reagiert nicht auf deinen guten Zuspruch, sondern starrt dich nur mit ihren Knopfaugen an. Jetzt, da du außerhalb von Sigil bist, IST der Puppe vielleicht einfach gerade nicht danach, die Dame der Schmerzen zu sein. ~ */
  IF ~~ THEN REPLY #51961 /* ~Umarm die Puppe kurz, dann steck sie in dein Bündel.~ */ EXIT
END
