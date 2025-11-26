// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPLANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPLANS~

IF ~  Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 0 // from:
  SAY #61864 /* ~Plany te zdradzają, że grobowiec został obficie wyposażony w pułapki, ale ich dokładna lokalizacja nie została przedstawiona. Widzisz jednak adnotację, która informuje, że w każdym z pomieszczeń zainstalowano szczególnie śmiercionośną pułapkę. Na dole znajduje się dopisek wykonany inną ręką. Masz wrażenie, że to twoje własne pismo.~ */
  IF ~~ THEN REPLY #61869 /* ~Przeczytaj dopisek.~ */ DO ~Explore()
~ GOTO 2
  IF ~~ THEN REPLY #61870 /* ~Gotowe.~ */ DO ~Explore()
~ EXIT
END

IF ~  !Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 1 // from:
  SAY #61866 /* ~Plany byłyby znacznie bardziej użyteczne, gdybyś znajdował się wewnątrz grobowca. Mógłbyś wtedy skonfrontować zawartość planów z rzeczywistością.~ */
  IF ~~ THEN REPLY #61867 /* ~Gotowe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61868 /* ~"Pułapka jest już założona, a teraz pozostaje mi tylko poczekać, aż mój dręczyciel wejdzie w te mury. Ale z drugiej strony wydaje mi się, że będę musiał znaleźć jakąś drogę, żeby wynieść trupa na zewnątrz, bez konieczności zajmowania się pułapkami... Hmm. Może jakieś zaklęcie, które przeniosłoby trupa z powrotem na początek..."~ */
  IF ~~ THEN EXIT
END
