// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEBB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DEBB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",0)
Global("Current_Area","GLOBAL",402)
~ THEN BEGIN 0 // from:
  SAY #3011 /* ~Du siehst einen leicht gebeugten alten Mann mit einem grauen Vollbart und einer Löwenmähne von grauem Haar. Er trägt einen Schulterschutz als Rüstung und behält einen Helm in seiner Nähe. Er raucht eine Pfeife und trägt einen Tabakbeutel an seinem Gürtel. Er sieht ganz schön stark aus, aber er ist ein wenig plump und scheint auch leichte Atemprobleme zu haben. "Na, *du* bist ja 'n Anblick, Jungchen! Hab noch nie einen dermaßen mit Narben gepflasterten Kerl gesehen - das sieht ja aus, als ob du'n Narbenmantel trägst! Wo bist'n gewesen - haste in nem Mähdrescher rumgehangen?!" Er lacht. "Oh, ich mach nur Spaß, Jungchen, ich mein's nicht böse, und ich hoffe, du verstehst mich nicht falsch. Ich bin Ebb." Er streckt seine Hand aus.~ */
  IF ~~ THEN REPLY #3012 /* ~"Sei gegrüßt, Ebb."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11001 /* ~Weigere dich, ihm die Hand zu schütteln.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11002 /* ~Er drückt dir fest die Hand. "Oh, ich entschuldige mich für meine unverschämten, ungerechten Worte. Ich hoffe, du nimmst mir das nicht übel. Kann ich dir vielleicht was zu trinken spendieren, um die Sache zu bereinigen?"~ */
  IF ~~ THEN REPLY #11003 /* ~"Warum nicht?"~ */ GOTO 3
  IF ~~ THEN REPLY #11004 /* ~"Nein."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #11005 /* ~Er zieht seine Hand zurück. "Na schön, na schön. Ich entschuldige mich für meine unverschämten, ungerechten Worte. Ich hoffe, du nimmst sie mir nicht allzu übel. Kann ich dir vielleicht was zu trinken spendieren, um die Sache zu bereinigen?"~ */
  IF ~~ THEN REPLY #11006 /* ~"Warum nicht?"~ */ GOTO 3
  IF ~~ THEN REPLY #11007 /* ~"Nein."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #11008 /* ~"Gut so, Kumpel! Warte." Er steht auf und geht zum Tresen. Kurz darauf kommt er mit zwei gefüllten Krügen zurück. "Für dich, Kumpel. Trink!" Er selbst nimmt einen großen Schluck, zieht an seiner Pfeife und sagt: "Was kann der alte Ebb an diesem schönen Tag in Sigil für dich tun?"~ */
  IF ~~ THEN REPLY #11009 /* ~"Ich hätte da ein paar Fragen zu diesem Ort."~ */ GOTO 5
  IF ~~ THEN REPLY #11010 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #11011 /* ~"Na schön, na schön." Er zieht an seiner Pfeife, wartet kurz und sagt: "Na, was kann der alte Ebb an diesem schönen Tag in Sigil für dich tun?"~ */
  IF ~~ THEN REPLY #11012 /* ~"Ich hätte da ein paar Fragen zu diesem Ort."~ */ GOTO 5
  IF ~~ THEN REPLY #11013 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #11014 /* ~"Oh, so siehst du auch aus. Ich meine, man sieht dir an, daß du nicht aus der Gegend kommst, Kumpel... du siehst ein bißchen zu anders aus für einen echten Einheimischen!" Ebb kichert und nimmt noch einen Schluck. "Nun, was kann ich für dich tun, Junge? Soll ich dir etwas über die Gegend erzählen?" Ebb zwinkert dir zu.~ */
  IF ~~ THEN REPLY #11015 /* ~"Wer bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #11016 /* ~"Was machst du da?"~ */ GOTO 18
  IF ~~ THEN REPLY #11017 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 19
  IF ~~ THEN REPLY #11018 /* ~"Ja. Erzähl mir, wie diese Stadt und ihre Umgebung funktioniert."~ */ GOTO 33
  IF ~~ THEN REPLY #11019 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 25.2
  SAY #11020 /* ~"Ebb Knarrknie, Dritter Rang des Harmoniums, mittlerweile im Ruhestand. Als Schlepper arbeite ich nur noch mit meiner Stimme, da ich nicht mehr so gut zu Fuß bin wie vor zwanzig, dreißig Jahren!" Er kichert. "Nun, Kumpel? Wer bist du, und in welchen Schwierigkeiten steckst du?"~ */
  IF ~~ THEN REPLY #11021 /* ~"Dritter Rang des Harmoniums?"~ */ GOTO 7
  IF ~~ THEN REPLY #11022 /* ~"Was ist ein Schlepper?"~ */ GOTO 13
  IF ~~ THEN REPLY #11023 /* ~"Was bringt dich zu dem Glauben, daß ich in Schwierigkeiten stecke?"~ */ GOTO 17
  IF ~~ THEN REPLY #11024 /* ~"Vergiß es. Gehab dich wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #11025 /* ~Mit ernster Miene und stolzgeschwellter Brust sagt Ebb: "Jawohl. Dritter Rang des Harmoniums..." Seine Anspannung läßt etwas nach. "Habe jedoch seit vielen Jahrzehnten keinen Dienst mehr geleistet. Den Federkiel zu schwingen, war nicht ganz mein Ding nach den ganzen Kämpfen und Schlachten, die ich durchgemacht habe. Deshalb beschränke ich mich darauf zu beobachten, was im Stock passiert und helfe, wo ich kann. Und du siehst aus, als könntest du Hilfe gebrauchen... steckst du in Schwierigkeiten, Kumpel?"~ */
  IF ~~ THEN REPLY #11026 /* ~"In was für Kämpfen und Schlachten warst du denn?"~ */ GOTO 8
  IF ~~ THEN REPLY #11027 /* ~"Ein paar Schwierigkeiten."~ */ GOTO 11
  IF ~~ THEN REPLY #11028 /* ~"Ein paar Schwierigkeiten: Ich bin in der Leichenhalle erwacht und scheine vergessen zu haben, wer ich bin."~ */ GOTO 12
  IF ~~ THEN REPLY #11029 /* ~"Geht dich wirklich nichts an. Ich hätte noch ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11030 /* ~"Keine, die dich was angehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11031 /* ~Ebb rollt mit den Augen. "Es waren so viele, daß ich mich gar nicht an alle erinnern kann! Na ja... *beinahe* jedenfalls. Ich habe allzu lange im Blutkrieg, diesem stümperhaft geführten Krieg der Lügen auf Terras, und viel zu lange im Krieg der Schwarzen Jahrhunderte gedient..." Ebb beginnt, die Kriege lautlos an seinen Fingern abzuzählen. "...ach ja, dann waren da noch der  Drei-Ebenen-Krieg und viele andere. Sogar am Befreiungskrieg des Harmoniums habe ich teilgenommen. Außerdem war ich in der Stadtwache von Sigil... viele meinen, dies sei der gefährlichste Auftrag von allen!" Er lacht lauthals. Der Gedanke an den Blutkrieg bohrt sich wie in eiskalter Dolch in dein Herz.~ */
  IF ~~ THEN REPLY #11032 /* ~"Erzähl mir mehr über den Blutkrieg."~ */ GOTO 9
  IF ~~ THEN REPLY #11033 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11034 /* ~"Danke, Ebb. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11035 /* ~Ohne deine Reaktion zu bemerken, seufzt Ebb. "Ja... der Blutkrieg. Die gefährlichste Familienfehde, die sich je auf dieser Seite des Urschleims abgespielt hat. Ein Haufen bösartiger Scheusale auf der einen Seite, ein Haufen kriegshetzerischer Scheusale auf der anderen. Die Schöpfung selbst hat diesen Krieg entfacht, und seitdem hacken sie aufeinander ein."~ */
  IF ~~ THEN REPLY #11036 /* ~"Zwei Parteien von Scheusalen, die sich bekriegen, was?"~ */ GOTO 10
  IF ~~ THEN REPLY #11037 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11038 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #11039 /* ~"Ja, genau. Die Tanar-Ri, diese brutalen Mörder, die nur an sich selbst denken, und die Kriegsmaschinerie der Baatezu, die für Recht und Ordnung unter ihren teuflischen Gesetzen kämpfen. Das ganze Durcheinander greift von Zeit zu Zeit auf die anderen Ebenen über und vermiest das Leben im gesamten Multiversum."~ */
  IF ~~ THEN REPLY #11040 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11041 /* ~"Ich verstehe. Leb wohl, Ebb."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 17.1
  SAY #11042 /* ~"Na, ich hoffe, es ist nichts allzu Ernstes... aber ob und wann du darüber reden willst, solltest du selbst entscheiden. Ich möchte dich nicht unter Druck setzen... dann hättest du nämlich echte Schwierigkeiten am Hals."~ */
  IF ~~ THEN REPLY #11043 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11044 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2 17.2
  SAY #11045 /* ~"Wie?" Ebb blinzelt, dann runzelt er die Stirn. "Was hast du gerade gesagt, Kumpel? Du bist in der Leichenhalle aufgewacht..." Ebb mustert dich. "Haben sie dich vielleicht mit all deinen Narben für einen Toten gehalten?" Ebb kichert. "Wär mir genauso gegangen..." Er zieht an seiner Pfeife. "Diese Staubies..." Er verbessert sich. "Ich meine, diese *Staubmenschen*... seien wir diesen Bleichgesichtern gegenüber nicht allzu unhöflich... haben manchmal wirklich die Wahrnehmungsfähigkeit und Freundlichkeit eines Grabsteins, was? Ich kann mir gut vorstellen, daß sie da was vermasselt haben."~ */
  IF ~~ THEN REPLY #11046 /* ~"Das hab' ich auch gehört. Ich hätte noch ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11047 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11048 /* ~"Nun, gut daß du mich das fragst, denn damit beweist du, daß du grün hinter den Ohren bist. Einem Planlosen wie dir hätte auf den Straßen Sigils nichts Besseres passieren können, als einem Schlepper wie mir zu begegnen. Ich bin genau der Mann, den du brauchst." Er trinkt einen Schluck. "Ein Schlepper ist ein freundlicher Stadtführer, der mit dir umherzieht und dir zeigt, wo du was findest... ein Führer - ja, das ist eine gute Bezeichnung. Allerdings verlasse ich diesen Stuhl aufgrund meines hohen Alters so gut wie nie, aber ich erkläre dir gerne, wo du die Orte findest, die du während deines Aufenthalts in unserer schönen Stadt besuchen möchtest. Und das Ganze völlig umsonst."~ */
  IF ~~ THEN REPLY #11049 /* ~"Warum ist das umsonst?"~ */ GOTO 14
  IF ~~ THEN REPLY #11050 /* ~"Wie alt bist du denn?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #11051 /* ~"Ein Schlepper, der sich nicht vom Fleck bewegen kann, kann keinen allzu hohen Preis verlangen. Bei den Mächten - es wäre ungerecht, Geld für ein paar Worte zu verlangen!"~ */
  IF ~~ THEN REPLY #11052 /* ~"Wie alt bist du denn?"~ */ GOTO 15
  IF ~~ THEN REPLY #11053 /* ~"Dann hätte ich noch ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11054 /* ~"Stimmt schon. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #11055 /* ~"Alt genug, um es besser zu wissen, mein Junge, und zu alt, um durch die Gegend zu laufen!" Er zieht an seiner Pfeife. "Meine besten Jahre sind eben vorbei. Nur der Wunsch, mit reinem Gewissen zu sterben, läßt dieses Herz noch schlagen."~ */
  IF ~~ THEN REPLY #11056 /* ~"Reines Gewissen?"~ */ GOTO 16
  IF ~~ THEN REPLY #11057 /* ~"Aha, verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11058 /* ~"Aha, verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #11059 /* ~"Nun, Kumpel, ich möchte dir jetzt nicht die Stimmung verderben, aber ich hoffe, daß eines Tages ein heiliger Mann in die Schwelende Leiche kommt und mir die Beichte für meine persönlichen Sünden abnimmt, damit ich diese Ebene reinen Gewissens verlassen kann."~ */
  IF ~~ THEN REPLY #11060 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11061 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.2
  SAY #11062 /* ~"Kein Mensch hat so viele Narben wie du, ohne daß er irgendwie in Schwierigkeiten steckt, ob er selbst dran schuld ist oder nicht!" Ebb setzt einen vorwurfsvollen Blick auf. "Glaubst du etwa, der alte Ebb ist blind?! Ha! Ich bin zwar nicht mehr der Jüngste, aber meine Sinne sind noch scharf! Wer ist hinter dir her, daß du dir solche Sorgen machst? Vielleicht kann ich dir ja helfen, oder?"
