// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAKKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAKKON~

IF ~~ THEN BEGIN 0 // from:
  SAY #2844 /* ~Ich bin Dak'kon. Ein Githzerai. Ein Mitglied der Gruppe. Momentan habe ich nichts zu sagen. Aber du solltest dir mal meine coolen Kampfanimationen ansehen. Schade, daß es keine fiesen Chambara-Filmanimationen für die von mir getöteten Monster gibt...
Dak'kon: "Nimm dich vor meinem Schwert in acht: kawusch!"
Schläger aus dem Stock: "Gaaahh... munen nariiii..." *Sssssssss* <--- Arterienblut spritzt *wumm*.
Dak'kon: "Fmm." *sching* <-- *karach*. Das Schwert wird in die Scheide gesteckt.
(Kirschblüten fallen vom oberen Bildschirmrand herab.)~ */
  IF ~~ THEN REPLY #2845 /* ~Später, Dak'kon: Kann's gar nicht abwarten, daß du zur Gruppe gehörst.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0
  SAY #6855 /* ~Dak'kon nickt.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7000 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7001 /* ~"Frag ihn, wer er ist."
~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7002 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7003 /* ~"Frag ihn, was er macht."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7004 /* ~"Frag ihn, was er macht."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7005 /* ~"Frag ihn, was er macht."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7006 /* ~"Bitte ihn, uns etwas über die Dame der Schmerzen zu erzählen."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7007 /* ~"Bitte ihn, uns etwas über Fell zu erzählen."~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7008 /* ~"Macht nichts. Dann gehen wir eben."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6856 /* ~"Er sagt, er sei ein Dabus."~ */
  IF ~~ THEN REPLY #7009 /* ~"Kannst du ihm noch mehr Fragen stellen?"~ */ GOTO 1
  IF ~~ THEN REPLY #7010 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6857 /* ~"Er sagt, daß er seinen Pflichten nachkommt."~ */
  IF ~~ THEN REPLY #7011 /* ~"Kannst du ihm noch mehr Fragen stellen?"~ */ GOTO 1
  IF ~~ THEN REPLY #7012 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6471 /* ~"Mein Begleiter würde sich gerne mit dir über die Funktion dieses Apparats unterhalten. Darf er im Namen von uns beiden sprechen?"~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 35
END

IF ~~ THEN BEGIN 5 // from:
  SAY #6473 /* ~"Sie gehört dem 'Volk' an. Ihre Male erzählen von einem, der den Pfad des Limbus gegangen ist und daran gehindert wurde, das Heim unserer Vorfahren zu *kennen*. Ihre Male fordern alle Githzerai auf, ihr beizustehen, und sie erzählen den Githzerai, daß sie noch immer dem 'Volk' angehört. Ihre Ehrfurcht vor mir ist die Ehrfurcht, die allen *Zerth* bezeugt wird."~ */
  IF ~~ THEN REPLY #7999 /* ~"Also gut. Kel'lera, Ich hätte da ein paar Fragen für dich..."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 6 // from:
  SAY #5688 /* ~"Es wäre mir eine Ehre, einen anderen Ausgestoßen, einen anderen Exilierten kennenzulernen. Vielleicht mildert sich für uns beide der Schmerz der Schande, wenn wir sie gemeinsam ertragen."~ */
  IF ~~ THEN REPLY #5689 /* ~"Gut für dich. Das wollte ich gar nicht wissen. Ich hätte dann noch ein paar Fragen an diesen anderen Schlucker hier."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~GFWEAPS~ 14
  IF ~~ THEN REPLY #5690 /* ~"Wir werden noch früh genug mit ihr sprechen, mein Freund. In der Zwischenzeit hätte ich da noch ein paar Fragen an unseren Freund hier."~ */ EXTERN ~GFWEAPS~ 14
END

IF ~~ THEN BEGIN 7 // from:
  SAY #8694 /* ~Dak'kon spricht langsam, so als wolle er den Githzerai besänftigen. "Seine Worte sind nicht das Evangelium der Anarchisten, seine Vulgarität hat keine Absicht."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8994 /* ~"Oh ja, so ist es. Vergiß nicht deine Stellung, Dak'kon. Du bist mein Sklave, und du *wirst* mir gehorchen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_4","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8995 /* ~"Oh doch, das tut sie. Ich kann hier keinen Moment länger stehen und zuhören, wie ihr Gith-Hunde euch gegenseitig anbellt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_4","GLOBALLaw",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8996 /* ~"Ich habe dich gekränkt, das tut mir leid. Kannst du mir verzeihen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Githzerai_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Githzerai_1","GLOBALGood",1)
~ EXTERN ~DGITH~ 9
  IF ~~ THEN REPLY #8997 /* ~"Schon gut, Dak'kon. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #8695 /* ~"Ich höre in seiner Rede die Wahrhaftigkeit und Authorität eines Anarchisten. Meinem Bewußtsein ist es nicht erlaubt... in dieser Angelegenheit gespalten zu sein."~ */
  IF ~~ THEN REPLY #8998 /* ~Warte ab, was der Gith tut.~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #8999 /* ~"Wir halten zusammen, Gith. Ich würde dir empfehlen nachzugeben."~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9000 /* ~"Mach einen Schritt in meine Richtung, Gith, und er wird dich angreifen. Und falls du an ihm vorbeikommst, schwör ich, daß ich dich umbringen werde. Und nun weich zurück."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9001 /* ~"Genug davon. Es ist Zeit, daß du stirbst, Gith."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #8696 /* ~"Greife nicht an. Mir ist es nicht erlaubt, ungehorsam zu sein."~ */
  IF ~~ THEN REPLY #9002 /* ~Warte ab, was der Gith tut.~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9003 /* ~"Wir halten zusammen, Gith. Ich würde dir empfehlen, nachzugeben. Ich warne dich zum letzten Mal".~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9004 /* ~"Mach einen Schritt in meine Richtung, Gith, und er wird dich angreifen. Und falls du an ihm vorbeikommst, schwör ich, daß ich dich umbringen werde. Und nun weich zurück."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9005 /* ~"Genug davon. Es ist Zeit, daß du stirbst, Gith."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #8697 /* ~Dak'kon spricht wieder langsam. "T'chas Wahl ist die meine." Während er spricht, scheint seine Haut aschfahl zu werden... es klingt so, als ob jedes Wort ihn langsam umbringt. "Die Ketten sind meine eigenen. Anarchist seit hundert Jahren, keine Uhr kann messen, wie lang diese Geschichte ist. Die Angelegenheit ist so verschlungen wie Fri'hi-Wurzeln. Ihre Lösung ist im Grunde genommen unmöglich und wird vielleicht nie kommen." Dak'kon blickt warnend. "Greife nicht an, oder ich werde zu einem, der ganze Geschlechter auslöscht."~ */
  IF ~~ THEN REPLY #9006 /* ~Warte...~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9007 /* ~"Deine Wahl, Gith. Möchtest du heute hier Blut vergossen sehen?"~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9008 /* ~"Genug davon. Es ist Zeit, daß du stirbst, Gith."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #8698 /* ~Dak'kon antwortet in der gleichen Sprache. Die Satzstruktur ist eigenartig; du glaubst, daß Dak'kon folgendes gesagt hat: "Dieser ist unter den Getreuen auserwählt."~ */
  IF ~~ THEN REPLY #9009 /* ~"Was sagt er, Dak'kon?"~ */ EXTERN ~DGITH~ 56
  IF ~~ THEN REPLY #9010 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXTERN ~DGITH~ 56
END

IF ~~ THEN BEGIN 12 // from:
  SAY #8699 /* ~Dak'kon antwortet wie zuvor; der Tonfall hat sich ein wenig geändert, aber die Bedeutung scheint die gleiche zu sein. "Dieser ist unter den Getreuen auserwählt." Dak'kon wird still, als ob er den Worten Zeit lassen will, sich ins Bewußtsein zu graben. "Der, der an meiner Seite ist, spricht. Wirst du ihn anhören?"~ */
  IF ~~ THEN REPLY #9011 /* ~Hör ihm zu.~ */ EXTERN ~DGITH~ 58
  IF ~~ THEN REPLY #9012 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #8700 /* ~Dak'kons Entgegnung ist kurz, aber er spricht so langsam, als ob er sich jedes Wort einzeln abringen muß. "T'chas Wahl ist auch die meinige geworden."~ */
  IF ~~ THEN REPLY #9013 /* ~Hör ihm zu.~ */ EXTERN ~DGITH~ 59
  IF ~~ THEN REPLY #9014 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #8701 /* ~Dak'kon spricht wieder langsam. "Die Ketten sind meine eigenen." Während er spricht, scheint seine Haut aschfahl zu werden... es klingt so, als ob jedes Wort ihn langsam umbringt. "Anarchist seit hundert Jahren, keine Uhr kann messen, wie lang diese Geschichte ist. Die Angelegenheit ist so verschlungen wie Fri'hi-Wurzeln. Ihre Lösung ist im Grunde genommen unmöglich und wird vielleicht nie kommen." Dak'kon blickt warnend und spricht dann mit fester Stimme. "Der, der an meiner Seite ist, spricht. Wirst du ihn anhören?"~ */
  IF ~~ THEN REPLY #9015 /* ~Warte.~ */ EXTERN ~DGITH~ 60
  IF ~~ THEN REPLY #9016 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #8702 /* ~Dak'kon wendet sich zu dir. "Er wird dich anhören."~ */
  IF ~~ THEN REPLY #9017 /* ~"Wenn du ihn fragen könnstest, ob..."~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9018 /* ~"Dak'kon, das macht nichts. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #8703 /* ~Dak'kon nickt, aber er tut dies so langsam, als ob es ihn schmerzt. "Du... irrst dich. Dieser Mann hat keinen der Menschen getötet."~ */
  IF ~~ THEN REPLY #9019 /* ~"Siehst du? Wirst du jetzt wohl diese Klinge wegstecken?"~ */ EXTERN ~DGITH~ 72
END

IF ~~ THEN BEGIN 17 // from:
  SAY #8704 /* ~Dak'kon wendet sich zum Githzerai und spricht, diesmal jedoch langsamer und getragener als zuvor. Die Entgegnung des Githzerai ist kurz.~ */
  IF ~~ THEN REPLY #9021 /* ~"Was hat er gesagt?"~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9022 /* ~"Schon gut, Dak'kon. Laß uns gehen."
~ */ EXIT
END

IF ~  Global("Dakkon","GLOBAL",0)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #14980 /* ~Der Mann vor dir ist *alt*. Seine trockene, gelbe Haut hat die Narben eines Mannes, der überallhin gereist ist und nie lange genug an einem Ort verweilte. Sein faltiges Gesicht ist unmenschlich eckig, und seine Ohren ragen weit aus seinem Schädel heraus und verlaufen zu Spitzen. Er trägt eine lose sitzende orangefarbene Tunika, und über seinen Rücken ist eine seltsame, schimmernde Klinge geschnallt. Die Klinge sieht aus wie ein Schwert mit zwei Spitzen aus einem Metall, dessen Oberfläche wie ein Ölfilm auf einem Teich wirbelt.~ */
  IF ~~ THEN REPLY #15055 /* ~"Sei gegrüßt."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #15056 /* ~Beachte den Mann nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #14982 /* ~Der Mann wendet sich dir zu, und seine Augen sehen wie polierte Kohle aus. Er starrt durch dich hindurch, und einen Moment lang fragst du dich, ob er wohl blind ist. Die Waffe nimmt plötzlich ein totes, stumpfes Schwarz an, wie die Augen des Mannes.~ */
  IF ~~ THEN REPLY #15058 /* ~"Geht's dir nicht gut?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #14984 /* ~Er sagt einen Moment lang nichts, sondern sucht einfach nur dein Gesicht mit seinen Augen ab. "Sei gegrüßt... Reisender." Seine Stimme ist ruhig und dunkel, wie ein Wind, der durch die Zweige eines großen Baumes flüstert.~ [DAK001B] */
  IF ~~ THEN REPLY #15060 /* ~"Sei gegrüßt."~ */ GOTO 21
  IF ~~ THEN REPLY #15061 /* ~"Tut mir leid, daß ich dich belästigt habe. Leb wohl."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #14985 /* ~Der Blick des Mannes trifft deinen, und seine Augen bohren sich in deine. Seine Waffe verliert ihre schwarze Farbe und nimmt ihr Schimmern wieder an, das du bemerkt hast, bevor du mit ihm gesprochen hast. "Deine müden Augen lassen darauf schließen, dass du von weit her kommst."~ [DAK001C] */
  IF ~~ THEN REPLY #15062 /* ~"Das kann man wohl sagen."~ */ GOTO 24
  IF ~~ THEN REPLY #15063 /* ~"Tut mir leid, daß ich dich belästigt habe. Leb wohl."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #14986 /* ~"Halte ein." Die Stimme des Mannes ist ruhig und dunkel, wie ein Wind, der durch die Zweige eines großen Baumes flüstert. Aus irgendeinem Grund findest du seine Stimme beruhigend. Als du dich umdrehst, siehst du, wie er dein Gesicht mit seinen Augen absucht. "Deine Augen haben das Gewicht eines Mannes, der weit gereist ist, um an diesem Ort zu sein."~ */
  IF ~~ THEN REPLY #15064 /* ~"Das kann man wohl sagen."~ */ GOTO 24
  IF ~~ THEN REPLY #15065 /* ~"Ich wollte dich nicht stören. Leb wohl."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.1
  SAY #14987 /* ~"Du hast mich nicht gestört. Meine Gedanken werden sich halten." Der Blick des Mannes wankt nicht, und du findest es schwierig, dich von ihm wegzudrehen, solange seine Aufmerksamkeit auf dir ruht. "Ich bin *bekannt* als Dak'kon." Die Betonung auf dem Wort *bekannt* kommt dir seltsam vor... und gleichzeitig doch vertraut. "Du... bist mir nicht *bekannt*."~ */
  IF ~~ THEN REPLY #15066 /* ~"Ich weiß nicht, wer ich bin."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15067 /* ~"Ich wollte dich nicht stören. Leb wohl."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 67
END

IF ~~ THEN BEGIN 24 // from: 21.0 22.0
  SAY #14989 /* ~Der Blick des Mannes weicht deinem nicht aus. "Ich bin *bekannt* als Dak'kon." Die Betonung auf dem Wort *bekannt* kommt dir seltsam vor... und gleichzeitig doch vertraut. "Du... bist mir nicht *bekannt*."~ */
  IF ~~ THEN REPLY #15068 /* ~"Ich weiß nicht, wer ich bin."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15069 /* ~"Ich bin zu Besuch in dieser Stadt."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #15070 /* ~"Ich kenne dich nicht."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #14990 /* ~"Das ist zum Besten. Wenn du dich selbst *kennst*, gibt es auf den Ebenen nur noch wenig, daß es wert wäre, dir *bekannt* zu sein." Er verstummt einen Moment lang und betrachtet dich weiterhin prüfend mit seinen kohlrabenschwarzen Augen. "Ich möchte den Grund *kennen*, aus dem du in diese Stadt gekommen bist."~ */
  IF ~~ THEN REPLY #15071 /* ~"Ich suche Antworten... ich habe viele Fragen."~ */ GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14991 /* ~Dak'kon ist einen Moment lang stumm und sieht dich weiterhin mit seinen kohlrabenschwarzen Augen prüfend an. "Die Ebenen zählen viele Unendlichkeiten, und doch bist du hier. Ich möchte den Grund *kennen*, warum du in diese Stadt gekommen bist."~ */
  IF ~~ THEN REPLY #15072 /* ~"Ich suche Antworten... ich habe viele Fragen."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #14993 /* ~"Dann sind wir in dieser Sache unter demselben Himmel." Dak'kon ist einen Moment lang stumm und sieht dich weiterhin mit seinen kohlrabenschwarzen Augen prüfend an. "Die Ebenen zählen viele Unendlichkeiten, und doch bist du hier. Ich möchte den Grund *kennen*, warum du in diese Stadt gekommen bist."~ */
  IF ~~ THEN REPLY #15073 /* ~"Ich suche Antworten... ich habe viele Fragen."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 25.0 26.0 27.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.1 38.7 39.3 40.2 41.1 42.0 43.2 44.2 45.2 46.2 47.2 48.2 49.2 50.2 51.1 52.1 53.1 54.1 55.1 56.1 57.0 58.3 59.2 60.1 61.2 62.3 63.2 64.0 65.0 66.0 73.0
  SAY #14995 /* ~"Stell deine Fragen. Ich werde dich anhören."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15074 /* ~"Deine Züge sind... mir unvertraut. Was bist du?"~ */ GOTO 29
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15075 /* ~"Kannst du mir noch mal was über die Githzerai erzählen?"~ */ GOTO 33
  IF ~~ THEN REPLY #15076 /* ~"Kannst du mir was über diese Stadt erzählen?"~ */ GOTO 35
  IF ~~ THEN REPLY #15077 /* ~"Du scheinst 'kennen' besonders zu betonen. Was meinst du damit?"~ */ GOTO 52
  IF ~~ THEN REPLY #15078 /* ~"Was hast du da für eine Klinge?"~ */ GOTO 58
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15079 /* ~"Kennst du einen Mann namens Pharod? Ich habe gehört, daß er etwas über mich weiß."~ */ GOTO 65
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15080 /* ~"Ich habe ein Journal verloren. Weißt du, wo es sein könnte?"~ */ GOTO 66
  IF ~~ THEN REPLY #15081 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14997 /* ~"Ein Githzerai."~ */
  IF ~~ THEN REPLY #15082 /* ~"Ein Githzerai?"~ */ GOTO 30
  IF ~~ THEN REPLY #15083 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15084 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 30 // from: 29.0 62.0
  SAY #14998 /* ~"Ein Githzerai ist einer vom 'Volk'."~ */
  IF ~~ THEN REPLY #15125 /* ~"Einer des Volkes?"~ */ GOTO 31
  IF ~~ THEN REPLY #15126 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15127 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #14999 /* ~"Ein Githzerai."~ */
  IF ~~ THEN REPLY #15128 /* ~"Ja, aber was genau sind die Githzerai?"~ */ GOTO 32
  IF ~~ THEN REPLY #15129 /* ~"Danke für die Erklärung. Dadurch ist mir einiges klarer. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15130 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15000 /* ~Dak'kon ist einen Moment lang still, dann spricht er. "Unsere Geschichte muß dir nicht *bekannt* gemacht werden. Wir würden an der Klinge der Zeit verbluten, bevor ich auch nur einen Bruchteil der Geschichten unseres Volkes erzählt hätte."~ */
  IF ~~ THEN REPLY #15131 /* ~"Eure Geschichten interessieren mich nicht... ich möchte wissen, wie euer Volk heute lebt."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 33
  IF ~~ THEN REPLY #15132 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15133 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 33 // from: 28.1 32.0 62.1
  SAY #15002 /* ~Dak'kon ist einen Moment lang still. "*Kenne* diese Antwort und akzeptiere sie: Wir sind das 'Volk', das sich ein Heim auf der sich ständig wandelnden Ebene des Limbus machen." Mit einer geschickten Bewegung zieht Dak'kon die Klinge von seinem Rücken hervor und hält sie vor sich.~ */
  IF ~~ THEN REPLY #15134 /* ~Warte ab, was passiert.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 34
  IF ~~ THEN REPLY #15135 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15136 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #15004 /* ~"Wir formen die Limbus-Materie mit unserem Geist. Wir schmieden Städte kraft unserer Gedanken." Du siehst, wie mehrere kleine Wellen von der Mitte der Klinge aus über das Metall laufen. Die Höhe und der Rhythmus dieser Wellen richten sich nach Dak'kons Stimme. "Wir leben in diesem Chaos und erhalten uns nur durch unser *Wissen*. Wir sind die Githzerai."~ */
  IF ~~ THEN REPLY #15137 /* ~"Was ist das da für eine Klinge... sie hat sich im Takt mit deiner Stimme bewegt."~ */ GOTO 58
  IF ~~ THEN REPLY #15138 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15139 /* ~"Nun denn. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 35 // from: 28.2
  SAY #15005 /* ~"Sie ist *bekannt* unter dem Namen 'Sigil'. Dem 'Volk' ist sie als die Stadt *bekannt*, die sich selbst nicht *kennt*."~ */
  IF ~~ THEN REPLY #15140 /* ~"Sie kennt sich selbst nicht? Was meinst du damit?"~ */ GOTO 36
  IF ~~ THEN REPLY #15141 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15142 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #15006 /* ~"Die Stadt existiert, aber sie *kennt* sich nicht. Und da sie sich nicht *kennt*, ist ihr Dasein fehlerhaft."~ */
  IF ~~ THEN REPLY #15143 /* ~"Was meinst du damit: sie ist fehlerhaft?"~ */ GOTO 38
  IF ~~ THEN REPLY #15144 /* ~"Du sprichst, als sei die Stadt lebendig."~ */ GOTO 37
  IF ~~ THEN REPLY #15145 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15146 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 37 // from: 36.1 38.6
  SAY #15007 /* ~"Sie *kennt* sich wahrscheinlich nicht so, wie wir beide uns selbst *kennen* würden - aber sie lebt. Sie wächst, sie verändert sich, und sie durchdringt den Geist ihrer Bewohner."~ */
  IF ~~ THEN REPLY #15147 /* ~"Warum hast du gesagt, daß die Stadt sich selbst nicht kennt?"~ */ GOTO 38
  IF ~~ THEN REPLY #15148 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15149 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 38 // from: 36.0 37.0 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.0
  SAY #15008 /* ~"Die Stadt besteht nur als Gegensatz zu sich selbst. Sie hat sich von den Ebenen losgelöst, will aber überall auf einmal sein. Ihre Mauern sind Türen, die jedoch stets verschlossen sind. Ein solches Dasein beweist doch, daß sie sich selbst nicht *kennt* - und damit fehlerhaft ist."~ */
  IF ~~ THEN REPLY #15150 /* ~"Was meinst du damit: diese Stadt ist überall auf einmal?"~ */ GOTO 43
  IF ~~ THEN REPLY #15151 /* ~"Ihre Mauern sind Türen?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15152 /* ~Wahrheit: "Was ist, wenn die Stadt *nicht* fehlerhaft ist? Eine Sache muß nicht geordnet sein und einen Zweck haben, um sich selbst zu kennen. Was ist, wenn diese Widersprüche Stärken sind, die du nicht erkennst?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15153 /* ~Wahrheit: "Was ist, wenn die Stadt *nicht* fehlerhaft ist? Eine Sache muß nicht geordnet sein und einen Zweck haben, um sich selbst zu kennen. Was ist, wenn diese Widersprüche Stärken sind, die du nicht erkennst?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15154 /* ~Wahrheit: "Was ist, wenn die Stadt *nicht* fehlerhaft ist, und du nur die Gründe für ihre Widersprüche nicht kennst? In allem ist Ordnung. Vielleicht gibt es ein doch Muster, das du nur nicht sehen kannst."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15155 /* ~Wahrheit: "Was ist, wenn die Stadt *nicht* fehlerhaft ist, und du nur die Gründe für ihre Widersprüche nicht kennst? In allem ist Ordnung. Vielleicht gibt es doch ein Muster, das du nur nicht sehen kannst."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #15156 /* ~"Du sprichst, als sei die Stadt lebendig."~ */ GOTO 37
  IF ~~ THEN REPLY #15157 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15158 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 39 // from: 38.2 38.3 38.4 38.5
  SAY #15010 /* ~"Auf deine Frage eine Gegenfrage: Was ist, wenn die Stadt fehlerhaft ist und voller Widersprüche steckt?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #15159 /* ~Wahrheit: "Auf *deine* Frage eine Gegenfrage: Du behauptest, das Dasein dieser Stadt sei fehlerhaft. Du nimmst das einfach so hin, anstatt nach etwas Besserem zu suchen. Das deutet darauf hin, daß du fehlerhaft bist... und daß du nicht nach Wissen suchst, sondern nur nach einer einfachen Antwort."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #15160 /* ~Wahrheit: "Auf *deine* Frage eine Gegenfrage: Du behauptest, das Dasein dieser Stadt sei fehlerhaft. Du nimmst das einfach so hin, anstatt nach etwas Besserem zu suchen. Das deutet darauf hin, daß du fehlerhaft bist... und daß du nicht nach Wissen suchst, sondern nur nach einer einfachen Antwort."~ */ GOTO 40
  IF ~~ THEN REPLY #15161 /* ~"Was hast du damit gemeint, daß die Stadt überall auf einmal ist?"~ */ GOTO 43
  IF ~~ THEN REPLY #15162 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15163 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15012 /* ~Dak'kon verstummt. "Wir können die Antworten auf unsere Fragen nicht *kennen*. Die Stadt existiert - das ist alles, was zählt."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #15164 /* ~"Trotzdem würde ich behaupten, daß wir uns selbst durch die Fragen *kennen*, die wir stellen, und die, die wir nicht stellen. Wenn wir aufhören, Fragen zu stellen, und nur akzeptieren, was wir sehen..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 41
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #15165 /* ~"Trotzdem würde ich behaupten, daß wir uns selbst durch die Fragen *kennen*, die wir stellen, und die, die wir nicht stellen. Wenn wir aufhören, Fragen zu stellen, und nur akzeptieren, was wir sehen..."~ */ GOTO 41
  IF ~~ THEN REPLY #15166 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15167 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #15014 /* ~"Dann hören wir auf, uns selbst zu *kennen*." Dak'kon spricht jetzt mit einer etwas tieferen Stimme. "Solche Worte sind bereits zuvor gesprochen worden. Ich habe sie gehört und *kenne* sie."~ */
  IF ~~ THEN REPLY #15168 /* ~"Wo hast du sie gehört?"~ */ GOTO 42
  IF ~~ THEN REPLY #15169 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15170 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15016 /* ~"Die Worte gehören mir. Früher *kannte* ich sie und *wußte*, was sie bedeuten. Ich hatte sie vergessen, bevor ich sie von dir gehört habe." Dak'kons Blick durchdringt dich. Seine Klinge verliert plötzlich ihren Glanz. Sie verblaßt immer mehr, bis sie zum Schluß ganz durchscheinend ist. Nach einem Augenblick des Schweigens blickt Dak'kon zu dir auf. "Ich würde dich auf deinem Pfad begleiten."~ */
  IF ~~ THEN REPLY #15171 /* ~"Ich werde drüber nachdenken. Aber erst hätte ich noch ein paar andere Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15172 /* ~"Okay. Eine zusätzliche Klinge könnte ich gut gebrauchen."~ */ GOTO 72
  IF ~~ THEN REPLY #15173 /* ~"Du bist alt. Was könntest du mir nützen?"
~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15175 /* ~"Nicht heute. Leb wohl."~ */ GOTO 68
END

IF ~~ THEN BEGIN 43 // from: 38.0 38.1 39.2
  SAY #15018 /* ~"Die ganze Stadt besteht aus Türen. Sie führen überall hin."~ */
  IF ~~ THEN REPLY #15174 /* ~"Wo sind diese Türen?"~ */ GOTO 44
  IF ~~ THEN REPLY #15176 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 38
  IF ~~ THEN REPLY #15177 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15178 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15020 /* ~"Sie sind überall..." Dak'kon zögert kurz. "Es heißt, jeder umschlossene Raum in dieser Stadt sei eine Tür, die an einen anderen Ort führe."~ */
  IF ~~ THEN REPLY #15179 /* ~"Ich verstehe nicht."~ */ GOTO 45
  IF ~~ THEN REPLY #15180 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 38
  IF ~~ THEN REPLY #15181 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15182 /* ~"Danke für die Information. Leb wohl."
