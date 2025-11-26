// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIVIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIVIAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 28 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",0)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 0 // from:
  SAY #2999 /* ~Diese große, elegante Frau mit ihren scharfen Gesichtszügen und ihrem majestätischen Gebaren ist ein bemerkenswertes Beispiel aristokratischer Schönheit. Ihre Kleider scheinen aus Silberfäden gewirkt zu sein. Um den Hals trägt sie eine Kette mit einem kleinen Fläschchen daran. Sie verbreitet einen exotischen, erotischen Duft, der dich anscheinend zu ihr hinzieht.~ */
  IF ~~ THEN REPLY #3000 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Vivian","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #38430 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #38431 /* ~Diese hochgewachsene, elegante Frau mit ihren scharfen Gesichtszügen und ihrem hoheitsvollen Auftreten ist ein bemerkenswertes Beispiel für aristokratische Schönheit. Ihre Kleidung wirkt wie aus Silberfaden gesponnen, und an ihrer Halskette hängt ein kleines Fläschchen. Sie duftet nach einem exotischen, erotischen Parfüm, das dich anzuziehen scheint. Morte schnuppert und schnüffelt daran und stöhnt leise.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #38434 /* ~Sie betrachtet dich genau und zieht dann, verächtlich, wie du meinst, eine Braue nach oben. "Sei gegrüßt. Mein Name ist Vivian. Darf ich annehmen, daß ich herbeigerufen wurde?"~ */
  IF ~~ THEN REPLY #38435 /* ~"Nein, ich hatte nur ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #38436 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.1 7.2 9.2 10.1 12.0 17.0 18.0 19.1 20.1 21.1 22.0 23.0 24.1 25.0 26.0 27.0 28.0 29.2 30.1 37.0 38.0
  SAY #39059 /* ~Sie nickt gebieterisch. "Dann schieß los."~ */
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39060 /* ~"Was machst du hier?"~ */ GOTO 4
  IF ~  GlobalGT("Scent_Quest","AR0605",0)
