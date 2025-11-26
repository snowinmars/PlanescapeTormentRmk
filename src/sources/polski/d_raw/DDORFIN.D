// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORFIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORFIN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57994 /* ~Widzisz muskularnego mężczyznę ubranego w zabrudzone ubranie robocze. Wygląda na to, że sprawdza zawartość kilku skrzynek i porównuje to z listą.~ */
  IF ~~ THEN REPLY #57996 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #57998 /* ~Zignoruj mężczyznę.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58000 /* ~Przystaje na chwilę, po czym odwraca się przodem do ciebie. "Tak? Mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #58001 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58007 /* ~"Nie, raczej nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #58009 /* ~Rozgląda się szybko. "W porządku..."~ */
  IF ~~ THEN REPLY #58010 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #58012 /* ~"Czym się zajmujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #58014 /* ~"Co mógłbyś mi powiedzieć o tym miejscu?"~ */ GOTO 8
  IF ~~ THEN REPLY #58016 /* ~"Szukam devy. Powiedziano mi, że jest w Klątwie."~ */ GOTO 9
  IF ~~ THEN REPLY #58017 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58019 /* ~"Nazywam się Dorfin, śmiałku. Jestem jednym z pracowników tutejszego magazynu." Obdarza cię przyjacielskim uśmiechem.~ */
  IF ~~ THEN REPLY #58021 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58022 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58024 /* ~"Spisem inwentarza." Marszczy brwi. "Mogę dodać, że po raz trzeci w tym miesiącu."~ */
  IF ~~ THEN REPLY #58025 /* ~"Czy to coś niezwykłego?"~ */ GOTO 5
  IF ~~ THEN REPLY #58027 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58029 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58030 /* ~Wzdycha. "Nie, nasz szef to istny poganiacz niewolników. Każe nam ciężko pracować i rzadko nam popuszcza." Wzrusza ramionami. "Takie życie."~ */
  IF ~~ THEN REPLY #58031 /* ~"Skoro jest takim gnębicielem, dlaczego u niego pracujesz?"~ */ GOTO 6
  IF ~~ THEN REPLY #58033 /* ~"Rozumiem. Mam parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58034 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58035 /* ~Przybliża się, by coś wyszeptać. "Jeden dzień w tygodniu mamy wolny... Bez potrącenia z zapłaty. Z tego powody nie skarżymy się."~ */
  IF ~~ THEN REPLY #58037 /* ~"Ciekawe. Dlaczego to robi?"~ */ GOTO 7
  IF ~~ THEN REPLY #58038 /* ~"Rozumiem. Mam parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58040 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58042 /* ~Wzrusza ramionami. "Nie mam pojęcia i nie obchodzi mnie to. Dla nas to wytchnienie od pracy."~ */
  IF ~~ THEN REPLY #58043 /* ~"Rozumiem. Mam parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58044 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58045 /* ~Spogląda na ciebie zdziwiony, po czym wzrusza ramionami. "To po prostu magazyn. Przechowujemy zwyczajne rzeczy, no wiesz: narzędzia, broń, żywność i takie tam..."~ */
  IF ~~ THEN REPLY #58046 /* ~"Rozumiem. Mam parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58048 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58049 /* ~"Doprawdy?" Wygląda na zdziwionego. "Nie mogę sobie nawet wyobrazić, że... To znaczy chcę powiedzieć, że niby czemu deva miałby się tu pojawić?" Przerywa na chwilę i parska śmiechem. "Ha! Chyba że przybyłby tu, by zesłać na nas *świętą sprawiedliwość*."~ */
  IF ~~ THEN REPLY #58051 /* ~"Co przez to rozumiesz?"~ */ GOTO 10
  IF ~~ THEN REPLY #58052 /* ~"Rozumiem. Mam parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58054 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58055 /* ~"Mieszkańcy Klątwy nie słyną z uprzejmości i hojności. Prawdę mówiąc deva jest zbyt dobry jak na takie miejsce. Nie widzę powodu, dla którego miałby się tu pojawić, rzecz jasna jeśli nie zostałby przysłany przez jakąś potęgę. Mogłoby to nastąpić jedynie w imieniu jakiejś *wyższej* sprawiedliwości."~ */
  IF ~~ THEN REPLY #58057 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58058 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58059 /* ~Widzisz Dorfina, pracownika magazynu. Kłania ci się. "Witaj ponownie, śmiałku."~ */
  IF ~~ THEN REPLY #58062 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58064 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END