~ */ GOTO 67
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #15021 /* ~"Stell dir die Tür zur Schwelenden Leiche vor. Wenn du dir die Tür wegdenkst, ist da immer noch der Türrahmen. Dieser ist ebenfalls ein umschlossener Raum und somit eine Tür."~ */
  IF ~~ THEN REPLY #15183 /* ~"Aber ich bin durch diese Tür gegangen, um hier reinzukommen. Es ist einfach... ein leerer Raum."~ */ GOTO 46
  IF ~~ THEN REPLY #15184 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 38
  IF ~~ THEN REPLY #15185 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15186 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #15022 /* ~"Es gibt viele unsichtbare Türen. Sie sind wie Luft - man geht durch sie hindurch und *verkennt* sie. Sie bleiben der Wahrnehmung verborgen."~ */
  IF ~~ THEN REPLY #15187 /* ~"Und diese unsichtbaren Türen sind *überall* in Sigil?"~ */ GOTO 47
  IF ~~ THEN REPLY #15188 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 38
  IF ~~ THEN REPLY #15189 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15190 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #15023 /* ~"Es heißt, jeder umschlossene Raum in Sigil sei eine Tür. Ganz sicher *weiß* man dies jedoch nicht. Türen bewegen sich. Sie verändern sich. Sie verschwinden. Sie sind alle verschlossen."~ */
  IF ~~ THEN REPLY #15192 /* ~"Verschlossen?"~ */ GOTO 48
  IF ~~ THEN REPLY #15191 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 38
  IF ~~ THEN REPLY #15193 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15194 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #15024 /* ~"Die Türen bleiben unsichtbar, solange du keinen Schlüssel hast, mit dem du sie öffnen kannst. Wenn du den richtigen Schlüssel hast, geben sich die Türen zu *erkennen*."~ */
  IF ~~ THEN REPLY #15195 /* ~"Woher weißt du, welches der richtige Schlüssel ist?"~ */ GOTO 49
  IF ~~ THEN REPLY #15196 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 38
  IF ~~ THEN REPLY #15197 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15198 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #15025 /* ~"Jede Tür hat ihren eigenen Schlüssel. Manche Schlüssel *kennt* man, andere nicht."~ */
  IF ~~ THEN REPLY #15199 /* ~"Was sind das für Schlüssel?"~ */ GOTO 50
  IF ~~ THEN REPLY #15200 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 38
  IF ~~ THEN REPLY #15201 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15202 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15026 /* ~"Es gibt genauso viele Schlüssel wie Türen. Allerdings sind sie nicht immer aus Metall. Ein Schlüssel kann das Klirren zweier Schwerter sein, ein Blutstropfen aus der Zunge eines Sterbenden, die Erinnerung an eine verblaßte Liebe oder aber ein böser Fluch. Erst wenn der passende Schlüssel gefunden ist, gibt sich die Tür als solche zu erkennen."~ */
  IF ~~ THEN REPLY #15204 /* ~"Klingt, als könnte es schwierig sein, all diese Schlüssel und Türen zu finden."~ */ GOTO 51
  IF ~~ THEN REPLY #15208 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 38
  IF ~~ THEN REPLY #15215 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15218 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #15027 /* ~"Solch eine Aufgabe ist versucht, aber nie vollendet worden. So, wie die Stadt sich ändert, ändern sich auch die Türen. Nichts, das *bekannt* ist, bleibt lange *bekannt*."~ */
  IF ~~ THEN REPLY #15220 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 38
  IF ~~ THEN REPLY #15222 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15224 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 52 // from: 28.3
  SAY #15028 /* ~"Das Dasein aller Dinge, egal, ob belebt oder unbelebt, richtet sich danach, ob sie sich selbst *kennen*."~ */
  IF ~~ THEN REPLY #15226 /* ~"Und wenn ein Mensch sich selbst nicht kennt?"~ */ GOTO 53
  IF ~~ THEN REPLY #15228 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15231 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #15030 /* ~"Wenn das Bewußtsein eines Menschen sich selbst nicht *kennt*, ist es fehlerhaft. Wenn das Bewußtsein fehlerhaft ist, ist es auch der ganze Mensch. Und alles, was ein fehlerhafter Mensch berührt, wird ebenfalls fehlerhaft." Dak'kon hält kurz inne. "Man sagt, die Hände eines fehlerhaften Mannes würden alles zerbrechen, was seine Augen erblicken."~ */
  IF ~~ THEN REPLY #15234 /* ~"Kennst du dich selbst?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #15236 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15237 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #15032 /* ~Dak'kon verstummt. Seine pechschwarzen Augen haben wieder denselben distanzierten Blick wie am Anfang.~ */
  IF ~~ THEN REPLY #15238 /* ~"Ich frage noch mal: Kennst du dich selbst?"~ */ GOTO 55
  IF ~~ THEN REPLY #15240 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15241 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #15034 /* ~Dak'kon spricht mit veränderter Stimme. Seine Worte hallen, als würde man einen großen Stein in eine Felsenschlucht werfen. Er scheint mit sich zu kämpfen. "Ich *will* nicht, daß du dies *weißt*."~ */
  IF ~~ THEN REPLY #15242 /* ~"Vielleicht war es zu nett von mir, es als Frage zu formulieren: Sag es mir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #15243 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15244 /* ~"Entschuldigung. Vergiß es. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #15036 /* ~Dak'kon spricht langsam, als würde er sich jedes Wort einzeln abringen. "Ich... habe verlernt, mich selbst zu *kennen*."~ */
  IF ~~ THEN REPLY #15245 /* ~"Warum?"~ */ GOTO 57
  IF ~~ THEN REPLY #15246 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15247 /* ~"Entschuldigung. Vergiß es. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15038 /* ~Dak'kons Stimme senkt sich zu einem Flüstern, wie Sand. "Ich *kenne* den Grund nicht. Ich *kenne* die Geschichte dessen, was geschehen ist, aber ich *kenne* das Warum nicht... und auch nicht den Weg, wie ich mich selbst wieder *kennen* kann."~ */
  IF ~~ THEN REPLY #15248 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #15249 /* ~"Entschuldigung. Vergiß es. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 58 // from: 28.4 34.0
  SAY #15039 /* ~"Es ist eine *Karach-*Klinge, ein Gegenstand, an dem man den Rang des Besitzers *erkennen* kann."~ */
  IF ~~ THEN REPLY #15250 /* ~"*Karach*? Was bedeutet das?"~ */ GOTO 61
  IF ~~ THEN REPLY #15251 /* ~"Sie ist aus einem seltsamen Metall... und hat eine fast hypnotische Wirkung, so wie sie vor- und zurückschwingt."~ */ GOTO 61
  IF ~~ THEN REPLY #15252 /* ~"Welchen Rang bezeichnet sie?"~ */ GOTO 59
  IF ~~ THEN REPLY #15253 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15254 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 59 // from: 58.2 63.1
  SAY #15040 /* ~"Die Klinge ist ein Symbol der *Zerth.* Ein *Zerth* ist jemand, der die Worte Zerthimons *kennt*. Und indem er die Worte Zerthimons *kennt*, *kennt* er gleichzeitig sich selbst."~ */
  IF ~~ THEN REPLY #15255 /* ~"Zerthimon?"~ */ GOTO 60
  IF ~~ THEN REPLY #15256 /* ~"Woraus ist diese Klinge noch mal gemacht?"~ */ GOTO 61
  IF ~~ THEN REPLY #15257 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15259 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #15041 /* ~"Zerthimon hat unsere Rasse gegründet. Er *kannte* die Githzerai, bevor sie sich selbst *kannten*. Er hat das 'Volk' definiert. Er hat ihm sein Bewußtsein gegeben."~ */
  IF ~~ THEN REPLY #15258 /* ~"Woraus ist diese Klinge noch mal gemacht?"~ */ GOTO 61
  IF ~~ THEN REPLY #15260 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15261 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 59.1 60.0
  SAY #15042 /* ~Dak'kon verstummt einen Moment lang, als würde er nach den richtigen Worten suchen. "In deine Sprache ist die nächste Übersetzung 'Chaosmaterie'. Das 'Volk' kann sie mit seinen Gedanken formen."~ */
  IF ~~ THEN REPLY #15262 /* ~"Das Volk?"~ */ GOTO 62
  IF ~~ THEN REPLY #15263 /* ~"Mit seinen Gedanken formen?"~ */ GOTO 63
  IF ~~ THEN REPLY #15264 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15265 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #15043 /* ~"Die Githzerai."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15266 /* ~"Was ist ein Githzerai?"~ */ GOTO 30
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15267 /* ~"Was sind die Githzerai noch mal?"~ */ GOTO 33
  IF ~~ THEN REPLY #15268 /* ~"Und du sagst, die Githzerai können dieses *Karach*... mit ihren Gedanken formen?"~ */ GOTO 63
  IF ~~ THEN REPLY #15269 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15270 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 63 // from: 61.1 62.2
  SAY #15044 /* ~*"Karach* wird nicht durch Hitze geformt, sondern durch *Selbsterkenntnis*. Es ist ein Spiegel, der den Willen des Besitzers auf der Oberfläche und auf der Schneide widerspiegelt. Wenn man sich selbst *kennt*, ist die Klinge hart - härter als Stahl. Wenn man sich selbst nicht *kennt*, ist sie wie Wasser - formlos und schwach."~ */
  IF ~~ THEN REPLY #15271 /* ~"Bist du bereit sie zu verkaufen?"~ */ GOTO 64
  IF ~~ THEN REPLY #15272 /* ~"Welchen Rang bezeichnet die Klinge?"~ */ GOTO 59
  IF ~~ THEN REPLY #15273 /* ~"Ich hätte da noch ein paar Fragen."
~ */ GOTO 28
  IF ~~ THEN REPLY #15274 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #15045 /* ~"In den Händen jedes anderen wäre sie nichts. Die Klinge *kennt* meinen Geist, und ich *kenne* ihre Seele. Wir sterben denselben Tod."~ */
  IF ~~ THEN REPLY #15275 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15276 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 65 // from: 28.5
  SAY #15046 /* ~"Der ist mir nicht *bekannt*."~ */
  IF ~~ THEN REPLY #15277 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15278 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 28.6
  SAY #15047 /* ~"Ich *weiß* nicht, wo es sich befinden könnte."~ */
  IF ~~ THEN REPLY #15279 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #15280 /* ~"Es gibt nichts zu sagen. Leb wohl."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 23.1 28.7 29.2 30.2 31.2 32.2 33.2 34.2 35.2 36.3 37.2 38.8 39.4 40.3 41.2 43.3 44.3 45.3 46.3 47.3 48.3 49.3 50.3 51.2 52.2 53.2 54.2 55.2 56.2 57.1 58.4 59.3 60.2 61.3 62.4 63.3 64.1 65.1 66.1
  SAY #15048 /* ~Als du gehen willst, spricht der Mann mit schriller Stimme. Zum ersten Mal seit Beginn des Gesprächs verändert sich sein Ton. "Halt." Dann wird die Stimme wieder gleichmäßiger. "Du *kennst* diese Stadt nicht. Ich könnte dich auf deinem Pfad begleiten."~ */
  IF ~~ THEN REPLY #15281 /* ~"Okay. Eine zusätzliche Klinge könnte ich gut gebrauchen."~ */ GOTO 72
  IF ~~ THEN REPLY #15282 /* ~"Du bist alt. Was könntest du mir nützen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15283 /* ~"Nicht heute. Leb wohl."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 42.3 67.2 70.1 71.1
  SAY #15049 /* ~"Hör mich an", sagt Dak'kon, als du dich umdrehst und gehen willst. Es fällt dir schwer, dich von ihm abzuwenden, solange dir seine Aufmerksamkeit gilt. "Du bist fremd in dieser Stadt. Da du sie nicht *kennst*, ist die Stadt für dich gefährlich. Zwei Klingen sind stärker als eine, auch wenn sie in der Scheide stecken." Während er spricht, siehst du, daß die Klinge sich wieder schwarz verfärbt, genau wie am Anfang.~ */
  IF ~~ THEN REPLY #15284 /* ~"Na gut. Eine zusätzliche Klinge könnte ich gut gebrauchen, Dak'kon."~ */ GOTO 72
  IF ~~ THEN REPLY #15285 /* ~"Ich soll dir zuhören, aber du willst mir nicht zuhören. Ich will nicht, daß du mich begleitest. Bleib wo du warst, als ich hereingekommen bin. Nun leb wohl."
~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY #15050 /* ~"Ich werde hier sein, wenn du zurückkommst. Gib dich zu *erkennen*, dann wird dein Pfad mein Pfad sein."~ */
  IF ~~ THEN REPLY #15286 /* ~"Ich werd's mir merken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 42.2 67.1
  SAY #15051 /* ~Dak'kons Blick verändert sich. Er scheint an dir vorbeizusehen, wie beim ersten Mal, als du mit ihm gesprochen hast. "Ich bin alt, doch ich bin weitgereist. Ich *kenne* die Kunst des Krieges. Ich *kenne* den Rhythmus dieser Stadt."~ */
  IF ~~ THEN REPLY #15287 /* ~"Aber..."~ */ GOTO 71
  IF ~~ THEN REPLY #15288 /* ~"Nicht heute. Leb wohl."~ */ GOTO 68
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #15052 /* ~"Wo du im Dunkeln tappst, finde ich sicher mein Ziel. Türen, die deinen Händen verschlossen bleiben, werden in meinen Händen zu Korridoren. Wenn du gelernt hast, diese Dinge durch mich zu *kennen*, bist du stark. Ich könnte dich auf deinem Pfad begleiten."~ */
  IF ~~ THEN REPLY #15289 /* ~"Na gut, ich nehme dein Angebot an."~ */ GOTO 72
  IF ~~ THEN REPLY #15290 /* ~"Das glaube ich nicht. Leb wohl."~ */ GOTO 68
END

IF ~~ THEN BEGIN 72 // from: 42.1 67.0 68.0 71.0 73.1
  SAY #15053 /* ~"Dein Weg ist mein Weg." Seine Stimme hört sich seltsam weit weg an; sie hallt, als spreche er aus einer großen Entfernung.~ [DAK206] */
  IF ~  GlobalLT("Dakkon","GLOBAL",2)
~ THEN REPLY #15291 /* ~"Na gut. Gehen wir."~ */ DO ~SetGlobal("Dakkon","GLOBAL",2)
AddexperienceParty(1000)
ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalGT("Dakkon","GLOBAL",1)
~ THEN REPLY #66762 /* ~"Na gut. Gehen wir."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  Global("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 73 // from:
  SAY #15054 /* ~Dak'kon dreht sich um, als du näherkommst. Seine Augen funkeln pechschwarz. Er starrt durch dich hindurch - und du fragst dich, ob er vielleicht blind ist.~ */
  IF ~~ THEN REPLY #15292 /* ~"Sei gegrüßt, Dak'kon. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 28
  IF ~~ THEN REPLY #15293 /* ~"Eine zusätzliche Klinge könnte ich gut gebrauchen, Dak'kon."~ */ GOTO 72
  IF ~~ THEN REPLY #15294 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #16628 /* ~"Deine Bitte ist wirklich höchst interessant. Bäume, im Stock? Das ist ja, als ob es Städte im Limbus gäbe. Sie wären wie ein Vermächtnis der Leute, die entschlossen sind, der sie umgebenden Bedrohung standzuhalten; die akzeptieren, was ihnen aufgebürdet wurde und versuchen, das Beste daraus zu machen. Ich werde mich ebenfalls um diese Bäume sorgen."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16936 /* ~"Danke. Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16937 /* ~"Danke. Annah? Könntest du's?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16938 /* ~"Danke. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16939 /* ~"Danke. Grace, könntest du drüber nachdenken?~ */ DO ~SetGlobal("Tree_G","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16940 /* ~"Danke. Nordom, meinst du, du könntest helfen?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16941 /* ~"Danke. Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16942 /* ~"Danke. Ich hätte da ein paar Fragen, Der um die Bäume trauert..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16943 /* ~Danke, Dak'kon. Leb wohl, Der um die Bäume trauert."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #16629 /* ~Dak'kon nickt. "Aber... sicher."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16944 /* ~"Gut. Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16945 /* ~"Gut. Annah? Könntest du?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16946 /* ~"Gut. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16947 /* ~"Gut. Grace, könntest du es dir überlegen?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16948 /* ~"Gut. Nordom, meinst du, du könntest helfen?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16949 /* ~"Gut. Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16950 /* ~"Da bist du, Der um die Bäume trauert. Ich hätte da ein paar Fragen..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16951 /* ~"Das müßte einigen helfen, Der um die Bäume trauert. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #17626 /* ~"Das Gewürz schmeckt so, wie man will. Man braucht nur etwas Konzentration und Willenskraft, um den Geschmack zu verändern."~ */
  IF ~~ THEN REPLY #17725 /* ~Probiere ein paar.~ */ DO ~TakePartyGold(5)
~ EXTERN ~D300MER6~ 20
  IF ~~ THEN REPLY #17726 /* ~"Ich glaube nicht, daß ich das mögen würde. Laß mich was anderes probieren."~ */ EXTERN ~D300MER6~ 6
  IF ~~ THEN REPLY #17727 /* ~"Ich hab's mir anders überlegt. Aber ich hätte da ein paar Fragen..."~ */ EXTERN ~D300MER6~ 2
  IF ~~ THEN REPLY #17728 /* ~"Ach ne, will ich doch nicht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 78.0 79.1 80.3 81.3 82.0 83.12 84.12 85.12 86.9 87.9 88.0 89.2 90.5 91.5 92.4 93.8 94.3 95.3 96.3 97.1 98.3 99.5 100.3 101.1 102.3 103.0 104.3 105.0 106.3 107.3 108.3 109.3 110.3 111.12 112.5 113.0
  SAY #22541 /* ~Dak'kon nickt.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25004 /* ~"Frag ihn, wer er ist."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25005 /* ~"Frag ihn, wer er ist."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25006 /* ~"Frag ihn, wer er ist."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25007 /* ~"Frag ihn, was das hier für ein Ort ist."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25008 /* ~"Frag ihn, was das hier für ein Ort ist."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25009 /* ~"Frag ihn, was das hier für ein Ort ist."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25010 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25011 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25012 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25013 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25014 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25015 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64400 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64401 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64402 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64403 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64404 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64405 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25016 /* ~"Er hat erwähnt, daß er mir schon mal begegnet ist... Weiß er, wie ich gestorben bin?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25017 /* ~"Er hat erwähnt, daß er mir schon mal begegnet ist... Weiß er, wie ich gestorben bin?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25018 /* ~"Er hat erwähnt, daß er mir schon mal begegnet ist... Weiß er, wie ich gestorben bin?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25019 /* ~"Frag ihn, ob er schon mal was von Ravel gehört hat."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25020 /* ~"Frag ihn, ob er schon mal was von Ravel gehört hat."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25021 /* ~"Frag ihn, ob er schon mal was von Ravel gehört hat."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25022 /* ~"Frag ihn, ob die Tätowierungen auf dem abgetrennten Arm von ihm sind."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25023 /* ~"Frag ihn, ob die Tätowierungen auf dem abgetrennten Arm von ihm sind."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25024 /* ~"Frag ihn, ob die Tätowierungen auf dem abgetrennten Arm von ihm sind."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25025 /* ~"Kann er mir was über die Tätowierungen auf meinem Körper erzählen?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25026 /* ~"Kann er mir was über die Tätowierungen auf meinem Körper erzählen?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25027 /* ~"Kann er mir was über die Tätowierungen auf meinem Körper erzählen?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25028 /* ~"Kann ich mal sehen, welche Tätowierungen verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25029 /* ~"Kann ich mal sehen, welche Tätowierungen verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25030 /* ~"Kann ich mal sehen, welche Tätowierungen verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25031 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #22542 /* ~"Man *nennt* ihn Fell."~ */
  IF ~~ THEN REPLY #25032 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25033 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #22543 /* ~"Er ritzt Bilder ins Fleisch. 'Tätowierungen.'"~ */
  IF ~~ THEN REPLY #25034 /* ~"Kann ich mal sehen, welche Tätowierungen er machen kann?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25035 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25036 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #22544 /* ~"Seine Aussagen sind immer widersprüchlich." Dak'kon hält einen Moment inne. Mit schwimmenden schwarzen Augen betrachtet er die Symbole. "Er sagt, du triffst ihn zum ersten Mal. Er sagt, du würdest ihn nicht zum ersten Mal treffen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25037 /* ~"Weiß er, wer ich bin?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25038 /* ~"Weiß er, wer ich bin?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25039 /* ~"Weiß er, wer ich bin?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25040 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25041 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #22545 /* ~"Du bist ihm *bekannt*. Aber er kann dir nicht sagen, worüber du *Kenntnis* wünschst."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25042 /* ~"Warum nicht?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25043 /* ~"Warum nicht?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25044 /* ~"Warum nicht?"~ */ JOURNAL #24270 /* ~Fell sagt, daß er mich kennt, mir aber meine "Geschichte" nicht erzählen kann. Aber das Seltsamste daran war der Grund. Er sagt, er könne es nicht sagen, weil er das Wesen eines Menschen nicht ändern könne.~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25045 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25046 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #22546 /* ~"Anstatt zu antworten entschuldigt er sich für sein Schweigen." Dak'kon hält einen Moment inne. Als er weiterspricht, sind seine Worte wie Eis. "Er sagt, daß er das *Wesen eines Menschen* nicht ändern kann." Als Dak'kon diese Worte wiederholt, spürst du einen schmerzhaften Druck in deinem Kopf... der mit dem letzten Wort abklingt.~ */
  IF ~~ THEN REPLY #25047 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25048 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #22547 /* ~"Sie ist echt."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25049 /* ~"Weiß er, wo sie ist?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25050 /* ~"Weiß er, wo sie ist?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25051 /* ~"Weiß er, wo sie ist?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25052 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25053 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25054 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25055 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25056 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25057 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25058 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25059 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25060 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25061 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25062 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #22548 /* ~"Sie ist in einem der Irrgänge der Dame gefangengesetzt."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25063 /* ~"Irrgänge?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25064 /* ~"Irrgänge?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25065 /* ~"Irrgänge?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25066 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25067 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25068 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25069 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25070 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25071 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25072 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25073 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25074 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25075 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25076 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #22549 /* ~"Ravels Wille war nicht der Wille der Dame. Die Dame hat sie bestraft."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25077 /* ~"Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25078 /* ~"Warum wurde Ravel in die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25079 /* ~"Warum wurde Ravel in die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25080 /* ~"Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25081 /* ~"Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25082 /* ~"Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25083 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25084 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25085 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25086 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25087 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25088 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25089 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25090 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #22550 /* ~"Sie hat versucht, Sigils Mauern einzureißen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25091 /* ~"Weiß er, wie man zu Ravel gelangt?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25092 /* ~"Weiß er, wie man Ravel finden kann?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25093 /* ~"Weiß er, wie man Ravel finden kann?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25094 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25095 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25096 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25097 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25098 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25099 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25100 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25101 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #22551 /* ~"Der Weg, auf dem man sie errreichen kann, ist ihm nicht *bekannt*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25102 /* ~"Was weiß er sonst noch über Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25103 /* ~"Was weiß er sonst noch über Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25104 /* ~"Was weiß er sonst noch über Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25105 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25106 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25107 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25108 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25109 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25110 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25111 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25112 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #22552 /* ~"Er warnt uns davor, die Nachthexe aufzusuchen. Er sagt, daß sie ein schwarzes Herz hat und versuchen wird, uns etwas anzutun."
~ */
  IF ~~ THEN REPLY #25113 /* ~"Ich wird dran denken. Ich hätte noch eine andere Frage an ihn..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25114 /* ~"Ich glaube, unsere Wege sind dazu bestimmt, sich zu kreuzen. Leb wohl."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #22553 /* ~Dak'kon studiert die Symbole, aber schweigt weiter.~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25115 /* ~"Dak'kon? Was sagt er?"~ */ GOTO 90
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25116 /* ~"Dak'kon?"~ */ GOTO 96
  IF ~~ THEN REPLY #25117 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25118 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #22554 /* ~"Der Arm gehört dir. Die Tätowierungen sind von ihm."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #25119 /* ~"Hat er sonst noch was gesagt?"~ */ JOURNAL #25126 /* ~Ich habe Dak'kon gebeten, zu übersetzen, was Fell über den tätowierten Arm gesagt hat, den ich gefunden habe, und er hat gelogen und behauptet, daß er es nicht wisse. Aus irgendeinem Grund wollte er nicht erklären, was die Tätowierung auf dem abgetrennten Arm bedeutet.~ */ GOTO 91
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #25120 /* ~"Hat er sonst noch was gesagt?"~ */ GOTO 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25121 /* ~"Was kann er mir über die Tätowierungen erzählen?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25122 /* ~"Was kann er mir über die Tätowierungen erzählen?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25123 /* ~"Was kann er mir über die Tätowierungen erzählen?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25124 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25125 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #22555 /* ~Dak'kon schweigt für einen Moment... und plötzlich spürst du, daß Dak'kon dich *anlügt*. Er fährt mit Grabesstimme fort. "Die übrigen Symbole sind mir nicht *bekannt*."~ */
  IF ~~ THEN REPLY #25127 /* ~"Warum lügst du mich an?"~ */ GOTO 93
  IF ~~ THEN REPLY #25128 /* ~"Ich glaube, was er sagt IST dir *bekannt*. Übersetz. Aber dalli!"~ */ DO ~SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25129 /* ~"Äh... in Ordnung. Was kann er mir über die Tätowierungen auf dem Arm erzählen?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25130 /* ~"Äh... in Ordnung. Was kann er mir über die Tätowierungen auf dem Arm erzählen?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25131 /* ~"Äh... in Ordnung. Was kann er mir über die Tätowierungen auf dem Arm erzählen?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25132 /* ~"Nun gut. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 77
  IF ~~ THEN REPLY #25133 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #22556 /* ~Dak'kon schweigt für einen Moment. "Die übrigen Symbole sind mir nicht *bekannt*."~ */
  IF ~~ THEN REPLY #25134 /* ~"Bist du dir sicher?"~ */ GOTO 95
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25135 /* ~"Äh... in Ordnung. Was kann er mir über die Tätowierungen auf dem Arm erzählen?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25136 /* ~"Äh... in Ordnung. Was kann er mir über die Tätowierungen auf dem Arm erzählen?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25137 /* ~"Äh... in Ordnung. Was kann er mir über die Tätowierungen auf dem Arm erzählen?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25138 /* ~"Nun gut. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 77
  IF ~~ THEN REPLY #25139 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.0
  SAY #22557 /* ~Dak'kon verfällt wieder in Schweigen. Er schaut dich nicht an - er scheint etwas in der Ferne anzustarren. "Die Symbole... Es ist nicht gut, die Antwort auf deine Frage zu *kennen*."~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25140 /* ~"Ich verliere langsam die Geduld. Ich brauche Antworten, und du sagst mir besser alles, was du weißt, bevor ich mich vergesse."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~Ich habe Dak'kon dazu gebracht, mir zu erzählen, was die Tätowierung auf meinem abgetrennten Arm bedeutet, obwohl er sich dagegen sträubte. Er sagte, die Tätowierung erzähle von den "Vieren,mit denen ich in der Vergangenheit reiste".~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25141 /* ~"Wann hat es jemals jemandem geholfen, die Wahrheit nicht zu kennen, Dak'kon? Der Ratgeber, der zu Ignoranz rät, verrät seinen Herrn."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~Ich habe Dak'kon dazu gebracht, mir zu erzählen, was die Tätowierung auf meinem abgetrennten Arm bedeutet, obwohl er sich dagegen sträubte. Er sagte, die Tätowierung erzähle von den "Vieren,mit denen ich in der Vergangenheit reiste".~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25142 /* ~"Wann hat es jemals jemandem geholfen, die Wahrheit nicht zu kennen, Dak'kon? Der Ratgeber, der zu Ignoranz rät, verrät seinen Herrn."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~Ich habe Dak'kon dazu gebracht, mir zu erzählen, was die Tätowierung auf meinem abgetrennten Arm bedeutet, obwohl er sich dagegen sträubte. Er sagte, die Tätowierung erzähle von den "Vieren,mit denen ich in der Vergangenheit reiste".~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25143 /* ~"Wann hat es jemals jemandem geholfen, die Wahrheit nicht zu kennen, Dak'kon? Der Ratgeber, der zu Ignoranz rät, verrät seinen Herrn."~ */ DO ~GiveExperience(Protagonist,750)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~Ich habe Dak'kon dazu gebracht, mir zu erzählen, was die Tätowierung auf meinem abgetrennten Arm bedeutet, obwohl er sich dagegen sträubte. Er sagte, die Tätowierung erzähle von den "Vieren,mit denen ich in der Vergangenheit reiste".~ */ GOTO 94
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25144 /* ~"Fahr fort, Dak'kon. Du hast schon zuvor von ihnen gesprochen."~ */ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25145 /* ~"Na ja, macht auch nichts. Was kann Fell über die Tätowierungen auf dem Arm sagen?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25146 /* ~"Na ja, macht auch nichts. Was kann Fell über die Tätowierungen auf dem Arm sagen?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25147 /* ~"Na ja, macht auch nichts. Was kann Fell über die Tätowierungen auf dem Arm sagen?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25148 /* ~"Dann vergiß es. Ich hätte da noch eine Frage, die ich ihm gern stellen würde..."~ */ GOTO 77
  IF ~~ THEN REPLY #25149 /* ~"Also gut, dann behalte deine Ratschläge eben für dich, Dak'kon. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.1 93.2 93.3
  SAY #22558 /* ~"In deinen Worten liegt Wahrheit. Diese Wahrheit... sollte mir *bekannt* sein." Dak'kon schweigt für einen Moment, dann spricht er mit festem Blick zu dir. "Die Symbole sagen von Vier, mit denen du in der Vergangenheit gereist bist."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25151 /* ~"Sag schon... wer sind diese vier?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25152 /* ~"Erzähl weiter... Was sind das für Vier?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25153 /* ~"Erzähl weiter... Was sind das für Vier?"~ */ JOURNAL #24274 /* ~Fell hat die Rune auf meinem alten Arm für mich übersetzt... Er sagt, sie spricht von Vieren, die einst meinen Weg mit mir gingen. Die Vier seien "ein Ungeliebter, der jemanden liebt, der nicht liebt"; "einer, der nicht sieht, was andere sehen, sondern sieht, was andere nicht sehen"; "ein Vertrauter, der an die Pflicht gebunden ist"; und "einer, der ein Sklave ist, und seine Ketten sind Worte". Er sagte, sie seien alle so gefoltert wie ich, und daß ich in meinem Leiden andere mitziehe, die auch leiden.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25154 /* ~"Nun gut. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 77
  IF ~~ THEN REPLY #25155 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 92.0
  SAY #22559 /* ~Dak'kon spricht mit festem Blick zu dir. "Ja."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25156 /* ~"Na, egal. Was hat Fell zu den Tätowierungen auf dem Arm zu sagen?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25157 /* ~"Na ja, macht auch nichts. Was kann Fell über die Tätowierungen auf dem Arm sagen?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25158 /* ~"Na ja, macht auch nichts. Was kann Fell über die Tätowierungen auf dem Arm sagen?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25159 /* ~"Nun gut. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 77
  IF ~~ THEN REPLY #25160 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 89.1 91.1 93.0 93.4
  SAY #22560 /* ~Dak'kon spricht mit festem Blick zu dir. "Die Symbole sagen etwas von Vier, mit denen du in der Vergangenheit gereist bist."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25161 /* ~"Sag schon... wer sind diese vier?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25162 /* ~"Sag schon... wer sind diese vier?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25163 /* ~"Sag schon... wer sind diese vier?"~ */ JOURNAL #24274 /* ~Fell hat die Rune auf meinem alten Arm für mich übersetzt... Er sagt, sie spricht von Vieren, die einst meinen Weg mit mir gingen. Die Vier seien "ein Ungeliebter, der jemanden liebt, der nicht liebt"; "einer, der nicht sieht, was andere sehen, sondern sieht, was andere nicht sehen"; "ein Vertrauter, der an die Pflicht gebunden ist"; und "einer, der ein Sklave ist, und seine Ketten sind Worte". Er sagte, sie seien alle so gefoltert wie ich, und daß ich in meinem Leiden andere mitziehe, die auch leiden.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25164 /* ~"Nun gut. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 77
  IF ~~ THEN REPLY #25165 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #22561 /* ~Dak'kon sieht die Symbole nicht einmal an. "Die Tätowierung spricht von vier Seelen. Eine war eine Frau, die einen Mann liebte, der sie *kannte* und die Liebe nicht *kannte*. Die andere war ein blinder Mann, der Dinge sah, die kein sterbliches Auge sehen konnte. Eine weitere war ein Vertrauter, ein Haustier eines Magiers, gekauft und gebunden. Und die letzte war ein Sklave."~ */
  IF ~~ THEN REPLY #25166 /* ~"Warum wolltest du mir das nicht sagen?"~ */ GOTO 98
  IF ~  False()