~ */
  IF ~~ THEN REPLY #11063 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11064 /* ~"Ein paar Probleme. Nichts weiter."~ */ GOTO 11
  IF ~~ THEN REPLY #11065 /* ~"Ein paar Schwierigkeiten: Ich bin in der Leichenhalle erwacht und scheine vergessen zu haben, wer ich bin."~ */ GOTO 12
  IF ~~ THEN REPLY #11066 /* ~"Wahrscheinlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.1
  SAY #11067 /* ~"'Was? Ich? Komische Frage, Kumpel. Was glaubst du denn, was ich tue... ich vertreib mir die Zeit in dieser netten Umgebung, schlürfe mein Bier, labe mich am Genuß meines Pfeifentabaks und genieße die anregende Gesellschaft. Was wünscht man sich mehr im Leben! Was?" Ebb klopft dir auf die Schulter und lacht.~ */
  IF ~~ THEN REPLY #11068 /* ~"Ja, ja, genau. Ich hätte noch ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11069 /* ~"Sicher. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2 25.3
  SAY #11070 /* ~"Du bist in der Bar zur Schwelenden Leiche, Kumpel. Es gibt bessere Kneipen, aber diese hier hat ihren eigenen, schlichten Charme."~ */
  IF ~~ THEN REPLY #11071 /* ~"Erzähl mir über die Gäste hier."~ */ GOTO 20
  IF ~~ THEN REPLY #11072 /* ~"Wer ist die schwelende Leiche dahinten?"~ */ GOTO 21
  IF ~~ THEN REPLY #11073 /* ~"Was kannst du mir hier zum Trinken empfehlen?"~ */ GOTO 22
  IF ~~ THEN REPLY #11074 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11075 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 22.0
  SAY #11076 /* ~"Nun, da wären noch O, der von sich behauptet, keine Person, sondern ein Buchstabe zu sein; ein paar Gnadentöter, die auf einen Verbrecher warten; zwei Abishai auf Fronturlaub vom Blutkrieg; der Githzerai da drüben, der dich aus der Ferne beobachtet - nichts Ungewöhnliches für neugierige Schleifer wie diese; und Alais, ein planloser Jungspund, dessen Hosen ein bißchen zu eng sind, wenn du verstehst, was ich meine. Wenn du Auskünfte über die Ebenen brauchst, sprich am besten mit Candrian Griesgram - der kennt sich aus."~ */
  IF ~~ THEN REPLY #11077 /* ~"Wer ist die schwelende Leiche dahinten?"~ */ GOTO 21
  IF ~~ THEN REPLY #11078 /* ~"Was kannst du mir hier zum Trinken empfehlen?"
