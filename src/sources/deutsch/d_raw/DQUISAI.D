// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISAI~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2974 /* ~Dies ist die lebensgroße Granitstatue eines Herrn, der seine Arme am Körper anliegen und die Augen geschlossen hat. Sie ist bis ins kleinste Detail meisterlich ausgearbeitet und wirkt unglaublich echt... und zwar so echt, daß du dich fragst, ob es überhaupt eine Statue ist. ~ */
  IF ~  !NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28953 /* ~"Sei gegrüßt...?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28954 /* ~"Sei gegrüßt...?"~ */ GOTO 2
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28955 /* ~"Ich habe einen Magier namens Salabesh getroffen, der mir von einem Steinmann erzählte, der hier sein sollte. Bist du das?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #28956 /* ~"Sei gegrüßt... bist du Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28957 /* ~Berühre die Statue.~ */ GOTO 3
  IF ~~ THEN REPLY #28958 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 31.0
  SAY #28897 /* ~Die Statue antwortet nicht.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28959 /* ~"Ich habe einen Magier namens Salabesh getroffen, der mir von einem Steinmann erzählte, der hier sein sollte. Bist du das?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28960 /* ~Berühre die Statue.~ */ GOTO 3
  IF ~~ THEN REPLY #28961 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #28898 /* ~Die Statue antwortet nicht.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 285
END

IF ~~ THEN BEGIN 3 // from: 0.4 1.1 31.3
  SAY #28899 /* ~Du berührst die Statue und fühlst, daß ihre Bekleidung nicht aus Stein sondern aus grauem Stoff ist, während die 'Haut' so kalt und hart wie Granit ist.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #28982 /* ~"Hmm. Warum sollte jemand einer Statue Kleider anziehen?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
NearbyDialog("DMorte")
~ THEN REPLY #28983 /* ~"Hmm. Warum sollte jemand einer Statue Kleider anziehen?"~ */ EXTERN ~DMORTE~ 287
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28984 /* ~"Ich habe einen Magier namens Salabesh getroffen, der mir von einem Steinmann erzählte, der hier sein sollte. Bist du das?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28985 /* ~Schlage die Statue.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28986 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28900 /* ~Die Statue reagiert auf deine Fragen mit der gleichen Ausdruckslosigkeit wie zuvor.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28987 /* ~"Ich habe einen Magier namens Salabesh getroffen, der mir von einem Steinmann erzählte, der hier sein sollte. Bist du das?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28988 /* ~Schlage die Statue.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28989 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 0.3 1.0 3.2 4.0 31.1 31.2
  SAY #28901 /* ~Die 'Statue' bewegt sich... ganz leicht und fast unmerklich. Sie hat genickt.~ */
  IF ~~ THEN REPLY #28990 /* ~"Gut. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #28991 /* ~"Das dachte ich mir. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 32.0
  SAY #28902 /* ~Die 'Statue' bleibt weiterhin stumm.~ */
  IF ~~ THEN REPLY #28992 /* ~"Hallo? Meine Fragen?"~ */ GOTO 7
  IF ~~ THEN REPLY #28993 /* ~"Hmm. Also dann, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #28903 /* ~Sie gibt immer noch keine Antwort.~ */
  IF ~~ THEN REPLY #28994 /* ~Warte auf eine Antwort.~ */ GOTO 57
  IF ~~ THEN REPLY #28998 /* ~Gib auf und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 58.0 58.1
  SAY #28904 /* ~Die Augen der Statue öffnen sich. Sie schaut dich aus kalten, grauen Augen an. Ihre Stimme ist schwerfällig, so, als ob zwei Felsbrocken aneinanderreiben. "Deine Geduld... wird belohnt. Qui-Sai möchte... jetzt... mit dir sprechen."~ */
  IF ~~ THEN REPLY #28999 /* ~"Ich will dich was über dich fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #29000 /* ~"Ich will was über diesen Ort wissen."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29001 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 29
  IF ~~ THEN REPLY #29002 /* ~"Darauf komm ich später noch mal zurück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 58.2
  SAY #28905 /* ~Die Augen der Statue öffnen sich. Sie schaut dich aus kalten, grauen Augen an. Ihre Stimme ist schwerfällig, so, als ob zwei Felsbrocken aneinanderreiben. "Deine Geduld... wird belohnt. Qui-Sai möchte... jetzt... mit dir sprechen."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 289
