// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUUYIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUUYIN~

IF ~  GlobalGT("KYName","GLOBAL",2)
GlobalLT("KYName","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #20109 /* ~Przygnębiony mężczyzna spogląda na ciebie z błyskiem nadziei w oczach, odzywa się jednak, jak zawsze - bez emocji. "Czy podała ci me imię i numer? Zaproponowała ci pieniądze, czyż nie? Nie mogę tak żyć. Jeżeli nie ma się imienia, pieniądze nie mają żadnej wartości. Zdobądź me imię. Dała ci je?" Jego wzrok powoli przesuwa się po twej twarzy, obserwując uważnie.~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20110 /* ~"Tak. Zrobiła to."~ */ GOTO 5
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20111 /* ~Kłamstwo: "Nie. Jeszcze nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20112 /* ~"Nie. Jeszcze nie."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20113 /* ~"Nie. Jeszcze nie. Nadal nad tym pracuję. Żegnaj."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #45396 /* ~"Zaproponowała mi za nie pieniądze."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.1 17.0
  SAY #20114 /* ~Nagły skurcz mięśni trzęsie jego twarzą. "Wybacz mi." mówi, "Gdyż w mym umyśle błędnie cię oceniłem. Z twej twarzy czytam, że masz me imię i numer, jednak słyszę w twym głosie, że tak nie jest. Zapytam raz jeszcze. Czy masz me imię i numer?"~ */
  IF ~~ THEN REPLY #20115 /* ~Kłamstwo: "Nie, nie mam."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #20116 /* ~"Tak, mam."~ */ GOTO 5
  IF ~~ THEN REPLY #20117 /* ~"Najpierw odpowiedz mi na kilka pytań, dobrze?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20118 /* ~"Trzy razy muszę zapytać, nim pytać już mógł nie będę. Takie jest prawo. Czy masz me imię i numer?"~ */
  IF ~~ THEN REPLY #20119 /* ~Kłamstwo: "Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #20120 /* ~"Tak."~ */ GOTO 5
  IF ~~ THEN REPLY #20121 /* ~"Najpierw odpowiedz mi na kilka pytań, dobrze?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 2.2 5.2 6.1
  SAY #20122 /* ~"Nie ma tu sprawiedliwości. Skrzywdzono mnie i nie mogę o tym mówić. Jestem niczym i niczym pozostanę na wieki. Nie zobaczę cię już nigdy."~ */
  IF ~~ THEN REPLY #20123 /* ~"Zaczekaj. Tak naprawdę, to mam twoje imię i numer..."~ */ JOURNAL #66390 /* ~Kiedy zaproponowałem Ku'u Yinowi zwrot jego imienia i numeru, człowiek ten odmówił. A żeby go tak Dziewięć Piekieł pochłonęło!~ */ GOTO 4
  IF ~~ THEN REPLY #20124 /* ~"Odpowiedz mi na kilka pytań, dobrze?"~ */ GOTO 4
  IF ~~ THEN REPLY #20125 /* ~"W porządku. Jeśli tak chcesz to załatwić."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #20126 /* ~Potrząsa głową, odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #20127 /* ~"Zatem, żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.1 2.1 17.1
  SAY #20128 /* ~"Czy mogę o nie prosić?"~ */
  IF ~~ THEN REPLY #20129 /* ~"Co za nie dostanę?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_2","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #20130 /* ~"Tak. Twe imię jest Ku'u Yin. Weź swój numer."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_KY_1","GLOBALGood",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 7
  IF ~~ THEN REPLY #20131 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20132 /* ~"Niczego nie mogę ci dać, bo sam niczego nie mam. Czy oddasz mi me imię i numer?"~ */
  IF ~~ THEN REPLY #20133 /* ~"Tak. Twe imię jest Ku'u Yin. Weź swój numer."~ */ DO ~TakePartyItemNum("KYName",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #20134 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_3","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #20135 /* ~"Dziękuję za me imię i numer. Tak. Ku'u Yin. Tak. Ale nie. Teraz uświadomiłem sobie, że tutaj już nie muszę mieć numeru. Sam znajdę sobie numer, jeśli będzie trzeba. Dam ci mój stary numer. To może ci pomóc. To osłona w prawie. Zabezpieczenie. Zgadzasz się?"~ */
  IF ~~ THEN REPLY #20136 /* ~"Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_2","GLOBALLaw",4)
~ GOTO 9
  IF ~~ THEN REPLY #20137 /* ~"Nie."~ */ DO ~TakePartyItemNum("KYName",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20138 /* ~Przyjmuje je z powagą. "Dziękuję za me imię i numer. Tak. Ku'u Yin. Tak. Jestem ci wdzięczny. Będę o tobie pamiętał." Zarzuca swój numer dookoła szyi jak szal, a ten zatapia się w jego skórę. Zaczyna odchodzić.~ */
  IF ~~ THEN REPLY #20139 /* ~"Zaczekaj. Mam jeszcze kilka pytań..."~ */ JOURNAL #66391 /* ~Zwróciłem Ku'u Yinowi jego imię i numer, ale on nie dał mi niczego w zamian. Może niepotrzebnie próbowałem go szantażować....~ */ GOTO 10
  IF ~~ THEN REPLY #20140 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ JOURNAL #66391 /* ~Zwróciłem Ku'u Yinowi jego imię i numer, ale on nie dał mi niczego w zamian. Może niepotrzebnie próbowałem go szantażować....~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #20141 /* ~"Niech cię ogrzewa. Zaufaj mu. Będzie cię chronił. Żegnaj." Odwraca się i zaczyna odchodzić.~ */
  IF ~~ THEN REPLY #20142 /* ~"Zaczekaj. Mam jeszcze kilka pytań..."~ */ JOURNAL #66392 /* ~Zwróciłem Ku'u Yinowi jego imię i numer. On w zamian za to oferował mi swój numer, mówiąc, że będzie numer ten będzie mnie ogrzewał i ochraniał.~ */ GOTO 10
  IF ~~ THEN REPLY #20143 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ JOURNAL #66392 /* ~Zwróciłem Ku'u Yinowi jego imię i numer. On w zamian za to oferował mi swój numer, mówiąc, że będzie numer ten będzie mnie ogrzewał i ochraniał.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0 13.0 14.0
  SAY #20144 /* ~"Co to za pytania?"~ */
  IF ~~ THEN REPLY #20145 /* ~"Opowiedz mi o sobie."~ */ GOTO 11
  IF ~~ THEN REPLY #20146 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 12
  IF ~~ THEN REPLY #20147 /* ~"Co robisz?"~ */ GOTO 13
  IF ~~ THEN REPLY #20148 /* ~"Nic. Zapomnij o tym. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #20149 /* ~"Jestem Ku'u Yin. Znalazłem się tu przez przypadek. Teraz, gdy już tu jestem, zamierzam nauczyć się więcej. Muszę wiedzieć więcej."~ */
  IF ~~ THEN REPLY #20150 /* ~"Mam jeszcze pytania..."~ */ GOTO 10
  IF ~~ THEN REPLY #20151 /* ~"Powodzenia. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20152 /* ~"Zamierzam sam to odkryć. Mając imię, znowu jestem osobą. Mogę się uczyć. Tak też zrobię."~ */
  IF ~~ THEN REPLY #20153 /* ~"Mam jeszcze pytania..."~ */ GOTO 10
  IF ~~ THEN REPLY #20154 /* ~"Powodzenia. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #20155 /* ~"Przygotowuję się na stawienie czoła nowemu światu, z moją dawną tożsamością. Teraz, gdy wiem że jest wiele ukrytych pułapek, zamierzam odkryć co potrafię. Teraz jestem gotów."~ */
  IF ~~ THEN REPLY #20156 /* ~"Mam jeszcze pytania..."~ */ GOTO 10
  IF ~~ THEN REPLY #20157 /* ~"Powodzenia. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #20158 /* ~Zarzuca swój numer dookoła szyi jak szal, a ten zatapia się w jego skórę. Zaczyna odchodzić. "Będę zatem nosił mój dawny numer. Jestem ci wdzięczny. Żegnaj." Odwraca się i zaczyna odchodzić w kierunku wyjścia.~ */
  IF ~~ THEN REPLY #20159 /* ~"Mam jeszcze pytania..."~ */ GOTO 10
  IF ~~ THEN REPLY #20160 /* ~"Powodzenia. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.2 0.3
  SAY #20161 /* ~Kiedy podchodzisz, odzywa się stanowczo. "Błagam cię, spróbuj dogadać się z tą złodziejką. Bez mego imienia i numeru jestem niczym."~ */
  IF ~~ THEN REPLY #20162 /* ~"Ruszam w drogę. Ale najpierw odpowiedz na kilka pytań, dobrze?"~ */ GOTO 16
  IF ~~ THEN REPLY #20163 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.1 19.0 20.0 20.3 21.2 22.0 22.1 23.0 23.1 24.0
  SAY #20164 /* ~"Co chcesz wiedzieć?"~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20165 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20166 /* ~"Opowiedz mi o sobie."~ */ GOTO 20
  IF ~~ THEN REPLY #20167 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 21
  IF ~~ THEN REPLY #20168 /* ~"Opowiedz mi o Sigil."~ */ GOTO 21
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20169 /* ~"Nic. Żegnaj."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20170 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",0)
GlobalLT("KYName","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #20171 /* ~"Czy znalazłeś już kobietę z moim imieniem i numerem? Powie ci, że wygrała to imię ode mnie, ale to nieprawda. Ukradła je. Potrzebuję mojego imienia i numeru. Ona jest gdzieś w Wiosce."~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20172 /* ~Kłamstwo: "Nie, jeszcze nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 1
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20173 /* ~"Mam twoje imię i numer."~ */ GOTO 5
  IF ~  Global("KYName","GLOBAL",2)
!PartyHasItem("KYName")
~ THEN REPLY #20174 /* ~"Tak. Ale nie chce ich oddać."~ */ DO ~SetGlobal("KYName","GLOBAL",3)
~ GOTO 18
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20175 /* ~"Niestety, jeszcze ich nie mam."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #20176 /* ~Blednie na chwilę. "Musi mi je oddać. Są moje. Ukradła mi je. Proszę cię o pomoc."~ */
  IF ~~ THEN REPLY #20177 /* ~"Przecież jej udzielam."~ */ GOTO 19
  IF ~~ THEN REPLY #20178 /* ~"Może gdybyś odpowiedział jeszcze na kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #20179 /* ~"Zapomnij."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.3 18.0 18.2
  SAY #20180 /* ~"Potrzebuję pomocy. Każdą pomoc, jaką mi okażesz będę pamiętał z wdzięcznością. Pomóż proszę."~ */
  IF ~~ THEN REPLY #20181 /* ~"Może zaczniemy od tego, że odpowiesz na kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #20182 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 16.4 21.0 21.1 21.3
  SAY #20183 /* ~"Kiedyś żyłem w kraju metalowych maszyn i drzwi, które otwierały się na jedno słowo. Marzę o nieskazitelnych, metalowych miastach i pustych skorupach - naszych ludziach. Miałem tam imię i numer, a teraz nie mam żadnego z nich. Jak wszyscy podobni do mnie, imię i numer to wszystko co posiadamy. To wszystko co posiadałem na własność przez całe moje życie. I skradziono mi je. Bez nich jestem niczym. Proszę cię o pomoc."~ */
  IF ~~ THEN REPLY #20184 /* ~"Zobaczę co da się zrobić. Odpowiedz mi na kilka pytań..."~ */ JOURNAL #66389 /* ~Spotkałem osobliwego człowieka, który oświadczył, że skradziono mu jego imię oraz numer. Wydaje się, że mąż ten pochodzi z krainy metalowego porządku, gdzie wszystkie rzeczy mają swoje stałe miejsce i numer. Dlatego też ograbiony ze swoich parametrów, człowiek ten czuje się bezbronny i nagi.~ */ GOTO 16
  IF ~~ THEN REPLY #20185 /* ~"Kto ma twoje imię i numer?"~ */ JOURNAL #66389 /* ~Spotkałem osobliwego człowieka, który oświadczył, że skradziono mu jego imię oraz numer. Wydaje się, że mąż ten pochodzi z krainy metalowego porządku, gdzie wszystkie rzeczy mają swoje stałe miejsce i numer. Dlatego też ograbiony ze swoich parametrów, człowiek ten czuje się bezbronny i nagi.~ */ GOTO 23
  IF ~~ THEN REPLY #20186 /* ~"Co możesz mi dać?"~ */ JOURNAL #66389 /* ~Spotkałem osobliwego człowieka, który oświadczył, że skradziono mu jego imię oraz numer. Wydaje się, że mąż ten pochodzi z krainy metalowego porządku, gdzie wszystkie rzeczy mają swoje stałe miejsce i numer. Dlatego też ograbiony ze swoich parametrów, człowiek ten czuje się bezbronny i nagi.~ */ GOTO 22
  IF ~~ THEN REPLY #20187 /* ~"Zobaczymy. Odpowiedz mi na kilka innych pytań."~ */ JOURNAL #66389 /* ~Spotkałem osobliwego człowieka, który oświadczył, że skradziono mu jego imię oraz numer. Wydaje się, że mąż ten pochodzi z krainy metalowego porządku, gdzie wszystkie rzeczy mają swoje stałe miejsce i numer. Dlatego też ograbiony ze swoich parametrów, człowiek ten czuje się bezbronny i nagi.~ */ GOTO 16
  IF ~~ THEN REPLY #20188 /* ~"Zobaczymy. Żegnaj."~ */ JOURNAL #66389 /* ~Spotkałem osobliwego człowieka, który oświadczył, że skradziono mu jego imię oraz numer. Wydaje się, że mąż ten pochodzi z krainy metalowego porządku, gdzie wszystkie rzeczy mają swoje stałe miejsce i numer. Dlatego też ograbiony ze swoich parametrów, człowiek ten czuje się bezbronny i nagi.~ */ EXIT
  IF ~~ THEN REPLY #20189 /* ~"Spróbuję. Żegnaj."~ */ JOURNAL #66389 /* ~Spotkałem osobliwego człowieka, który oświadczył, że skradziono mu jego imię oraz numer. Wydaje się, że mąż ten pochodzi z krainy metalowego porządku, gdzie wszystkie rzeczy mają swoje stałe miejsce i numer. Dlatego też ograbiony ze swoich parametrów, człowiek ten czuje się bezbronny i nagi.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.2 16.3
  SAY #20190 /* ~"Nic o nim nie wiem. Nie znam tego miejsca. Nie mam imienia. Nie mam numeru. Nic nie pamiętam o tym miejscu. Zimno mi. Boję się. To dziwne, być takim nagim. Boję się, że umrę."~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20191 /* ~"Co masz na myśli?"~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20192 /* ~"Co masz na myśli?"~ */ GOTO 20
  IF ~~ THEN REPLY #20193 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20194 /* ~"Hm. To ciekawe. Żegnaj."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20195 /* ~"Hm. To ciekawe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY #20196 /* ~"Nie mam niczego. Proszę cię o pomoc."~ */
  IF ~~ THEN REPLY #20197 /* ~"Zobaczę co da się zrobić. Odpowiedz na kilka innych pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #20198 /* ~"Zobaczymy. Odpowiedz na kilka innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #20199 /* ~"Zatem, zapomnij o tym. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #20200 /* ~"Spróbuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #20201 /* ~"Nazywała się Radine. Ukradła mi je. Zaproponowałem jej schronienie pod moim imieniem i numerem, a ona mi je ukradła. Legalnie i zgodnie z prawem należą do mnie. Znajdź ją. Jest w tej Wiosce."~ */
  IF ~~ THEN REPLY #20202 /* ~"Zobaczę co da się zrobić. Odpowiedz na kilka innych pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #20203 /* ~"Ciężka sprawa. Odpowiedz mi kilka innych pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #20204 /* ~"Zobaczę, co da się zrobić."~ */ EXIT
  IF ~~ THEN REPLY #20205 /* ~"Masz pecha. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 24 // from:
  SAY #20206 /* ~Widzisz szarego mężczyznę, z twarzą w kształcie księżyca. Patrzy na ciebie bez wyrazu i nie odzywa się. Wygląda, jakby jego głos miał być równie monotonny jak łąka.~ */
  IF ~~ THEN REPLY #20207 /* ~"Witaj. Zastanawiałem się, czy nie mógłbyś odpowiedzieć mi na kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #20208 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.4
  SAY #45395 /* ~"Żadne pieniądze nie są w stanie kupić imienia. Żadna suma nie jest w stanie kupić numeru. Monety to marna rekompensata za tożsamość. Z pewnością to rozumiesz."~ */
  IF ~~ THEN REPLY #45397 /* ~"Tak, rozumiem. Zrobię co będę mógł. Żegnaj."~ */ EXIT
END