~ */ GOTO 22
  IF ~~ THEN REPLY #11079 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11080 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 22.1
  SAY #11081 /* ~"Ach die! Oh, nein, Kumpel, das ist keine Leiche - kein Totenbüchler. Soweit wir wissen, lebt der alte Ignus auf seinem Grill noch." Ebb rümpft die Nase. "Er riecht manchmal ganz schön übel. Ich hab' immer meine Pfeife parat, damit sein Gestank mir nicht in die Nase steigt." Er kichert.~ */
  IF ~~ THEN REPLY #11082 /* ~"Wie ist er dorthin gelangt?"~ */ GOTO 23
  IF ~~ THEN REPLY #11083 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 19.2 20.1
  SAY #11084 /* ~"Viele sagen, ich würde alles trinken, was nach Alkohol schmeckt. Aber es gibt sehr wohl Gebräu, das ich mag, und solches, das ich nicht mag. Hier bestelle ich am liebsten arboreanische Feuersamen... man steckt sie in den Mund, läßt etwas Luft dran und mischt sie mit Speichel und Alkohol - ein feuriges Geschmackserlebnis. Fühlt sich so an, als atme man Feuer ein."~ */
  IF ~~ THEN REPLY #11085 /* ~"Erzähl mir was über die anderen Gäste hier."~ */ GOTO 20
  IF ~~ THEN REPLY #11086 /* ~"Wer ist diese schwelende Leiche da?"~ */ GOTO 21
  IF ~~ THEN REPLY #11087 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11088 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #11089 /* ~Ebb zieht an seiner Pfeife, als überlegte er noch, wie er den nächsten Satz formulieren soll. "Nun, mein Junge, der gute Ignus hatte nicht wenige Probleme am Hals und ein paar teuflische Zaubertricks auf Lager - eine gefährliche Mischung, wenn du verstehst, was ich meine. Er..." Ebb zieht an seiner Pfeife und läßt Rauchwölkchen nach oben steigen. "...er spielte gern mit dem Feuer. Er begann, Häuser und sogar Menschen anzustecken und ziemlich viel Unheil zu stiften."~ */
  IF ~~ THEN REPLY #11090 /* ~"Und?"~ */ GOTO 24
  IF ~~ THEN REPLY #11091 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11092 /* ~"Tja, das ist Pech. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11093 /* ~"Nun, das meiste davon hat sich im Stock abgespielt, und ich gebe offen zu, daß der Stock im Harmonium nicht gerade dafür bekannt ist, daß dort Recht und Ordnung herrscht... " Ebb blickt etwas verschämt drein. "Es sieht so aus, als hätten wir versagt, denn scheinbar wird unsere Anwesenheit hier besonders dringend gebraucht. Also haben sich die Zauberkundigen entschlossen, ein bißchen Selbstjustiz auszuüben... ein paar Kaffeesatzleser, Heckenzauberer und Hexen haben sich also versammelt und einen Zauber ausgesprochen, der sprichwörtlich für Gerechtigkeit sorgte." Ebb zeigt mit der Pfeife auf Ignus. "Und jetzt brennt er hier vor sich hin - aber er lebt noch, was sie sicher nicht einkalkuliert hatten."~ */
  IF ~~ THEN REPLY #11094 /* ~"Hmm. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11095 /* ~"Interessant. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 7.3 8.1 9.1 10.0 11.0 12.0 14.1 15.1 16.0 17.0 18.0 19.3 20.2 21.1 22.2 23.1 24.0 26.3 29.1 30.0 31.0 32.1 33.0 34.0 35.3 36.3 37.3 38.1 39.2 40.1 41.3 42.2 44.1 45.1 46.2 47.0 48.0
  SAY #11096 /* ~"Ja? Was willst du wissen, Kumpel?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11097 /* ~"Kennst du jemanden mit dem Namen Pharod?"~ */ GOTO 26
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11098 /* ~"Ich vermisse ein Journal."~ */ GOTO 32
  IF ~~ THEN REPLY #11099 /* ~"Wer bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #11100 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 19
  IF ~~ THEN REPLY #11101 /* ~"Erzähl mir über Sigil und seine Umgebung."~ */ GOTO 33
  IF ~~ THEN REPLY #11102 /* ~"Welche Orte kannst du mir noch empfehlen?"~ */ GOTO 47
  IF ~~ THEN REPLY #11103 /* ~"Nichts, nehme ich an. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11104 /* ~"Pharod?" Ebb runzelt die Stirn und nimmt seine Pfeife aus dem Mund. "Was kannst du wohl von einem Dussel wie Pharod wollen?"~ */
  IF ~~ THEN REPLY #11105 /* ~"Ich glaube, ich kannte ihn früher mal."~ */ GOTO 27
  IF ~~ THEN REPLY #11106 /* ~"Ich glaube, er hat mir ein paar meiner Sachen gestohlen."
