// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKILNN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKILNN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42075 /* ~Człowiek ten podobny jest z twarzy do Pestle Kilnna, chociaż nie ma tak ścierpniętej skóry, która wciąż, delikatnie się zmienia. "Witaj, znów... imię brzmi Kilnn. Chcesz czegoś?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42076 /* ~"Chciałbym kupić miksturę uzdrowienia."~ */ GOTO 2
  IF ~~ THEN REPLY #42077 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #42078 /* ~"Chcę coś kupić..."~ */ GOTO 4
  IF ~~ THEN REPLY #42079 /* ~"Właściwie jestem tu przypadkiem. Żegnaj, Kilnnie."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #42080 /* ~Widzisz Kilnna, pomocnika alchemika. "Witaj znów... chcesz czegoś?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42081 /* ~"Miałem nadzieję kupić miksturę uzdrowienia."~ */ GOTO 2
  IF ~~ THEN REPLY #42082 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #42083 /* ~"Chcę coś kupić..."~ */ GOTO 4
  IF ~~ THEN REPLY #42084 /* ~"Właściwie jestem tu przypadkiem. Żegnaj, Kilnnie."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42085 /* ~"Gadałeś z już z Pestlem? On se z tym poradzi."~ */
  IF ~~ THEN REPLY #42086 /* ~"Więc pójdę z nim pogadać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1
  SAY #42087 /* ~"Cały dzień pracuję w składzie, robię... Nie mnie powinieneś pytać."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42088 /* ~"Stary inżynier w Kuźni powiedział mi, że potrzebuje próbki mojej krwi i skóry, żeby urządzenie mogło zadziałać. Musisz to dla mnie zrobić."~ */ GOTO 4
  IF ~~ THEN REPLY #42089 /* ~"W takim razie czy mogę coś kupić?"~ */ GOTO 4
  IF ~~ THEN REPLY #42090 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.0 3.1
  SAY #42091 /* ~"Będziesz musiał o tym pogadać z Pestlem. On zajmuje się tego typu rzeczami."~ */
  IF ~~ THEN REPLY #42092 /* ~"Więc pójdę z nim pogadać. Żegnaj."~ */ EXIT
END
