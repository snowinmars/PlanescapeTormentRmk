// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTLE~

IF ~  Global("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 0 // from:
  SAY #2968 /* ~Du siehst einen nach außen schielenden Typen, dessen Haut sich an seinem ganzen Körper zu winden und kräuseln scheint. Er schmatzt mit seinen aufgesprungenen Lippen und der scheckigen Zunge. Während du ihn beobachtest, bewegt sich sein rechtes Auge unabhängig vom linken und richtet sich auf dich. Eine Sekunde später schnellt das linke Auge hinterher und sieht dich ebenfalls an, dann dreht es sich wieder zurück. Das rechte Auge blinzelt. Ein seltsames, gurgelndes Geräusch kommt aus seinem Hals.~ */
  IF ~~ THEN REPLY #2969 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",1)
~ GOTO 1
  IF ~~ THEN REPLY #42001 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42002 /* ~Der Mann setzt ein schiefes Grinsen auf und deutet mit seinem rechten Daumen auf sich selbst. "Man nennt mich Pestle - *gluck!* - den Alchimisten." Er zeigt erneut auf sich, diesmal mit dem linken Zeigefinger. "Pestle Kilnn. *Huah!* Braucht Ihr etwas?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42003 /* ~"Geht's dir nicht gut?"~ */ GOTO 4
  IF ~~ THEN REPLY #42004 /* ~"Was verkaufst du da?"~ */ GOTO 2
  IF ~~ THEN REPLY #42005 /* ~"Ja, ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #42006 /* ~"Nein, ist schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #42007 /* ~"*Uah!*" Mit einer blitzschnellen Bewegung läßt er die linken Hand so heftig auf den Tresen fallen, daß die Haare an seinem Unterarm nur so flattern und wehen. Auf dem Tresen steht irgend etwas geschrieben, eine Liste mit Preisen, die verschiedenen Gegenständen zugeordnet sind. Du siehst, daß auch ein paar Heiltränke und Talismane verfügbar sind.~ */
  IF ~~ THEN REPLY #42008 /* ~"Ich möchte etwas kaufen..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42009 /* ~"Geht's dir nicht gut?"~ */ GOTO 4
  IF ~~ THEN REPLY #42010 /* ~"Eigentlich wollte ich dich was fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #42011 /* ~"Eigentlich brauch ich gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.2 4.1 5.1 6.1 7.0 8.3
  SAY #42012 /* ~Die Hälfte seines Munds kräuselt sich und verzieht sich nach unten. Er schüttelt den Kopf. "Ich arbeite den ganzen Tag im Lager. *Gaack!*" Er zittert heftig. Plötzlich erscheint über seinem Nasenbein ein neues Auge... Das linke Auge rückt zur Seite und macht dem neuen Platz. "Ich rede nur über den - *fnack!* - Laden, mein Herr." Jetzt scheint seine Gesichtshaut das neue Auge förmlich zu 'verschlucken', und das linke Auge nimmt wieder seinen alten Platz ein.~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42013 /* ~"Geht's dir nicht gut?"~ */ GOTO 4
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42014 /* ~"Der alte Ingenieur in der Gießerei braucht angeblich eine Probe meines Bluts und meiner Haut, damit seine Maschine läuft. Bitte mach du das für mich."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 12
  IF ~~ THEN REPLY #42015 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.0 8.1 12.0
  SAY #42016 /* ~"Ja, ja. *Hick!*" Seine Kehle scheint von Krämpfen durchzuckt zu werden. Als der Krampf nachläßt, wölbt sich außen am Hals eine dicke, grünlich schimmernde Pustel auf. "Braucht Ihr etwas, mein Herr? *Gluck!*" Sein Hals beginnt wieder zu zucken. Das zitternde Fleisch verschluckt die grüne Pustel, die unter der Haut verschwindet. Dann hustet er heftig, bevor er sich entspannt. "Puh."~ */
  IF ~~ THEN REPLY #42017 /* ~"Darf ich fragen, was mit dir passiert ist?"~ */ GOTO 5
  IF ~~ THEN REPLY #42018 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #42019 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42020 /* ~Er rollt flehend das linke Auge nach oben. Das rechte schaut befremdet. "Zuviel getrunken."~ */
  IF ~~ THEN REPLY #42021 /* ~"Aber *wovon* hast du zuviel getrunken?"~ */ GOTO 6
  IF ~~ THEN REPLY #42022 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #42023 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42024 /* ~"Einen Trank nach dem andern hab ich mir reingeschüttet. *Fgak!*" Sein Mund rutscht über das Kinn hinunter, woraufhin sein linkes Nasenloch einen neuen Mund bildet. "Soviel habe *ich* zuvor noch nie getrunken! Das Zeug bestand aus Polymorphin und wurde... *hurg!* ... in Limbus gebraut."~ */
  IF ~~ THEN REPLY #42025 /* ~"Kann ich vielleicht irgendwie helfen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_PK_1","GLOBALGood",1)
SetGlobal("Pestle_Kilnn","AR0612",2)
SetGlobal("PK_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #42026 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #42027 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42028 /* ~Die Augen des Mannes schielen nach innen. Dann bewegen sie sich wieder auseinander und schauen dich an. "Weiß nicht. *Fnang!*" Er zittert. Sein Mund wandert wieder übers Kinn hoch und umschließt den anderen Mund, der aus dem Nasenloch entstanden ist. "Das kommt öfters vor. Wir können uns einfach nicht beherrschen - *fnack!* - das ganze Sortiment durchzuprobieren. Falls Ihr eine Lösung habt, wären wir beide - *huah!* - Euch wirklich dankbar."~ */
  IF ~~ THEN REPLY #42029 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #42030 /* ~"Wenn mir was einfällt, sag ich Bescheid. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 8 // from:
  SAY #42031 /* ~Du siehst Pestle Kilnn. Er - oder die beiden - sieht so gruselig aus wie eh und je: Seine Haut ist ständig in Bewegung und wandert über sein Gesicht und seinen ganzen Körper. "Schön - *schnurf!* - daß Ihr wieder hier seid."~ */
  IF ~  PartyHasItem("ElixirS")
Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42032 /* ~"Ich hätte da dieses Elixier der schrecklichen Trennung... Glaubst du, das würde dir helfen?"~ */ GOTO 9
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42033 /* ~"Geht's dir nicht gut?"~ */ GOTO 4
  IF ~~ THEN REPLY #42034 /* ~"Ich möchte was kaufen..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42035 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #42036 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #42037 /* ~Beide Augen richten sich plötzlich auf die kleine Flasche in deinen Händen. Er nickt und gibt einen schmatzenden Laut von sich.~ */
  IF ~~ THEN REPLY #42038 /* ~"So, bitte sehr..."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42039 /* ~"Ich hätte aber gerne eine Belohnung."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_PK_1","GLOBALGood",-2)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #42040 /* ~Pestle Kilnn nimmt die Flasche in beide Hände und stellt sie unter die Theke. Sein linkes Auge sieht dich an, während sein rechtes Auge und seine rechte Hand sich darauf konzentrieren, heftig auf der Theke zu kritzeln. "Wir können das benutzen, um was zu machen, das uns - *hgrk!* - sofort hilft. Wenn du uns einen Moment Zeit gibst, wenn wir alles auf - *gak!* - die Reihe gekriegt haben, machen wir dir ein bißchen Heilzeugs als Belohnung." Er dreht sich um, und geht in den hinteren Teil des Ladens...~ */
  IF ~~ THEN REPLY #42042 /* ~"In Ordnung... Dann leb wohl für's erste."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #42043 /* ~Das linke Auge rollt nach hinten, während das rechte dich weiterhin fixiert. Er nickt. "Würde so ein Heilmittel - *fning!* - genügen, mein Herr?"~ */
  IF ~~ THEN REPLY #42044 /* ~"Ja, das würde genügen. Bitte sehr."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42045 /* ~"Nein... Ich behalt es erst mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #42046 /* ~"Aha! Kein - *schnick!* - Problem." In die rechte Hand nimmt er eine Rasierklinge, in die linke eine Flasche mit einer großen Öffnung. Dann schneidet er dir ein Stück Haut aus dem Unterarm, das er zusammen mit einer kleinen Blutprobe in die Flasche gibt. Schließlich bedeckt er deine Wunde mit etwas Mull und überreicht dir die Flasche. "Darf's sonst noch was sein - *guh-gack!* - mein Herr?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42047 /* ~"Nein... Aber geht's dir gut?"~ */ GOTO 4
  IF ~~ THEN REPLY #42048 /* ~"Ja... Ich möchte was kaufen."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42049 /* ~"Nein, danke. Das ist alles. Leb wohl."~ */ EXIT
END
