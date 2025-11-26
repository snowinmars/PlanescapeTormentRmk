// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLINGASH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLINGASH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46175 /* ~Na tej małej komódce leży urna, pełna popiołu i zwęglonych kawałków kości. Na spodzie urny wyryte są słowa: 'Fin Andlye - Ukochany Mąż, Ojciec i Uczony, Znający Sto Języków.'~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46176 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 1
  IF ~~ THEN REPLY #46177 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46178 /* ~Popiół wydaje się drgać z lekka, jakby poruszony twym oddechem. Z urny dochodzi odległy szept. "Dlaczego, dlaczego wezwano mnie do tego popiołu, zimnego i popielatego jak serce wiedźmy?"~ */
  IF ~~ THEN REPLY #46179 /* ~"By znaleźć odpowiedzi na kilka pytań, duchu..."~ */ GOTO 2
  IF ~~ THEN REPLY #46180 /* ~"Bez powodu. Żegnaj, duchu."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46181 /* ~"Pytaj więc, bym mógł powrócić do spokoju mych myśli..."~ */
  IF ~~ THEN REPLY #46182 /* ~"Kim byłeś?"~ */ GOTO 3
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46183 /* ~Opisz mu tekst ze składanego dwunastościanu, zapytaj czy zna ten język.~ */ GOTO 4
  IF ~~ THEN REPLY #46184 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46185 /* ~"Nazywałem się Fin, byłem lingwistą i uczonym. Zostałem zamordowany - zamordowany! - przez jednego z moich studentów... zamordowany po to, bym już nie mógł nikogo więcej nauczyć języka, którego jego nauczyłem. Był to język Uyo, jeden z najrzadszych w wieloświecie. Nie znałem nikogo, kto potrafiłby nim władać, oprócz mnie i tego przeklętego mordercy - studenta..."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46186 /* ~Opisz mu tekst ze składanego dwunastościanu, zapytaj czy zna ten język.~ */ GOTO 5
  IF ~~ THEN REPLY #46187 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46188 /* ~"Tak, znam ten język. Widzisz byłem lingwistą i uczonym. Zostałem zamordowany - zamordowany! - przez jednego z moich studentów... zamordowany po to, bym już nie mógł nikogo więcej nauczyć języka, którego jego nauczyłem. Był to język Uyo, jeden z najrzadszych w wieloświecie. Nie znałem nikogo, kto potrafiłbym nim władać, oprócz mnie i tego przeklętego mordercy - studenta..."~ */
  IF ~~ THEN REPLY #46189 /* ~"Więc możesz mi pomóc nauczyć się tego martwego języka?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #46190 /* ~"Mógłbym nauczyć cię tego języka, tak... z przyjemnością, w zasadzie tylko po to, żeby zrobić na złość, temu skalanemu krwią studentowi z przeszłości. Przede wszystkim, powiedz mi jakimi językami *umiesz* władać..."~ */
  IF ~~ THEN REPLY #46191 /* ~Naucz się od ducha ile tylko zdołasz.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46193 /* ~Kiedy duch rozmawia z tobą o wymarłym języku Uyo, czujesz pulsację w skroniach i zaczyna ci się przypominać... zaczyna ci się przypominać ten język. Przypominasz sobie litery, słowa, wyrażenia, aż w końcu raz jeszcze, na podobieństwo wiatru od Iglicy pędzącego dywany trującego smogu nad Wielką Kuźnię, ukazuje ci się język Uyo - w całości.~ */
  IF ~~ THEN REPLY #46194 /* ~Kontynuuj...~ */ DO ~GiveExperience(Protagonist,8000)
~ JOURNAL #39479 /* ~Rozmawiałem z duchem lingwisty, Fina Andlye i odkryłem, że znam język, w którym sporządzono zapisy umieszczone z dwunastościennej układance. Teraz będę mógł je w końcu przeczytać.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46195 /* ~Przypomina ci się jednak coś jeszcze... coś bardziej mrocznego. Obecność tego, w pewien sposób cię martwi, napełnia niepokojem i niewyjaśnionym poczuciem winy...~ */
  IF ~~ THEN REPLY #46196 /* ~Pohamuj wspomnienie.~ */ GOTO 11
  IF ~~ THEN REPLY #46197 /* ~Przypomnij sobie.~ */ DO ~SetGlobal("Murdered_Fin","GLOBAL",1)
GiveExperience(Protagonist,4000)
PlaySoundNotRanged("SPTR_01")
~ JOURNAL #39480 /* ~Podczas rozmowy z lingwistą, Finem Andlye, przypomniałem sobie, że to ja go zamordowałem. Mogę jedynie podejrzewać, że miało to go powstrzymać przed nauczeniem języka Uyo kogokolwiek innego, a przez to, zachować w tajemnicy to co zapisałem w dwunastościennej układance.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #46198 /* ~W końcu, przypominasz sobie samego Fina Andlye. Przypominasz sobie jak łagodnie mówił, jak się zachowywał i jak uczył cię starożytnego języka Uyo. Przypominasz też sobie, swoją pokrytą bliznami, sękatą dłoń, owiniętą wokół jego wątłej szyi, miażdżącą mu krtań, upewniającą się w ten sposób, że tajemna zawartość twojego dziennika, ukryta i potrójnie zamknięta w dwunastościennym magicznym pudełku, a do tego zapisana w mało znanym języku Uyo - będzie bezpieczna na zawsze, przed wzrokiem ciekawskich...~ */
  IF ~~ THEN REPLY #46199 /* ~"Fin... Muszę ci coś powiedzieć... to ja cię zamordowałem..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ashes_1","GLOBALGood",1)
~ JOURNAL #39506 /* ~Wyznałem Finowi Andlye, że to ja go zamordowałem i wyjaśniłem mu dlaczego to zrobiłem. Wybaczył mi, z czego się cieszę... i w jakiś sposób poczułem jakby zostało ze mnie zdjęte niewielkie brzemię.~ */ GOTO 9
  IF ~~ THEN REPLY #46200 /* ~"Myślę, że teraz wystarczająco dobrze rozumiem ten język. Dziękuję, Fin. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46201 /* ~Duch nie odzywa się przez chwilę, popiół w urnie szeleści cichutko. Kiedy znowu się odzywa, jego głos jest pełen smutku. "Ale... dlaczego... ale dlaczego znowu tu jesteś? Czy już *nie pamiętasz* czego cię nauczyłem?"~ */
  IF ~~ THEN REPLY #46202 /* ~"Nie... to znaczy, tak. Trudno to wyjaśnić, ale to musiało być moje byłe 'ja', które cię zamordowało. Za każdym razem, gdy umieram, budzę się nowo, jakby z długiego snu... ale zapominam wszystko... kim byłem, albo co zrobiłem..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46203 /* ~"Myślę, że rozumiem... wyczuwam twój żal i dlatego wybaczam ci. Niech pokój będzie z tobą i oby okazało się, że w tym życiu okażesz więcej życzliwości niż w tamtym, które było świadkiem mojego końca..."~ */
  IF ~~ THEN REPLY #46204 /* ~"Dziękuję, Fin. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #46205 /* ~Duch wydaje się być lekko zmieszany widząc wyraźnie twą biegłość w języku Uyo. "Zdaje się, że już nieco się orientujesz w tym języku, studencie..."~ */
  IF ~~ THEN REPLY #46206 /* ~"Tak... Wydaje mi się, że teraz rozumiem ten język wystarczająco dobrze. Dziękuję, Fin. Żegnaj."~ */ EXIT
END
