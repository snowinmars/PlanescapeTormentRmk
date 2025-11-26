// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFEM~

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #298 /* ~Kobieta Grabarz zdaje się ciebie nie zauważać. Najwidoczniej bierze cię za jednego z niumarłych pracowników.~ */
  IF ~~ THEN REPLY #299 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #318 /* ~"Kim jesteś?"~ */ GOTO 1
  IF ~~ THEN REPLY #1168 /* ~"Co to za miejsce?"~ */ GOTO 1
  IF ~~ THEN REPLY #1169 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #1170 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #1171 /* ~Kobieta podskakuje, po czym unosi gwałtownie głowę, by na ciebie spojrzeć. Zdaje się być zszokowana - twoje przebranie musi być naprawdę dobre.~ */
  IF ~~ THEN REPLY #1172 /* ~Wykorzystaj to, że jest zaskoczona i skręć jej kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #1174 /* ~"Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #1175 /* ~Odejdź. Jak najszybciej.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
  SAY #1176 /* ~Grabarz cofa się o krok, po czym klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #1225 /* ~"No dobrze..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1177 /* ~Ta blada kobieta ubrana jest w długie, ciemne szaty. Wokół niej roztacza się słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięta swoimi obowiązkami.~ */
  IF ~~ THEN REPLY #1226 /* ~"Witaj."~ */ GOTO 4
  IF ~~ THEN REPLY #1227 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #1228 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #1229 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #1230 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 3.3 40.2 40.3
  SAY #1178 /* ~Kobieta unosi powoli głowę i obraca się w twym kierunku. "Zgubiłeś się?"~ */
  IF ~~ THEN REPLY #1231 /* ~"Tak."~ */ GOTO 5
  IF ~~ THEN REPLY #1232 /* ~"Nie."~ */ GOTO 6
  IF ~~ THEN REPLY #1233 /* ~"Nie, nie zgubiłem się. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #1234 /* ~"Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.2 51.1
  SAY #1179 /* ~"Wezwę straż, by cię wyprowadziła. Poczekaj chwilę."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1235 /* ~Skręć jej kark, zanim zdąży zawołać.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1236 /* ~Skręć jej kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #1237 /* ~Odejdź. Jak najszybciej.~ */ GOTO 2
  IF ~~ THEN REPLY #1238 /* ~Poczekaj.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 51.2 51.3
  SAY #1180 /* ~"Skoro się nie zgubiłeś, to co tutaj robisz?"~ */
  IF ~~ THEN REPLY #1239 /* ~"To nie twoja sprawa."~ */ GOTO 7
  IF ~~ THEN REPLY #1240 /* ~"Obudziłem się na jednym ze stołów w sali przygotowawczej."~ */ GOTO 8
  IF ~~ THEN REPLY #1241 /* ~"Przyszedłem tu, żeby się z kimś zobaczyć."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1242 /* ~"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."~ */ GOTO 16
  IF ~~ THEN REPLY #1243 /* ~Odejdź. Jak najszybciej.~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0 20.0
  SAY #1181 /* ~"Obawiam się, że to jest moja sprawa. Być może straż pomoże rozwiązać ci język." Kobieta cofa się o krok. Wygląda na to, że chce wezwać straże.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1244 /* ~Skręć jej kark, zanim zdąży zawołać.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1245 /* ~Skręć jej kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #1246 /* ~"No to ich wezwij. Chętnie się z nimi spotkam."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.0 20.1
  SAY #1182 /* ~"Żarty sobie stroisz? Może chcesz się nimi podzielić ze strażą?" Grabarz cofa się o krok. Wygląda na to, że chce wezwać straże."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1247 /* ~Skręć jej kark, zanim zdąży zawołać.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1248 /* ~Skręć jej kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #1249 /* ~"No to ich wezwij. Chętnie się z nimi spotkam."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 20.2
  SAY #1183 /* ~"Z kim się chcesz zobaczyć?"~ */
  IF ~~ THEN REPLY #1251 /* ~"To nie twoja sprawa."~ */ GOTO 7
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1253 /* ~"Mam się zobaczyć z Dhallem."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1255 /* ~"Mam się zobaczyć z Dhallem."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #1258 /* ~"Jestem tu, żeby się zobaczyć z Deionarrą."~ */ GOTO 13
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #4336 /* ~"Jestem tu, żeby się zobaczyć z Deionarrą."~ */ GOTO 12
  IF ~  GlobalGT("Soego","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33224 /* ~"Jestem tu, żeby się zobaczyć z Soem."~ */ GOTO 15
  IF ~  GlobalGT("Soego","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33226 /* ~"Jestem tu, żeby się zobaczyć z Soem."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedTo(1)
~ THEN REPLY #33227 /* ~Kłamstwo: "Uch... z Adahnem. Nadal tu pracuje, czy...?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedToGT(1)
~ THEN REPLY #33229 /* ~Kłamstwo: "Uch... z Adahnem. Nadal tu pracuje, czy...?"~ */ GOTO 21
  IF ~~ THEN REPLY #33231 /* ~"Uch, z nikim. Przejęzyczyłem się."~ */ GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #1184 /* ~"Znajdziesz go w sali odbiorczej na tym piętrze. Muszę cię jednak przestrzec... Dhall jest wyjątkowo zajęty swoimi obowiązkami, poza tym nie jest okazem najlepszego zdrowia. Jeśli nie masz nadzwyczaj pilnej sprawy, lepiej byłoby mu nie przeszkadzać."~ */
  IF ~~ THEN REPLY #1259 /* ~"Świetnie. Dzięki za informacje."~ */ GOTO 48
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #1185 /* ~"Jest najprawdopodobniej w sali odbiorczej na pierwszym piętrze. Jest jednak wyjątkowo zajęty i nie grzeszy zbytnim zdrowiem. Jeśli nie masz nadzwyczaj pilnej sprawy, lepiej byłoby mu nie przeszkadzać."~ */
  IF ~~ THEN REPLY #1260 /* ~"Świetnie. Dzięki za informacje."~ */ GOTO 48
END

IF ~~ THEN BEGIN 12 // from: 9.4 19.1
  SAY #1186 /* ~"Deionarra? Wiem, że w sali pamięci na parterze pochowano jakąś kobietę. Może to była ona?"~ */
  IF ~~ THEN REPLY #1261 /* ~"Najprawdopodobniej. Dzięki."~ */ GOTO 48
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #1187 /* ~"Deionarra? Wiem, że w północno-zachodniej sali pamięci pochowano jakąś kobietę. Może to była ona?"~ */
  IF ~~ THEN REPLY #1262 /* ~"Najprawdopodobniej. Dzięki."~ */ GOTO 48
END

IF ~~ THEN BEGIN 14 // from: 9.6
  SAY #1188 /* ~"Sądzę, że Soe znajduje się gdzieś w pobliżu frontowej bramy na parterze. Pracuje jako przewodnik w godzinach antyszczytu."~ */
  IF ~~ THEN REPLY #1263 /* ~"Dobrze. Dzięki."~ */ GOTO 48
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #1189 /* ~"Sądzę, że znajdziesz go w pobliżu frontowej bramy. Pracuje jako przewodnik w godzinach antyszczytu."~ */
  IF ~~ THEN REPLY #1264 /* ~"Dobrze. Dzięki."~ */ GOTO 48
END

IF ~~ THEN BEGIN 16 // from: 6.3 20.3
  SAY #1190 /* ~"Kto miał zostać pochowany? Być może posługi te odbywają się w innym miejscu Kostnicy."~ */
  IF ~~ THEN REPLY #1265 /* ~"Źle mnie zrozumiałaś... To MNIE chciano przez pomyłkę pochować."~ */ GOTO 8
  IF ~~ THEN REPLY #1266 /* ~"Możliwe. W którym miejscu odbywają się te posługi?"~ */ GOTO 17
  IF ~~ THEN REPLY #1267 /* ~"Czy mogłabyś wskazać mi drogę do wyjścia?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #1191 /* ~"W obwodzie Kostnicy znajduje się kilka komnat pogrzebowych, które ciągną się wzdłuż krzywizny ścian na parterze i pierwszym piętrze. Znasz imię zmarłego?"~ */
  IF ~~ THEN REPLY #1268 /* ~"Nie."~ */ GOTO 18
  IF ~~ THEN REPLY #1269 /* ~"Tak."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #1192 /* ~"W takim razie powinieneś skonsultować się z którymś z przewodników przy frontowej bramie. Powinni ci pomóc."~ */
  IF ~~ THEN REPLY #1270 /* ~"Dobrze. Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #1193 /* ~Grabarz czeka.~ */
  IF ~~ THEN REPLY #1271 /* ~"Wybacz... Przejęzyczyłem się. Nie znam imienia zmarłego."~ */ GOTO 20
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #1272 /* ~"To imię to Deionarra."~ */ GOTO 12
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1273 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1274 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1275 /* ~Przybliż się tak, jakbyś chciał jej coś szepnąć na ucho, po czym skręć jej kark.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1276 /* ~Przybliż się tak, jakbyś chciał jej coś szepnąć na ucho, po czym skręć jej kark.~ */ GOTO 45
  IF ~~ THEN REPLY #1277 /* ~Uciekaj.~ */ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.9 19.0
  SAY #1194 /* ~"Rozumiem. Powiedz teraz, w jakiej sprawie tu jesteś?"~ */
  IF ~~ THEN REPLY #1278 /* ~"Nie twój interes."~ */ GOTO 7
  IF ~~ THEN REPLY #1279 /* ~"Obudziłem się na jednym ze stołów w sali przygotowawczej."~ */ GOTO 8
  IF ~~ THEN REPLY #1280 /* ~"Przyszedłem tu, żeby się z kimś zobaczyć."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1281 /* ~"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."~ */ GOTO 16
  IF ~~ THEN REPLY #1282 /* ~Uciekaj.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.7 9.8 19.2 19.3
  SAY #1195 /* ~"To imię jest mi obce. Skonsultuj się w tej sprawie z jednym z przewodników przy frontowej bramie... Oni będą w stanie pokierować cię lepiej niż ja."~ */
  IF ~~ THEN REPLY #1283 /* ~"Dobrze. Zrobię tak. Żegnaj."~ */ EXIT
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #1196 /* ~Ta blada kobieta ubrana jest w długie, ciemne szaty. Wokół niej roztacza się słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięta swoimi obowiązkami.~ */
  IF ~~ THEN REPLY #1284 /* ~"Witaj."~ */ GOTO 23
  IF ~~ THEN REPLY #1285 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #1197 /* ~Odwraca się powoli i zerka na twoje szaty. "Witaj, bracie wtajemniczony."~ */
  IF ~~ THEN REPLY #1286 /* ~"Kim jesteś"?~ */ GOTO 24
  IF ~~ THEN REPLY #1287 /* ~"Co to za miejsce?"~ */ GOTO 25
  IF ~~ THEN REPLY #1288 /* ~"Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #1289 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1198 /* ~"Mam do ciebie takie samo pytanie. Nie znam twojej twarzy. Kim jesteś?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1290 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1291 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1292 /* ~"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1293 /* ~"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #1199 /* ~"To Kostnica..." Kobieta wpatruje się w ciebie przez chwilę, jakby ważyła to, co właśnie powiedziałeś. "Mógłbyś powtórzyć, jak masz na imię?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1294 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1295 /* ~Kłamstwo: "To imię to... uch, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1296 /* ~"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1297 /* ~"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 26 // from: 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
  SAY #1200 /* ~Kobieta czeka cierpliwe, aż zaczniesz kontynuować.~ */
  IF ~~ THEN REPLY #1298 /* ~"Mogłabyś mi powiedzieć, jak stąd wyjść?"~ */ GOTO 27
  IF ~~ THEN REPLY #1299 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 28
  IF ~~ THEN REPLY #1300 /* ~"Zgubiłem dziennik. Nie widziałaś go czasem?"~ */ GOTO 39
  IF ~~ THEN REPLY #1328 /* ~"Nieważne. Przepraszam, że ci przeszkodziłem."~ */ GOTO 48
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #1201 /* ~"Najprościej będzie wyjść przez frontową bramę. Znajduje się ona na parterze."~ */
  IF ~~ THEN REPLY #1329 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #1330 /* ~"Dziękuję. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #1202 /* ~"To imię..." Grabarz przerywa na chwilę. "To imię *brzmi* znajomo... Wydaje mi się, że przypominam sobie Zbieracza, który się tak nazywał. Skryba Dhall powinien o nim wiedzieć."~ */
  IF ~~ THEN REPLY #1331 /* ~"Zbieracza?"~ */ GOTO 29
  IF ~~ THEN REPLY #1334 /* ~"Dhall?"~ */ GOTO 30
  IF ~~ THEN REPLY #1338 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #1395 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1203 /* ~"Zbieracze... Zabierają z ulic Sigil umarłych i przynoszą ich do Kostnicy." Grabarz przerywa, po czym marszczy brwi. "Nie jesteś stąd. Kim jesteś?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1396 /* ~"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1397 /* ~"Jestem... tu nowy. Sta... ram się przyswoić sobie pewne rzeczy."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1398 /* ~"No tak... Jak to było? Trwaj w wierze, uch, o wtajemniczona."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1399 /* ~"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #1204 /* ~"Dhall jest jednym z najbardziej poważanych spośród naszej frakcji. Nie znam nikogo, kto częściej rozmyślałby nad naturą Prawdziwej Śmierci i kto bardziej by na nią zasługiwał, niż on. Posiada sporą wiedzę, którą się może podzielić. Jeśli go nie znasz, proponuję ci, byś z nim porozmawiał, gdy tylko będziesz miał okazję. Nie pozostanie on już zbyt długo w cieniu tego istnienia."~ */
  IF ~~ THEN REPLY #4280 /* ~"Nie pozostanie on już zbyt długo w cieniu tego istnienia?"~ */ GOTO 31
  IF ~  Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4281 /* ~"Gdzie mogę znaleźć Dhalla?"~ */ GOTO 32
  IF ~  !Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4282 /* ~"Gdzie mogę znaleźć Dhalla?"~ */ GOTO 33
  IF ~~ THEN REPLY #4283 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #33245 /* ~"Dzięki za informacje. Porozmawiam z nim."~ */ GOTO 48
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 33.0
  SAY #1205 /* ~Potwierdza. "Dhall jest chory. Jest stary nawet jak na standardy githzerai. Następstwem choroby, której się nabawił, będzie niewątpliwie śmierć. I tak ma szczęście."~ */
  IF ~~ THEN REPLY #4284 /* ~"Standardy githzerai?"~ */ GOTO 34
  IF ~~ THEN REPLY #4285 /* ~"Co to jest *githzerai*?"~ */ GOTO 35
  IF ~~ THEN REPLY #4286 /* ~"Szczęście?"~ */ GOTO 36
  IF ~~ THEN REPLY #4287 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #4337 /* ~"Dziękuję za poświęcony mi czas. Muszę już iść."~ */ GOTO 48
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #1206 /* ~"Znajdziesz go w sali odbiorczej w północno-zachodnim narożniku tej kondygnacji. Muszę cię jednak przestrzec... Dhall jest bardzo zajęty... Resztę czasu, którego nie pochłaniają jego obowiązki, w głównej mierze zabiera mu jego choroba."~ */
  IF ~~ THEN REPLY #4288 /* ~"Dhall jest chory?"~ */ GOTO 31
  IF ~~ THEN REPLY #4289 /* ~"Dziękuję za poświęcony mi czas. Muszę już iść. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #1207 /* ~"Znajdziesz go najpewniej w sali odbiorczej na pierwszym piętrze. Muszę cię jednak przestrzec... Dhall jest bardzo zajęty... Resztę czasu, którego nie pochłaniają jego obowiązki, w głównej mierze zabiera mu jego choroba."~ */
  IF ~~ THEN REPLY #4290 /* ~"Dhall jest chory?"~ */ GOTO 31
  IF ~~ THEN REPLY #4291 /* ~"Dziękuję za poświęcony mi czas. Muszę już iść. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 31.0
  SAY #1208 /* ~"Tak, średnia życia githzerai jest znacznie dłuższa niż ludzi."~ */
  IF ~~ THEN REPLY #4292 /* ~"Co to jest *githzerai*?"~ */ GOTO 35
  IF ~~ THEN REPLY #4293 /* ~"Dlaczego śmierć Dhalla miałaby być szczęściem? Czyż nie jest on lubiany?"~ */ GOTO 36
  IF ~~ THEN REPLY #4294 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #4295 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 35 // from: 31.1 34.0
  SAY #1209 /* ~"Githzerai to..." Przerywa, po czym zaczyna przeglądać ci się uważne. "Nie jesteś tutejszy. Kim jesteś?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4296 /* ~"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4297 /* ~"Jestem... tu nowy. Sta... ram się przyswoić sobie pewne rzeczy."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4298 /* ~"No tak... Jak to było? Trwaj w wierze, uch, o wtajemniczona."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4300 /* ~"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 31.2 34.1
  SAY #1210 /* ~"Ma szczęście, gdyż osiągnie Prawdziwą Śmierć. Nie będzie już musiał żyć w cieniu tego istnienia."~ */
  IF ~~ THEN REPLY #4299 /* ~"I... to jest czymś dobrym?"~ */ GOTO 37
  IF ~~ THEN REPLY #4301 /* ~"Rozumiem. To rzeczywiście wyjątkowe szczęście. Mam kilka innych pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #4302 /* ~"Rozumiem. Cóż, muszę cię już opuścić. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #1211 /* ~Kobieta przytakuje. "Tak." Marszczy brwi, po czym przygląda ci się uważnie. "Nie jesteś tutejszy. Kim jesteś?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4303 /* ~"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4304 /* ~"Jestem... tu nowy. Sta... ram się przyswoić sobie pewne rzeczy."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4305 /* ~"No tak... Jak to było? Trwaj w wierze, uch, o wtajemniczona."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4306 /* ~"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from:
  SAY #1212 /* ~"Nie jesteś jednym z nas, nieprawdaż? Co tu robisz? Jesteś członkiem Anarchistów? Albo szpiegiem którejś z innych frakcji?" Grabarz cofa się o krok do tyłu. "Straż! Straż!"~ */
  IF ~~ THEN REPLY #4307 /* ~"Cholera!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #4308 /* ~"Ciiii! Nie mogę ci odpowiedzieć przez te twoje krzyki!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #4309 /* ~"Ciiii! Nie mogę ci odpowiedzieć przez te twoje krzyki!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 26.2
  SAY #1213 /* ~"Dziennik? Nie widziałam żadnego."~ */
  IF ~~ THEN REPLY #4310 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #4311 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1214 /* ~Ta blada kobieta ubrana jest w długie, ciemne szaty. Roztacza się wokół niej słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięta swoimi obowiązkami.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #4312 /* ~"Witaj."~ */ EXTERN ~DMORTE~ 81
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #4313 /* ~"Witaj."~ */ EXTERN ~DMORTE~ 83
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #4314 /* ~"Witaj."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4315 /* ~"Witaj."~ */ GOTO 4
  IF ~~ THEN REPLY #4316 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.0 5.1 7.1 8.1 47.1
  SAY #1215 /* ~Nim ma szanse wypowiedzieć choćby słowo, zaciskasz swe dłonie wokół jej skroni i przekręcasz jej głowę gwałtownie w lewą stronę.~ */
  IF ~~ THEN REPLY #4317 /* ~"Nie mogę dopuścić, byś powiadomiła swoich przyjaciół..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 45.0
  SAY #1216 /* ~Następuje *chrupnięcie* i kobieta pada bezwładnie w twe ramiona.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4318 /* ~"Lepiej ty niż ja, Grabie."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
AddexperienceParty(15)
~ GOTO 43
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4319 /* ~"Lepiej ty niż ja, Grabie."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #1217 /* ~Ku twemu zdziwieniu wykonałeś to instynktownie, jakbyś już wcześniej robił to wiele razy... Przemyśleniu temu towarzyszą przebłyski wspomnień, są jednak zbyt słabe, by się w pełni ujawnić.~ */
  IF ~~ THEN REPLY #4320 /* ~Zostaw ciało i kontynuuj.~ */ DO ~Kill(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0 7.0 8.0 19.4 47.0
  SAY #1218 /* ~Nie okazujesz się dostatecznie szybki i kobieta wykonuje unik, gdy się na nią rzucasz. Następnie cofa się o krok, po czym klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #4321 /* ~"No dobrze..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.5
  SAY #1219 /* ~Gdy się przybliżasz, by jej coś szepnąć, ona się również przybliża. Gdy tylko wkracza zasięg twych ramion, zaciskasz swe dłonie wokół jej skroni i przekręcasz jej głowę gwałtownie w lewą stronę.~ */
  IF ~~ THEN REPLY #4322 /* ~"Nie mogę dopuścić, byś powiadomiła swoich przyjaciół..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 24.3 25.3 29.3 35.3 37.3 49.3 50.1
  SAY #1220 /* ~Grabarz wydaje się być podejrzliwa. Wygląda na to, że chce coś powiedzieć, po czym potrząsa nieznacznie głową i wraca do swoich zajęć.~ */
  IF ~~ THEN REPLY #4323 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
  SAY #1221 /* ~Grabarz przygląda ci się dokładnie. "Nie jesteś jednym z nas, nieprawdaż? Co tu robisz? Jesteś członkiem Anarchistów? Albo szpiegiem którejś z innych frakcji? Zdaje się, że powinna się tym zająć straż..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4324 /* ~Skręć jej kark, zanim zdąży zawołać.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4325 /* ~Skręć jej kark, zanim zdąży zawołać.~ */ GOTO 41
  IF ~~ THEN REPLY #4326 /* ~Odejdź. Jak najszybciej.~ */ GOTO 2
  IF ~~ THEN REPLY #4327 /* ~"Nie, nie... To nie tak, eee... To znaczy nie jestem szpiegiem... Rozumiesz, obudziłem się ma jednym ze stołów... i..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 48 // from: 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
  SAY #1222 /* ~Grabarza kiwa głową, po czym powraca do swoich zajęć.~ */
  IF ~~ THEN REPLY #4328 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0 24.1 25.0 25.1
  SAY #1223 /* ~Grabarz marszczy brwi. "Imię to jest mi obce."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4329 /* ~"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4331 /* ~"Jestem... tu nowy. Sta... ram się poznać zasady."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4332 /* ~"No tak... Jak to było? Trwaj w wierze, uch, o wtajemniczona."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4333 /* ~"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."~ */ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 29.0 35.0 37.0 49.0
  SAY #1224 /* ~Nadal patrzy na ciebie krzywo, skłania jednakże lekko głową. "Dobrze. W czym mogę ci pomóc, wtajemniczony?"~ */
  IF ~~ THEN REPLY #4334 /* ~"Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #4335 /* ~"Nie tym razem. Żegnaj."~ */ GOTO 46
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #66683 /* ~Grabarz spogląda na ciebie kamiennym wzrokiem. "Zgubiłeś się?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66684 /* ~"Nie, jestem członkiem frakcji. Zwiedzam jedynie Kostnicę."~ */ GOTO 52
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66685 /* ~"Tak."~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66686 /* ~"Nie."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66687 /* ~"Nie, nie zgubiłem się. Mam kilka pytań..."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66688 /* ~"Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #66689 /* ~Grabarz wpatruje się w ciebie przez chwilę, po czym kiwa głową. "Dobrze. Gdybyś potrzebował pomocy, daj mi znać."~ */
  IF ~~ THEN REPLY #66690 /* ~"Zrobię tak. Żegnaj."~ */ EXIT
END