~ THEN REPLY #39067 /* ~"Was machst du hier?"~ */ GOTO 30
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39068 /* ~"Was ist das für ein unglaublicher Geruch?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39069 /* ~"Was ist das für ein Fläschchen, das du an deiner Kette hängen hast?"~ */ GOTO 20
  IF ~~ THEN REPLY #39070 /* ~Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39071 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 38
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67850 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 38
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39072 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ JOURNAL #66743 /* ~Ich habe eine der Prostitierten gefragt, ob sie weiß, ob Kesai-Serris nun wirklich Ravels Tochter ist. Sie hat gesagt, ich solle mit Juliette reden. Anscheinend waren die beiden eng befreundet, bevor Juliette Montague traf.~ */ GOTO 26
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39073 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39074 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 21
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39075 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 27
  IF ~~ THEN REPLY #39076 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39077 /* ~"Davon abgesehen, daß ich hier Schülerin bin? Tatsächlich suche ich nach etwas. Du hast es nicht zufällig gerochen, oder?"~ */
  IF ~~ THEN REPLY #39078 /* ~"Eine Schülerin?"~ */ GOTO 5
  IF ~~ THEN REPLY #39079 /* ~"Gerochen?"~ */ GOTO 6
  IF ~~ THEN REPLY #39080 /* ~"Nein, das glaub ich nicht..."~ */ GOTO 7
  IF ~~ THEN REPLY #39081 /* ~"Weißt du, ich glaube, ich gehe lieber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #39082 /* ~Vivian nickt mit einem leicht gelangweilten Blick. "Das ist richtig. Meisterin Grace unterweist uns in der Kunst der Sprache und Konversation - der Fähigkeit, andere mit Worten zu bewegen sowie neue Einblicke sowohl in sie als auch in uns selbst zu gewinnen. Alle Prostituierten hier sind solche Schülerinnen."~ */
  IF ~~ THEN REPLY #39083 /* ~"Du... hast gefragt, ob ich etwas gerochen habe?"~ */ GOTO 6
  IF ~~ THEN REPLY #39084 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39085 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 19.0 20.0
  SAY #39086 /* ~"Ja, ich hab einen bestimmten Duft, der auf... *Wanderschaft* gegangen zu sein scheint. Er ist ein bißchen... schwer an einem Ort zu halten. Ich hoffe, daß niemand ihn aus Versehen genommen hat... Obwohl, man weiß ja nie bei den 'Damen' hier." Sie runzelt die Stirn. "Also, hast du ihn zufällig irgendwo gerochen?"~ */
  IF ~~ THEN REPLY #39087 /* ~"Eigentlich riechst du jetzt auch ganz nett, weißt du..."~ */ GOTO 8
  IF ~~ THEN REPLY #39088 /* ~"Wie kann denn ein Duft auf Wanderschaft gehen?"~ */ GOTO 9
  IF ~~ THEN REPLY #39089 /* ~"Ich glaub nicht, daß ich ihn gerochen habe..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2 8.1
  SAY #39090 /* ~"Was für ein Pech. Ich fürchte, ich werde ihn nie wiederfinden."~ */
  IF ~~ THEN REPLY #39091 /* ~"Wie würdest du es merken, wenn du ihn gefunden hast?"~ */ GOTO 10
  IF ~~ THEN REPLY #39092 /* ~"Ich könnte dir helfen..."~ */ GOTO 11
  IF ~~ THEN REPLY #39093 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39094 /* ~"Na, dann wünsche ich dir viel Glück bei der Suche. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #39095 /* ~Sie macht kurz ein finsteres Gesicht, dann lächelt sie dich an. "Ja, ja, und ich danke dir für das Kompliment. Aber ich versichere dir, dieses bestimmte Aroma ist *gar nichts* im Vergleich zu meinem persönlichen Duft." Sie seufzt.~ */
  IF ~~ THEN REPLY #39096 /* ~"Wie kann denn ein Duft auf Wanderschaft gehen?"~ */ GOTO 9
  IF ~~ THEN REPLY #39097 /* ~"Ich glaub nicht, daß ich ihn gerochen habe..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #39098 /* ~Vivian schüttelt den Kopf. "Ich wollte damit andeuten, daß er *genommen* worden ist. Die 'Damen' hier sind manchmal etwas eifersüchtig, und es ist schon vorgekommen, daß sie meine Parfüms für sich selbst nehmen. Aber diesmal ist jemand mit meinem eigenen persönlichen Duft durchgebrannt. Ich habe an diesem Duft gearbeitet, habe ihn perfektioniert, und jetzt *puff*! Weg ist er! Das muß ich mir nicht bieten lassen!" Vivian stampft mit den Füßen: "Ich will diesen Duft zurück, und zwar sofort!"~ */
  IF ~~ THEN REPLY #39099 /* ~"Wie würdest du es merken, wenn du ihn gefunden hast?"~ */ GOTO 10
  IF ~~ THEN REPLY #39100 /* ~"Ich könnte dir helfen..."~ */ GOTO 11
  IF ~~ THEN REPLY #39101 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39102 /* ~"Na, dann wünsche ich dir viel Glück bei der Suche. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #39103 /* ~"Du erkennst ihn am Geruch, das kann ich dir versichern. Er ist ziemlich umwerfend, vor allem für Männer."~ */
  IF ~~ THEN REPLY #39104 /* ~"Ich kann dir helfen..."~ */ GOTO 11
  IF ~~ THEN REPLY #39105 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39106 /* ~"Na, dann wünsche ich dir viel Glück bei der Suche. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 9.1 10.0
  SAY #39107 /* ~Vivian scheint zu zweifeln. "Bist du sicher? Ich möchte mich dir nicht aufdrängen."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #39108 /* ~"Oh, du drängst dich nicht auf. Ich helfe doch gern einer so schönen Frau wie dir."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~Ich habe mich bereit erklärt, Vivian, einer der Prostituierten des Bordells zum Befriedigen Intellektueller Lüste, bei der Suche nach ihrem 'persönlichen Duft' zu helfen. Sie meinte, ich würde ihn erkennen, wenn ich ihn rieche.~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #39109 /* ~"Oh, du drängst dich nicht auf. Ich helfe doch gern einer so schönen Frau wie dir."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~Ich habe mich bereit erklärt, Vivian, einer der Prostituierten des Bordells zum Befriedigen Intellektueller Lüste, bei der Suche nach ihrem 'persönlichen Duft' zu helfen. Sie meinte, ich würde ihn erkennen, wenn ich ihn rieche.~ */ EXTERN ~DANNAH~ 194
  IF ~~ THEN REPLY #39110 /* ~"Oh, du drängst dich nicht auf - Ich erwarte eine Belohnung."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vivian_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #39111 /* ~"Wenn du zweifelst, kann ich dir vielleicht nicht helfen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #39112 /* ~Vivian lächelt und nickt dir zu. "Du bist zu freundlich. Also gut... Wenn du ihm begegnest, laß es mich bitte wissen. Mir liegt ziemlich viel daran, ihn zurückzubekommen. Es ist ein wirklich und absolut einzigartiger Duft, weißt du."~ */
  IF ~~ THEN REPLY #39113 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39114 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #39115 /* ~Vivian rollt mit den Augen. "Was hätte ich von so einer rohen, geldgierigen Erscheinung schon erwarten sollen. Also gut... Bring mir meinen Duft wieder, und ich helfe dir mit deinem."~ */
  IF ~~ THEN REPLY #39116 /* ~"Mit meinem?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39117 /* ~Sie grinst hämisch und zeigt dann auf dich: "Ja, mit *deinem*. Mit diesem faulen, essigartigen Geruch." Sie schnüffelt und rümpft dann die Nase. "Noch dazu sitzt der auch in deiner *Haut*... Den Geruch wirst du mit keinem Bad los."~ */
  IF ~~ THEN REPLY #39118 /* ~"Wie kannst du denn so etwas tun, und wie könnte es mir nutzen?"~ */ GOTO 15
  IF ~~ THEN REPLY #39119 /* ~"Vergiß es. Du verschwendest meine Zeit."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39120 /* ~"Um deine erste Frage zu beantworten, ich besitze gewisse Fähigkeiten - von magischer Natur, aber darauf möchte ich jetzt nicht näher eingehen - die es mir ermöglichen, einen persönlichen Duft zu erstellen oder zu ändern."~ */
  IF ~~ THEN REPLY #39121 /* ~"Und der Nutzen...?"~ */ GOTO 16
  IF ~~ THEN REPLY #39122 /* ~"Vergiß es. Du verschwendest meine Zeit."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39123 /* ~"Du kannst einfach die Tatsache nicht abstreiten, daß der Geruch eines Mannes oder einer Frau eine wichtige Rolle dabei spielt, wie man von anderen akzeptiert wird. Ob man es dir nun schon gesagt hat oder nicht, ich bin jedenfalls sicher, daß die Leute zumindest ein wenig von deinem tödlichen Aroma abgestoßen werden. Es könnte dein Charisma beachtlich erhöhen, wenn du etwas besser röchest, weißt du."~ */
  IF ~~ THEN REPLY #39124 /* ~"Also gut... Ich werde dir deinen Duft suchen."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~Ich habe mich bereit erklärt, Vivian, einer der Prostituierten des Bordells zum Befriedigen Intellektueller Lüste, bei der Suche nach ihrem 'persönlichen Duft' zu helfen. Sie meinte, ich würde ihn erkennen, wenn ich ihn rieche.~ */ GOTO 17
  IF ~~ THEN REPLY #39125 /* ~"Vergiß es. Du verschwendest meine Zeit."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39126 /* ~"Also abgemacht. Solltest du ihm begegnen, laß es mich wissen. Mir liegt ziemlich viel daran, ihn zurückzubekommen. Es ist ein wirklich und absolut einzigartiger Duft, weißt du."~ */
  IF ~~ THEN REPLY #39127 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39128 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 14.1 15.1 16.1
  SAY #39129 /* ~"Na gut. Macht eigentlich nichts - ich bin sicher, daß ich ihn mit der Zeit finden werde, ob nun mit oder ohne deine Hilfe."~ */
  IF ~~ THEN REPLY #39130 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39131 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.2
  SAY #39132 /* ~Sie lächelt dich an. "Ich danke dir für dein Kompliment. Aber ich versichere dir, dieses Aroma hier ist ein platter und schäbiger Geruch im Vergleich zu meinem persönlichen Duft." Sie seufzt.~ */
  IF ~~ THEN REPLY #39133 /* ~"Dein... 'persönlicher' Duft?"~ */ GOTO 6
  IF ~~ THEN REPLY #39134 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39135 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.3
  SAY #39136 /* ~Vivian sieht auf das Fläschchen herunter, das an ihrem Hals hängt. "Oh... das. Das ist nur ein Fläschchen Parfüm. Ich versichere dir, dieses Aroma ist absolut nicht mit meinem persönlichen Duft zu vergleichen." Sie seufzt.~ */
  IF ~~ THEN REPLY #39137 /* ~"Dein... 'persönlicher' Duft?"~ */ GOTO 6
  IF ~~ THEN REPLY #39138 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39139 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.9
  SAY #39140 /* ~"Ist das nicht so eine historische Figur? Ich kann mich nicht ganz erinnern. Wer ist sie?"~ */
  IF ~~ THEN REPLY #39141 /* ~"Eine Nachthexe aus Sigils Vergangenheit, glaube ich."~ */ JOURNAL #66742 /* ~Ich habe eine der Prostituierten im Bordell über Ravel befragt, und sie hat gesagt, ich solle mit Yves darüber sprechen. Yves scheint Geschichten jeglicher Art zu sammeln, und es ist wahrscheinlich, daß sie in ihrem Repertoire auch eine über Ravel hat.~ */ GOTO 22
  IF ~~ THEN REPLY #39142 /* ~"Ach, ist nicht so wichtig... Laß mich dir eine andere Frage stellen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39143 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #39144 /* ~"Dann hoffe ich, daß sie in der Vergangenheit bleibt. Nachthexen sind gräßliche Kreaturen, die jegliche Weiblichkeit überall auf den Ebenen besudeln." Plötzlich hält sie inne. "Vielleicht solltest du mal ves fragen. Sie kennt jede Menge seltsamer kleiner Geschichten."~ */
  IF ~~ THEN REPLY #39146 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39147 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.8
  SAY #39148 /* ~"Wenn ich wüßte, wo er ist, würde ich ihn anzünden und seine Überreste in die tiefste Grube werfen! Ich hoffe, dieses elende Ding wird ihren wertvollen Schleier *niemals* finden und für den Rest ihrer Tage in dieser Kammer gefangen sein!" Vivian räuspert sich abfällig.~ */
  IF ~~ THEN REPLY #39149 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39150 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.4
  SAY #39151 /* ~"Das Bordell von Meisterin Grace? Das ist eine Schule, an der sie uns in der Kunst der Sprache und Konversation unterrichtet - der Fähigkeit, andere mit Worten zu bewegen sowie neue Einblicke sowohl in sie als auch in uns selbst zu gewinnen. Für viele ist dies eine Vorbereitung darauf, ein Mitglied der Gesellschaft der Empfindung zu werden."~ */
  IF ~~ THEN REPLY #39152 /* ~"Die Gesellschaft der Empfindung?"~ */ GOTO 25
  IF ~~ THEN REPLY #39153 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39154 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0
  SAY #39155 /* ~Vivian seufzt. "Vielleicht möchtest du darüber ja Grace, die Gefallene, befragen - oder noch besser, jemanden in der Städtischen Festhalle. Die sprechen sicher gern mit dir."~ */
  IF ~~ THEN REPLY #39156 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39157 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 3.7
  SAY #39158 /* ~Vivian nickt und senkt ihre Stimme. "Ich habe auch so ein Gerücht gehört. Das wäre eine Erklärung für die roten Augen, ihre... ungewöhnliche Hautfarbe.. Aber ich weiß nicht, ob an dem Gerede was dran ist. Frag Juliette - sie war einmal Kesai-Serris' beste Freundin, bis sich Juliette in Montague verliebt hat."~ */
  IF ~~ THEN REPLY #39159 /* ~"Ich hätte dann noch ein paar andere Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39160 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 3.10
  SAY #39161 /* ~"Zehnte Schülerin?" Sie sieht dich prüfend an, als ob sie dich nicht richtig gehört hätte. "Vielleicht bist du ja einmal zuviel auf den Kopf gehauen worden. Oder vielleicht hat eines der Mädchen sein Spiel mit dir getrieben. Es gibt keine zehnte Prostituierte, von der ich wüßte."~ */
  IF ~~ THEN REPLY #39162 /* ~"Ich hätte dann noch ein paar andere Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39163 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",1)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 28 // from:
  SAY #39164 /* ~Vivian nimmt deine Anwesenheit mit einem königlichen Nicken wahr. Sie ist immer noch vom Duft ihres exotischen, erotischen Parfüms umgeben, das dich magisch zu ihr zu ziehen scheint.~ */
  IF ~~ THEN REPLY #39165 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #39166 /* ~"Komm nur gerade zufällig vorbei. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 37 even though they appear after this state */
