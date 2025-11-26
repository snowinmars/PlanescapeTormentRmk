// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK1~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64225 /* ~Wygląda, jakby ten ogromny zegar został częściowo wtopiony w czarny kamień, który go otacza. Ale ziemia w pobliżu zegara jest wyraźnie zdeptana, zupełnie jakby ktoś całkiem niedawno tutaj stał. Całkiem niedawno to znaczy zapewne dobre kilka lat temu.~ */
  IF ~~ THEN DO ~SetGlobal("Clock_1","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64226 /* ~Na tarczy tego zegara znajduje się jakiś nakreślony w pośpiechu i bez żadnych upiększeń napis. Kiedy go spostrzegasz, czujesz nagle, jak z tyłu twojej czaszki pojawia się przedziwne mrowienie. Wiesz już, chociaż nie wiadomo skąd, że napis na zegarze jest wiadomością, wiadomością przeznaczoną dla ciebie, i wiadomością sporządzoną przez ciebie.~ */
  IF ~~ THEN REPLY #64229 /* ~Odczytaj napis.~ */ JOURNAL #63983 /* ~Znalazłem wiadomość, którą zostawiłem samego sobie w jakimś z poprzednich żywotów. Napisałem ją wówczas na powierzchni zegara w krypcie Fortecy. Stoi w niej "BIEGNIJ - DRZWI to KŁAMSTWA - Użyj DZIAŁ - a potem PORTALU."~ */ GOTO 2
  IF ~~ THEN REPLY #64230 /* ~Zostaw zegar w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #64227 /* ~Napis na tarczy zegara został wycięty ostrzem sztyletu.

BIEGNIJ - DRZWI to KŁAMSTWA, UŻYJ dział, a potem PORTALU.

Wygląda na to, że wiadomość została nakreślona w dużym pośpiechu. Zaraz obok wiadomości znajduje się toporny symbol strzałki skierowanej grotem w stronę przeciwną do kierunku dłuższej wskazówki zegara.~ */
  IF ~~ THEN REPLY #64231 /* ~"Dzięki za radę..."~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #64228 /* ~Wygląda, jakby ten ogromny zegar został częściowo wtopiony w czarny kamień, z którego zdaje się wyrastać. Ale ziemia w pobliżu zegara jest wyraźnie zdeptana, zupełnie jakby ktoś całkiem niedawno tutaj stał. Całkiem niedawno to znaczy zapewne dobre kilka lat temu. Na powierzchni zegara znajduje się wiadomość, którą zostawiłeś dla samego siebie.~ */
  IF ~~ THEN REPLY #64232 /* ~Odczytaj napis.~ */ JOURNAL #63983 /* ~Znalazłem wiadomość, którą zostawiłem samego sobie w jakimś z poprzednich żywotów. Napisałem ją wówczas na powierzchni zegara w krypcie Fortecy. Stoi w niej "BIEGNIJ - DRZWI to KŁAMSTWA - Użyj DZIAŁ - a potem PORTALU."~ */ GOTO 2
  IF ~~ THEN REPLY #64233 /* ~Zostaw zegar w spokoju.~ */ EXIT
END
