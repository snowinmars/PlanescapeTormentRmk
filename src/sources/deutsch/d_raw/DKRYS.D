// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKRYS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1800 /* ~Du siehst eine kühle, gefaßte Frau. Ihr Gesicht ist hart und entschlossen. Ihre Stimme ist tief und bestimmt. "Ich bin Krystall, Anführerin dieser Klingenengel. Du befindest dich in unserem Heim. Was willst Du von mir?"~ */
  IF ~~ THEN REPLY #3818 /* ~"Erzähl mir was von dir."~ */ GOTO 1
  IF ~~ THEN REPLY #3819 /* ~"Erzähl mir von den Klingenengeln."~ */ GOTO 2
  IF ~~ THEN REPLY #3820 /* ~"Erzähl mir von der Gasse."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3821 /* ~"Ich suche Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3822 /* ~"Ich suche nach einem Journal."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3823 /* ~"Schwarzrose will deinen Tod, und ich bin gekommen, um dich zu töten."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("RW","GLOBAL",2)
~ THEN REPLY #3824 /* ~"Der Verrottete William will deinen Tod, und ich bin gekommen, um dich zu töten."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3825 /* ~"Nichts."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0
  SAY #2812 /* ~Sie zuckt die Achseln. "Ich bin die Anführerin der Klingenengel. Das ist alles, was du wissen mußt. Ich habe sie erschaffen; sie folgen meinen Befehlen. Nun, was willst du von mir?"~ */
  IF ~~ THEN REPLY #3826 /* ~"Erzähl mir was von dir."~ */ GOTO 1
  IF ~~ THEN REPLY #3827 /* ~"Erzähl mir von den Klingenengeln."~ */ GOTO 2
  IF ~~ THEN REPLY #3828 /* ~"Erzähl mir von der Gasse."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3829 /* ~"Ich suche Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3830 /* ~"Ich suche nach einem Journal."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3831 /* ~"Schwarzrose will deinen Tod, und ich bin gekommen, um dich zu töten."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3832 /* ~"Nichts."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #2813 /* ~"Wir kamen hierher, als größere Banden die Müll-Labyrinthe in der Nähe des Lumpensammler-Platzes übernahmen. Ungefähr zur gleichen Zeit kamen auch die Dunkelgassen-Schlitzer, die sich auf der anderen Seite der Gasse eine Absteige eingerichtet haben. Sie sind ein Ausbund von mordenden Schlägern", und hier unterbricht sie. "Wir sind auch Schläger, aber wir töten nur, wenn es unbedingt sein muß. Wir müssen nur unseren Lebensunterhalt verdienen, und in unserer Lage geht das am besten, indem wir einen Wegzoll verlangen."~ */
  IF ~~ THEN REPLY #3833 /* ~"Ist doch bestimmt sehr einträglich."~ */ GOTO 7
  IF ~~ THEN REPLY #3834 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2
  SAY #2814 /* ~"Der Ort ist abgebrannt, weil so'n übergeschnappter Zauberwerfer sich in den Kopf gesetzt hatte, daß er in Schutt und Asche besser aussähe. Seitdem ist die Gegend ein Umschlagplatz für Kriminelle und Gangster."~ */
  IF ~~ THEN REPLY #3835 /* ~"Dich eingeschlossen?"~ */ GOTO 8
  IF ~~ THEN REPLY #3836 /* ~"Ich verstehe. Also, ich muß jetzt weiter. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.3 5.0
  SAY #2815 /* ~Sie zischt dich an: "Wurmhaar? Den kannst du unter'm Lumpensammler-Platz finden. Frag da nochmal nach. Du wirst bestimmt von jemandem bemerkt werden."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3837 /* ~"Hast du hier irgendwo ein Journal gesehen?"~ */ GOTO 5
  IF ~~ THEN REPLY #3839 /* ~"Danke. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.4 4.0
  SAY #2817 /* ~"Ein Journal? Ein Buch? Hier? In der Gasse? Ha! Tut mir leid, aber alles Brennbare wird hier zum Kochen verwendet."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3841 /* ~"Also gut. Weißt du, wo ich einen Mann namens Pharod finden kann?"~ */ GOTO 4
  IF ~~ THEN REPLY #3843 /* ~"Also, besten Dank. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.7 1.6 2.1 3.1 4.1 5.1 7.0 8.0
  SAY #2818 /* ~"Bevor du gehst, muss ich dich um einen Gefallen bitten. Dieses Stück der Gasse ist nicht groß genug für uns und die Dunkelgassen-Schlitzer. Wir haben Herz. Sie nur Hass. Töte ihren Anführer, den verrotteten William, und wir werden dir für den Rest deines Lebens freien Durchgang durch die Gasse gewähren. Du kommst oft genug hier durch, sodass dir dadurch eine Menge Ärger erspart wird."~ */
  IF ~~ THEN REPLY #3844 /* ~"Erzähl mir von deiner Gang."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~Ich bin von Krystall, der Anführerin der Klingenengel in der Gasse der Gefährlichen Ecken, gebeten worden, ihren Hauptrivalen, einen Mann namens Verrotteter William, zu beseitigen. Dafür erhalte ich dann in Zukunft freien Durchgang durch die Gasse.~ */ GOTO 11
  IF ~~ THEN REPLY #3845 /* ~"Hört sich gut an. Wir sind im Geschäft."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ JOURNAL #31879 /* ~Ich bin von Krystall, der Anführerin der Klingenengel in der Gasse der Gefährlichen Ecken, gebeten worden, ihren Hauptrivalen, einen Mann namens Verrotteter William, zu beseitigen. Dafür erhalte ich dann in Zukunft freien Durchgang durch die Gasse.~ */ GOTO 9
  IF ~~ THEN REPLY #3846 /* ~"Ich bin kein Killer."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~Ich bin von Krystall, der Anführerin der Klingenengel in der Gasse der Gefährlichen Ecken, gebeten worden, ihren Hauptrivalen, einen Mann namens Verrotteter William, zu beseitigen. Dafür erhalte ich dann in Zukunft freien Durchgang durch die Gasse.~ */ GOTO 10
  IF ~  Dead("RWill")
