// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WDRGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~WDRGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #48221 /* ~Ten wyglądający na znudzonego szczurołak zdaje się chętnie wykorzystywać każdą okazję do zabicia nudy. "Czego chcesz, mięcho?"~ */
  IF ~~ THEN REPLY #48222 /* ~"Chciałbym się stąd wydostać."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #48223 /* ~"Chciałbym tylko z tobą porozmawiać."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48224 /* ~"Niczego. Zapomnij o tym."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #48225 /* ~"Chciałbyś, co? A cóż miałoby nam wynagrodzić nieposłuszeństwo względem Mantuoka i narażanie się na gniew innych szczurów?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48226 /* ~"Wasze życia. Jeżeli mnie wypuścicie, to pozwolę wam żyć."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("a1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48227 /* ~"Wasze życia. Jeżeli mnie wypuścicie, to pozwolę wam żyć."~ */ GOTO 4
  IF ~~ THEN REPLY #48228 /* ~"Obietnica, że nikt nigdy nie dowie się ode mnie o tym, co tu zaszło... A potem możemy porozmawiać o pieniądzach."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48229 /* ~"Skąd niby mieliby się o tym dowiedzieć?"~ */ GOTO 11
  IF ~~ THEN REPLY #48230 /* ~"Co powiesz na trochę brzdęku?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48231 /* ~"Zastanów się nad tym. Stanowię dla ciebie poważne zagrożenie, a mimo to staram się rozmawiać z tobą jak równy z równym. Czy naprawdę sądzisz, że te ściany powstrzymają mnie, jeśli się za nie wezmę? Dlatego daję ci do zrozumienia, bez żadnych pogróżek, że wypuszczenie mnie leży w twoim najlepszym interesie."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48232 /* ~"Ponieważ kiedyś się stąd wydostanę, a kiedy już to zrobię, będzie gorąco."~ */ GOTO 4
  IF ~~ THEN REPLY #48233 /* ~"Wymyśl coś sam. Ja mam pustkę w głowie."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #48234 /* ~Raimon mierzy cię uważnie wzrokiem. Dostrzegając gwałtowność w twoich oczach i rozmiar twoich mięśni, bardzo ostrożnie odblokowuje i otwiera przed tobą drzwi. Usuwa się na bok i odwraca od ciebie wzrok.~ */
  IF ~~ THEN REPLY #48235 /* ~"Dzięki, brachu."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
  IF ~~ THEN REPLY #48236 /* ~"Na razie."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48237 /* ~Wyraźnie unika twojego spojrzenia. "Proszę, nie krzywdź mnie, krwawniku. Ja tylko wykonuję swoją pracę."~ */
  IF ~~ THEN REPLY #48238 /* ~"Pomyślę o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #48239 /* ~Mierzy cię wzrokiem i uśmiecha się pogardliwie. "Chcesz mnie skrzywdzić, co? Najpierw się stąd wydostań!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #48240 /* ~"A co jeżeli obiecam, że nikt nigdy nie dowie się ode mnie o tym, co tutaj zaszło. A potem pogadamy o pieniądzach?"~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48241 /* ~"Dlaczego po prostu mnie nie wypuścisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #48242 /* ~"A co, gdybyś dostał kilka miedziaków?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48243 /* ~"Zastanów się nad tym. Stanowię dla ciebie poważne zagrożenie, a mimo to staram się rozmawiać z tobą jak równy z równym. Czy naprawdę sądzisz, że te ściany powstrzymają mnie, jeśli się za nie wezmę? Dlatego daję ci do zrozumienia, bez żadnych pogróżek, że wypuszczenie mnie leży w twoim najlepszym interesie."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48244 /* ~"Ponieważ kiedyś się stąd wydostanę, a kiedy już to zrobię, będzie gorąco."~ */ GOTO 4
  IF ~~ THEN REPLY #48245 /* ~"Zatem postaram się coś wymyślić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #48246 /* ~"To mi nawet odpowiada. Nigdy nie przywiązywałem specjalnej wagi do wodzowskich dyrektyw Mantuoka." Szczurołak przekręca klucz w zamku, otwiera drzwi i ustępuje ci z drogi. "A teraz zmiataj stąd, póki jeszcze mogę udawać, że cię nie zauważyłem."~ */
  IF ~~ THEN REPLY #48247 /* ~"Załatwione. Żegnaj."~ */ DO ~AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #48248 /* ~"Coś ci powiem... Kiedy tu szedłeś, twój trzos brzdękał dość przyjemnie dla ucha. Dasz mi z niego sto miedziaków; jestem pewien, że z taką sumą możesz się rozstać, i będziesz mógł stąd wyjść."~ */
  IF ~~ THEN REPLY #48249 /* ~"Umowa stoi."~ */ GOTO 7
  IF ~~ THEN REPLY #48250 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #48251 /* ~"Podaj je przez kraty, o tutaj, a pozwolę ci przejść. I nie zadawaj zbędnych pytań, po prostu mi zaufaj...  Dobrze mówię, Szadeuszu?" Szczurołak posyła uśmieszek swojemu koledze.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #48252 /* ~"W porządku. Proszę."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(3750)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #48253 /* ~"Nie mam takiej sumy..."~ */ GOTO 9
  IF ~~ THEN REPLY #48254 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48255 /* ~Uważnie liczy monety. Po upewnieniu się, że suma się zgadza, otwiera drzwi. "A teraz wynoś się stąd."~ */
  IF ~~ THEN REPLY #48256 /* ~"No już dobrze, dobrze."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #48257 /* ~"A więc nie chcesz wyjść?" Jego śmiech podobny jest do świergotu. Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #48258 /* ~"A niech to..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #48259 /* ~"Chcesz tylko porozmawiać, co? Cóż, stary Raimon z pewnością nie będzie z tobą gadał!" Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #48264 /* ~"Jeśli mnie wypuścisz, nie zabiję cię."~ */ GOTO 1
  IF ~~ THEN REPLY #48261 /* ~"W porządku."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #48262 /* ~Szczurołak szydzi z ciebie. "Miałbym ci zaufać?" Strzyże wąsami. "Spróbuj jeszcze raz."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48263 /* ~Szczurołak szydzi z ciebie. "Miałbym ci zaufać?" Strzyże wąsami. "Spróbuj jeszcze raz."~ */ DO ~SetGlobal("Zap","GLOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48264 /* ~"Jeśli mnie wypuścisz, nie zabiję cię."~ */ GOTO 4
  IF ~~ THEN REPLY #48265 /* ~"Co powiesz na trochę brzdęku?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48266 /* ~"Zastanów się nad tym. Stanowię dla ciebie poważne zagrożenie, a mimo to staram się rozmawiać z tobą jak równy z równym. Czy naprawdę sądzisz, że te ściany powstrzymają mnie, jeśli się za nie wezmę? Dlatego daję ci do zrozumienia, bez żadnych pogróżek, że wypuszczenie mnie leży w twoim najlepszym interesie."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48267 /* ~"Ponieważ kiedyś się stąd wydostanę, a kiedy już to zrobię, będzie gorąco."~ */ GOTO 4
  IF ~~ THEN REPLY #48268 /* ~"Zapomnij."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 12 // from:
  SAY #48269 /* ~"Czegóż znowu chcesz, pomyleńcu?"~ */
  IF ~~ THEN REPLY #48270 /* ~"Chcę z tobą porozmawiać."~ */ GOTO 10
  IF ~~ THEN REPLY #48271 /* ~"Chcę porozmawiać o możliwościach wydostania się stąd."~ */ GOTO 1
  IF ~~ THEN REPLY #48272 /* ~"Niczego. Zapomnij o tym."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 13 // from:
  SAY #48273 /* ~Kiedy zbliżasz się do krat, widzisz blask srebra i nagle jeden ze szczurołaków rzuca się na drugiego z dziką nienawiścią!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY #48275 /* ~Szczurołak zabiera klucze z ciała Raimona, i otwiera przed tobą drzwi. "Ruszajcie." Kłania ci się lekko i odbiega.~ */
  IF ~~ THEN REPLY #48276 /* ~"Nie omieszkamy to zrobić. Dzięki."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #48277 /* ~"Zastanawiasz się, dlaczego to zrobiłem, prawda? Kiedyś byłem mieszkańcem Zakopanej Wioski. Nazywałem się Szadeusz. Nie chcę być szczurołakiem, a już na pewno nie jestem przez tę chorobę mniej lojalny w stosunku do ludzi. Teraz wychodź." Szczurołak otwiera przed tobą drzwi i odbiega.~ */
  IF ~~ THEN REPLY #48278 /* ~"Dziękuję. Żegnaj, Szadeuszu."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #48279 /* ~Szczurołak, zgładziwszy swojego kamrata, patrzy wymownie na Annę. "Anno. To ja, Szadeusz. Puszczam cię na wolność. Nie mogłem patrzeć na to, jak tkwisz w tej klatce. Chciałbym, żebyście w zamian za to udali się do Wioski i powiedzieli im, że jest tu coś, co stanowi dla nich poważne zagrożenie. Trudno mi powiedzieć, co to takiego, ale wymyślcie coś i... zróbcie, o co was proszę."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
PartyGoldLT(100)
CheckStatLT(Protagonist,13,STR)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,INT)
~ THEN BEGIN 17 // from:
  SAY #48280 /* ~Kiedy zbliżasz się do krat, widzisz blask srebra i nagle jeden ze szczurołaków rzuca się na drugiego z dziką nienawiścią!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ EXTERN ~DSHAD~ 8
END