~  Global("Scent_Quest","AR0605",1)
~ THEN BEGIN 29 // from:
  SAY #39167 /* ~Vivian begrüßt dich mit einem höflichen angedeuteten Lächeln. "Hast du vielleicht Glück bei der Suche nach meinem Duft gehabt?"~ */
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #39168 /* ~"Ja... Ich habe ihn in diesem roten Schleier gefunden..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
GiveItemCreate("CVeil",Protagonist,1,0,0)
AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~Ich habe Vivian ihren persönlichen Duft zurückgebracht.~ */ GOTO 31
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #39169 /* ~"Irgendwie schon... Ich glaube, er war in Marissas verlorenem Schleier, den ich ihr zurückgegeben habe. Sie hat jetzt also deinen Duft."~ */ DO ~AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~Ich habe Vivian ihren persönlichen Duft zurückgebracht.~ */ GOTO 35
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39170 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39171 /* ~"Nein, aber ich suche weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.1
  SAY #39172 /* ~"Ich bin eine der Prostituierten von Meisterin Grace - eine ihrer Schülerinnen - hier im Bordell. Ich arbeite hier, um in den Bund der Sinnsaten zu kommen, und meine Familie hat mir diesen Ort als ein Mittel empfohlen, wie ich mein Inneres untersuchen kann, um zu erkennen, ob ich wirklich beitreten möchte."~ */
  IF ~~ THEN REPLY #39173 /* ~"Der Bund der Sinnsaten?"~ */ GOTO 25
  IF ~~ THEN REPLY #39174 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #39175 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #39176 /* ~Vivians Augen leuchten auf. "Oh, das ist ja einfach wundervoll!" Sie nimmt den Schleier aus deinen Händen, murmelt ein paar Worte über ihm und gibt ihn dir zurück. Sie schüttelt ihr purpurrotes Haar aus, und in wenigen Momenten bist du von dem intensivsten exotischen und erregenden Duft umgeben, den du jemals die Freude hattest zu riechen.~ */
  IF ~  Global("Evil_Vivian_1","GLOBAL",0)