~ THEN REPLY #25167 /* ~"Nun gut. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25168 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #22562 /* ~"Die Vier sind durch ein Symbol miteinander verbunden, das mir *bekannt* ist."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25169 /* ~"Was für ein Symbol?"~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25170 /* ~"Was für ein Symbol?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25171 /* ~"Was für ein Symbol?"~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25172 /* ~"Nun gut. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25173 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #22563 /* ~"Das Symbol bedeutet Folter. Er sagt, du hast es immer schon getragen hast, denn das Fleisch *weiß*, daß es leidet, auch wenn der Geist es nicht weiß."~ */
  IF ~~ THEN REPLY #25174 /* ~"Genug von dem Symbol. Erzähl mir alles, was du über die vier in der Tätowierung weißt."~ */ GOTO 100
  IF ~~ THEN REPLY #25175 /* ~"Verstehe. Kannst du mir mehr über die Vier auf der Tätowierung erzählen?"~ */ GOTO 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25176 /* ~"Sagt Fell was zu den anderen Tätowierungen auf dem Arm?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25177 /* ~"Sagt Fell was zu den anderen Tätowierungen auf dem Arm?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25178 /* ~"Sagt Fell was zu den anderen Tätowierungen auf dem Arm?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25179 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25180 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1
  SAY #22564 /* ~Dak'kon schweigt wieder. "Ich werde hier nicht davon sprechen. Frag, wenn das, wovon wir sprechen, nur von den Ohren derjenigen gehört wird, die dich begleiten."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25181 /* ~"Gut. Sagt Fell etwas zu den anderen Tätowierungen auf dem Arm?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25182 /* ~"Na schön. Sagt Fell was zu den anderen Tätowierungen auf dem Arm?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25183 /* ~"Na schön. Sagt Fell was zu den anderen Tätowierungen auf dem Arm?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25184 /* ~"Gut... aber zuerst hätte ich da noch eine Frage an Fell..."~ */ GOTO 77
  IF ~~ THEN REPLY #25185 /* ~"Na schön, Dak'kon. Wir gehen dann jetzt."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #22565 /* ~"Er sagt, daß der Arm vergessene Tätowierungen trägt. Er hat sich gerade an sie erinnert. Sie gehören dir, wenn du sie willst.~ */
  IF ~~ THEN REPLY #25186 /* ~"Okay... Ich würd gern alle Tätowierungen sehen, die er anzubieten hat."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25187 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25188 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #22566 /* ~"Er sagt, die Tätowierungen sind nicht von ihm."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Kann er mir etwas über sie erzählen?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Kann er mir etwas über sie erzählen?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Kann er mir etwas über sie erzählen?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25189 /* ~"Verstehe. Ich hätte noch eine andere Frage an ihn..."~ */ GOTO 77
  IF ~~ THEN REPLY #25190 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #22567 /* ~"Die Symbole auf deinem Rücken sollen dir Anweisungen geben. Das Zeichen auf deiner Schulter ist das Zeichen der Folter. Er sagt, du trägst dieses Zeichen, weil das Fleisch *weiß*, daß es leidet, auch wenn der Geist es nicht weiß."~ */
  IF ~~ THEN REPLY #25191 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25192 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #22568 /* ~"Schatten."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25193 /* ~"Schatten?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25194 /* ~"Schatten?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25195 /* ~"Schatten?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25196 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 77
  IF ~~ THEN REPLY #25197 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #22569 /* ~"Er sagt, viele Schatten jagen dich. Warum sie dir nach dem Leben trachten, ist ihm nicht *bekannt*."~ */
  IF ~~ THEN REPLY #25198 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 77
  IF ~~ THEN REPLY #25199 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #22570 /* ~"Dies ist seine Galerie. Er sagt, daß er dich als seine Leinwand *kennt*. Er zeigt mit seiner Bewunderung Respekt vor deiner Stärke." Dak'kon ist einen Moment lang still. "Dann beleidigt er dich, indem er dir sein Mitleid ausspricht."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25200 /* ~"Sein Mitleid?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25201 /* ~"Sein Mitleid?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25202 /* ~"Sein Mitleid?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25203 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25204 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #22571 /* ~"Er bemitleidet dich wegen der Narben, die die Folter auf deinem Körper hinterlassen hat. Er sagt, du hast gelitten. Das Leiden hat dich stark gemacht."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25205 /* ~"Was meint er damit?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25206 /* ~"Was soll das bedeuten?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25207 /* ~"Was soll das bedeuten?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25208 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25209 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #22572 /* ~"Er sagt, seine Bewunderung *gründet* sich auf dein Erleiden von Verlust. Er sagt, daß der Verlust dir wie Ketten anhaftet, und du dennoch stehen und gehen kannst."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25210 /* ~"Bitte ihn fortzufahren."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25211 /* ~"Bitte ihn, weiterzuerzählen."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25212 /* ~"Bitte ihn, weiterzuerzählen."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25213 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25214 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #22573 /* ~"Er sagt, daß dieses Leben vom Verlust geprägt wird, so wie alle vorherigen Leben. Er sagt, du häutest dich wie eine Schlange und läßt dabei diese Leben hinter dir zurück, während du auf allen Pfaden des Lebens wandelst."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25215 /* ~"Sagt er noch irgendwas anderes?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25216 /* ~"Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25217 /* ~"Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25218 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25219 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #22574 /* ~"Er will, daß du diese Warnung *kennst*: Jedes deiner Leben wirft einen Schatten auf die Existenz. Dein Pfad wird dich dorthin bringen, wo die Schatten sich selbst nicht *kennen* und wo die Wände aus Reue bestehen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25220 /* ~"Ich... verstehe. Erzählt er noch irgendwas anderes?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25221 /* ~"Ich... verstehe. Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25222 /* ~"Ich... verstehe. Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25223 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 77
  IF ~~ THEN REPLY #25224 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #22575 /* ~"Er trägt dir auf, nichts zu unterzeichnen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25225 /* ~"Nun gut."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25226 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25227 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25228 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25229 /* ~"Wie du meinst."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25230 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25231 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25232 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25233 /* ~"Wie du meinst."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25234 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25235 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25236 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25237 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 77
  IF ~~ THEN REPLY #25238 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #22576 /* ~"Er fragt, ob du dich selbst genug *kennst*, um vollständig zu sein."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25239 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25240 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25241 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25242 /* ~"Das geht dich nichts an."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25243 /* ~Lüge: "Ja, ich fühl mich vollständig. Warum?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25244 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 77
  IF ~~ THEN REPLY #25245 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #22577 /* ~"Er hat Achtung vor deiner Stärke. Er trägt dir auf, dir selbst treu zu bleiben. Dann wirst du dich selbst wieder *kennen*."~ */
  IF ~~ THEN REPLY #25246 /* ~"Ich werd's versuchen. Ich würde ihm gerne noch eine andere Frage stellen ..."~ */ GOTO 77
  IF ~~ THEN REPLY #25247 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #32703 /* ~Dak'kon scheint die Anwesenheit der jungen Frau nicht einmal zu bemerken. Er starrt einfach geradeaus.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 33
END

IF ~~ THEN BEGIN 115 // from:
  SAY #32704 /* ~Dak'kon reagiert immer noch nicht, als ob die Frau für ihn nicht existiert.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 35
END

IF ~~ THEN BEGIN 116 // from:
  SAY #32705 /* ~Dak'kon spricht plötzlich in einem tiefen Bariton, als ob er einem kleinen Kind etwas erklärt. "Als Zerthimon auf die Ebene von Shale kam und die Githzerai den Pfad der Menschen kreuzten, sagte er, daß es an ihnen viel zu bewundern gebe, daß sie aber einen mühsamen Weg gehen mußten, um ihre eigene Unwissenheit zu zerstreuen..."~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #32706 /* ~Dak'kon fährt mit seinem 'Witz' fort: "Wie viele Menschen, sagte Zerthimon, reden sie von großen Dingen, doch sie tun wenig, und darin liegt die Gefahr ihrer Gewohnheiten. Die Menschheit ist ein fleischgewordener Alptraum, die Gefahr eines Volks ohne eine wirkliche Geschichte und ohne die Fähigkeit, aus dem Geschehenen zu lernen."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 36
END

