// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDIMTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDIMTREE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2907 /* ~Du siehst einen großen, schlanken Mann mit glasigem Blick. Er scheint in eine Geschichte vertieft, die ihm der Ladenbesitzer erzählt. Er nickt gelegentlich mit dem Kopf, macht aber selbst keine Kommentare.~ */
  IF ~~ THEN REPLY #2908 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #35923 /* ~Ignoriere den Mann.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #35922 /* ~Auf deinen Gruß hin wendet sich der Mann leicht in deine Richtung, gerade weit genug, um dich zu sehen. Dir fällt auf, daß er ein wenig blaß ist und ziemlich ausgemergelt wirkt. Er starrt dich ausdruckslos an. Der Ladenbesitzer scheint nichts von alldem zu bemerken und plappert weiter sein unnützes Zeug.~ */
  IF ~~ THEN REPLY #35924 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #35925 /* ~"Bist du... OK?"~ */ GOTO 3
  IF ~~ THEN REPLY #35926 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35927 /* ~Der Mann wendet seine Aufmerksamkeit schließlich wieder dem Ladenbesitzer zu und nickt auf etwas Gesagtes hin. Das Nicken scheint dir bezüglich der Unterhaltung ein wenig verspätet zu kommen; dem Ladenbesitzer fällt dies jedoch nicht auf. Langsam wendet der Mann seine Aufmerksamkeit erneut dir zu, und starrt dich ausdruckslos an.~ */
  IF ~~ THEN REPLY #35928 /* ~"Alles... okay?"~ */ GOTO 3
  IF ~~ THEN REPLY #35929 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #35930 /* ~Der Mann starrt dich weiter an und nickt langsam. Du wartest auf eine weitere Reaktion, aber er sagt nichts und starrt dich nur an. Du willst dich gerade frustriert abwenden, als dir ein merkwürdig modriger Geruch auffällt, der von dem Mann auszugehen scheint.~ */
  IF ~~ THEN REPLY #35931 /* ~Geh näher heran und rieche an ihm.~ */ GOTO 4
  IF ~~ THEN REPLY #35932 /* ~Beachte den Mann nicht und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #35933 /* ~Du beugst dich ein wenig in seine Richtung und riechst an dem Mann, nicht sicher, was deine Nase dir sagen wird. Ein modriger Geruch erfüllt alle deine Sinne; ein Geruch, an den du dich aus deiner Zeit in der Leichenhalle erinnerst. Es ist der Geruch von totem Fleisch, das durch Magie vor Verderb geschützt wurde.~ */
  IF ~  !Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35934 /* ~"Du bist ein Zombie, nicht wahr?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35935 /* ~"Du bist ein Zombie, nicht wahr?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #35936 /* ~Der Mann nickt dir wieder langsam zu und wendet dann seine Aufmerksamkeit erneut dem Ladenbesitzer zu. Er ignoriert alle weiteren Versuche, mit ihm zu kommunizieren.~ */
  IF ~~ THEN REPLY #35937 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #35938 /* ~Das Wesen starrt dich weiter mit leerem Blick an. Langsam, als wenn es großer Anstrengung dazu bedürfte, beginnt es, dir zu antworten. Nur deine Fähigkeit, mit Toten zu sprechen, ermöglicht es dir, es zu verstehen. "Ja... Ich bin... Schwachbaum."~ */
  IF ~~ THEN REPLY #35939 /* ~"Warum bist du hier, Schwachbaum?"~ */ GOTO 7
  IF ~~ THEN REPLY #35940 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #35941 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #35942 /* ~Schwachbaum wirft einen kurzen Blick auf den Ladenbesitzer und macht eine schwache Handbewegung in dessen Richtung. Der Ladenbesitzer deutet dies als Zeichen des Interesses und verdoppelt seine Bemühungen im Erzählen der Geschichte, die er gerade diesem armen Wesen unterbreitet. Schwachbaum sieht dich erneut an. "Hamrys... Er redet... Hamrys nie aufhören... Ziehen durch Stadt... ärgern Meister, ärgern jeden... Meister erschaffen Schwachbaum... Sagen Schwachbaum mit Hamrys reden... Nun bleiben Hamrys im Laden... Meister glücklich... Stadt glücklich. Schwachbaum traurig..."~ */
  IF ~~ THEN REPLY #35943 /* ~"Kann ich dir irgendwie helfen, Schwachbaum?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #35944 /* ~"Ich habe ein paar Fragen an dich...."~ */ GOTO 12
  IF ~~ THEN REPLY #35945 /* ~"Leb wohl, Schwachbaum."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #35946 /* ~Das Wesen macht eine Pause und redet dann wieder ganz langsam mit dir. Du kannst fast einen Hauch von Flehen in seiner Stimme ausmachen. "Ja... Suchen Meister... Sebastion... Bitten ihn, mich freigeben... Bitte..." Er wendet seine Aufmerksamkeit kurz Hamrys zu. "Bitte..."~ */
  IF ~~ THEN REPLY #35947 /* ~"Vielleicht sollte ich dich einfach von deinem Unglück erlösen?"~ */ GOTO 9
  IF ~~ THEN REPLY #35948 /* ~"Ich weiß nicht... Ich werde darüber nachdenken. Ich habe ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #35949 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35950 /* ~Schwachbaum schüttelt ganz leicht seinen Kopf. "Nein... Meister wiederbeleben... Müssen Meister fragen... Sebastion... bitte." Er wartet auf deine Antwort.~ */
  IF ~~ THEN REPLY #35951 /* ~"Klar, Schwachbaum. Mal sehen, was ich für dich tun kann."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~Ich habe mich bereit erklärt, Schwachbaum, dem Zombie, zu helfen. Ich muß jemanden namens Sebastion finden und ihn bitten, Schwachbaum aus seinem gegenwärtigen Zustand zu befreien.~ */ GOTO 10
  IF ~~ THEN REPLY #35952 /* ~"Tut mir leid, Schwachbaum, aber das ist wirklich nicht meine Aufgabe."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #35953 /* ~"Ich weiß nicht... Ich werde darüber nachdenken. Ich habe ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #35954 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35956 /* ~Du spürst fast ein Gefühl der Erleichterung von dem Zombie ausgehen. "Schwachbaum... danken dir, Freund..."~ */
  IF ~~ THEN REPLY #35957 /* ~"Keine Ursache. Ich habe ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #35958 /* ~"Leb wohl, Schwachbaum."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #35959 /* ~Du kannst die Enttäuschung in der Luft spüren, als Schwachbaum sich von dir abwendet. Er nickt erneut dem Ladenbesitzer zu, der seinen Redeschwall während eurer gesamten Unterhaltung kein bißchen verlangsamt hat.~ */
  IF ~~ THEN REPLY #35960 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 8.1 9.2 10.0 13.2
  SAY #35961 /* ~Das Wesen zuckt fast unmerklich mit den Schultern. "Wissen... nichts... Schwachbaum berufen... von Meister... Kennen Dunkelheit... Frieden... Ruhe... Dann Hamrys... Tut mir leid... dir helfen... wenn könnte..."~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #35962 /* ~"Weißt du, wo ich Sebastion finde?"~ */ GOTO 15
  IF ~~ THEN REPLY #35963 /* ~"Ich verstehe... Also, leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #35964 /* ~Der große, ausgemergelte Mann ist weiterhin in den Bann des Gesprächs mit dem Ladenbesitzer geschlagen. Dabei redet alleine der Ladenbesitzer.~ */
  IF ~  Global("Dimtree_zombie","GLOBAL",0)
