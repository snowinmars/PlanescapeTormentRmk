// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSPHERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSPHERE~

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #62409 /* ~Diese schlichte Bronzekugel hat einen Durchmesser von ungefähr dreißig Zentimetern, aber sie ist erstaunlich leicht, als sei sie innen hohl. ~ */
  IF ~~ THEN REPLY #62412 /* ~Sieh dir die Kugel genau an.~ */ GOTO 1
  IF ~~ THEN REPLY #62413 /* ~Steck die Kugel ein.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #62410 /* ~Obwohl sie eigentlich recht normal aussieht, schafft es diese Kugel irgendwie, deine übrigen Sinne zu beleidigen. Die Struktur der Kugel, einfach wie sie sich anfühlt, gibt dir das Gefühl, daß sie ein Ei kurz vor dem Aufplatzen ist - schon bei der Berührung bekommst du eine Gänsehaut. Um alles noch schlimmer zu machen, verströmt die Kugel einen fauligen Gestank, der dir die Tränen in die Augen treibt.~ */
  IF ~~ THEN REPLY #62414 /* ~Steck die Kugel ein.~ */ EXIT
END

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64916 /* ~Als du diesmal die Kugel hochhebst und untersuchst, spürst du, wie die Erinnerungen deiner ersten Inkarnation dich aufwühlen, aber sie sind keine penetranten oder treibenden Kräfte. Sie sind ganz ruhig, wie die Gedanken eines Mannes, der einen weiten Weg zurücklegt, um einen Freund zu treffen, den er ewig nicht mehr gesehen hat. ~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64917 /* ~Als du seine Gegenwart in deinen Gedanken spürst, siehst du die Kugel in einem ganz neuen Licht - nicht als etwas Häßliches oder Scheußliches, sondern als etwas Wertvolles, wie ein neugeborenes Kind. Die Kugel ist der Hüter deiner letzten Augenblicke, bevor du Ravel in der Grauen Einöde trafst und das Unmögliche von ihr verlangtest. ~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64918 /* ~Du weißt, warum du sie gefragt hast. Und du weißt, daß du einfach nur die Oberfläche der Kugel mit beiden Händen berühren und Bedauern *fühlen* mußt, damit sich der Stein dir öffnet. ~ */
  IF ~~ THEN REPLY #64919 /* ~Halt den Stein fest, und zeige Bedauern. ~ */ DO ~DestroyPartyItem("BSphere",TRUE)
~ GOTO 5
  IF ~~ THEN REPLY #64920 /* ~Laß die Erinnerungen, wo sie sind... in Bronze gegossen.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64921 /* ~Die Kugel glitzert in deinen Händen, die Hülle der Kugel löst sich in Tropfen ab und wird zu einem Bronzeregen, der dich umgibt. Mit jedem Tropfen, der dich erreicht, fühlst du eine neue Erinnerung erwachen, eine verlorene Liebe, einen verlorenen Schmerz, einen schmerzlichen Verlust - und mit alledem kommt der große Druck von Bedauern. Das Bedauern unüberlegter Handlungen, das Bedauern des Leids, das Bedauern des Kriegs, das Bedauern des Todes, und du merkst, wie dein Geist sich unter dem Druck zu *beugen* beginnt - so VIEL, alles auf einmal, so viel Schaden, der anderen zugefügt wurde... so viel, daß man eine ganze FESTUNG aus diesem Schmerz errichten könnte.~ */
  IF ~~ THEN REPLY #64922 /* ~Konzentriere dich, achte auf dein Zentrum.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64923 /* ~Und plötzlich, unter den Qualen des Bedauerns, fühlst du wieder die erste Inkarnation. Seine Hand, unsichtbar und schwerelos, liegt auf deiner Schulter und stützt dich. Er spricht kein Wort, aber durch seine Berührung erinnerst du dich plötzlich an deinen Namen. ~ */
  IF ~~ THEN DO ~GiveExperience(Protagonist,2000000)
FullHealEx(Protagonist)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64924 /* ~...und es ist so *einfach*, gar nicht, was du erwartet hattest, und plötzlich fühlst du dich getröstet. Nun, wo du deinen Namen weißt, deinen richtigen Namen, weißt du auch, daß du den vielleicht wichtigsten Teil deiner selbst wiedererlangt hast. ~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64925 /* ~Du kennst deinen Namen, also kennst du dich selbst, und du weißt jetzt, daß es nur sehr wenig gibt, was du nicht tun kannst. Die Hand der ersten Inkarnation hat deine Schulter losgelassen, und er beobachtet dich mit einem sanften Lächeln.~ */
  IF ~~ THEN REPLY #64927 /* ~"Das war immer mein Name? Aber wenn ich..."~ */ DO ~SetGlobal("Know_Nameless_Name","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64926 /* ~Die erste Inkarnation legt einen Finger auf seine Lippen, und du verstummst. Er nickt in Richtung des Symbols auf deinem Arm, als ob er dir sagen möchte, du sollst es verwenden.~ */
  IF ~~ THEN REPLY #64929 /* ~Untersuche deinen Arm.~ */ DO ~GiveItemCreate("SymTorm",Protagonist,0,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64928 /* ~Das Symbol - das Symbol von Torment - sieht irgendwie spröde aus, als ob es nur noch gerade so eben an deiner Haut haftet. Unbewußt streckst du deine Hand aus und ziehst dir das Symbol vom Arm.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 12.0
  SAY #64931 /* ~Als du deine Frage halb gestellt hast, bemerkst du eine tonnenschwere Stille in deinem Geist. Du kannst die Anwesenheit der ersten Inkarnation nicht mehr fühlen.~ */
  IF ~~ THEN REPLY #64935 /* ~Nimm das Symbol von Torment.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #64938 /* ~Es gibt mit leichtem Widerstand nach, so als wenn man Schorf abzieht. Als du das Symbol in der Hand hältst, weißt du, daß du seine Macht nutzen kannst. Es beherrscht dich nicht länger. ~ */
  IF ~~ THEN REPLY #64939 /* ~"Ich trage das Symbol nicht länger. Heißt das...?"~ */ GOTO 11
END
