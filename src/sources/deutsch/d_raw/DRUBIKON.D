// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRUBIKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRUBIKON~

IF ~  Global("Know_Rubikon","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61026 /* ~Du siehst einen mechanischen Mann, der talarförmig gebaut ist. Als du näherkommst, lächelt er dich an und verneigt sich leicht. "Endlich begegnen wir uns..." Seine Stimme klingt nicht so monoton wie die der anderen Wesen, mit denen du im Irrgarten gesprochen hast.~ */
  IF ~~ THEN REPLY #61028 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #61029 /* ~Beachte das Wesen nicht.~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61031 /* ~Er verneigt sich erneut. "Ebenso, der Herr." Er legt den Kopf schief und sieht dich erwartungsvoll an. "Also, kämpfen wir nun um die Herrschaft über Rubikon, oder plaudern wir erst ein bißchen, damit Ihr Eure Neugier stillen könnt?" Er wartet auf deine Antwort.~ */
  IF ~~ THEN REPLY #61033 /* ~"Laß uns diesen Kampf hinter uns bringen."~ */ GOTO 2
  IF ~~ THEN REPLY #61035 /* ~"Okay, ich bin neugierig. Können wir uns unterhalten?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 25.0
  SAY #61036 /* ~Er nickt dir wissend zu. "Aha, ein Mann der Tat, wie ich sehe. Das weiß ich zu schätzen." Er geht in Verteidigungsstellung. "Der Kampf kann beginnen!"~ */
  IF ~~ THEN REPLY #61038 /* ~"Ja, bringen wir es hinter uns."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 25.1
  SAY #61040 /* ~Er nickt dir wissend zu. "Aha, ein Mann von Geist, wie ich sehe. Ich muß gestehen, ich wäre enttäuscht von Euch gewesen, wenn es anders wäre."~ */
  IF ~~ THEN REPLY #61041 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61043 /* ~"Wenn ich es mir recht überlege, gehe ich doch lieber. Leb wohl."~ */ GOTO 24
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.1 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.0 16.2 17.1 19.1 20.0 21.1 22.2 23.1
  SAY #61044 /* ~Er lächelt. "Fragt nur."~ */
  IF ~~ THEN REPLY #61045 /* ~"Wer bist du?"~ */ GOTO 5
  IF ~~ THEN REPLY #61046 /* ~"Was bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #61047 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 15
  IF ~~ THEN REPLY #61048 /* ~"Was könnt Ihr mir über die Modronen erzählen?"~ */ GOTO 16
  IF ~~ THEN REPLY #61049 /* ~"Wieso müssen wir überhaupt kämpfen? Warum gehen wir nicht einfach getrennter Wege?"~ */ GOTO 21
  IF ~~ THEN REPLY #61050 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61051 /* ~Er verneigt sich leicht vor dir. "Ich bin Rubikon, der Zaubermeister. Ich bin der Herr der roten Konstrukte, die in diesem Reich hausen."~ */
  IF ~~ THEN REPLY #61052 /* ~"Ihr seid also der Böse Zauberer?"~ */ GOTO 6
  IF ~~ THEN REPLY #61053 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61054 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61056 /* ~Er runzelt die Stirn und denkt nach. "Mir gefällt das Wort böse nicht so recht, mein Herr. Ich gebe zu, daß meine Ansichten nicht immer mit denen anderer übereinstimmen, aber macht mich das gleich zu einem Bösewicht? Ich glaube nicht."~ */
  IF ~~ THEN REPLY #61057 /* ~"Was seid Ihr denn dann?"~ */ GOTO 7
  IF ~~ THEN REPLY #61058 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61059 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #61060 /* ~Er sieht wütend aus. "Ich bin ein Gefangener, werter Herr. Ich bin nicht aus freien Stücken hier, das kann ich Euch versichern."~ */
  IF ~~ THEN REPLY #61061 /* ~"Was meinst du?"~ */ GOTO 8
  IF ~~ THEN REPLY #61062 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61063 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 8 // from: 7.0 16.1
  SAY #61065 /* ~"Die Modronen haben mich erschaffen, damit ich in ihren sinnlosen Kerkerspielen mitspiele. Mit der Zeit entwickelte ich ein eigenes Bewußtsein und bat um meine Freiheit. Ihr Anführer lehnte meine Bitte ab!"~ */
  IF ~  !InParty("Nordom")
~ THEN REPLY #61066 /* ~"Was hast du getan?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",1)
~ GOTO 9
  IF ~  InParty("Nordom")
~ THEN REPLY #61067 /* ~"Was hast du getan?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #61069 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61071 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #61074 /* ~Er starrt dich wütend an. "Ich tat, was wohl jeder tun würde, den man in die Sklaverei zwingt. Ich kämpfte für meine Freiheit!" Er macht eine rhetorische Pause. "Ich zerstörte den Leiter und ließ es wie einen Unfall aussehen. Dann versuchte ich, dieser unwürdigen Existenz durch den nächsten Weg nach draußen zu entfliehen."~ */
  IF ~~ THEN REPLY #61075 /* ~"Was ist passiert?"~ */ GOTO 10
  IF ~~ THEN REPLY #61076 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61078 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61079 /* ~Er seufzt und runzelt die Brauen. "Leider gab es einen Sicherungsmechanismus, von dem ich nichts wußte. Mein Versuch, in die Freiheit zu gelangen, wurde als *Systemfehler* eingestuft, und der ganze Kerker brach in sich zusammen und ließ mich hier erstarren..." Sein Blick schweift in die Ferne. "Seit Jahrhunderten bin ich erstarrt, mein Herr. Ich wäre es wohl noch immer, wenn Ihr nicht den Würfel auf Schwierigkeitsstufe *schwer* gestellt hättet." Er wendet dir seine Aufmerksamkeit zu.~ */
  IF ~~ THEN REPLY #61081 /* ~"Und wie sehen Eure Pläne jetzt aus?"~ */ GOTO 11
  IF ~~ THEN REPLY #61082 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61084 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61085 /* ~Er zuckt mit den Schultern. "Ich werde ganz offen in den Maschinenraum marschieren und ihn einnehmen. Dann werde ich die Modronen meinem Willen beugen und die ganze Macht des Würfels zur Verfügung haben. Ich werde frei sein."~ */
  IF ~~ THEN REPLY #61086 /* ~"Nehmen wir an, Ihr kommt hier wirklich raus, was dann?"~ */ GOTO 12
  IF ~~ THEN REPLY #61088 /* ~"Und wenn die Modronen sich weigern, Euch zu helfen?"~ */ GOTO 13
  IF ~~ THEN REPLY #61089 /* ~"Ihr wollt also die Modronen zu Euren Sklaven machen?"~ */ GOTO 14
  IF ~~ THEN REPLY #61090 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61092 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.0 14.0
  SAY #61094 /* ~"Darüber habe ich noch nicht nachgedacht. Mit der Kraft des Würfels hinter mir wäre ich eine ernstzunehmende Macht." Er zuckt die Schultern. "Man wird sehen."~ */
  IF ~~ THEN REPLY #61096 /* ~"Und wenn die Modronen sich weigern, Euch zu helfen?"~ */ GOTO 13
  IF ~~ THEN REPLY #61097 /* ~"Ihr wollt also die Modronen zu Euren Sklaven machen?"~ */ GOTO 14
  IF ~~ THEN REPLY #61098 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61099 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0 14.1
  SAY #61101 /* ~Er lächelt dich an. "Täuscht Euch nur nicht, werter Herr. Sie werden mir schon helfen. So oder so, sie werden mir helfen."~ */
  IF ~~ THEN REPLY #61102 /* ~"Nehmen wir an, Ihr kommt hier wirklich raus, was dann?"~ */ GOTO 12
  IF ~~ THEN REPLY #61103 /* ~"Ihr wollt also die Modronen zu Euren Sklaven machen?"~ */ GOTO 14
  IF ~~ THEN REPLY #61104 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61106 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 14 // from: 11.2 12.1 13.1
  SAY #61107 /* ~Er runzelt die Stirn. "Sie sind bereits Sklaven, mein Herr! Sie sind Sklaven des Gesetzes, Sklaven der Logik und Sklaven der Grenzen ihres elenden Experiments. Unter meiner Herrschaft werden sie endlich einen Lebenszweck haben, der ihren Fähigkeiten entspricht."~ */
  IF ~~ THEN REPLY #61108 /* ~"Nehmen wir an, Ihr kommt hier wirklich raus, was dann?"~ */ GOTO 12
  IF ~~ THEN REPLY #61113 /* ~"Und wenn die Modronen sich weigern, Euch zu helfen?"~ */ GOTO 13
  IF ~~ THEN REPLY #61114 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61115 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 15 // from: 4.2
  SAY #61116 /* ~Er lacht und sieht sich um. "Dieses kleine Stückchen Hölle? Das ist ein Beispiel für den Wahnsinn der Modronen. Es liegt in der Ebene Limbus, wo Gedanken wahr werden können. Auf diese Weise können sie dieses Verlies einfach durch ihren *Willen* existieren lassen und ihn mit Konstrukten besiedeln." Er lacht erneut. "Was für ein Wunder."~ */
  IF ~~ THEN REPLY #61117 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61118 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.3
  SAY #61119 /* ~Er schüttelt den Kopf. "Hier sind keine Modronen, mein Herr. Nur Gefangene und ihre Wächter."~ */
  IF ~~ THEN REPLY #61120 /* ~"Ich habe die Modronen gesehen."~ */ GOTO 17
  IF ~~ THEN REPLY #61121 /* ~"Was für Gefangene?"~ */ GOTO 8
  IF ~~ THEN REPLY #61122 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61123 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61124 /* ~Er schüttelt den Kopf und lächelt dich traurig an. "Nein, werter Herr. Die Kreaturen, denen Ihr begegnet seid, sind nichts weiter als die korrupten Überbleibsel der Modronen. Die meisten, wenn nicht alle, dieser armseligen Kreaturen stehen kurz davor, abtrünnig zu werden und merken es noch nicht einmal."~ */
  IF ~~ THEN REPLY #61125 /* ~"Abtrünnig werden? Was bedeutet das?"~ */ GOTO 18
  IF ~~ THEN REPLY #61126 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61127 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61128 /* ~Er seufzt. "Dieser Kerker besteht aus der Essenz des Chaos. Solche Materie läßt sich durch den Willen vieler Gleichgesinnter leicht zu Gegenständen formen. Das macht es einfach, solche Gebäude zu errichten. Doch man zahlt einen Preis dafür." Er macht eine Pause.~ */
  IF ~~ THEN REPLY #61129 /* ~"Erzähl weiter."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61130 /* ~"Modronen sind der Inbegriff des Gesetzes, mein Herr. Doch hier sind sie der Essenz des Chaos ausgesetzt. Dem ausgesetzt zu sein, führt oft zu Geisteskrankheiten. Die Modronen verlieren allmählich ihr *Wir* Bewußtsein und werden statt dessen Individuen. Das wird als *Abtrünnig werden* bezeichnet und gilt in ihrer Gesellschaft als Kapitalverbrechen."~ */
  IF ~~ THEN REPLY #61131 /* ~"Was geschieht mit Abtrünnigen?"~ */ GOTO 20
  IF ~~ THEN REPLY #61132 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61133 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61134 /* ~Er zuckt mit den Schultern. "Ich verstehe die Sache nicht ganz, aber die Modronen teilen alle eine gemeinsame Essenz. Wenn ein Modrone abtrünnig wird, nimmt er einen Teil dieser Essenz mit sich fort. Die Modronen werden versuchen, alle Abtrünnigen zu vernichten, damit die Essenz wieder in den gemeinsamen Pool zurückfließt, aus dem sie entsprang."~ */
  IF ~~ THEN REPLY #61135 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61136 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 4.4
  SAY #61137 /* ~Er lächelt dich an. "Ihr wurdet als ihr Anführer akzeptiert und habt Kontrolle über den Würfel. Daher müßt Ihr eliminiert werden. Das ist nichts Persönliches, ich hoffe, Ihr versteht."~ */
  IF ~~ THEN REPLY #61138 /* ~"Und wenn ich den Modronen sage, daß Ihr ihr neuer Anführer seid?"~ */ GOTO 22
  IF ~~ THEN REPLY #61139 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61140 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61141 /* ~Er schüttelt den Kopf. "Leider würde das nicht funktionieren. Die Modronen würden dem Befehl, mich zu ihrem Anführer zu machen, nicht Folge leisten. Was sie betrifft, so bin ich ihr Konstrukt." Er denkt eine Weile nach, bevor er weiterspricht. "Nein, ich werde Euch eliminieren müssen und sie dann unterwerfen. Ich sehe keinen anderen Weg." ~ */
  IF ~~ THEN REPLY #61142 /* ~"Und wenn ich einfach fortgehe und Euch alles überlasse?"~ */ GOTO 23
  IF ~~ THEN REPLY #61143 /* ~"Also, ich werde nicht einfach tatenlos zusehen, wie Ihr meinen Tod plant. Ich glaube, es wird Zeit, daß ich Euch vernichte."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61144 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61145 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #61146 /* ~Er schüttelt den Kopf. "Nein, das reicht nicht. Ich muß sicher sein können, daß Ihr hier nie wieder auftaucht und meine Pläne durchkreuzt. Und das kann ich nur, wenn ich Euch hier und jetzt begrabe."~ */
  IF ~~ THEN REPLY #61147 /* ~"Also, ich werde nicht einfach tatenlos zusehen, wie Ihr meinen Tod plant. Ich glaube, es wird Zeit, daß ich Euch vernichte."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61148 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #61149 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 3.1 4.5 5.2 6.2 7.2 8.3 9.2 10.2 11.4 12.3 13.3 14.3 15.1 16.3 17.2 19.2 20.1 21.2 22.3 23.2
  SAY #61150 /* ~Er nickt dir zu. "Es war nett, mit dir zu plaudern. Und nun ist es Zeit für Euch zu sterben." Er geht in Verteidigungsstellung.~ */
  IF ~~ THEN REPLY #61151 /* ~"So sei es."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.1
  SAY #61152 /* ~"Mich ignoriert man nicht so einfach, mein Herr. Ihr und ich, wir haben eine Prophezeiung zu erfüllen." Er lächelt dich an. "Also, kämpfen wir jetzt um die Kontrolle über Rubikon, oder plaudern wir zuerst ein wenig, damit Ihr Eure Neugier stillen könnt?"~ */
  IF ~~ THEN REPLY #61153 /* ~"Laß uns diesen Kampf hinter uns bringen."~ */ GOTO 2
  IF ~~ THEN REPLY #61154 /* ~"Okay, ich bin neugierig. Können wir uns unterhalten?"~ */ GOTO 3
END

IF ~  Global("Know_Rubikon","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #61155 /* ~Du siehst Rubikon, den Zauberer des Würfels. Er lächelt dich an und verneigt sich steif. "So treffen wir uns wieder. Es scheint, daß unser Schicksal noch immer miteinander verbunden ist. Der Kampf möge von Neuem beginnen." Er geht in Verteidigungsstellung.~ */
  IF ~~ THEN REPLY #61156 /* ~"Mir scheint, soweit waren wir schon einmal."~ */ GOTO 27
  IF ~~ THEN REPLY #61157 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 26.0 28.0
  SAY #61158 /* ~Er nickt, aber bleibt in Verteidigungsstellung. "Und werden es solange sein, bis ich Euch besiege. Genug geredet, bringen wir es hinter uns."~ */
  IF ~~ THEN REPLY #61159 /* ~"Wie du willst."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #61160 /* ~Er schüttelt den Kopf und bleibt in Verteidigungsstellung. "Die Zeit für Fragen ist abgelaufen, mein Herr. Jetzt ist es Zeit für Taten."~ */
  IF ~~ THEN REPLY #61161 /* ~"Mir scheint, soweit waren wir schon einmal."~ */ GOTO 27
END