~ THEN REPLY #35965 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
!Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35966 /* ~"Ich hab einfach nur gedacht, ich mach mal meine Aufwartung... Wiedersehen."~ */ EXIT
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35967 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #35968 /* ~Ignoriere ihn.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",3)
~ THEN BEGIN 14 // from:
  SAY #35969 /* ~Schwachbaum dreht sich ein wenig in deine Richtung, als du dich näherst. Du kannst ein Gefühl der Erwartung in der Luft um ihn herum spüren. "Du... finden Meister? Schwachbaum frei?"~ */
  IF ~~ THEN REPLY #35970 /* ~"Weißt du, wo ich Sebastion finde?"~ */ GOTO 15
  IF ~~ THEN REPLY #35971 /* ~"Noch nicht, Schwachbaum. Ich arbeite weiterhin daran. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 14.0 21.0
  SAY #35972 /* ~Das Wesen hält inne. "Nicht wissen... Erkennen Stimme wieder... geben Befehl, hier sein... Gehen... Hamrys... Sonst nichts... Tut mir leid."~ */
  IF ~~ THEN REPLY #35973 /* ~"Ich verstehe, also dann, leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Release_Dimtree","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #35974 /* ~Schwachbaum dreht sich ein wenig in deine Richtung, als du dich näherst. Du kannst ein Gefühl der Erwartung in der Luft um ihn herum spüren. "Du... finden Meister? Schwachbaum frei?"~ */
  IF ~~ THEN REPLY #35975 /* ~"Ja, Schwachbaum. Ich weiß jetzt, wie ich dich befreien kann."~ */ GOTO 17
  IF ~~ THEN REPLY #35976 /* ~"Jetzt nicht, ich muß weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #35977 /* ~Schwachbaum dreht sich in deine Richtung und macht eine Handbewegung. "Bitte, Freund..."~ */
  IF ~~ THEN REPLY #35978 /* ~Sprich die Worte, die Sebastion dir beigebracht hat.~ */ GOTO 18
  IF ~~ THEN REPLY #35979 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #35980 /* ~Du konzentrierst dich einen Moment, um dich an die Worte zu erinnern, die Sebastion dich gelehrt hat, und sprichst sie dann sorgfältig aus. Dann berührst du Schwachbaum ganz leicht an der Stirn.~ */
  IF ~~ THEN REPLY #35981 /* ~"Ruhe sanft, Schwachbaum."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",5)
