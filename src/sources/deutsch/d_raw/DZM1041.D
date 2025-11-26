// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1041.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1041~

IF ~  Global("Bei","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6573 /* ~Diese wiederbelebte männliche Leiche trägt die Nummer "1041" auf der Stirn. Trotz ihrer fahlen, ausgetrockneten Haut ist es offensichtlich, daß seine Gesichtzüge einmal einen 'exotischen' Einschlag hatten. Die Lippen des Zombies wurden zugenäht - höchstwahrscheinlich um zu verhindern, daß er unentwegt jammert und stöhnt - und er riecht stark nach Formaldehyd .~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6576 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6577 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6578 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Bei","GLOBAL",0)
~ THEN REPLY #6579 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Bei","GLOBAL",1)
~ THEN REPLY #6580 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 37
  IF ~~ THEN REPLY #6581 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #9095 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6574 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #6582 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6575 /* ~Die Leiche schwankt einen Moment lang, während der Geist seine frühere Heimstatt besucht. Ihre mandelförmigen Augen verdunkeln sich ein weiteres Mal, und über die blasse Haut legt sich ein leichter, bronzefarbener Schleier. Sie richtet sich auf und wischt den Staub von ihrer Kleidung.

Als er endlich den Rufer wahrnimmt, starrt der Geist dich einen Moment lang neugierig an und verbeugt sich dann leicht.~ */
  IF ~~ THEN REPLY #6583 /* ~Verbeug dich auch.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #9096 /* ~"Ich hätte ein paar Fragen..."~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #9097 /* ~Verlaß den Geist.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9060 /* ~Der Geist lächelt einen Moment zufrieden. Er sammelt sich, steht mit einer Hand hinter dem Rücken da und beginnt mit leiser Stimme zu reden:

"Suiang jianne shyr nan bye yih nan;
"Dong feng wu lih bay hua tsarn;
"Chuen tsarn daw syy sy fang jinn;
"Lah Jiuh cherng huei ley shyy gan."

Nachdem er diese Worte gesagt hat, wartet er zufrieden und geduldig auf deine Antwort.~ */
  IF ~~ THEN REPLY #9098 /* ~"Ich... ähh."~ */ GOTO 5
  IF ~~ THEN REPLY #9099 /* ~"Ich habe keine Ahnung, was du sagst... kannst du verstehen, was ich sage?"~ */ GOTO 5
  IF ~~ THEN REPLY #9100 /* ~"Ich kann dich nicht verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #9061 /* ~Du öffnest deinen Mund, um eine Frage zu formulieren, aber bevor du ansetzen kannst, beginnt der Geist mit leiser Stimme zu reden:

"Suiang jianne shyr nan bye yih nan;
"Dong feng wu lih bay hua tsarn;
"Chuen tsarn daw syy sy fang jinn;
"Lah Jiuh cherng huei ley shyy gan."

Nachdem er diese Worte gesagt hat, wartet er zufrieden und geduldig auf deine Antwort.~ */
  IF ~~ THEN REPLY #9101 /* ~"Ich... ähh."~ */ GOTO 5
  IF ~~ THEN REPLY #9102 /* ~"Ich habe keine Ahnung, was du sagst... kannst du verstehen, was ich sage?"~ */ GOTO 5
  IF ~~ THEN REPLY #9103 /* ~"Ich kann dich nicht verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #9062 /* ~Der Geist hält einen Moment inne und scheint nachzudenken. Dann setzt er wieder mit starkem Akzent, aber dennoch wohl formuliert, seine Ausführungen fort.

"Ihr müßt mir verzeihen, ehrenwerter Herr. Aber es ist schon eine ganze Weile her, daß ich in Eurer Sprache habe reden müssen. Zweifellos ist mein Geist hierher befohlen worden, um Eure Fragen zu beantworten; was ist es, das Ihr von mir wissen möchtet?"~ */
  IF ~~ THEN REPLY #9104 /* ~"Wer bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #9105 /* ~"Wo kommst du her?"