~ THEN REPLY #37811 /* ~"Er ist bereits tot."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 7 // from: 2.0
  SAY #2819 /* ~"Nein. Ist es nicht. Für uns gibt es einfach nichts Besseres. Wir sind Stockbewohner. Und auch meine spärliche Erziehung bringt mich hier nicht heraus. Keiner will einen Stockbewohner, und deshalb passen wir auf, daß wir nicht voll und ganz ignoriert werden."~ */
  IF ~~ THEN REPLY #3847 /* ~"Genau, was auch immer. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #2820 /* ~"Ja. Aber ich denke mir, wenn wir die Gasse für uns behielten und die Schlitzer loswürden, könnten wir es hier eine Zeitlang ganz gut aushalten."~ */
  IF ~~ THEN REPLY #3848 /* ~"Das mag sein. Leb wohl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 6.1 10.1 11.0 12.0 14.0
  SAY #2821 /* ~"Ich freue mich schon darauf, von deinem Erfolg zu hören. Komm wieder und erzähl mir, wenn du's vollbracht hast, ja? Viel Glück."~ */
  IF ~~ THEN REPLY #3851 /* ~"Leb wohl."~ */ JOURNAL #3853 /* ~Ich habe eingewilligt, den Verrotteten William zu töten.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #2822 /* ~"Vielleicht auch nicht. Du hast die Wahl, einen tollen Hund und seine Meute zu töten oder jedesmal zu zahlen, wenn du durch die Gasse willst. Die Wahl liegt allein bei Dir."~ */
  IF ~~ THEN REPLY #3854 /* ~"Vergiß es. Das mach ich nicht."~ */ GOTO 12
  IF ~~ THEN REPLY #3855 /* ~"Also, dann mach ich's."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #3369 /* ~"Wir sind Umherziehende. Wir wurden immer wieder dazu gezwungen, weiterzuziehen. Wir haben uns hier zur selben Zeit niedergelassen wie der Verrottete William und die Dunkelgassen-Schlitzer, und nun müssen wir um unser Leben fürchten. Wir erheben nur ein wenig Zoll für den Durchgang. Sie nehmen Leben. Wir sind im Grunde anständige Leute. Sie sind schlecht und werden von einem übelgesinnten Schurken angeführt."~ */
  IF ~~ THEN REPLY #3856 /* ~"Ich werde ihn töten."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3857 /* ~"Hört sich an, als wäre er schon eher mein Typ. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #3858 /* ~"Ich werde es nicht tun."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.2
  SAY #3801 /* ~"Das wird mich nicht davon abhalten, dich jedes Mal wieder zu fragen, wenn du hier vorbeikommst. Das muß einfach erledigt werden."~ */
  IF ~~ THEN REPLY #3859 /* ~"Dann sollte ich es wohl besser tun, nehme ich an."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3860 /* ~"Ich werde es trotzdem nicht tun. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Krystall","GLOBAL",0)