~ */ GOTO 28
  IF ~~ THEN REPLY #11107 /* ~"Das braucht dich nicht zu interessieren. Was weißt du über ihn?"~ */ GOTO 29
  IF ~~ THEN REPLY #11108 /* ~"Nichts. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11109 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11110 /* ~"Oh je, das macht deine Lage nicht besser. Vielleicht ist es besser für dich, daß du bestimmte Dinge vergißt." Ebb zieht kräftig an seiner Pfeife.~ */
  IF ~~ THEN REPLY #11111 /* ~"Was weißt du über ihn?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #11112 /* ~"Oh, daran zweifle ich nicht, mein Freund," grummelt Ebb und kaut dabei an seiner Pfeife." Dieser widerliche Kerl krallt sich alles, was nicht niet- und nagelfest ist. Eigentlich müßte er dem Prädestinat angehören, raffgierig wie er ist. Wenn man ihm den kleinen Finger gibt, will er gleich die ganze Hand."~ */
  IF ~~ THEN REPLY #11113 /* ~"Was weißt du über ihn?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.0 28.0 32.0
  SAY #11114 /* ~"Ich weiß sicher nicht alles, was es über den alten Pharod zu wissen gibt, aber ich kenne ein wenig von dem Dunkel über ihn. Wenn du wirklich wirklich entschlossen bist, den Kerl zu finden und ihn dir vorzuknöpfen, dann erklär ich dir besser, mit wem du es zu tun hast." Er hält kurz inne und stopft seine Pfeife. "Pharod hat sein Quartier vor nicht allzu langer Zeit am Lumpensammler-Platz aufgeschlagen, ein paar Sammler und anderes Gesocks um sich geschart und eine Art Sammlerbund ins Leben gerufen... wie dem auch sei..."~ */
  IF ~~ THEN REPLY #11115 /* ~"Wo kann ich ihn finden?"~ */ GOTO 30
  IF ~~ THEN REPLY #11116 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11117 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11118 /* ~"Wenn du Pharod suchst, mein Freund, was nicht besonders klug von dir ist, bist du hier falsch. Sieh dich am besten auf dem Lumpensammler-Platz um, wo Pharod angeblich seine Absteige hat. Wo genau, weiß ich nicht, obwohl ich den Ring ziemlich gut kenne. Ich glaube, Pharod will nicht, daß man das Dunkel über seinen Aufenthaltsort erfährt. Wenn du Pharod unbedingt finden willst, dann geh zum Lumpensammler-Platz und versuch, Pharods Aufenthaltsort von einem der Anwohner zu erfahren. Aber sei vorsichtig! Auf dem Platz gibt es mehr als genug Leute, die dich schneller zu Blutwurst verarbeiten, als du dir vorstellen kannst."~ */
  IF ~~ THEN REPLY #11120 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11121 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #11122 /* ~NULLKNOTEN~ */
  IF ~~ THEN REPLY #11123 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11124 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY #11125 /* ~"Du vermißt ein Journal? Bestand es aus mehr als nur Seiten und Wörtern? Wenn nicht mehr dahinter steckt, kann ich mir nicht vorstellen, warum die Leute ein so großes Aufheben um ein paar Buchstaben machen? Hier macht man sich nicht viel aus Büchern und Gelehrsamkeit. Keine Ahnung, wo du so ein Journal finden könntest..." Ebb zieht an seiner Pfeife und schnalzt plötzlich mit den Fingern. "Aber wenn Pharod derjenige ist, der dich von den Straßen Sigils aufgesammelt hat, dann kennt er vielleicht auch das Dunkel darüber, wo dieses Ding steckt... wahrscheinlich hat er es in seiner Truhe versteckt. Als Toter bist du in der Regel machtlos, wenn ein Sammler über deine Leiche stolpert, und es auf deine Sachen abgesehen hat."~ */
  IF ~~ THEN REPLY #11126 /* ~"Erzähl mir was über Pharod."~ */ GOTO 29
  IF ~~ THEN REPLY #11127 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11128 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 5.3 25.4
  SAY #11129 /* ~Ebb lacht lauthals. "Du gibst wohl nicht so leicht auf, was? Wenn du wissen willst, was außerhalb der Stadt liegt, dann sprich mit Candrian Griesgram - er ist hier der Weltenbummler. Ich kann dir aber was von der Dame erzählen, oder von den Dabus, den Schlüsseln und Portalen, oder davon, wie die Zeit gemessen wird und die Stadt angelegt ist... Was willst du wissen?"~ */
  IF ~~ THEN REPLY #11130 /* ~"Also, wenn du mir noch ein paar Fragen beantworten könntest..."~ */ GOTO 25
  IF ~~ THEN REPLY #11131 /* ~"Erzähl mir was über die Dame."~ */ GOTO 35
  IF ~~ THEN REPLY #11132 /* ~"Erzähl mir was über die Dabus."~ */ GOTO 39
  IF ~~ THEN REPLY #11133 /* ~"Erzähl mir was über die Zeit in Sigil."~ */ GOTO 40
  IF ~~ THEN REPLY #11134 /* ~"Wie ist die Stadt angelegt?"~ */ GOTO 41
  IF ~~ THEN REPLY #11135 /* ~"Erzähl mir was über Schlüssel und Portale."~ */ GOTO 43
  IF ~~ THEN REPLY #11136 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2 36.2 37.2 38.0 39.1 40.0 41.2 42.1 44.0 45.0 46.1
  SAY #11137 /* ~"Was möchtest du sonst noch über den Käfig wissen?"~ */
  IF ~~ THEN REPLY #11660 /* ~"Also, wenn du mir noch ein paar Fragen beantworten könntest..."~ */ GOTO 25
  IF ~~ THEN REPLY #11661 /* ~"Erzähl mir was über die Dame."~ */ GOTO 35
  IF ~~ THEN REPLY #11662 /* ~"Erzähl mir was über die Dabus."~ */ GOTO 39
  IF ~~ THEN REPLY #11663 /* ~"Erzähl mir was über die Zeit in Sigil."~ */ GOTO 40
  IF ~~ THEN REPLY #11664 /* ~"Wie ist die Stadt angelegt?"~ */ GOTO 41
  IF ~~ THEN REPLY #11665 /* ~"Erzähl mir was über Schlüssel und Portale."~ */ GOTO 43
  IF ~~ THEN REPLY #11666 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.1 39.0
  SAY #11138 /* ~"Nun, nur wenige wissen etwas über sie, und selbst die, die mehr als nur ein wenig wissen, wissen nicht viel, Kumpel. Sie ist wahrhaftig ein Rätsel, und wenn du ihr begegnen solltest... die Mächte mögen dich davor bewahren... wirst du sehen, daß sie still und tödlich ist. Soviel ich weiß, ist sie nicht bösartig, aber sie bewahrt das Dunkel über sich und regiert mit eiserner Hand über Sigil. Niemand konnte bisher ihr Geheimnis lüften, ohne zur Strafe in die Irrgänge geschickt zu werden."~ */
  IF ~~ THEN REPLY #11139 /* ~"Erzähl weiter."~ */ GOTO 36
  IF ~~ THEN REPLY #11140 /* ~"Irrgänge? Was meinst du damit?"~ */ GOTO 38
  IF ~~ THEN REPLY #11141 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11142 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11143 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11144 /* ~"Es ist höchst unwahrscheinlich, daß du ihr begegnest - es sei denn, du stellst was Schlimmes an... verletzt viele Leute, tötest einen Dabus, stellst die Herrschaft der Dame in Frage, betest sie an... was sie überhaupt nicht mag... oder störst einen Dabus bei der Arbeit (der vielleicht die Arbeit der Dame verrichtet)... Wenn du Glück hast, hast du nur die Gnadentöter am Hals, doch wenn sie selbst kommt, stirbst du, sobald ihr Schatten auf dich fällt."~ */
  IF ~~ THEN REPLY #11145 /* ~"Was hast du damit gemeint, daß sie 'in die Irrgänge geschickt werden'?"~ */ GOTO 38
  IF ~~ THEN REPLY #11146 /* ~"Erzähl nur weiter."~ */ GOTO 37
  IF ~~ THEN REPLY #11147 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11148 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11149 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #11150 /* ~"Nun, soviel wir wissen, kann die Dame in Sigil so gut wie alles tun, Kumpel. Sie kann die Stadt vergrößern oder verkleinern, neue Tore errichten oder alte verriegeln lassen, verhindern, daß der Blutkrieg auf die Straßen übergreift oder Menschen in die Stadt strömen, und sie kann die Mächte fernhalten."~ */
  IF ~~ THEN REPLY #11151 /* ~"Was hast du damit gemeint, daß sie 'in die Irrgänge geschickt werden'?"~ */ GOTO 38
  IF ~~ THEN REPLY #11152 /* ~"Wer sind die Mächte?"~ */ GOTO 46
  IF ~~ THEN REPLY #11153 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11154 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11155 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.1 36.0 37.0 46.0
  SAY #11156 /* ~"Ja. Dorthin werden manchmal Leute geschickt, um sie unschädlich zu machen. Die Dame nimmt einfach ein Stück von Sigil, stülpt es um und macht einen Irrgang daraus. Darin landen alle, die ihr in die Quere kommen, und verfaulen." Ebb zieht an seiner Pfeife. "Sobald der Blick der Dame auf dich fällt... kannst du deinem Schicksal nicht mehr entkommen. Sie wird dich kriegen, egal wie gerissen du bist: Wenn du eine Gasse entlanggehst, durch ein Tor gehen oder links in eine Straße abbiegen willst, in der du schon viele Male warst, findest du dich plötzlich an einem Ort wieder, den du nicht kennst. Die Irrgänge sind allerdings nicht ausbruchsicher. Einen Ausgang gibt es immer... ein Portal, das die Dame irgendwo plaziert hat. Man muß nur wissen, wo es sich befindet, und wie man es benutzt."~ */
  IF ~~ THEN REPLY #11157 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11158 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11159 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.2 34.2
  SAY #11160 /* ~"Ja, diese witzigen Männchen, die durch die Gegend schweben und in Symbolen sprechen?" Ebb lacht. "Gar nicht so einfach, was? Die Dabus sind so eine Art Verwalter und Arbeiter der Dame. Sie tun alles, was die Dame ihnen befiehlt: Sie halten Sigil sauber, bessern Mauerwerk aus, reißen alte Häuser ab oder bauen neue auf, errichten Portale oder riegeln sie ab und so weiter und so fort. Wenn du sie bei der Arbeit störst oder gar einen tötest, ziehst du rasch den Zorn der Dame auf dich."~ */
  IF ~~ THEN REPLY #11161 /* ~"Erzähl mir was über die Dame."~ */ GOTO 35
  IF ~~ THEN REPLY #11162 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11163 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11164 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 33.3 34.3
  SAY #11165 /* ~"Hier in Sigil messen wir die Zeit an der Helligkeit des Himmels. Anders als in den meisten Welten gibt es hier weder Sonne noch Mond, sondern nur diesen ewigen Dunst, der in regelmäßigen Abständen heller und dunkler wird. Was die meisten Leute als Mitternacht bezeichnen, heißt bei uns Tiefstand. Mittag heißt Hochstand. Alles beruht auf Hochständen und Tiefständen. Jetzt weißt du, was gemeint ist, wenn jemand von 'fünf Stunden nach Hochstand' spricht."~ */
  IF ~~ THEN REPLY #11166 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11167 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11168 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 33.4 34.4
  SAY #11169 /* ~"Puh. Jetzt muß ich erst mal meine Kehle befeuchten." Er hebt seinen Krug und trinkt. "Die Stadt schwebt über einer unendlich hohen Säule. Sigil liegt auf der Seite wie ein ausrangiertes Wagenrad, das allerdings keine Speichen besitzt, die es mit der Säule verbinden. Sigil ist in sechs Bezirke unterteilt, von denen jeder seine eigene Funktion hat. Wir befinden uns im Stock. Ich glaube, der Stock dient allein dazu, daß die anderen Bezirke der Stadt sich von diesem Elendsviertel abheben und dadurch prächtiger erscheinen können!" Er lacht. "Die Bünde - jene philosophischen Kreise oder Banden, wenn du diesen Ausdruck bevorzugst - teilen sich die Verwaltung der Stadt untereinander auf."~ */
  IF ~~ THEN REPLY #11170 /* ~"Hast du einem der Bünde angehört?"~ */ GOTO 45
  IF ~~ THEN REPLY #11171 /* ~"Erzähl weiter."~ */ GOTO 42
  IF ~~ THEN REPLY #11172 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11173 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11174 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #11175 /* ~"Die Stadt wird auch als Kreuzung der Ebenen, Stadt der Tore oder der Käfig bezeichnet. Man sagt, sie besäße Tore zu allen anderen Orten. Alle möglichen Gestalten kommen hierher, um Handel zu treiben, um sich hier niederzulassen oder sich für die nächste Etappe ihrer Reise zu stärken. Das jedenfalls ist die Kurzfassung. Wenn du mehr wissen willst, mußt du den Ort auf eigene Faust erkunden."~ */
  IF ~~ THEN REPLY #11176 /* ~"Du sagtest etwas von Portalen?"~ */ GOTO 43
  IF ~~ THEN REPLY #11177 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11178 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11179 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 33.5 34.5 42.0
  SAY #11180 /* ~"Sigil wird auch die Stadt der Tore genannt, weil es hier an allen Ecken und Enden Portale gibt, Kumpel. Diese Portale... sind wie Tore zum Multiversum, doch sie sehen nicht aus wie Tore... jede begrenzte Fläche kann ein Portal sein, ein Fenster, eine Tür, ein Schlagloch, ein Bilderrahmen, ein Faßreifen, ein Gerüst, ein Schrank... man braucht nur den richtigen Schlüssel, um das Portal zu öffnen, und gelangt an irgendeinen anderen Ort des Multiversums. Was die Schlüssel betrifft... "~ */
  IF ~~ THEN REPLY #11181 /* ~"Red' weiter."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11182 /* ~"Ja, jedes Portal kann nur mit einem ganz bestimmten Schlüssel geöffnet werden. Während für Portale nur begrenzte Flächen in Frage kommen, gestaltet sich die Sache mit den Schlüsseln etwas schwieriger... Ein Schlüssel kann alles sein, eine Melodie, die man in der Nähe eines Portals vor sich hin summt, ein Freudentanz, den man aufführt, oder die Stimmung, in der man sich befindet, ein Stück des Reiseziels, das man in der Hand hält... und so weiter. Als ich jung war, habe ich einmal ein Mädchen davon überzeugt, daß es ein Tor nach Arkadien öffnen kann, wenn es... neben ihm einen Mann küßt. Und ich hatte recht. Wir sind oft nach Arkadien gereist. Es gibt bestimmt noch viele Portale zu entdecken. Manchmal muß man nur die Leute fragen, um den passenden Schlüssel zu bekommen. Am schwierigsten ist es, das Dunkel eines Portals zu finden. Aber ich warne dich. Jemand wie du sollte sich weder seine Zeit damit vertreiben, von Portal zu Portal zu ziehen... noch im Dunkeln durch Sigil zu wandern. Verlasse nie die geschäftigen Straßen, erkunde die Stadt nur, wenn es hell ist, und sei stets auf der Hut."~ */
  IF ~~ THEN REPLY #11183 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11184 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11185 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.0
  SAY #11186 /* ~Ebb hebt die Hand hoch, um dich zu bremsen, und lacht leise. "Immer schön der Reihe nach, Kumpel - ich bin kein ehemaliges Bundmitglied... denn es gilt: einmal Harmonium, immer Harmonium. Wir sind die Leute, die dafür sorgen, daß es in Sigil keinen Ärger gibt, daß niemand Schwierigkeiten macht, andere verletzt oder zuviel Lärm verursacht. Wir versuchen, Frieden zu wahren, Kumpel, und meistens gelingt uns dies."~ */
  IF ~~ THEN REPLY #11187 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11188 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11189 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.1
  SAY #11190 /* ~"Damit sind Götter gemeint, Kumpel. Und auf den Ebenen gibt es jede Menge davon." Ebb zieht an seiner Pfeife. "Sie können jedoch nicht nach Sigil kommen... die Dame schafft es irgendwie, sie fernzuhalten. Wie sie das macht, weiß keiner. Wie dem auch sei - sie hat Sigil davor bewahrt, ein Spielball fremder Interessen zu werden."~ */
  IF ~~ THEN REPLY #11191 /* ~"Was hattest du über die Irrgänge erzählt?"~ */ GOTO 38
  IF ~~ THEN REPLY #11192 /* ~"Ich hätte noch ein paar andere Fragen über Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11193 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 25
  IF ~~ THEN REPLY #11194 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 25.5
  SAY #11195 /* ~"Hm..." Ebb zieht an seiner Pfeife und mustert dich. "Dies ist vielleicht die beste Absteige, in der du landen konntest... nach deinen Tätowierungen zu urteilen, bist du verrückt nach Körperbemalungen. In diesem Fall gibt es einen Tätowierladen unweit von hier in Richtung Mittelpunkt des Rings. Meide die Gasse der gefährlichen Ecken, wenn du kannst... Ignus hat sie vor nicht allzu langer Zeit in Brand gesteckt, und zwischenzeitlich haben ein paar üble Vollblüter in dieser Flammenwüste ihre Absteige aufgeschlagen."~ */
  IF ~~ THEN REPLY #11196 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11197 /* ~"Danke. Leb wohl, Ebb."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11198 /* ~"Du hast wohl immer noch nicht genug?" Ebb lehnt sich zurück. "Schön, dich wiederzusehen, mein Freund."~ */
  IF ~~ THEN REPLY #11199 /* ~"Sei gegrüßt, Ebb. Ich hätte da ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #11200 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 50 even though they appear after this state */
