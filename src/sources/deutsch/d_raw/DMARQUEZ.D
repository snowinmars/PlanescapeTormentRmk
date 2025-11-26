// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARQUEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARQUEZ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49143 /* ~Du siehst einen kräftigen, blonden Mann, der die Rüstung eines Harmonium-Offiziers trägt. Sein Gesicht ist vom Trinken rosig gefärbt, und hinter seinem Lächeln sind seine Augen mit Bitterkeit gefüllt. Unvermittelt beginnt er zu reden. "Das ist das Geschäft: Sklaventreiber haben Barses Tochter entführt. Du sollst sie zurückholen. Ich sag dir, wo du die Leute findest, du gehst hin, tötest sie und meldest dich wieder bei mir, und ich werd dir helfen, den Deva zu finden, den du suchst. Dann bring ich dir den Umgang mit Waffen bei. Einverstanden?"~ */
  IF ~~ THEN REPLY #49144 /* ~"Abgemacht."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49145 /* ~"Ich hab dazu erst noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49146 /* ~"Ich habe erst noch ein paar Fragen zu etwas anderem..."~ */ GOTO 2
  IF ~~ THEN REPLY #49147 /* ~"Nein. Ich werde es nicht tun."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50464 /* ~"Sie sind alle schon tot."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50465 /* ~"Sie sind alle schon tot. Sie ist allerdings auch gestorben."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 4.2 5.0 7.4 12.0 17.0
  SAY #49148 /* ~"Zuletzt hab ich gehört, daß die Sklavenhändler sich hinter der Stadtkaserne aufhalten - das stimmt schon, denn sie werden von der Stadtwache gedeckt. Mach sie ausfindig, stell sicher, daß Barses Tochter unversehrt ist, und töte die Bande. Wenn du fertig bist, kommst du hierher zurück, und du erfährst von mir den ersten Teil des Schlüssels, den du zum Finden des Deva brauchst."~ */
  IF ~~ THEN REPLY #49149 /* ~"In Ordnung. Beantworte mir dazu noch ein paar Fragen."~ */ JOURNAL #49153 /* ~Ich habe einen Auftrag angenommen: Ich soll die Sklavenhändler hinter der Stadtkaserne finden, die Tochter des Besudelten Barse in Sicherheit bringen und dann die Sklavenhändler umbringen. Den Auftrag hab ich von Marquez; im Gegenzug gibt er mir den ersten Teil des Schlüssels, den ich brauche, um zum eingesperrten Deva zu gelangen.~ */ GOTO 7
  IF ~~ THEN REPLY #49150 /* ~"Na gut. Leb wohl."~ */ JOURNAL #49153 /* ~Ich habe einen Auftrag angenommen: Ich soll die Sklavenhändler hinter der Stadtkaserne finden, die Tochter des Besudelten Barse in Sicherheit bringen und dann die Sklavenhändler umbringen. Den Auftrag hab ich von Marquez; im Gegenzug gibt er mir den ersten Teil des Schlüssels, den ich brauche, um zum eingesperrten Deva zu gelangen.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 12.1 12.2
  SAY #49157 /* ~"Ein paar Fragen? Nein. Es gibt nur zwei mögliche Antworten. Bist du für Sklaverei oder dagegen?"~ */
  IF ~~ THEN REPLY #49158 /* ~"Ich bin dagegen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marquez_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #49159 /* ~"Ich bin dafür."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marquez_1","GLOBALGood",-2)
