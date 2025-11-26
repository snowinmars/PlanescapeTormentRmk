// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10089 /* ~Widzisz młodą kobietę w lichym ubraniu, pachnącą tanimi perfumami, z wręcz wymalowanym na twarzy uśmiechem. Dostrzega, że się jej przyglądasz i uśmiecha się.~ */
  IF ~~ THEN REPLY #10090 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #10091 /* ~Zignoruj ją.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10092 /* ~Podchodzi bliżej, kładzie dłoń na twym ramieniu, drugą zaś wsuwa za ciebie i umiejscawia na twoich pośladkach. Uśmiecha się i przesuwa powolutku swą dłoń w dół ramienia. "No, czyż nie jesteś silny, śmiałku? Lubię silnych mężczyzn, którzy potrafią wziąć to, co chcą. Nagłym ruchem przyciągnęła cię ku sobie. "Powiedz mi więc... czego chcesz?"~ */
  IF ~~ THEN REPLY #10093 /* ~"Uch... Jedynie odpowiedzi na parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #10094 /* ~"Mniejsza z tym. Muszę iść."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10095 /* ~Spogląda ci w oczy, jej uśmiech poszerza się. "Nie jestem tu, by rozmawiać. Na pewno chcesz tylko tego?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10096 /* ~Ta kobieta zdaje się być zbytnio nachalna. Coś jest nie w porządku.~ */ GOTO 3
  IF ~  PartyGoldGT(10)
~ THEN REPLY #10097 /* ~"Cóż... Może sobie trochę poużywam."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10098 /* ~"Cóż... Może sobie trochę poużywam."~ */ GOTO 10
  IF ~~ THEN REPLY #10099 /* ~"Mniejsza z tym. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10100 /* ~Przychodzi ci na myśl, że coś jest nie w porządku, odpychasz więc ją od siebie. Robiąc to, czujesz szarpnięcie. Spoglądasz w dół wystarczająco szybko, by dostrzec jej *pustą* dłoń wysuwającą się z twej sakiewki. Zdaje się jej spieszyć, by odejść. Odsuwa się od ciebie.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10101 /* ~Chwyć ją.~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #10102 /* ~Chwyć ją.~ */ GOTO 9
  IF ~~ THEN REPLY #10103 /* ~Pozwól jej odejść.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10104 /* ~Chwytasz ją zręcznie w pasie. Zaczyna się szarpać i wszystkimi możliwymi sposobami stara się wyswobodzić. "Puść mnie, trepie, albo zawołam straże."~ */
  IF ~~ THEN REPLY #10105 /* ~"Nie krępuj się, krzycz. Umrzesz, zanim się ktoś pojawi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pros3_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #10106 /* ~"Nie krępuj się, krzycz. Nie sądzę, by ktokolwiek w tym mieście się tym przejął."~ */ GOTO 5
  IF ~~ THEN REPLY #10107 /* ~Pozwól jej odejść.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #10108 /* ~Przez chwilę przygląda ci się uważnie, po czym przestaje się szarpać. "Proszę, pozwól mi odejść. Złapałeś mnie, zanim zdążyłam cię oskubać."~ */
  IF ~~ THEN REPLY #10109 /* ~"Oddaj mi wszystkie swoje pieniądze, a będziesz mogła odejść."~ */ GOTO 6
  IF ~~ THEN REPLY #10110 /* ~"W porządku. Dopilnuj, bym cię po raz drugi w tej okolicy nie przyłapał. Rozumiesz?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10111 /* ~Przytakuje i sięga do swej sakiewki. Wyciąga niewielką garść monet i oferuje je tobie. "Proszę, śmiałku. Nie będę miała na jedzenie, jeśli zabierzesz mój brzdęk. Pozwól mi odejść."~ */
  IF ~~ THEN REPLY #10112 /* ~Weź pieniądze i pozwól jej odejść.~ */ DO ~GivePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #10113 /* ~Weź pieniądze i zabij ją.~ */ DO ~GivePartyGold(10)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10114 /* ~Pozwól jej odejść.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10115 /* ~Bierzesz monety i wkładasz je do kieszeni. Ona przygląda ci się jeszcze przez pewien czas, po czym odwraca się i powoli odchodzi.~ */
  IF ~~ THEN REPLY #10116 /* ~Pozwól jej odejść.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.2
  SAY #10117 /* ~Puszczasz ją wolno i machasz ręką na odchodnym. Wpatruje się ona w ciebie przez chwilę, po czym uśmiecha nieznacznie. "Dziękuję, śmiałku." Odwraca się i zaczyna powoli odchodzić.~ */
  IF ~~ THEN REPLY #10118 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #10119 /* ~Usiłujesz schwycić ją w pasie, ale udaje się jej wykonać zręczny unik. Odskakuje od ciebie i zaczyna biec.~ */
  IF ~~ THEN REPLY #10120 /* ~Zaatakuj ją.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10121 /* ~Pozwól jej odejść.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.2
  SAY #10122 /* ~Wyswobadza się z twego uścisku, odsuwa się, po czym uśmiecha się do ciebie. "Przykro mi, śmiałku. Rozmyśliłam się. Miłego dnia." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #10123 /* ~Pozwól jej odejść.~ */ EXIT
END