~ */ GOTO 7
  IF ~~ THEN REPLY #9106 /* ~"Wie bist du denn hier gelandet? Als Zombie, meine ich?"~ */ GOTO 8
  IF ~~ THEN REPLY #9107 /* ~"Wo bist du... wo wohnt dein Geist... jetzt?"~ */ GOTO 11
  IF ~~ THEN REPLY #9108 /* ~"Was weißt du über diesen Ort?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9109 /* ~"Kennst du jemanden mit dem Namen Pharod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9110 /* ~"Ach nichts, ist schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 14.0
  SAY #9063 /* ~"Wer ich bin, ist eine schwierige Frage... nicht jedoch, wer ich *war*. Man kannte mich unter dem Namen Zhuang Bei, Lehrer und Leibwächter von Liu Xixi, der Tochter des Zensors Chi'an.
~ */
  IF ~~ THEN REPLY #9111 /* ~"Lehrer *und* Leibwächter?"~ */ GOTO 12
  IF ~~ THEN REPLY #9112 /* ~"Hmm. Hört sich beeindruckend an."~ */ GOTO 13
  IF ~~ THEN REPLY #9113 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9114 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 14.1
  SAY #9064 /* ~"Ich kam aus einem Ort namens Shou Lung... einem Ort, den ich einst als Mittelpunkt des Universums betrachtet habe." Diese Vorstellung scheint ihn leicht zu amüsieren. "So viele Orte, so viele Welten. Ich hielt mich für einen wirklich gebildeten Mann, doch wußte ich so wenig, als ich starb..."~ */
  IF ~~ THEN REPLY #9115 /* ~"Und wie kamst du von diesem Ort 'Shou Lung' hierher?"
~ */ GOTO 16
  IF ~~ THEN REPLY #9116 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9117 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2 14.2
  SAY #9065 /* ~"Ich wurde von einem der Männer ermordet, mit denen zusammen ich in diese Welt gefallen bin. Ich hatte ihn in dieser Stadt schon seit vielen, vielen Wochen gejagt - in dieser Zeit hatte ich übrigens ihre Sprache gelernt - aber er hat mich zuerst aufgespürt. Er war ein bezahlter Mörder und hat mich im Schlaf umgebracht."~ */
  IF ~~ THEN REPLY #9118 /* ~"In diese Welt gefallen?"~ */ GOTO 16
  IF ~~ THEN REPLY #9119 /* ~"Du hast Mörder gejagt?"~ */ GOTO 16
  IF ~~ THEN REPLY #9120 /* ~"Ich verstehe, aber weißt du denn, wieso deine Hülle hier arbeiten soll?"~ */ GOTO 17
  IF ~~ THEN REPLY #9121 /* ~"Du sprichst sehr gut für jemanden, der nur so kurze Zeit gehabt hat, um die Sprache zu lernen."~ */ GOTO 18
  IF ~~ THEN REPLY #9122 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9123 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4 14.4
  SAY #9066 /* ~"Über dieses Gebäude? Überhaupt nichts; ich hatte davon gehört, wußte, daß meine Leiche hier zu Diensten sein würde, aber das ist schon alles."
"Über 'Sigil', diese großartige Stadt, weiß ich fast ebenso wenig. Die Wochen, die ich hier verbrachte, waren ausgefüllt mit der Suche nach den Männern, mit denen zusammen ich in dieser Welt gelandet bin sowie mit dem Erlernen der Sprache. Es schmerzte mich, daß ich für andere Dinge wenig Zeit hatte. Von den zahllosen Wundern eines solchen Ortes hätte ich so vieles lernen können..."
~ */
  IF ~~ THEN REPLY #9124 /* ~"Dein Körper sollte nach dem Tode hier dienen? Wie denn das?"~ */ GOTO 17
  IF ~~ THEN REPLY #9125 /* ~"In diese Welt gefallen?"~ */ GOTO 16
  IF ~~ THEN REPLY #9126 /* ~"Du sprichst sehr gut für jemanden, der nur so kurze Zeit gehabt hat, um die Sprache zu lernen."~ */ GOTO 18
  IF ~~ THEN REPLY #9127 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9128 /* ~"Also schön. Wer weiß, vielleicht sprechen wir uns später noch einmal."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.5 14.5
  SAY #9067 /* ~"Nein, der Name sagt mir nichts. Es tut mir leid, daß ich Euch in dieser Sache nicht helfen kann."~ */
  IF ~~ THEN REPLY #9129 /* ~"Versteh schon. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9130 /* ~"Also schön. Wer weiß, vielleicht sprechen wir uns später noch einmal."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 14.3
  SAY #9068 /* ~Der Geist sieht einen Moment lang schmerzerfüllt aus.