~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 49 // from:
  SAY #56844 /* ~Ebb nickt dir zu. "Gute Arbeit in Verdammnis, Kumpel."~ */
  IF ~  Global("AR0902_Visited","GLOBAL",1)
~ THEN REPLY #56845 /* ~"Danke, Ebb. Ohne deine Hilfe hätte ich das nicht geschafft. Leb wohl."~ */ EXIT
  IF ~  Global("AR0902_Visited","GLOBAL",0)
~ THEN REPLY #56846 /* ~"Danke, Ebb. War aber ziemlich heftig. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  NearbyDialog("DMorte")
Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #56847 /* ~Ebb nickt dir zu. "Gute Arbeit in Verdammnis, Kumpel."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 597
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #56848 /* ~Ebb nickt dir zu. "Gute Arbeit da drüben, Kumpel." Er wendet sich wieder seinem Glas zu.~ */
  IF ~~ THEN REPLY #56850 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #56849 /* ~Ebb zwinkert dir zu, als du wieder hereinkommst, und wendet sich dann wieder seinem Glas zu.~ */
  IF ~~ THEN REPLY #56851 /* ~"Ich freue mich auch, dich wiederzusehen."~ */ EXIT
END

IF WEIGHT #4 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 53 // from:
  SAY #56852 /* ~Du erblickst einen etwas buckligen alten Mann mit einem langen grauen Bart und einer grauen Löwenmähne. Er trägt ein paar Schulterplatten als Rüstung und hält einen Helm in der Hand. Er raucht eine Pfeife und hat einen Tabaksbeutel um die Hüfte gebunden. Er sieht ziemlich stark, aber auch ein wenig füllig aus, und scheint außerdem Atemprobleme zu haben. Er ist wohl der Anführer der hier versammelten Gruppe. "Sei gegrüßt, Schleifer, und vielleicht erklärst du uns auch besser, was du hier verloren hast."~ */
  IF ~~ THEN REPLY #56853 /* ~"Ich wollte gerade herausfinden, was da drin ist."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #56854 /* ~"Was machst *du* hier drinnen?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56855 /* ~"In dieser Stadt greift das Chaos um sich, und ich suche nach Verbündeten, um es auszumerzen."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56856 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #56857 /* ~"Ich wollte gerade gehen..."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 63