GlobalLT("Krystall","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #3802 /* ~"Bist du weitergekommen bei dem Versuch, den Verrotteten William ins Totenbuch einzutragen?"~ */
  IF ~  Global("Krystall","GLOBAL",1)
~ THEN REPLY #7729 /* ~"Ich hab' dir doch gesagt, daß ich es nicht tun werde!"~ */ GOTO 14
  IF ~  !Dead("Rwill")
~ THEN REPLY #9345 /* ~"Noch nicht."~ */ GOTO 15
  IF ~  Dead("Rwill")
~ THEN REPLY #34415 /* ~"Ja, er ist tot. Du brauchst dir wegen ihm oder seiner Gang keine Sorgen mehr zu machen."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3803 /* ~"Ich habe dir doch gesagt, daß ich dich so lange fragen würde, bis du endlich einwilligst, es zu tun."~ */
  IF ~~ THEN REPLY #34416 /* ~"Wenn du dann endlich aufhörst, mich zu nerven, dann mach ich's."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #34417 /* ~"Ich mache es trotzdem nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #3804 /* ~"Warum redest du dann überhaupt mit mir? Dieser Auftrag muß einfach erledigt werden!" Sie wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #34418 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.3 13.2
  SAY #3805 /* ~"Erledigt? Der Verrottete William ist nicht mehr? Dir gilt mein Dank, Reisender, und du wirst nie wieder Zoll zahlen müssen für den Durchgang durch die Gasse der gefährlichen Ecken. Du mußt nur noch eins für mich tun."~ */
  IF ~~ THEN REPLY #34419 /* ~"Vergiß es."~ */ GOTO 17
  IF ~~ THEN REPLY #34420 /* ~"Was wäre das?"~ */ GOTO 17
  IF ~~ THEN REPLY #34421 /* ~"Was springt für mich dabei raus?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #3806 /* ~"Es gibt da einen gefährlichen Mörder, einen einsamen Wolf, der auf den Namen 'Schwarzrose' hört. Er macht Jagd auf meine Leute. Ich bitte dich, ihm ein Ende zu bereiten."~ */
  IF ~~ THEN REPLY #34422 /* ~"Okay."~ */ GOTO 19
  IF ~~ THEN REPLY #34423 /* ~"Was springt für mich dabei raus?"~ */ GOTO 18
  IF ~~ THEN REPLY #34424 /* ~"Kein Interesse. Leb wohl."~ */ GOTO 20
  IF ~  Dead("BlackR")
~ THEN REPLY #37814 /* ~"Er ist auch tot."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1
  SAY #3807 /* ~"Klimper. Münze. Ziemlich viel davon. Bist du interessiert?"~ */
  IF ~~ THEN REPLY #34425 /* ~"Ja."~ */ GOTO 19
  IF ~~ THEN REPLY #34426 /* ~"Nein."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #3808 /* ~"Dann such den übergeschnappten Schwarzrose hier in der Gasse und schreib ihn ins Totenbuch. Komm wieder, wenn er tot ist, und ich werde dich entlohnen."~ */
  IF ~~ THEN REPLY #34427 /* ~"Abgemacht. Auf bald."~ */ JOURNAL #34428 /* ~Gibt es irgend jemanden, den Krystall nicht tot sehen möchte? Jetzt soll ich einen Wachenden namens Schwarzrose finden und ihn auch ausschalten. Sie hat mir für diese Aufgabe bare Münze und Freundschaft versprochen.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2 18.1
  SAY #3809 /* ~Sie lächelt. "Dir ist natürlich klar, daß ich dich fortwährend danach fragen werde, als ob du eingewilligt hättest. Bis zum nächsten Mal dann, leb wohl."~ */
  IF ~~ THEN REPLY #34429 /* ~"Super. Auf bald."~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #3810 /* ~"Hast du Schwarzrose gefunden und ihn aus der Gasse beseitigt?"~ */
  IF ~  !Dead("BlackR")
~ THEN REPLY #34430 /* ~"Noch nicht."~ */ GOTO 24
  IF ~  Dead("BlackR")
~ THEN REPLY #34431 /* ~"Ja. Du brauchst dir seinetwegen keine Sorgen mehr zu machen."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 17.3 21.1
  SAY #3812 /* ~Sie gibt dir einen großen, geflickten Geldbeutel. "Dir gebührt mein Dank und der Dank der Klingenengel. Laß uns als Freunde auseinandergehen; wir werden dich im Gedächtnis behalten."~ */
  IF ~~ THEN REPLY #34432 /* ~"Sicher. Leb wohl."~ */ JOURNAL #34433 /* ~Ich habe einen Beutel voller Münzen für meine Bemühungen erhalten, Schwarzrose zu eliminieren. Noch dazu eine ziemlich hübsche Summe.~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #3814 /* ~"Sei gegrüßt, Freund. Mein Dank gebührt Dir. Fühl dich in der Gasse - so bescheiden sie auch sein mag - wie zu Hause. Leb wohl."~ */
  IF ~~ THEN REPLY #34434 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #3816 /* ~"Bitte versuch's. Er dezimiert meine Leute."~ */
  IF ~~ THEN REPLY #34435 /* ~"Ich werde weitersuchen. Leb wohl."~ */ EXIT
END
