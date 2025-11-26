// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIRONNA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DIRONNA~

IF ~  Global("Iron_Nalls","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #9346 /* ~Diese breitschultrige Frau geht schlurfend zwischen den riesigen Balken auf der Straße umher und tritt mit ihren Stahlkappenstiefeln gegen sie. Ab und zu bückt sie sich, um mit bloßen Händen einen Nagel aus den Balken zu ziehen, den sie dann hochhält, prüft und in ihrem ledernen Beutel verschwinden läßt.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13094 /* ~"Sei gegrüßt..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13095 /* ~"Sei gegrüßt..."~ */ GOTO 7
  IF ~~ THEN REPLY #13096 /* ~Überlaß sie ihrer Arbeit.~ */ EXIT
END

IF ~  Global("Iron_Nalls","AR0300",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #13038 /* ~Eisennagel richtet sich auf und stemmt die Hände in die Hüften. "Wieder zurück, was? Was brauchste denn nu?"~ */
  IF ~~ THEN REPLY #13097 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13098 /* ~"Nichts. Leb wohl."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #13040 /* ~Eisennagel richtet sich auf und stemmt die Hände in die Hüften. "Wieder zurück, was? Was brauchste denn n..." Sie bemerkt plötzlich Annah neben dir. "Mensch, Schleifer... wer is denn deine neue Freundin?"~ */
  IF ~~ THEN REPLY #64412 /* ~"Ihr Name ist Annah."~ */ EXTERN ~DANNAH~ 82
  IF ~~ THEN REPLY #64413 /* ~"Das ist Annah - aber ich bin mir nicht sicher, ob ich sie als Freund bezeichnen würde."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 83
END

IF ~  Global("Iron_Nalls","AR0300",2)
!NearbyDialog("DAnnah")
~ THEN BEGIN 3 // from:
  SAY #13050 /* ~Eisennagel richtet sich auf und stemmt die Hände in die Hüften. "Wieder zurück, was?" Sie sieht an dir vorbei und ist offensichtlich verwirrt. "Sag mal, Schleifer, wo is'n das hübsche junge Ding, das beim letzten Mal bei dir war?"
~ */
  IF ~  Dead("Annah")
~ THEN REPLY #12967 /* ~"Sie ist...tot."
~ */ GOTO 26
  IF ~  Dead("Annah")
~ THEN REPLY #13101 /* ~Lüge: "Ich bin mir nicht sicher. Ich hätte ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Dead("Annah")
~ THEN REPLY #13102 /* ~"Ich bin mir nicht sicher. Ich hätte ein paar Fragen..."~ */ GOTO 27
  IF ~  Dead("Annah")
~ THEN REPLY #13103 /* ~Lüge: "Ich bin mir nicht sicher. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  !Dead("Annah")
~ THEN REPLY #13104 /* ~"Ich bin mir nicht sicher. Leb wohl."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",2)
NearbyDialog("DAnnah")
~ THEN BEGIN 4 // from:
  SAY #13051 /* ~Eisennagel richtet sich auf und stemmt die Hände in die Hüften. Als sie Annah sieht, lächelt sie breit. "Wieder zurück, was? Nett, dein hübsches Gesicht wiederzusehen, Mädel." Sie wendet sich dir zu. "Was brauchste denn, Schleifer?"~ */
  IF ~~ THEN REPLY #13105 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13106 /* ~"Nichts. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 3.4 4.1 6.1 7.1 9.3 10.3 11.3 12.4 13.2 14.3 15.2 16.1 17.3 18.4 19.4 20.4 21.1 22.1 23.1 24.2 25.1 26.1 27.1 28.3 29.6 30.7 31.6 32.6 33.6 34.4 36.5 37.4 38.1
  SAY #13052 /* ~"Ja, dir auch alles Gute, Schleifer."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13107 /* ~Geh.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ EXIT
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13108 /* ~Geh.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0
  SAY #13053 /* ~Sie richtet sich auf, als sie dich kommen hört. Sie lächelt höflich, aber von ihrer Haltung und der Art, wie ihre Hand in der Nähe ihres Waffengriffs liegt, kannst du sehen, daß sie auf Ärger vorbereitet ist. Du bemerkst, daß eins ihrer Augen von einem milchigen Film überzogen ist. "Das is nah genug, Schleifer... was brauchste denn von mir?"

~ */
  IF ~~ THEN REPLY #13109 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13110 /* ~"Nichts, schon gut. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #13054 /* ~Sie richtet sich auf, als sie dich kommen hört. Ihre Waffe steckt in der Scheide, aber du kannst sehen, daß sie auf Ärger vorbereitet ist. Du bemerkst, daß eins ihrer Augen mit einem milchigen Film bedeckt ist. Als sie Annah sieht, lächelt sie und nickt dem Tiefling einen Gruß zu, bevor sie ihren Blick auf dich richtet. "Das is nah genug, Schleifer... was brauchste denn von mir?"~ */
  IF ~~ THEN REPLY #13111 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13112 /* ~"Nichts, schon gut. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.0 4.0 6.0 7.0 9.2 10.0 11.2 13.1 14.2 15.1 16.0 17.2 18.3 19.3 20.3 21.0 22.0 23.0 24.1 25.0 26.0 27.0 28.2 29.5 30.6 31.5 32.5 33.5 34.3 36.4 37.3 38.0
  SAY #13055 /* ~Sie nickt. "Dann schieß mal los."~ */
  IF ~  Global("RP_Portal","GLOBAL",3)
~ THEN REPLY #48403 /* ~"Ich soll mich an eine Frau namens Eisennagel wenden, die hier in einem Holzstapel herumwühlen soll, um etwas über den mit Müll gefüllten Torbogen auf dem Lumpensammler-Platz zu erfahren. Kannst du mir weiterhelfen?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",4)
GiveItemCreate("Junk",Protagonist,1,0,0)
~ JOURNAL #39472 /* ~Eine Frau namens Eisennagel hat mir erzählt, daß der abfallgefüllte Torbogen im Lumpensammler-Platz in Wirklichkeit ein Portal ist, wie sie zufällig entdeckt hat. Der 'Schlüssel' ist lediglich eine Handvoll Ramsch, den die Person im Torbogen - in diesem Falle ich - bei sich haben muß. Eisennagel meinte, auf der anderen Seite gäbe es eine kleine Freifläche mit einem Tor, das unter die Erde führt, aber von dem hätte sie schön die Finger gelassen und sich nicht weiter vorgewagt.~ */ GOTO 38
  IF ~  Global("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13113 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 9
  IF ~  Global("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13114 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 28
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13115 /* ~"Wer bist du noch mal?"~ */ GOTO 9
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13116 /* ~"Wer bist du noch mal?"~ */ GOTO 28
  IF ~~ THEN REPLY #13117 /* ~"Was machst du?"~ */ GOTO 11
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13118 /* ~"Kannst du mir was über diesen Ort erzählen?"~ */ GOTO 22
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13119 /* ~"Kannst du mir was über diesen Ort erzählen?"~ */ GOTO 35
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13120 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13121 /* ~"Ich suche nach einem Journal, das ich verloren habe. Hast du vielleicht eins gesehen?"~ */ GOTO 24
  IF ~~ THEN REPLY #13122 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.3
  SAY #13056 /* ~Sie zieht drei Nägel aus ihrer Schultertasche, wirft sie in die Luft, daß sie sich drehen, und fängt sie mit einer Hand wieder auf. "Eisennagel nennt man mich." Sie läßt die Nägel wieder zurück in die Tasche fallen, wo sie mit einem gedämpften *klink* landen.~ */
  IF ~~ THEN REPLY #13123 /* ~"Warum sammelst du Nägel?"~ */ GOTO 12
  IF ~~ THEN REPLY #13124 /* ~"Was ist mit deinem Auge passiert?"~ */ GOTO 10
  IF ~~ THEN REPLY #13125 /* ~"Schön, dich zu sehen. Ich hätte ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13126 /* ~"Ein passender Name. Leb wohl, Nalls."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.1 20.0 28.1
  SAY #13057 /* ~Eisennagels Gesicht verhärtet sich. "Das geht dich nix an, Dussel. Warum? Möchtest du eine passende Wunde für deine Sammlung haben?"~ */
  IF ~~ THEN REPLY #13127 /* ~"Nein, nicht wirklich. Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13128 /* ~"Nein, diese spezielle würde mir nicht besonders stehen"~ */ GOTO 21
  IF ~~ THEN REPLY #13129 /* ~"Von dir? Also, ich würde gern sehen, wie du das machen willst..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13130 /* ~"Nein, eher nicht. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.5
  SAY #13058 /* ~Sie rollt ihre Augen. "Nach was hat's denn ausgesehen, Dussel? Ich sammle Nägel!" Sie lacht leise und schüttelt ihren Kopf.~ */
  IF ~~ THEN REPLY #13131 /* ~"Warum?"~ */ GOTO 12
  IF ~~ THEN REPLY #13132 /* ~"Woher kommt dieses ganze Holz?"~ */ GOTO 13
  IF ~~ THEN REPLY #13133 /* ~"Ich hätte noch ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #13134 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 9.0 11.0 28.0
  SAY #13059 /* ~"Ich verkauf sie an einen Mann namens Hamrys, im Unteren Bezirk. Der is Sargmacher."~ */
  IF ~~ THEN REPLY #13135 /* ~"Erzähl mir mehr über diesen Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13136 /* ~"Wo ist der Untere Bezirk?"~ */ GOTO 18
  IF ~~ THEN REPLY #13137 /* ~"Sucht eigentlich sonst noch jemand nach Nägeln?"~ */ GOTO 19
  IF ~~ THEN REPLY #13138 /* ~"Woher kommt dieses ganze Holz?"~ */ GOTO 13
  IF ~~ THEN REPLY #13139 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.3
  SAY #13060 /* ~Sie zuckt mit den Schultern. "Hier und da, denk ich mal so. Manchmal lassen Dabus den Kram fallen, und dann geh ich da durch, bevor eine andere Bande kommt und alles davonträgt. Wahrscheinlich Schutt von Gebäuden oder Mauern, die sie bauen oder niederreißen."~ */
  IF ~~ THEN REPLY #13140 /* ~"Dabus?"~ */ GOTO 14
  IF ~~ THEN REPLY #13141 /* ~Ich hätte noch ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #13142 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #13061 /* ~"Ja, Dabus - die Diener der Dame." Sie sieht dich verwundert an. "Du mußt neu in Sigil sein."~ */
  IF ~~ THEN REPLY #13143 /* ~"Erzähl mir mehr über diese Dabus."~ */ GOTO 15
  IF ~~ THEN REPLY #13144 /* ~"Die Dame?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13145 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13146 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13062 /* ~"Sie arbeiten überall in der Stadt und tun alles, was die Dame will. Immer bauen die und bauen um, und mit dem, was zusammengestürzt is oder was sie niedergerissen haben, bauen sie wieder Neues."~ */
  IF ~~ THEN REPLY #13147 /* ~"Der Dame?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13148 /* ~Ich hätte noch ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #13149 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #13063 /* ~Eisennagel runzelt die Stirn. "Oh, nein, mein Lieber! Ich sag nich mehr über sie, als ich bereits gesagt hab'..." Sie zeichnet mit einem Finger einen Halbkreis über ihr Herz. "Nimm meinen Rat an, Dussel... geh nich rum und frag nach der Dame."~ */
  IF ~~ THEN REPLY #13150 /* ~"Gut. Ich hätte noch andere Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13151 /* ~"Dann leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 12.0 18.1 19.1 20.1
  SAY #13064 /* ~"Da gibt's nich viel zu sagen... er is 'ne Labertasche - der rasselt seine Knochenschüssel, bis du doof wirst, wenn du ihn läßt - aber ein fairer Händler. Er braucht die Nägel, und ich brauch Klimper, und das is eigentlich alles, was an der Sache dran is."~ */
  IF ~~ THEN REPLY #13152 /* ~"Wo ist der Untere Bezirk?"~ */ GOTO 18
  IF ~~ THEN REPLY #13153 /* ~"Sucht eigentlich sonst noch jemand nach Nägeln?"~ */ GOTO 19
  IF ~~ THEN REPLY #13154 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13155 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 12.1 17.0 19.2 20.2
  SAY #13065 /* ~"Äh... ich hab' den Weg mal gekannt, aber die Dabus haben die Straßen schon wieder total verändert. Jetzt weiß ich nich mehr, wie man da hinkommt - ich muß mir 'n neuen Weg suchen - aber ich denk mal, die Dabus biegen das schon irgendwann wieder gerade."~ */
  IF ~~ THEN REPLY #13156 /* ~"Dabus?"~ */ GOTO 14
  IF ~~ THEN REPLY #13157 /* ~"Erzähl mir mehr über Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13158 /* ~"Sucht eigentlich sonst noch jemand nach Nägeln?"~ */ GOTO 19
  IF ~~ THEN REPLY #13159 /* ~"Hmm. Ich hab' noch andere Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13160 /* ~"Vielleicht bekomm ich ja woanders eine bessere Wegbeschreibung. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.2 17.1 18.2
  SAY #13066 /* ~Sie grinst und schüttelt den Kopf. "Niemand war schlau genug oder hatte den Willen, es vor mir zu tun, und seitdem hab' ich alle zur Seite geschoben, die versucht haben, sich auf mein Land zu drängen." Sie tätschelt liebevoll den langschneidigen Dolch, der an ihrer Seite hängt.~ */
  IF ~~ THEN REPLY #13161 /* ~"Dein 'Land'?'"~ */ GOTO 20
  IF ~~ THEN REPLY #13162 /* ~"Erzähl mir mehr über Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13163 /* ~"Wo ist der Untere Bezirk?"~ */ GOTO 18
  IF ~~ THEN REPLY #13164 /* ~"Ich verstehe. Ich hab' noch andere Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13165 /* ~"Das ist gut. Also dann, leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13067 /* ~"Genau, so nenn ich das! Ehrliche Arbeit is schwer zu finden im Stock, und ich werde nich zulassen, daß so ein dämlicher Idiot mir meine Arbeit schält. Ich hab' mehr als einen Dussel heulend in die Flucht geschlagen, mit seinen Eingeweiden in den Händen... oder weg mit den Sammlern, wenn er Pech hatte." Ihr totes Auge glitzert bösartig. "Der Stock weiß schon, daß dieses Plätzchen Eisennagel gehört, verlaß dich drauf."~ */
  IF ~~ THEN REPLY #13166 /* ~"Hast du so eins deiner Auge verloren?"~ */ GOTO 10
  IF ~~ THEN REPLY #13167 /* ~"Erzähl mir mehr über Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13168 /* ~"Wo ist der Untere Bezirk?"~ */ GOTO 18
  IF ~~ THEN REPLY #13169 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13170 /* ~"Ich verstehe. Also dann, leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 10.1
  SAY #13068 /* ~Sie lacht herzlich. "Ja, ich glaub auch nicht, daß du noch viel Platz für ne weitere Narbe hab'!"~ */
  IF ~~ THEN REPLY #13171 /* ~"Hey... Ich hätte noch ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #13172 /* ~"Da könntest du recht haben. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.6
  SAY #13069 /* ~"Hör zu, Schleifer, ich hab' ne Menge Arbeit, die Nägel finden nicht von selbst ihren Weg in meine Tasche, während ich hier nen Plausch mit dir abhalte. Warum versuchste nich mal, das aus der Birne irgendeines anderen Schleifers zu ziehen?"~ */
  IF ~~ THEN REPLY #13175 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13176 /* ~"Das tue ich vielleicht mal. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 8.8 29.4 30.5 31.4 32.4 33.4 34.2 36.3 37.2
  SAY #13070 /* ~Sie nickt. "Ja, hab' den Namen schon gehört. Is der Kopf einer Bande von Sammlern, wie ich gehört hab'. Bin aber nich sicher, wo man ihn finden könnte. Du kannst es ja mal am Lumpensammler-Platz versuchen, im Nordwesten von hier. Da haben ne ganze Menge von Sammlern ihre Absteige..."~ */
  IF ~~ THEN REPLY #13173 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13174 /* ~"Dann werd ich ihn mal suchen gehen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 8.9
  SAY #13071 /* ~"Nee, hab' ich nich." Sie macht einen Moment lang eine Pause. "Weißte, das is wirklich ne gute Idee... ein Journal. Vielleicht sollte ich selbst mal eins schreiben."~ */
  IF ~~ THEN REPLY #13177 /* ~"Ganz recht. Es ist erstaunlich, wieviel man vergessen kann... und ein Journal kann einem helfen, seine Erinnerungen zu bewahren."~ */ GOTO 25
  IF ~~ THEN REPLY #13178 /* ~"Vielleicht... Ich hätte noch eine andere Frage..."~ */ GOTO 8
  IF ~~ THEN REPLY #13179 /* ~"Vielleicht. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13072 /* ~Sie grübelt darüber nach, was du gesagt hast. "Heh. Du hast recht. Du hast wirklich recht, Schleifer! Das werd ich tun. Danke für die Idee." Sie lächelt.~ */
  IF ~~ THEN REPLY #13180 /* ~"Natürlich. Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13181 /* ~"Ach, nichts. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 3.0
  SAY #13073 /* ~Eisennagel sieht ehrlich traurig aus. "Äh... ah... ich verstehe. Das is wirklich schade, is das. Allzu häufig hier im Stock, würd ich sagen." Sie schüttelt kurz den Kopf, als ob sie die Melancholie abschütteln möchte. "Ja, also, was war das doch gleich, was du brauchtest?"~ */
  IF ~~ THEN REPLY #13182 /* ~"Ich sagte, ich hätte ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13183 /* ~"Vergiß es. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 3.1 3.2
  SAY #13074 /* ~"Oh?" Sie richtet endlich ihre Aufmerksamkeit wieder auf dich und runzelt die Stirn. "Das is wirklich zu schade. Tja, was war es doch gleich, was du brauchtest?"~ */
  IF ~~ THEN REPLY #13184 /* ~"Ich sagte, ich hätte ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13185 /* ~"Vergiß es. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 8.2 8.4
  SAY #13075 /* ~Sie zieht drei Nägel aus ihrer Schultertasche, wirft sie in die Luft, so daß sie sich drehen, und fängt sie mit einer Hand wieder auf. "Eisennagel werd ich genannt. Sie läßt sie wieder in die Tasche fallen, wo sie mit einem gedämpften *klink* landen. Sie wirft einen Blick auf Annah, um zu sehen, ob die ihre kleine Show mitbekommen hat, und als sie sieht, daß der Tiefling sich bereits abgewendet hat, wendet sie sich wieder dir zu.~ */
  IF ~~ THEN REPLY #13186 /* ~"Warum sammelst du Nägel?"~ */ GOTO 12
  IF ~~ THEN REPLY #13187 /* ~"Wie hast du dein Auge verloren?"~ */ GOTO 10
  IF ~~ THEN REPLY #13188 /* ~"Schön, dich zu sehen. Ich hätte ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13189 /* ~"Ein passender Name. Leb wohl, Nalls."~ */ GOTO 5
END

IF ~~ THEN BEGIN 29 // from:
  SAY #13076 /* ~Eisennagel ist von der Antwort verstimmt, gewinnt aber schnell ihre Fassung wieder. Sie lächelt dich ein wenig traurig an: "Sicher kann ich das, Schleifer. Wonach suchste denn?"~ */
  IF ~~ THEN REPLY #13190 /* ~"Ich bin auf der Suche nach Arbeit."~ */ GOTO 30
  IF ~~ THEN REPLY #13191 /* ~"Ich will mich ein bißchen amüsieren."~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13192 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13193 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13194 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13195 /* ~"Nichts, ehrlich gesagt. Laß mich dich noch was anderes fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13265 /* ~"Vergiß es. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 29.0 33.1 34.0 36.0 37.0
  SAY #13077 /* ~Eisennagel kratzt sich am Kopf. "Im Stock gibt's eigentlich nur zwei Arten von Arbeit... man kann Klugschädlinge fangen oder Totenbüchler einsammeln.~ */
  IF ~~ THEN REPLY #13196 /* ~"Klugschädlinge einfangen?"~ */ GOTO 31
  IF ~~ THEN REPLY #13197 /* ~"Totenbüchler...sammeln?"~ */ GOTO 32
  IF ~~ THEN REPLY #13198 /* ~"Was, wenn ich was suche, wo ich mich amüsieren kann?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13199 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13200 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13201 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13202 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13266 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #13078 /* ~"Ja. Die Stadt Sigil zahlt dir was für die Schwänze der kleinen Mistviecher. Das örtliche Büro is südlich von hier, und der Mann da drin kann dir mehr erzählen."~ */
  IF ~~ THEN REPLY #13203 /* ~"Was hast du noch mal gesagt über 'Totenbüchler' einsammeln?"~ */ GOTO 32
  IF ~~ THEN REPLY #13204 /* ~"Was, wenn ich was suche, wo ich mich amüsieren kann?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13205 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13206 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13207 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13208 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13267 /* ~"Dann sollte ich vielleicht mal mit ihm reden. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #13079 /* ~"Die Staubmenschen zahlen einem Schleifer, der ihnen Totenbüchler bringt, Klimper... von wegen die Straßen sauberhalten und so. Die Dussel, die so ihren Lebensunterhalt bestreiten, werden Sammler genannt... das sind Aasgeier wie ich - aber Nägel stinken nich so wie Totenbüchler." Sie grinst.~ */
  IF ~~ THEN REPLY #13209 /* ~"Was hast du noch mal gesagt über Klugschädlinge einfangen?"
~ */ GOTO 31
  IF ~~ THEN REPLY #13210 /* ~"Was, wenn ich was suche, wo ich mich amüsieren kann?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13211 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13212 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13213 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13214 /* ~"Das ist wohl wahr. Laß mich dich noch was anderes fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13268 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 29.1 30.2 31.1 32.1 34.1 37.1
  SAY #13080 /* ~"Tja, das hängt davon ab, wie du dich am liebsten amüsierst. Die besseren Bars hier sind der Staubfänger und die Schwelende Leiche. Die Kundschaft da is ganz OK, aber das hängt eben auch wieder davon ab, nach was für Gesellschaft dir so is." Sie wirft einen Blick auf Annah, aber der Tiefling ignoriert sie.~ */
  IF ~~ THEN REPLY #13215 /* ~"Wie finde ich diese Schuppen?"~ */ DO ~SetGlobal("Know_Dustman_Bar","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #13216 /* ~"Wie sieht's hier mit Arbeit aus?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13217 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13218 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13219 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13220 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13269 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 29.2 30.3 31.2 32.2 33.2 36.1
  SAY #13081 /* ~"Tja, so ziemlich jeder im Stock bedeutet Ärger... und nach deinem Aussehen zu urteilen, gehörst du da auch dazu! Paß einfach auf, in wessen Nähe du gerade redest, das is schon alles." Sie sieht dich nochmals abschätzend an. "Ich bin sicher, du kannst auf dich selbst aufpassen... und deine süße Freundin sieht auch ganz schön hart aus, das tut sie." Eisennagel sieht Annah erwartungsvoll an, aber die jüngere Frau ignoriert die Bemerkung.~ */
  IF ~~ THEN REPLY #13221 /* ~"Wie sieht's hier mit Arbeit aus?"~ */ GOTO 30
  IF ~~ THEN REPLY #13222 /* ~"Was, wenn ich was suche, wo ich mich amüsieren kann?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13223 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13224 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13225 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 8.7
  SAY #13082 /* ~Sie nickt Annah zu. "Deine hübsche Begleiterin sieht selbst wie jemand aus dem Stock aus, weißte... hast du sie darüber schon viel gefragt?" Eisennagel lächelt den Tiefling an, obwohl ihr kaputtes Auge die Wirkung ein wenig verdirbt.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 88
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #13083 /* ~Eisennagel denkt einen Moment lang nach und kratzt sich am Kinn. "Die Bar 'Zum Staubfänger' is in der Nähe der Leichenhalle; einfach nach Südwesten vom Eingangstor. Die 'Schwelende Leiche' - wo ich selbst eher hingehen würd - ist östlich von hier. Ich würd dich ja hinbringen, um auch einen zu trinken, aber ich hab' leider zuviel zu tun im Moment."~ */
  IF ~~ THEN REPLY #13226 /* ~"Wie sieht's hier mit Arbeit aus?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13227 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13228 /* ~"Irgendwas, wovor man sich hier in acht nehmen muß?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13229 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13230 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13270 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 37 // from: 29.3 30.4 31.3 32.3 33.3 36.2
  SAY #13259 /* ~"Tja, so ziemlich jeder im Stock bedeutet Ärger... und nach deinem Aussehen zu urteilen, gehörst du da auch zu! Ich hab' gehört, daß ein wirklich gefährliches Vollblut rumzieht, das nach Ärger sucht und sein Schwert rot färben will. Noch dazu von nobler Herkunft, nach seinem Aussehen zu schließen." Sie sieht dich nochmals abschätzend an. "Ich bin sicher, du kannst selbst auf dich aufpassen... und deine kleine Freundin sieht auch ganz schön hart aus." Eisennagel sieht Annah erwartungsvoll an, aber Annah ignoriert die Bemerkung.~ */
  IF ~~ THEN REPLY #13260 /* ~"Wie sieht's hier mit Arbeit aus?"~ */ GOTO 30
  IF ~~ THEN REPLY #13261 /* ~"Was, wenn ich was suche, wo ich mich amüsieren kann?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13262 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13263 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #13264 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 38 // from: 8.0
  SAY #48400 /* ~Nägel nickt langsam. "Es ist ein Portal, weißt du. Bin ganz zufällig drüber gestolpert... Du mußt nichts weiter tun, als irgendwelchen Müll in der Hand zu halten, wenn du drauf zu gehst, dann kannst du einfach durchgehen. In dem Portal ist ein kleiner Raum, und ein Tor, das unter die Erde führt, aber ich hab mir gedacht, es hat keinen Sinn, mich in Gefahr zu bringen, also bin ich gleich wieder zurück. Hier..." Sie gibt dir eine Handvoll Müll. "Benutz das, wenn du willst. Ich wollt's sowieso wegschmeißen."~ */
  IF ~~ THEN REPLY #48401 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #48402 /* ~"Danke, Eisennagel. Leb wohl."~ */ GOTO 5
END