Kill(Myself)
AddexperienceParty(4000)
~ JOURNAL #66526 /* ~Ich habe den Zauber, den ich von Sebastion gelernt habe auf Schwachbaum angewendet. Er ruht jetzt in Frieden und muß Hamrys' Gelabere nicht mehr zuhören.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #35982 /* ~Mit einem Seufzer sackt der Zombie zu deinen Füßen zusammen. Du meinst ein gehauchtes *danke, Freund* zu hören, als er zu Boden fällt.~ */
  IF ~~ THEN REPLY #35983 /* ~Geh.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #35984 /* ~Schwachbaum dreht sich um und blickt dich an. "Du... bitte helfen. Du... suchen Sebastion... mich freigeben..."~ */
  IF ~~ THEN REPLY #35985 /* ~"Ja, ich werde dir helfen ."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~Ich habe mich bereit erklärt, Schwachbaum, dem Zombie, zu helfen. Ich muß jemanden namens Sebastion finden und ihn bitten, Schwachbaum aus seinem gegenwärtigen Zustand zu befreien.~ */ GOTO 21
  IF ~~ THEN REPLY #35986 /* ~"Nein, das ist nicht mein Problem."~ */ EXIT
  IF ~~ THEN REPLY #35987 /* ~"Ich weiß nicht, ich denk drüber nach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #35989 /* ~Du spürst fast ein Gefühl der Erleichterung von dem Zombie ausgehen. "Schwachbaum... danken dir, Freund..."~ */
  IF ~~ THEN REPLY #35990 /* ~"Wo finde ich Sebastion?"~ */ GOTO 15
  IF ~~ THEN REPLY #35991 /* ~"Gern geschehen. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Release_Dimtree","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #35992 /* ~Schwachbaum dreht sich um und blickt dich an. "Warum du hier... du verweigern Hilfe... Du Meinung ändern... suchen Sebastion... mich freigeben... bitte!"~ */
  IF ~~ THEN REPLY #35993 /* ~"Ja, ich werde dir helfen ."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~Ich habe mich bereit erklärt, Schwachbaum, dem Zombie, zu helfen. Ich muß jemanden namens Sebastion finden und ihn bitten, Schwachbaum aus seinem gegenwärtigen Zustand zu befreien.~ */ GOTO 21
  IF ~~ THEN REPLY #35994 /* ~"Nein, das ist nicht mein Problem."~ */ EXIT
  IF ~~ THEN REPLY #35995 /* ~"Ich weiß nicht, ich denk drüber nach. Leb wohl."~ */ EXIT
END