~ THEN REPLY #39177 /* ~"Das riecht... klasse..."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39178 /* ~"Das riecht... klasse..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 36.0
  SAY #39179 /* ~"Ja, nicht wahr?" Sie lächelt dich an. "Und da du mir einen Gefallen getan hast, will auch ich dir einen Gefallen tun. Steh dicht bei mir, Narbiger..."~ */
  IF ~~ THEN REPLY #39180 /* ~Näher dich ihr.~ */ GOTO 33
  IF ~~ THEN REPLY #39181 /* ~"Nein danke, mir geht's gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 34.0
  SAY #39184 /* ~Du trittst näher an Vivian heran. Sie nimmt deine Hand, dreht sie um und riecht nur einmal ganz vorsichtig an deinem Handgelenk. "Puh!" Sie rümpft die Nase. "Essig! Oder... Balsamierungsöl? Hier, ich werde diesen Geruch von dir entfernen..." Sie murmelt einige seltsame Silben, und ein leichtes, kribbelndens Gefühl breitet sich auf deiner Haut aus. In wenigen Momenten ist dein chemischer Gestank völlig verschwunden. "Na - wie ist das? Jetzt sollten die Leute nicht mehr so darauf erpicht sein, einer Unterhaltung mit dir zu entkommen."~ */
  IF ~~ THEN REPLY #39185 /* ~"Danke, Vivian. Leb wohl."~ */ DO ~PermanentStatChange(Protagonist,CHR,RAISE,1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1 36.1
  SAY #39186 /* ~"Ja, nicht wahr?" Vivians Lächeln verschwindet plötzlich. "Tja, jetzt willst du vermutlich deine Belohnung. Steh etwas dichter bei mir, Narbiger..."~ */
  IF ~~ THEN REPLY #39187 /* ~Näher dich ihr.~ */ GOTO 33
  IF ~~ THEN REPLY #39188 /* ~"Nein danke, mir geht's gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.1
  SAY #39189 /* ~Für einen ganz kurzen Moment glühen Vivians Augen vor Wut. "*Hat* sie also, was? Das werden wir ja sehen. Rühr dich nicht von der Stelle. Ich bin gleich zurück."~ */
  IF ~~ THEN REPLY #39190 /* ~Warte.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39191 /* ~"So! Das Problem wäre also gelöst! Diese elende Hexe... stiehlt immer meine Parfüms, aber ich hätte nie geglaubt, sie könnte die Frechheit besitzen, mir meinen eigenen persönlichen Duft zu stehlen. Hmph!" Sie schüttelt ihr purpurrotes Haar aus, und in wenigen Momenten bist du von dem intensivsten exotischen und erregenden Duft umgeben, den du jemals die Freude hattest zu riechen.~ */
  IF ~  !Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39192 /* ~"Das riecht... klasse..."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39193 /* ~"Das riecht... klasse..."~ */ GOTO 34
