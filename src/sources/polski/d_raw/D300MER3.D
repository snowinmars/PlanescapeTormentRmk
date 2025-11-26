// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17155 /* ~Gość o niechlujnym wyglądzie szybko orientuje się, że na niego patrzysz. "Hej, hultaju, chono tu! Zgulaj, co mam!" Mruga i macha do ciebie.~ */
  IF ~~ THEN REPLY #17158 /* ~"Co możesz mi zaoferować?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17159 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17160 /* ~"Jestem tu przypadkowo. Żegnaj."~ */ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17156 /* ~Gdy cię widzi, jego paciorkowate oczy błyszczą niczym klejnoty. "Hej tam! Znowu tu jesteś? Chono, zgulaj co tera tu mam!"~ */
  IF ~~ THEN REPLY #17192 /* ~"Co możesz mi zaoferować?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17203 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17204 /* ~"Tylko przechodziłem. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17157 /* ~Mężczyzna przerywa ci, zanim udaje ci się dokończyć zdanie. "Nie uwierzysz, jakie mam tu dla ciebie okazje! Mądry z ciebie hultaj, żeś do mnie przytupał; nie oszukam cię, jak te szpicowate kanciarze." Pokazuje na stoiska innych kupców.~ */
  IF ~~ THEN REPLY #17208 /* ~"W porządku, co możesz mi zaoferować?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17209 /* ~"Tak naprawdę to mam parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #17211 /* ~"Idę już. Żegnaj."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #17168 /* ~Przytakuje, ale widać, że nie słucha. "Taajest, mam tu cholernie dobre rzeczy! No zgulaj tylko! A chwytasz te ceny? Zasadniczo, to mnie się *okrada*, nie kupuje!"~ */
  IF ~~ THEN REPLY #17212 /* ~"W porządku, co możesz mi zaproponować?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17214 /* ~"Słuchaj uważnie: MAM - KILKA - PYTAŃ."~ */ GOTO 4
  IF ~~ THEN REPLY #17219 /* ~Odwróć się i odjedź.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17169 /* ~"Pewno, że tak! Czemu robie takie walnięte interesy? Albo, czemu mam takie świetne rzeczy? Cóż, nie gryź się tym, hultaju! Wszystko, co masz wiedzieć, to że mam wszystkiego po trochu! No, poza Lim-Limami... ale kto na Baator ich potrzebuje? Cha, cha, cha!"~ */
  IF ~~ THEN REPLY #17224 /* ~"Dobra, dobra... co możesz mi zaproponować?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17225 /* ~Odwróć się i odjedź.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 7.1
  SAY #17175 /* ~Krzyczy za tobą: "Czekaj, hultaju, gdzie leziesz? Nie chcesz zgulać mych wspaniałości? Wracaj. Nie wiesz co tracisz, słyszysz?!"~ */
  IF ~~ THEN REPLY #17226 /* ~"Bardzo dobrze. Co masz w ofercie?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17227 /* ~Idź dalej.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2 1.2
  SAY #17473 /* ~Mężczyzna przerywa ci, zanim udaje ci się dokończyć zdanie. "Nie uwierzysz, jakie mam tu dla ciebie okazje! Mądry z ciebie hultaj, żeś do mnie przytupał; nie oszukam cię, jak te szpicowate kanciarze." Pokazuje na stoiska innych kupców.~ */
  IF ~~ THEN REPLY #17475 /* ~"W porządku, co możesz mi zaoferować?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17476 /* ~"Idę już. Żegnaj."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.2 6.1
  SAY #17474 /* ~Przytakuje, ale widać, że nie słucha. "Taajest, mam tu cholernie dobre rzeczy! No zgulaj tylko! A chwytasz te ceny? Zasadniczo, to mnie się *okrada*, nie kupuje!"~ */
  IF ~~ THEN REPLY #17477 /* ~"W porządku, co możesz mi zaoferować?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17478 /* ~Odwróć się i odejdź.~ */ GOTO 5
END
