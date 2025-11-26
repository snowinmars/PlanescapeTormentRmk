// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANTHIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANTHIA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51104 /* ~Du siehst eine schöne, junge Frau in edler Kleidung. Ihrer Haut fehlt der übliche Gelbstich der Einwohner dieses Viertels. Sie scheint interessiert drei Gestalten in der Nähe zu beobachten.~ */
  IF ~~ THEN REPLY #51105 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #51106 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51107 /* ~Sie dreht sich zu dir um, und ein Anflug von Verärgerung zeigt sich auf ihrem Gesicht. "Ja? Was willst du?"~ */
  IF ~~ THEN REPLY #51108 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51109 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 7.1 8.1 9.1 10.1 12.1 13.0 14.1 15.0
  SAY #51110 /* ~"Schön." Sie wirkt irritiert.~ */
  IF ~~ THEN REPLY #51111 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #51112 /* ~"Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #51113 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 14
  IF ~~ THEN REPLY #51114 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51115 /* ~"Mein Name ist Xanthia." Sie mustert dich von Kopf bis Fuß und runzelt die Stirn. "Willst du noch etwas?"~ */
  IF ~~ THEN REPLY #51116 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51117 /* ~"Ich gehe jetzt, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #51118 /* ~"Hier wird es gleich zu einem Kampf kommen, und ich möchte ihn sehen." Sie lächelt boshaft. "Es dürfte sehr interessant werden." ~ */
  IF ~~ THEN REPLY #51119 /* ~"Ein Kampf?"~ */ GOTO 5
  IF ~~ THEN REPLY #51120 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51121 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #51122 /* ~"Ja. Siehst du die drei Thokola da drüben?" Sie zeigt auf drei massige Gestalten mit Bergen von Muskeln. "Sie werden versuchen, einen Abishai zu töten." Sie schnaubt. "Diese Schwachköpfe."~ */
  IF ~~ THEN REPLY #51123 /* ~"Was ist ein Abishai?"~ */ GOTO 6
  IF ~~ THEN REPLY #51124 /* ~"Die Thokola sehen aus, als ob sie schon allein klarkommen."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51125 /* ~"Das ist ein Wesen von den unteren Ebenen, ein Baatezu, glaube ich..." Sie runzelt nachdenklich die Stirn. "Auf jeden Fall ist mit den Abishai nicht zu spaßen. Sie haben scharfe Krallen und können Zauber wirken. Sehr gefährlich..."~ */
  IF ~~ THEN REPLY #51126 /* ~"Die Thokola sehen aus, als ob sie schon allein klarkommen."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #51127 /* ~"Normalerweise ja, aber die Thokola sind sehr starke Krieger..." Sie lächelt verschlagen, lehnt sich zu dir hinüber und flüstert dir zu: "Allerdings weiß ich etwas, was sie nicht wissen..."~ */
  IF ~~ THEN REPLY #51128 /* ~"Und was wäre das?"~ */ DO ~SetGlobal("Know_Xanthia_Plan","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #51129 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51130 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51131 /* ~"Abishai können nur durch Magie verletzt werden." Sie kichert. "Die Thokola werden massakriert, da bin ich mir ganz sicher." Sie richtet sich auf und beobachtet gespannt die Thokola.~ */
  IF ~~ THEN REPLY #51132 /* ~"Woher weißt du, daß sie nur durch Magie verletzt werden können?"~ */ GOTO 9
  IF ~~ THEN REPLY #51133 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51134 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51135 /* ~Sie wirft dir einen verärgerten Blick zu. "Mein Mann hat eine hohe Stellung im Harmonium. Die Wachen des Harmoniums werden für den Umgang mit solchen Wesen wie den Abishai ausgebildet." Sie schaut weg. "Deshalb weiß ich es, mein Mann hat es mir erzählt."~ */
  IF ~~ THEN REPLY #51136 /* ~"Warum warnst du die Thokola nicht?"~ */ GOTO 10
  IF ~~ THEN REPLY #51137 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51138 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51139 /* ~"Warum sollte ich das tun?" Sie lächelt böse. "Der Kampf war mein Vorschlag."~ */
  IF ~~ THEN REPLY #51140 /* ~"Warum?"~ */ GOTO 11
  IF ~~ THEN REPLY #51141 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51142 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51143 /* ~"Mein Mann versucht gerade, sein Ansehen bei seinen Untergebenen zu verbessern, indem er mit ihnen in den örtlichen Tavernen einen trinken geht. Gestern abend hat er mich gezwungen, ihn zu begleiten. Diese drei Schwachköpfe waren da und haben mit ihrer Erfahrung als Krieger geprahlt. Es war nicht zu übersehen, daß sie im Vollrausch waren. Als sie gehen wollten, ist einer von ihnen gestolpert und gegen den Tisch gestoßen, an dem ich saß." Sie hält inne.~ */
  IF ~~ THEN REPLY #51144 /* ~"Erzähl weiter."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51145 /* ~Sie runzelt verärgert die Stirn. "Die meisten Getränke auf dem Tisch landeten in meinem Schoß und ruinierten ein sehr teures Abendkleid. Als dieser Schwachkopf sich dann entschuldigen wollte, habe ich ihm zugeflüstert, daß ich nur die Entschuldigung eines Kriegers von Format akzeptieren würde. Wenn er wirklich so ein Krieger sei, würde er einen Abishai im Nahkampf besiegen."~ */
  IF ~~ THEN REPLY #51146 /* ~"Du willst, daß sie getötet werden, weil sie ein Kleid ruiniert haben?"~ */ JOURNAL #67304 /* ~Ich hab' im Unteren Bezirk eine Frau namens Xanthia getroffen. Sie ist außer sich, weil drei Thokola ihr Abendkleid ruiniert haben, indem sie im Vollrausch ein paar Gläser umgestoßen haben. Sie hat beschlossen, sich zu rächen, indem sie ihre Entschuldigung nur dann annimmt, wenn sie einen Abishai im Nahkampf schlagen. Sie sagt jedoch, daß Abishai nur durch Magie oder magische Waffen verletzt werden können... Und die Thokola hätten weder das eine noch das andere. Also will sie zusehen, wie die Thokola von dem Abishai massakriert werden. Hmm, ob ich sie warnen sollte...~ */ GOTO 13
  IF ~~ THEN REPLY #51147 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51148 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51149 /* ~"Du verstehst anscheinend nicht, was diese Situation wirklich bedeutet." Sie sieht dich an, als wärst du ein naiver Schwachkopf. "Ich wurde vor meinem Ehemann und seinen Untergebenen bloßgestellt!" Sie wirkt zornig.~ */
  IF ~~ THEN REPLY #51150 /* ~"Ich verstehe... Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51151 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #51152 /* ~"Nichts..." Sie sieht sich angewidert um. "Wenn hier nicht der Kampf stattfinden würde, würden mich keine zehn Pferde hierher bekommen."~ */
  IF ~~ THEN REPLY #51153 /* ~"Kampf?"~ */ GOTO 5
  IF ~~ THEN REPLY #51154 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51155 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 15 // from:
  SAY #51156 /* ~Du siehst Xanthia. Sie schaut dich gelangweilt an. "Warum mußt du mich schon wieder nerven?"~ */
  IF ~~ THEN REPLY #51157 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51158 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #51159 /* ~Du siehst Xanthia. Sie wirft dir einen haßerfüllten Blick zu. "Du hast die Bestie gewarnt, stimmt's?"~ */
  IF ~~ THEN REPLY #51160 /* ~"Ja, ich habe getan, was ich für richtig hielt."~ */ DO ~AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #51161 /* ~"Nein, ich weiß nicht, wovon du redest."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51162 /* ~Sie nickt langsam. "Ich werde diese Beleidigung nicht vergessen. Guten Tag." Sie dreht sich um und geht.~ */
  IF ~~ THEN REPLY #51163 /* ~Geh weg.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #51164 /* ~Sie lächelt dich an. "Nur zu, versuch ruhig, mich hinters Licht zu führen. Aber merk dir eins, Dussel: Ich vergesse keine Beleidigung. Guten Tag." Sie dreht sich um und geht.~ */
  IF ~~ THEN REPLY #51165 /* ~Geh weg.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 19 // from:
  SAY #64167 /* ~Du siehst Xanthia. Sie sieht dich gelangweilt an, als du näherkommst. "Nun ja... Ich habe gesehen, wie du mit dem alten Trampel Thorp gesprochen hast. Hast du ihn gewarnt?"~ */
  IF ~  !Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #64168 /* ~"Nein, ich habe mich entschlossen, die Vorstellung mit dir zu genießen."~ */ GOTO 20
  IF ~  Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #68127 /* ~"Nein, das würde ich nicht tun, nachdem du mir dieses reizende *Geschenk* gemacht hast."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64169 /* ~Xanthia lacht laut und lächelt dann. "Wie nett... Du kannst mir gerne Gesellschaft leisten." Sie überlegt einen Moment und nimmt dann einen Beutel aus ihrer Tasche. "Hier... Nimm dies als Belohnung dafür, daß du einer Dame nicht den Spaß verdorben hast." Sie gibt dir den Beutel.~ */
  IF ~~ THEN REPLY #64170 /* ~"Danke schön, Xanthia. Leb wohl."~ */ DO ~SetGlobal("Xanthia_Rewarded","GLOBAL",1)
AddexperienceParty(500)
GivePartyGold(500)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #68128 /* ~Xanthia lacht, dann lächelt sie. "Wie nett..." Sie wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #68129 /* ~"Leb wohl."~ */ EXIT
END