IF ~  GlobalGT("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 118 // from:
  SAY #33972 /* ~Dak'kon dreht sich um, als du dich näherst. Seine Augen sind wie glänzende Kohlen. "Es war mir *bewusst*, dass du zurückkommen würdest. Ist es dein Wille, dass sich unsere Wege wieder vereinen?"~ [DAK207] */
  IF ~~ THEN REPLY #33973 /* ~"Ja. Ich brauche deine Hilfe, Dak'kon."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 119
  IF ~~ THEN REPLY #33974 /* ~"Nein, Dak'kon, jedenfalls nicht im Moment."~ */ GOTO 120
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #33975 /* ~"Dein Weg ist mein Weg."~ [DAK206] */
  IF ~~ THEN REPLY #33976 /* ~"Dann laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 118.1
  SAY #33977 /* ~"Dann wollen wir getrennte Wege gehen."~ */
  IF ~~ THEN REPLY #33978 /* ~"Leb wohl, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #33979 /* ~"Was wünschst du?"~ [DAK205] */
  IF ~~ THEN REPLY #33980 /* ~"Nichts weiter. Ich wollte nur mal gucken, ob du noch da bist."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #39583 /* ~Dak'kon nickt ernst. "Ich werde die Geschichte von 'Acha'liis Flut' erzählen."

Dak'kon erzählt die Geschichte von Acha'lii, einer dummen Githzeraifrau aus einem Mythos, die sich im Chaos des Limbus verlaufen hatte. Normalerweise kann ein einzelner Githzerai seine Konzentration und mentale Disziplin dazu verwenden, das Chaos um sich herum in eine kleine, bewohnbare Umgebung zu formen. Acha'lii hingegen stellte so viele nutz- und ziellose Fragen auf ihrer Suche nach ihrer Heimat, daß ihre Materieninsel um sie herum sich auflöste und sie ertrank.
~ */
  IF ~~ THEN EXTERN ~DYVES~ 61
END

IF ~~ THEN BEGIN 123 // from:
  SAY #39584 /* ~Dak'kon sieht aufmerksam aus, und vielleicht auch etwas überrascht.~ */
  IF ~~ THEN REPLY #39761 /* ~"Erzähl weiter, Yves..."~ */ DO ~SetGlobal("Yves_Story_10","GLOBAL",1)
AddexperienceParty(500)
~ EXTERN ~DYVES~ 62
  IF ~~ THEN REPLY #39762 /* ~"Warte, Yves... Ich hätte da eine Frage..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39763 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from:
  SAY #42437 /* ~Dak'kon schaut dich an und sagt: "Sie versteht dich nicht. Sie behauptet, sie sei unheilbar krank."~ */
  IF ~~ THEN REPLY #42438 /* ~"Woran stirbt sie denn?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ GOTO 125
  IF ~~ THEN REPLY #42439 /* ~"Dann solltest du sie töten. Aber mach es so richtig schmerzhaft."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42440 /* ~"Können wir irgendwas für sie tun?"~ */ GOTO 127
  IF ~~ THEN REPLY #42441 /* ~"Großartig. Gehn wir."~ */ GOTO 128
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #42442 /* ~"Sie heißt An'azi. Sie sagt, sie hätte bis vor einem halben Monat in einer Räucherei gearbeitet, als ihre Krankheit plötzlich unerträglich wurde. Man hat sie entlassen, aus ihrem Haus vertrieben und dem Tod überlassen. Sie kann nur unter Schmerzen sprechen, und die Krankheit hat bereits ihren Verstand angegriffen. Sie sagt, sie hätte nichts Wertvolles, was sie dir geben könnte."~ */
  IF ~~ THEN REPLY #42443 /* ~"Und?"~ */ GOTO 127
  IF ~~ THEN REPLY #42444 /* ~"Dann lassen wir sie in Ruhe. Vielleicht erholt sie sich ja wieder."~ */ GOTO 127
END

IF ~~ THEN BEGIN 126 // from: 124.1 127.0 132.0
  SAY #42445 /* ~Dak'kon schaut dich verständnislos an, verbeugt sich aber dennoch vor dir. Dann wendet er sich wieder der alten Frau zu, zeigt ihr den Ungebrochenen Kreis von Zerthimon und sagt ihr ein paar abgehackte Silben. Sie wirft dir einen haßerfüllten Blick zu und wendet sich wieder zu Dak'kon hin, der seine Klinge zieht. Sie steht ihm gegenüber und starrt ihm in die Augen. Er zieht seine Klinge zurück...~ */
  IF ~~ THEN REPLY #42446 /* ~"Hör auf, Dak'kon. Lassen wir sie in Ruhe. Gehn wir."~ */ GOTO 128
  IF ~~ THEN REPLY #42447 /* ~"Bring sie doch um, Dak'kon. Und wie gesagt: Es soll schmerzhaft sein."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ JOURNAL #67287 /* ~Ich habe Dak'kon befohlen, eine kranke Githzerai-Frau auf schmerzvolle Weise umzubringen. Ich denke, sie wußte die Geste und das Mitgefühl zu schätzen.~ */ GOTO 129
  IF ~~ THEN REPLY #42448 /* ~Laß ihn zustechen.~ */ JOURNAL #67287 /* ~Ich habe Dak'kon befohlen, eine kranke Githzerai-Frau auf schmerzvolle Weise umzubringen. Ich denke, sie wußte die Geste und das Mitgefühl zu schätzen.~ */ GOTO 131
END

IF ~~ THEN BEGIN 127 // from: 124.2 125.0 125.1
  SAY #42449 /* ~"*Wisse*, daß es keine Rettung für sie gibt. Ich kann höchstens ihr Leiden beenden. Mehr nicht. Als *Zerth* des Volkes ist es meine Aufgabe, eine Alternative zu finden."~ */
  IF ~~ THEN REPLY #42450 /* ~"Dann tu es. Mach es so richtig schmerzhaft."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42451 /* ~"Dann laß Gnade walten, Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42452 /* ~"Tu es nicht. Wir haben andere Aufgaben."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 124.3 126.0 127.2 132.2
  SAY #42453 /* ~Dak'kon schaut dich verständnislos an. Als du gehst, verneigt er sich vor der Githzerai-Frau.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 126.1
  SAY #42454 /* ~Ohne dich anzuschauen, bohrt Dak'kon seine *Karach-*Klinge in ihren Körper. Sie schnappt schwach nach Luft. Aus ihrem Mund läuft ein Rinnsal wäßrigen Bluts. Ihre Augen werden glasig, ihre Beine geben nach. Sie rutscht rückwärts von der Klinge und sinkt auf dem Boden zusammen.~ */
  IF ~~ THEN REPLY #42455 /* ~"Laß uns verschwinden."~ */ DO ~AddexperienceParty(4000)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 130 // from: 127.1 132.1
  SAY #42456 /* ~Dak'kon zieht seine Klinge und wartet, bis die Frau bereit ist. Sie berührt den Ungebrochenen Kreis von Zerthimon, den er einen Moment lang trägt. Ihre Miene ist stoisch. Seine Klinge wirkt verschwommen. Als er fertig ist, liegt sie blutend auf dem harten Pflaster von Sigils Straßen.~ */
  IF ~~ THEN REPLY #42457 /* ~"Gut gemacht, Dak'kon. Gehn wir."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ JOURNAL #67288 /* ~Ich habe Dak'kon gestattet, einer Frau aus seinem Volk zu helfen. Sie war eine kranke Githzerai, die zu viel von den giftigen Dämpfen des Unteren Bezirks eingeatmet hatte. Und obwohl er sie getötet hat, schien sie dankbar zu sein.~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from: 126.2
  SAY #42458 /* ~Sie berührt den Ungebrochenen Kreis von Zerthimon, den er einen Moment lang trägt. Ihre Miene ist stoisch. Seine Klinge wirkt verschwommen. Als er fertig ist, liegt sie blutend auf dem harten Pflaster von Sigils Straßen.~ */
  IF ~~ THEN REPLY #42459 /* ~"Gehen wir, Dak'kon."~ */ DO ~AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #42460 /* ~"Sie heißt An'azi. Ihre Krankheit ist unheilbar und schmerzhaft. Die Widerstandsfähigkeit des Volkes gegenüber der schlechten Luft in diesem Bezirk ist schlechter als die von euch Menschen. Ich bin ein *Zerth*. Es obliegt mir, eine Alternative zu finden. In diesem Fall hat sie mich selbst darum gebeten, da sie vom Volk gemieden wird."~ */
  IF ~~ THEN REPLY #42461 /* ~"Dann tu es. Mach es so richtig schmerzhaft."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42462 /* ~"Dann laß Gnade walten, Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42463 /* ~"Tu es nicht. Wir haben andere Aufgaben."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 133 // from:
  SAY #43544 /* ~Bevor du bei ihr bist, ruft Dak'kon dazwischen: "Bitte hör mir zu."~ */
  IF ~~ THEN REPLY #43545 /* ~"Was gibt's, Dak'kon?"~ */ GOTO 134
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"Nein. Sei still."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"Nein. Sei still."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #43547 /* ~"Ich will nicht, daß wir mit dieser Frau sprechen."~ */
  IF ~~ THEN REPLY #43548 /* ~"Warum nicht?"~ */ GOTO 136
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43549 /* ~"Danke für den Tip. Wir werden trotzdem mit ihr sprechen."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43550 /* ~"Danke für den Tip. Wir werden trotzdem mit ihr sprechen."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"Dann sprich nicht mit ihr."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43552 /* ~"Dann sprich nicht mit ihr."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43553 /* ~"Gut, dann eben nicht."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43553 /* ~"Gut, dann eben nicht."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.5 134.6 136.2 136.3
  SAY #43554 /* ~"Ich danke dir."~ */
  IF ~~ THEN REPLY #43555 /* ~"Keine Ursache."~ */ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.0
  SAY #43556 /* ~"Sie ist eine *Zerth*-Frau. Unsere Ziele sind diametral entgegengesetzt. Wir haben nichts gemeinsam."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Dein Wunsch wurde zur Kenntnis genommen. Wir werden trotzdem mit ihr sprechen."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43558 /* ~"Dann sprich nicht mit ihr."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43559 /* ~"Gut, dann eben nicht."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43559 /* ~"Gut, dann eben nicht."~ */ GOTO 135
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"Dann sprich nicht mit ihr."~ */ EXTERN ~DKIINA~ 30
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Dein Wunsch wurde zur Kenntnis genommen. Wir werden trotzdem mit ihr sprechen."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 137 // from:
  SAY #43560 /* ~"Ich..." Dak'kons Stimme zittert. "Das *will* ich nicht tun."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #43561 /* ~"Dak'kon, dies war ein Befehl, und du bist mein Sklave."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43562 /* ~"Tu es, Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43563 /* ~"Na schön. Aber denk dran: Sie geht auf dünnem Eis."~ */ EXTERN ~DKIINA~ 34
END

IF ~~ THEN BEGIN 138 // from:
  SAY #43564 /* ~Dak'kons schlitzt sie mit seiner Klinge auf. Sie sinkt blutend zu Boden. Das Blut siedet auf der Schneide der Klinge, verdampft und hinterläßt ein paar schwarze Flecken.~ */
  IF ~~ THEN REPLY #43565 /* ~"Gehn wir."~ */ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #43566 /* ~Dak'kon seufzt. "Anarch von hundert Jahren - kein Stundenglas kann die Geschichte messen. Die Sache ist so verwachsen wie Fri'his Wurzeln, und eine Lösung ist schwierig, wenn nicht unmöglich. Urteile nicht so hart über mich."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 140 // from:
  SAY #43567 /* ~Dak'kon wird unruhig. "Ich kann ihn nicht zum Reden zwingen. Ich hoffe natürlich, daß er es tun wird... Aber das muß er selbst entscheiden."~ */
  IF ~~ THEN REPLY #43568 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
~ EXTERN ~DKIINA~ 37
  IF ~~ THEN REPLY #43569 /* ~"Ich sag nichts."~ */ EXTERN ~DKIINA~ 40
END

IF ~~ THEN BEGIN 141 // from:
  SAY #43570 /* ~"Zerthimons Worte sind schon überzeugend. Ihr Echo ist es, das verzerrt wurde."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 44
END

IF ~~ THEN BEGIN 142 // from:
  SAY #43571 /* ~"Deine Worte zeugen nicht vom Geiste Zerthimons. Sie sind kantig und voller Haß, als seien sie direkt aus dem Geiste Giths geformt."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 45
END

IF ~~ THEN BEGIN 143 // from:
  SAY #43572 /* ~Als spürte er, was du vorhast, warnt Dak'kon dich: "Bleib, wo du bist, und spring uns nicht vor die Klinge." Sein Blick bleibt die ganze Zeit auf Kii'na gehaftet.~ */
  IF ~~ THEN REPLY #43573 /* ~"Dak'kon, hör auf. Dies ist ein Befehl."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43574 /* ~"Laß das, Dak'kon."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43575 /* ~Greif die Zerth-Frau trotzdem an.~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 46
  IF ~~ THEN REPLY #43576 /* ~Laß sie kämpfen.~ */ EXTERN ~DKIINA~ 47
END

IF ~~ THEN BEGIN 144 // from:
  SAY #43577 /* ~"Dein Geist ist aus dem Geiste Giths geformt, Kii'na."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43578 /* ~"Gehen wir, Dak'kon."~ */ EXTERN ~DMORTE~ 466
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43579 /* ~"Gehen wir, Dak'kon."~ */ EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 145 // from:
  SAY #43580 /* ~"Hörst du nicht, was dieser Mensch gesagt hat?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 49
END

IF ~~ THEN BEGIN 146 // from:
  SAY #43581 /* ~"Er ist mein Begleiter, Kii'na, Schülerin Zerthimons. Er ist hier, um die Worte Zerthimons aus dem Mund eines *Zerth* zu empfangen. Wirst du ihn anhören?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 50
END

IF ~~ THEN BEGIN 147 // from:
  SAY #43582 /* ~"Verschließt du dich etwas vor seinen Worten? Denk zuerst nach, bevor du sprichst, Kii'na, *Zerth* von Zerthimon.~ */
  IF ~~ THEN EXTERN ~DKIINA~ 51
END

IF ~~ THEN BEGIN 148 // from:
  SAY #43583 /* ~"Das genügt." Dak'kon dreht sich zu dir um und sagt in deiner Sprache. "Sie wird dich einweihen."~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",1)
~ EXTERN ~DKIINA~ 52
END

IF ~~ THEN BEGIN 149 // from:
  SAY #44651 /* ~"Ich warne dich davor, mit diesem Githyanki zu sprechen."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44652 /* ~"Was ist ein Githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ JOURNAL #39453 /* ~Dak'kon hat mir den Unterschied zwischen den Githyanki und den Githzerai erklärt. Beide gehörten zur selben Rasse und litten unter der Knechtherrschaft der grausamen Gedankenschinder - er nennt sie auch Illithiden -, aber kaum hatten sie sich vom grausamen Joch ihrer Eroberer befreit, wählten sich beide Lager einen eigenen Anführer. Und seitdem hat es zwischen ihnen nur Unfrieden gegeben.~ */ GOTO 150
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44653 /* ~"Warum?"~ */ GOTO 151
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #44654 /* ~"Githyanki und Githzerai besitzen eine gemeinsame Abstammung. Einst waren wir Sklaven und Futter der *Illithiden*. Diese Gedankenschinder haben unsere Leben verschlungen, um selbst stärker zu werden. Dann jedoch verhalf uns eine unserer Ahninnen, die kriegerische Königin Gith, zu einem Sieg gegen die *Illithiden*, und wir konnten fliehen. Seitdem führen wir einen ewigen Krieg gegen die Gedankenschinder. Doch gleichzeitig herrschte über die Zukunft unseres Volkes Zwietracht: Nachdem unser Anführer Zerthimon in den Verfluchten Ebenen die Offenbarung der Zwei Himmel verkündet hatte, wurden Schwerter gezückt. Aus einer Rasse wurden zwei, und zwischen beiden öffnete sich eine Kluft, die nicht in Frieden überschritten werden kann."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44655 /* ~"Wir werden trotzdem mit ihm sprechen."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44656 /* ~"Wir werden trotzdem mit ihm sprechen."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 153
  IF ~~ THEN REPLY #44657 /* ~"Gut. Lassen wir's bleiben. Gehen wir."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 149.1
  SAY #44658 /* ~"*Wisse*, daß sie die Todfeinde des Volkes sind. Immer wenn wir Worte wechseln, zücken wir auch unsere Schwerter."~ */
  IF ~~ THEN REPLY #44659 /* ~"Wir werden trotzdem mit ihm sprechen."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~~ THEN REPLY #44660 /* ~"Gut. Lassen wir's bleiben. Gehen wir."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 48
END

IF ~~ THEN BEGIN 152 // from: 150.0 151.0
  SAY #44661 /* ~Dak'kon nickt.~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 47
END

IF ~~ THEN BEGIN 153 // from: 150.1
  SAY #44662 /* ~Dak'kon nickt.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 474
END

IF ~~ THEN BEGIN 154 // from:
  SAY #44663 /* ~Dak'kon zieht ebenfalls seine Klinge. "Yi'minn, dein Blut soll das Pflaster dieser Straße tränken."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44664 /* ~Stell dich zwischen die beiden: "Hört auf!" ~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44665 /* ~Stell dich zwischen die beiden: "Hört auf!" ~ */ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44666 /* ~Greif den Githyanki an.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44667 /* ~Greif den Githyanki an.~ */ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44668 /* ~Laß sie kämpfen.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44669 /* ~Laß sie kämpfen.~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 155 // from: 154.0 154.1
  SAY #44670 /* ~Ohne je den Blick von seinem Gegner abzuwenden, ruft Dak'kon dir zu: "Bleib, wo du bist, und spring uns nicht vor die Klinge."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #44671 /* ~"Sag mir nicht, was ich zu tun habe, Dak'kon, sonst darfst du dich gleich selbst töten."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DYI'MINN~ 50
  IF ~~ THEN REPLY #44672 /* ~"Laß das, Dak'kon."~ */ GOTO 156
  IF ~~ THEN REPLY #44673 /* ~"Na, dann mach mal."~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 156 // from: 155.1
  SAY #44674 /* ~Dak'kon sagt dem Githyanki: "Yi'minn, dies ist kein Ort zum Kämpfen."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 54
END

IF ~~ THEN BEGIN 157 // from:
  SAY #44675 /* ~"Ich *kenne* euch githyankische Verräter. Ich werde ihm wie sein eigener Schatten folgen."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 57
END

IF ~~ THEN BEGIN 158 // from:
  SAY #44676 /* ~"Ein Schatten stirbt erst, wenn man den Schattengeber tötet. Deshalb bin ich ohne Furcht."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 58
END

IF ~~ THEN BEGIN 159 // from:
  SAY #44692 /* ~Dak'kons Klinge erscheint in seiner Hand. "Du wirst noch heute deine Ahnen wiedersehen, Githyaniki."~ */
  IF ~~ THEN REPLY #44693 /* ~"Hört auf!"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 9
  IF ~~ THEN REPLY #44694 /* ~Laß sie kämpfen.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 10
END

IF ~~ THEN BEGIN 160 // from:
  SAY #45362 /* ~"Dieser hier gehört zu den Treuen." Er verneigt sich. "*Wisse*, daß dieser Mensch mit mir reist. Wirst du ihn anhören?"~ */
  IF ~  GlobalLT("Vristigor","GLOBAL",2)
~ THEN REPLY #45363 /* ~"Ich hätte nur noch ein paar Fragen..."~ */ EXTERN ~DHAILCII~ 28
  IF ~  Global("Vristigor","GLOBAL",2)
~ THEN REPLY #45364 /* ~"Ich hätte nur noch ein paar Fragen..."~ */ EXTERN ~DHAILCII~ 44
END

IF ~~ THEN BEGIN 161 // from:
  SAY #45365 /* ~"Deine Frage ist berechtigt. Doch du mußt *wissen*, daß wir denselben Weg beschreiten. Wirst du ihn anhören?"~ */
  IF ~~ THEN EXTERN ~DHAILCII~ 29
END

IF ~~ THEN BEGIN 162 // from:
  SAY #45366 /* ~"Es ist ein Zeichen der Ehre, jemanden nach seinen Narben zu fragen. Es zeigt Respekt für seine Geschichte."~ */
  IF ~~ THEN REPLY #45367 /* ~"Ich erinnere mich nicht, woher ich sie alle habe."~ */ EXTERN ~DHAILCII~ 33
  IF ~~ THEN REPLY #45368 /* ~"Sie stammen von vielen Kämpfen. Aber das ist eine viel zu lange Geschichte..."~ */ EXTERN ~DHAILCII~ 36
  IF ~~ THEN REPLY #45369 /* ~"Es sind einfach nur Narben. Ich hätte da noch ein paar Fragen..."~ */ EXTERN ~DHAILCII~ 34
END

IF ~~ THEN BEGIN 163 // from:
  SAY #45730 /* ~Dak'kons Lippen werden immer schmaler. Er antwortet nicht.~ */
  IF ~~ THEN REPLY #45731 /* ~"Laß das, Morte. Ich muß hier ein paar Fragen stellen."~ */ EXTERN ~DGILTSP~ 4
  IF ~~ THEN REPLY #45733 /* ~"Sollen wir nicht lieber gehen?"~ */ EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #50168 /* ~"Es sagt, es sei ein Dabus."~ */
  IF ~~ THEN REPLY #50169 /* ~"Kannst du ihm noch ein paar Fragen stellen?"~ */ GOTO 165
  IF ~~ THEN REPLY #50211 /* ~"Das ist alles, was ich wissen wollte.  Wiedersehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 165 // from: 164.0 166.0
  SAY #50170 /* ~Dak'kon nickt.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50171 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50172 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50173 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50182 /* ~"Frag ihn, was er hier macht."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50196 /* ~"Frag ihn, was er hier macht."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50201 /* ~"Frag ihn, was er hier macht."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50206 /* ~"Sag ihm, er soll uns etwas über die Dame der Schmerzen erzählen."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50207 /* ~"Sag ihm, er soll uns etwas über Fell erzählen."~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50210 /* ~"Schon gut. Laß uns abhauen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 166 // from:
  SAY #50189 /* ~"Es sagt, es gehe seiner Arbeit nach."~ */
  IF ~~ THEN REPLY #50190 /* ~"Kannst du ihm noch ein paar Fragen stellen?"~ */ GOTO 165
  IF ~~ THEN REPLY #50191 /* ~"Das ist alles, was ich wissen wollte.  Wiedersehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 167 // from:
  SAY #50706 /* ~Dak'kon schweigt, dann sagt er mit einer Schärfe, die seiner Klinge Ehre bereitet. "Es ist nicht mein *Wille*, der Sklave dieser Frau zu sein."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #50707 /* ~"Du hast nicht viel zu wählen bei der Sache, oder, Sklave? Kaufst du ihn, Vrischika?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50708 /* ~"Schade, Dak'kon. Kaufst du ihn, Vrischika?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50709 /* ~"Dann nicht. Ich hätte noch eine Frage, Vrischika..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50710 /* ~"In Ordnung... Laß uns einfach gehen, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY #50711 /* ~"Nie hätte ich gedacht..." Seine pechschwarzen Augen studieren einen Moment lang dein Gesicht, dann blickt er schnell zu Boden, während er den Kopf schüttelt. "Auf einen grausamen Pfad haben mich meine voreiligen Worte geleitet. Mein Pfad... Dak'kons Pfad..." Er wendet sich schweigend von dir ab.~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 56
END

IF ~~ THEN BEGIN 169 // from:
  SAY #52538 /* ~"Nur, wenn das, was auf dem anderen Pfad liegt, größeren Schmerz birgt."~ */
  IF ~~ THEN REPLY #52539 /* ~"Ravel... Dies ist sehr wichtig: Hast du irgendeine Ahnung, warum ich dich gebeten habe, es zu tun?"~ */ EXTERN ~DRAVEL~ 109
END

IF ~~ THEN BEGIN 170 // from:
  SAY #52540 /* ~Dak'kon schweigt, aber seine Klinge *verformt* sich bei Ravels Worten... Die Klinge wird dunkel, ihre Schneide wird schärfer, bis die *Karach*-Klinge selbst eine schreckliche Bösartigkeit ausstrahlt. ~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52541 /* ~"Paß auf, was du sagst, Ravel..."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ EXTERN ~DRAVEL~ 33
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52542 /* ~"Paß auf, was du sagst, Ravel..."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ EXTERN ~DRAVEL~ 34
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52543 /* ~"Paß auf, was du sagst, Ravel..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52544 /* ~"Paß auf, was du sagst, Ravel..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52545 /* ~"Paß auf, was du sagst, Ravel..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52546 /* ~"Paß auf, was du sagst, Ravel..."~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 171 // from:
  SAY #52547 /* ~Dak'kons Klinge nimmt eine bösartige, tote schwarze Farbe an, in der sich seine Augen widerspiegeln... Zu deinem Erstaunen nimmt die Schneide der *Karach*-Klinge geräuschlos die Form gezackter Reißzähne an.~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52548 /* ~"Ravel... Laß ihn in Ruhe. *Ich* werde deine Fragen beantworten, nicht sie."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ EXTERN ~DRAVEL~ 63
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52549 /* ~"Ravel... Laß ihn in Ruhe. *Ich* werde deine Fragen beantworten, nicht sie."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52550 /* ~"Ravel... Laß ihn in Ruhe. *Ich* werde deine Fragen beantworten, nicht sie."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52551 /* ~"Ravel... Laß ihn in Ruhe. *Ich* werde deine Fragen beantworten, nicht sie."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52552 /* ~"Ravel... Laß ihn in Ruhe. *Ich* werde deine Fragen beantworten, nicht sie."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52553 /* ~"Ravel... Laß ihn in Ruhe. *Ich* werde deine Fragen beantworten, nicht sie."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 172 // from:
  SAY #53990 /* ~"Wo dich dein Weg hinführt, da führt mich auch mein Weg hin."~ */
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53991 /* ~"Morte? Bist du bereit?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53992 /* ~"Morte? Bist du bereit?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53993 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53994 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53995 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #53997 /* ~Dak'kon macht einen gebrochenen Eindruck - er sieht aus, als wolle alles in ihm rebellieren, aber er nickt. "Dein Weg ist mein Weg..." Seine Gesichtszüge scheinen in sich zusammenzubrechen. "Ich folge dir nur, damit ich vielleicht sterben kann."~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53999 /* ~"Das ist alles, was ich verlange. Dein Wunsch soll dir bald erfüllt werden. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("DMorte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54000 /* ~"Das ist alles, was ich verlange. Dein Wunsch soll dir bald erfüllt werden. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54001 /* ~"Dein Wunsch soll dir bald erfüllt werden. Also gut, dann wollen wir mal sehen, was auf der anderen Seite dieses Portals liegt..."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54002 /* ~"Dein Wunsch soll dir bald erfüllt werden. Also gut, dann wollen wir mal sehen, was auf der anderen Seite dieses Portals liegt..."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54003 /* ~"Dein Wunsch soll dir bald erfüllt werden. Also gut, dann wollen wir mal sehen, was auf der anderen Seite dieses Portals liegt..."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #54004 /* ~Es ist nur eine leise Bewegung, die du kaum wahrnimmst: Dak'kons Klinge funkelt, das Metall läuft an. Als du ihn ansiehst, fallen seine Arme an seiner Seite herunter, als bereite er sich auf einen Kampf vor.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 540
END

IF ~~ THEN BEGIN 175 // from:
  SAY #54007 /* ~"*Wisse*, daß ich deinen Weg viele Male gegangen bin." Dak'kon spricht langsam, als wäge er jedes seiner Worte ab. Seine Klinge ist nebelgrau geworden, als wäre sein Geist abwesend. "Ein Teil deines Pfades ist mir *bekannt*. Fünf gingen den Weg zur Festung. Jeder starb seinen eigenen Tod."~ */
  IF ~~ THEN REPLY #54008 /* ~"Aber... Wer waren sie? Wie sind sie gestorben?"~ */ GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #54009 /* ~"Ich starb den Tod der Treue. Der Schädel starb den Tod des Mutes. Die Frau starb den Tod des Kummers. Der blinde Bogenschütze starb den endgültigen und barmherzigsten aller Tode, den Tod des Körpers. Und du... Du starbst den Tod der Erinnerung."~ */
  IF ~~ THEN REPLY #54010 /* ~"Aber... Wer waren diese Leute?"~ */ EXTERN ~DMORTE~ 566
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54011 /* ~"Er *kannte* seine Ziele, ohne sie zu sehen. Viele Schatten fielen im Hagel seiner Pfeile."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 567
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54012 /* ~"Dort herrschte Dunkelheit, und jeder Schatten war Shra'kt'lor." Dak'kons Stimme ist ein Flüstern, und seine totenschwarzen Augen scheinen durch dich hindurch zu starren. "Es sind gepeinigte Kreaturen. Die Wunden in deinem Geist sind ihnen *bekannt*. Sie werden dich angreifen."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 568
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54013 /* ~"Die Schatten *leiden*. Sie *kennen* die Qualen. Sie *wissen*, wie sie dich mit dem foltern können, das dein Herz verletzt hat. Wenn du ihnen gegenüberstehst, dann *wisse*, daß du das anblickst, was dich einst umgebracht hat."~ */
  IF ~~ THEN REPLY #54014 /* ~"Dak'kon... Morte, du und ich haben überlebt. Was ist mit dem Bogenschützen und Deionarra passiert?"~ */ GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #54015 /* ~"Der Bogenschütze starb den Tod des Körpers. Die Frau starb den Tod des Geistes. Ich konnte die Frau nicht retten, weil es nicht dein WILLE war, daß sie gerettet wurde. Auf ihr Grab fiel keine Träne. Niemand *wußte* ihr Dahinscheiden zu betrauern."~ */
  IF ~~ THEN REPLY #54016 /* ~"Aber... Warum wollte ich nicht, daß sie gerettet wird?"~ */ GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #54018 /* ~"Dein Wille war nur dir selbst *bekannt*."~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54019 /* ~"Also, ihr beiden: Ich muß alles wissen, was ihr mir über diese Festung sagen könnt...~ */ EXTERN ~DMORTE~ 569
  IF ~  !InParty("Morte")
~ THEN REPLY #54020 /* ~"Also, ihr beiden: Ich muß alles wissen, was ihr mir über diese Festung sagen könnt...~ */ EXTERN ~DMORTE~ 570
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54021 /* ~"Dort lebt nichts. Die Wände sind Dunkelheit."~ */
  IF ~~ THEN REPLY #54022 /* ~"In Ordnung - bevor ich durch dieses Portal schreite - gibt es noch IRGEND ETWAS, das ihr mir mitteilen wollt, das eventuell WICHTIG sein könnte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",2)
~ EXTERN ~DMORTE~ 553
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54084 /* ~Dak'kon starrt in die Ferne und sagt ruhig: "Es ist, als wollte man Wasser mit den Händen auffangen."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 519
END

IF ~~ THEN BEGIN 184 // from:
  SAY #54085 /* ~Dak'kon sagt ruhig zu dir: "Die Schädelsäule ist eine Säule aus lebenden Köpfen. Sie besteht aus jenen, die gelogen haben und *wußten*, daß ihre Täuschung zum Tode anderer führen würde. Sie weiß sehr viel und kann daher viele Fragen beantworten, aber sie erwartet dafür auch eine hohe Bezahlung. Man sollte ihr keine solchen Fragen stellen."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 185 // from:
  SAY #54773 /* ~"Die Ketten halten ihn nicht. Sein Glaube fesselt ihn."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Deva, ich hätte da ein paar Fragen an dich..."~ */ EXTERN ~DTRIAS~ 8
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Deva, ich hätte da ein paar Fragen an dich..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 186 // from:
  SAY #57128 /* ~"Er ist ein wahrer Verräter an den Githzerai. Er hat unser Volk verflucht." Dak'kon zieht sein Schwert. "Das ist Grund genug für ihn zu sterben."~ */
  IF ~~ THEN REPLY #57129 /* ~"Steck die Klinge weg, Dak'kon."~ */ EXTERN ~DBURGHER~ 2
  IF ~~ THEN REPLY #57130 /* ~"Dann töte ihn."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 3
END

IF ~~ THEN BEGIN 187 // from:
  SAY #57131 /* ~"Du kannst ihm nicht trauen. Laß ihn hier unter diesem Wagen verrecken."~ */
  IF ~~ THEN REPLY #57132 /* ~"Nein, Dak'kon, wir ziehen ihn raus."~ */ EXTERN ~DBURGHER~ 5
  IF ~~ THEN REPLY #57133 /* ~"Also gut. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #57134 /* ~"Er ist ein wahrer Verräter an den Githzerai. Er hat unser Volk verflucht." Dak'kon zieht sein Schwert. "Das ist Grund genug für ihn zu sterben."~ */
  IF ~~ THEN REPLY #57135 /* ~"Steck die Klinge weg, Dak'kon."~ */ EXTERN ~DBURGHER~ 13
  IF ~~ THEN REPLY #57136 /* ~"Dann töte ihn."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 14
END

IF ~~ THEN BEGIN 189 // from:
  SAY #57137 /* ~"Du kannst ihm nicht trauen. Laß ihn hier unter diesem Wagen verrecken."~ */
  IF ~~ THEN REPLY #57138 /* ~"Nein, Dak'kon, wir ziehen ihn raus."~ */ EXTERN ~DBURGHER~ 16
  IF ~~ THEN REPLY #57139 /* ~"Also gut. Laß uns gehen."~ */ EXTERN ~DBURGHER~ 17
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",14)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 190 // from:
  SAY #59167 /* ~Dak'kon wendet sich dir zu, seine Augen glänzen schwarz wie zwei Kohlen. Seine Klinge schimmert, das Metall schwimmt wie ein Ölfilm auf Wasser. Dak'kons Stimme ist ruhig und fest, als er spricht... Sie hat überhaupt nichts Kratziges mehr. "Was wünschst du?"~ [DAK205] */
  IF ~~ THEN REPLY #59168 /* ~"Es gibt Dinge, die ich *wissen* möchte, Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59169 /* ~"Im Augenblick nichts, Dak'kon. Laß uns weitergehen."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
GlobalLT("BD_DAKKON_MORALE","GLOBAL",15)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 191 // from:
  SAY #59170 /* ~Dak'kon wendet sich dir zu, seine Augen glänzen wie zwei schwarze Kohlen. Seine Klinge spiegelt einen Augenblick lang seine Augen wider, als du ihn anredest. Dann nickt er. "Was wünschst du?"~ [DAK205] */
  IF ~~ THEN REPLY #59171 /* ~"Es gibt Dinge, die ich *wissen* möchte, Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59172 /* ~"Im Augenblick nichts, Dak'kon. Laß uns weitergehen."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 192 // from:
  SAY #59173 /* ~Dak'kon dreht sich langsam um, seine Augen sind wie zwei tote, schwarze Steine. Sein Gesicht ist aschfahl, und seine Klinge hat die Farbe von getrocknetem Blut. Als er spricht, hört sich seine Stimme *alt* und gebrochen an. "Was wünschst du?"~ [DAK205] */
  IF ~~ THEN REPLY #59174 /* ~"Es gibt Dinge, die ich *wissen* möchte, Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59175 /* ~"Im Augenblick nichts, Dak'kon. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 193 // from: 190.0 191.0 192.0 194.1 195.1 196.1 197.2 198.2 199.2 200.1 201.2 202.1 203.7 204.3 205.2 206.1 207.2 208.0 209.1 210.1 211.1 212.1 213.1 214.1 215.1 216.3 217.5 218.1 219.1 220.1 221.1 222.2 223.1 224.2 225.1 226.1 227.1 228.1 230.1 231.4 232.5 233.1 234.1 235.0 236.3 237.3 238.3 239.3 240.3 241.3 242.3 243.3 244.2 245.2 246.2 247.2 248.2 250.1 251.4 252.3 253.2 254.3 255.4 256.2 258.1 259.1 260.1 261.1 262.1 268.2 269.0 270.6 271.3 272.3 273.4 274.3 275.3 278.3 279.3 281.2 282.3 285.2 287.0 289.0 290.1 291.2 292.1 293.0 294.14 295.0 296.0 298.0 318.7 319.2 320.1 322.0 323.2 324.1 328.2 329.5 330.3 331.3 332.5 333.6 334.7 335.7 337.6 338.3 339.4 340.3 341.3 343.1 351.1 352.1 353.1 356.1 363.0
  SAY #59176 /* ~"Ich werde dich anhören."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59177 /* ~"Deine Züge sind... mir nicht vertraut. Was bist du?"~ */ GOTO 194
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59178 /* ~"Ich hätte ein paar Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59179 /* ~"Ich wollte dich was zu unserer Wanderschaft fragen..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #59180 /* ~"Ich suche einen Lehrmeister. Vielleicht kannst du mir helfen..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68257 /* ~"Kann ich mit dir über deine Lehren sprechen?"~ */ GOTO 366
  IF ~  GlobalGT("Ravel_Dakkon","GLOBAL",0)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59181 /* ~"Dak'kon,... Ravel hat dich einen Sklaven genannt. Was meinte sie damit?"~ */ GOTO 352
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #59182 /* ~"Dak'kon, was ist 'Shra'kt'lor?'"~ */ GOTO 260
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59183 /* ~"Dak'kon, erzähl mir noch einmal, wie ich dir bei Shra'kt'lor das Leben gerettet habe."~ */ GOTO 223
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59184 /* ~"Du sagtest, *ich* habe dir den Kreis des Zerthimon gegeben, Dak'kon?"~ */ GOTO 226
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59185 /* ~"Erzähl mir von meinem anderen 'Ich',... der Inkarnation, die du kanntest. Wie war ich?"~ */ GOTO 210
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59186 /* ~"Wie kam es dazu, daß du in meiner Schuld stehst, Dak'kon?"~ */ GOTO 217
  IF ~~ THEN REPLY #59187 /* ~"Schon gut, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #59188 /* ~"Ein Githzerai."~ */
  IF ~~ THEN REPLY #59189 /* ~"Ein Githzerai?"~ */ GOTO 195
  IF ~~ THEN REPLY #59190 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59191 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 195 // from: 194.0 255.0
  SAY #59192 /* ~"Ein Githzerai ist einer vom 'Volk'."~ */
  IF ~~ THEN REPLY #59193 /* ~"Einer des Volkes?"~ */ GOTO 196
  IF ~~ THEN REPLY #59194 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59195 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #59196 /* ~"Ein Githzerai."~ */
  IF ~~ THEN REPLY #59197 /* ~"Ja, aber was genau sind die Githzerai?"~ */ GOTO 197
  IF ~~ THEN REPLY #59198 /* ~"Na gut. Da sind noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59199 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #59200 /* ~Dak'kon ist einen Moment lang still, dann spricht er. "Unsere Geschichte muß dir nicht *bekannt* gemacht werden. Wir würden an der Klinge der Zeit verbluten, bevor ich auch nur einen Bruchteil der Geschichten unseres Volkes erzählt hätte."~ */
  IF ~~ THEN REPLY #59201 /* ~"Eure Geschichten interessieren mich nicht... Ich möchte wissen, wie euer Volk heute lebt."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 198
  IF ~~ THEN REPLY #59202 /* ~"Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59203 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59204 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0 231.0 255.1
  SAY #59205 /* ~Dak'kon ist einen Moment lang still. "*Kenne* diese Antwort und akzeptiere sie: Wir sind das 'Volk', das sich ein Heim auf der sich ständig wandelnden Ebene des Limbus machen." Mit einer geschickten Bewegung zieht Dak'kon die Klinge von seinem Rücken hervor und hält sie vor sich.~ */
  IF ~~ THEN REPLY #59206 /* ~Warte ab, was passiert.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 199
  IF ~~ THEN REPLY #59207 /* ~"Schon gut. Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59208 /* ~"Ich würde eigentlich gern noch ein paar Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59209 /* ~"Ist gut, Dak'kon. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #59210 /* ~"Wir formen die Limbus-Materie mit unserem Geist. Wir schmieden Städte kraft unserer Gedanken." Du siehst, wie mehrere kleine Wellen von der Mitte der Klinge aus über das Metall laufen. Die Höhe und der Rhythmus dieser Wellen richten sich nach Dak'kons Stimme. "Wir leben in diesem Chaos und erhalten uns nur durch unser *Wissen*. Wir sind die Githzerai."~ */
  IF ~~ THEN REPLY #59211 /* ~"Was ist das da für eine Klinge... Sie hat sich im Takt mit deiner Stimme bewegt."~ */ GOTO 251
  IF ~~ THEN REPLY #59212 /* ~"Schon gut. Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59213 /* ~"Klar. Ich möchte noch ein paar Dinge *wissen *..."~ */ GOTO 193
  IF ~~ THEN REPLY #59214 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 232.0
  SAY #59215 /* ~"Sie ist *bekannt* unter dem Namen 'Sigil'. Dem 'Volk' ist sie als die Stadt *bekannt*, die sich selbst nicht *kennt*."~ */
  IF ~~ THEN REPLY #59216 /* ~"Sie kennt sich selbst nicht? Was meinst du damit?"~ */ GOTO 201
  IF ~~ THEN REPLY #59217 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59218 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #59219 /* ~"Die Stadt existiert, aber sie *kennt* sich nicht. Und da sie sich nicht *kennt*, ist ihr Dasein fehlerhaft."~ */
  IF ~~ THEN REPLY #59220 /* ~"Was meinst du damit: Sie ist fehlerhaft?"~ */ GOTO 203
  IF ~~ THEN REPLY #59221 /* ~"Du sprichst, als sei die Stadt lebendig."~ */ GOTO 202
  IF ~~ THEN REPLY #59222 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59223 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.1 203.6
  SAY #59224 /* ~"Sie *kennt* sich vielleicht nicht bewußt, so wie du und ich uns *kennen*, aber sie lebt. Sie wächst, verändert sich und beeinflußt das Denken all derer, die in ihr leben."~ */
  IF ~~ THEN REPLY #59225 /* ~"Warum hast du gesagt, daß die Stadt sich selbst nicht kennt?"~ */ GOTO 203
  IF ~~ THEN REPLY #59226 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59227 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 201.0 202.0 236.1 237.1 238.1 239.1 240.1 241.1 242.1 243.1 244.0
  SAY #59228 /* ~"Die Stadt besteht nur als Gegensatz zu sich selbst. Sie hat sich von den Ebenen losgelöst, will aber überall auf einmal sein. Ihre Mauern sind Türen, die jedoch stets verschlossen sind. Ein solches Dasein beweist doch, daß sie sich selbst nicht *kennt* - und damit fehlerhaft ist."~ */
  IF ~~ THEN REPLY #59229 /* ~"Was meinst du damit: diese Stadt ist überall auf einmal?"~ */ GOTO 236
  IF ~~ THEN REPLY #59230 /* ~"Ihre Mauern sind Türen?"~ */ GOTO 236
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59231 /* ~Wahrheit: "Was ist, wenn die Stadt *nicht* fehlerhaft ist? Eine Sache muß nicht geordnet sein und einen Zweck haben, um sich selbst zu kennen. Was ist, wenn diese Widersprüche Stärken sind, die du nicht erkennst?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59232 /* ~Wahrheit: "Was ist, wenn die Stadt *nicht* fehlerhaft ist? Eine Sache muß nicht geordnet sein und einen Zweck haben, um sich selbst zu kennen. Was ist, wenn diese Widersprüche Stärken sind, die du nicht erkennst?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59233 /* ~Wahrheit: "Was ist, wenn die Stadt *nicht* fehlerhaft ist, und du nur die Gründe für ihre Widersprüche nicht kennst? In allem ist Ordnung. Vielleicht gibt es ein doch Muster, das du nur nicht sehen kannst."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59234 /* ~Wahrheit: "Was ist, wenn die Stadt *nicht* fehlerhaft ist, und du nur die Gründe für ihre Widersprüche nicht kennst? In allem ist Ordnung. Vielleicht gibt es ein doch Muster, das du nur nicht sehen kannst."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~~ THEN REPLY #59235 /* ~"Du sprichst, als sei die Stadt lebendig."~ */ GOTO 202
  IF ~~ THEN REPLY #59236 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59237 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.2 203.3 203.4 203.5
  SAY #59238 /* ~"Auf deine Frage eine Gegenfrage: Was ist, wenn die Stadt fehlerhaft ist und voller Widersprüche steckt?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #59239 /* ~Wahrheit: "Auf *deine* Frage eine Gegenfrage: Du behauptest, das Dasein dieser Stadt sei fehlerhaft. Du nimmst das einfach so hin, anstatt nach etwas Besserem zu suchen. Das deutet darauf hin, daß du fehlerhaft bist... und daß du nicht nach Wissen suchst, sondern nur nach einer einfachen Antwort."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #59240 /* ~Wahrheit: "Auf *deine* Frage eine Gegenfrage: Du behauptest, das Dasein dieser Stadt sei fehlerhaft. Du nimmst das einfach so hin, anstatt nach etwas Besserem zu suchen. Das deutet darauf hin, daß du fehlerhaft bist... und daß du nicht nach Wissen suchst, sondern nur nach einer einfachen Antwort."~ */ GOTO 205
  IF ~~ THEN REPLY #59241 /* ~"Was hast du damit gemeint, daß die Stadt überall auf einmal ist?"~ */ GOTO 236
  IF ~~ THEN REPLY #59242 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59243 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0 204.1
  SAY #59244 /* ~Dak'kon verstummt. "Wir können die Antworten auf unsere Fragen nicht *kennen*. Die Stadt existiert - das ist alles, was zählt."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #59245 /* ~"Trotzdem würde ich behaupten, daß wir uns selbst durch die Fragen *kennen*, die wir stellen, und die, die wir nicht stellen. Wenn wir aufhören, Fragen zu stellen, und nur akzeptieren, was wir sehen..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 206
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #59246 /* ~"Trotzdem würde ich behaupten, daß wir uns selbst durch die Fragen *kennen*, die wir stellen, und die, die wir nicht stellen. Wenn wir aufhören, Fragen zu stellen, und nur akzeptieren, was wir sehen..."~ */ GOTO 206
  IF ~~ THEN REPLY #59247 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59248 /* ~"Na, laß gut sein. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 205.0 205.1
  SAY #59249 /* ~"Dann hören wir auf, uns selbst zu *kennen*." Dak'kon spricht jetzt mit einer etwas tieferen Stimme. "Solche Worte sind bereits zuvor gesprochen worden. Ich habe sie gehört und *kenne* sie."~ */
  IF ~~ THEN REPLY #59250 /* ~"Wo hast du sie gehört?"~ */ GOTO 207
  IF ~~ THEN REPLY #59251 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59252 /* ~"Schon gut. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY #59253 /* ~"Es sind meine Worte. Ich *kannte* sie einst und *wußte*, was sie bedeuten. Ich hatte sie vergessen, bis zu dem Moment, als du sprachst." Dak'kons Blick starrt durch dich hindurch, und seine Klinge schimmert nicht mehr; ihr entweicht alle Farbe, bis sie durchsichtig ist. ~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59254 /* ~"Dak'kon, wie kommt es, daß mir deine Worte bekannt sind?"~ */ GOTO 208
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59255 /* ~"Dak'kon, habe ich diese Worte von dir gehört, als wir gemeinsam durch die Ebenen reisten?"~ */ GOTO 209
  IF ~~ THEN REPLY #59256 /* ~"Ich... verstehe. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59257 /* ~"Schon gut. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY #59258 /* ~"Ich habe diese Worte gesprochen, doch sie gehören mir nicht. Andere mögen sie auch *kennen*, denn das *Kennen* liegt bereits in den Dingen selbst. Die Menschen nennen es *Weisheit*."~ */
  IF ~~ THEN REPLY #59259 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59260 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 207.1
  SAY #59261 /* ~"Unzählige Male diskutierten wir einst die Bedeutung solcher Worte. Damals, als ich die schwere Last des Alters noch nicht so sehr spürte wie jetzt. Fast habe ich vergessen, daß ich einst diesen Weg entlang ging."~ */
  IF ~~ THEN REPLY #59262 /* ~"Dak'kon, wie war ich... dieses andere Ich?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 210
  IF ~~ THEN REPLY #59263 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59264 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 193.9 209.0
  SAY #59265 /* ~Dak'kons starrer Blick geht durch dich hindurch, und er verfällt in Schweigen.~ */
  IF ~~ THEN REPLY #59266 /* ~"Dak'kon?"~ */ JOURNAL #59269 /* ~Dak'kon hat gesagt, er habe eine meiner früheren Inkarnationen gekannt... und er wüßte nichts Nettes über ihn zu berichten. Er nannte ihn fähig, aber egozentrisch und verräterisch in seinen Taten. Ich beginne, mich zu fragen, wieviel Schaden meine anderen Ichs auf den Ebenen angerichtet haben.~ */ GOTO 211
  IF ~~ THEN REPLY #59267 /* ~"Na dann, laß gut sein. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59268 /* ~"Vielleicht ist es das Beste, wenn wir nicht davon reden. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #59270 /* ~"*Wisse*, daß er anders war. *Wisse*, daß diese Andersartigkeit ihm nicht auf die Haut geschrieben stand, noch in der Art, wie er seine Waffe führte, noch in der Kleidung, die er trug. *Wisse*, daß er anders war durch seine Art zu denken und die Art, wie er seine Gedanken in die Tat umsetzte. Sein WILLE materialisierte sich. *Wisse*, daß er andere sah, und doch NICHT sah. Er *wußte* nur, wie sie ihm nützen konnten. Sein Herz war falsch und kalt, und nie hat ihn diese Kälte verbrannt."~ */
  IF ~~ THEN REPLY #59271 /* ~"Hat es dir je geschadet, Dak'kon? Hat er dich hintergangen?"~ */ GOTO 212
  IF ~~ THEN REPLY #59272 /* ~"Ich... verstehe. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59273 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY #59274 /* ~Dak'kons Klinge blutet aus und wird flach und mattschwarz. Du siehst zu, wie aus den Kanten der Klinge Enden wachsen, wie Zähne. Sein Gesicht versteinert sich und er spricht durch die Zähne. "Es ist nicht mein *Wille*, das *weißt* du."~ */
  IF ~~ THEN REPLY #59275 /* ~"*Sag* mir, Dak'kon: Hat er dich je *hintergangen*?"~ */ GOTO 213
  IF ~~ THEN REPLY #59276 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59277 /* ~"Dann laß uns nicht mehr davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY #59278 /* ~"*Wisse*, daß es VIEL Verrat gab. Jeder Verrat an mir geschah durch meine Hand, nicht die eines anderen."~ */
  IF ~~ THEN REPLY #59279 /* ~"*Sag* mir, Dak'kon: Was war das für ein Verrat?"~ */ GOTO 214
  IF ~~ THEN REPLY #59280 /* ~"Schon gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59281 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #59282 /* ~"Ich gab ihm mein WORT. Ich gab mich SELBST."~ */
  IF ~~ THEN REPLY #59283 /* ~"Wovon redest du eigentlich?"~ */ JOURNAL #59286 /* ~Dak'kon hat mir etwas über das Wesen seines Sklaventums erzählt... Weil ich ihm das Leben gerettet habe, hat er versprochen, mir Zeit meines Lebens zu dienen. Er war sich allerdings meiner Unsterblichkeit nicht bewußt. Dadurch hat er mir den Rest seines Lebens versprochen.~ */ GOTO 215
  IF ~~ THEN REPLY #59284 /* ~"Schon gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59285 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 214.0 278.0 356.0
  SAY #59287 /* ~"Das Volk läßt sich nicht zu Sklaven eines anderen machen, ob in Taten oder Ketten. Wenn wir uns in einem solchen Käfig finden, HANDELN wir, um uns zu befreien, auch wenn das bedeutet, daß wir eine Zeitlang einen anderen Käfig ertragen müssen. Du hast mir einen großen Dienst erwiesen. Dadurch hast du mich zum Sklaven gemacht. Ich habe so gehandelt, um mich zu befreien. *Wisse*, daß ich mein Wort und mich selbst gegeben habe, in deinem Namen zu *handeln* bis zu deinem Tod."~ */
  IF ~~ THEN REPLY #59288 /* ~"Aber... ich kann nicht sterben."~ */ GOTO 216
  IF ~~ THEN REPLY #59289 /* ~"Ich... verstehe. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59290 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #59291 /* ~"Das *wußte* ich nicht. Ich gab ihm mein *Wort*. Ich gab ihm mich *selbst*. *Wisse*, daß ich nun nichts mehr zu geben übrig habe als mein Leben. *Wisse*, daß ich dir nur folge, damit ich sterben möge."~ */
  IF ~~ THEN REPLY #59292 /* ~"Was für einen Dienst habe ich dir erwiesen, der... dich in Ketten gelegt hat?"~ */ GOTO 217
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59293 /* ~"Dak'kon, so muß es nicht sein... Ich kann dich freilassen. Ich will nicht, daß du noch länger ein Sklave bist. Betrachte die Schuld als abgezahlt."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59294 /* ~"Dak'kon, so muß es nicht sein... Ich kann dich freilassen. Ich will nicht, daß du noch länger ein Sklave bist. Betrachte die Schuld als abgezahlt."~ */ GOTO 233
  IF ~~ THEN REPLY #59295 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59296 /* ~"Also, dieses andere Ich hat dir das Versprechen abgenommen, ihm bis zu seinem Tod zu dienen, und du wußtest nicht, daß er *unsterblich* ist? Das ist ja großartig. Gehen wir weiter..., Sklave."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59297 /* ~"Also, dieses andere Ich hat dir das Versprechen abgenommen, ihm bis zu seinem Tod zu dienen, und du wußtest nicht, daß er *unsterblich* ist? Das ist ja großartig. Gehen wir weiter..., Sklave."~ */ EXIT
  IF ~~ THEN REPLY #59298 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 193.10 216.0
  SAY #59299 /* ~"Du hast mir das Leben gerettet. Dafür wird dein Leben meines."~ */
  IF ~~ THEN REPLY #59300 /* ~"Wie habe ich dir das Leben gerettet?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 218
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59301 /* ~"Dak'kon, so muß es nicht sein... Ich kann dich freilassen. Ich will nicht, daß du noch länger ein Sklave bist. Betrachte die Schuld als abgezahlt."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59302 /* ~"Dak'kon, so muß es nicht sein... Ich kann dich freilassen. Ich will nicht, daß du noch länger ein Sklave bist. Betrachte die Schuld als abgezahlt."~ */ GOTO 233
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59303 /* ~"Also, dieses andere Ich hat dir das Versprechen abgenommen, ihm bis zu seinem Tod zu dienen, und du wußtest nicht, daß er *unsterblich* ist? Das ist ja großartig. Gehen wir weiter..., Sklave."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59304 /* ~"Also, dieses andere Ich hat dir das Versprechen abgenommen, ihm bis zu seinem Tod zu dienen, und du wußtest nicht, daß er *unsterblich* ist? Das ist ja großartig. Gehen wir weiter..., Sklave."~ */ EXIT
  IF ~~ THEN REPLY #59305 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59306 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0 262.0 331.0
  SAY #59307 /* ~"Auf der rollenden Ebene Limbus formt das Volk Städte aus dem Chaos durch seine Gedanken. *Wisse*, daß es keinen Platz gibt für einen gespaltenen Geist." Dak'kon hebt die Klinge von der Schulter und hält sie vor sich. Als er sie mit dem Blick fixiert, wird sie *scharf*, bis sie fast so dünn ist wie ein Stück Papier.~ */
  IF ~~ THEN REPLY #59308 /* ~"Erzähl weiter..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 219
  IF ~~ THEN REPLY #59309 /* ~"Ich glaube, ich habe genug darüber gehört. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59310 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #59311 /* ~"Ein gespaltener Geist ist ziellos. Ein gespaltener Geist durchbricht Mauern und zermürbt Stein." Während Dak'kon spricht, korrodieren die Kanten seiner Klinge, das Metall beschlägt und schmilzt an den Rändern. "Viele gespaltene Geister können eine Stadt *zerstören*."~ */
  IF ~~ THEN REPLY #59312 /* ~"Ich verstehe. Erzähl weiter..."~ */ GOTO 220
  IF ~~ THEN REPLY #59313 /* ~"Ich habe genug darüber gehört. Es gibt noch andere Dinge, die ich *wissen* möchte.."~ */ GOTO 193
  IF ~~ THEN REPLY #59315 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #59316 /* ~"Lang schon *kenne* ich die Worte des Zerthimon. Durch meinen Mund lernten viele die Worte des Zerthimon *kennen*. Die *Zerth* beschützen die Gemeinschaft gegen alle Bedrohungen gegen Körper und Geist. Sie sind die Leitsteine im Chaos. Und so trug es sich zu, daß ich die Worte des Zerthimon verkündete, ohne die Worte des Zerthimon zu *kennen*. Es geschah, daß ich mich selbst nicht mehr *kannte*."~ */
  IF ~~ THEN REPLY #59318 /* ~"Heißt das, du... hast an den Worten gezweifelt?"~ */ GOTO 221
  IF ~~ THEN REPLY #59319 /* ~"Ich habe genug darüber gehört. Es gibt noch andere Dinge, die ich *wissen* möchte.."~ */ GOTO 193
  IF ~~ THEN REPLY #59320 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #59322 /* ~"Nein." Dak'kons Stimme ist schneidend, und seine Klinge *schärft sich* als Reaktion darauf. "Ich *kannte* die Worte, und doch fühlte ich im Herzen, daß andere die Worte vielleicht nicht so *kannten* wie Zerthimon sie *kannte*. Und so entstand die Spaltung. Als mein Geist sich in zwei teilte, spalteten sich auch jene, die mich als ihren Leitstein ansahen. Viele Dutzend Githzerai, viele Hundert Dutzend Githzerai... begannen zu zweifeln. Shra'kt'lor starb an jenem Tag."~ */
  IF ~~ THEN REPLY #59324 /* ~"Dann begannen also jene, die dir folgten, auch an den Worten zu zweifeln, und die Stadt wurde geschwächt."~ */ GOTO 222
  IF ~~ THEN REPLY #59325 /* ~"Ich habe genug darüber gehört. Es gibt noch andere Dinge, die ich *wissen* möchte.."~ */ GOTO 193
  IF ~~ THEN REPLY #59326 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #59330 /* ~"Die Feinde des Zerthimon kamen. *Wisse*, daß der Haß, den sie für seine Worte und sein Volk empfanden, ihren Klingen Kraft gab. *Wisse*, daß sie die Schwäche der Stadt spürten und den Krieg mit sich brachten. Viele Githzerai gingen im Chaos unter oder unter den Klingen unserer Feinde zugrunde." Kleine Metallperlen bilden sich auf der Oberfläche der Klinge, als würde sie Blasen werfen. "*Wisse*, daß all dies vor langer Zeit geschah."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59332 /* ~"Was ist denn passiert?"~ */ GOTO 268
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59337 /* ~"Was ist denn passiert?"~ */ GOTO 223
  IF ~~ THEN REPLY #59342 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59344 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 193.7 222.1
  SAY #59347 /* ~"Als ich von den Mauern von Shra'kt'lor stürzte, mußt du *wissen*, war mein Selbst zerbrochen. Meine Klinge war wie Nebel, mein Geist gespalten. Ich driftete ziellos auf den Meeren des Limbus und wünschte mir, zu ertrinken. Ich starb tagelang, mein Geist war überspült von dem Gefühl des Gespaltenseins, bis der Tod mich endlich fand. Er war gekleidet in deine Haut und sprach mit deiner Stimme."~ */
  IF ~~ THEN REPLY #59348 /* ~"Ich?"~ */ GOTO 224
  IF ~~ THEN REPLY #59349 /* ~"Ich habe genug darüber gehört. Es gibt noch andere Dinge, die ich *wissen* möchte.."~ */ GOTO 193
  IF ~~ THEN REPLY #59351 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #59353 /* ~"Du hast mich gebeten, dich anzuhören."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 344
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59355 /* ~"Was habe ich gesagt?"~ */ GOTO 227
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59357 /* ~"Schon gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59359 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 344.1 345.1 346.1 347.1 348.1 349.2 350.0
  SAY #59360 /* ~Dak'kon schweigt. "Ich hörte deine Worte. Das Chaos in meinem Kopf wurde still. Ich *kannte* mich selbst wieder."~ */
  IF ~~ THEN REPLY #59361 /* ~"Du hast also den Kreis von mir bekommen?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~Es hat sich herausgestellt, daß *ich* Dak'kon den ungebrochenen Kreis von Zerthimon gegeben habe.~ */ GOTO 226
  IF ~~ THEN REPLY #59362 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59363 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 193.8 225.0 227.0
  SAY #59364 /* ~"Ja. Ich *kannte* die Worte und somit *kannte* ich mich selbst wieder."~ */
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59365 /* ~"Aber *habe* ich dir nun das Leben gerettet, Dak'kon? Oder hat es dich nur noch weiter gespalten, als du den Kreis studiert hast?"~ */ GOTO 228
  IF ~~ THEN REPLY #59366 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59367 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 224.1
  SAY #59368 /* ~"Dak'kon, *Zerth* von Shra'kt'lor-Versunken, der zuletzt die *Karach*klinge führte, *wisse*, daß ich mit den Worten des Zerthimon zu dir komme, nicht in Chaos gemeißelt, sondern in Stein, gemeißelt durch den Willen in einem ungebrochenen Kreis. *Wisse*, daß sie wahr sind und *wisse*, daß dein gespaltener Geist nicht mehr länger gespalten sein muß. Alles, was du tun mußt, ist den Stein nehmen, und du wirst dich selbst wieder *kennen*."~ */
  IF ~~ THEN REPLY #59369 /* ~"Du hast also den Kreis von *mir* bekommen?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~Es hat sich herausgestellt, daß *ich* Dak'kon den ungebrochenen Kreis von Zerthimon gegeben habe.~ */ GOTO 226
  IF ~~ THEN REPLY #59370 /* ~"Ich... verstehe. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59371 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 226.0
  SAY #59373 /* ~Dak'kon schweigt einen Augenblick, doch seine Klinge windet sich wie unter Schmerzen. Es dauert eine Weile, bis er weiterspricht, und als er etwas sagt, ist seine Stimme sehr ernst. "Es hat mich gespalten."~ */
  IF ~~ THEN REPLY #59374 /* ~"Also, *habe* ich dir nun das Leben gerettet, Dak'kon? Oder habe ich nur deinen Schmerz vergrößert? Diese Worte... die Worte des Zerthimon... sie scheinen dich noch mehr zu spalten. Ich sehe es, wenn du die Lehren wiedergibst."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 229
  IF ~~ THEN REPLY #59375 /* ~"Das dachte ich mir. Es gibt noch mehr Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59376 /* ~"Laß uns nicht mehr davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #59377 /* ~Dak'kon schweigt.~ */
  IF ~~ THEN REPLY #59378 /* ~"Ich sagte, daß ich dich NIEMALS gerettet habe, Dak'kon... Ich habe dich lediglich vor dem nahen Tode bewahrt, um dich noch einmal sterben zu lassen. Wärest du in Shra'kt'lor gestorben, hättest du Frieden gefunden."~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #59379 /* ~"Deine Worte tragen die Bürde der Wahrheit. Der Tod, den ich in Shra'kt'lor gestorben wäre, wäre der letzte gewesen. Jeder Tag, den ich seither gelebt habe, ist ein neuer Tod."~ */
  IF ~~ THEN REPLY #59380 /* ~"Du mußt mir nicht mehr dienen, Dak'kon. Ich habe dir nie das Leben gerettet; ich habe dich nur zweimal getötet. Du schuldest mir nichts."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_2","GLOBALGood",3)
~ GOTO 233
  IF ~~ THEN REPLY #59381 /* ~"So ist nun einmal das Leben. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59382 /* ~"Laß uns später darüber sprechen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 193.1 197.1 198.1 199.1 245.1 246.1 247.1 248.1 250.0 251.3 252.2 253.1 254.2 255.3 256.1 270.5 271.2 272.2 273.3 274.2 275.2 278.2 279.2 281.1 282.2 285.1 343.0
  SAY #59383 /* ~Dak'kon wartet.~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59384 /* ~"Kannst du mir noch was über die Githzerai erzählen?"~ */ GOTO 198
  IF ~~ THEN REPLY #59385 /* ~"Du scheinst besondere Betonung auf das 'Wissen' und 'Kennen' zu legen. Warum?"~ */ GOTO 245
  IF ~~ THEN REPLY #59386 /* ~"Was hast du da für eine Klinge?"~ */ GOTO 251
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59387 /* ~"Ich habe ein paar Fragen zur Sprache der Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59388 /* ~"Ich hätte statt dessen ein paar andere Fragen..."~ */ GOTO 193
  IF ~~ THEN REPLY #59389 /* ~"Schon gut, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 193.2 236.2 237.2 238.2 239.2 240.2 241.2 242.2 243.2 244.1 258.0 259.0 328.1
  SAY #59390 /* ~Dak'kon wartet.~ */
  IF ~~ THEN REPLY #59391 /* ~"Was weißt du über die Stadt Sigil?"~ */ GOTO 200
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #59392 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 258
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #59393 /* ~"Ich habe ein Journal verloren. Weißt du, wo es sein könnte?"~ */ GOTO 259
  IF ~  GlobalGT("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #59394 /* ~"Als Fell die Tätowierung auf meinem Arm beschrieb, sagtest du, du kennst die Symbole."~ */ GOTO 328
  IF ~  GlobalGT("Dakkon_Old_Companions","GLOBAL",0)
~ THEN REPLY #59395 /* ~"Du sagtest, ich reiste einst mit vier anderen zusammen. Wer waren diese anderen?"~ */ GOTO 329
  IF ~~ THEN REPLY #59396 /* ~"Ich hätte statt dessen ein paar andere Fragen..."~ */ GOTO 193
  IF ~~ THEN REPLY #59397 /* ~"Schon gut, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 216.1 216.2 217.1 217.2 230.0
  SAY #59398 /* ~"Nein..." Dak'kons Gesicht verzieht sich schmerzhaft, seine Augen starren durch dich hindurch. "Es ist nicht dein Wort, das Gewicht hat, noch wird dein Wort mich befreien. Das Wort, das mich in Ketten hält, ist meines. Die Qual ist meine. In meinem Inneren *weiß* ich, daß die Ketten bleiben werden. Worte bringen keine Freiheit."~ */
  IF ~~ THEN REPLY #59399 /* ~"Gibt es irgend einen Weg, dich zu befreien?"~ */ GOTO 234
  IF ~~ THEN REPLY #59400 /* ~"Na dann, laß gut sein. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59403 /* ~"Laß uns ein andermal darüber reden. Dieses Thema ist noch nicht abgeschlossen. Aber nun laß uns weiter."~ */ JOURNAL #59404 /* ~Dak'kon sagt, der einzige Weg, ihn aus seiner Sklaverei zu befreien, sei mein endgültiger Tod. Ich habe nicht die geringste Ahnung, wie ich das zuwege bringen könnte.~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #59406 /* ~"Du mußt den endgültigen Tod sterben, und doch ist dein Weg nicht der Weg des Todes. Es gibt *keine* Lösung in dieser Sache."~ */
  IF ~~ THEN REPLY #59409 /* ~Eid: "Ich schwöre, daß ich eine Lösung finden werden, Dak'kon. Ich werde einen Weg finden, dich zu befreien."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_2","GLOBALLaw",3)
~ JOURNAL #59416 /* ~Ich habe Dak'kon versprochen, ihn aus seinem Sklavendasein zu befreien. Anstatt sich zu freuen, wurde er durch diesen Schwur noch deprimierter.~ */ GOTO 235
  IF ~~ THEN REPLY #59412 /* ~"Ich... verstehe. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59414 /* ~"Laß uns ein andermal darüber reden. Dieses Thema ist noch nicht abgeschlossen. Aber nun laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #59425 /* ~Dak'kons Stimme klingt ermattet, als wäre er plötzlich krank geworden. "Du mußt *wissen*, daß du meinen Worten noch Worte hinzugefügt hast." Sein Ausdruck ist schmerzverzerrt, als sein Blick den deinen trifft. "Jetzt hast du uns beide in Ketten gelegt."~ */
  IF ~~ THEN REPLY #59426 /* ~"Ich... verstehe. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59428 /* ~"Laß uns ein andermal darüber reden. Dieses Thema ist noch nicht abgeschlossen. Aber nun laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 203.0 203.1 204.2
  SAY #59430 /* ~"Die ganze Stadt besteht aus Türen. Sie führen überall hin."~ */
  IF ~~ THEN REPLY #59432 /* ~"Wo sind diese Türen?"~ */ GOTO 237
  IF ~~ THEN REPLY #59433 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 203
  IF ~~ THEN REPLY #59435 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59437 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59439 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #59442 /* ~"Sie sind überall in der ganzen Stadt..." Dak'kon schweigt einen Moment. "Man sagt, jeder eingefaßte Raum in der Stadt, die unter dem Namen Sigil bekannt ist, sei eine Tür, die irgendwo anders hinführt."~ */
  IF ~~ THEN REPLY #59445 /* ~"Verstehe ich nicht."~ */ GOTO 238
  IF ~~ THEN REPLY #59447 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 203
  IF ~~ THEN REPLY #59450 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59452 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59455 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #59456 /* ~"Stell dir eine Haustür vor. Wenn du die Tür herausnimmst, bleibt der Rahmen stehen. Der Raum innerhalb des Rahmens ist immer noch eine Tür."~ */
  IF ~~ THEN REPLY #59457 /* ~"Aber es ist doch nur ein leerer Raum."~ */ GOTO 239
  IF ~~ THEN REPLY #59459 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59463 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59465 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY #59466 /* ~"Es gibt viele unsichtbare Türen. Sie sind wie Luft - man geht durch sie hindurch und *verkennt* sie. Sie bleiben der Wahrnehmung verborgen."~ */
  IF ~~ THEN REPLY #59467 /* ~"Und diese unsichtbaren Türen sind *überall* in Sigil?"~ */ GOTO 240
  IF ~~ THEN REPLY #59469 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59472 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59474 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #59475 /* ~"Es heißt, jeder eingefaßte Raum in der Stadt, die unter dem Namen Sigil bekannt ist, sei eine Tür. Man *weiß* es nicht ganz sicher. Türen wechseln den Ort. Türen ändern sich. Türen verschwinden. Sie sind alle verschlossen."~ */
  IF ~~ THEN REPLY #59476 /* ~"Verschlossen?"~ */ GOTO 241
  IF ~~ THEN REPLY #59477 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 203
  IF ~~ THEN REPLY #59478 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59479 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59480 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #59481 /* ~"Die Türen bleiben unsichtbar, solange du keinen Schlüssel hast, mit dem du sie öffnen kannst. Wenn du den richtigen Schlüssel hast, geben sich die Türen zu *erkennen*."~ */
  IF ~~ THEN REPLY #59482 /* ~"Woher weißt du, welches der richtige Schlüssel ist?"~ */ GOTO 242
  IF ~~ THEN REPLY #59483 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 203
  IF ~~ THEN REPLY #59484 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59487 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59488 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 242 // from: 241.0
  SAY #59489 /* ~"Jede Tür hat ihren eigenen Schlüssel. Manche Schlüssel *kennt* man, andere nicht."~ */
  IF ~~ THEN REPLY #59491 /* ~"Was sind das für Schlüssel?"~ */ GOTO 243
  IF ~~ THEN REPLY #59492 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 203
  IF ~~ THEN REPLY #59494 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59495 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59497 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY #59498 /* ~"Es gibt genauso viele Schlüssel wie Türen. Allerdings sind sie nicht immer aus Metall. Ein Schlüssel kann das Klirren zweier Schwerter sein, ein Blutstropfen aus der Zunge eines Sterbenden, die Erinnerung an eine verblaßte Liebe oder aber ein böser Fluch. Erst wenn der passende Schlüssel gefunden ist, gibt sich die Tür als solche zu erkennen."~ */
  IF ~~ THEN REPLY #59500 /* ~"Klingt, als könnte es schwierig sein, all diese Schlüssel und Türen zu finden."~ */ GOTO 244
  IF ~~ THEN REPLY #59501 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 203
  IF ~~ THEN REPLY #59503 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59504 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59506 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 244 // from: 243.0
  SAY #59507 /* ~"Solch eine Aufgabe ist versucht, aber nie vollendet worden. So, wie die Stadt sich ändert, ändern sich auch die Türen. Nichts, das *bekannt* ist, bleibt lange *bekannt*."~ */
  IF ~~ THEN REPLY #59508 /* ~"Warum hast du noch mal gesagt, daß die Stadt fehlerhaft sei?"~ */ GOTO 203
  IF ~~ THEN REPLY #59509 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59510 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59511 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 245 // from: 231.1
  SAY #59512 /* ~"Die Existenz aller Dinge, ob Materie oder Fleisch, definiert sich durch die *Kenntnis* ihrer selbst."~ */
  IF ~~ THEN REPLY #59513 /* ~"Und wenn ein Mensch sich selbst nicht kennt?"~ */ GOTO 246
  IF ~~ THEN REPLY #59514 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59517 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59518 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #59520 /* ~"Wenn das Bewußtsein eines Menschen sich selbst nicht *kennt*, ist es fehlerhaft. Wenn das Bewußtsein fehlerhaft ist, ist es auch der ganze Mensch. Und alles, was ein fehlerhafter Mensch berührt, wird ebenfalls fehlerhaft." Dak'kon hält kurz inne. "Man sagt, die Hände eines fehlerhaften Mannes würden alles zerbrechen, was seine Augen erblicken."~ */
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #59521 /* ~"Kennst du dich selbst?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 247
  IF ~~ THEN REPLY #59522 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59523 /* ~"Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59524 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY #59525 /* ~Dak'kon schweigt. In seinen kohlschwarzen Augen bemerkst du wieder dieselbe Distanz wie bei eurem ersten Treffen. ~ */
  IF ~~ THEN REPLY #59528 /* ~"Ich frage noch mal: Kennst du dich selbst?"~ */ GOTO 248
  IF ~~ THEN REPLY #59529 /* ~"Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59531 /* ~"Schon gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59532 /* ~"Wir reden ein andermal darüber. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 248 // from: 247.0
  SAY #59534 /* ~Dak'kon spricht mit veränderter Stimme. Seine Worte hallen, als würde man einen großen Stein in eine Felsenschlucht werfen. Er scheint mit sich zu kämpfen. "Ich *will* nicht, daß du dies *weißt*."~ */
  IF ~~ THEN REPLY #59535 /* ~"Vielleicht war es zu nett von mir, es als Frage zu formulieren: Sag's mir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 249
  IF ~~ THEN REPLY #59536 /* ~"Ist gut. Ich hätte noch ein paar Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59538 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59539 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #59541 /* ~Dak'kon spricht langsam, als würde er sich jedes Wort einzeln abringen. "Ich... habe verlernt, mich selbst zu *kennen*."~ */
  IF ~~ THEN REPLY #59543 /* ~"Warum?"~ */ GOTO 250
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #59545 /* ~Dak'kons Stimme senkt sich zu einem Flüstern, wie Sand. "Ich *kenne* den Grund nicht. Ich *kenne* die Geschichte dessen, was geschehen ist, aber ich *kenne* das Warum nicht... und auch nicht den Weg, wie ich mich selbst wieder *kennen* kann."~ */
  IF ~~ THEN REPLY #59546 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59548 /* ~"Na dann, laß gut sein. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59550 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 199.0 231.2
  SAY #59551 /* ~"Es ist eine *Karach-*Klinge, ein Gegenstand, an dem man den Rang des Besitzers *erkennen* kann."~ */
  IF ~~ THEN REPLY #59552 /* ~"*Karach*? Was bedeutet das?"~ */ GOTO 254
  IF ~~ THEN REPLY #59554 /* ~"Sie ist aus einem seltsamen Metall... und hat eine fast hypnotische Wirkung, so wie sie vor- und zurückschwingt."~ */ GOTO 254
  IF ~~ THEN REPLY #59555 /* ~"Welchen Rang bezeichnet sie?"~ */ GOTO 252
  IF ~~ THEN REPLY #59556 /* ~"Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59557 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59559 /* ~"Laß uns ein andermal davon reden Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 251.2 256.0
  SAY #59561 /* ~"Die Klinge ist ein Symbol der *Zerth.* Ein *Zerth* ist jemand, der die Worte Zerthimons *kennt*. Und indem er die Worte Zerthimons *kennt*, *kennt* er gleichzeitig sich selbst."~ */
  IF ~~ THEN REPLY #59563 /* ~"Zerthimon?"~ */ GOTO 253
  IF ~~ THEN REPLY #59564 /* ~"Woraus ist diese Klinge noch mal gemacht?"~ */ GOTO 254
  IF ~~ THEN REPLY #59565 /* ~"Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59566 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59567 /* ~"Laß uns ein andermal davon reden Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #59569 /* ~"Zerthimon hat unsere Rasse gegründet. Er *kannte* die Githzerai, bevor sie sich selbst *kannten*. Er hat das 'Volk' definiert. Er hat ihm sein Bewußtsein gegeben."~ */
  IF ~~ THEN REPLY #59570 /* ~"Woraus ist diese Klinge noch mal gemacht?"~ */ GOTO 254
  IF ~~ THEN REPLY #59571 /* ~"Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59572 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59573 /* ~"Laß uns ein andermal davon reden Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 251.0 251.1 252.1 253.0
  SAY #59575 /* ~Dak'kon verstummt einen Moment lang, als würde er nach den richtigen Worten suchen. "In deine Sprache ist die nächste Übersetzung 'Chaosmaterie'. Das 'Volk' kann sie mit seinen Gedanken formen."~ */
  IF ~~ THEN REPLY #59576 /* ~"'Das Volk?'"~ */ GOTO 255
  IF ~~ THEN REPLY #59577 /* ~"Mit seinen Gedanken formen?"~ */ GOTO 256
  IF ~~ THEN REPLY #59579 /* ~"Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59580 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59581 /* ~"Laß uns ein andermal davon reden Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 254.0
  SAY #59583 /* ~"Die Githzerai."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59584 /* ~"Was ist ein Githzerai?"~ */ GOTO 195
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59586 /* ~"Was sind die Githzerai noch mal?"~ */ GOTO 198
  IF ~~ THEN REPLY #59587 /* ~"Und du sagst, die Githzerai können dieses *Karach*... mit ihren Gedanken formen?"~ */ GOTO 256
  IF ~~ THEN REPLY #59589 /* ~"Ich habe noch ein paar Fragen zu deinem Volk..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59591 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59593 /* ~"Das ist alles, was ich wissen wollte. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 254.1 255.2
  SAY #59594 /* ~*"Karach* wird nicht mit Hitze geschmiedet, sondern dadurch, daß man sich *kennt*. Auf seiner Oberfläche und an seinen Kanten spiegelt sich der innere Zustand seines Trägers, genau wie in einem Spiegel. Wenn man sich selbst *kennt*, ist die Klinge hart, härter als Stahl. Wenn man sich nicht *kennt*, ist die Klinge wie Wasser: formlos und schwach."~ */
  IF ~~ THEN REPLY #59596 /* ~"Welchen Rang bezeichnet die Klinge?"~ */ GOTO 252
  IF ~~ THEN REPLY #59597 /* ~"Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59598 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59600 /* ~"Das ist alles, was ich wissen wollte. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 318.2
  SAY #59602 /* ~"Meine *Kenntnis* der Kunst, wie die Menschen sie *kennen*, ist begrenzt." Dak'kons Klinge gleitet in seiner Hand, und er bewegt sie kreisförmig vor sich herum. "Aber ich *weiß* genug. Ich werde dich ihre Geheimnisse lehren."~ */
  IF ~~ THEN REPLY #59604 /* ~"Nun gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 258 // from: 232.1
  SAY #59607 /* ~"Der ist mir nicht *bekannt*."~ */
  IF ~~ THEN REPLY #59608 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59613 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59614 /* ~"Das ist alles, was ich wissen wollte. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 232.2
  SAY #59615 /* ~"Ich *weiß* nicht, wo es sich befinden könnte."~ */
  IF ~~ THEN REPLY #59616 /* ~"Ich hätte noch ein paar Fragen zu unserer Wanderschaft..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59617 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59618 /* ~"Das ist alles, was ich wissen wollte. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 193.6
  SAY #59619 /* ~Dak'kons Gesicht verzerrt sich, als wäre er von einem Schlag getroffen worden. "Es ist nicht mein *Wille*, daß wir von diesem Ort sprechen."~ */
  IF ~~ THEN REPLY #59620 /* ~"Dak'kon, *sag* mir: Was ist Shra'kt'lor?"~ */ GOTO 261
  IF ~~ THEN REPLY #59621 /* ~"Na dann, laß gut sein. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59622 /* ~"Laß uns nicht mehr davon sprechen. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #59623 /* ~Dak'kon schweigt einen Moment. "*Wisse*, daß es der Ort ist, wo mich mein erster Tod ereilte."~ */
  IF ~~ THEN REPLY #59624 /* ~"Was ist das für ein Ort?"~ */ GOTO 262
  IF ~~ THEN REPLY #59625 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59626 /* ~"Laß uns ein andermal darüber sprechen. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #59627 /* ~"Es ist eine der großen Heimstätten des Volkes. Es hat viele Wunden erfahren. Eine seiner Narben stammt von meiner Hand."~ */
  IF ~~ THEN REPLY #59628 /* ~"Was meinst du?"~ */ GOTO 218
  IF ~~ THEN REPLY #59629 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59630 /* ~"Laß uns ein andermal darüber sprechen. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from:
  SAY #59631 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from:
  SAY #59632 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 265 // from:
  SAY #59633 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 266 // from:
  SAY #59634 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 267 // from: 268.0
  SAY #59636 /* ~Während du die Worte sagst, fühlst du, wie sich ein eigenartiges Kribbeln durch deinen Hinterkopf frißt, und deine Sicht wird verschwommen... Du atmest tief ein und sammelst dich. Aus unerfindlichen Gründen ist dir übel, und die Umgebung scheint sich um dich herum zu drehen.~ */
  IF ~~ THEN REPLY #59638 /* ~"Wie... hast du überlebt, Dak'kon?"~ */ GOTO 269
END

IF ~~ THEN BEGIN 268 // from: 222.0
  SAY #59640 /* ~Als ich von den Mauern von Shra'kt'lor stürzte, mußt du *wissen*, war mein Selbst zerbrochen. Meine Klinge war wie Nebel, mein Geist gespalten. Ich driftete ziellos auf den Meeren des Limbus und wünschte mir, zu ertrinken. Ich starb tagelang, mein Geist war überspült von dem Gefühl des Gespaltenseins."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59642 /* ~"Wie hast du überlebt?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #59654 /* ~Als Dak'kon mir von Shra'kt'lor erzählt hat, wurde mir einen Moment lang ganz schwindlig. Aus irgendeinem Grund glaube ich, daß ich etwas über diesen Ort *weiß*... aber ich weiß nicht, was.~ */ GOTO 267
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59647 /* ~"Wie hast du überlebt?"~ */ GOTO 269
  IF ~~ THEN REPLY #59650 /* ~"Ich glaube, ich habe genug darüber gehört. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59652 /* ~"Laß uns ein andermal davon reden Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 267.0 268.1
  SAY #59656 /* ~"Ich habe viel Leid durchlebt. Als ich dem Tode nahe war, *erkannte* ich mich. Ich überlebte. Das ist alles."~ */
  IF ~~ THEN REPLY #59658 /* ~"Ich verstehe. Es gibt noch andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59660 /* ~"Dann laß uns nicht mehr darüber sprechen. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 270 // from: 231.3 271.1 272.1 273.2 274.1 275.1 278.1 279.1 281.0 282.1 285.0
  SAY #59664 /* ~Dak'kon wartet. ~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #59666 /* ~"Kannst du mir die Sprache deines Volkes beibringen?"~ */ GOTO 342
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ THEN REPLY #59667 /* ~"Was bedeutet 'T'chas Wahl?'"~ */ GOTO 271
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ THEN REPLY #59668 /* ~"Was bedeutet noch einmal 'T'chas Wahl?'"~ */ GOTO 273
  IF ~  GlobalGT("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #59669 /* ~"Was ist 'K'atzn'ii-bei-dem-Tor?'"~ */ GOTO 279
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #59672 /* ~"Was ist die 'Ach'ali-Flut?'"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 282
  IF ~~ THEN REPLY #59675 /* ~"Ich hatte eigentlich noch ein paar Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59676 /* ~"Schon gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59677 /* ~"Laß uns ein andermal über Sprache reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.1
  SAY #59678 /* ~Dak'kons Stirn zieht sich in Falten und seine Augen werden schmal. "Ich möchte *wissen*, woher du diesen Ausdruck *kennst*."~ */
  IF ~~ THEN REPLY #59679 /* ~"Du hast sie gesprochen, als wir den Githzerai trafen. Ich möchte gern wissen, was deine Worte bedeuteten."~ */ GOTO 272
  IF ~~ THEN REPLY #59680 /* ~"Vergiß es. Ich habe noch ein paar Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59681 /* ~"Das tut nichts zur Sache. Ich habe noch ein paar Fragen zu den Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59682 /* ~"Schon gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59683 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 271.0
  SAY #59684 /* ~"Es ist ein Ausdruck, der viele Bedeutungen *kennt*."~ */
  IF ~~ THEN REPLY #59685 /* ~"Dann erkläre mir eine davon."~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ GOTO 273
  IF ~~ THEN REPLY #59686 /* ~"Ich habe noch ein paar Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59687 /* ~"Das tut nichts zur Sache. Ich habe noch ein paar Fragen zu den Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59688 /* ~"Na dann, laß gut sein. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59689 /* ~"Laß uns ein andermal davon reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.2 272.0
  SAY #59690 /* ~"'T'chas Wahl' bedeutet, daß jemandem keine Wahl bleibt, ob er etwas tun will oder nicht."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59691 /* ~"Als ich dich bat, mit dem Githzerai zu sprechen, hattest du also keine andere Wahl? Warum?"~ */ GOTO 274
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59692 /* ~"Als ich dich bat, mit dem Githzerai zu sprechen, hattest du also keine andere Wahl? Weil du mein Sklave bist?"~ */ GOTO 275
  IF ~~ THEN REPLY #59693 /* ~"Ich habe noch ein paar Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59694 /* ~"Das tut nichts zur Sache. Ich habe noch ein paar Fragen zu den Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59695 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59696 /* ~"Das ist alles, was ich wissen wollte. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY #59697 /* ~Dak'kons Klinge kräuselt sich an der Oberfläche, und du siehst, wie die Kanten grau und stumpf werden. Sein Gesicht wird hart, und er spricht mit zusammengepreßten Zähnen. "Es ist nicht mein *Wille*, darüber zu sprechen."~ */
  IF ~~ THEN REPLY #59698 /* ~"Ich möchte, daß du davon sprichst. Du hast in dem Gespräch ein paar Sachen gesagt, die mich wirklich interessieren."~ */ GOTO 275
  IF ~~ THEN REPLY #59699 /* ~"Ich habe noch ein paar Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59700 /* ~"Dann laß gut sein. Ich habe noch ein paar Fragen zu den Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59701 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59702 /* ~"Dann laß uns nicht mehr davon sprechen. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 273.1 274.0
  SAY #59703 /* ~"*Wisse*, daß dein Wille mein *Wille* ist. Wenn du sprichst, *wisse*, daß ich dich hören werde. *Wisse*, daß deine Worte meiner Klinge Einhalt gebieten oder sie an die Kehle eines anderen führen können."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59704 /* ~"Was? Aber warum?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 276
  IF ~~ THEN REPLY #59708 /* ~"Ich habe noch ein paar Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59709 /* ~"Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59713 /* ~"Laß uns nicht mehr davon sprechen. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59714 /* ~"Ich will nichts mehr darüber hören. Gehen wir!"~ */ EXIT
END

IF ~~ THEN BEGIN 276 // from: 275.0
  SAY #59716 /* ~Dak'kon scheint durch dich hindurch zu sehen, als könnte er es nicht ertragen, deinem Blick zu begegnen. "Dein Weg ist mein Weg. Ich bin an dich gekettet."~ */
  IF ~~ THEN REPLY #59718 /* ~"Du bist mein Sklave?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #59720 /* ~Bei dem Wort 'Sklave' verzieht sich Dak'kons Gesicht vor Schmerz, als hätte ihn jemand geschlagen,... als wäre das Wort ein Dolch, den man ins Herz seines Leidens gestoßen hat. ~ */
  IF ~~ THEN REPLY #59721 /* ~"Aber... warum, Dak'kon?"~ */ GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #59723 /* ~"Du mußt *wissen*, daß es... eine lange Geschichte ist, und du mußt *wissen*, daß nichts dadurch gewonnen wird, wenn man sie erzählt."~ */
  IF ~~ THEN REPLY #59725 /* ~"Ich möchte sie aber gern hören."~ */ JOURNAL #59286 /* ~Dak'kon hat mir etwas über das Wesen seines Sklaventums erzählt... Weil ich ihm das Leben gerettet habe, hat er versprochen, mir Zeit meines Lebens zu dienen. Er war sich allerdings meiner Unsterblichkeit nicht bewußt. Dadurch hat er mir den Rest seines Lebens versprochen.~ */ GOTO 215
  IF ~~ THEN REPLY #59727 /* ~"Na, egal, ich hab noch ein paar andere Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59728 /* ~"Nun gut. Ich habe noch ein paar Fragen zu den Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59731 /* ~"Na dann, laß gut sein. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59732 /* ~"Dann laß uns nicht mehr davon sprechen. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 270.3
  SAY #59755 /* ~"*Wisse*: Wenn jemand 'K'atzn'ii-bei-dem-Tor' zu dir sagt, meint er damit, daß du mit deiner Frage sowohl deine, als auch die Fragen der Person beantwortest, mit der du sprichst."~ */
  IF ~~ THEN REPLY #59756 /* ~"Was bedeutet das? Wer ist 'K'atzn'ii?'"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 280
  IF ~~ THEN REPLY #59758 /* ~"Ich habe noch ein paar Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59759 /* ~"Ich verstehe. Ich habe noch ein paar Fragen zu den Githzerai..."~ */ GOTO 231
  IF ~~ THEN REPLY #59760 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59763 /* ~"Klar. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.0
  SAY #59912 /* ~"K'atzn'ii war eine des Volkes. Man sagt, sie sei eine von denen gewesen, die sich selbst nicht *kannten*. Statt zu versuchen, *Kenntnis* über sich selbst zu gewinnen, prüfte sie lieber die Leute. Sie reiste zu den Toren der Städte des Volkes und stellte den Leuten Fragen, um ihr Inneres zu prüfen. Die Antworten, die sie bekam, vermittelten ihr *Kenntnis* über das Wesen der Leute, die innerhalb der Stadtmauern lebten."~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0
  SAY #59914 /* ~"Was K'atzn'ii nicht *wußte*, war, daß die Fragen, die sie stellte, den Leuten auch *Kenntnis* über sie selbst gaben. Sie sahen ihr Herz, und sie *wußten*, daß es für sie nicht gut wäre, unter ihnen zu leben. Und so blieb sie immer vor dem Tor. Diese Begebenheit lehrt uns, daß man unser Inneres an unseren Fragen *erkennt*."~ */
  IF ~~ THEN REPLY #59915 /* ~"Ich habe noch ein paar Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59916 /* ~"Ich verstehe. Ich habe noch ein paar Fragen zu den Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59917 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59918 /* ~"Klar. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 270.4
  SAY #59919 /* ~"*Wisse*: Wenn 'Ach'alis Flut' gesprochen wird, sagt dir der Sprecher, daß die Antwort auf deine Frage nutzlos wäre. *Wisse*, daß dahinter die unausgesprochene Aufforderung steckt, die Frage spezifischer zu stellen."~ */
  IF ~~ THEN REPLY #59920 /* ~"Wer war Ach'ali?"~ */ GOTO 283
  IF ~~ THEN REPLY #59921 /* ~"Ich habe noch ein paar Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59922 /* ~"Ich verstehe. Ich habe noch ein paar Fragen zu den Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59923 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59924 /* ~"Klar. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 283 // from: 282.0
  SAY #59925 /* ~"Auf deiner Heimatebene Limbus müssen wir die Ebene mit unserem Denken formen, sonst verschlingt uns das Chaos der Ebene. Ach'ali war eine von denen, die sich selbst nicht *kannten*. Die Zeit holte sie ein, als sie sich in der Chaos- Materie der Ebene verlor und den Weg nach Hause nicht mehr *wußte*. Also formte sie mit ihren Gedanken eine kleine Insel und wartete."~ */
  IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #59926 /* ~"Sie wartete. Und während sie wartete, begegnete ihr ein Reisender, der durch das Meer des Limbus schwamm. Ach'ali soll ihn gerufen und nach dem Weg nach Hause gefragt haben. Es hätte nur einer Frage bedurft: '*Kennst* du den Weg in meine Heimat?' Und doch fragte sie: 'Wie gut *kennst* du die Ebene?'"~ */
  IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285 // from: 284.0
  SAY #59927 /* ~"Der Reisende *wußte* vieles, und vieles, was er erzählte, war neu für Ach'ali. Ihre Fragen wuchsen an, genährt von den Antworten, bis sie nicht mehr *wußte*, wo sie war und nicht mehr *wußte*, daß sie das Ziel im Auge behalten mußte. Die kleine Insel, die sie geformt hatte, löste sich auf und wurde eins mit dem Chaos, und sie ertrank in den Fluten. Diese Begebenheit lehrt uns, wieviel Schaden durch ziellose Fragen entstehen kann."~ */
  IF ~~ THEN REPLY #59928 /* ~"Ich habe noch ein paar Fragen zur Sprache..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59929 /* ~"Ich verstehe. Ich habe noch ein paar Fragen zu den Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59930 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59931 /* ~"Klar. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 286 // from: 318.1
  SAY #59932 /* ~Dak'kons Klinge gleitet ihm von der Schulter in die Hand wie Wasser, und ihre Kanten schimmern bedrohlich. "Wir werden nun ohne Wut das Schwert führen. Du sollst wieder *wissen*, wie man eine Waffe führt."~ */
  IF ~~ THEN REPLY #59933 /* ~"Nun gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
SetAnimState("Dakkon",ANIM_MIMESTANCETOSTAND)
~ GOTO 287
END

IF ~~ THEN BEGIN 287 // from: 286.0
  SAY #59934 /* ~Am Ende des Fechtkampfes fühlst du, wie du mit Leichtigkeit in den Mantel des Kriegers schlüpfst. Dak'kon entläßt die Klinge aus seinem festen Griff und läßt sie auf der Schulter ruhen. "Du lernst schnell. Wenn es Krieg gibt, wirst du bereit sein."~ */
  IF ~~ THEN REPLY #59935 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59936 /* ~"Ist gut. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 318.3
  SAY #59937 /* ~Dak'kons Klinge gleitet aus seinem festen Griff, und er bewegt sie in kreisenden Bewegungen vor sich herum. "Wir werden den Lehrstoff wiederholen. Du sollst wieder *wissen*, wie man sich der Kunst bedient."~ */
  IF ~~ THEN REPLY #59938 /* ~"Nun gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 257.0 288.0
  SAY #59939 /* ~Am Ende der Lehrstunde fühlst du, wie du mit Leichtigkeit in den Mantel des Magiers schlüpfst. Dak'kon nickt. "Du lernst schnell. Du bist nun bereit, deine Willenskraft gegen deine Feinde zu gebrauchen."~ */
  IF ~~ THEN REPLY #59940 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #59941 /* ~"Ist gut. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 318.4
  SAY #59942 /* ~"*Wisse*, daß die Lehre des Volkes anders ist als die Kunst, die du *kennst*. Nicht die Energie verleiht Kraft. Sich selbst zu *kennen* verleiht Kraft. Die Lehren des Zerthimon verkünden uns von diesen Dingen."~ */
  IF ~~ THEN REPLY #59943 /* ~"Würdest Du mich in die Lehre des Zerthimon einweihen, Dak'kon?"~ */ GOTO 291
  IF ~~ THEN REPLY #59944 /* ~"Ich würde gern noch ein paar andere Dinge *wissen*, Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59945 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #59946 /* ~"*Weißt* du auch, worauf du dich damit einläßt?" Dak'kons Klinge verändert ihre Textur, bis sie wie Stein aussieht. "Um den Weg des Zerthimon zu beschreiten, mußt du das Volk *kennen*. Es ist schwer für einen, der nicht zum Volk gehört, diese Dinge wirklich zu *kennen*. Es gibt einige, die nicht zum Volk gehören und die Lehre des Zerthimon vernommen haben, aber sie *kennen* die Lehre nicht wirklich."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59947 /* ~"Dak'kon, ich möchte etwas über das Volk *wissen* und über die Lehre des Zerthimon. Ich glaube, es steckt viel Weisheit in diesen Dingen."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon hat sich bereit erklärt, mir die Lehre des Zerthimon beizubringen. Er hat mir den Ungebrochenen Kreis von Zerthimon aufgeschlossen und gesagt, ich solle ihn studieren und die Geschichte seines Volkes *kennen*lernen.~ */ GOTO 293
  IF ~~ THEN REPLY #59948 /* ~"Wenn du mein Lehrer sein willst, dann werde ich es lernen."~ */ GOTO 292
  IF ~~ THEN REPLY #59949 /* ~"Ich würde gern noch ein paar andere Dinge *wissen*, Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59950 /* ~"Na, laß gut sein. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.1
  SAY #59951 /* ~"Ich *weiß*, wie Menschen die 'Kunst' erlernen. Sie lernen die Kunst in Stücken, aus Schriftrollen, Zaubersprüchen und Büchern. Solch eine Teilung entspricht *nicht* der Lehre des Zerthimon. Man kann nicht Teile lernen, ohne das Ganze zu *kennen*." Dak'kon sieht dich schweigend an; seine Klinge hat ihren Glanz wiedererlangt. "*Wisse*, daß dieser Weg kompromißlos ist. Wenn dein Geist geteilt ist, wenn du die Bedeutung der Lehre nicht *kennst*, ist dein Wille vergeudet."~ */
  IF ~~ THEN REPLY #59952 /* ~"Ich möchte dennoch lernen."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon hat sich bereit erklärt, mir die Lehre des Zerthimon beizubringen. Er hat mir den Ungebrochenen Kreis von Zerthimon aufgeschlossen und gesagt, ich solle ihn studieren und die Geschichte seines Volkes *kennen*lernen.~ */ GOTO 293
  IF ~~ THEN REPLY #59953 /* ~"Ich würde gern noch ein paar andere Dinge *wissen*, Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59954 /* ~"Na, laß gut sein. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 291.0 292.0
  SAY #59955 /* ~"*Wisse*, daß ich deine Worte gehört habe und sie auf die Probe stellen werde. Um zu lernen, mußt du das Volk *kennen*. Um das Volk zu *kennen*, mußt du den Ungebrochenen Kreis von Zerthimon *kennen*." Dak'kon hält den kreisrunden Stein hoch, den er bei sich hat, und seine Spinnenfinger haken sich um seine Kanten. Man hört ein *Klick*, und die Scheiben des Kreises schieben sich in eine neue Konfiguration. Er wiederholt dieselbe Bewegung in die andere Richtung, und versiegelt so den Stein. "*Wisse*, daß dir der erste Kreis von Zerthimon offensteht. Studiere ihn, dann werde ich dich abhören."~ */
  IF ~~ THEN REPLY #59956 /* ~"Dann werde ich also den Ersten Kreis lesen. Aber davor möchte ich gern noch ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59957 /* ~"Nun gut. Ich werde ihn studieren und dann wieder mit dir sprechen."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 318.6
  SAY #59958 /* ~"Was hast du gelernt, was *weißt* du?"~ */
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59959 /* ~"Stärke besteht darin, sich selbst zu kennen. Ich habe gelernt, daß jemand, der sich selbst nicht *kennt*, verloren ist. Er wird ein Werkzeug für andere."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",3)
GiveExperience(Protagonist,300)
~ JOURNAL #59743 /* ~Ich habe den Ersten Kreis von Zerthimon verstanden, nachdem ich meine eigene Weisheit in den Text habe einfließen lassen. Im Gegenzug hat Dak'kon den nächsten Kreis von Zerthimon für mich geöffnet. Ich glaube, er möchte mir den Ungebrochenen Kreis Stufe für Stufe näherbringen, indem er jeden der Kreise erst aufschließt, wenn ich den vorherigen verstanden habe.~ */ GOTO 296
  IF ~  Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59960 /* ~"Ich habe gelernt, daß die Angehörigen deines Volkes einst Sklaven der *Illithiden* waren. Es scheint, daß sie deinem Volk viel Unrecht zugefügt haben."~ */ JOURNAL #59742 /* ~Offenbar begreife ich nicht, was der Erste Kreis im Ungebrochenen Kreis von Zerthimon bedeutet. Jedenfalls ist Dak'kon dieser Ansicht. Ich glaube, die Bedeutung der Worte geht über die bloße Inschrift hinaus... Ich muß womöglich meine eigenen Verstand in die Weisheiten Zerthimons einfließen lassen, damit ich die Lehre des Zerthimon verstehe.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59961 /* ~"Ich habe gelernt, daß *Nichtwissen* ein Werkzeug sein kann, genau wie Fleisch und Stahl, wenn man versucht, das, was man erfährt, wirklich zu *kennen*, zu verstehen, was es ist und wie es entstanden ist."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",5)
GiveExperience(Protagonist,600)
GiveItemCreate("Circle02",Protagonist,1,0,0)
~ GOTO 297
  IF ~  Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59962 /* ~"Ich habe gelernt, daß Zerthimon beim Bestellen der Felder der *Illithiden* die Beschaffenheit des Stahls kennenlernte und erkannte, wie man ihn einsetzen könnte, um die *Illithiden* zu besiegen."~ */ JOURNAL #67782 /* ~Offensichtlich verstehe ich nicht, was der nächste Kreis im Ungebrochenen Kreis von Zerthimon bedeutet hat - das zumindest meint Dak'kon. Ich denke, die Bedeutung der Wörter geht über das als Inschrift Erscheinende hinaus... Vielleicht muß ich einen Teil meiner eigenen Weisheit in die Lehre Zerthimons einbringen, bevor ich sie verstehe.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59963 /* ~"Ertrage dein Leid, und es wird dich stark machen."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",7)
GiveExperience(Protagonist,900)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 299
  IF ~  Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59964 /* ~"Ich habe gelernt, daß ein Anführer manchmal Leid ertragen muß, um seine Ziele zu schützen."~ */ JOURNAL #67782 /* ~Offensichtlich verstehe ich nicht, was der nächste Kreis im Ungebrochenen Kreis von Zerthimon bedeutet hat - das zumindest meint Dak'kon. Ich denke, die Bedeutung der Wörter geht über das als Inschrift Erscheinende hinaus... Vielleicht muß ich einen Teil meiner eigenen Weisheit in die Lehre Zerthimons einbringen, bevor ich sie verstehe.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59965 /* ~"Wenn jemand nur das sehen will, was vor seinen Augen ist, sieht er nur einen Teil des Ganzen. Er ist blind. Und so wie Vilquar geblendet war durch die Belohnung, die ihm versprochen wurde, so waren die *Illithiden* blind gegenüber dem wirklichen Aufstand. Denn als sie Vilquars Worte vernahmen, richteten sie ihren Blick wieder nach außen, nicht wahr? Und so konnte der Aufstand stattfinden?"~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",9)
GiveExperience(Protagonist,1500)
~ GOTO 303
  IF ~  Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59966 /* ~"Wenn man sich damit zufrieden gibt zu sehen, ohne zu verstehen, betrügt man sich selbst."~ */ JOURNAL #67782 /* ~Offensichtlich verstehe ich nicht, was der nächste Kreis im Ungebrochenen Kreis von Zerthimon bedeutet hat - das zumindest meint Dak'kon. Ich denke, die Bedeutung der Wörter geht über das als Inschrift Erscheinende hinaus... Vielleicht muß ich einen Teil meiner eigenen Weisheit in die Lehre Zerthimons einbringen, bevor ich sie verstehe.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59967 /* ~"Die Masse ist stark, doch auch der einzelne hat große Macht, denn durch die Kraft seines Willens kann der einzelne die Massen um sich versammeln. Stärke liegt nicht nur darin, sich selbst zu *kennen*, sondern auch darin, zu *wissen*, wie man diese Kenntnis in anderen fördert."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",11)
GiveExperience(Protagonist,3000)
GiveItemCreate("Circle05",Protagonist,1,0,0)
~ GOTO 307
  IF ~  Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59968 /* ~"Zerthimon verstand, daß er sich mit einer noch stärkeren Persönlichkeit zusammentun mußte, nämlich Gith. Gemeinsam wurden die seines Volkes stärker und mächtiger."~ */ JOURNAL #67782 /* ~Offensichtlich verstehe ich nicht, was der nächste Kreis im Ungebrochenen Kreis von Zerthimon bedeutet hat - das zumindest meint Dak'kon. Ich denke, die Bedeutung der Wörter geht über das als Inschrift Erscheinende hinaus... Vielleicht muß ich einen Teil meiner eigenen Weisheit in die Lehre Zerthimons einbringen, bevor ich sie verstehe.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,17,WIS)
Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59969 /* ~"Ich *weiß*, daß Zerthimon sein Volk so sehr liebte, daß er bereit war, es vor sich selbst zu schützen. Er wußte, daß die *Illithiden* in ihrer Besessenheit von Macht und Herrschaft sich selbst nicht mehr *kannten*. Daher wollte er Gith aufhalten, bevor sie das Volk in den Tod führte. Es muß Ausgewogenheit bestehen in allen Dingen, sonst kann das Selbst nicht bestehen."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",13)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle06",Protagonist,1,0,0)
GiveItemCreate("Circle06",Protagonist,1,0,0)
~ GOTO 308
  IF ~  Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59970 /* ~"Zerthimon lernte, daß man auch in Freiheit weiter für die Freiheit kämpfen muß, selbst innerhalb der eigenen Rasse."~ */ JOURNAL #67782 /* ~Offensichtlich verstehe ich nicht, was der nächste Kreis im Ungebrochenen Kreis von Zerthimon bedeutet hat - das zumindest meint Dak'kon. Ich denke, die Bedeutung der Wörter geht über das als Inschrift Erscheinende hinaus... Vielleicht muß ich einen Teil meiner eigenen Weisheit in die Lehre Zerthimons einbringen, bevor ich sie verstehe.~ */ GOTO 295
  IF ~  Global("Dakkon_Teach","GLOBAL",15)
~ THEN REPLY #59971 /* ~"Es war ein Siebenter Kreis im Stein des Zerthimon. Er erzählt vom Entstehen der Rebellion gegen die *Illithiden*."~ */ GOTO 319
  IF ~  Global("Dakkon_Teach","GLOBAL",18)
~ THEN REPLY #59972 /* ~"Es war ein Achter Kreis im Stein des Zerthimon. Er erzählt von der Teilung des Geistes und der Wichtigkeit, ein Ziel im Auge zu haben."~ */ GOTO 323
  IF ~~ THEN REPLY #59973 /* ~"Schon gut. Ich würde gern noch andere Dinge *wissen*, Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59974 /* ~"Ich denke noch über das nach, was ich gelesen habe. Laß uns später reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 294.1 294.3 294.5 294.7 294.9 294.11
  SAY #59975 /* ~Dak'kon runzelt die Stirn. "Also *weißt* du gar nichts. Du bist einer von jenen, die die Worte zwar hören, aber sie doch nicht *kennen*."~ */
  IF ~~ THEN REPLY #59976 /* ~"Nun gut... Ich werde den Text noch einmal studieren. Inzwischen würde ich gern noch ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59977 /* ~"Na wenn schon, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 294.0
  SAY #59978 /* ~"Du hast den Ersten Kreis von Zerthimon *verstanden*. Du siehst nicht nur die Worte des Zerthimon, du *kennst* sie wirklich." Dak'kon hält den Kreis hoch, und seine Finger haken sich am Rand fest. Man hört ein *Klick*, und die Scheiben des Kreises verschieben sich in eine neue Konfiguration. Er vollführt dieselbe Bewegung rückwärts und versiegelt damit den Stein. "*Wisse*, daß der Zweite Kreis von Zerthimon dir offensteht. Studiere ihn, dann will ich deine Worte anhören."~ */
  IF ~~ THEN REPLY #59979 /* ~"Dann werde ich den Zweiten Kreis lesen. Inzwischen würde ich gern noch ein paar andere Dinge *wissen*...~ */ GOTO 193
  IF ~~ THEN REPLY #59980 /* ~"Also gut. Ich werde ihn lesen und dann mit dir sprechen."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 294.2
  SAY #59981 /* ~"Du hast die Worte gesehen und ihre Bedeutung durchschaut. Du *kennst* nun den Zweiten Kreis von Zerthimon." Er nimmt den Kreis und dreht mit einer raschen Bewegung eines der Verbindungsglieder, so daß eine der Scheiben nach vorn gleitet - doch wundersamerweise sieht der Stein immer noch ganz aus. Er reicht dir die Scheibe. "Denke über diese Lehre nach, und ihre *Kenntnis* wird dir Kraft verleihen. Wenn du sie verinnerlicht hast, wirst du mehr *wissen*."~ */
  IF ~~ THEN REPLY #59982 /* ~"Ist gut... ich werde diesen Kreis studieren. Aber ich möchte trotzdem noch mehr über die Lehre des Zerthimon erfahren."~ */ GOTO 298
END

IF ~~ THEN BEGIN 298 // from: 297.0 302.0 306.0 307.0
  SAY #59983 /* ~Dak'kons Finger befühlen den Rand des Steinkreises, und er dreht ihn im Uhrzeigersinn. Die Verbindungsglieder *klicken*, bis sie in einer neuen Konfiguration einrasten. Er wiederholt die Bewegung in umgekehrter Richtung und stellt so den Stein neu ein. "Der nächste Kreis von Zerthimon steht dir offen. Studiere ihn, dann werde ich deine Worte anhören."~ */
  IF ~~ THEN REPLY #59984 /* ~"Dann werde ich den nächsten Kreis lesen. Inzwischen würde ich gern noch ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59985 /* ~"Also gut. Ich werde ihn lesen und dann mit dir sprechen."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 294.4
  SAY #59986 /* ~Deine Worte erscheinen Dak'kon merkwürdig... Während du sie sprichst, zieht sich seine Stirn in Falten. Dann nimmt sein Gesicht wieder seinen normalen passiven Ausdruck an. ~ */
  IF ~~ THEN DO ~GiveItemCreate("Circle03",Protagonist,1,0,0)
~ GOTO 300
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #59987 /* ~"Durch deinen Willen ist es dir gelungen, den Dritten Kreis von Zerthimon zu *kennen*. Mit diesem *Wissen* übergebe ich dir dies." Er nimmt den Kreis und dreht mit einer raschen Bewegung eines der Verbindungsglieder, so daß eine der Scheiben nach vorn gleitet. Er reicht dir die Scheibe. "Denke über diese Lehre nach, und ihre *Kenntnis * wird dir Kraft verleihen."~ */
  IF ~~ THEN REPLY #59988 /* ~"Nun gut,... ich werde diesen Kreis studieren. Gibt es noch mehr, was du mir beibringen könntest?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.0
  SAY #59989 /* ~Während du die Frage stellst, bemerkst du plötzlich, daß Dak'kon dich nicht ansieht. Er hält den Ungebrochenen Kreis in der Hand und betrachtet ihn aufmerksam. Seine Klinge hat die Textur des Ungebrochenen Kreises angenommen... und Dak'kon scheint plötzlich irgendwie *älter*.~ */
  IF ~~ THEN REPLY #59990 /* ~"Dak'kon?"~ */ GOTO 302
END

IF ~~ THEN BEGIN 302 // from: 301.0
  SAY #59991 /* ~Dak'kons schwarze Augen heben sich von dem Kreis und sehen dich an. "*Wisse*, daß ich nicht geglaubt habe, du würdest die Lehre des Kreises je *kennen*. Der Weg, den du gehen mußt, um die Lehre des Zerthimon zu lernen, ist schwer. Ist dein Geist auf dieses Ziel konzentriert?"~ */
  IF ~~ THEN REPLY #59992 /* ~"Ja. Ich möchte noch mehr lernen."~ */ GOTO 298
END

IF ~~ THEN BEGIN 303 // from: 294.6
  SAY #59993 /* ~"*Wisse*, daß du wahr redest. Vilquars Auge blendete nicht nur Vilquar selbst sondern auch die *Illithiden*. Das Tentakelvolk glaubte, der Aufstand komme nicht mehr. Als der Aufstand kam, tränkte sich die Erde mit dem Blut der *Illithiden*. So wurde der Sieg durch den Verrat geboren."~ */
  IF ~~ THEN REPLY #59994 /* ~"Das ist eine merkwürdige Lektion. Ich verstehe nicht, wieso sie zur Lehre des Zerthimon gehört?"~ */ GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 303.0
  SAY #59995 /* ~Dak'kons Klinge blutet aus, bis sie ein totes Nachtschwarz angenommen hat, und seine Stimme wird tiefer - einen Augenblick denkst du, er ist ärgerlich, aber du bist nicht ganz sicher. "Vieles an der Lehre des Zerthimon und an seinem Weg ist schwer zu *verstehen*."~ */
  IF ~~ THEN REPLY #59996 /* ~"Weißt *du*, warum Vilquars Auge Teil der Lehre des Zerthimon ist?"~ */ GOTO 305
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #59997 /* ~"Es gehört zu der Geschichte, wie unser Volk die Freiheit *kennenlernte*. Sie lehrt uns, daß es auch unter dem Volk jene gibt, die nicht zum Volk gehören. Und daß selbst durch den größten Verrat ein größeres *Wissen* erlangt werden kann."~ */
  IF ~~ THEN REPLY #59998 /* ~"Nun gut."~ */ DO ~GiveItemCreate("Circle04",Protagonist,1,0,0)
~ GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 305.0
  SAY #59999 /* ~"Du *kennst* nun den Vierten Kreis von Zerthimon." Er nimmt den Kreis und dreht mit einer raschen Bewegung eines der Verbindungsglieder, so daß eine der Scheiben nach vorn gleitet. Er reicht dir die Scheibe. "Denke über diese Lehre nach, und ihre *Kenntnis* wird dir Kraft verleihen."~ */
  IF ~~ THEN REPLY #60000 /* ~"Ich möchte mehr über die Lehre des Zerthimon erfahren."~ */ GOTO 298
END

IF ~~ THEN BEGIN 307 // from: 294.8
  SAY #60001 /* ~"Du *kennst* nun den fünften Kreis von Zerthimon. Mit dieser *Kenntnis* überreiche ich dir dies." Er nimmt den Kreis und dreht mit einer raschen Bewegung eines der Verbindungsglieder, so daß eine der Scheiben nach vorn gleitet. Er reicht dir die Scheibe. "Denke über diese Lehre nach, und ihre *Kenntnis* wird dir Kraft verleihen."~ */
  IF ~~ THEN REPLY #60002 /* ~"Ich möchte mehr über die Lehre des Zerthimon erfahren."~ */ GOTO 298
END

IF ~~ THEN BEGIN 308 // from: 294.10
  SAY #60003 /* ~"Du hast die Worte gesehen und *kennst* sie." Dak'kon spricht langsamer, seine Hände umklammern die Ränder des Ungebrochenen Kreises. Er dreht ihn im Uhrzeigersinn, und man hört ein *Klick*, als zwei Scheiben nach vorn gleiten. Dak'kon starrt die beiden Scheiben in seiner Hand an und macht keine Anstalten, sie dir zu geben.~ */
  IF ~~ THEN REPLY #60004 /* ~"Dak'kon,... ist die zweite Scheibe für dich?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #60005 /* ~Dak'kon schweigt. Seine Klinge hat ihren Glanz verloren, der Film auf ihrer Oberfläche gefriert. Er starrt die zweite Scheibe wie gelähmt an.~ */
  IF ~~ THEN REPLY #60006 /* ~"Kennst *du* den Sechsten Kreis?"~ */ GOTO 310
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #60007 /* ~Dak'kon blickt auf, doch seine kohlschwarzen Augen weichen deinem Blick aus. "*Wisse*, daß es nun nichts mehr gibt, was ich dich lehren könnte. Du *kennst* die Lehre so wie das Volk sie *kennt*, und sie wird dir den Weg weisen, auf dem du zur *Kenntnis* über dich selbst kommst."~ */
  IF ~~ THEN REPLY #60008 /* ~"*Das* habe ich nicht gefragt. *Kennst* du den Sechsten Kreis oder nicht?"~ */ GOTO 311
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #60009 /* ~Dak'kon schweigt einen Augenblick. Dann spricht er langsam und bedächtig. "Es ist so, daß ich den Sechsten Kreis von Zerthimon nicht *kenne*. Ich *kannte* ihn einst, doch nun *weiß* ich, daß ich nur die Worte sah." Dak'kon starrt durch dich hindurch. "Das ist alles. Es ist mein Los, daß ich die Lehre des Zerthimon nicht mehr *kenne*."~ */
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60010 /* ~"Liegt das an dem, was in Shra'kt'lor geschah?"~ */ GOTO 317
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60011 /* ~"Dak'kon,... eines möchte ich noch *wissen*. Warum ist Vilquars Auge im Kreis von Zerthimon? Es scheint mir sonderbar. Es erzählt davon, wie das Volk von einem Verrat aus den eigenen Reihen profitierte. Es scheint mir... "~ */ GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 311.1 317.0
  SAY #60012 /* ~Dak'kons Augen blitzen auf. "Ich sagte dir doch, es gehört zu der Geschichte darüber, wie unser Volk die Freiheit *kennenlernte*. Hörst du mir überhaupt zu?" Seine Stimme wird monoton, als würde er eine Passage aus dem Gedächtnis rezitieren: "Sie lehrt das Volk, daß selbst durch den größten Verrat ein größeres *Wissen* erlangt werden kann."~ */
  IF ~~ THEN REPLY #60013 /* ~"Für mich klingt das nicht so, als würdest du selbst daran glauben. Ich glaube, es gibt einen anderen Grund dafür, warum Vilquars Auge im Kreis von Zerthimon enthalten ist. Es steht dort wegen des Sechsten Kreises und der Offenbarung der Zwei Himmel. Es dient dazu, Zerthimons Verrat an seinem eigenen Volk auf den Verfluchten Ebenen zu rechtfertigen."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 313
END

IF ~~ THEN BEGIN 313 // from: 312.0
  SAY #60014 /* ~Dak'kon schweigt, und seine Klinge blutet aus, bis sie tot und schwarz aussieht. An ihren Kanten bilden sich Zähne. ~ */
  IF ~~ THEN REPLY #60015 /* ~"Er verursachte die Teilung des Volkes auf den Verfluchten Ebenen, Dak'kon. Er teilte deine Rasse, als sie sich auf dem Siegeszug befand. Ich würde *gern* glauben, daß er es tat, um das Volk vor sich selbst zu schützen - aber ich habe das Gefühl, *du* glaubst nicht daran."~ */ GOTO 314
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #60016 /* ~Dak'kon schweigt einen Augenblick und spricht dann bedächtig: "Ich... *kenne* den Sechsten Kreis nicht so wie andere ihn *kennen*. Ich fürchte, der Dritte, Vierte und Sechste Kreis sind enger miteinander verbunden, als viele *wissen*. In diesem *Wissen* habe ich mich selbst verloren." ~ */
  IF ~~ THEN REPLY #60017 /* ~"Im Dritten Kreis versenkte Zerthimon seinen Willen, um die *Illithiden* zu täuschen. Der Vierte Kreis erzählt dann von der Nützlichkeit des *Verrats*. Im Sechsten Kreis teilt darauf Zerthimon sein Volk, damit es die *Illithiden* nicht ausrottet. Glaubst du, Zerthimons Worte waren vielleicht gar nicht seine eigenen?"~ */ GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 314.0
  SAY #60018 /* ~"Höre meine Worte und *wisse*, welche Wunde in meinem Herzen klafft: Ich fürchte, als Zerthimon auf den Pfeiler des Schweigens war, hat er seinen Willen nicht versenkt. Ich fürchte, sein Wille wurde ihm von den *Illithiden* genommen. Und als er auf den Verfluchten Ebenen sprach, sprach er ihre Worte. Ich fürchte, was er tat, war nicht zum Wohle des Volkes, sondern zum Wohle unserer früheren Herren."~ */
  IF ~~ THEN REPLY #60019 /* ~"Das wäre möglich, aber *weißt* du, das heißt nicht unbedingt, daß er..."~ */ DO ~SetGlobal("BD_DAKKON_FAITH","GLOBAL",1)
~ JOURNAL #60020 /* ~Während ich den Sechsten Kreis von Zerthimon lernte, habe ich herausgefunden, daß Dak'kon selbst nicht an den Sechsten Kreis glaubt. Ironischerweise *kennt* er sich wohl selbst nicht mehr, *weil* er den Ungebrochenen Kreis von Zerthimon gelesen hat.~ */ GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #60021 /* ~"Dann *wisse* folgendes und sprich NICHT MEHR davon." Dak'kons Stimme ist scharf wie ein Messer. "*Wisse*, daß ich die WAHRHEIT niemals *kennen* werde. Es gibt KEINE Lösung in dieser Sache, denn ich werde NIEMALS *wissen*, wie es auf den Verfluchten Ebenen in Zerthimons Innerem aussah." Seine kohlschwarzen Augen starren auf den steinernen Kreis in seiner Hand. "Also *kenne* ich mich selbst nicht, durch den Ungebrochenen Kreis von Zerthimon."~ */
  IF ~~ THEN REPLY #60022 /* ~"Also gut, Dak'kon. Laß uns nicht mehr davon sprechen... Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 311.0
  SAY #60023 /* ~"Ich *weiß* es nicht. Das Volk wurde gespalten und erfuhr viel Leid. Nachdem ich den Ungebrochenen Kreis gelesen habe, *weiß* ich nun, daß ich die *Kenntnis* über den fünften Kreis nahm und die die Stärke des Einen benutzte, um den Sechsten Kreis in Shra'kt'lor zu erschaffen. Dadurch habe ich das Volk gespalten, und es gab viel Leid. Ich trage Shra'kt'lor für immer auf meinem Gewissen."~ */
  IF ~~ THEN REPLY #60024 /* ~"Dak'kon... Eines möchte ich gern noch *wissen*. Warum ist Vilquars Auge im Kreis von Zerthimon? Es scheint mir sonderbar. Es erzählt davon, wie das Volk von einem Verrat aus den eigenen Reihen profitierte. Es scheint mir - "~ */ GOTO 312
END

IF ~~ THEN BEGIN 318 // from: 193.3 351.0
  SAY #60025 /* ~Dak'kon wartet.~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #60026 /* ~"Kannst du mich das Waffenhandwerk lehren, Dak'kon?"~ */ GOTO 351
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #60027 /* ~"Ich möchte meinen Beruf an den Nagel hängen und das Studium des Waffenhandwerks wiederaufnehmen, Dak'kon. Kannst du mich darin unterweisen?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 286
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60028 /* ~"Ich möchte meinen Beruf an den Nagel hängen und das Studium der Kunst wiederaufnehmen, Dak'kon. Kannst du mich darin unterweisen?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 257
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60029 /* ~"Ich möchte meinen Beruf an den Nagel hängen und das Studium der Kunst wiederaufnehmen, Dak'kon. Kannst du mich darin unterweisen?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 288
  IF ~  Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60030 /* ~"Kannst du mich in der Kunst unterweisen, Dak'kon?"~ */ GOTO 290
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #68062 /* ~"Kannst du mich irgend etwas über die Kunst lehren, Dak'kon?"~ */ GOTO 363
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60031 /* ~"Ich habe den Ungebrochenen Kreis von Zerthimon gelesen. Ich möchte mit dir noch ein wenig über die Lehre des Zerthimon sprechen."~ */ GOTO 294
  IF ~~ THEN REPLY #60032 /* ~"Ich hab's mir überlegt, ich habe statt dessen noch ein paar andere Fragen..."~ */ GOTO 193
  IF ~~ THEN REPLY #60033 /* ~"Schon gut, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 294.12
  SAY #60034 /* ~Dak'kon schweigt. "Was besagt der Siebte Kreis?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60035 /* ~"Er beschreibt die Zeit als einen Verbündeten und nicht als Feind. Er erzählt davon, daß Geduld selbst den geringsten Kraftaufwand in eine scharfe Waffe verwandeln kann, die das Herz eines ganzen Reiches durchbohrt. Auch wenn man zunächst nur kleine Siege davonträgt, mit der Zeit kann ein größerer Sieg daraus entstehen."~ */ GOTO 320
  IF ~~ THEN REPLY #60036 /* ~"Ich weiß nicht... Er erzählt von Zeit und schwerer Arbeit, doch ich kann ihm keinen Sinn entnehmen. Sobald mir die Bedeutung klar ist, werde ich mein *Wissen* mit dir teilen."~ */ EXIT
  IF ~~ THEN REPLY #60037 /* ~"Ich möchte jetzt nicht davon sprechen. Ich würde gern noch ein paar andere Dinge *wissen*, Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #60038 /* ~"Ich werde mein *Wissen* ein andermal mit dir teilen. Nun laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #60039 /* ~Dak'kon schweigt einen Moment. "Wirst du dein *Wissen* über diesen Kreis mit mir teilen?"~ */
  IF ~~ THEN REPLY #60040 /* ~Nimm den Ungebrochenen Kreis von Zerthimon und schließe den Siebten Kreis auf.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",16)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle07",Protagonist,1,0,0)
GiveItemCreate("Circle07",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 321
  IF ~~ THEN REPLY #60041 /* ~"Das werde ich, aber nicht jetzt. Ich möchte noch ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60042 /* ~"Jetzt nicht... Ich werde mein *Wissen* ein andermal mit dir teilen. Jetzt laß uns erst einmal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #60043 /* ~Als du den Kreis nimmst und die Verbindungsglieder drehst, gleiten *zwei* Scheiben aus seinem Innern in deine Hände. Du hast keine Ahnung, woher sie kommen, doch der Ungebrochene Kreis scheint immer noch ganz - der Siebte Kreis bleibt. Dak'kon sieht dir schweigend zu.~ */
  IF ~~ THEN REPLY #60044 /* ~"Es gibt zwei Scheiben... Vielleicht sollten wir sie gemeinsam studieren, du und ich?"~ */ GOTO 322
END

IF ~~ THEN BEGIN 322 // from: 321.0
  SAY #60045 /* ~Dak'kon schweigt einen Augenblick. "Du hast viel *Wissen* über den Kreis erlangt, und dein *Wissen* hat mehr Gewicht als meines." Dak'kon hält deinem Blick stand. "*Wisse*, daß dein Weg der meine ist, und es soll geschehen, daß ich die Lehre des Zerthimon von dir lerne, wie du einst die Lehre des Zerthimon von mir lerntest."~ */
  IF ~~ THEN REPLY #60046 /* ~"Laß uns die Scheiben später studieren. Ich wollte noch andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60047 /* ~"Nun gut, Dak'kon. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 294.13
  SAY #60048 /* ~Dak'kon schweigt. Als er weiterspricht... ist seine Stimme leise, beinahe ehrfürchtig. "Was besagt der Achte Kreis?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60049 /* ~"Er erzählt von Konzentration und Disziplin... davon, daß es einen Mann zerteilt, wenn er sich selbst nicht *kennt*. Er erzählt auch von der Schwäche, die durch Teilung entsteht. Mir scheint er zu verkünden, daß man nicht nur sich selbst *kennen* und daraus Kraft schöpfen sollte, sondern daß man durch dieses *Wissen* die Schwächen des Feindes bloßlegen kann."~ */ GOTO 324
  IF ~~ THEN REPLY #60050 /* ~"Ich weiß nicht... Er erzählt von Konzentration und Teilung, doch ich habe den Sinn noch nicht enträtselt. Wenn mir die Bedeutung klar ist, werde ich mein *Wissen* mit dir teilen."~ */ EXIT
  IF ~~ THEN REPLY #60051 /* ~"Ich möchte jetzt nicht davon sprechen. Ich würde gern noch ein paar andere Dinge *wissen*, Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #60052 /* ~"Ich werde mein *Wissen* ein andermal mit dir teilen. Nun laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0
  SAY #60053 /* ~Dak'kon schweigt einen Moment. "Wirst du dein *Wissen* über diesen Kreis mit mir teilen?"~ */
  IF ~~ THEN REPLY #60054 /* ~Nimm den Ungebrochenen Kreis von Zerthimon und schließ den Achten Kreis auf.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",19)
GiveExperience(Protagonist,10000)
GiveExperience("Dakkon",10000)
GiveItemCreate("Circle08",Protagonist,1,0,0)
GiveItemCreate("Circle08",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 325
  IF ~~ THEN REPLY #60055 /* ~"Das werde ich, aber nicht jetzt. Ich möchte noch ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60056 /* ~"Jetzt nicht... Ich werde mein *Wissen* ein andermal mit dir teilen. Jetzt laß uns erst einmal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 324.0
  SAY #60057 /* ~Als du den Kreis nimmst und die Verbindungsglieder drehst, gleiten zwei weitere Scheiben aus seinem Innern in deine Hände. Wie beim Siebten Kreis hast du keine Ahnung, woher sie kommen, doch der Ungebrochene Kreis scheint immer noch ganz - der Achte Kreis bleibt. Dak'kon sieht dir schweigend zu.~ */
  IF ~~ THEN REPLY #60058 /* ~"Es gibt zwei Scheiben... Wir sollten sie gemeinsam studieren, du und ich. Ich glaube, wenn du den Achten Kreis *kennst*, wirst du vielleicht auch *wissen*, wie es in Zerthimons Herzen aussah, als er die Offenbarung der Zwei Himmel verkündete. Seine Worte waren nicht die der *Illithiden*, sondern die des Volkes."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #60059 /* ~Dak'kon starrt die Scheiben an, seine Augen blinkern, als er die geometrischen Zeichen darauf betrachtet. Dann sieht er auf und begegnet deinem Blick. Seine Klinge biegt sich, verändert sich, bis das Schimmern, das du zuvor bemerkt hast, zu einem silbernen Glanz geworden ist. Er wirkt irgendwie *stärker*.~ */
  IF ~~ THEN DO ~IncrementGlobal("Githzerai","GLOBAL",3)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,2)
PermanentStatChange("Dakkon",CON,RAISE,2)
SetAnimState("Dakkon",ANIM_MIMEATTACK1)
~ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #60060 /* ~"*Wisse*, wenn der Tod kommt, um dich zu holen, *wisse*, daß ich seiner Klinge mit der meinen begegnen werde. *Wisse*, wenn alles um dich herum stirbt, *wisse*, daß ich um deinetwillen leben werde."~ */
  IF ~~ THEN REPLY #60061 /* ~"Wenn wir sterben, Dak'kon, so werden wir denselben Tod sterben. Es wird die Offenbarung der Zwei Tode In Einem."~ */ JOURNAL #60062 /* ~Ich glaube, meine Entdeckung des Achten Kreises hat Dak'kon ein größeres Verständnis für sich selbst gegeben und die Zweifel ausgeräumt, die ihn befallen hatten. Ich konnte förmlich sehen, wie er den Mantel der Jahre abstreifte, als ich ihm von dem Achten Kreis erzählte. Als er meine Worte vernahm, sprach Dak'kon die "Offenbarung der Zwei Tode in Einem" aus und schwor, daß er später, wenn der Tod mich ereile, dessen Klinge mit der seinen begegnen würde.~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 232.3
  SAY #60063 /* ~"Die Symbole erzählen von Vieren, mit denen du einst gemeinsam auf die Reise gingst."~ */
  IF ~~ THEN REPLY #60064 /* ~"Wer sind diese Vier?"~ */ DO ~SetGlobal("Dakkon_Old_Companions","GLOBAL",1)
~ JOURNAL #60068 /* ~Dak'kon hat mir von Vieren erzählt, die mich begleiteten: eine Frau, die einen Mann liebte, der sie kannte, aber nicht die Liebe; ein blinder Bogenschütze; ein Vertrauter und ein Sklave.~ */ GOTO 329
  IF ~~ THEN REPLY #60065 /* ~"Apropos, ich hätte noch ein paar Fragen zu unseren Reisen..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #60066 /* ~"Laß uns später darüber reden. Im Moment würde ich gern ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60067 /* ~"Schon gut, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 232.4 328.0
  SAY #60069 /* ~"Die Tätowierung erzählt von vier Seelen. Eine war eine Frau, die einen Mann liebte, der sie *kannte* und der die Liebe nicht *kannte*. Der zweite war ein blinder Mann, der Dinge sah, die sterbliche Augen nicht sehen konnten. Ein anderer war ein Vertrauter, das Haustier eines Magiers, gekauft und gebunden. Und der letzte war ein Sklave."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60070 /* ~"Und welcher von ihnen warst du, Dak'kon? Warst du der Sklave?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60071 /* ~"Und welcher von ihnen warst du, Dak'kon? Warst du der Sklave?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60072 /* ~"Und du warst der Sklave, Dak'kon?"~ */ GOTO 330
  IF ~~ THEN REPLY #60073 /* ~"Was kannst du mir über die Vier erzählen?"~ */ GOTO 332
  IF ~~ THEN REPLY #60074 /* ~"Warum wolltest du mir das nicht sagen?"~ */ GOTO 338
  IF ~~ THEN REPLY #60075 /* ~"Nun gut. Ich würde gern noch ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60076 /* ~"Das ist alles, was ich wissen wollte, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 329.0 329.1 329.2 333.3 334.1 335.1 337.0
  SAY #60077 /* ~Dak'kon schweigt einen Augenblick, und die Oberfläche seiner Klinge schwimmt, als wäre sie in Aufruhr. "*Wisse*, daß jener dir einen Dienst schuldete. Die Schuld, in der er stand, machte ihn zum Sklaven."~ */
  IF ~~ THEN REPLY #60078 /* ~"Wie kam es dazu?"~ */ GOTO 331
  IF ~~ THEN REPLY #60079 /* ~"Was kannst du mir über die Vier erzählen, die einst mit mir reisten?"~ */ GOTO 333
  IF ~~ THEN REPLY #60080 /* ~"Warum wolltest du mir nichts über die Vier in der Tätowierung erzählen?"~ */ GOTO 338
  IF ~~ THEN REPLY #60081 /* ~"Laß uns später darüber reden. Im Moment würde ich gern ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60082 /* ~"Schon gut, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #60083 /* ~"*Wisse*, daß es eine lange Geschichte ist. Es ist eine Sache zwischen mir und jenem anderen, der du einst warst. *Wisse*, wenn du sie hören willst, daß es eine lange Geschichte wird."~ */
  IF ~~ THEN REPLY #60084 /* ~"Ich möchte sie aber gern hören."~ */ GOTO 218
  IF ~~ THEN REPLY #60085 /* ~"Was kannst du mir über die Vier erzählen, die einst mit mir reisten?"~ */ GOTO 333
  IF ~~ THEN REPLY #60086 /* ~"Dann höre ich mir die Geschichte lieber ein andermal an. Warum wolltest du mir nichts über die Vier in der Tätowierung erzählen?"~ */ GOTO 338
  IF ~~ THEN REPLY #60087 /* ~"Laß uns später darüber reden. Im Moment würde ich gern ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60088 /* ~"Schon gut, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 329.3 334.2 335.2 337.1 338.1 339.0 339.2 340.1 340.2
  SAY #60089 /* ~"Die Frau war jung. Sie verehrte die Zeit, denn in ihrem Blute *wußte* sie, was die Zukunft bringen würde. Der Bogenschütze war ein blinder Mann, und er konnte Dinge sehen, die kein anderer sah. Der Weg seiner Pfeile führte immer direkt ins Herz eines Feindes. Über den Vertrauten und den Sklaven *weiß* ich nur wenig."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60090 /* ~"Sie sah, was die Zukunft bringen würde? Hieß die Frau etwa Deionarra?"~ */ JOURNAL #60097 /* ~Ich habe gerade erfahren, daß Deionarra früher mit mir umhergereist ist... Dak'kon hat gesagt, sie hätte die Macht gehabt, Ereignisse kommen zu "sehen", bevor sie geschahen.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60091 /* ~"Sie sah, was die Zukunft bringen würde? Hieß die Frau etwa Deionarra?"~ */ JOURNAL #60097 /* ~Ich habe gerade erfahren, daß Deionarra früher mit mir umhergereist ist... Dak'kon hat gesagt, sie hätte die Macht gehabt, Ereignisse kommen zu "sehen", bevor sie geschahen.~ */ GOTO 334
  IF ~~ THEN REPLY #60092 /* ~"Erzähl mir mehr über den Bogenschützen."~ */ GOTO 335
  IF ~~ THEN REPLY #60093 /* ~"Warum wolltest du mir nichts über die Vier in der Tätowierung erzählen?"~ */ GOTO 338
  IF ~~ THEN REPLY #60094 /* ~"Weißt du, warum ich mit diesen Vier reiste?"~ */ GOTO 340
  IF ~~ THEN REPLY #60095 /* ~"Laß uns später darüber reden. Im Moment würde ich gern ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60096 /* ~"Das ist alles, was ich wissen wollte, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.1 331.1 334.3 335.3 337.2 338.2 339.1 339.3 341.1 341.2
  SAY #60098 /* ~"Die Frau war jung. Sie verehrte die Zeit, denn in ihrem Blute *wußte* sie, was die Zukunft bringen würde. Der Bogenschütze war ein blinder Mann, und er konnte Dinge sehen, die kein anderer sah. Der Weg seiner Pfeile führte immer direkt ins Herz eines Feindes. Über den Vertrauten *weiß* ich nur wenig."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60099 /* ~"Sie sah, was die Zukunft bringen würde? Hieß die Frau etwa Deionarra?"~ */ JOURNAL #60107 /* ~Ich habe gerade erfahren, daß Deionarra früher mit mir umhergereist ist... zusammen mit Dak'kon. Dak'kon hat gesagt, sie hätte die Macht gehabt, Ereignisse kommen zu "sehen", bevor sie geschahen.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60100 /* ~"Sie sah, was die Zukunft bringen würde? Hieß die Frau etwa Deionarra?"~ */ JOURNAL #60107 /* ~Ich habe gerade erfahren, daß Deionarra früher mit mir umhergereist ist... zusammen mit Dak'kon. Dak'kon hat gesagt, sie hätte die Macht gehabt, Ereignisse kommen zu "sehen", bevor sie geschahen.~ */ GOTO 334
  IF ~~ THEN REPLY #60101 /* ~"Erzähl mir mehr über den Bogenschützen."~ */ GOTO 335
  IF ~~ THEN REPLY #60102 /* ~"Wie wurdest du mein Sklave?"~ */ GOTO 330
  IF ~~ THEN REPLY #60103 /* ~"Warum wolltest du mir nichts über die Vier in der Tätowierung erzählen?"~ */ GOTO 338
  IF ~~ THEN REPLY #60104 /* ~"Weißt du, warum wir zusammen reisten?"~ */ GOTO 341
  IF ~~ THEN REPLY #60105 /* ~"Laß uns später darüber reden. Im Moment würde ich gern ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60106 /* ~"Das ist alles, was ich wissen wollte, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 332.0 332.1 333.0 333.1
  SAY #60108 /* ~"*Wisse*, daß Deionarra wahrhaftig ihr Name war."~ */
  IF ~~ THEN REPLY #60109 /* ~"Was weißt du über den Bogenschützen?"~ */ GOTO 335
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60110 /* ~"Wie wurdest du mein Sklave?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60111 /* ~"Erzähl mir von den anderen."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60112 /* ~"Erzähl mir von den anderen."~ */ GOTO 333
  IF ~~ THEN REPLY #60113 /* ~"Warum wolltest du mir nichts über die Vier in der Tätowierung erzählen?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60114 /* ~"Weißt du, warum ich mit diesen Vier reiste?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60115 /* ~"Weißt du, warum wir zusammen reisten?"~ */ GOTO 341
  IF ~~ THEN REPLY #60116 /* ~"Laß uns später darüber reden. Im Moment würde ich gern ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60117 /* ~"Das ist alles, was ich wissen wollte, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 332.2 333.2 334.0
  SAY #60118 /* ~"Ich *weiß* sehr wenig von ihm. Ich *weiß*, daß er Soldat war. Ich *weiß*, daß der Alkohol zu einem Teil seines Lebens geworden war. In seiner Blindheit erlernte er ein anderes Sehen. Dieses *Wissen* machte ihn stark. Und doch *wußte* er nicht um seine eigene Stärke."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #60119 /* ~"Weißt du, wie er hieß?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 336
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60120 /* ~"Wie wurdest du mein Sklave?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60121 /* ~"Erzähl mir von den anderen."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60122 /* ~"Erzähl mir von den anderen."~ */ GOTO 333
  IF ~~ THEN REPLY #60123 /* ~"Warum wolltest du mir nichts über die Vier in der Tätowierung erzählen?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60124 /* ~"Weißt du, warum ich mit diesen Vier reiste?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60125 /* ~"Weißt du, warum wir zusammen reisten?"~ */ GOTO 341
  IF ~~ THEN REPLY #60126 /* ~"Laß uns später darüber reden. Im Moment würde ich gern ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60127 /* ~"Das ist alles, was ich wissen wollte, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #60128 /* ~Bevor Dak'kon noch antworten kann *kennst* du auf einmal die Antwort. Du spürst ein Kribbeln am Hinterkopf, und fühlst, wie der Name an die Oberfläche steigt wie aus einem riesigen Meer von Schlamm.~ */
  IF ~~ THEN REPLY #60129 /* ~Echo: "Sein Name war *Xachariah*... Er war blind, aber durch die Blindheit hatte er ein zweites Gesicht erworben, das es ihm erlaubte, Dinge zu sehen, die anderen verborgen blieben. Er war ein Bogenschütze, und wo seine Pfeile flogen, fanden sie in die Herzen ihrer Ziele."
~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ JOURNAL #60130 /* ~Als ich mit Dak'kon sprach, konnte ich mich plötzlich an den Namen des blinden Bogenschützen erinnern, der einst mit mir umhergereist ist. Sein Name war Xachariah. Er besaß ein zweites Gesicht, das seine Pfeile den Weg in das Herz ihrer Opfer finden ließ.~ */ GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #60131 /* ~"*Wisse*, daß er den Namen Xachariah trug. Und *wisse*, daß sein Name die Herzen vieler Feinde durchbohrte."~ */
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60132 /* ~"Wie wurdest du mein Sklave?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60133 /* ~"Erzähl mir von den anderen."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60134 /* ~"Erzähl mir von den anderen."~ */ GOTO 333
  IF ~~ THEN REPLY #60135 /* ~"Warum wolltest du mir nichts über die Vier in der Tätowierung erzählen?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60136 /* ~"Weißt du, warum ich mit diesen Vier reiste?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60137 /* ~"Weißt du, warum wir zusammen reisten?"~ */ GOTO 341
  IF ~~ THEN REPLY #60138 /* ~"Laß uns später darüber reden. Im Moment würde ich gern ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60139 /* ~"Das ist alles, was ich wissen wollte, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 329.4 330.2 331.2 332.3 333.4 334.4 335.4 337.3
  SAY #60140 /* ~"Die Vier sind durch ein Symbol miteinander verbunden, das mir *bekannt* ist."~ */
  IF ~~ THEN REPLY #60141 /* ~"Was für ein Symbol?"~ */ GOTO 339
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60142 /* ~"Ich bin im Moment nicht an dem Symbol interessiert. Erzähl mir lieber alles, was du über diese Vier in der Tätowierung weißt."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60143 /* ~"Ich bin im Moment nicht an dem Symbol interessiert. Erzähl mir lieber alles, was du über diese Vier in der Tätowierung weißt."~ */ GOTO 333
  IF ~~ THEN REPLY #60144 /* ~"Laß uns später darüber reden. Im Moment würde ich gern ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60145 /* ~"Schon gut, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 338.0 340.0 341.0
  SAY #60146 /* ~"Das Symbol bedeutet Folter. Fell sagte, daß du es schon immer getragen hast, denn das Fleisch *weiß*, daß es leidet, auch wenn der Geist es nicht *weiß*."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60147 /* ~"Genug von dem Symbol. Erzähl mir alles, was du über die vier in der Tätowierung weißt."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60148 /* ~"Genug von dem Symbol. Erzähl mir alles, was du über die vier in der Tätowierung weißt."~ */ GOTO 333
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60149 /* ~"Verstehe. Kannst du mir mehr über die Vier in der Tätowierung erzählen?"~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60150 /* ~"Verstehe. Kannst du mir mehr über die Vier in der Tätowierung erzählen?"~ */ GOTO 333
  IF ~~ THEN REPLY #60151 /* ~"Nun gut. Ich würde gern noch ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60152 /* ~"Das ist alles, was ich wissen wollte, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 332.4 334.5 335.5 337.4
  SAY #60153 /* ~"Die Tätowierung sagt nichts über ihren Weg, nur das Symbol, das sie verband. *Wisse*, daß der Weg vielleicht nur dir *bekannt* war."~ */
  IF ~~ THEN REPLY #60154 /* ~"Erzähl mir von dem Symbol."~ */ GOTO 339
  IF ~~ THEN REPLY #60155 /* ~"Genug von dem Symbol. Erzähl mir alles, was du über die vier in der Tätowierung weißt."~ */ GOTO 332
  IF ~~ THEN REPLY #60156 /* ~"Verstehe. Kannst du mir mehr über die Vier in der Tätowierung erzählen?"~ */ GOTO 332
  IF ~~ THEN REPLY #60157 /* ~"Nun gut. Ich würde gern noch ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60158 /* ~"Das ist alles, was ich wissen wollte, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 341 // from: 333.5 334.6 335.6 337.5
  SAY #60159 /* ~"*Wisse*, daß der Weg nur dir *bekannt* war, und es war dein Wille, daß wir ihn nicht *kannten*. *Wisse*, daß die, welche deinen Weg gingen, nur das Symbol *kannten*, das sie verband."~ */
  IF ~~ THEN REPLY #60160 /* ~"Nun gut... Erzähl mir von dem Symbol."~ */ GOTO 339
  IF ~~ THEN REPLY #60161 /* ~"Genug von dem Symbol. Erzähl mir alles, was du über die anderen in der Tätowierung weißt."~ */ GOTO 333
  IF ~~ THEN REPLY #60162 /* ~"Verstehe. Kannst du mir mehr über die Vier in der Tätowierung erzählen?"~ */ GOTO 333
  IF ~~ THEN REPLY #60163 /* ~"Nun gut. Ich würde gern noch ein paar andere Dinge *wissen*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60164 /* ~"Das ist alles, was ich wissen wollte, Dak'kon. Laß uns weiterziehen."~ */ EXIT
END

IF ~~ THEN BEGIN 342 // from: 270.0
  SAY #60165 /* ~"*Wisse*, daß die Sprache des Volkes ihren Ursprung in der Geschichte hat. Alle Dinge sind für uns wie Geschichten; Metaphern sind ein Werkzeug, das uns Kraft verleiht. *Wisse*: Wenn wir von Torygs Tafel sprechen, denken wir daran, daß Toryg für seine Gastfreundschaft und Herzlichkeit bekannt war. Wenn wir von Selqants Herz sprechen, denken wir dabei an Selqants Lüsternheit und Grausamkeit."~ */
  IF ~~ THEN REPLY #60166 /* ~"Ich verstehe. Wirst du mich unterweisen?"~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,600)
~ JOURNAL #60167 /* ~Dak'kon hat mir viel von der Sprache der Githzerai beigebracht. Sie scheint auf Metaphern und Geschichten zu beruhen... Ich kenne nicht alle Besonderheiten, aber wenn ich jemals einen neuen Ausdruck hören sollte, kann ich Dak'kon nach seiner Bedeutung fragen.~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #60168 /* ~Dak'kon lehrt dich einige Redensarten: Von einem weisen Mann sagt man, er habe "das Buch der Anarchen geschrieben", um einen anderen des Verrats zu bezichtigen, spricht man von "Vilquars Auge". Von großzügigen Menschen sagt man, ihre "Schränke seien leer." Übliche Grußformen sind z. B. "Heil, Schwertkämpfer" oder "Zerchais Bruder verneigt sich vor dir", worauf man antworten sollte: "Und der Reisende dankt euch." Dak'kon ist ein begabter Lehrmeister; nach seinen Erklärungen fühlst du dich imstande, die angemessenen Grußworte mit anderen Githzerai auszutauschen.~ */
  IF ~~ THEN REPLY #60169 /* ~"Ich hätte noch weitere Fragen über die Githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #60170 /* ~"Danke, Dak'kon. Es gibt noch ein paar andere Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #60171 /* ~"Für den Augenblick habe ich genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 224.0
  SAY #60172 /* ~Als Dak'kon die Worte spricht, ist dir, als ob Blut aus deinen Augen quillt, und ein wurmendes Kribbeln bohrt sich durch deinen Hinterkopf... Dir wird einen Moment lang übel, und du siehst auf einmal nichts als Chaos, dein Blick ist verschwommen, verzerrt, und du bist an einem anderen Ort, einem Ort in der *Vergangenheit*...~ */
  IF ~~ THEN REPLY #60173 /* ~Gib dich der Erinnerung hin...~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetAnimState("Dakkon",ANIM_MIMESTAND)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 345
  IF ~~ THEN REPLY #60174 /* ~Schüttele die Erinnerung ab...~ */ GOTO 225
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #60175 /* ~Alles um dich herum ist wildes Durcheinander - du siehst nur verschwommen, alles dreht sich, und dir wird schwindelig. PLÖTZLICH... bist du von Nebel umgeben, Feuerlöcher, Inseln aus Schlamm, Stein und vereisten Felsen schwimmen durch die Ebene wie Fische, stoßen zusammen und lösen sich auf, Wassertropfen schnellen durch die heulende Luft und beißen sich in deine Haut wie scharfe Zähne - du würgst das Gefühl der Übelkeit hinunter und reißt dich zusammen. Dies ist die Ebene *Limbus*, alles ist Chaos, es gibt keinen Halt... Du betrachtest den sterbenden Mann, der vor dir liegt. Er ist der Grund, weshalb du hierher gekommen bist.~ */
  IF ~~ THEN REPLY #60176 /* ~Echo: Untersuche den *Zerth*. Sieh nach, ob er noch lebt.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 346
  IF ~~ THEN REPLY #60177 /* ~Schüttele die Erinnerung ab...~ */ GOTO 225
END

IF ~~ THEN BEGIN 346 // from: 345.0
  SAY #60178 /* ~Der 'Mann' ist ein Githzerai, sein Körper ist eingebettet in ein Erdloch, das um ihn herumwirbelt - unbewußt hat er ein Grab aus den Elementen geformt, und obgleich Zungen aus Feuer und Wasser an seinem Gesicht lecken, rührt er sich nicht. Seine Hände sind aschfahl, seine kohlschwarzen Augen sehen ins Leere - seine ausgemergelte Gestalt sagt dir, daß er halb verhungert ist, und doch weißt du, daß das die geringste seiner Wunden ist. Sein Glaube hat ihm den tödlichen Schlag versetzt.~ */
  IF ~~ THEN REPLY #60179 /* ~Echo: Such nach der Klinge, die er trägt.~ */ GOTO 347
  IF ~~ THEN REPLY #60180 /* ~Schüttele die Erinnerung ab...~ */ GOTO 225
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #60181 /* ~In seiner schlaffen linken Hand hält er einen verknoteten Metallklumpen, der wie ein Handschuh um seine Hand verschmolzen ist. Vor deinen Augen dampft und zischt er wie eine kranke Schlange. Der Githzerai scheint es nicht zu bemerken... doch es ist diese Waffe, die dich hierher geführt hat.~ */
  IF ~~ THEN REPLY #60182 /* ~Echo: "Dak'kon, *Zerth* von Shra'kt'lor-Versunken, letzter Führer der *Karach*klinge! Wisse, daß ich mit den Worten des Zerthimon zu dir komme, gemeißelt nicht in Chaos sondern in Stein, durch Willenskraft gemeißelt in einen Ungebrochenen Kreis."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 348
  IF ~~ THEN REPLY #60183 /* ~Schüttele die Erinnerung ab...~ */ GOTO 225
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #60184 /* ~Bei dem Wort 'Zerthimon' rollen Dak'kons Augen in ihren Höhlen, und er versucht dich zu fokussieren. Mit großer Mühe öffnet er seinen ausgetrockneten Mund, um zu sprechen, doch ihm entweicht nur ein trockenes Krächzen. Du nimmst den Stein aus deinem Bündel und hältst ihn vor ihn hin, so daß er ihn sehen kann.~ */
  IF ~~ THEN REPLY #60185 /* ~Echo: "Wisse, daß die Worte des Zerthimon, die in diesen Stein graviert sind, wahr sind, und wisse, daß dein Geist nicht mehr länger geteilt sein muß. Du mußt nur den Stein nehmen, und du wirst dich selbst wieder *kennen*."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 349
  IF ~~ THEN REPLY #60186 /* ~Schüttele die Erinnerung ab...~ */ GOTO 225
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #60187 /* ~Dak'kons Augen blinkern, als er den Ungebrochenen Kreis von Zerthimon betrachtet, und einen Augenblick lang glaubst du, daß er dem Tod zu nahe ist, um den Kreis zu erkennen. Doch dann bewegt sich seine rechte Hand, und er zieht sie langsam aus ihrem erdigen Gefängnis. Die Erdklumpen ergießen sich von ihr und werden zu Wasser in den chaotischen Winden des Limbus. Wie ein Ertrinkender greift er mit seinen knöchernen Händen nach dem Stein, und seine Augen blitzen auf.~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #60188 /* ~Echo: "Wisse, daß ich dir das Leben gerettet habe, Dak'kon, *Zerth* von Shra'kt'lor."~ */ DO ~SetGlobal("Memory_Shraktlor","GLOBAL",1)
GiveExperience(Protagonist,6000)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #60191 /* ~Als ich mit Dak'kon sprach, konnte ich mich plötzlich daran erinnern, wie ich ihm in Shra'kt'lor mit dem Ungebrochen Kreis von Zerthimon das Leben gerettet habe... Das Seltsame ist, daß ich ihn vermutlich gar nicht retten wollte. Ich wollte die *Karach*-Klinge vor der Zerstörung bewahren. Aber ich weiß nicht, *warum*.~ */ GOTO 350
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #60189 /* ~Echo: "Wisse, daß ich dir das Leben gerettet habe, Dak'kon, *Zerth* von Shra'kt'lor."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 350
  IF ~~ THEN REPLY #60190 /* ~Schüttele die Erinnerung ab...~ */ GOTO 225
END

IF ~~ THEN BEGIN 350 // from: 349.0 349.1
  SAY #60192 /* ~Dak'kons Blick löst sich von dem Stein und huscht über dich. Er krächzt erneut, sein Mund zu trocken, um die Worte zu formen. Er blinzelt langsam und als er spricht, ist seine Stimme kaum mehr als ein Flüstern, doch die Worte sagen, was du hören wolltest. "Mein... Leben gehört dir... bis das deine nicht mehr ist..."~ */
  IF ~~ THEN REPLY #60193 /* ~Schließ die Augen, kehre in die Gegenwart zurück.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 225
END

IF ~~ THEN BEGIN 351 // from: 318.0
  SAY #60194 /* ~Dak'kon schüttelt den Kopf. "Ich kann jemanden wieder an das Handwerk des Krieges heranführen, doch ich kann seine Fähigkeiten nicht verbessern. Meine Waffen sind nicht aus Stahl gemacht, sondern aus dem *Willen* und der *Kenntnis* des Selbst."~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60195 /* ~"Vielleicht kannst du mich andere Dinge lehren..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~~ THEN REPLY #60196 /* ~"Ist gut. Wenn ich jemals den Beruf eines Kämpfers wiederaufnehmen sollte, werde ich mich an dich wenden. Ich hätte noch ein paar Fragen..."~ */ GOTO 193
  IF ~~ THEN REPLY #60197 /* ~"Ist schon gut. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 193.5
  SAY #60198 /* ~"Diese Hexe... sie *weiß* GAR NICHTS..." Dak'kons Klinge wirft kleine Wellen, und du siehst, wie ihre Kanten grau und stumpf werden. Sein Gesicht wird hart, und er spricht durch zusammengebissene Zähne: "Es ist nicht mein *Wille*, davon zu sprechen."~ */
  IF ~~ THEN REPLY #60199 /* ~"Ich möchte, daß du darüber sprichst... Ravel hat in dem Gespräch einige Dinge gesagt, die mir interessant erschienen."~ */ GOTO 353
  IF ~~ THEN REPLY #60200 /* ~"Nun gut. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #60201 /* ~"Dann laß uns nicht mehr davon sprechen. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #60202 /* ~"*Wisse*, daß dein Wille mein *Wille* ist. Wenn du sprichst, *wisse*, daß ich dich hören werde. *Wisse*, daß deine Worte meiner Klinge Einhalt gebieten oder sie an die Kehle eines anderen führen können."~ */
  IF ~~ THEN REPLY #60203 /* ~"Was? Aber warum?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 354
  IF ~~ THEN REPLY #60204 /* ~"Laß uns nicht mehr davon sprechen. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #60205 /* ~"Ich will nichts mehr darüber hören. Gehen wir!"~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #60206 /* ~Dak'kon scheint durch dich hindurch zu sehen, als könnte er es nicht ertragen, deinem Blick zu begegnen. "Dein Weg ist mein Weg. Ich bin an dich gekettet."~ */
  IF ~~ THEN REPLY #60207 /* ~"Du bist mein Sklave?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 355
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #60208 /* ~Bei dem Wort 'Sklave' verzieht sich Dak'kons Gesicht vor Schmerz, als hätte ihn jemand geschlagen... als wäre das Wort ein Dolch, den man ins Mark seines Leidens gestoßen hat.~ */
  IF ~~ THEN REPLY #60209 /* ~"Aber... warum, Dak'kon?"~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #60210 /* ~"Du mußt *wissen*, daß es... eine lange Geschichte ist, und du mußt *wissen*, daß nichts dadurch gewonnen wird, wenn man sie erzählt."~ */
  IF ~~ THEN REPLY #60211 /* ~"Ich möchte sie aber gern hören."~ */ JOURNAL #59286 /* ~Dak'kon hat mir etwas über das Wesen seines Sklaventums erzählt... Weil ich ihm das Leben gerettet habe, hat er versprochen, mir Zeit meines Lebens zu dienen. Er war sich allerdings meiner Unsterblichkeit nicht bewußt. Dadurch hat er mir den Rest seines Lebens versprochen.~ */ GOTO 215
  IF ~~ THEN REPLY #60212 /* ~"Na dann, laß gut sein. Es gibt noch ein paar Dinge, die ich *wissen* möchte..."~ */ GOTO 193
  IF ~~ THEN REPLY #60213 /* ~"Dann laß uns nicht mehr davon sprechen. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from:
  SAY #60401 /* ~"Wir sollen einem Githyanki helfen? Was führt ihn hierher, so weit fort von dem Blutlied, das seine Brüder anstimmen?"~ */
  IF ~~ THEN EXTERN ~DANIZIUS~ 17
END

IF ~~ THEN BEGIN 358 // from:
  SAY #61670 /* ~"Sie sind bloß ein Staubkorn auf Zerthimons Weg."~ [DAK204] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 359 // from:
  SAY #61671 /* ~"In den Augen Zerthimons bin ich ein Nichts."~ [DAK203A] */
  IF ~~ THEN EXTERN ~BGRACE~ 15
END

IF ~~ THEN BEGIN 360 // from:
  SAY #61672 /* ~"Ich habe noch einen langen Weg vor mir. Dies ist erst der Anfang."~ [DAK203B] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Dakkon","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 361 // from:
  SAY #64995 /* ~"Einen Moment. Sieh dir mal den Boden hier an." Als du nach unten siehst, bemerkst du eine Reihe von dreckigen Fußabdrücken, die zum Torbogen führen... und nicht zurückkommen. "Viele sind hier durchgekommen. Der Torbogen muß ein Portal sein."~ */
  IF ~~ THEN REPLY #64997 /* ~"Ein Portal? Wie kriegen wir es auf?"~ */ GOTO 362
  IF ~~ THEN REPLY #64998 /* ~"Vielleicht. Los geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #64996 /* ~"Ich *weiß* es nicht, aber wenn man bedenkt, wie viele das Portal benutzt haben, kann der Schlüssel kein seltenes Exemplar sein. Vielleicht *weiß* einer der Platzbewohner, wie man das Portal verwendet."~ */
  IF ~~ THEN REPLY #64999 /* ~"Dann frag ich mich durch. Los geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 318.5
  SAY #68059 /* ~"Sei dir *bewußt*, daß ich kein Lehrer darin bin, aber sei dir auch *bewußt*, daß ich als eine Art Anführer dienen kann. Ich *weiß* nicht, wie die Menschen die 'Kunst' erlernen, aber wenn du sie gelernt hast, dann komm wieder, und frag noch mal."~ */
  IF ~~ THEN REPLY #68060 /* ~"Dann frag ich noch mal, wenn ich Magier bin. Inzwischen hätte ich noch ein paar andere Fragen..."~ */ GOTO 193
  IF ~~ THEN REPLY #68061 /* ~"Dann versuche ich erst, einen Zauberlehrer zu finden. Gehen wir weiter."~ */ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",3)
~ THEN BEGIN 364 // from:
  SAY #68195 /* ~Als deine Macht ihn trifft, schnappt Dak'kon nach Luft und blickt geschwächt auf. Es sieht aus, als hinge sein Leben an einem seidenen Faden. ~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68196 /* ~"Dak'kon, du hast einmal die Offenbarung der Zwei Tode im Einem verkündet. Die Zeit ist gekommen."~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
SetGlobal("BD_TWO_DEATHS","GLOBAL",1)
JoinPartyEx(TRUE)
~ GOTO 367
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68197 /* ~"Dak'kon, ich brauche dich jetzt. Kannst du mir helfen?"~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 365
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68340 /* ~ERWACHE, DAK'KON VON SHRA'KT'LOR, LETZTER TRÄGER DER *KARACH*-KLINGE.~ */ GOTO 368
END

IF ~~ THEN BEGIN 365 // from: 364.1 367.0
  SAY #68198 /* ~Dak'kon holt Luft, dann faßt er sich, und seine Klinge wird zusehends *schärfer*. "Diese Klinge gehört dir."~ [DAK025] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68199 /* ~"Sehr gut."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68200 /* ~"Sehr gut."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68201 /* ~"Sehr gut."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68202 /* ~"Sehr gut."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68203 /* ~"Sehr gut."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68204 /* ~"Sehr gut."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68240 /* ~"Sehr gut."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68433 /* ~"Sehr gut."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68434 /* ~"Sehr gut."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68444 /* ~"Sehr gut."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from: 193.4
  SAY #68255 /* ~Dak'kon schüttelt den Kopf. "Ich *weiß*, daß die Feinde in der Nähe sind. Jetzt ist nicht die passende Zeit."~ */
  IF ~~ THEN REPLY #68256 /* ~"Sehr gut."~ */ EXIT
END

IF ~~ THEN BEGIN 367 // from: 364.0
  SAY #68270 /* ~Als du deine Worte sprichst, schließt Dak'kon die Augen, und einen Moment lang glaubst du, er kann das Leben nicht länger halten. Dann öffnet er die Augen, die jetzt nicht mehr so pechschwarz sind, wie du sie in Erinnerung hast. Statt dessen haben sie das metallene Muster seiner Klinge, und du weißt, daß Dak'kon zu etwas *anderem* geworden ist... zu etwas weitaus Mächtigerem.~ */
  IF ~~ THEN DO ~GiveExperience("Dakkon",2000000)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,3)
PermanentStatChange("Dakkon",CON,RAISE,3)
FullHealEx("Dakkon")
~ GOTO 365
END

IF ~~ THEN BEGIN 368 // from: 364.2
  SAY #68341 /* ~Als er deine Worte hört, nickt Dak'kon langsam. "Deine Stimme... *weißt* du endlich, wer du bist?"~ */
  IF ~~ THEN REPLY #68342 /* ~JA. ES WAR... SCHWIERIG, UND ES HAT VIELE LEBEN ERFORDERT. VIELE HABEN LEIDEN MÜSSEN, DAMIT ICH MICH WIEDER SELBST KENNEN KONNTE.~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #68343 /* ~"Sich zu *kennen* ist ein schwieriger Weg."~ */
  IF ~~ THEN REPLY #68344 /* ~DA ICH MICH NUN KENNE, WEISS ICH AUCH, WO SCHON BALD MEIN PLATZ SEIN WIRD. DIE ZEIT UND DAS SCHICKSAL KOMMEN JEDEN MOMENT NÄHER, UND ICH WERDE NICHT MEHR LANGE HIER SEIN. ICH BRINGE DICH ZURÜCK NACH SIGIL, DAK'KON, WENN DU WILLST.~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #68345 /* ~Dak'kon verstummt für einen Augenblick. Als er weiterspricht, ist seine Stimme scharf und durchdringend. "Du mußt *wissen*, daß ich dir einst etwas geschuldet habe. Du mußt *wissen*, daß du mir das Leben gerettet hast, und du mußt *wissen*, daß ich dir gefolgt bin, um diese Schuld zu begleichen."~ */
  IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #68346 /* ~"Ich habe mit meinem Leben für deins bezahlt. Die Schuld ist beglichen."~ [DAK030] */
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68347 /* ~SEHR GUT, DAK'KON. UNSERE BEIDEN TODE WAREN WIE EINER. DU WIRST DIESEN ORT ALS FREIER MANN VERLASSEN.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68348 /* ~SEHR GUT, DAK'KON. UNSERE BEIDEN TODE WAREN WIE EINER. DU WIRST DIESEN ORT ALS FREIER MANN VERLASSEN.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68349 /* ~SEHR GUT, DAK'KON. UNSERE BEIDEN TODE WAREN WIE EINER. DU WIRST DIESEN ORT ALS FREIER MANN VERLASSEN.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68350 /* ~SEHR GUT, DAK'KON. UNSERE BEIDEN TODE WAREN WIE EINER. DU WIRST DIESEN ORT ALS FREIER MANN VERLASSEN.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68351 /* ~SEHR GUT, DAK'KON. UNSERE BEIDEN TODE WAREN WIE EINER. DU WIRST DIESEN ORT ALS FREIER MANN VERLASSEN.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68496 /* ~SEHR GUT, DAK'KON. UNSERE BEIDEN TODE WAREN WIE EINER. DU WIRST DIESEN ORT ALS FREIER MANN VERLASSEN.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68497 /* ~SEHR GUT, DAK'KON. UNSERE BEIDEN TODE WAREN WIE EINER. DU WIRST DIESEN ORT ALS FREIER MANN VERLASSEN.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68498 /* ~SEHR GUT, DAK'KON. UNSERE BEIDEN TODE WAREN WIE EINER. DU WIRST DIESEN ORT ALS FREIER MANN VERLASSEN.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",4)
~ THEN BEGIN 372 // from:
  SAY #68412 /* ~Dak'kon nickt dir zu. "Diese Klinge ist dein."~ [DAK025] */
  IF ~~ THEN REPLY #68413 /* ~"Na gut, dann laß sie uns einsetzen..."~ */ EXIT
END
