// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXT~

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3069 /* ~Du siehst ein klobiges Etwas mit breiten Schultern, einem Hundekopf und vier Armen. Eines der äußerst muskulösen Armpaare ist an den Enden mit unregelmäßigen Scheren besetzt, die aussehen, als könnten sie einem sich sträubenden Opfer die Seele aus dem Leib reißen. Das Wesen spricht mit unerwartet sanfter Stimme. "Ah, Reisender! Ich sehe, du bringst werte Gefährten mit". Es hält kurz inne, um zu schnuppern. "Ein *vorzüglicher* Duft. Annah, ich kannte deinen Vater. Er plagt sich auch jetzt im Abgrund. Und Grace, deine Mutter Rotschleier wird sich freuen zu hören, daß es dir gut geht."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #11201 /* ~Du siehst ein breitschultriges, klobiges, hundeköpfiges Etwas mit vier Armen. Eines seiner äußerst muskulösen Armpaare ist am Ende mit furchteinflößend spitzen Scheren bestückt, die aussehen, als könnten sie einem widerspenstigen Opfer die Seele aus dem Leib reißen. Das Wesen spricht mit überraschend sanfter Stimme: "Ah, Reisender! Wie ich sehe, bringst du wertvolle Gefährten mit." Das Wesen schnüffelt in der Luft. "Und einen *köstlichen* Duft. Annah, ich kannte deinen Vater - er plagt sich selbst jetzt noch in den Tiefen des Abgrunds."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #11203 /* ~Du siehst ein breitschultriges, klobiges, hundeköpfiges Etwas mit vier Armen. Eines seiner äußerst muskulösen Armpaare ist am Ende mit furchteinflößend spitzen Scheren bestückt, die aussehen, als könnten sie einem widerspenstigen Opfer die Seele aus dem Leib reißen. Das Wesen spricht mit überraschend sanfter Stimme: "Ah, Reisender! Wie ich sehe, bringst du wertvolle Gefährten mit." Das Wesen schnüffelt die Luft. "Und einen *köstlichen* Duft. Fräulein Grace, deine Mutter Rotschleier wäre sicher erfreut zu hören, daß du wohlauf bist."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DGRACE~ 11
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 3 // from:
  SAY #11204 /* ~Du siehst ein breitschultriges, klobiges, hundeköpfiges Etwas mit vier Armen. Eines seiner äußerst muskulösen Armpaare ist am Ende mit furchteinflößend spitzen Scheren bestückt, die aussehen, als könnten sie einem widerspenstigen Opfer die Seele aus dem Leib reißen
Das Wesen spricht mit überraschend sanfter Stimme. "Die Namen dieser Abishai in ihre Silben zu zerlegen, war mir eine große Genugtuung. Danke, daß du mir das ermöglicht hast."
~ */
  IF ~~ THEN REPLY #3367 /* ~"War mir ein Vergnügen. Ich würde dir gern ein paar Fragen stellen..."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ GOTO 5
  IF ~~ THEN REPLY #11202 /* ~"Es war mir ein Vergnügen. Leb wohl."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 4 // from:
  SAY #11205 /* ~Der Glabrezu begrüßt dich überschwenglich wie einen alten Freund. "Ah, Reisender! Du bist zurückgekehrt! Was kann ich für dich tun?" Er verbeugt sich spöttisch und beiläufig vor Grace und Annah.~ */
  IF ~~ THEN REPLY #11206 /* ~"Ich würde dir gern noch ein paar Fragen stellen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11207 /* ~"Im Moment nicht. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0 6.0 7.0 8.0 9.2 10.1 11.0 12.2 13.1 14.1 15.2 16.0 17.0 18.0 18.2 19.0
  SAY #11208 /* ~"Aber natürlich! Es ist mir ein Vergnügen, jemandem zu helfen, der mir ein wertvoller Freund und Verbündeter sein könnte!"~ */
  IF ~~ THEN REPLY #11209 /* ~"Erzähl mir was von dir."~ */ GOTO 9
  IF ~~ THEN REPLY #11210 /* ~"Warum hast du dich vorher verkleidet?"~ */ GOTO 10
  IF ~~ THEN REPLY #11211 /* ~"Erzähl mir was über diese Taverne und ihre Gäste."~ */ GOTO 11
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11212 /* ~"Barkis möchte, daß ich was wegen der Kneipenrechnung von Mochai unternehme."~ */ GOTO 12
  IF ~~ THEN REPLY #11213 /* ~"Ich brauche nichts weiter. Auf bald."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 6 // from:
  SAY #11214 /* ~Der Glabrezu begrüßt dich überschwenglich wie einen alten Freund. "Ah, Reisender! Du bist zurückgekehrt! Was kann ich für dich tun?" Er verbeugt sich spöttisch und beiläufig vor Annah.~ */
  IF ~~ THEN REPLY #11215 /* ~"Ich würde dir gern noch ein paar Fragen stellen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11216 /* ~"Im Moment nicht. Auf bald."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 7 // from:
  SAY #11217 /* ~Der Glabrezu begrüßt dich überschwenglich wie einen alten Freund. "Ah, Reisender! Du bist zurückgekehrt! Was kann ich für dich tun?" Er verbeugt sich spöttisch und beiläufig vor Grace.~ */
  IF ~~ THEN REPLY #11218 /* ~"Ich würde dir gern noch ein paar Fragen stellen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11219 /* ~"Im Moment nicht. Auf bald."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 8 // from:
  SAY #11220 /* ~Der Glabrezu begrüßt dich überschwenglich wie einen alten Freund. "Ah, Reisender! Du bist zurückgekehrt! Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #11221 /* ~"Ich würde dir gern noch ein paar Fragen stellen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11222 /* ~"Im Moment nicht. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #11223 /* ~"Von mir? Ich bin nur ein einfacher Glabrezu, ein Tanar-Ri - ein 'Dämon' für die Unwissenden - der sich unter die Sterblichen gemischt hat, um mehr über sie zu erfahren. Manchen, die ich der Ehre für würdig erachte, biete ich mehr Macht an und dies gegen ein äußerst geringes Entgelt. Dir würde ich ein solches Angebot machen, doch deinem Fleisch haftet der Geruch nach Ordnung an, und dein Geist ist daran gebunden. Ich komme momentan nicht dagegen an, aber wenn du es später einmal versuchen willst," sagt er lächelnd, wobei er seine scharfen, raubtierartigen Zähne zeigt, "können wir uns bestimmt irgendwie einigen."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11224 /* ~"Ja, vielleicht. Erzähl mir mehr über die Tanar-Ri."~ */ GOTO 13
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11225 /* ~"Ja, vielleicht. Erzähl mir mehr über die Tanar-Ri."~ */ GOTO 14
  IF ~~ THEN REPLY #11226 /* ~"Vielleicht. Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11227 /* ~"Vielleicht. Aber nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #11228 /* ~"Ich habe mich verkleidet, weil ich so die Abishai - die jetzt tot sind - besser ausspionieren kann, und weil die weniger Tapferen vor einem so mächtigen Wesen wie mir in der Regel Angst haben. Doch jetzt ist die Zeit gekommen, meine wahre Gestalt zu offenbaren."~ */
  IF ~~ THEN REPLY #11229 /* ~"Warum gerade jetzt?"~ */ GOTO 17
  IF ~~ THEN REPLY #11230 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #11231 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #11232 /* ~"Seit diese widerlichen Baatezus weg sind, läßt es sich hier noch besser aushalten. Der Geruch von gegrilltem Fleisch, die Machtkämpfe und viele andere kleine Dramen machen diesen Ort besonders attraktiv. Ich würde gern mehr Schreie hören, aber schließlich sind wir ja nicht im Abgrund. Die meisten Gäste hier sind weder große Denker noch Visionäre. O ist mir ein Rätsel - ich verstehe seine Macht nicht, werde aber schon noch dahinterkommen. Alle anderen finde ich nicht besonders faszinierend. Solche gibt es wie Sand am Meer."~ */
  IF ~~ THEN REPLY #11233 /* ~"Also gut. Dann beantworte mir noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11234 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #11235 /* ~"Hier muß tatsächlich eine Lösung her. Du könntest sie niederstechen, aber dadurch würdest du ungewollte Aufmerksamkeit auf dich ziehen. Ich rate dir zu Gift."~ */
  IF ~~ THEN REPLY #11236 /* ~"Was, wenn ich ihr einfach nur helfen und ihre Rechnung bezahlen wollte?"~ */ GOTO 18
  IF ~~ THEN REPLY #11237 /* ~"Ich habe aber kein Gift."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11238 /* ~"Vielen Dank für den Vorschlag. Beantworte mir noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11239 /* ~"Vielen Dank für den Vorschlag. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #11240 /* ~Ilquix nickt in Richtung Grace. "Deine Gefährtin sollte dir so einiges erzählen können." Mit spöttischem Blick fährt er fort. "Wir sind stolz auf unser Chaos - wir glauben an die Macht des Individuums. Natürlich spreche ich allein in meinem Namen." Er schmunzelt über seine eigene Ironie. "Viele behaupten, wir seien böse, und vielleicht haben sie recht. Doch ich glaube, jedes Individuum ist nur für sich allein verantwortlich. Sich zu viel um andere zu scheren, bedeutet Schwäche. Denk dran: Jeder Tanar-Ri - oder Dämon, wie ihr Sterblichen uns bisweilen nennt - verkörpert eine eigene Denkart, den einmaligen Ausdruck eines persönlichen Machtwillens. Du brauchst nur abzuzählen, wie viele es im Abgrund gibt. Die wahre Stärke unserer Sache zeigt sich im Geist der Sterblichen."~ */
  IF ~~ THEN REPLY #11241 /* ~"Ihr seid also eigentlich körperlose Wesen?"~ */ GOTO 15
  IF ~~ THEN REPLY #11242 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11243 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #11244 /* ~"Wir sind stolz auf unser Chaos - wir glauben an die Macht des Individuums. Natürlich spreche ich allein in meinem Namen." Er schmunzelt über seine eigene Ironie. "Viele behaupten, wir seien böse, und vielleicht haben sie recht. Doch ich glaube, jedes Individuum ist nur für sich allein verantwortlich. Sich zu viel um andere zu scheren, bedeutet Schwäche. Denk dran: Jeder Tanar-Ri - oder Dämon, wie ihr Sterblichen uns bisweilen nennt - verkörpert eine eigene Denkart, den einmaligen Ausdruck eines persönlichen Machtwillens. Du brauchst nur abzuzählen, wie viele es im Abgrund gibt. Die wahre Stärke unserer Sache zeigt sich im Geist der Sterblichen."~ */
  IF ~~ THEN REPLY #11245 /* ~"Ihr seid also eigentlich körperlose Wesen?"~ */ GOTO 15
  IF ~~ THEN REPLY #11246 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11247 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0 14.0
  SAY #11248 /* ~"Nein, wir sind keine körperlosen Wesen - jedenfalls solange wir uns auf den Äußeren Ebenen aufhalten. Schließlich ist dies der Ort an dem alle Gedanken Gestalt annehmen. Im Grunde sind wir Projektionen. Je stärker man auf der Materiellen Ebene an unsere Sache glaubt, desto stärker werden wird selbst. Aus diesem Grund rekrutieren wir Sterbliche, die nicht einmal ahnen, daß wir in ihrem Herzen und ihrem Geiste vorhanden sind."~ */
  IF ~~ THEN REPLY #11249 /* ~"Das ist widerlich. Jeder sollte das Recht auf einen freien Willen und eigene Entscheidungen besitzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_IlquixT_One","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #11250 /* ~"Wenn sie zu schwach sind, um euch zu widerstehen oder euch gar dazu einladen, dann haben sie verdient, was sie bekommen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_IlquixT_One","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #11251 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11252 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #11253 /* ~"Sie haben einen freien Willen, Narbengesicht. Wir hätten überhaupt keine Chance, wenn sie uns einfach widerstehen würden. Ihnen wird ihre eigene Schwäche zum Verhängnis. Würden sie versuchen, stärker zu werden, könnten wir nichts ausrichten. Doch weil sie schwach bleiben, werden wir stark. So ist das Leben," sagt er lächelnd, "und wenn es nicht so wäre, würden wir es dahingehend ändern."~ */
  IF ~~ THEN REPLY #11254 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #11255 /* ~"Vielen Dank für deine nützlichen Ratschläge. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #11256 /* ~"Weil dies der Zeitpunkt ist, den ich gewählt habe. Ich habe meine Gründe, kleiner Unsterblicher. Gerade weil du immer so neugierig bist, werde ich sie dir aber nicht verraten. Es sei denn, du kannst mich dazu *bringen*..."~ */
  IF ~~ THEN REPLY #11257 /* ~"Ich würde lieber noch ein paar Fragen stellen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11258 /* ~"Wenn du drauf bestehst. Dann verrecke eben."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0
  SAY #11259 /* ~"Wenn du das wirklich vorhast, warum hast du dann ein Scheusal um Rat gebeten? Komm schon. Ich glaube, Gift ist die beste Lösung für dieses Problem."~ */
  IF ~~ THEN REPLY #11260 /* ~"Nein, ich denke, ich werde eine andere Methode wählen. Beantworte mir noch ein paar Fragen..."~ */ GOTO 5
  IF ~  !PartyHasItem("Embalm")
