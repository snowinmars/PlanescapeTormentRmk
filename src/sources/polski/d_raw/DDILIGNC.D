// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIGNC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIGNC~

IF ~  Global("Diligence","GLOBAL",0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~Ta starsza, poważnie wyglądająca kobieta z pewnością zdąża dokądś. Gdy zauważa, że się zbliżasz, wpatruje się w ciebie surowym, wyrażającym dezaprobatę wzrokiem.~ */
  IF ~~ THEN REPLY #29200 /* ~"Witaj..."~ */ DO ~SetGlobal("Diligence","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #29201 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29167 /* ~Kobieta przytakuje mało uprzejmie i przemawia chłodnym niczym lód głosem. "Tak? O co chodzi? I waż swoje słowa, jam bowiem Skrupulatna, Czwarty Sędzia tej Dzielnicy."~ */
  IF ~~ THEN REPLY #29202 /* ~"Jesteś *kim*?"~ */ GOTO 14
  IF ~~ THEN REPLY #29203 /* ~"Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #29204 /* ~"Czyżby mój wygląd cię niepokoił?"~ */ GOTO 2
  IF ~~ THEN REPLY #29205 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 14.1
  SAY #29168 /* ~"Jak najbardziej powinnam tak uważać! Należałoby ustanowić Przepisy Dotyczące Wyglądu, tak, by podobni tobie osobnicy nie mogli się włóczyć półnadzy i brudni - jak ty to robisz..."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29206 /* ~"Wybacz, ale jestem relatywnie czysty. I, bez obrazy, pani... ale istnieją pewne kultury, które mogłyby uznać *twoje* ubranie za uwłaczające."~ */ GOTO 3
  IF ~~ THEN REPLY #29207 /* ~"Jesteś bardzo szybka w ocenianiu innych po ich wyglądzie, czyż nie?"~ */ GOTO 9
  IF ~~ THEN REPLY #29208 /* ~"Wiesz, taki wygląd jest bardzo popularny w Ulu. Może powinnaś też spróbować. Może ci będzie pasować."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #29209 /* ~"Rozumiem. Mam parę pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #29210 /* ~"Hmm. Czas już iść. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 13.0
  SAY #29169 /* ~Przez chwilę przypatruje ci się sceptycznie, po czym przytakuje. "Dobrze to ująłeś, panie. Mimo to w dalszym ciągu nie mogę zaprzeczyć, że wyglądasz na raczej nieokiełznanego osobnika."~ */
  IF ~~ THEN REPLY #29211 /* ~"Mój wygląd to w głównej mierze skutek oddziaływania środowiska oraz ciężkiego życia. Nie powinno się mnie za to winić."~ */ GOTO 4
  IF ~~ THEN REPLY #29212 /* ~"Nie mogę. W żadnym wypadku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #29170 /* ~"Och, ależ powinno! Jakże łatwo jest obwiniać swoje życie, swoje otoczenie za każdą swą porażkę! Twe zachowanie świadczy o tym, że zdobyłeś niezłe wykształcenie, panie, zdajesz się jednak prowadzić awanturnicze i pełne bezsensownej przemocy życie. Dlaczego zamiast osiedlić się gdzieś w Sigil i stać się poważanym obywatelem, żyjesz pośród jego ulic niczym jakiś okrutny koczownik?"~ */
  IF ~~ THEN REPLY #29213 /* ~"Nie mam możliwości wyboru, zapewniam cię."~ */ GOTO 5
  IF ~~ THEN REPLY #29214 /* ~"Zastanowię się nad tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.0 25.0
  SAY #29171 /* ~"Och? Dlaczego?" Chłód, jaki wobec ciebie okazuje, zmienia się w ciekawość.~ */
  IF ~~ THEN REPLY #29215 /* ~"Ciężko to wyjaśnić..."~ */ GOTO 6
  IF ~~ THEN REPLY #29216 /* ~Opowiedz jej swą historię... A w zasadzie to, co z niej wiesz.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29217 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29172 /* ~"Mimo to, proszę byś to zrobił panie."~ */
  IF ~~ THEN REPLY #29218 /* ~Opowiedz jej swą historię... A w zasadzie to, co z niej wiesz."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29219 /* ~"Lepiej nie. To sprawa osobista. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #29173 /* ~Kończysz opowiadanie swojej historii.

Skrupulatna zdaje się być wstrząśnięta. "To... To brzmi niczym bajka, panie."~ */
  IF ~~ THEN REPLY #29220 /* ~"Gdyby to była bajka, pani. To moje życie. Posiadane przez mnie blizny - które dostrzegłaś, jak sądzę, gdy się po raz pierwszy spotkaliśmy - mogą temu zaświadczyć."~ */ DO ~SetGlobal("Diligence","GLOBAL",3)
~ GOTO 8
  IF ~~ THEN REPLY #29221 /* ~"Czyż nie? Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29174 /* ~"Tak, tak... Jasne." Uśmiecha się nieznacznie... co wyjaśnia twoje rozważania, czy jest w ogóle do czegoś takiego zdolna. "Życzę ci powodzenia w twych przedsięwzięciach, panie. Oby ci się udało ponownie siebie odnaleźć."~ */
  IF ~~ THEN REPLY #29222 /* ~"Dziękuję. Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #29223 /* ~"Dziękuję. Żegnaj, Madam Skrupulatna."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 13.1
  SAY #29175 /* ~"Chcesz mi w takim razie powiedzieć, że *nie* jesteś awanturnikiem włóczącym się po mieście i zadającym pytania wszystkim, którzy się mu napatoczą, i wdającym się we wcale nieprzypadkowe pojedynki na śmierć i życie z tymi, którzy wejdą ci w drogę?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29224 /* ~"Tak ma marginesie, pani, to jestem relatywnie czysty. I, bez obrazy... ale istnieją pewne kultury, które mogłyby uznać *twoje* ubranie za uwłaczające."~ */ GOTO 3
  IF ~~ THEN REPLY #29225 /* ~"Ech... cóż..."~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #29226 /* ~Kłamstwo: "To nieprawda."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
SetGlobal("Diligence","GLOBAL",2)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 19.2 21.2
  SAY #29176 /* ~Skrupulatna spogląda na ciebie chłodno. "Okłamujesz mnie. Nie będę tracić na ciebie czasu, panie. Powiedz jeszcze chodź słowo lub zbliż się do mnie ponownie, a zawołam straże. Teraz odejdź."~ */
  IF ~~ THEN REPLY #29227 /* ~"Ale..."~ */ GOTO 11
  IF ~~ THEN REPLY #29228 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 16.0 31.1
  SAY #29177 /* ~"Straż!"~ */
  IF ~~ THEN REPLY #29229 /* ~Zaatakuj ją.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29230 /* ~Spróbuj odejść, zanim się ktoś pojawi.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #29178 /* ~Jej usta układają się w ledwo widoczny szyderczy uśmiech. "Szybko oceniam, panie, ponieważ jestem sędzią z zawodu. Nie będę tracić na ciebie czasu. Powiedz jeszcze chodź słowo lub zbliż się do mnie ponownie, a zawołam straże. Teraz odejdź."~ */
  IF ~~ THEN REPLY #29231 /* ~"Ale..."~ */ GOTO 11
  IF ~~ THEN REPLY #29232 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #29179 /* ~Jej oczy zwężają się jeszcze bardziej. "Nie kpij sobie ze mnie, panie. Nie mam do tego cierpliwości. Powiedz mi teraz, czego chcesz ode mnie?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29233 /* ~"Wybacz mi nieuprzejmość, pani. Prawdę jednak mówiąc, jestem relatywnie czysty. I... bez obrazy... ale istnieją pewne kultury, które mogłyby uznać *twoje* ubranie za uwłaczające."~ */ GOTO 3
  IF ~~ THEN REPLY #29234 /* ~"Jesteś bardzo szybka w ocenianiu innych po ich wyglądzie, czyż nie?"~ */ GOTO 9
  IF ~~ THEN REPLY #29235 /* ~"Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #29236 /* ~"Hmmm. Czas już iść. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #29180 /* ~Skrupulatna wpatruje się w ciebie, na jej twarzy pojawia się lekki niesmak.~ */
  IF ~~ THEN REPLY #29237 /* ~"Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #29238 /* ~"Czyżby mój wygląd cię niepokoił?"~ */ GOTO 2
  IF ~~ THEN REPLY #29239 /* ~"Czas już iść. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 1.1 2.3 13.2 14.0 30.1
  SAY #29181 /* ~Skrupulatna parska śmiechem. "Nie jestem oprowadzaczem, panie, który w zamian za kilka monet zajmuje się odpowiadaniem na pytania przechodniów. Znajdź sobie kogoś innego, kto ci odpowie na twoje pytania. Ja mam ważne sprawy administracyjne, którymi muszę się zająć."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29240 /* ~"Wcale cię nie wziąłem za... oprowadzacza, pani. Po prostu wydałaś mi nad wyraz mądra, miałem więc nadzieję, że mi pomożesz."~ */ GOTO 17
  IF ~~ THEN REPLY #29241 /* ~"Tylko jedno pytanie, dobrze?"~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #29242 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29182 /* ~"Ani jedno. Zostaw mnie teraz! Powiedz jeszcze słowo lub ponownie mnie zaczep, a wezwę straże."~ */
  IF ~~ THEN REPLY #29243 /* ~"Ale..."~ */ GOTO 11
  IF ~~ THEN REPLY #29244 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0
  SAY #29183 /* ~"Mimo wszystko, panie, nie mam czasu na twoje pytania."~ */
  IF ~~ THEN REPLY #29245 /* ~"W takim razie przepraszam, pani, i dziękuję za poświęcony mi czas. Żegnaj."~ */ GOTO 18
  IF ~~ THEN REPLY #29246 /* ~"Dobrze, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29184 /* ~"Chwileczkę... Twe zachowanie świadczy o tym, że zdobyłeś niezłe wykształcenie, panie, zdajesz się jednak prowadzić awanturnicze i pełne bezsensownej przemocy życie. Dlaczego zamiast osiedlić się gdzieś w Sigil i stać się poważanym obywatelem, żyjesz pośród jego ulic niczym jakiś okrutny koczownik?"~ */
  IF ~~ THEN REPLY #29266 /* ~"Nie mam możliwości wyboru, zapewniam cię."~ */ GOTO 5
  IF ~~ THEN REPLY #29267 /* ~"Zastanowię się nad tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 13.3 14.2
  SAY #29185 /* ~"Nie tak szybko... Moment! Skupia na tobie swój wzrok. "Kim jesteś?"~ */
  IF ~~ THEN REPLY #29268 /* ~"Nie... Nie wiem."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29269 /* ~Kłamstwo: "Nazywam się Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29270 /* ~Kłamstwo: "Nazywam się Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #29271 /* ~"To nie twoja sprawa."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #29186 /* ~"Hmm. Dobrze, 'Adahn'. Żegnaj."~ */
  IF ~~ THEN REPLY #29272 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.3
  SAY #29187 /* ~"Bez powodu zaczepiłeś mnie na ulicy, naraziłeś na nieprzyjemność przebywania w twym towarzystwie, teraz zaś masz *czelność* mówić mi, że to nie moja sprawa? Sądzę, że to jest moja sprawa!"~ */
  IF ~~ THEN REPLY #29273 /* ~"Nie... Nie wiem."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29274 /* ~Kłamstwo: "Nazywam się Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29275 /* ~Kłamstwo: "Nazywam się Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #29188 /* ~"No, nie sądzisz chyba, że się tak łatwo wymigasz, nie? Twe imię: poznajmy je!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29276 /* ~"To trochę pogmatwana sytuacja, dlatego proszę cię o wyrozumiałość w tej sprawie: Ja naprawdę nie wiem, jak się nazywam. Zapomniałem siebie samego."~ */ GOTO 24
  IF ~~ THEN REPLY #29277 /* ~"Doprawdy nie wiem. Straciłem pamięć."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #29189 /* ~Spogląda na ciebie w milczeniu, krzywiąc się kwaśno. W końcu rzecze: "Dobrze. Zejdź z mego widoku i postaraj się unikać kłopotów."~ */
  IF ~~ THEN REPLY #29278 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #29190 /* ~"Uważnie dobierasz słowa, brzmi to jednak niczym szaleństwo." Marszczy brwi. "I czy to jednak prawda, że zapomniałeś samego siebie? Powiedz to jasno, rozważnie selekcjonując swe następne słowa."~ */
  IF ~~ THEN REPLY #29279 /* ~"Przysięgam, pani, że to prawda."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0 31.0
  SAY #29191 /* ~Po chwili wzdycha podkreślająco. "Twe zachowanie świadczy o tym, że zdobyłeś niezłe wykształcenie, panie, zdajesz się jednak prowadzić awanturnicze i pełne bezsensownej przemocy życie. Dlaczego zamiast osiedlić się gdzieś w Sigil i stać się poważanym obywatelem, żyjesz pośród jego ulic niczym jakiś okrutny koczownik?"~ */
  IF ~~ THEN REPLY #29280 /* ~"Nie mam możliwości wyboru, zapewniam cię."~ */ GOTO 5
  IF ~~ THEN REPLY #29281 /* ~"Zastanowię się nad tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 8.0 32.0
  SAY #29192 /* ~Potrząsa głową. "Przykro mi, ale jestem zabieganą kobietą, panie. Me stanowisko Czwartego Sędziego nie pozostawia mi zbyt dużo czasu na odpowiadanie na pytania. Jestem także przekonana, że mogą ci pomóc inni obywatele."~ */
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29282 /* ~"Zanim odejdziesz, pani... Czy mogę ośmielić się prosić cię o przysługę?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29283 /* ~"W takim razie żegnam, Madam Skrupulatna."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 32.1
  SAY #29193 /* ~Obrzuca cię ciekawskim spojrzeniem, nic jednak nie mówi.~ */
  IF ~~ THEN REPLY #29284 /* ~"Kręcąc się tutaj, obraziłem kilku miejscowych..."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29194 /* ~Kończyła zdanie za ciebie: "Co przyciągnęło uwagę Harmonium, jak sądzę? I obawiasz się teraz, że będą mieli cię na oku, nie?"~ */
  IF ~~ THEN REPLY #29285 /* ~"Tak, pani."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",-5)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29195 /* ~Potrząsa głową i zaczyna strofować cię niczym niegrzeczne dziecko. "Zrobię, co będę mogła, panie. Musisz się jednak na przyszłość postarać unikać tego typu konfliktów."~ */
  IF ~~ THEN REPLY #29286 /* ~"Jestem ci bardzo wdzięczny, Madam Skrupulatna. Żegnaj."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",1)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 30 // from:
  SAY #29196 /* ~Spogląda gniewnie, gdy widzi, jak się zbliżasz. "Wyglądasz znajomo..." Jej twarz przybiera jeszcze kwaśniejszy wyraz, marszcząc się niczym suszona śliwka. "Ach tak... Teraz cię sobie przypominam."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29287 /* ~"Pani... Obawiam się, że w czasie naszego poprzedniego spotkania nie okazałem ci należnego szacunku. Mam nadzieję, iż przyjmiesz moje przeprosiny."~ */ GOTO 25
  IF ~~ THEN REPLY #29288 /* ~"Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #29289 /* ~"Czas już iść. Żegnaj."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 31 // from:
  SAY #29197 /* ~Skrupulatna obrzuca cię pełnym odrazy spojrzeniem. "Czyż nie żądałam, byś się trzymał ode mnie z daleka? Ostrzegałam cię, że wezwę straże..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29290 /* ~"Madam Skrupulatna... Poczekaj, proszę cię. Obawiam się, że w czasie naszego poprzedniego spotkania nie okazałem ci należnego szacunku. Mam nadzieję, iż przyjmiesz moje przeprosiny."~ */ GOTO 25
  IF ~~ THEN REPLY #29291 /* ~"Ale mam parę pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #29292 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 32 // from:
  SAY #29198 /* ~Skrupulatna kiwa głową, gdy podchodzisz bliżej. "Witaj ponownie, panie."~ */
  IF ~~ THEN REPLY #29293 /* ~"Miło cię spotkać, Madam Skrupulatna. Mam kilka pytań..."~ */ GOTO 26
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29294 /* ~"Miło cię spotkać, droga pani. Czy mogę ośmielić się prosić cię o przysługę?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29295 /* ~"Tylko tędy przechodzę. Żegnaj, Madam Skrupulatna."~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 33 // from:
  SAY #29199 /* ~Kobieta wzdryga się zaskoczona twoim widokiem. "Czyżbyś był *szalony*, skoro posiadając taką reputację nachodzisz Czwartego Sędziego Dzielnicy? Straż! Straż!"~ */
  IF ~~ THEN REPLY #29296 /* ~Zaatakuj ją.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29297 /* ~Spróbuj odejść, zanim ktoś się zjawi.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END
