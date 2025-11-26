// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9852 /* ~Widzisz groźnie wyglądającego człowieka o wysuszonej skórze. Zdaje się być czymś pochłonięty i nie zauważa twojego przybycia.~ */
  IF ~~ THEN REPLY #9853 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #9854 /* ~Zignoruj go.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9857 /* ~Podskakuje na dźwięk twego głosu i momentalnie odwraca się w twym kierunku. Krew uderza mu do twarzy, zaś jego oddech nabiera szybszego tempa.~ */
  IF ~~ THEN REPLY #9861 /* ~"Przepraszam, że cię wystraszyłem. Chcę ci zadać kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #9859 /* ~"Troszkę żeśmy nerwowi się stali, co?"~ */ GOTO 5
  IF ~~ THEN REPLY #9862 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9863 /* ~Rzuca ci gniewne spojrzenie, po czym wyciąga sztylet za pleców. "Szpicuj się, trepie! Zbieraj się stond, abo zrobiem z ciebie wpis do ksiengi umarłych."~ */
  IF ~~ THEN REPLY #9865 /* ~"Spokojnie. Chcę jedynie zapytać cię o coś."~ */ GOTO 3
  IF ~~ THEN REPLY #9868 /* ~"Schowaj to ostrze, bo ci je odbiorę i zabiję nim."~ */ GOTO 4
  IF ~~ THEN REPLY #9870 /* ~"Jak sobie życzysz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9872 /* ~Przybiera bojową pozę i zaczyna wygrażać swoją bronią. "Nic ci nie bendem odpowiadać. Nie mam ci nic do powiedzenia. Cofaj się!"~ */
  IF ~~ THEN REPLY #9873 /* ~"Schowaj to ostrze, bo ci je odbiorę i zabiję nim."~ */ GOTO 4
  IF ~~ THEN REPLY #9874 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9875 /* ~Śmieje się i zaczyna wymachiwać sztyletem. "Tedy suń się do mnie. Dostanem cie i bedem śmiać się do rozpuku, kiedy bedziesz konał.~ */
  IF ~~ THEN REPLY #9876 /* ~Zaatakuj go.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #9878 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #9880 /* ~Wydaje ci się, że nie ma on pojęcia, co odpowiedzieć. Twój komentarz zdał się go zaskoczyć. "Moje, uch... Gdzieś tam mi moje myśli uciekły, śmiałku. Czego chcesz?" Spogląda na ciebie z rezerwą.~ */
  IF ~~ THEN REPLY #9883 /* ~"Jedynie odpowiedzi na kilka pytań. Zgoda?"~ */ GOTO 6
  IF ~~ THEN REPLY #9884 /* ~"W zasadzie nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9885 /* ~Wpatruje się w ciebie przez chwilę, po czym rzuca zdenerwowany. "Jedno pytanie. Potem stond zmiatasz. Nie mam ni czasu, ni ochoty."~ */
  IF ~~ THEN REPLY #9886 /* ~"Szukam devy. Sądzę, że przebywa w Klątwie."~ */ GOTO 7
  IF ~~ THEN REPLY #9887 /* ~"Kto tu rządzi?~ */ GOTO 8
  IF ~~ THEN REPLY #9888 /* ~"Co słychać nowego?"~ */ GOTO 9
  IF ~~ THEN REPLY #9889 /* ~"Czym się zajmujesz?"~ */ GOTO 10
  IF ~~ THEN REPLY #9890 /* ~"Gdybyś potrzebował kilka pewnych odpowiedzi na parę pytań, do kogo byś się zwrócił?"~ */ GOTO 11
  IF ~~ THEN REPLY #9891 /* ~"Mniejsza z tym. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9892 /* ~Obrzuca cię pytającym spojrzeniem. "No jasne. Jeden z tych 'prześwientobliwych' skurli wałensa sie po ulicach Klątwy. Durnyś, śmiałku. Dałem ci twojom odpowiedź. Teraz spadaj." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #9893 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9894 /* ~"Tovus Giljaf. Jest w biurze administracyjnym w ratuszu. Dałem ci twojom odpowiedź, teraz spadaj." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #9895 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #9896 /* ~Zastanawia się przez chwilę. "A bo ja wiem... Nie zajmujem się plotkami, śmiałku. Idź do 'Bramy Zdrajców'. Taka miejscowa żłopiarnia, tamtędy na dół." Wskazuje niejasno. "Dałem ci twojom odpowiedź, teraz spadaj." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #9897 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #9898 /* ~Śmieje się z ciebie. "To nie coś, o czym winnyś widzieć, trepie. Dałem ci twojom odpowiedź. Teraz spadaj." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #9899 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #9900 /* ~Wybucha śmiechem. "Dobre to pytanie. Jednak mondrym żeś śmiałkiem." Zastanawia się przez chwilę, po czym obrzuca cię wnikliwym spojrzeniem. "Na twoim miejscu zagadałbym do Shary. Krenci się tu po okolicznych ulicach i nie trudno jom znaleźć. Jeśli bendziesz dla niej miły, pomoże ci. Dałem ci twojom odpowiedź. Teraz spadaj." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #9901 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END