"Ich... Mein Geist residiert im Reich des ruhmreichen Magistrats Yen-Wang-Yeh: dem Urteilspalast."
~ */
  IF ~~ THEN REPLY #9131 /* ~"Ist etwas nicht in Ordnung? Ist es solch ein schlechter Ort?"~ */ GOTO 15
  IF ~~ THEN REPLY #9132 /* ~"Versteh schon. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9133 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 16.1
  SAY #9069 /* ~"Ja; dort, wo ich herkomme, ist das nichts Ungewöhnliches. Es war meine Pflicht, ständig an Miss Lius Seite zu sein, und zwar nicht nur, um sie vor Gefahren zu schützen, sondern auch, um sie auszubilden. Ich hatte mir sowohl als Lehrer wie auch als Schwertkämpfer einen gewissen Namen gemacht. Ich hätte ihr sicher besser dienen können, wenn ich ein besserer Schwertkämpfer gewesen wäre..."~ */
  IF ~~ THEN REPLY #9134 /* ~"Ihr besser gedient haben? Hast du sie irgendwie enttäuscht?"~ */ GOTO 16
  IF ~~ THEN REPLY #9135 /* ~"Vielleicht. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9136 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #9070 /* ~"Beeindruckend? Ja, vielleicht könnte man es in meinem Fall so ausdrücken. Ich... ich habe Miss Liu und dem Zensor gegenüber meine Pflicht nicht erfüllt."~ */
  IF ~~ THEN REPLY #9137 /* ~"Wie das?"~ */ GOTO 16
  IF ~~ THEN REPLY #9138 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9139 /* ~"Ich verstehe. Wer weiß, vielleicht sprechen wir uns später noch einmal."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
  SAY #9071 /* ~Der Geist nickt - eine überraschend würdevolle Geste für eine runzelige Leiche. "Bitte, fragt, was immer Ihr wollt."~ */
  IF ~~ THEN REPLY #9140 /* ~"Wer bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #9141 /* ~"Wo kommst du her?"~ */ GOTO 7
  IF ~~ THEN REPLY #9142 /* ~"Wie bist du denn hier gelandet? Als Zombie, meine ich?"~ */ GOTO 8
  IF ~~ THEN REPLY #9143 /* ~"Wo bist du... wo wohnt dein Geist... jetzt?"~ */ GOTO 11
  IF ~~ THEN REPLY #9144 /* ~"Was weißt du über diesen Ort?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9145 /* ~"Kennst du jemanden mit dem Namen Pharod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9146 /* ~"Was hast du vorhin gesagt, als du erschienen bist?"~ */ GOTO 26
  IF ~~ THEN REPLY #9147 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #9072 /* ~"Nun ja, seht..." Der Geist hält einen Augenblick inne, um nachzudenken und reibt die welken Hände der Leiche aneinander. "Als ich ankam, sollte ich nach einer kurzen Wartezeit zu meinem letzten, *wahren* Bestimmungsort geleitet werden. Allerdings kam es, als ich durch den Palast geführt wurde, zu einigen Verzögerungen und ich wurde in einen Nebenraum geführt mit dem Versprechen, daß man sich sofort um mich kümmern würde."~ */
  IF ~~ THEN REPLY #9148 /* ~"Und...?"~ */ GOTO 19
  IF ~~ THEN REPLY #9149 /* ~"Was meinst du mit 'letztem Bestimmungsort'? Wo solltest du denn hingeschickt werden?"~ */ GOTO 20
  IF ~~ THEN REPLY #9150 /* ~"Halt mal... Ich hätte da noch ein paar Fragen, bevor du weitererzählst."~ */ GOTO 14
  IF ~~ THEN REPLY #9151 /* ~"Vielleicht könntest du mir den Rest ein andermal erzählen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.0 8.0 8.1 9.1 12.0 13.0
  SAY #9073 /* ~"Ich will ihnen die ganze Geschichte erzählen. Als Lehrer und Leibwächter von Liu Xixi bin ich natürlich sowohl mit ihrer Ausbildung als auch mit ihrem Schutz beauftragt. Eines Abends standen wir auf einem Balkon oberhalb des Gerichtshofes und ich erklärte ihr die verschiedenen Sternbilder.~ */
  IF ~~ THEN REPLY #9152 /* ~"Bitte, erzähl weiter."~ */ GOTO 21
  IF ~~ THEN REPLY #9153 /* ~"Lehrer *und* Leibwächter?"~ */ GOTO 12
  IF ~~ THEN REPLY #9154 /* ~"Vielleicht könntest du mir den Rest ein andermal erzählen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.2 9.0
  SAY #9074 /* ~"Ach das. Einmal bin ich nachts von einer jungen Frau auf der Straße angesprochen worden; sie gehörte zu einer Gruppe, die sich die Staubmenschen nannte; es sind dieselben, die auch diesen Komplex beaufsichtigen."