~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49160 /* ~"Dann hilfst du uns, nicht wahr? Ja... oder nein?"~ */
  IF ~~ THEN REPLY #49161 /* ~"Ich helfe euch."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49171 /* ~"Ich helfe euch nicht."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #49173 /* ~Er sieht dich angewidert an. "Soll das heißen, daß du uns nicht hilfst... selbst wenn deine eigenen Interessen davon betroffen sind?"~ */
  IF ~~ THEN REPLY #49174 /* ~"Was meinst du?"~ */ GOTO 5
  IF ~~ THEN REPLY #49176 /* ~"Du hast es erfaßt. Ich helfe euch nicht."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #49177 /* ~"Oh, ich helfe euch doch."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49178 /* ~"Ich meine damit, daß jeder hier weiß, daß du nach dem Deva suchst. Besudelter Barse weiß, wie du ihn finden kannst. Du wärst ein Narr, wenn du die Gelegenheit nicht am Schopfe packen würdest."~ */
  IF ~~ THEN REPLY #49179 /* ~"Also schön. Ich helfe euch."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49181 /* ~"Ich helfe euch immer noch nicht."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.3 3.1 4.1 5.1 12.3 17.1
  SAY #49182 /* ~"Dann bist du ein größerer Narr als ich gedacht hab, und wir haben uns nichts weiter zu sagen. Leb wohl." Er dreht sich wieder zu seinem Getränk um.~ */
  IF ~~ THEN REPLY #49183 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 8.1 9.1 10.0 11.0 13.2 21.0
  SAY #49184 /* ~"Was?"~ */
  IF ~~ THEN REPLY #49185 /* ~"Wer bist du?"~ */ GOTO 8
  IF ~~ THEN REPLY #49186 /* ~"Was machst du hier?"~ */ GOTO 9
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #49187 /* ~"Was hast du überhaupt mit dieser Sklavengeschichte zu tun?"~ */ GOTO 10
  IF ~~ THEN REPLY #49188 /* ~"Was kannst du mir über den Schlüssel erzählen?"~ */ GOTO 11
  IF ~~ THEN REPLY #49189 /* ~"Wo halten sich diese Sklavenhändler doch gleich nochmal auf?"~ */ GOTO 1
  IF ~~ THEN REPLY #49190 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49191 /* ~"Ich bin Marquez, ehemals Dritter Rang des Harmoniums. Die Betonung liegt auf 'ehemals', denn ich hab vor kurzem meinen Dienst quittiert."~ */
  IF ~~ THEN REPLY #49192 /* ~"Warum?"~ */ GOTO 10
  IF ~~ THEN REPLY #49194 /* ~"Ich hätte noch ein paar andere Fragen..." ~ */ GOTO 7
  IF ~~ THEN REPLY #49195 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #49196 /* ~"Ich trinke. Oder als was würdest du das hier sonst bezeichnen? Ich warte hier darauf, daß jemand vorbeikommt und das Unrecht wiedergutmacht, das ich begangen hab. Du scheinst mir der Richtige für diese Arbeit zu sein."~ */
  IF ~~ THEN REPLY #49197 /* ~"Welches Unrecht?"~ */ GOTO 10
  IF ~~ THEN REPLY #49199 /* ~"Ich hätte noch ein paar andere Fragen..." ~ */ GOTO 7
  IF ~~ THEN REPLY #49200 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.0 9.0
  SAY #49201 /* ~"Ich hab herausgefunden, daß das Harmonium - eine Gruppe, an die ich von Anfang an geglaubt hab - Menschen gekauft, sie entführt, gegen ihren Willen festgehalten und ihr Leben ruiniert hat. Es hat den Menschen das Leben ausgesogen, als Strafe dafür, daß sie es gewagt haben, anders zu sein. Das konnte ich nicht mehr ertragen. Es ist Zeit, daß ich auf meine Weise mit dem Leben umgehe und nicht so, wie es andere wollen."Die Sklavenhändler, gegen die du kämpfen wirst, sind alte Kameraden von mir." Er spuckt auf den Boden. "Dussel. Lügner. Man kann heut keinem mehr trauen."~ */
  IF ~~ THEN REPLY #49203 /* ~"Ich hätte noch ein paar andere Fragen..." ~ */ GOTO 7
  IF ~~ THEN REPLY #49204 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #49205 /* ~"Fünfteiliger Schlüssel. In Worte verpackt. In unseren Köpfen gespeichert." Er lächelt dich mit entblößten Zähnen an. "Durch Folter bekommst du meinen Teil nicht aus mir heraus, und ich nehme an, daß du an die anderen auch nicht leichter herankommst. Wir haben ein Geheimnis weggeschlossen, und du brauchst alle fünf Schlüsselteile, um es zu lüften."~ */
  IF ~~ THEN REPLY #49206 /* ~"Ich hätte noch ein paar andere Fragen..." ~ */ GOTO 7
  IF ~~ THEN REPLY #49207 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 17 even though they appear after this state */
