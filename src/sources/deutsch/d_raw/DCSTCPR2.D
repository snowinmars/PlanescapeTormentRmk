// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10124 /* ~Du siehst eine alternde Frau, die billig gekleidet ist. Sie scheint sich alle Mühe gegeben zu haben, jünger und attraktiver auszusehen, als sie in Wirklichkeit ist. Je näher du kommst, desto stärker nimmst du den Geruch von billigem Wein in der Luft wahr.~ */
  IF ~~ THEN REPLY #10125 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #10126 /* ~Ignoriere sie.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10127 /* ~Als sie sich zu dir umdreht, siehst du, daß ihr Gesicht vom vielen Alkohol ganz rot ist. "Nun, hallöööhchen. Suchst du... Anschluß?" Sie lächelt dich an und scheint dich dann zum ersten Mal richtig zu betrachten. "Ooooh, dich hat man aber übel zugerichtet. Was... was ist denn passiert?"~ */
  IF ~~ THEN REPLY #10128 /* ~"Ich hatte gehofft, dir ein paar Fragen stellen zu dürfen."~ */ GOTO 2
  IF ~~ THEN REPLY #10129 /* ~"Geht dich nichts an."~ */ GOTO 6
  IF ~~ THEN REPLY #10130 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10131 /* ~Sie schmiegt sich ganz nah an dich und legt ihre Hände auf deine Brust. "Du... brauchst keine Fragen zu stellen. Gib mir deinen Klimper... und ich zeig dir meine Kunst. Meine Absteige ist gleich hier um die Ecke. Na komm schon."~ */
  IF ~~ THEN REPLY #10132 /* ~"Kein Interesse im Moment. Ich brauche ein paar Auskünfte von dir."~ */ GOTO 3
  IF ~~ THEN REPLY #10133 /* ~"Wieviel willst du?"~ */ GOTO 4
  IF ~~ THEN REPLY #10134 /* ~"Vergiß es. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10135 /* ~Sie stemmt ihre Hände in die Hüfte. "He... Mal halblang, Dussel. Und wovon soll ich leben? Du bist vielleicht etwas durcheinander, aber... seh ich aus wie jemand, der dir weise Ratschläge erteilen könnte? Die einzigen Antworten, die ich für dich parat habe, liegen hier." Sie breitet ihre Arme nach dir aus.~ */
  IF ~~ THEN REPLY #10136 /* ~"Vergiß es. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #10137 /* ~"Wieviel?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1
  SAY #10138 /* ~Sie lacht und kichert. "Na also. Das hört sich schon etwas vernünftiger an... Fünf Münzen, und ich werd vielleicht stöhnen, aber bestimmt nichts erzählen..." Sie sieht dich erwartungsvoll an.~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10140 /* ~"Laß uns gehen..."~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 5
  IF ~  PartyGoldLT(5)
~ THEN REPLY #10139 /* ~"Tut mir leid, aber ich hab' einfach das Geld nicht."~ */ EXIT
  IF ~~ THEN REPLY #10141 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10142 /* ~Sie führt dich zu ihrer Absteige. Nach einer Stunde setzt sie dich wieder auf die Straße. "Komm bald wieder, Süßer." Sie lächelt und winkt zum Abschied.~ */
  IF ~~ THEN REPLY #10143 /* ~"Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY #10144 /* ~Sie wirft dir einen finsteren Blick zu. "He, he... werd nicht frech. Wenn du nicht 'n bißchen netter bist, hab' ich auch keine Zeit für dich!" Sie dreht sich um und geht.~ */
  IF ~~ THEN REPLY #10145 /* ~Laß sie in Ruhe.~ */ EXIT
END