"Sie hat mir in Aussicht gestellt, daß meine Leiche für eine geringe Summe nach meinem Ableben.. hier... Verwendung finden könne."
~ */
  IF ~~ THEN REPLY #9155 /* ~"Und das schien dir nicht irgendwie merkwürdig?"~ */ GOTO 22
  IF ~~ THEN REPLY #9156 /* ~"Ich verstehe. Ich hätte da noch eine andere Frage, wenn du erlaubst..."~ */ GOTO 14
  IF ~~ THEN REPLY #9157 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.3 9.2
  SAY #9075 /* ~"Linguistik ist in der Tat ein Fach, das mich außerordentlich interessiert. Als ich Lehrer wurde, habe ich festgestellt, daß ich neue Sprachen ganz ohne Mühe erlernen konnte."~ */
  IF ~~ THEN REPLY #9158 /* ~"Das würde einiges erklären. Nun zu einer anderen Frage..."
~ */ GOTO 14
  IF ~~ THEN REPLY #9159 /* ~"Versteh schon. Danke, daß du mit mir gesprochen hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 20.0
  SAY #9076 /* ~"Nun ja, seht... es ist nie wieder jemand zu mir gekommen. Ich habe tagelang geduldig gewartet, aber es war umsonst. Schließlich habe ich den Raum verlassen und bin im Palast umhergegangen, in der Hoffnung, daß ich jemanden finden würde, der mich führt..." Er seufzt leise und sein Atem riecht leicht nach Balsamierungsöl. "Hier gibt es 9.001 Räume; kaum hatte ich einen davon passiert, war ich schon in einem anderen. Es sieht so aus, als sei ich vorerst hier gefangen."
