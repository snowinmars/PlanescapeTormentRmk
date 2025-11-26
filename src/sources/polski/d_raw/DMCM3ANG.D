// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37707 /* ~Widzisz przystojnego, młodego mężczyznę w eleganckim ubraniu. Wydaje się chodzić bez celu, oglądając towary na sprzedaż. Zauważa cię kiedy nadchodzisz, ale nie zwraca na ciebie uwagi.~ */
  IF ~~ THEN REPLY #37713 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37714 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37706 /* ~Mierzy cię spojrzeniem z góry na dół, po czym spogląda lekceważąco. "Nie zadaję się z nieprzyjemnymi typami. Sądząc po twoim wyglądzie, wpasowujesz się dość dobrze w tę kategorię. Odejdź precz, trepie."~ */
  IF ~~ THEN REPLY #37715 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37716 /* ~"Dobrze, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37708 /* ~Chmurzy się na ciebie jakby karcił dziecko. "Nie obchodzi mnie to, trepie. Zostaw mnie, albo wezwę straże!"~ */
  IF ~~ THEN REPLY #37717 /* ~"Wezwij je..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37718 /* ~"Dobrze, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37709 /* ~Robi nieuprzejmy gest w twoją stronę. "Niech i tak będzie... Straże! Straże!"~ */
  IF ~~ THEN REPLY #37719 /* ~Przygotuj się do obrony...~ */ EXIT
  IF ~~ THEN REPLY #37720 /* ~Odejdź zanim przyjdą.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37710 /* ~Mężczyzna odwraca się w twoją stronę i natychmiast cię rozpoznaje. Rzuca gniewne spojrzenie. "Co mam zrobić, żebyś zostawił mnie w spokoju, trepie?"~ */
  IF ~~ THEN REPLY #37721 /* ~"Gdybyś zechciał odpowiedzieć na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #37722 /* ~"Wybacz, odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37711 /* ~Robi nieuprzejmy gest w twoją stronę. "Nie chcę odpowiadać na twoje świrowate pytania. Znajdź sobie mędrca." Odprawia cię ręką. "Teraz zostaw mnie, albo wezwę straże!"~ */
  IF ~~ THEN REPLY #37723 /* ~"Wezwij je..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37724 /* ~"Dobrze, żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_2","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37712 /* ~Mężczyzna odwraca się w twoją stronę i natychmiast cię rozpoznaje. Rzuca gniewne spojrzenie. "Co mam zrobić, żebyś zostawił mnie w spokoju, trepie?" Wzdycha i podnosi ręce na znak odrazy. "Wezwałem już raz straże do ciebie, zawsze mogę to zrobić jeszcze raz... to może ostudzi twoje zapały."~ */
  IF ~~ THEN REPLY #37725 /* ~"Wezwij je..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37726 /* ~"Dobrze, żegnaj."~ */ EXIT
END
