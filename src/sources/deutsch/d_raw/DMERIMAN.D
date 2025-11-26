// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERIMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERIMAN~

IF ~  NumTimesTalkedTo(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49920 /* ~Der Mann wirkt wie ein verbitterter und launischer alter Knacker. Seine Mundwinkel hängen herab und geben ihm einen mürrischen Gesichtsausdruck, der noch strenger wird, als er dich kommen sieht. "Ich mag zwar Frohmann heißen, aber froh bin ich nicht! Fort mit dir, junger Hüpfer! Keine Zeit für solche wie dich!" Als er dich so lautstark wegscheucht, bekommt er einen Hustenanfall.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49921 /* ~"Warte... Dolora hat mich gebeten, mit dir zu sprechen."~ */ GOTO 2
  IF ~~ THEN REPLY #49922 /* ~"Gut... Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #49923 /* ~Frohmann wirft dir einen grimmigen und vernichtenden Blick zu. "Geh weg!" zischt er.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49924 /* ~"Warte... Dolora hat mich gebeten, mit dir zu sprechen."~ */ GOTO 2
  IF ~~ THEN REPLY #49925 /* ~"Gut... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49926 /* ~Frohmann beäugt dich kritisch. "Ach ja? *Worüber*, hä? Hmm? Nun?"~ */
  IF ~~ THEN REPLY #49927 /* ~"Sie sagt, daß du ihre erste Liebe seist und daß sie nie frei sein würde, einen anderen zu lieben, solange du die Schlüssel zu ihrem Herzen hast."~ */ GOTO 3
  IF ~~ THEN REPLY #49928 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49929 /* ~"Hat sie dir das gesagt, ja? Das überrascht mich. Vielleicht hat Meisterin Graces Obhut das bei ihr erreicht, was ich nicht erreichen konnte... nämlich *Gefühle* zu entwickeln. Jedenfalls..." Er klopft auf eine Tasche seiner Tunika. "...werd ich dir die Schlüssel *nicht* so einfach geben."~ */
  IF ~~ THEN REPLY #49930 /* ~"Warte! Sind das wirklich wortwörtlich 'die Schlüssel zu ihrem Herzen'?"~ */ GOTO 5
  IF ~~ THEN REPLY #49931 /* ~"Was willst du denn für sie haben?"~ */ GOTO 7
  IF ~~ THEN REPLY #49932 /* ~"Dann *nehm* ich sie mir vielleicht einfach..."~ */ GOTO 4
  IF ~~ THEN REPLY #49933 /* ~"Wir sprechen später über die Schlüssel. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 6.1 10.1
  SAY #49934 /* ~"Wenn du meine Schlüssel *haben* willst, junger Hüpfer, dann mußt du sie schon meinen kalten toten Fingern entreißen! Und ich bin mir nicht sicher, ob es klug ist, in der Städtischen Festhalle Streit anzufangen..."~ */
  IF ~~ THEN REPLY #49935 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #49936 /* ~"Schon gut. Also, das sind wirklich wortwörtlich 'die Schlüssel zu ihrem Herzen'?"~ */ GOTO 5
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49937 /* ~"Schon gut. Was wolltest du doch gleich für die Schlüssel haben, Frohmann?"~ */ GOTO 7
  IF ~~ THEN REPLY #49938 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.1
  SAY #49939 /* ~Er nickt. "Das sind sie. Dolora ist ein Konstrukt. Hast du das nicht gewußt? Eine Kreatur, die aus Zauberei und Uhrwerkmechanik besteht, das ist sie. Und eines meiner besten Werke." Frohmann seufzt. "Aber kalt, ohne Gefühl oder Charakter. Ich hab sie ins Bordell gebracht und so 'eingestellt', daß sie es nicht verlassen konnte, in der Hoffnung, daß der ständige Kontakt mit so vielen anderen zu einer Entwicklung ihrer eigenen Persönlichkeit führt. Die Schlüssel sind das Werkzeug, um sie 'einzustellen'. Ich nehme an, daß sie die Schlüssel haben will, weil sie spürt, daß sie jetzt ihre Persönlichkeitsentwicklung hemmen."~ */
  IF ~~ THEN REPLY #49940 /* ~"Warum gibst du sie ihr dann nicht einfach zurück?"~ */ GOTO 6
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49941 /* ~"Was willst du für die Schlüssel haben?"~ */ GOTO 7
  IF ~~ THEN REPLY #49942 /* ~"Vielleicht *nehm* ich mir die Schlüssel einfach..."~ */ GOTO 4
  IF ~~ THEN REPLY #49943 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49944 /* ~Frohmann macht ein verdrießliches Gesicht. "Weil ich zu einem grausamen und verbitterten alten Mann geworden bin, der erkennt, daß sich bei dir dafür etwas holen läßt."~ */
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49945 /* ~"Dann mal raus mit der Sprache.. Was willst du haben?"~ */ GOTO 7
  IF ~~ THEN REPLY #49946 /* ~"Nicht, wenn ich mir die Schlüssel einfach nehme, Frohmann..."~ */ GOTO 4
  IF ~~ THEN REPLY #49947 /* ~"Wir sprechen später darüber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.2 5.1 6.0
  SAY #49948 /* ~"Ich will... Ich will vergessen. Ich habe jetzt fast hundertfünfzig Jahre gelebt, und ich hab jeden Sinnesstein in dieser großen Halle gesehen, an dem mir etwas gelegen hat... Ich hab nicht mehr lange zu leben, und ich bin zu schwach, um nach ganz neuen Erfahrungen zu suchen... Deshalb muß ich einen Weg finden, um sie alle zu vergessen. Auf diese Weise, kann ich in meinen letzten Tagen wieder neu anfangen..."~ */
  IF ~~ THEN REPLY #49949 /* ~"Also... soll ich dir einfach eins überbraten, oder was?"~ */ JOURNAL #49952 /* ~Frohmann wollte, daß ich ihm helfe, seine Erinnerungen loszuwerden, bevor er mir die Schlüssel zu Doloras Herzen geben würde. Ich denke, ich werde etwas finden müssen, das dies in einer Person bewirken würde, und es ihm dann bringen... Frohmann selbst hat die Wasser des Flusses Styx als eine Möglichkeit vorgeschlagen.~ */ GOTO 8
  IF ~~ THEN REPLY #49950 /* ~"Wie kann ich helfen?"~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ JOURNAL #49952 /* ~Frohmann wollte, daß ich ihm helfe, seine Erinnerungen loszuwerden, bevor er mir die Schlüssel zu Doloras Herzen geben würde. Ich denke, ich werde etwas finden müssen, das dies in einer Person bewirken würde, und es ihm dann bringen... Frohmann selbst hat die Wasser des Flusses Styx als eine Möglichkeit vorgeschlagen.~ */ GOTO 9
  IF ~~ THEN REPLY #49951 /* ~"Ich denk drüber nach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49953 /* ~"Nein, du blutrünstiger Tölpel!"~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #49954 /* ~"Ich bräuchte was... irgendwas, irgendein Gebrau... das mich vergessen läßt. Einen Schluck aus dem Fluß Styx oder so was in der Art."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49955 /* ~"Hier, nimm diesen Becher... Er enthält einen Dunklen Vogel von Okanthus, ein Stück Eis aus dem Fluß Styx. Das dürfte deine Erinnerungen auslöschen..."~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49956 /* ~"Gut. Ich komm wieder, wenn ich was gefunden hab... Leb wohl."~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ EXIT
END

IF ~  Global("Merriman","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #49957 /* ~Frohmann blinzelt dich an. "Und? Hast du was, das diese verfluchten Erinnerungen aus meinem Gedächtnis auslöscht? Ich hoffe doch, daß du nicht mit leeren Händen zurückgekommen bist... So bekommst du die Schlüssel zu Doloras Herzen nie."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49958 /* ~"Hier, nimm diesen Becher... Er enthält einen Dunklen Vogel von Okanthus, ein Stück Eis aus dem Fluß Styx. Das dürfte deine Erinnerungen auslöschen..."~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49959 /* ~"Vielleicht nehm ich mir die Schlüssel einfach, Frohmann..."~ */ GOTO 4
  IF ~~ THEN REPLY #49960 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #49961 /* ~Frohmann nimmt den Becher und holt ein Stück Papier aus seiner Tasche hervor. Er kippt den Becher und nimmt das Eis in den Mund... Es schmilzt sofort und bewirkt bei ihm einen etwas erschrockenen Gesichtsausdruck...~ */
  IF ~  HasItem("DlraKey",Myself)
~ THEN REPLY #49962 /* ~"Frohmann...?"~ */ DO ~GiveItem("DlraKey",Protagonist)
AddexperienceParty(12000)
~ JOURNAL #66580 /* ~Ich habe Frohmann ein Stück gefrorenes Styx-Eis - einen Dunklen Vogel von Okanthus - gebracht. Nachdem er dieses verzehrt hat, hat er all seine Erinnerungen verloren. Er hat es so gewollt, obwohl ich nicht sagen kann, daß ich den Typen beneide.~ */ GOTO 12
  IF ~  !HasItem("DlraKey",Myself)
~ THEN REPLY #49963 /* ~"Frohmann...?"~ */ DO ~AddexperienceParty(12000)
~ JOURNAL #66580 /* ~Ich habe Frohmann ein Stück gefrorenes Styx-Eis - einen Dunklen Vogel von Okanthus - gebracht. Nachdem er dieses verzehrt hat, hat er all seine Erinnerungen verloren. Er hat es so gewollt, obwohl ich nicht sagen kann, daß ich den Typen beneide.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49964 /* ~Verwirrt sieht Frohmann zuerst dich und dann das Stück Papier in seinen Händen an. Er liest vor: "Herzlichen Glückwunsch, Frohmann! Du hast neu angefangen. Danke dem Mann, der vor dir steht, und gib ihm den Schlüssel in deiner Tasche. Splitter, der Mann an der Tür zu diesem Gebäude, erteilt dir weitere Auskünfte." Er sieht dich wieder an. "Nun... es scheint so, als ob ich Euch Dank schulde, werter Herr. Hier... Nehmt diesen Schlüssel. Ich suche jetzt am besten diesen 'Splitter' auf und finde heraus, was los ist!"~ */
  IF ~~ THEN REPLY #49965 /* ~"Danke, Frohmann. Viel Glück."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #49966 /* ~Verwirrt sieht Frohmann zuerst dich und dann das Stück Papier in seinen Händen an. Er liest vor: "Herzlichen Glückwunsch, Frohmann! Du hast neu angefangen. Danke dem Mann, der vor dir steht, und gib ihm den Schlüssel in deiner Tasche. Splitter, der Mann an der Tür zu diesem Gebäude, erteilt dir weitere Auskünfte." Er sieht dich wieder an. "Nun... es scheint, als schulde ich Euch Dank, werter Herr. Hmm... Ich hab aber anscheinend keinen Schlüssel bei mir. Vielleicht hat ihn mir jemand weggenommen. Tut mir wirklich leid! Nun, ich suche jetzt am besten diesen Splitter auf und finde heraus, was los ist!"~ */
  IF ~~ THEN REPLY #49967 /* ~"Viel Glück, Frohmann. Leb wohl."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END