~  Global("Slavers","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #49208 /* ~"Du bist wieder da." Er leert seinen Drink. "Barse hat dich geschickt. Gut. Das ist das Geschäft: Sklaventreiber haben Barses Tochter entführt. Du sollst sie zurückholen. Ich sag dir, wo du die Leute findest, du gehst hin, tötest sie und meldest dich wieder bei mir. Ich werd dir helfen, den Deva zu finden, den du suchst, und Hölle, vielleicht bring ich dir sogar den Umgang mit Waffen bei. Einverstanden?"~ */
  IF ~~ THEN REPLY #49209 /* ~"Abgemacht."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49210 /* ~"Ich hab dazu erst noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49211 /* ~"Ich habe erst noch ein paar Fragen zu etwas anderem..."~ */ GOTO 2
  IF ~~ THEN REPLY #49212 /* ~"Nein. Ich werde es nicht tun."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50468 /* ~"Sie sind alle schon tot."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50469 /* ~"Sie sind alle schon tot. Sie ist allerdings auch gestorben."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF WEIGHT #4 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #49214 /* ~Marquez sieht vom Tisch auf, als du dich näherst. "Bist du wegen Barses Tochter Jasilya hier?"~ */
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #49215 /* ~"Sie ist frei. Sie müßte in Kürze wieder hier sein."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",5)
AddexperienceParty(65000)
~ GOTO 14
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49216 /* ~"Sie ist ums Leben gekommen, als ich versucht hab, sie zu befreien."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
  IF ~~ THEN REPLY #49217 /* ~"Nein. Aber ich hätte ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #50466 /* ~"Nein. Leb wohl."~ */ GOTO 21
  IF ~~ THEN REPLY #67822 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.4 12.4 13.0
  SAY #49219 /* ~Er klopft dir auf die Schulter. "Gute Arbeit. Willst du den ersten Teil des Schlüssels, mit dem du unter Verdammnis kommst? Hier ist er: 'Solch einen Ort hat die ewige Gerechtigkeit bereitet für Aufständische...' Geh und red mit Kitla da drüben. Sie hat den zweiten Teil des Schlüssels."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Dann lehr mich."~ */ JOURNAL #66862 /* ~Ich habe den ersten Teil des Schlüssels bekommen, der einen Gang aufschließen soll, durch den ich zu dem Deva komme. Die Worte lauteten: "Solch einen Ort hatte die ewige Gerechtigkeit für diese Rebellischen bereitet...'. Jetzt werde ich mit jemandem namens Kitla in der Taverne am Verrätertor sprechen.~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Dann lehr mich."~ */ JOURNAL #66862 /* ~Ich habe den ersten Teil des Schlüssels bekommen, der einen Gang aufschließen soll, durch den ich zu dem Deva komme. Die Worte lauteten: "Solch einen Ort hatte die ewige Gerechtigkeit für diese Rebellischen bereitet...'. Jetzt werde ich mit jemandem namens Kitla in der Taverne am Verrätertor sprechen.~ */ GOTO 20
  IF ~~ THEN REPLY #67824 /* ~"Danke. Leb wohl."~ */ JOURNAL #66862 /* ~Ich habe den ersten Teil des Schlüssels bekommen, der einen Gang aufschließen soll, durch den ich zu dem Deva komme. Die Worte lauteten: "Solch einen Ort hatte die ewige Gerechtigkeit für diese Rebellischen bereitet...'. Jetzt werde ich mit jemandem namens Kitla in der Taverne am Verrätertor sprechen.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.5 12.5 13.1
  SAY #49222 /* ~"Das ist wirklich traurig. Es war bestimmt nicht zu vermeiden." Aus seinen auf dich gehefteten starren Augen ist nichts herauszulesen. "Dies ist der erste Teil des Schlüssels: 'Die ewige Gerechtigkeit hat diesen Ort für die rebellischen...' Sprich mit Kitla da drüben. Sie hat den zweiten Teil des Schlüssels."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Dann lehr mich."~ */ JOURNAL #66862 /* ~Ich habe den ersten Teil des Schlüssels bekommen, der einen Gang aufschließen soll, durch den ich zu dem Deva komme. Die Worte lauteten: "Solch einen Ort hatte die ewige Gerechtigkeit für diese Rebellischen bereitet...'. Jetzt werde ich mit jemandem namens Kitla in der Taverne am Verrätertor sprechen.~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Dann lehr mich."~ */ JOURNAL #66862 /* ~Ich habe den ersten Teil des Schlüssels bekommen, der einen Gang aufschließen soll, durch den ich zu dem Deva komme. Die Worte lauteten: "Solch einen Ort hatte die ewige Gerechtigkeit für diese Rebellischen bereitet...'. Jetzt werde ich mit jemandem namens Kitla in der Taverne am Verrätertor sprechen.~ */ GOTO 20
  IF ~~ THEN REPLY #67826 /* ~"Danke. Leb wohl."~ */ JOURNAL #66862 /* ~Ich habe den ersten Teil des Schlüssels bekommen, der einen Gang aufschließen soll, durch den ich zu dem Deva komme. Die Worte lauteten: "Solch einen Ort hatte die ewige Gerechtigkeit für diese Rebellischen bereitet...'. Jetzt werde ich mit jemandem namens Kitla in der Taverne am Verrätertor sprechen.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  GlobalGT("Curst_Key","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #49224 /* ~"Du brauchst nicht mehr mit mir zu reden. Wir haben dir alles gesagt, was wir sagen mußten. Ich hab dir gesagt, daß du mit Kitla reden sollst, sie wird dich von hier weg lenken. Laß mich in Ruhe trinken, außer wenn du ein bißchen Waffentraining willst..."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Dann lehr mich."~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Dann lehr mich."~ */ GOTO 20
  IF ~~ THEN REPLY #67821 /* ~"In Ordnung. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Slavers","GLOBAL",6)
~ THEN BEGIN 17 // from:
  SAY #49230 /* ~"Hast du deine Meinung geändert, oder willst du mir noch ein paar idiotische Fragen stellen?"~ */
  IF ~~ THEN REPLY #49228 /* ~"Ich hab meine Meinung geändert. Ich helfe dir."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49229 /* ~"Ich hab meine Meinung nicht geändert."~ */ GOTO 6
END

IF WEIGHT #5 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 18 // from:
  SAY #49231 /* ~Du triffst auf einen stämmigen blonden Mann, der die Rüstung eines Harmonium-Offiziers trägt. Er hat ein vom Alkohol gerötetes Gesicht, und hinter seinem Lächeln verbergen sich Augen, aus denen Verbitterung spricht. Er spricht einfach drauflos. "Barse hat dich geschickt? Nein? Dann stiehl mir nicht länger die Zeit!" Er wendet sich wieder seinem Whisky zu und ignoriert dich standhaft.~ */
  IF ~~ THEN REPLY #49232 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #49233 /* ~"Barse hat dich geschickt? Nein? Dann stiehl mir nicht länger die Zeit!" Er wendet sich von dir ab und ignoriert dich standhaft.~ */
  IF ~~ THEN REPLY #49234 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.1 15.1 16.1
  SAY #66962 /* ~"Du bist keiner, der mit Waffen herumspielt. Das sieht man ja an deinen Narben. Willst du aufgeben, was du jetzt bist?"~ */
  IF ~~ THEN REPLY #66978 /* ~"Ja."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 22
  IF ~~ THEN REPLY #66979 /* ~"Nein."~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #66963 /* ~"Du bist noch nicht soweit, daß ich dich unterrichten kann. Erledige Jasilya und Barse, und dann bring ich dir vielleicht etwas bei."~ */
  IF ~~ THEN REPLY #66980 /* ~"Gut. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #66981 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.0 20.0
  SAY #66964 /* ~"Du verhältst dich so, als ob du schon weißt, wie du mit einer Waffe umgehen mußt. Also kommen wir gleich zur Sache. Was willst du?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66982 /* ~"Kannst du mir sagen, ob ich für weiteren Unterricht bereit bin?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66983 /* ~"Kannst du mir sagen, ob ich für weiteren Unterricht bereit bin?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #66984 /* ~"Ich kann mit allen Waffen schon ziemlich gut umgehen. Kannst du mir sonst noch etwas beibringen?"~ */ JOURNAL #66986 /* ~Marquez hat mir gesagt, wenn ich mehr über Waffen lernen möchte, sollte ich Korur im Unteren Bezirk von Sigil aufsuchen. Ich hoffe, ich kann dahin zurückgehen, um das auszunutzen.~ */ GOTO 24
  IF ~~ THEN REPLY #66985 /* ~"Im Moment nichts. Ich werde später wiederkommen."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #66965 /* ~"Warum störst du mich dann überhaupt? Geh jetzt. Ich muß hier noch was trinken."~ */
  IF ~~ THEN REPLY #66987 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 34.2
  SAY #66966 /* ~Er begutachtet dein Geschick und flüstert dir überrascht zu: "Bruder, du verfügst über ein unglaubliches Geschick. Mir fällt einer ein, der dir noch mehr beibringen kann: ein Typ namens Korur im Unteren Bezirk von Sigil. Geh zu dem, wenn du kannst."~ */
  IF ~~ THEN REPLY #66988 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0 33.1 34.0 35.0
  SAY #66967 /* ~"Du bist nicht bereit, noch mehr zu lernen. Komm wieder, wenn du es bist."~ */
  IF ~~ THEN REPLY #66989 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1 27.6 28.6 29.6 30.6 31.6 33.0 34.1 35.1
  SAY #66968 /* ~"Ich kann dich alles lehren, was du wissen willst,... bis zu einem bestimmten Punkt. An welchen Waffen möchtest du etwas lernen?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66990 /* ~"Bring mir bei, wie ich mit meinen Fäusten kämpfe."~ */ GOTO 27
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66991 /* ~"Bring mir bei, wie man Dolche benutzt."~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66992 /* ~"Bring mir bei, wie man Keulen benutzt."~ */ GOTO 29
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66993 /* ~"Bring mir bei, wie man Äxte benutzt."~ */ GOTO 30
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66994 /* ~"Bring mir bei, wie man Hämmer benutzt."~ */ GOTO 31
  IF ~~ THEN REPLY #66995 /* ~"Ich bin heute nicht in Form für Unterricht. Ich komme später wieder." ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #66969 /* ~"Faustkampf? Blutig und nah am Gegner?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66996 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66997 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66998 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66999 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67000 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67001 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67030 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 26
  IF ~~ THEN REPLY #67031 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #66970 /* ~"Dolche, was? Die Waffe eines Schlägers, aber auch gut für die... persönliche Note. Daran willst du lernen?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67002 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67003 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67004 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67005 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67006 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67007 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67029 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 26
  IF ~~ THEN REPLY #67032 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #66971 /* ~"Du willst ein paar altmodische Keulenschläge anbringen, was?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67008 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67009 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67010 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67011 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67012 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67013 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67028 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 26
  IF ~~ THEN REPLY #67033 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #66972 /* ~Er flüstert. "Du willst anderen ein paar Schmerzen bereiten, was? Du willst also an Äxten lernen?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67014 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67015 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67016 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 33
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67017 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67018 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
~ THEN REPLY #67019 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67027 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 26
  IF ~~ THEN REPLY #67034 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.4
  SAY #66973 /* ~"Die Waffe eines Gentleman - wenn dieser Gentleman Muskeln aus Eisen hat. Du willst an Hämmern lernen?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67020 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67021 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67022 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67023 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67024 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67025 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67026 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 26
  IF ~~ THEN REPLY #67035 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 27.2 27.4 28.0 28.2 28.4 29.0 29.2 29.4 30.0 30.4 31.0 31.2 31.4
  SAY #66974 /* ~"Also gut! Fangen wir an!"~ */
  IF ~~ THEN REPLY #67037 /* ~"Wenn du bereit bist..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2 32.0
  SAY #66975 /* ~Du fängst zu trainieren an. Nach einer Weile wischt er sich den Schweiß von der Stirn. "Du bist verdammt gut! Willst du sonst noch was?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67038 /* ~"Danke. Ich würde gerne den Gebrauch anderer Waffen lernen. Könntest du mich unterrichten?"~ */ GOTO 26
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67039 /* ~"Danke. Ich würde gerne den Gebrauch anderer Waffen lernen. Könntest du mich unterrichten?"~ */ GOTO 25
  IF ~~ THEN REPLY #67040 /* ~"Danke. Das ist alles, was ich für heute wissen möchte."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.3 27.5 28.3 28.5 29.3 29.5 30.3 30.5 31.3 31.5
  SAY #66976 /* ~Er studiert deine Fähigkeiten und sagt: "Du hast alles über diesen Kampfstil gelernt, was ich dir beibringen kann. Wenn du noch mehr über ihn erfahren willst, geh nach Sigil, und sprich mit Korur im Unteren Bezirk. Er ist praktisch in allem ein Meister."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67041 /* ~"Kannst du mir den Umgang mit einer anderen Waffe beibringen?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67042 /* ~"Kannst du mir den Umgang mit einer anderen Waffe beibringen?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #67043 /* ~"Kannst du mir den Umgang mit einer anderen Waffe beibringen?"~ */ GOTO 24
  IF ~~ THEN REPLY #67044 /* ~"Also gut. Danke. Leb wohl." ~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.1 28.1 29.1 30.1 31.1
  SAY #66977 /* ~Er studiert deine Fähigkeiten und sagt: "Das ist alles, was du darüber lernen kannst. Dein Körper ist einfach nicht bereit, noch mehr Wissen darüber aufzunehmen."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67045 /* ~"Kannst du mir den Umgang mit einer anderen Waffe beibringen?"~ */ JOURNAL #68288 /* ~Man hat mir gesagt, daß ich nur dann mehr über Waffen lernen kann, wenn ich mich auf den Pfad eines Kriegers spezialisiere. Erst wenn ich mich vollständig der Kampfeskunst widme und sie nie für Diebes- oder Zauberkunst aufgebe, könnte ich die Spezialisierung erreichen, von der mein Lehrmeister spricht.~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67046 /* ~"Kannst du mir den Umgang mit einer anderen Waffe beibringen?"~ */ JOURNAL #68288 /* ~Man hat mir gesagt, daß ich nur dann mehr über Waffen lernen kann, wenn ich mich auf den Pfad eines Kriegers spezialisiere. Erst wenn ich mich vollständig der Kampfeskunst widme und sie nie für Diebes- oder Zauberkunst aufgebe, könnte ich die Spezialisierung erreichen, von der mein Lehrmeister spricht.~ */ GOTO 26
  IF ~~ THEN REPLY #67047 /* ~"Also gut. Danke. Leb wohl." ~ */ JOURNAL #68288 /* ~Man hat mir gesagt, daß ich nur dann mehr über Waffen lernen kann, wenn ich mich auf den Pfad eines Kriegers spezialisiere. Erst wenn ich mich vollständig der Kampfeskunst widme und sie nie für Diebes- oder Zauberkunst aufgebe, könnte ich die Spezialisierung erreichen, von der mein Lehrmeister spricht.~ */ EXIT
END
