// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELOBRAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DELOBRAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #46012 /* ~Ta stara kobieta przygląda ci się dokładnie bystrymi, szarymi oczami... najpierw twarzy, potem rękom i różnym tatuażom. "Witaj, obliźniony. Przyszedłeś pogadać z Elobrandą, tak? Przyszedłeś, bym za marne pięć monet przepowiedziała ci przyszłość?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #46013 /* ~"Tak... przepowiedz mi przyszłość..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #46014 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #46015 /* ~"Nie, dziękuję. Żegnaj, Elobrando."~ */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #46016 /* ~Elobranda chowa twoje monety do sakiewki przy pasie i bierze twoje dłonie. Ogląda je w ciszy, marszcząc mocno brwi. Odzywa się po dłuższej chwili. "Istnieją rzadkie osoby, na które mówimy 'bez przeznaczenia'. Wędrują przez życie czyniąc to, co uważają za stosowne. Sami tworzą własne przeznaczenie. Nie ma dla ciebie przyszłości do przepowiedzenia, obliźniony. Nic nie mogę ci przepowiedzieć... Oto twoje monety." Oddaje ci twoje pięć miedziaków.~ */
  IF ~~ THEN REPLY #46017 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46018 /* ~"W takim razie żegnaj."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #51349 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 5.1
  SAY #46019 /* ~"Obliźniony, nie mówię o rzeczach przyziemnych."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46020 /* ~"W takim wypadku może powiesz coś o tym: przeczytałem ten zwój, był zabezpieczony pułapką."~ */ GOTO 6
  IF ~  PartyGoldGT(4)
Global("CW_Fortune","AR0600",0)
~ THEN REPLY #46021 /* ~"W takim razie przepowiedz mi przyszłość..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46022 /* ~"W takim razie żegnaj."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #46023 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.2
  SAY #46024 /* ~"Poczekaj chwilę, obliźniony..." Elobranda wyciąga rękę i dotyka twojego ramienia. "Moja matka kiedyś coś mi dała, dawno temu... zapieczętowany woskiem zwój. Zakapturzony człowiek jej go powierzył i powiedział, że pewnego dnia niespodziewanie pojawi się ktoś taki jak ty i zażąda jego zwrotu. Proszę... Chciałabym, abyś go wziął, teraz."~ */
  IF ~~ THEN REPLY #46025 /* ~"Co to jest?"~ */ DO ~GiveItemCreate("ScTrap",Protagonist,1,0,0)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46026 /* ~Elobranda potrząsa głową marszcząc brwi. "Nie wiem. Przyrzekła, że nigdy go nie przeczyta, a ja spełniłam jej prośbę i pieczęć nie została złamana. Ten człowiek dobrze jej zapłacił, by wzięła zwój, ale ostrzegł przed zgubnymi konsekwencjami złamania pieczęci."~ */
  IF ~~ THEN REPLY #46027 /* ~"Cóż, dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #46028 /* ~Widzisz Elobrandę, wróżbitkę. "Witam cię ponownie, obliźniony."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46029 /* ~"Przeczytałem ten zwój - był zabezpieczony pułapką."~ */ GOTO 6
  IF ~~ THEN REPLY #46030 /* ~"Elobrando, mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #46031 /* ~"Tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 5.0
  SAY #46032 /* ~Elobranda wygląda na zmieszaną. "Ja... nie wiem ci powiedzieć, obliźniony..."~ */
  IF ~~ THEN REPLY #46033 /* ~"Mogłabyś zacząć od tego, jak dokładnie zdobyłaś tę rzecz."~ */ GOTO 7
  IF ~~ THEN REPLY #46034 /* ~"Naprawdę nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46035 /* ~"Tak jak ci powiedziałam, obliźniony... Dała mi go moja matka. Jakieś pięćdziesiąt lat temu wręczył go jej zakapturzony człowiek. Dobrze jej zapłacił, ale zabronił czytać, bez względu na okoliczności. Używała magii, znała się na Sztuce, ale i tak bała się tego człowieka. Powiedziała, że jego oczy, jedyne co widziała, zdradzały szaleństwo i że ciało wokół oczu było pomarszczone i szare... jak twoje. Nic więcej o nim nie wiem."~ */
  IF ~~ THEN REPLY #46036 /* ~"To będzie musiało mi wystarczyć. Żegnaj."~ */ EXIT
END