~ */
  IF ~~ THEN REPLY #9160 /* ~"Ich verstehe. Ich hätte da aber noch eine andere Frage..."~ */ GOTO 14
  IF ~~ THEN REPLY #9161 /* ~"Kann ich vielleicht irgendwie helfen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #9162 /* ~"Armer Irrer... Ich frage mich, wie lange sie dich noch umherwandern lassen werden!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9163 /* ~"Ich wünsche dir viel Glück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #9077 /* ~"Das kann ich nicht sagen. Es ist alles so frustrierend!" Er hält einen Augenblick inne, um sich wieder zu fassen; die steifen Gelenke und Sehnen der Leiche knacken, als sie sich entspannen.~ */
  IF ~~ THEN REPLY #9164 /* ~"Bitte, erzähl deine Geschichte weiter."~ */ GOTO 19
  IF ~~ THEN REPLY #9165 /* ~"Kann ich mir vorstellen... Ich hätte noch eine andere Frage..."~ */ GOTO 14
  IF ~~ THEN REPLY #9166 /* ~"Vielleicht könntest du mir den Rest ein andermal erzählen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.0
  SAY #9078 /* ~"Natürlich. Als wir dort oben standen, sprangen plötzlich zwei Angreifer vom Dach auf den Balkon, um Miss Liu zu ermorden oder zu entführen. Ich rief nach der Wache und eilte ihr mit gezückter Klinge zu Hilfe. Im darauf folgenden Kampf zerbrach das Balkongeländer und wir vier fielen in das Jade-Portal."~ */
  IF ~~ THEN REPLY #9167 /* ~"Das was? Jade-Portal?"~ */ GOTO 23
  IF ~~ THEN REPLY #9168 /* ~"Halt mal... Ich hätte da noch ein paar Fragen, bevor du weitererzählst."~ */ GOTO 14
  IF ~~ THEN REPLY #9169 /* ~"Vielleicht könntest du mir den Rest ein andermal erzählen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.0
  SAY #9079 /* ~"Vielleicht kommt das einem zunächst etwas... makaber vor. Aber nachdem ich längere Zeit mit ihr gesprochen hatte, merkte ich, daß sie - die Staubmenschen - über den Tod ganz ähnlich dachten wie ich. Mein Körper? Ein Vehikel, mehr nicht. Ich glaube, daß ihr 'Wahrer Tod' jene höhere Daseinsform ist, die ich immer zu erreichen bestrebt war... völlige Loslösung und Befreiung von der materiellen Welt. Sollte mein Körper, nachdem er seine Aufgabe als meine sterbliche Hülle erfüllt hat, einem bescheidenen Zwecke hier dienen, dann soll es mir recht sein." Der Geist lächelt dich höflich an.~ */
  IF ~~ THEN REPLY #9170 /* ~"Hört sich logisch an. Nun zu einer anderen Frage..."~ */ GOTO 14
  IF ~~ THEN REPLY #9171 /* ~"Interessant. Aber ich sollte mich jetzt lieber auf den Weg machen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #9080 /* ~"Oh! Verzeiht die Annahme meinerseits... das Jade-Portal ist ein rundes Becken, das sich in der Mitte des Hofs befindet. Es ist mit Kacheln aus grünem und weißen Speckstein ausgekleidet und wird Portal genannt, weil sich in seinem schimmerndem Wasser das Bild eines anderen Ortes abzeichnet."~ */
  IF ~~ THEN REPLY #9172 /* ~"Ich verstehe. Bitte, erzähl deine Geschichte weiter."~ */ GOTO 27
  IF ~~ THEN REPLY #9173 /* ~"Bevor du weitererzählst, hätte ich noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9174 /* ~"Das ist alles, was ich im Moment wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1
  SAY #9081 /* ~"Euer Angebot ist zu freundlich. Allerdings fürchte ich, daß Ihr nichts tun könnt... ich bin sicher, daß ich mich bald auf den Weg machen muß. Trotzdem vielen Dank."~ */
  IF ~~ THEN REPLY #9175 /* ~"Natürlich. Aber sag mal, ich hätte da noch eine andere Frage..."~ */ GOTO 14
  IF ~~ THEN REPLY #9176 /* ~"Keine Sorge. Aber ich gehe jetzt besser. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.2 33.1 35.1
  SAY #9082 /* ~Der Geist starrt dich kalt an; tief in seinen toten Augen siehst du ein Funkeln. Anscheinend hast du ihn beleidigt .~ */
  IF ~~ THEN REPLY #9177 /* ~"Ich bitte um Entschuldigung. Dürfte ich dann noch etwas anderes fragen?"
~ */ GOTO 14
  IF ~~ THEN REPLY #9178 /* ~Geh einfach, und laß den Geist dort schweben.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.6
  SAY #9083 /* ~"Oh, das... äh... das war ein Gedicht. Schwer zu übersetzen. Habt Ihr vielleicht noch eine Frage?" Er lächelt dich gezwungen an.~ */
  IF ~~ THEN REPLY #9179 /* ~"Ja ja... hab' ich."~ */ GOTO 14
  IF ~~ THEN REPLY #9180 /* ~"Nein... aber ich denke, ich würde gerne mehr über dieses Gedicht wissen."~ */ GOTO 28
  IF ~~ THEN REPLY #9181 /* ~"Nein. Wenn du's genau wissen willst: Ich denke, ich gehe jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #9084 /* ~"Wie ich schon sagte, sind wir in das Jade-Portal gefallen. Ich hätte mir niemals träumen lassen, daß es *tatsächlich* ein Portal im ursprünglichen Sinn des Wortes war! Ich habe mich in einer unbekannten Gasse wiedergefunden, mein Bein war gebrochen. Als ich mich umschaute, sah ich die Mörder davonlaufen, von denen einer Liu Xixi auf der Schulter trug."~ */
  IF ~~ THEN REPLY #9182 /* ~"Wirklich merkwürdig. Bitte erzähl weiter."~ */ GOTO 31
  IF ~~ THEN REPLY #9183 /* ~"Oh. Bevor du weitermachst, hätte ich noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9184 /* ~"Ich verstehe. Vielen Dank, aber ich muß jetzt gehen."
