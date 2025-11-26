// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAIMON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAIMON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23859 /* ~Ten wyglądający na znudzonego szczurołak zdaje się chętnie wykorzystywać każdą okazję do zabicia nudy. "Czego chcesz, mięcho?"~ */
  IF ~~ THEN REPLY #23860 /* ~"Chciałbym się stąd wydostać."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23861 /* ~"Chciałbym tylko z tobą porozmawiać."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #23862 /* ~"Nic. Zapomnij o tym."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #23863 /* ~"Chciałbyś, co? A cóż miałoby nam wynagrodzić nieposłuszeństwo względem Mantuoka i narażanie się na gniew innych szczurów?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23864 /* ~"Wasze życia. Jeżeli mnie wypuścicie, to pozwolę wam żyć."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23865 /* ~"Wasze życia. Jeżeli mnie wypuścicie, to pozwolę wam żyć."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23866 /* ~"Obietnica, że nikt nigdy nie dowie się ode mnie o tym, co tu zaszło... A potem możemy porozmawiać o pieniądzach."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23867 /* ~"Skąd niby mieliby się o tym dowiedzieć?"~ */ GOTO 11
  IF ~~ THEN REPLY #23868 /* ~"Co powiesz na trochę brzdęku?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23869 /* ~"Zastanów się nad tym. Stanowię dla ciebie poważne zagrożenie, a mimo to staram się rozmawiać z tobą jak równy z równym. Czy naprawdę sądzisz, że te ściany powstrzymają mnie, jeśli się za nie wezmę? Dlatego daję ci do zrozumienia, bez żadnych pogróżek, że wypuszczenie mnie leży w twoim najlepszym interesie."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23870 /* ~"Ponieważ kiedyś się stąd wydostanę, a kiedy już to zrobię, będzie gorąco."~ */ GOTO 4
  IF ~~ THEN REPLY #23871 /* ~"Wymyśl coś sam. Ja mam pustkę w głowie."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #23872 /* ~Raimon mierzy cię uważnie wzrokiem. Dostrzegając gwałtowność w twoich oczach i rozmiar twoich mięśni, bardzo ostrożnie odblokowuje i otwiera przed tobą drzwi. Usuwa się na bok i odwraca od ciebie wzrok.~ */
  IF ~~ THEN REPLY #23873 /* ~"Dzięki, brachu."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
  IF ~~ THEN REPLY #23874 /* ~"Na razie."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
END

