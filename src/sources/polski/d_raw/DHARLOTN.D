// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1809 /* ~Widzisz umęczoną kobietę ubraną w obcisły, skórzany gorset i legginsy. Bije od niej ciężki odór tanich perfum, a jej twarz pokrywa gruba warstwa źle zrobionego makijażu. Na twój widok uśmiecha się. "Może zatrzymasz się i trochę sobie pogadamy kochanie?"~ */
  IF ~~ THEN REPLY #7190 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #7191 /* ~Przejdź obok.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1810 /* ~Kobieta patrzy na ciebie nieśmiało. "Wyglądasz na krwawnika, który coś *zgubił*. Może pomogłabym ci to znaleźć, śmiałku?" Nieznacznie się uśmiecha.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #7192 /* ~"Och?"~ */ EXTERN ~DMORTE~ 37
  IF ~  Global("Journal","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7193 /* ~"Szukam dziennika."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7194 /* ~"Może mogłabyś mi pomóc znaleźć coś, co zgubiłem."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7195 /* ~"Tak naprawdę, to mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #7196 /* ~"Nie dzisiaj, dzięki."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #1812 /* ~"Ej?" Wydaje się zmieszana. "O co ci chodzi?"~ */
  IF ~~ THEN REPLY #7197 /* ~"Pamiętnik nieważny. Może pomożesz mi znaleźć to, czego *naprawdę* szukam."~ */ GOTO 3
  IF ~~ THEN REPLY #7198 /* ~"Niczego nie zgubiłem, ale mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #7199 /* ~"Nieważne. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #1813 /* ~W jej głosie czuć bardziej oficjalną nutę. "Tak, kochanie, jest jeszcze kwestia znaleźnego."~ */
  IF ~~ THEN REPLY #7200 /* ~"Rozumiem. Ile?"~ */ GOTO 4
  IF ~~ THEN REPLY #7201 /* ~"Nieważne. Mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #7202 /* ~"Nieważne. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #1814 /* ~"Kilka miedziaków, żebym *sprawdziła*, czego ci brakuje i dziesięć, abym to naprawdę znalazła."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7203 /* ~"W porządku."~ */ DO ~TakePartyGold(10)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #7204 /* ~"Nieważne. Zamiast tego, mam parę pytań..."~ */ GOTO 9
  IF ~  PartyGoldGT(9)
!NearbyDialog("DMorte")
~ THEN REPLY #7205 /* ~"Nieważne. Sam znajdę to, czego szukam. Dzięki."~ */ GOTO 11
  IF ~  PartyGoldLT(10)
~ THEN REPLY #7206 /* ~"Nieważne. Sam znajdę to, czego szukam. Dzięki."~ */ GOTO 6
  IF ~  PartyGoldGT(9)
NearbyDialog("DMorte")
Global("Morte_Harlot_Quip_1","GLOBAL",0)
~ THEN REPLY #7207 /* ~"Nieważne. Sam znajdę to, czego szukam. Dzięki."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 38
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #1815 /* ~"Myślę, że znalazłeś, to czego szukasz. Chodź, kochany."~ */
  IF ~  InParty("Annah")
NearbyDialog("DAnnah")
~ THEN REPLY #7208 /* ~Idź za nią...~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 49
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #7211 /* ~Idź za nią...~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 6
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7212 /* ~Idź za nią...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  !InParty("Annah")
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Idź za nią...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Idź za nią...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #1816 /* ~Kobieta uśmiecha się. "Nie dość tego co brzęczy, co? Nie martw się, kochanie... wrócisz, jak będziesz miał cięższą sakiewkę."~ */
  IF ~~ THEN REPLY #7213 /* ~"Uch... Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #1817 /* ~Kobieta przerywa ci. "Podwójna cena za mimira... albo jakiegoś innego degenerata."~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #7214 /* ~"Uch... 'mimira'?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 129
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7215 /* ~"Nie męcz się, Morte. Z tego co widzę, prawdopodobnie ratuję cię od powtórnej śmierci."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7217 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1823 /* ~"A żeby tak syf wyżarł ci wnętrzności! Wyglądasz i cuchniesz jak hodowca kozłów i jesteś dwa razy brzydszy!"~ */
  IF ~~ THEN REPLY #7218 /* ~"Uch..."~ */ EXTERN ~DMORTE~ 130
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.1 3.1 4.1 32.0
  SAY #1824 /* ~Kobieta marszczy czoło. "Nie jestem oprowadzaczem..." Marszczy czoło, potem pociera palcami. "Chyba, że masz brzdęk by zapłacić za mój czas."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #7219 /* ~"Mogę ci zapłacić. Ile?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #7223 /* ~"Mogę ci zapłacić. Ile?"~ */ GOTO 33
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #7224 /* ~"Mogę ci zapłacić. Ile?"~ */ GOTO 34
  IF ~~ THEN REPLY #7225 /* ~"Nieważne. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #1825 /* ~"Dziesięć miedziaków. Bardziej szczegółowe pytania kosztują więcej."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7226 /* ~"Brzmi uczciwie. Masz dziesięć miedziaków."~ */ DO ~TakePartyGold(10)
~ GOTO 12
  IF ~~ THEN REPLY #7227 /* ~"Nieważne."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.4 2.2 3.2 4.2 9.3 10.1 13.7 33.1 34.1
  SAY #1826 /* ~"Twoja strata. Jak znów zgubisz parę rzeczy, a będziesz chciał znaleźć inne, wróć do mnie, kochanie."~ */
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7228 /* ~"Będę o tym pamiętał. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7229 /* ~"Będę o tym pamiętać. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7230 /* ~"Będę o tym pamiętać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 33.0 34.0
  SAY #1827 /* ~"Dobrze więc." Brzdęk znika jej w dłoni. "A teraz..."~ */
  IF ~~ THEN REPLY #7231 /* ~"Jest parę rzeczy, które chcę wiedzieć..."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.2 15.1 16.1 17.0 19.1 20.1 21.1 22.0 23.0 24.3 24.4 24.5 24.6 25.2 26.2 27.1 28.1 29.1 30.0 31.0
  SAY #1828 /* ~"Pytaj, kochany."~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7232 /* ~"Co możesz mi powiedzieć o tym mieście?"~ */ GOTO 14
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #7233 /* ~"Opowiesz mi o Sigil?"~ */ GOTO 14
  IF ~~ THEN REPLY #7236 /* ~"Powiedz mi, czy jest tu jeszcze coś ciekawego?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #7237 /* ~"Opowiedz mi o frakcjach."~ */ GOTO 21
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #7238 /* ~"Co wiesz o Pani Bólu?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7239 /* ~"Szukam kogoś, kto nazywa się Farod."~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7240 /* ~"Szukam dziennika."~ */ GOTO 23
  IF ~~ THEN REPLY #7241 /* ~"Cóż, nieważne. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #1829 /* ~Oczy zwężają jej się podejrzliwie. "O mieście? Co z tym miastem?"~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7242 /* ~"O co chodzi?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7243 /* ~"O co chodzi?"~ */ GOTO 15
  IF ~~ THEN REPLY #7244 /* ~"Cóż, mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7245 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7246 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7247 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #1830 /* ~"Chodzi ci o to, czym jest Sigil?" Wzrusza ramionami, rozgląda się. "To miasto pod twoimi stopami i tu, dookoła." Uśmiecha się. "Sprawia, że żołądki przyjezdnych wariują, naprawdę."~ */
  IF ~~ THEN REPLY #7248 /* ~"Gdzie dokładnie jest Sigil?"~ */ GOTO 16
  IF ~~ THEN REPLY #7249 /* ~"Cóż, mam kilka innych pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7250 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7251 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7252 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #1831 /* ~"Centrum Sfer, tak słyszałam." Pociąga nosem. "Jeśli wierzyć tym bzdurom."~ */
  IF ~~ THEN REPLY #7253 /* ~"Dlaczego 'bzdurom'?"~ */ GOTO 17
  IF ~~ THEN REPLY #7254 /* ~"Cóż, mam kilka innych pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7255 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7256 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7257 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #1832 /* ~Uśmiecha się. "No dobra, kochasiu, według siwobrodych, naukowców, guwernantów i tych wszystkich, co to nic, tylko główkują, Sfery nie mają końca." Puka się w głowę. "Kto ma wiedzieć, gdzie jest 'centrum'?"~ */
  IF ~~ THEN REPLY #7258 /* ~"Hmmm. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7259 /* ~"Dzięki za informacje. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7260 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7261 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 19.0 20.0
  SAY #1833 /* ~Kładzie dłonie na biodrach i wydyma wargi. "Zależy od tego, co cię interesuje, śmiałku."~ */
  IF ~~ THEN REPLY #7379 /* ~"Chcę się zabawić."~ */ GOTO 19
  IF ~~ THEN REPLY #7381 /* ~"Szukam pracy."~ */ GOTO 20
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7385 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7389 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7393 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1834 /* ~"Już ci złożyłam propozycję, kochasiu, i to za uczciwą cenę. Nie znam innego miejsca, gdzie mógłbyś skosztować takich rozkoszy, jakie będziesz miał ze mną."~ */
  IF ~~ THEN REPLY #7263 /* ~"Jest tu jeszcze coś ciekawego?"~ */ GOTO 18
  IF ~~ THEN REPLY #7264 /* ~"W porządku... mam jeszcze parę pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7265 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7266 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7267 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #1835 /* ~Śmieje się. "*Mnie* pytasz? Co jest, chcesz zostać jedną z Sióstr, czy jak?" Śmieje się, odginając ciało do tyłu... Skrzeczy niczym podpita harfa. W końcu, przestaje się śmiać, bierze głęboki oddech. "Jesteś... jesteś ciekawym gościem."~ */
  IF ~~ THEN REPLY #7269 /* ~"Jest tu jeszcze coś ciekawego?"~ */ GOTO 18
  IF ~~ THEN REPLY #7270 /* ~"W porządku... mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7272 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7273 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7274 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #1837 /* ~Uśmiecha się znacząco. "Ja tylko... 'służę'... frakcjom, kochasiu. Nie mam z nimi układów."~ */
  IF ~~ THEN REPLY #7275 /* ~"Nawet z Grabarzami?"~ */ GOTO 22
  IF ~~ THEN REPLY #7276 /* ~"W porządku... mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7277 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7278 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7279 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #1838 /* ~"W moich ramionach Grabarze nie zachowują się jak Grabarze, kochasiu." Drwi. "Te hultaje tak dużo mówią o śmierci, ale nie mówią zbyt dużo, kiedy są ze mną, rozumiesz?"~ */
  IF ~~ THEN REPLY #7280 /* ~"Rozumiem... mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7281 /* ~"Pouczające... Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7282 /* ~"Pouczające... Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7283 /* ~"Pouczające... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.6
  SAY #1839 /* ~"Nie mam pojęcia, gdzie można to znaleźć, kochasiu. Możesz poszukać... gdzie indziej." Uśmiecha się niedwuznacznie. "Znam parę miejsc, w których mógłbyś zacząć."~ */
  IF ~~ THEN REPLY #7284 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7285 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7286 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7287 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.5
  SAY #1840 /* ~"Farod? No, *tego* można zaliczyć do mrocznych tajemnic, kochanie. Jeśli chcesz się czegoś dowiedzieć o tym krwawniku, musisz zapłacić potrójną stawkę."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldGT(29)
~ THEN REPLY #7318 /* ~"W porządku. Oto trzydzieści miedziaków."~ */ DO ~TakePartyGold(30)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldGT(20)
~ THEN REPLY #7319 /* ~"W porządku. Oto dwadzieścia jeden miedziaków."~ */ DO ~TakePartyGold(21)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldGT(8)
~ THEN REPLY #7320 /* ~"W porządku. Oto dziewięć miedziaków."~ */ DO ~TakePartyGold(9)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldLT(30)
~ THEN REPLY #7321 /* ~"Hmmm. Nie mam tyle. Mam za to następne pytania..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldLT(21)
~ THEN REPLY #7322 /* ~"Hmmm. Nie mam tyle. Mam za to następne pytania..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldLT(9)
~ THEN REPLY #7323 /* ~"Hmmm. Nie mam tyle. Mam za to następne pytania..."~ */ GOTO 13
  IF ~~ THEN REPLY #7324 /* ~"Cóż, nieważne... Mam jeszcze parę pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7325 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7326 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7327 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #1841 /* ~Szybko lustruje twoje monety, potem wzrusza ramionami i chowa je. "Co chcesz wiedzieć o starym Farodzie?"~ */
  IF ~~ THEN REPLY #7328 /* ~"Za *tę* cenę, wszystko, co możesz mi o nim powiedzieć."~ */ GOTO 26
  IF ~~ THEN REPLY #7329 /* ~"Co o nim wiesz?"~ */ GOTO 26
  IF ~~ THEN REPLY #7330 /* ~"Cóż, nieważne... Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7331 /* ~"Nieważne... Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7332 /* ~"Nieważne... Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7333 /* ~"Nieważne... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1
  SAY #1842 /* ~Wzrusza ramionami. "Mówi się, że jest szefem Zbieraczy. Ma za sobą całą masę krwawników."~ */
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",0)
~ THEN REPLY #7334 /* ~"Gdzie mogę go znaleźć?"~ */ DO ~SetGlobal("Harlot_Reveals_Pharod","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 27
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",1)
~ THEN REPLY #7335 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 27
  IF ~~ THEN REPLY #7336 /* ~"Farod nieważny... Mam inne pytania..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7337 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7338 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7339 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #1843 /* ~"Nikt tak naprawdę nie wie, ale gdybym to *ja* miała zasugerować miejsce, kochasiu, powiedziałabym Plac Szmaciarzy."~ */
  IF ~~ THEN REPLY #7340 /* ~"Plac Szmaciarzy?"~ */ GOTO 28
  IF ~~ THEN REPLY #7341 /* ~"Rozumiem... mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7342 /* ~"Dzięki za informacje. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7343 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7344 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #1848 /* ~"Tak, na zachód od Kostnicy jest taka wielka sterta szmat i śmieci... Wszyscy Zbieracze mają tam swoje legowiska. Jest szansa, że Farod też."~ */
  IF ~~ THEN REPLY #7345 /* ~"Kim są Zbieracze?"~ */ GOTO 29
  IF ~~ THEN REPLY #7346 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7347 /* ~"Dzięki za informacje. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7348 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7349 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1849 /* ~"Wiesz... te skurle, które zbierają truposzy dla pieniędzy. Pożałowania godny zestaw."~ */
  IF ~~ THEN REPLY #7262 /* ~"Zbierają ciała? Dlaczego?"~ */ GOTO 30
  IF ~~ THEN REPLY #7395 /* ~"Rozumiem... mam jeszcze parę pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7396 /* ~"Dzięki za informacje. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7397 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7398 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #1850 /* ~"Ponieważ nie chcą robić tego, co ja."~ */
  IF ~~ THEN REPLY #7399 /* ~"Rozumiem... mam jeszcze parę pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7400 /* ~"Dzięki za informacje. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7401 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7402 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 13.4
  SAY #1851 /* ~Pluje i robi znak półkola w okolicy serca. "Ta cholerna wiedźma! Taka wielka i potężna, pani całego miasta, cicha i wyniosła, zabija każdego, kto się zbliży. Dogląda miasta, a jakże..." Syczy. "I chce, by wszystkie żyjące w nim stworzenia *zgniły*."~ */
  IF ~~ THEN REPLY #7457 /* ~"W porządku... mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7458 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7459 /* ~"Nieważne. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7460 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 5.2 5.3 5.4
  SAY #1852 /* ~"To wszystko, śmiałku."~ */
  IF ~~ THEN REPLY #7461 /* ~"Mam kilka pytań. Teraz... gdy wreszcie mogę się skoncentrować."~ */ GOTO 9
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7462 /* ~"Dzięki. Żegnaj."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7463 /* ~"Dzięki. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7464 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.1
  SAY #1853 /* ~"Dla ciebie..." Studiuje cię krytycznie. "Siedem miedziaków, ni więcej, ni mniej. Bardziej szczegółowe pytania będą cię kosztować więcej."~ */
  IF ~  PartyGoldGT(6)
~ THEN REPLY #7465 /* ~"Brzmi uczciwie. Oto siedem miedziaków."~ */ DO ~TakePartyGold(7)
~ GOTO 12
  IF ~~ THEN REPLY #7466 /* ~"Nieważne."~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 9.2
  SAY #1854 /* ~"Dla tak przystojnego hultaja jak ty..." Obdarza cię szerokim uśmiechem, odsłaniając brudne zęby. "Trzy miedziaki wystarczą, aby rozwiązać mi język." Oblizuje wargi, potem marszczy czoło. "Bardziej szczegółowe pytania będą cię kosztować więcej."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #7467 /* ~"Brzmi uczciwie. Oto trzy miedziaki."~ */ DO ~TakePartyGold(3)
~ GOTO 12
  IF ~~ THEN REPLY #7468 /* ~"Nieważne."~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from:
  SAY #30536 /* ~Ladacznica wykorzystuje okazję i ulatnia się.~ */
  IF ~~ THEN REPLY #30537 /* ~"Cholera, Anno..."~ */ DO ~EscapeArea()
~ EXIT
END