END

IF ~~ THEN BEGIN 10 // from: 11.3 12.2 13.3 14.2 15.0 16.2 17.1 19.0 27.2 28.1 29.0 30.0 35.0 37.10 38.0 41.1 49.1 50.2 51.1 53.1 55.0 56.0 59.0
  SAY #28906 /* ~Du hast schon geglaubt, daß die Statue dich nicht gehört hat, doch da antwortet sie. "Frage."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65157 /* ~"Ich habe mit Eli über das geredet, was du neulich gesagt hast, und sogar er gab zu, daß die Schlacht noch bevorsteht. Sich auf Diebstahl zu verlassen ist ein Fehler."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65158 /* ~"Ich habe mit Eli über das geredet, was du neulich gesagt hast, und er sagte, daß kein Dieb je so eine hochgradige List beherrscht habe. Und daß man sich vor manchen Feinden nicht verstecken könne. Dein Geruch oder deine bloßen Gedanken würden dich verraten."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65159 /* ~"Ich habe mit Lady Dornenkamm über das geredet, was du neulich gesagt hast. Sie sagte, Magier seien körperlich unterlegen und ihre Zauber täuschten nur über diesen Mangel hinweg. Wenn die Zaubersprüche verbraucht seien, folge die eigentliche Schlacht."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29003 /* ~"Ich will dich was über dich fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #29004 /* ~"Ich will was über diesen Ort wissen."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29005 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 29
  IF ~~ THEN REPLY #29006 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.3 33.3
  SAY #28907 /* ~Nach einem kurzen Schweigen sagt die Statue: "Frage."~ */
  IF ~~ THEN REPLY #29007 /* ~"Worüber hast du meditiert, als ich hier angekommen bin?"~ */ GOTO 51
  IF ~~ THEN REPLY #29008 /* ~"Wer bist du?"~ */ GOTO 12
  IF ~~ THEN REPLY #29009 /* ~"Was machst du da?"~ */ GOTO 13
  IF ~~ THEN REPLY #29010 /* ~"Äh, ich habe noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29011 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.2
  SAY #28908 /* ~"Ich heiße... Qui-Sai."~ */
  IF ~~ THEN REPLY #29012 /* ~"Was genau bist du?"~ */ GOTO 27
  IF ~~ THEN REPLY #29013 /* ~"Was machst du hier?"~ */ GOTO 13
  IF ~~ THEN REPLY #29014 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29015 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.1 27.1 28.0
  SAY #28909 /* ~"Qui-Sai...meditiert. Qui-Sai... ist außerdem... ein Meister der... Kampfkunst."~ */
  IF ~~ THEN REPLY #29016 /* ~"Worüber meditierst du gerade?"~ */ GOTO 51
  IF ~  GlobalLT("Qui_Sai","GLOBAL",5)
Global("CW_Qui_Question","GLOBAL",0)
~ THEN REPLY #29017 /* ~"Kannst du mich trainieren?"~ */ GOTO 14
  IF ~~ THEN REPLY #29018 /* ~"Wer bist du?"~ */ GOTO 12
  IF ~~ THEN REPLY #29019 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29020 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #28910 /* ~Die Statue mustert dich von Kopf bis Fuß und gibt ein dumpfes grollendes Geräusch von sich. Sie hebt langsam ihre Hände und bricht mit einem scharfen *Knacken* einen ihrer Fingernägel ab. "Qui-Sai möchte sehen... wie du diesen Stein durchbrichst." Die Statue reicht dir die Scherbe aus lebendem Stein.~ */
  IF ~  CheckStatGT(Protagonist,8,STR)