~ THEN REPLY #11261 /* ~"Ein Teil des Problems ist, daß ich überhaupt kein Gift besitze."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11262 /* ~"Ich werd's mir überlegen. Beantworte mir noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11263 /* ~"Vielleicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.1 18.1
  SAY #11264 /* ~"Du hast kein Gift? Dann erlaub mir, dir welches zu geben!" Er konzentriert sich kurz, und in seinen Klauen erscheint ein Fläschchen mit einer Flüssigkeit darin. "Wie du vielleicht erkannt hast, ist dies das Balsamierungsöl der Staubmenschen," säuselt er. "Falls du Skrupel haben solltest, es dürfte einen relativ schmerzlosen Tod bewirken." Das Scheusal gibt dir das Gift.~ */
  IF ~~ THEN REPLY #11265 /* ~"Vielen Dank. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #11266 /* ~"Vielen Dank. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #2072 /* ~Das Scheusal wirkt amüsiert und wendet sich dir zu. "Hast du ihr keine Manieren beigebracht, Reisender?"~ */
  IF ~~ THEN REPLY #2073 /* ~"Annah, immer noch die alte."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ EXTERN ~DANNAH~ 80
  IF ~~ THEN REPLY #2077 /* ~"Nein. Sie ist ihr eigener Herr und sagt ihre eigene Meinung."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~DANNAH~ 81
END