~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #9085 /* ~"Also gut." Er denkt einen Moment nach und tippt die Spitzen seiner langen, knochigen Finger aneinander. Danach beginnt er wieder, in einem langsamen, stetigen Rhythmus zu reden:

"Es ist so schwierig, einander zu finden wie voneinander zu scheiden.
"Der Nordwind ist abgeflaut, hunderte von Blumen welken dahin.
"Wenn die Raupen sterben, wird die Seide nie wieder erstehen.
"Wenn das Kerzenwachs zu Asche verbrennt, werden alle Tränen versiegen."

Er lächelt dich höflich an.~ */
  IF ~~ THEN REPLY #9185 /* ~"Ah... Ich hätte noch eine andere Frage."~ */ GOTO 14
  IF ~~ THEN REPLY #9186 /* ~"Interessant. Was bedeutet das?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #9187 /* ~"Du willst mir also sagen, daß ich deinen Geist hätte in Ruhe lassen sollen? Habe ich dich beleidigt, indem ich dich gerufen habe?"~ */ GOTO 30
  IF ~~ THEN REPLY #9188 /* ~"Oh. Ich danke dir für deine Erklärung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #9086 /* ~"Nun, ich muß zu meiner Beschämung zugeben, daß ich versucht habe anzudeuten, daß Ihr besser die Geister der Toten in Ruhe laßt. Ich habe nicht länger das Verlangen, an dieser Welt..." Mit einer ausholenden Bewegung deutet er auf alles um ihn herum. "...teil zu haben."~ */
  IF ~~ THEN REPLY #9189 /* ~"Hmm. Ich verstehe. Da war noch was, was ich dich fragen wollte."~ */ GOTO 14
  IF ~~ THEN REPLY #9190 /* ~"Versteh schon. Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY #9087 /* ~"Äh.. nun ja... nein. Ich wollte nicht so direkt sein und eine Konfrontation vermeiden, verstehst du. Es ist nur so, daß ich nicht länger das Verlangen habe, an dieser Welt..." Mit einer ausholenden Bewegung deutet er auf alles um ihn herum. "...teil zu haben."~ */
  IF ~~ THEN REPLY #9191 /* ~"Hmm. Ich verstehe. Da war noch was, was ich dich fragen wollte..."~ */ GOTO 14
  IF ~~ THEN REPLY #9192 /* ~"Versteh schon. Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #9088 /* ~"Nun, das ist eigentlich schon alles. Ich bin unter Schmerzen mit dem gebrochenen Bein umhergehumpelt, bis ich jemanden gefunden habe, der es heilen konnte. Dafür hat er mir das bißchen Geld abgenommen, das ich dabei hatte. Von diesem Heiler und anderen habe ich dann die Sprache der Leute hier gelernt; die ganze Zeit aber habe ich diesen Ort nach den Mördern und meiner Schutzbefohlenen abgesucht."~ */
  IF ~~ THEN REPLY #9193 /* ~"Du hast sie demnach nie gefunden?"~ */ GOTO 32
  IF ~~ THEN REPLY #9194 /* ~"Hmm. Weißt du, es ist schon merkwürdig, daß du so schnell die Sprache erlernen konntest..."~ */ GOTO 38
  IF ~~ THEN REPLY #9195 /* ~"Oh. Bevor du weitermachst, hätte ich noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9196 /* ~"Ich glaube, den Rest mußt du mir ein andermal erzählen. Lebwohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #9089 /* ~"Einen von ihnen habe ich erwischt, aber er wollte nicht reden. Ich habe ihn exekutiert und seinen Kopf in einem seidenen Sack aufbewahrt, um ihn dem Zensor zeigen zu können, wenn ich ihm seine Tochter zurückbringe." Er legt seine Stirn in Falten und spricht weiter. "Der andere Mörder ist... mir entwischt. Es ist ihm sogar noch mehr gelungen; er hat mich erwischt, bevor ich ihn töten und meine Schutzbefohlene retten konnte. Traurig, aber damit habe ich abgeschlossen."~ */
  IF ~~ THEN REPLY #9197 /* ~"Hättest du gewußt, wie du in dein Land zurückkehren könntest, wenn du diese... 'Xi-xi' gerettet hättest?"~ */ GOTO 33
  IF ~~ THEN REPLY #9198 /* ~"Interessante Geschichte. Ich hätte da aber noch einige Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #9199 /* ~"Faszinierend. Aber ich sollte dich jetzt lieber alleine lassen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #9090 /* ~"Nein, aber ich bin sicher, daß ich einen Weg gefunden hätte. Aber es ist müßig, jetzt darüber zu spekulieren."~ */
  IF ~~ THEN REPLY #9200 /* ~"Ich frage mich, ob sie noch immer in der Stadt sind. Vielleicht könnte ich dieses Mädchen finden und ihr helfen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_2","GLOBALGood",1)
