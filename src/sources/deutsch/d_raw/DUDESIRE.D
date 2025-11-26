// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUDESIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DUDESIRE~

IF ~  Global("UDesire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2987 /* ~Die Frau vor dir ist unglaublich attraktiv und von einer unbestimmbaren Aura umgeben, die in dir den *dringenden* Wunsch weckt, mit ihr zu sprechen. Als du zu ihr herantritts, sieht sie dich kokett an und lächelt dann wissend.~ */
  IF ~~ THEN REPLY #2988 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("UDesire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44849 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 21.0
  SAY #44850 /* ~"*Willst* du etwas? Hast du Sssssehnssssüchte?", fragt sie dich mit einem sinnlichen Säuseln. "Ich kann dir helfen. Sag mir deinen Wunsch, und ich erfüll ihn dir."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 475
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44851 /* ~"Ich will *dich*."~ */ GOTO 3
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44852 /* ~"Ich will mächtige Waffen."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44853 /* ~"Ich will magische Gegenstände."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44854 /* ~"Ich will Zaubersprüche."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44855 /* ~"Ich will Wissen. Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44856 /* ~"Ich will meine Erinnerungen wiederhaben - und zwar alle."~ */ GOTO 17
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44857 /* ~"Was hast du, was für mich von Interesse sein könnte?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44858 /* ~"Vielleicht später. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44859 /* ~Die Frau beachtet Morte nicht und ist ganz auf den Blickkontakt mit dir fixiert. Lächelnd wartet sie auf deine Antwort.~ */
  IF ~~ THEN REPLY #44860 /* ~"Ich will *dich*."~ */ GOTO 3
  IF ~~ THEN REPLY #44861 /* ~"Ich will mächtige Waffen."~ */ GOTO 10
  IF ~~ THEN REPLY #44862 /* ~"Ich will magische Gegenstände."~ */ GOTO 10
  IF ~~ THEN REPLY #44863 /* ~"Ich will Zaubersprüche."~ */ GOTO 10
  IF ~~ THEN REPLY #44864 /* ~"Ich will Wissen. Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #44865 /* ~"Ich will meine Erinnerungen wiederhaben - und zwar alle."~ */ GOTO 17
  IF ~~ THEN REPLY #44866 /* ~"Was hast du, was für mich von Interesse sein könnte?"~ */ GOTO 16
  IF ~~ THEN REPLY #44867 /* ~"Vielleicht später. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #44868 /* ~Sie befeuchtet ihre Lippen und lächelt. Plötzlich spürst du einen Ruck in der Brust, so als würde jemand mit der Hand an deinen Eingeweiden zerren. "Ein einfacher Wunsch, Reisender, doch du mußt mir genau beschreiben, wie du mich begehrst. Ich will dein Verlangen spüren... *Dann* sag ich dir auch, was ich verlange."~ */
  IF ~~ THEN REPLY #44869 /* ~"Ich habe mich versprochen... Ich will dich nicht."~ */ GOTO 4
  IF ~~ THEN REPLY #44870 /* ~"Ich will dich. Reicht das nicht?"~ */ GOTO 6
  IF ~~ THEN REPLY #44871 /* ~Beschreibe, wie du sie willst.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44872 /* ~Zeig ihr - körperlich -, daß du sie begehrst.~ */ GOTO 7
  IF ~~ THEN REPLY #44873 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44874 /* ~Ihr Lächeln vergeht. Deine Antwort hat sie wohl traurig gemacht. "Ist es dein Verlangen, mich zu verspotten, Reisender? Ein Wunsch ist doch kein zufälliges Gefühl... Willst du wirklich gar *nichts*?"~ */
  IF ~~ THEN REPLY #44875 /* ~"Ich will auch noch was anderes..."~ */ GOTO 5
  IF ~~ THEN REPLY #44876 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0 15.0 16.0
  SAY #44877 /* ~"Ja? Komm... Sag es mir..."~ */
  IF ~~ THEN REPLY #44878 /* ~"Ich will *dich*."~ */ GOTO 3
  IF ~~ THEN REPLY #44879 /* ~"Ich will mächtige Waffen."~ */ GOTO 10
  IF ~~ THEN REPLY #44880 /* ~"Ich will magische Gegenstände."~ */ GOTO 10
  IF ~~ THEN REPLY #44881 /* ~"Ich will Zaubersprüche."~ */ GOTO 10
  IF ~~ THEN REPLY #44882 /* ~"Ich will Wissen. Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #44883 /* ~"Ich will meine Erinnerungen wiederhaben - und zwar alle."~ */ GOTO 17
  IF ~~ THEN REPLY #44884 /* ~"Was hast du, was für mich von Interesse sein könnte?"~ */ GOTO 16
  IF ~~ THEN REPLY #44885 /* ~"Vielleicht später. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 7.0
  SAY #44886 /* ~Ihr Lächeln gefriert. "Du mußt deinen Wunsch mit mehr Gefühl äußern, sonst spür ich ihn nicht. Du mußt mich davon überzeugen, daß du dir sehnlichst wünschst, was ich dir geben kann, sonst bekommst du es nicht."~ */
  IF ~~ THEN REPLY #44887 /* ~Beschreibe, wie du sie willst.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44888 /* ~Zeig ihr - körperlich -, daß du sie begehrst.~ */ GOTO 7
  IF ~~ THEN REPLY #44889 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 6.1
  SAY #44890 /* ~Du versuchst, sie an den Schultern zu packen, doch sie springt mit einen Satz zurück, und du greifst in die Luft. "Es reicht nicht, den Palast nur betreten zu *wollen*... Ein Sucher muß seinen Wunsch äußern - erst dann öffnen sich dir die Tore. Sprich."~ */
  IF ~~ THEN REPLY #44891 /* ~"Ich will dich. Reicht das nicht?"~ */ GOTO 6
  IF ~~ THEN REPLY #44892 /* ~Beschreibe, wie du sie willst.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44893 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 6.0 7.1
  SAY #44894 /* ~Während du sprichst, verblaßt ihr Lächeln und sie lehnt sich aufmerksam nach vorne. Ihre Augen hängen hungrig an deinem Gesicht. Ihre Gegenwart bringt dich dazu, mehr zu reden, als du es normalerweise tun würdest, und nach ein paar Minuten senken sich ihre Lider, während sie heftig einatmet. Plötzlich beginnt dein Begehren nach ihr zu schwinden... Deine Begierde verflüchtigt sich völlig und läßt in dir nur ein Gefühl kalter Leere zurück. Sie öffnet die Augen wieder und lächelt. Jetzt trägt sie den Ausdruck einer gewissen Zufriedenheit.

"Was ist los, Reisender? Soll ich nicht mehr...?"~ */
  IF ~~ THEN REPLY #44895 /* ~"Nein, ich will dich nicht mehr. Was hast du getan?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #44896 /* ~Sie wirkt verwundert. "Was meinst du bloß?" Trotz ihres unschuldigen Ausdrucks bist du sicher, daß etwas Unnatürliches passiert ist. Sie hat irgendwie dein Begehren nach ihr weggesogen - es gestohlen für irgendeine schreckliche Sammlung von Begierden oder vielleicht, um sich davon zu ernähren - und jetzt ist es weg... für immer.

"Komm schon, gibt es noch etwas, was du mir sagen willst? Erzähl's mir..."~ */
  IF ~~ THEN REPLY #44897 /* ~"Ach, lieber nicht. Leb wohl, Unerfülltes Verlangen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 1.3 1.4 2.1 2.2 2.3 5.1 5.2 5.3
  SAY #44898 /* ~Sie mustert dein Gesicht. "Wenn du dir diese Dinge wirklich wünschst, mußt du mir zuerst eine Bitte erfüllen: Beschreib mir genau, wie du diese Dinge begehrst. Ich will erst dein Verlangen spüren... *Dann* sag ich dir, was ich verlange."~ */
  IF ~~ THEN REPLY #44899 /* ~"Ich hab mich versprochen... Ich will diese Dinge überhaupt nicht."~ */ GOTO 11
  IF ~~ THEN REPLY #44900 /* ~"Ich will sie... Reicht das nicht?"~ */ GOTO 12
  IF ~~ THEN REPLY #44901 /* ~Beschreibe, wie sehr du sie dir wünschst.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44902 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 17.0 18.0
  SAY #44903 /* ~Ihr Lächeln vergeht. "Willst du mich verspotten, Reisender? Ein Wunsch ist doch kein zufälliges Gefühl... Willst du wirklich gar *nichts*?" Sie schaut dich prüfend an.~ */
  IF ~~ THEN REPLY #44904 /* ~"Ich will auch noch was anderes..."~ */ GOTO 5
  IF ~~ THEN REPLY #44905 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #44906 /* ~Ihr Lächeln gefriert. "Du mußt deinen Wunsch mit mehr Gefühl äußern, sonst spür ich ihn nicht. Du mußt mich davon überzeugen, daß du dir sehnlichst wünschst, was ich dir geben kann, sonst bekommst du es nicht."~ */
  IF ~~ THEN REPLY #44907 /* ~"Ich hab mich versprochen... Ich will diese Dinge überhaupt nicht."~ */ GOTO 11
  IF ~~ THEN REPLY #44908 /* ~Beschreibe, wie sehr du sie dir wünschst.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44909 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 12.1
  SAY #44910 /* ~Während du sprichst, verblaßt ihr Lächeln und sie lehnt sich aufmerksam nach vorne. Ihre Augen hängen hungrig an deinem Gesicht. Ihre Gegenwart bringt dich dazu, mehr zu reden, als du es normalerweise tun würdest, und nach ein paar Minuten senken sich ihre Lider, während sie heftig einatmet. Plötzlich beginnt dein Begehren nach ihr zu schwinden... Deine *Begierde* verflüchtigt sich völlig und läßt in dir nur ein Gefühl kalter Leere zurück. Sie öffnet die Augen wieder, als du verstummst.

"Was ist los, Reisender? Willst du diese Dinge nicht mehr...?"~ */
  IF ~~ THEN REPLY #44911 /* ~"Nein... äh, doch... Was hast du mit mir gemacht?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 20.0
  SAY #44912 /* ~Sie wirkt verwundert. "Was meinst du bloß?" Trotz ihres unschuldigen Ausdrucks bist du sicher, daß etwas Unnatürliches passiert ist. Sie hat irgendwie einen Teil deiner Begierde weggesogen - ihn gestohlen für irgendeine schreckliche Sammlung von Begierden oder vielleicht, um sich davon zu ernähren. Du bist dir sicher, hättest du über deine Begierde zu Ende gesprochen, wäre sie für dich auf immer verloren gewesen.

"Komm schon, gibt es noch etwas, was du mir sagen willst? Erzähl's mir..."~ */
  IF ~~ THEN REPLY #44913 /* ~"Ach, lieber nicht. Leb wohl, Unerfülltes Verlangen."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.4 5.4 22.0
  SAY #44914 /* ~Sie runzelt die Stirn und wendet den Blick kurz von dir ab. "Wissen... fällt nicht in mein Gebiet. Aber du hast doch bestimmt *noch* einen Wunsch oder ein Bedürfnis, von dem du mir erzählen kannst..."~ */
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44915 /* ~"Ja, da gibt es noch was, das ich will..."~ */ GOTO 5
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44916 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #44917 /* ~"Nein, darüber möchte ich lieber nicht mit dir sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7 2.6 5.6
  SAY #44918 /* ~"Alles, was du dir wünschst, liegt in meiner Reichweite. Die wenigen Dinge, die ich nicht schon besitze, kann ich besorgen. Sag, was du dir wünschst..."~ */
  IF ~~ THEN REPLY #44919 /* ~"Es *gibt* etwas, das ich will..."~ */ GOTO 5
  IF ~~ THEN REPLY #44920 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.6 2.5 5.5
  SAY #44921 /* ~Sie lächelt. "Man vergißt so viel im Leben... Vor allem, wenn man mehr als einmal gelebt hat. Aber ich *kann* dir helfen." Sie sieht dich prüfend an. "Beschreib mir genau, wie du diese Erinnerungen begehrst. Erst wenn ich dein Verlangen spüre, sag ich dir, was ich verlange."~ */
  IF ~~ THEN REPLY #44922 /* ~"Ich hab mich versprochen... Ich will sie gar nicht wiederhaben."~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #44923 /* ~"Wie kannst du beweisen, daß du sie mir zurückgeben kannst?"~ */ GOTO 18
  IF ~~ THEN REPLY #44924 /* ~"Ich will sie wiederhaben... Reicht das nicht?"~ */ GOTO 19
  IF ~~ THEN REPLY #44925 /* ~Beschreibe, wie sehr du deine Erinnerungen wiederhaben willst.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44926 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0
  SAY #44927 /* ~Obwohl sie sich nicht zu bewegen scheint, legt sie dir plötzlich die Hand auf die Stirn und fährt mit einem Finger über deine Schläfe. "Nur so..." Du hast den Eindruck, der ganze Nebel in deinem Kopf würde sich kurz auflösen und ein Lichtstrahl der Erinnerung hindurchdringen... Doch bevor du dich auf die Erinnerung konzentrieren kannst, füllt sich alles wieder mit Nebel. "Nur so kann ich es beweisen. Erst, wenn du mir sagst, *weshalb* du dieses Verlangen hast, sag ich dir, was ich verlange..."~ */
  IF ~~ THEN REPLY #44928 /* ~"Ich hab mich versprochen... Ich will sie gar nicht wiederhaben."~ */ GOTO 11
  IF ~~ THEN REPLY #44929 /* ~"Ich will sie wiederhaben... Reicht das nicht?"~ */ GOTO 19
  IF ~~ THEN REPLY #44930 /* ~Beschreibe, wie sehr du deine Erinnerungen wiederhaben willst.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44931 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.1
  SAY #44932 /* ~Ihr Lächeln gefriert. "Du mußt deinen Wunsch mit mehr Gefühl äußern, sonst spür ich ihn nicht. Du mußt mich davon überzeugen, daß du dir sehnlichst wünschst, was ich dir geben kann, sonst bekommst du es nicht."~ */
  IF ~~ THEN REPLY #44933 /* ~"Wie kannst du beweisen, daß du sie mir zurückgeben kannst?"~ */ GOTO 18
  IF ~~ THEN REPLY #44934 /* ~Beschreibe, wie sehr du deine Erinnerungen wiederhaben willst.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44935 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.2 19.1
  SAY #44936 /* ~Während du sprichst, verblaßt ihr Lächeln und sie lehnt sich aufmerksam nach vorne. Ihre Augen hängen hungrig an deinem Gesicht. Ihre Gegenwart bringt dich dazu, mehr zu reden, als du es normalerweise tun würdest, und nach ein paar Minuten senken sich ihre Lider, während sie heftig einatmet. Plötzlich beginnt dein Begehren nach deinen Erinnerungen zu schwinden... Deine *Begierde* verflüchtigt sich langsam und läßt in dir nur ein Gefühl kalter Leere zurück. Sie öffnet die Augen wieder, als du verstummst.

"Was ist los, Reisender? Willst du nicht mehr, daß dir deine Erinnerungen zurückgegeben werden...?"~ */
  IF ~~ THEN REPLY #44937 /* ~"Nein... äh, doch... Was hast du mit mir gemacht?"~ */ GOTO 14
END

IF ~  Global("UDesire","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #44938 /* ~Du erblickst Unerfülltes Verlangen. Als du näherkommst, dreht sie sich um und lächelt.~ */
  IF ~~ THEN REPLY #44939 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #44940 /* ~"Bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  Global("UDesire","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #44941 /* ~Du siehst Unerfülltes Verlangen, die die Wünsche anderer zu sammeln oder sich von ihnen zu nähren scheint, indem sie sie unwiderbringlich aus dem Gedächtnis dieser Menschen löscht. Sie lächelt, als sie dich erblickt.~ */
  IF ~~ THEN REPLY #44942 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #44943 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END