IF WEIGHT #3 /* Triggers after states #: 13 12 even though they appear after this state */
~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #23875 /* ~Wyraźnie unika twojego spojrzenia. "Proszę, nie krzywdź mnie, krwawniku. Ja tylko wykonuję swoją pracę."~ */
  IF ~~ THEN REPLY #23876 /* ~"Pomyślę o tym. żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #23877 /* ~Mierzy cię wzrokiem i uśmiecha się pogardliwie. "Chcesz mnie skrzywdzić, co? Najpierw się stąd wydostań!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23878 /* ~"A co jeżeli obiecam, że nikt nigdy nie dowie się ode mnie o tym, co tutaj zaszło. A potem pogadamy o pieniądzach?"~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23879 /* ~"Dlaczego po prostu mnie nie wypuścisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #23880 /* ~"A co, gdybyś dostał kilka miedziaków?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23881 /* ~"Zastanów się nad tym. Stanowię dla ciebie poważne zagrożenie, a mimo to staram się rozmawiać z tobą jak równy z równym. Czy naprawdę sądzisz, że te ściany powstrzymają mnie, jeśli się za nie wezmę? Dlatego daję ci do zrozumienia, bez żadnych pogróżek, że wypuszczenie mnie leży w twoim najlepszym interesie."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23882 /* ~"Ponieważ kiedyś się stąd wydostanę, a kiedy już to zrobię, będzie gorąco."~ */ GOTO 4
  IF ~~ THEN REPLY #23883 /* ~"Zatem postaram się coś wymyślić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #23884 /* ~"To mi nawet odpowiada. Nigdy nie przywiązywałem specjalnej wagi do wodzowskich dyrektyw Mantuoka." Szczurołak przekręca klucz w zamku, otwiera drzwi i ustępuje ci z drogi. "A teraz zmiataj stąd, póki jeszcze mogę udawać, że cię nie zauważyłem."~ */
  IF ~~ THEN REPLY #23885 /* ~"Załatwione. Żegnaj."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #23886 /* ~"Coś ci powiem... Kiedy tu szedłeś, twój trzos brzdękał dość przyjemnie dla ucha. Dasz mi z niego sto miedziaków; jestem pewien, że z taką sumą możesz się rozstać, i będziesz mógł stąd wyjść."~ */
  IF ~~ THEN REPLY #23887 /* ~"Umowa stoi."~ */ GOTO 7
  IF ~~ THEN REPLY #23888 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23889 /* ~"Podaj je przez kraty, o tutaj, a pozwolę ci przejść. I nie zadawaj zbędnych pytań, po prostu mi zaufaj...  Dobrze mówię, Szadeuszu?" Szczurołak posyła uśmieszek swojemu koledze.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #23890 /* ~"W porządku. Trzymaj."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(200)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #23891 /* ~"Nie mam takiej sumy..."~ */ GOTO 9
  IF ~~ THEN REPLY #23892 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #23893 /* ~Uważnie liczy monety. Po upewnieniu się, że suma się zgadza, otwiera drzwi. "A teraz wynoś się stąd."~ */
  IF ~~ THEN REPLY #23894 /* ~"Dobrze już, dobrze."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #23895 /* ~"A więc nie chcesz wyjść?" Jego śmiech podobny jest do świergotu. Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #23896 /* ~"Niech to szlag..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #23897 /* ~"Chcesz tylko porozmawiać, co? Cóż, stary Raimon z pewnością nie będzie z tobą gadał!" Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #23898 /* ~"W takim razie chciałbym porozmawiać o wydostaniu się stąd."~ */ GOTO 1
  IF ~~ THEN REPLY #23899 /* ~"W porządku."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #23900 /* ~Szczurołak szydzi z ciebie. "Miałbym ci zaufać?" Strzyże wąsami. "Spróbuj jeszcze raz."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23901 /* ~"Jeśli mnie wypuścisz, nie zabiję cię."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23902 /* ~"Jeśli mnie wypuścisz, nie zabiję cię."~ */ GOTO 4
  IF ~~ THEN REPLY #23903 /* ~"Co powiesz na trochę brzdęku?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23904 /* ~"Zastanów się nad tym. Stanowię dla ciebie poważne zagrożenie, a mimo to staram się rozmawiać z tobą jak równy z równym. Czy naprawdę sądzisz, że te ściany powstrzymają mnie, jeśli się za nie wezmę? Dlatego daję ci do zrozumienia, bez żadnych pogróżek, że wypuszczenie mnie leży w twoim najlepszym interesie."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23905 /* ~"Ponieważ kiedyś się stąd wydostanę, a kiedy już to zrobię, będzie gorąco."~ */ GOTO 4
  IF ~~ THEN REPLY #23906 /* ~"Zapomnij."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #23907 /* ~"Czegóż znowu chcesz, pomyleńcu?"~ */
  IF ~~ THEN REPLY #23908 /* ~"Chciałbym z tobą porozmawiać."~ */ GOTO 10
  IF ~~ THEN REPLY #23909 /* ~"Chciałbym porozmawiać o możliwościach wydostania się stąd."~ */ GOTO 1
  IF ~~ THEN REPLY #23910 /* ~"Nic. Zapomnij o tym."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #23911 /* ~"Co tu jeszcze robisz, trepie? Spadaj stąd!" Chowa głowę, unikając twojego wzroku.~ */
  IF ~~ THEN REPLY #23912 /* ~"No cóż."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #23913 /* ~"Co do... SZADEUSZ! BIERZ GO!" Obydwa szczurołaki atakują cię.~ */
  IF ~~ THEN REPLY #23914 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