~ THEN REPLY #29021 /* ~Zerbrich den Stein.~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,9,STR)
~ THEN REPLY #29022 /* ~Zerbrich den Stein.~ */ JOURNAL #28756 /* ~Qui-Sai, der Kampflehrer in der Städtischen Festhalle, hat abgelehnt, mich zu trainieren, da ich zu schwach sei. Vielleicht komme ich ja zurück, wenn ich jemals stärker werde. ~ */ GOTO 15
  IF ~~ THEN REPLY #29023 /* ~"Ach egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29024 /* ~"Ich muß jetzt gehen. Hier ist der Stein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #28911 /* ~So sehr du dich auch bemühst, du schaffst es nicht, den Stein durchzubrechen. "Qui-Sai hält dich für...ungeeignet...für zu schwach... um in der Kampfkunst gelehrt zu werden." Die Statue nimmt dir den Stein weg, steckt ihn in den Mund und zerkaut ihn mit einem knirschenden und knackenden Geräusch zu Staub.~ */
  IF ~~ THEN REPLY #29025 /* ~"Naja, dann hätte ich ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29026 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #28912 /* ~Mit einiger Mühe brichst du die Steinscherbe entzwei. Qui-Sai nimmt dir die Steine weg, steckt sie in den Mund und zerkaut sie mit einem knirschenden und knackenden Geräusch zu Staub. "Qui-Sai hält dich für... körperlich ungeeignet. Qui-Sai will dich jetzt fragen... warum willst du... in die Lehre gehen?"~ */
  IF ~~ THEN REPLY #29027 /* ~"Um mich zu verteidigen."~ */ GOTO 17
  IF ~~ THEN REPLY #29029 /* ~"Um meine Feinde zu zerschmettern."~ */ GOTO 17
  IF ~~ THEN REPLY #29030 /* ~"Ach vergiß es. Laß mich dich was anderes fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29031 /* ~"Im Moment will ich's gar nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #28913 /* ~"Dann sieht Qui-Sai ...keine Notwendigkeit für... einen direkten Kampf."~ */
  IF ~~ THEN REPLY #29032 /* ~"Wie meinst du das?"~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29033 /* ~"Vergiß es. Laß mich dich was anderes fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29034 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #28914 /* ~"Qui-Sai meint damit, daß... es viele Wege gibt... Man kann... die Waffe seines Gegners stehlen... so daß er sich nicht... verteidigen kann."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29036 /* ~"Aber die Schlacht muß trotzdem geschlagen werden. Sich nur auf Diebstahl zu verlassen, ist ein Fehler."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29038 /* ~"Dann wirst du mich also nicht trainieren?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1 20.2
  SAY #28915 /* ~"Qui-Sai sieht... keine Notwendigkeit. Dir ist es nicht gelungen Qui-Sai... vom Gegenteil zu überzeugen. Vielleicht solltest du... mit dem Diebeslehrer hier reden. Wenn du nicht unter ihm lernen willst... Er könnte meinem Argument etwas entgegensetzen."~ */
  IF ~~ THEN REPLY #29041 /* ~"Dann laß mich dich was anderes fragen..."~ */ JOURNAL #56794 /* ~Qui-Sai hat es abgelehnt, mich als Krieger zu trainieren, und mir die Vorzüge eines Lebens als Dieb gegenüber dem als Krieger aufgezählt. Er hat vorgeschlagen, daß ich mich vom Lehrer für Diebe in der Festhalle als Dieb trainieren lasse. Falls ich kein Spitzbube werden wollte, sollte ich mit dem Lehrer für Diebe sprechen und ein Gegenargument zu Qui-Sais Widerlegung finden.~ */ GOTO 10
  IF ~~ THEN REPLY #29042 /* ~"Na, wenn das so ist, dann leb wohl."~ */ JOURNAL #56794 /* ~Qui-Sai hat es abgelehnt, mich als Krieger zu trainieren, und mir die Vorzüge eines Lebens als Dieb gegenüber dem als Krieger aufgezählt. Er hat vorgeschlagen, daß ich mich vom Lehrer für Diebe in der Festhalle als Dieb trainieren lasse. Falls ich kein Spitzbube werden wollte, sollte ich mit dem Lehrer für Diebe sprechen und ein Gegenargument zu Qui-Sais Widerlegung finden.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 10.0 18.0 33.0
  SAY #28916 /* ~Nach einer Weile nickt die Statue. "Man kann sich... verstecken. Wenn man nicht gesehen werden kann... kann man nicht angegriffen werden. Man ist... unverwundbar."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29043 /* ~"Aber kein Dieb hat die List so sehr gemeistert. Und vor manchen Feinden kann man sich nicht verstecken; man verrät sich durch seinen Geruch oder seine Gedanken."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  GlobalGT("CW_Eli_Ans","GLOBAL",1)