~ GOTO 34
  IF ~~ THEN REPLY #9201 /* ~"Es scheint dir sicher sehr einfach, dich nicht um deine Pflichten zu sorgen, weil du halt tot bist. Ich weiß nicht, ob ich das so einfach machen könnte."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Bei_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9202 /* ~"Interessant. Darf ich dich noch etwas anderes fragen?"
~ */ GOTO 14
  IF ~~ THEN REPLY #9203 /* ~"Hmm. Ich muß dich jetzt verlassen. Viel Glück noch."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #9091 /* ~"Dein Angebot weist dich als Ehrenmann aus... Doch sind nicht weniger als fünfundsiebzig Jahre vergangen, seit ich erschlagen wurde. Der Mann, der mich umgebracht hat, ist schon lange tot, und Xixi höchstwahrscheinlich auch."~ */
  IF ~~ THEN REPLY #9205 /* ~"Hmm. Egal. Ich hätte noch eine andere Frage..."~ */ GOTO 14
  IF ~~ THEN REPLY #9206 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #9092 /* ~"Der Mörder hat Gesichtszüge, die den meinen gleichen, und eine Lotusblüte, die auf seine Augenbraue tätowiert ist." Als er deine Verwirrung bemerkt, sagt er: "Es ist eine Blumenart mit sieben Blütenblättern. Liu Xixi ist ein junges Mädchen, gerade 14 Jahre alt. Vielleicht weiß sie oder der Mörder den Weg zurück und wie er wieder aktiviert werden kann."~ */
  IF ~~ THEN REPLY #9207 /* ~"Sollte ich sie sehen, werde ich mein Bestes tun und ihr in deinem Gedenken helfen."
~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_3","GLOBALGood",1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #9208 /* ~"Schon gut. Ich habe dafür keine Zeit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Bei_2","GLOBALLaw",-1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #9209 /* ~"Also gut. Ich hätte noch eine andere Frage..."~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #9210 /* ~"Das ist alles, was ich brauche. Leb wohl."~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #9093 /* ~"Ihr seid ein gütiger und ehrenhafter Mann. Tut es nicht für mich... es sind das Mädchen und ihr Vater, denen Ihr am meisten helft."~ */
  IF ~~ THEN REPLY #9211 /* ~"Also schön. Ich hätte noch eine andere Frage..."~ */ GOTO 14
  IF ~~ THEN REPLY #9212 /* ~"Versteh schon. Leb wohl, Geist."~ */ EXIT
END

IF ~  Global("Bei","GLOBAL",1)
~ THEN BEGIN 37 // from: 0.4
  SAY #9094 /* ~"Ich habe wirklich nicht erwartet, Euch wiederzusehen." Der Geist verneigt sich höflich, aber sein Gesichtsausdruck zeigt keine Regung. "Was wollt Ihr von mir?"~ */
  IF ~~ THEN REPLY #9213 /* ~"Eine Frage..."~ */ GOTO 14
  IF ~~ THEN REPLY #9214 /* ~"Nichts, ich werde dich jetzt besser alleine lassen."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1
  SAY #9718 /* ~"Linguistik ist in der Tat ein Fach, das mich außerordentlich interessiert. Als ich Lehrer wurde, habe ich festgestellt, daß ich neue Sprachen ganz ohne Mühe erlernen konnte."~ */
  IF ~~ THEN REPLY #9719 /* ~"Das würde einiges erklären. Du hast die Mörder demnach nie gefunden?"~ */ GOTO 32
  IF ~~ THEN REPLY #9720 /* ~"Ich verstehe. Darf ich dich dann noch etwas anderes fragen?"~ */ GOTO 14
  IF ~~ THEN REPLY #9721 /* ~"Versteh schon. Danke, daß du mit mir gesprochen hast. Leb wohl."~ */ EXIT
END
