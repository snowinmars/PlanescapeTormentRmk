// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42050 /* ~Dieser Mann besitzt eine unheimliche Ähnlichkeit mit Pestle Kilnn, obwohl seine Haut sich nicht ständig verändert und mutiert. "Seid gegrüßt, mein Herr. Freut mich, Euch wiederzusehen. Was kann Pestle für Euch tun?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42051 /* ~"Eigentlich such ich einen Heilungstrunk."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42052 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #42053 /* ~"Ich möchte was kaufen..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42054 /* ~"Bin nur zufällig vorbeigekommen. Leb wohl, Pestle."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #42055 /* ~"Ja, natürlich, deine Belohnung. Sehn wir mal, was wir da haben... Ich bereite sie Euch natürlich umsonst zu... Doch ich brauche die richtigen Zutaten... Das Herz eines Onis oder einen zerstoßenen Hämatiten oder das Haar eines Deva oder einen Faden aus der Robe eines Aasimon oder das Blut eines genesenden Wesens, zum Beispiel eines Trolls, oder..."~ */
  IF ~~ THEN REPLY #42056 /* ~"Meine Wunden heilen eigentlich *sehr* schnell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42057 /* ~Pestle zieht eine Augenbraue hoch. "Ach, tatsächlich? Gut, dann können wir's ja mit Eurem Blut versuchen. Dazu bräuchte ich allerdings eine kleine Probe."~ */
  IF ~~ THEN REPLY #42058 /* ~Gib ihm ein wenig von deinem Blut.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveItemCreate("ClotChrm",Protagonist,10,0,0)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42059 /* ~Nachdem er dir ein wenig Blut entnommen hat, verzieht Pestle sich in den hinteren Teil seines Ladens. Als er wieder zurückkommt, hält er etwas in Händen, das wie erstarrte Bluttropfen aussieht. "Wenn man sich diese Blutgerinnseltalimane auf die Zunge legt, heilen sie bestehende Wunden und beugen neuen eine Zeitlang vor."~ */
  IF ~~ THEN REPLY #42060 /* ~"Danke, Pestle. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #42061 /* ~"Danke. Ich möchte jetzt eigentlich was kaufen..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42062 /* ~"Leb wohl, Pestle, und danke."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.0 6.1
  SAY #42063 /* ~"Ich bitte ergebenst um Verzeihung, mein Herr, aber ich spreche nur über den Laden. Außerdem komm ich selten hier raus. Ich bin nicht der Richtige für Eure Fragen."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42064 /* ~"Der alte Ingenieur in der Gießerei braucht angeblich eine Probe meines Bluts und meiner Haut, damit seine Maschine läuft. Bitte mach du das für mich."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 5
  IF ~~ THEN REPLY #42065 /* ~"Dann wollt ich jetzt gern was kaufen..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42066 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42067 /* ~"Aha! Kein Problem." Er nimmt eine Rasierklinge und eine Flasche mit einer weiten Öffnung. Dann schneidet Pestle dir ein kleines Stück Haut aus dem Unterarm, das er zusammen mit einer kleinen Blutprobe in die Flasche gibt. Schließlich bedeckt er deine Wunde mit etwas Mull und überreicht dir die Flasche. "Darf's sonst noch was sein, mein Herr?"~ */
  IF ~~ THEN REPLY #42068 /* ~"Ja... Ich möchte was kaufen."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42069 /* ~"Nein, danke. Das ist alles. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #42070 /* ~Du siehst Pestle, den Alchimisten. "Seid gegrüßt, mein Herr. Schön, Euch wiederzusehen. Was kann ich für Euch tun?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42071 /* ~"Eigentlich such ich einen Heilungstrunk."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42072 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #42073 /* ~"Ich möchte was kaufen..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42074 /* ~"Bin nur zufällig vorbeigekommen. Leb wohl, Pestle."~ */ EXIT
END