END

IF WEIGHT #5 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 54 // from:
  SAY #56858 /* ~Du erblickst Ebb Knarrknie. Ein Rauchkringel umgibt sein Lächeln, als er sagt, "So führt uns das Chaos wieder zusammen, Reisender. Was führt dich hierher?"~ */
  IF ~~ THEN REPLY #56859 /* ~"Ich wollte gerade herausfinden, was da drin ist."~ */ GOTO 59
  IF ~~ THEN REPLY #56860 /* ~"Was machst *du* hier drinnen?"~ */ GOTO 60
  IF ~~ THEN REPLY #56861 /* ~"In dieser Stadt greift das Chaos um sich, und ich suche nach Verbündeten, um es auszumerzen."~ */ GOTO 61
  IF ~~ THEN REPLY #56862 /* ~"Ich wollte gerade gehen..."~ */ GOTO 63
END

IF WEIGHT #6 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 55 // from:
  SAY #56863 /* ~Du erblickst einen etwas buckligen alten Mann mit einem langen grauen Bart und einer grauen Löwenmähne. Er trägt ein paar Schulterplatten als Rüstung und hält einen Helm in der Hand. Er raucht eine Pfeife und hat einen Tabaksbeutel um die Hüfte gebunden. Er sieht ziemlich stark, aber auch ein wenig füllig aus, und scheint außerdem Atemprobleme zu haben. Er ist wohl der Anführer der hier versammelten Gruppe. "Sei gegrüßt, Kamerad. Wir treffen uns im Zeichen der Anarchie."~ */
  IF ~~ THEN REPLY #56864 /* ~"Was machen die hier drinnen?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56865 /* ~"In dieser Stadt greift das Chaos um sich, und ich suche nach Verbündeten, um es auszumerzen."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56866 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