END

IF WEIGHT #0 ~  Global("Scent_Quest","AR0605",2)
~ THEN BEGIN 37 // from:
  SAY #39194 /* ~Vivian dreht sich um und begrüßt dich. Sogar ihre königliche Schönheit wird von der Herrlichkeit des wunderbar erotischen Dufts, der sie umgibt, noch übertroffen... ihrem exotischen 'persönlichen Geruch', den du für sie wiedergeholt hast.~ */
  IF ~~ THEN REPLY #39195 /* ~"Ich hätte da eine Frage an dich, Vivian..."~ */ GOTO 3
  IF ~~ THEN REPLY #39196 /* ~"Ich komm nur gerade zufällig vorbei. Leb wohl, Vivian."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 3.5 3.6
  SAY #39197 /* ~"Du meinst Ecco? Sie ist nett. Still." Vivian runzelt die Stirn. "Das könnte zu dem Zauber gehören. Es gibt alle möglichen Spekulationen, warum sie stumm ist, aber ich glaube, der Grund ist, daß man ihr das Herz gebrochen hat. Dolora weiß darüber vielleicht am besten Bescheid. Sie hat mit einem Mann gesprochen, den Ecco einmal geliebt hat, bevor sie ihre Stimme verlor."~ */
  IF ~~ THEN REPLY #39199 /* ~"Ich habe noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #52814 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