~ THEN REPLY #29044 /* ~"Aber kein Dieb, nicht einmal Eli, hat die List so sehr gemeistert. Und vor manchen Feinden kann man sich nicht verstecken; man verrät sich durch seinen Geruch oder auch nur durch seine Gedanken."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29045 /* ~"Dann wirst du mich also nicht trainieren?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 10.1 20.0 20.1 33.1
  SAY #28917 /* ~Nach einer Weile nickt die Statue. "Mächtige Zauber... können viele Feinde zerschmettern... schneller... als jede Klinge."~ */
  IF ~  GlobalGT("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Magier sind wie Flakons mit flammendem Öl... stark, aber machtlos, sobald es verbrannt ist. Sie sind körperlich schwach und ihre Zauber sind nichts als Krücken für diese Schwächen. Wenn erst einmal aller Zauber verbraucht ist, bleibt trotzdem noch der Kampf."~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",3)
SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  Global("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Magier sind wie Flakons mit flammendem Öl... stark, aber machtlos, sobald es verbrannt ist. Sie sind körperlich schwach und ihre Zauber sind nichts als Krücken für diese Schwächen. Wenn erst einmal aller Zauber verbraucht ist, bleibt trotzdem noch der Kampf."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29050 /* ~"Dann wirst du mich also nicht trainieren?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",2)
~ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 10.2 21.0 21.1 33.2
  SAY #28918 /* ~Ein flüchtiges Lächeln zeigt sich auf dem Gesicht der Statue und aus ihrem Hals ertönt ein dumpfes grollendes Geräusch. "Qui-Sai hält dich... für geeignet, um in die Lehre zu gehen. Geh zu Qui-Sai... geh zum Trainingsraum."~ */
  IF ~~ THEN REPLY #29053 /* ~"Schon auf dem Weg."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai hat endlich eingewilligt, mich zu trainieren. Ich soll ihn im Kampftrainingsraum in der Festhalle treffen.~ */ EXIT
  IF ~~ THEN REPLY #29054 /* ~"Erst muß ich noch was anderes erledigen. Ich geh da dann später hin."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai hat endlich eingewilligt, mich zu trainieren. Ich soll ihn im Kampftrainingsraum in der Festhalle treffen.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.3 4.1
  SAY #28919 /* ~Als du die Statue schlagen willst, öffnet sie blitzschnell ihre Augen und fängt deine Faust mit einem eisernen Griff ab. Die Statue kneift ihre kalten grauen Augen zusammen und spricht mit einer Stimme, deren Klang an zwei aneinanderreibende Felsbrocken erinnert: "Warum... willst du... Qui-Sai schlagen?"~ */
  IF ~~ THEN REPLY #29055 /* ~"Vergib mir, ich wollte nur sehen, ob du wirklich eine Statue bist."~ */ GOTO 24
  IF ~~ THEN REPLY #29056 /* ~"Selbst schuld, wenn du mich hier verkaspern willst."~ */ GOTO 25
  IF ~~ THEN REPLY #29057 /* ~"Laß uns doch so tun, als ob das nie passiert wäre, ja? Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #28920 /* ~Die Statue nickt bedächtig und runzelt die Stirn. "Ich... vergebe dir. Aber... man spürt, daß du keine... Geduld hast."~ */
  IF ~~ THEN REPLY #29058 /* ~"Kann sein. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #29059 /* ~"Mag sein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28921 /* ~"Qui-Sai wollte... niemanden täuschen. Qui-Sai... hält dich für... ungestüm... und unverschämt."~ */
  IF ~~ THEN REPLY #29060 /* ~"Vergib mir, ich wollte nur sehen, ob du wirklich eine Statue bist."~ */ GOTO 24
  IF ~~ THEN REPLY #29061 /* ~"Pech. Ich hätte da ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Qui_1","GLOBALGood",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #28922 /* ~Die Statue schließt ihre Augen und verstummt wieder.~ */
  IF ~~ THEN REPLY #29062 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0
  SAY #28923 /* ~"Einer ist... von der Rasse der... Steinfürsten. Qui-Sai ist... Genasi-der-Erde."~ */
  IF ~~ THEN REPLY #29063 /* ~"Genasi?"~ */ JOURNAL #65756 /* ~Qui-Sai, den ich in der Städtischen Festhalle getroffen habe, hat mir erzählt, daß er als ein 'Genasi-von-Erde' bekannt ist... Das bedeutet, er ist ein Nachkomme eines Erdwesens und eines Menschen.~ */ GOTO 28
  IF ~~ THEN REPLY #29064 /* ~"Was machst du hier?"~ */ GOTO 13
  IF ~~ THEN REPLY #29065 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29066 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #28924 /* ~Die Statue nickt stolz. "Qui-Sais Vater... eine elementare Kreatur der Erde... ein Dao. Qui-Sais Mutter... ein Mensch... von edler Abstammung. So wird man... Genasi-der-Erde."~ */
  IF ~~ THEN REPLY #29067 /* ~"Was machst du hier?"~ */ GOTO 13
  IF ~~ THEN REPLY #29068 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29069 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 8.2 10.5 33.5
  SAY #28925 /* ~"Nichts."~ */
  IF ~~ THEN REPLY #29070 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29071 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.4 33.4
  SAY #28926 /* ~"Das ist... die Städtische Festhalle. Wenn du mehr wissen willst... frag irgendwen anders."~ */
  IF ~~ THEN REPLY #29072 /* ~"Hmm. Ich hab' noch andere Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29073 /* ~"Dann frag ich jemand anders. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #28927 /* ~Die Statue steht immer noch regungslos und stumm da.~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #29074 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #29075 /* ~"Ich habe einen Magier namens Salabesh getroffen, der mir von einem Steinmann erzählte, der hier sein sollte. Bist du das?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #29076 /* ~"Sei gegrüßt... bist du Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #29077 /* ~Berühre die Statue.~ */ GOTO 3
  IF ~~ THEN REPLY #29078 /* ~Geh.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #28928 /* ~Die 'Statue' steht immer noch regungslos und stumm da.~ */
  IF ~~ THEN REPLY #29079 /* ~"Sei wieder gegrüßt. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #29080 /* ~Geh.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",3)
~ THEN BEGIN 33 // from:
  SAY #28929 /* ~"Qui-Sai grüßt dich."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65160 /* ~"Ich habe mit Eli über das geredet, was du neulich gesagt hast, und sogar er gab zu, daß die Schlacht noch bevorsteht. Sich auf Diebstahl zu verlassen ist ein Fehler."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65161 /* ~"Ich habe mit Eli über das geredet, was du neulich gesagt hast, und er sagte, daß kein Dieb je so eine hochgradige List beherrscht habe. Und daß man sich vor manchen Feinden nicht verstecken könne. Dein Geruch oder deine bloßen Gedanken würden dich verraten."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65162 /* ~"Ich habe mit Lady Dornenkamm über das geredet, was du neulich gesagt hast. Sie sagte, Magier seien körperlich unterlegen und ihre Zauber täuschten nur über diesen Mangel hinweg. Wenn die Zaubersprüche verbraucht seien, folge die eigentliche Schlacht."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29081 /* ~"Ich will dich was über dich fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #29082 /* ~"Ich will was über diesen Ort wissen."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29083 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 29
  IF ~~ THEN REPLY #29084 /* ~"Komm nur gerade zufällig vorbei. Leb wohl."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #28930 /* ~"Sprich... nicht. Geh... zum Trainingsraum."~ */
  IF ~~ THEN REPLY #29085 /* ~"Schon auf dem Weg."~ */ EXIT
  IF ~~ THEN REPLY #29086 /* ~"Erst muß ich noch was anderes erledigen. Ich geh da dann später hin."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",5)
~ THEN BEGIN 35 // from:
  SAY #28931 /* ~Die Statue sieht dich kühl aus ihren Granitaugen an. "Bist du gekommen,... um mit Qui-Sai zu trainieren?"~ */
  IF ~~ THEN REPLY #29087 /* ~"Nein, ich hätte da ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29088 /* ~"Ja, trainier mich."~ */ GOTO 36
  IF ~~ THEN REPLY #65507 /* ~"Nicht jetzt, nein. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY #28932 /* ~"Bist du... von Beruf Krieger?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29089 /* ~"Ja."~ */ GOTO 37
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29090 /* ~"Äh... nein."~ */ GOTO 49
END

IF ~~ THEN BEGIN 37 // from: 36.0 40.0 41.0 42.2 43.2 44.2 45.2 46.2 48.1 50.0 50.1
  SAY #28933 /* ~"Qui-Sai ist geübt... in allen Waffen, spezialisiert auf... keine... Meister von vielen. Was willst du... von Qui-Sai lernen?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29091 /* ~"Lehr mich, mit meinen Fäusten zu kämpfen."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29092 /* ~"Lehr mich, mit meinen Fäusten zu kämpfen."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29093 /* ~"Lehr mich, mit Klingen zu kämpfen."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29094 /* ~"Lehr mich, mit Klingen zu kämpfen."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29095 /* ~"Lehr mich, mit Keulen zu kämpfen."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29096 /* ~"Lehr mich, mit Keulen zu kämpfen."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29097 /* ~"Lehr mich, mit Äxten zu kämpfen."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29098 /* ~"Lehr mich, mit Äxten zu kämpfen."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29099 /* ~"Lehr mich, mit Hämmern zu kämpfen."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29100 /* ~"Lehr mich, mit Hämmern zu kämpfen."~ */ GOTO 46
  IF ~~ THEN REPLY #29101 /* ~"Eigentlich hätte ich ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29102 /* ~"Im Moment gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.2 37.4 37.6 37.8 40.1
  SAY #28934 /* ~"Du kannst... im Moment... nichts mehr lernen. Komm zu... Qui-Sai zurück,... wenn du mehr Erfahrungen... gesammelt hast."~ */
  IF ~~ THEN REPLY #29103 /* ~"Dann hab' ich ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29104 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 42.0 43.0 44.0 45.0 46.0 48.0
  SAY #28935 /* ~"Dann wird Qui-Sai... dich jetzt lehren."~ */
  IF ~~ THEN REPLY #29105 /* ~Trainiere mit Qui-Sai.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #28936 /* ~"Qui-Sai ist... mit dir... als Lehrling... zufrieden. Du lernst... schnell."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29106 /* ~"Danke. Kannst du mir noch mehr beibringen?"~ */ GOTO 37
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29107 /* ~"Danke. Kannst du mir noch mehr beibringen?"~ */ GOTO 38
  IF ~~ THEN REPLY #29108 /* ~"Danke. Leb wohl, Qui-Sai."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.1 43.1 44.1 45.1 46.1
  SAY #28937 /* ~Nachdem sich Qui-Sai angesehen hat, was du kannst, schüttelt er den Kopf. "Qui-Sai findet.. daß du... bereits geübt bist in dieser... Form des Kampfes. Qui-Sai kann dich... nichts mehr lehren. Wenn du... mehr über diese Waffe lernen willst... geh zu Korur, im Unteren Bezirk."~ */
  IF ~~ THEN REPLY #29109 /* ~"Könntest du mir noch mehr beibringen?"~ */ GOTO 37
  IF ~~ THEN REPLY #29110 /* ~"Dann hab' ich ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29111 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 37.1
  SAY #28938 /* ~"Qui-Sai wird dich... die Kunst des Faustkampfes... lehren. Ist es das... was du wünschst?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
~ THEN REPLY #29112 /* ~"Ja, lehre mich."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,FIST,2)
~ THEN REPLY #29113 /* ~"Ja, lehre mich."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29114 /* ~"Nein... was kannst du mir noch beibringen?"~ */ GOTO 37
  IF ~~ THEN REPLY #29115 /* ~"Nein, heute will ich nicht trainieren. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 37.3
  SAY #28939 /* ~"Qui-Sai wird dich... die Kunst des Klingenkampfes... lehren. Ist es das... was du wünschst?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
~ THEN REPLY #29116 /* ~"Ja, lehre mich."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
~ THEN REPLY #29117 /* ~"Ja, lehre mich."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29118 /* ~"Nein... was kannst du mir noch beibringen?"~ */ GOTO 37
  IF ~~ THEN REPLY #29119 /* ~"Nein, heute will ich nicht trainieren. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.5
  SAY #28940 /* ~"Qui-Sai wird dich... die Kunst des Keulenkampfes... lehren. Ist es das... was du wünschst?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
~ THEN REPLY #29120 /* ~"Ja, lehre mich."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
~ THEN REPLY #29121 /* ~"Ja, lehre mich."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29122 /* ~"Nein... was kannst du mir noch beibringen?"~ */ GOTO 37
  IF ~~ THEN REPLY #29123 /* ~"Nein, heute will ich nicht trainieren. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.7
  SAY #28941 /* ~"Qui-Sai wird dich... die Kunst des Axtkampfes... lehren. Ist es das...was du wünschst?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
~ THEN REPLY #29124 /* ~"Ja, lehre mich."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,AXE,2)
~ THEN REPLY #29125 /* ~"Ja, lehre mich."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29126 /* ~"Nein... was kannst du mir noch beibringen?"~ */ GOTO 37
  IF ~~ THEN REPLY #29127 /* ~"Nein, heute will ich nicht trainieren. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.9
  SAY #28942 /* ~"Qui-Sai wird dich... die Kunst des Kampfes mit...dem mächtigen Hammer lehren. Ist es das... was du wünschst?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
~ THEN REPLY #29128 /* ~"Ja, lehre mich."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
~ THEN REPLY #29129 /* ~"Ja, lehre mich."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29131 /* ~"Nein... was kannst du mir noch beibringen?"~ */ GOTO 37
  IF ~~ THEN REPLY #29132 /* ~"Nein, heute will ich nicht trainieren. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #28943 /* ~Nachdem sich Qui-Sai angesehen hat, was du kannst, gibt er ein tiefes donnerndes Geräusch von sich. "Qui-Sai meint...daß deine Lehre... über den Kampf mit dem mächtigen Hammer... fortgesetzt werden kann."~ */
  IF ~~ THEN REPLY #29133 /* ~"Dann lehr mich."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #28944 /* ~"Qui-Sai will, daß du das... weißt: Sobald du den Hammer... beherrscht... kannst du... keine anderen Waffen beherrschen. Ist es das... was du wünschst?"~ */
  IF ~~ THEN REPLY #29134 /* ~"Ja, ich möchte mich auf den Hammer spezialisieren."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #28818 /* ~Qui-Sai, der Kampflehrer in der Städtischen Festhalle, hat mich die Kunst des Hammerkampfes gelehrt. Ich bin jetzt auf diese Waffe besonders spezialisiert.~ */ GOTO 39
  IF ~~ THEN REPLY #29135 /* ~"Nein... was kannst du mir noch beibringen?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 49 // from: 36.1
  SAY #28945 /* ~Qui-Sais Mund verzieht sich . "Dann kann Qui-Sai... dich nichts lehren."~ */
  IF ~~ THEN REPLY #29136 /* ~"Könntest du mich zu einem Krieger machen?"~ */ GOTO 50
  IF ~~ THEN REPLY #29137 /* ~"Dann hab' ich ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29138 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28946 /* ~Qui-Sais linke Augenbraue verzieht sich langsam aber sicher nach oben. "Würdest du... deinen jetzigen Beruf aufgeben, um den Pfad... des Kriegers zu beschreiten?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29139 /* ~"Ja. Ich möchte die Kunst nicht mehr studieren. Mach mich zu einem Krieger."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #29140 /* ~"Ja. Ich will kein Dieb mehr sein. Mach mich zu einem Krieger."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~~ THEN REPLY #29141 /* ~"Eigentlich nicht. Aber ich hätte da ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29142 /* ~"Nicht im Moment. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 11.0 13.0
  SAY #28947 /* ~"Qui-Sai meditiert über den... Weg der Steine."~ */
  IF ~~ THEN REPLY #29143 /* ~"Den 'Weg der Steine'?"~ */ GOTO 52
  IF ~~ THEN REPLY #29144 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29145 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #28948 /* ~Qui-Sai nickt. "Eine...Philosophie. Eine... Kampfmethode. Mit ihr... versucht Qui-Sai... unverwundbar zu werden."~ */
  IF ~~ THEN REPLY #29146 /* ~"Unverwundbar zu werden? Dann wäre man ja unschlagbar im Kampf..."~ */ GOTO 53
  IF ~~ THEN REPLY #29147 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #28949 /* ~"Ja. Nur ist der Weg... noch nicht... vollendet. Qui-Sai wird ihn eines Tages... vollenden. Qui-Sai... weiß das."~ */
  IF ~  Global("Way_of_Stone","GLOBAL",0)
~ THEN REPLY #29148 /* ~"Kannst du mir sagen, was du bisher rausgefunden hast?"~ */ GOTO 54
  IF ~~ THEN REPLY #29149 /* ~"Ich verstehe. Ich hab' noch andere Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29150 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #28950 /* ~Qui-Sai nickt. "Niemand hat... Qui-Sai bisher darum gebeten, sein Wissen über... den Weg zu teilen. Qui-Sai wird das... jetzt tun." Er fängt an, langsam und sehr ausführlich zu erzählen...~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #29151 /* ~Höre zu und erlerne den Weg der Steine.~ */ DO ~SetGlobal("Way_of_Stone","GLOBAL",1)
PermanentStatChange(Protagonist,ARMORCLASS,LOWER,1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28819 /* ~Qui-Sai, der Kampflehrer in der Öffentlichen Festhalle, hat mich im "Weg der Steine" unterrichtet. Wenn auch viel dieser Philosophie für mich als ein Wesen aus Fleisch und Blut unbrauchbar ist, so kann ich doch einige der Lehrsätze für mich nutzen, um mich im Kampf schwieriger verwundbar zu machen.~ */ GOTO 55
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #29152 /* ~Höre zu und versuche, den Weg der Steine zu verstehen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28820 /* ~Qui-Sai, der Kampflehrer in der Städtischen Festhalle, hat versucht, mich im "Weg der Steine" zu unterrichten. Die Philosophie war mir aber einfach zu kompliziert und fremd, um sie zu verstehen.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #28951 /* ~Nach stundenlangem Zuhören und vielen Fragen begreifst du, wie wenig Qui-Sai dich über den Weg der Steine lehren kann. Im Kampf kannst du dein Wissen einsetzen, um den Angriffen deiner Feinde zu widerstehen und sie abzuwehren. Auf diese Weise kannst du deine Rüstungsklasse verbessern.~ */
  IF ~~ THEN REPLY #29153 /* ~"Vielen Dank, Qui-Sai. Ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29154 /* ~"Danke, Qui-Sai. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #28952 /* ~Nach stundenlangem Zuhören und vielen Fragen kannst du Qui-Sais Weg der Steine immer noch nicht nachvollziehen. Die Konzepte sind einfach zu komplex und zu fremd für dich, um sie vollständig zu begreifen.~ */
  IF ~~ THEN REPLY #29155 /* ~"Trotzdem vielen Dank, Qui-Sai. Ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #29156 /* ~"Trotzdem danke, Qui-Sai. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 7.0
  SAY #31247 /* ~Immer noch keine Antwort. Du hast das Gefühl, daß Qui-Sai deine Geduld auf die Probe stellen will.~ */
  IF ~~ THEN REPLY #28995 /* ~Warte weiter.~ */ GOTO 58
  IF ~~ THEN REPLY #28996 /* ~Gib auf und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #31251 /* ~Es vergehen einige Minuten, und Qui-Sai hat immer noch nicht geantwortet.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31257 /* ~Warte noch eine Weile still...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!Global("Water","GLOBAL",3)
~ THEN REPLY #31258 /* ~Warte noch eine Weile still...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
Global("Water","GLOBAL",3)
~ THEN REPLY #31259 /* ~Warte noch eine Weile still...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 9
  IF ~~ THEN REPLY #31260 /* ~Gib auf und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.2
  SAY #65163 /* ~"Qui-Sai sieht... keinen Zweck. Du hast Qui-Sai nicht überzeugen können... ansonsten. Vielleicht solltest du... mit der Zauberlehrerin hier sprechen. Wenn du nicht von ihr trainiert werden willst... so weiß sie doch vielleicht ein Gegenargument."~ */
  IF ~~ THEN REPLY #65164 /* ~"Dann laß mich dich was anderes fragen..."~ */ JOURNAL #58925 /* ~Qui-Sai hat es abgelehnt, mich als Krieger zu trainieren, und mir die Vorzüge eines Lebens als Magier gegenüber dem als Krieger aufgezählt. Er hat vorgeschlagen, daß ich mich vom Lehrer für Magier in der Festhalle als Magier trainieren lasse. Falls ich kein Zauberer werden wollte, sollte ich mit dem Lehrer für Magier sprechen und ein Gegenargument zu Qui-Sais Widerlegung finden.~ */ GOTO 10
  IF ~~ THEN REPLY #65165 /* ~"Na, wenn das so ist, dann leb wohl."~ */ JOURNAL #58925 /* ~Qui-Sai hat es abgelehnt, mich als Krieger zu trainieren, und mir die Vorzüge eines Lebens als Magier gegenüber dem als Krieger aufgezählt. Er hat vorgeschlagen, daß ich mich vom Lehrer für Magier in der Festhalle als Magier trainieren lasse. Falls ich kein Zauberer werden wollte, sollte ich mit dem Lehrer für Magier sprechen und ein Gegenargument zu Qui-Sais Widerlegung finden.~ */ EXIT
END