END

IF WEIGHT #7 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 56 // from:
  SAY #56867 /* ~"Sei gegrüßt!" Ebb lacht. "Wir treffen uns wieder, im Zeichen der Anarchie!"~ */
  IF ~~ THEN REPLY #56868 /* ~"Was führt *dich* hierher? Und warum redest du von Anarchie?"~ */ GOTO 60
  IF ~~ THEN REPLY #56869 /* ~"Ich brauche Hilfe, Ebb."~ */ GOTO 61
END

IF WEIGHT #8 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 57 // from:
  SAY #56870 /* ~Du erblickst einen etwas buckligen alten Mann mit einem langen grauen Bart und einer grauen Löwenmähne. Er trägt ein paar Schulterplatten als Rüstung und hält einen Helm in der Hand. Er raucht eine Pfeife und hat einen Tabaksbeutel um die Hüfte gebunden. Er sieht ziemlich stark, aber auch ein wenig füllig aus, und scheint außerdem Atemprobleme zu haben. Er ist wohl der Anführer der hier versammelten Gruppe. Er winkt dich zu sich.~ */
  IF ~~ THEN REPLY #56871 /* ~Geh auf ihn zu.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #56872 /* ~Folge seiner Aufforderung nicht.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 69
END

IF WEIGHT #9 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #56873 /* ~Ebb zwinkert dir zu und winkt dich heran. "Schleifer, du bist einen weiten und harten Weg gekommen, aber ich werde es dir etwas einfacher machen. Bist du dabei?"~ */
  IF ~~ THEN REPLY #56874 /* ~"Was machst du hier unter den Anarchisten, Ebb? Ich dachte, du wärst beim Harmonium."~ */ GOTO 76
  IF ~~ THEN REPLY #56875 /* ~"Erzähl mir davon."~ */ GOTO 72
  IF ~~ THEN REPLY #56876 /* ~"Nein. Verzieh dich."~ */ GOTO 75
END

IF ~~ THEN BEGIN 59 // from: 53.0 54.0 63.0
  SAY #56877 /* ~Er verbeugt sich so tief, wie es seine Wampe zuläßt. "Wie du siehst... ein Warenhaus voller Verschwörer und Intriganten. Jetzt, wo die alte Ordnung hier zerfällt, denken wir, es ist das beste, wenn ihre Überreste entsorgt werden und die Menschen sich an eine neue Freiheit gewöhnen. Wir sind eine gefährliche Bande, weißt du."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #56878 /* ~"Die Leute werden aber nicht besonders viel Freiheit haben, wenn sie von den Monstern getötet werden, die die Stadt überrennen."~ */ GOTO 64
  IF ~~ THEN REPLY #56879 /* ~"Seid ihr sicher, daß jetzt die beste Zeit dafür ist?"~ */ GOTO 67
  IF ~~ THEN REPLY #56880 /* ~"Nicht so gefährlich wie ich. Ich werd's euch zeigen." Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #56881 /* ~"In dieser Stadt wird es kein Chaos mehr geben."~ */ GOTO 68
END

IF ~~ THEN BEGIN 60 // from: 53.1 54.1 55.0 56.0
  SAY #56882 /* ~"Nun, wir verschwören uns und intrigieren, mein Freund. Jetzt, wo das alte System zusammenbricht, sind wir in der... einmaligen... Lage, dafür zu sorgen, daß unseren Ansichten Gehör geschenkt wird. Und ich bin der Anführer dieser kleinen Gruppe von Abenteurern - natürlich nur, weil einer das Kommando übernehmen muß!"~ */
  IF ~~ THEN REPLY #56884 /* ~"Was genau heckt ihr aus?"~ */ GOTO 66
  IF ~~ THEN REPLY #56885 /* ~"Was meinst du?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 53.2 54.2 55.1 56.1
  SAY #56886 /* ~"Du suchst Verbündete gegen das Chaos? Doch wir versuchen, das Chaos zu steigern, die alte Ordnung zu stürzen, sicherzustellen, daß das alte System nicht wieder aufkommt. Das ist schließlich unsere Aufgabe..."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #56887 /* ~"Das ist ungefähr, was wir auch machen. Aber wir unterstützen die Zerstörung nicht um ihrer selbst willen. Wir zerstören, damit Andere wieder aufbauen können. Wenn das so weitergeht, ist von Verdammnis bald nichts mehr übrig."~ */ GOTO 64
  IF ~~ THEN REPLY #56888 /* ~"Warum wollt ihr das Chaos noch verstärken? Die Stadt ist bereits in Carzeri, und jetzt werden die Bürger verschlungen."~ */ GOTO 66
  IF ~~ THEN REPLY #56889 /* ~"Dann ist es meine Aufgabe, euch aufzuhalten. Mach dich auf den Tod gefaßt."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 53.3 55.2 60.1
  SAY #56890 /* ~"Mein Freund, ich bin Ebb Knarrknie, ehemals dritter Rang des Harmoniums und momentaner Anführer dieser Zelle der Revolutionsliga. Ich bin hier, um sie auf Vordermann zu bringen, und die Stadt darauf vorzubereiten, das alte System abzulegen."~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #56891 /* ~"Die alte Ordnung ist so ziemlich abgeschafft."~ */ GOTO 64
  IF ~~ THEN REPLY #56893 /* ~"Ihr seid Anarchisten? Dann muß ich euch aufhalten."~ */ GOTO 69
  IF ~~ THEN REPLY #56896 /* ~"Und was habt ihr mit der Stadt vor?"~ */ GOTO 66
  IF ~~ THEN REPLY #56897 /* ~"In diesem Fall gehe ich einfach."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 53.4 54.3 62.3
  SAY #56898 /* ~"Gehen? Aber, mein Freund, das kannst du nicht. Weißt du, wir können dir nicht erlauben, zu gehen, jetzt wo du unsere Gesichter gesehen hast."~ */
  IF ~~ THEN REPLY #56899 /* ~"Was meinst du?"~ */ GOTO 59
  IF ~~ THEN REPLY #56900 /* ~"Ich möchte mal sehen, wie ihr versucht, mich aufzuhalten."~ */ GOTO 69
END

