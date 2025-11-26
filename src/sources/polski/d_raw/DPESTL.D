// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42050 /* ~Ten człowiek bardzo przypomina Pestle Kilnna, choć nie ma tak pofałdowanej skóry i ciągłych, lekkich mutacji. "Witam znowu, panie. Czym ja, Pestle, mogę ci służyć?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42051 /* ~"Miałem nadzieję, że dostanę kilka mikstur uzdrawiających..."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42052 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #42053 /* ~"Chcę coś kupić..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42054 /* ~"Tylko tędy przechodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #42055 /* ~"Tak, oczywiście, twoja nagroda, co? Zobaczmy... Oczywiście przygotuję je dla ciebie za darmo... ale potrzebuję odpowiednich składników. Hmm... serca oni albo sproszkowanego hematytu albo włosa devy albo nici z szaty aasimona albo krwi stworzenia, które umie się regenerować, takiego jak troll albo..."~ */
  IF ~~ THEN REPLY #42056 /* ~"Prawdę mówiąc, moje rany leczą się *bardzo* szybko."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42057 /* ~Pestle podnosi swe brwi. "Naprawdę? W takim razie twoja własna krew powinna wystarczyć. Podejdź tutaj... daj mi próbkę."~ */
  IF ~~ THEN REPLY #42058 /* ~Daj mu trochę swojej krwi.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveItemCreate("ClotChrm",Protagonist,10,0,0)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42059 /* ~Po odciągnięciu małej ilości twojej krwi i powróceniu na zaplecze sklepu, Pestle powraca z czymś, co wygląda jak zastygnięte krople krwi. "Kiedy umieści się je na języku, te Amulety Skrzepu uzdrowią odniesione rany i przez jakiś czas pomogą zapobiec nowym ranom."~ */
  IF ~~ THEN REPLY #42060 /* ~"Dziękuję. Mam do ciebie kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #42061 /* ~"Dziękuję. Chcę jeszcze coś kupić..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42062 /* ~"Żegnaj, Pestle, dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.0 6.1
  SAY #42063 /* ~"Strasznie cię przepraszam, panie, ale mogę mówić tylko o moim sklepie. Rzadko opuszczam to miejsce. Lepiej znajdź sobie kogo innego, żeby odpowiedział na twoje pytania."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42064 /* ~"Stary inżynier z Kuźni powiedział mi, że muszę przynieść próbkę mojej krwi i skóry, aby jego maszyna mogła działać. Chcę abyś mi w tym pomógł."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 5
  IF ~~ THEN REPLY #42065 /* ~"W takim razie chcę coś kupić..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42066 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42067 /* ~"Chcesz zeskrobać, mówisz? Dobrze." Mężczyzna bierze brzytwę i butelkę z dużą szyjką. Potem zdejmuje ci z przedramienia mały wycinek skóry i umieszcza go w butelce razem z małą ilością twojej krwi. "Potrzebujesz czegoś jeszcze, panie?"~ */
  IF ~~ THEN REPLY #42068 /* ~"Tak... Chcę coś kupić."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42069 /* ~"Nie, to wszystko. Dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #42070 /* ~Widzisz przed sobą Pestle, alchemika. "Witaj znowu, panie. Czym mogę ci służyć?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42071 /* ~"Miałem nadzieję, że dostanę kilka mikstur uzdrawiających..."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42072 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #42073 /* ~"Chcę coś u ciebie kupić..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42074 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END