IF ~~ THEN BEGIN 64 // from: 59.0 61.0 62.0 66.0 68.0 69.0 70.0
  SAY #56901 /* ~Seine selbstbeherrschte Fassade bröckelt einen Augenblick. "Was meinst du damit?"~ */
  IF ~~ THEN REPLY #56902 /* ~"Ich meine, daß während ihr den Sturz der Stadtregierung ausgeheckt habt, das Böse über Verdammnis gekommen ist und zerstört, was von der Stadt noch übrig ist."~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 67.0
  SAY #56903 /* ~"Aber... wir müssen etwas tun! Unsere ganze Arbeit war umsonst, wenn sie alle tot sind!" Er wendet sich seinen Kameraden zu. "Wir müssen gehen, oder unsere ganze Arbeit war umsonst! Kommt!" Er rennt zur Türe.~ */
  IF ~~ THEN REPLY #61567 /* ~"Viel Glück..."~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 60.0 61.1 62.2
  SAY #56905 /* ~"Wenn die Menschen sehen, daß ihre Anführer versagt haben, dann stehen die Chancen nicht schlecht, daß sie die Machtstrukturen zerstören, die sie unterdrückt haben, und etwas Neues, Schönes erschaffen. Wir werden ihnen dabei helfen."~ */
  IF ~~ THEN REPLY #56906 /* ~"Oh, dann helft ihr mir also beim Kampf gegen die Scheusale?"~ */ GOTO 64
  IF ~~ THEN REPLY #56907 /* ~"Wie wollt ihr denn daraus etwas Schönes erschaffen?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 67 // from: 59.1
  SAY #56908 /* ~"Was meinst du genau damit?"~ */
  IF ~~ THEN REPLY #56909 /* ~"Ich meine, daß während ihr den Sturz der Stadtregierung ausgeheckt habt, das Böse über Verdammnis gekommen ist und zerstört, was von der Stadt noch übrig ist."~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
  IF ~~ THEN REPLY #56910 /* ~"Der Zeitpunkt scheint mir nicht besonders geeignet."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 59.3 67.1
  SAY #56911 /* ~"Freund, das Chaos ist die erlösende Kraft für diese Stadt. Jetzt, wo sie nach Carzeri abgeglitten ist, ist es eindeutig, daß das es einer der unerschütterlichsten Glauben dieser Stadt ist."~ */
  IF ~~ THEN REPLY #56912 /* ~"Ja, und das Böse scheint ein Teil davon zu sein. Wir müssen die Stadt hier rausschaffen, bevor wir alle tot sind."~ */ GOTO 64
  IF ~~ THEN REPLY #56913 /* ~"Dann unterstützt ihr also, was hier passiert?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 69 // from: 57.1 62.1 63.1 71.0 71.1
  SAY #56914 /* ~"Freund, ich tu das nur sehr ungern... aber ich muß es tun. Wir müssen sicherstellen, daß die Stadt nicht die Korruption der letzten Regierung übernimmt." Er winkt seinen Mitverschwörern zu. "Ergreift sie."~ */
  IF ~~ THEN REPLY #56915 /* ~"Warum tut ihr das? Seht ihr nicht, daß die Stadt zerfällt? Und ich meine das nicht auf eine Art, die Anarchisten gefallen würde."~ */ GOTO 64
  IF ~~ THEN REPLY #56916 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 66.1
  SAY #56917 /* ~Er seufzt ungeduldig. "Die Sache ist die: Wenn die Korruption ausgemerzt ist, wie man das Faule aus einem Apfel schneidet, kann aus der Zerstörung etwas Neues erwachsen. Betrachte es als Waldbrand in der Stadtverwaltung. Heh heh."~ */
  IF ~~ THEN REPLY #56918 /* ~"Der Waldbrand breitet sich ganz schön aus."~ */ GOTO 64
  IF ~~ THEN REPLY #56919 /* ~"Dann heißt ihr das gut, was hier passiert?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 68.1 70.1
  SAY #56920 /* ~"Zweifelsohne, mein Freund. Zweifelsohne."~ */
  IF ~~ THEN REPLY #56921 /* ~"Dann haben wir uns nichts mehr zu sagen. Leb wohl."~ */ GOTO 69
  IF ~~ THEN REPLY #56922 /* ~"Dann muß ich dich umbringen, um Verdammnis wieder an seinen natürlichen Ort zurückzubefördern."~ */ GOTO 69
END

IF ~~ THEN BEGIN 72 // from: 57.0 58.1
  SAY #56923 /* ~Er beugt sich vor und flüstert in dein Ohr. "Ich weiß, was du für die Revolutionsliga bedeutest. Ich weiß auch, daß du den Spieß gegen die Anarchisten gedreht hast. Ich habe sie für das Harmonium infiltriert und verrate sie nun von innen. Wir müssen diese Stadt zurück in die Außenländer befördern. Bist du dabei?"~ */
  IF ~~ THEN REPLY #56924 /* ~"Ja."~ */ GOTO 73
  IF ~~ THEN REPLY #56925 /* ~"Ich bin doch nicht verrückt!"~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0 76.0
  SAY #56926 /* ~"Dann folge mir. Wir wollen mal sehen, ob wir diese anarchistischen Schweine nicht austricksen können, was? Sag mir, daß die Stadt von Scheusalen überrannt wird, aber sag es so laut, daß sie es hören können."~ */
  IF ~~ THEN REPLY #56928 /* ~"Also gut." Du sprichst lauter. "Die Stadt wird von Scheusalen überrannt, während ihr hier rumsitzt und überlegt, wie ihr das Leben für die Leute in der Stadt verbessern könnt. Wenn ihr wirklich ihre Herzen gewinnen wollt, dann wäre es angebracht, ihnen zu zeigen, daß sie euch nicht egal sind. Geht und rettet sie."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56929 /* ~Ebb blinzelt dir zu und ändert seine Stellung ein wenig, so daß die anderen Anarchisten sein Gesicht sehen können. "Aber... wir müssen etwas tun! Unsere ganze Arbeit wird vergebens gewesen sein, wenn sie alle tot sind!" Er wendet sich seinen Brüdern zu. "Wir müssen gehen, sonst wird unsere ganze Arbeit vergebens gewesen sein! Kommt!" Er stürzt zur Tür.~ */
  IF ~~ THEN REPLY #56930 /* ~"Viel Glück..."~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 58.2 72.1 76.1
  SAY #56931 /* ~"Dann habe ich keine Wahl. Wenn du nicht Teil der Lösung bist, dann bist du Teil des Problems." Er wendet sich seinen Leuten zu. "Er wird uns verraten, sobald sich ihm die Gelegenheit dazu bietet. Ergreift ihn."~ */
  IF ~~ THEN REPLY #56932 /* ~Kämpfe.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 58.0
  SAY #56933 /* ~Er lehnt sich noch weiter herüber, der Gestank aus seiner rauchenden Pfeife überwältigt dich. Er flüstert: "Ich arbeite verdeckt. Dreifachagent. Harmonium-Agent, der die Anarchisten infiltriert und vorgibt, ein Harmonium-Doppelagent zu sein. Man muß noch verschlagener denken als diese Dussel, um reinzukommen... Und ich bin immer noch nicht sicher, ob man meine Tarnung entdeckt hat oder nicht. Also... Wirst du mir helfen, dir zu helfen?"~ */
  IF ~~ THEN REPLY #56934 /* ~"Was muß ich tun?"~ */ GOTO 73
  IF ~~ THEN REPLY #56935 /* ~"Das kann ich nicht tun."~ */ GOTO 75
END
