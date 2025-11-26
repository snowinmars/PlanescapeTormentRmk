// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVES~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 67 71 even though they appear after this state */
~  Global("Yves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3005 /* ~Ta ponętna młoda kobieta patrzy na ciebie nieobecnym wzrokiem. Ma delikatne oczy o barwie toni morskiej.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3006 /* ~"Witaj..."~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39201 /* ~"Witaj..."~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #39202 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39203 /* ~"Witaj. Jestem Yves Opowiadaczka."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 407
END

IF ~~ THEN BEGIN 2 // from:
  SAY #39204 /* ~Yves kontynuuje, nie zmieszana. "Czy jesteś tutaj, aby wymienić się opowieściami?"~ */
  IF ~~ THEN REPLY #39205 /* ~"Chciałbym wymienić się opowieściami."~ */ GOTO 19
  IF ~~ THEN REPLY #39206 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #39207 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #39208 /* ~"Witaj. Jestem Yves Opowiadaczka. Czy jesteś tutaj, aby wymienić się opowieściami?"~ */
  IF ~~ THEN REPLY #39209 /* ~"Chciałbym wymienić się opowieściami."~ */ GOTO 19
  IF ~~ THEN REPLY #39210 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #39211 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.0 7.1 8.0 9.1 10.0 11.0 12.1 14.1 15.1 16.1 17.1 19.11 20.5 21.1 22.1 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 62.1 63.5 64.1 65.1 66.12 67.1 68.0 69.0 70.0 71.1 72.1 73.1 74.1 75.0 76.1 77.1 78.1 79.1 80.0 81.1
  SAY #39212 /* ~Yves cichutko kiwa głową na potwierdzenie.~ */
  IF ~~ THEN REPLY #39213 /* ~"Dlaczego nazywasz się 'Opowiadaczką'?"~ */ DO ~SetGlobal("Yves","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #39214 /* ~"Co tutaj robisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #39215 /* ~"Czy możesz mi opowiedzieć o tym miejscu?"~ */ DO ~SetGlobal("Know_Yves_Grace","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Yvana","GLOBAL",1)
~ THEN REPLY #39216 /* ~"Yves... wyglądasz znajomo. Czy twoja matka zwie się Ivana?"~ */ GOTO 68
  IF ~  GlobalGT("Yvana","GLOBAL",1)
~ THEN REPLY #39217 /* ~"Czy rozmawiałaś ostatnio ze swoją matką, Yves?"~ */ DO ~SetGlobal("Yvana","GLOBAL",3)
~ GOTO 69
  IF ~~ THEN REPLY #39218 /* ~"Wymienimy opowieści?"~ */ GOTO 19
  IF ~  GlobalGT("Yves_Shared","AR0605",0)
~ THEN REPLY #39219 /* ~"Czy możesz raz jeszcze opowiedzieć mi jedną z historii, którymi się już podzieliłaś?"~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39220 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 70
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67851 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 70
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39221 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ JOURNAL #66754 /* ~Zapytałem Yves, czy to prawda, że Kesai-Serris jest córką Raveli, ale ona w zamian zafundowała mi opowiastkę o tym, jak to trzeba głęboko drążyć, aby dokopać się do prawdy. Morał z tego zapewne taki, że muszę dalej chodzić i pytać.~ */ GOTO 8
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39222 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ JOURNAL #66727 /* ~Jedna z kurtyzan poradziła mi, abym zwrócił się do Nenny i zorientował się, czy nie wie czegoś o osobistym zapachu Vivian. Nenny uchodzi za osobę, która zawsze wie, co się dzieje w jej otoczeniu.~ */ GOTO 6
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39223 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 5
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39224 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 7
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39225 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 6
  IF ~~ THEN REPLY #39226 /* ~"Właściwie nic to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.11
  SAY #39227 /* ~Yves kręci przecząco głową. "Ale opowieść Marissy jest interesująca. Czy mam ją opowiedzieć?"~ */
  IF ~~ THEN REPLY #39228 /* ~"Tak. Mów."~ */ GOTO 11
  IF ~~ THEN REPLY #39229 /* ~"Jeszcze nie. Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39230 /* ~"Nie teraz. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.10 4.13
  SAY #39231 /* ~Yves kręci przecząco głową. "Porozmawiaj z Nenny... ona zawsze się tutaj kręci i wszystko dokładnie obserwuje."~ */
  IF ~~ THEN REPLY #39232 /* ~"Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39233 /* ~"Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.12
  SAY #39234 /* ~"Opowieść o Raveli Szaradnej, postrachu dzieci, zaczyna się i kończy pytaniem: 'Cóż może zmienić naturę człowieka?'"~ */
  IF ~~ THEN REPLY #39235 /* ~"Mów dalej..."~ */ GOTO 15
  IF ~~ THEN REPLY #39236 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39241 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.9
  SAY #39242 /* ~"Pewnego razu zaginął pewien staruszek z Dzielnicy Urzędników, zaś jego ciała nie można było odnaleźć. Aby je ukryć, morderca zakopał ciało staruszka pod ciałem innego człowieka na cmentarzu. Wróżbita wskazał miejsce, w którym ciało się znajdowało, więc zaczęto tam kopać. Wydobyto wnet ciało, ale nie było to ciało staruszka. Wszyscy byli strapieni i zakłopotani. Byli zmuszeni zwolnić podejrzanego. Ciało staruszka znaleźli dopiero wtedy, gdy zaczęli kopać, aby ponownie pogrzebać to pierwsze ciało."

"Czasem trzeba kopać głęboko, aby dokopać się do prawdy."~ */
  IF ~~ THEN REPLY #39243 /* ~"Rozumiem... Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39244 /* ~"Rozumiem... Popytam tu i tam. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 14.0
  SAY #39245 /* ~"Pewnego razu jedna dziewczyna przyszła do wyroczni, która, jak niosła wieść, wiedziała o wielu sprawach i dopraszała się za to dobrodziejstwa. Życie tej dziewczyny nie miało żadnego kierunku, tak więc spytała wyroczni, gdzie znalazłaby cel życia..."~ */
  IF ~~ THEN REPLY #39246 /* ~"Mów dalej..."~ */ GOTO 10
  IF ~~ THEN REPLY #39247 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39248 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #39249 /* ~"Wyrocznia nie była zła, ale udzielała wymijających odpowiedzi i miała skłonność do picia. Powodowało to niejasności w wielu osądach. Jedyna odpowiedź na pytanie dziewczyny, jaką wyrocznia udzieliła, mówiła o tym, że jedna z opowieści, którą dziewczyna usłyszy w ciągu życia, będzie zawierać prawdę przez nią poszukiwaną. Dziewczyna odeszła i zaczęła zbierać opowieści, co czyni po dziś dzień, nie wiedząc, która z tysiąca historii zawiera tę jedyną prawdę."

"Takie niebezpieczeństwo niesie ze sobą głupie pytanie; taka jest mądrość niewypowiedzianego."~ */
  IF ~~ THEN REPLY #39250 /* ~"Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39251 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #39252 /* ~"Pewnego razu w świecie herosów i w czasach małostkowych, dziecinnych bogów, żyły sobie trzy siostry o odrażającym wyglądzie. Ludzie w tej krainie uważali je za demony i zawsze od nich stronili. Jedna bardzo tęskniła za swymi siostrami, a jednak zeszła z tego świata, zostawiając za sobą swój wstyd... zamieniła małostkowość panteonu na swoją własną małostkowość."~ */
  IF ~~ THEN REPLY #39253 /* ~"Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39254 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #39255 /* ~"Zbieram opowieści i wymieniam je z innymi, którzy posiadają własne opowieści."~ */
  IF ~~ THEN REPLY #39256 /* ~"Wymienimy się opowieściami?"~ */ GOTO 19
  IF ~~ THEN REPLY #39257 /* ~"Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39258 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #39259 /* ~"Jest to część historii Pani Sławy, którą nie mnie jest opowiadać. Ona powiedziała mi, że kiedy przybliży się koniec jej dni, opowie mi... i tylko wtedy, gdy zobowiążę się nie dzielić się nią z nikim innym."~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39260 /* ~"Ona ma nadzieję, że nigdy nie będzie musiała opowiedzieć mi swej historii, ponieważ liczy na to, że odnajdę moją własną opowieść wcześniej i opuszczę to miejsce. Myślę, że ona boi się, iż całe swoje życie spędzę na poszukiwaniu tej opowieści, zamiast kierować się tym, co już wiem..." Yves cicho wzdycha. "Ale nic na to nie poradzę."~ */
  IF ~~ THEN REPLY #39261 /* ~"Tej opowieści?"~ */ GOTO 9
  IF ~~ THEN REPLY #39262 /* ~"Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39263 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #39264 /* ~"Po wielekroć zadawała tę zagadkę tym, którzy się do niej zwrócili, tym, którzy pragnęli pozyskać od niej dziwną magię, jaką tylko ona zdawała się posiadać. Wszyscy usiłowali odpowiedzieć na jej pytanie, ale na próżno... i okazywało się, że ceną za złą odpowiedź był jakiś straszliwy los, zawsze straszliwszy od losu poprzedniego nieszczęśnika. Chcąc opowiadać o ich rozmaitych cierpieniach, trzeba byłoby opowiadać o rzeczach, z których utkane są koszmary."~ */
  IF ~~ THEN REPLY #39265 /* ~"Mów dalej..."~ */ GOTO 16
  IF ~~ THEN REPLY #39266 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39267 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39268 /* ~"Opowieść ta jest dla mnie dziwna przez to, że Ravela sama nie znała odpowiedzi na swoje pytanie, choć bardzo jej pragnęła. Zagadkowe było, *dlaczego* chciała znać tę odpowiedź. Dlaczego natura człowieka miała takie znaczenie dla jednej z Szarych Sióstr, zwłaszcza dla tej obdarzonej tak wielką mocą?"~ */
  IF ~~ THEN REPLY #39269 /* ~"Mów dalej..."~ */ GOTO 17
  IF ~~ THEN REPLY #39270 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39271 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39272 /* ~"Powiadają, że zadała to pytanie Pani Bólu; nie bezpośrednio, tylko wykrzyczała je w samym Sigil, wzywając Panią Bólu do odpowiedzi. Kiedy nie otrzymała odpowiedzi, uknuła zmyślną magię, poprzez którą groziła, że otworzy Klatkę i wpuści spienioną wściekłość Sfer do środka."~ */
  IF ~~ THEN REPLY #39273 /* ~"Mów dalej..."~ */ GOTO 18
  IF ~~ THEN REPLY #39274 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39275 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39276 /* ~"Poza wygnaniem nie otrzymała żadnej innej odpowiedzi. Po dziś dzień nikt nie zna odpowiedzi na pytanie Raveli... i teraz nie ma już komu zgłaszać się z odpowiedziami, bo i samej Raveli już nie ma. Zginęła dla Sfer."~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39277 /* ~"Mam następne pytanie..."~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~Po opowiedzeniu mi historii Raveli, Yves dała mi do zrozumienia, że Ecco, milcząca kurtyzana, może wiedzieć coś więcej na temat Raveli. Ale najpierw muszę sprawić, aby Ecco mogła do mnie przemówić.~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39278 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~Po opowiedzeniu mi historii Raveli, Yves dała mi do zrozumienia, że Ecco, milcząca kurtyzana, może wiedzieć coś więcej na temat Raveli. Ale najpierw muszę sprawić, aby Ecco mogła do mnie przemówić.~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66786 /* ~"Mam następne pytanie..."~ */ JOURNAL #66790 /* ~Po opowiedzeniu mi historii Raveli, Yves dała mi do zrozumienia, że Ecco, milcząca kurtyzana, może wiedzieć coś więcej na temat Raveli. Ale najpierw muszę sprawić, aby Ecco mogła do mnie przemówić.~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66787 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ JOURNAL #66790 /* ~Po opowiedzeniu mi historii Raveli, Yves dała mi do zrozumienia, że Ecco, milcząca kurtyzana, może wiedzieć coś więcej na temat Raveli. Ale najpierw muszę sprawić, aby Ecco mogła do mnie przemówić.~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66788 /* ~"Mam następne pytanie..."~ */ JOURNAL #66791 /* ~Po opowiedzeniu mi historii Raveli, Yves dała mi do zrozumienia, że Ecco, może wiedzieć coś więcej o Raveli.~ */ GOTO 80
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66789 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ JOURNAL #66791 /* ~Po opowiedzeniu mi historii Raveli, Yves dała mi do zrozumienia, że Ecco, może wiedzieć coś więcej o Raveli.~ */ GOTO 80
END

IF ~~ THEN BEGIN 19 // from: 2.0 3.0 4.5 12.0 22.0 29.0 39.0 42.0 44.0 47.0 50.0 58.0 60.0 62.0 63.4 65.0 67.0 78.0
  SAY #39279 /* ~Yves potakuje skinieniem głowy. "Bardzo bym tego chciała, naprawdę."~ */
  IF ~  Global("Yves_Story_01","GLOBAL",0)
~ THEN REPLY #39280 /* ~Opowiedz jej historię swego przebudzenia w Kostnicy.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 21
  IF ~  Global("Yves_Story_02","GLOBAL",0)
!NearbyDialog("Dnordom")
~ THEN REPLY #39281 /* ~Opowiedz jej historię Alei Uporczywych Westchnień.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 23
  IF ~  Global("Yves_Story_02","GLOBAL",0)
NearbyDialog("Dnordom")
~ THEN REPLY #67899 /* ~Opowiedz jej historię Alei Uporczywych Westchnień.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 81
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39282 /* ~Opowiedz jej historię Milczącego Króla.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39283 /* ~Opowiedz jej historię Milczącego Króla.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  GlobalGT("Dream","GLOBAL",0)
Global("Yves_Story_13","GLOBAL",0)
~ THEN REPLY #39284 /* ~Opowiedz jej historię Kreatora Snów.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 40
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Yves_Story_04","GLOBAL",0)
~ THEN REPLY #39285 /* ~Opowiedz jej historię klątwy Śmierdziwiatra.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 43
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
Global("Yves_Story_05","GLOBAL",0)
~ THEN REPLY #39286 /* ~Opowiedz jej historię Alei Niebezpiecznych Węgłów.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 45
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
Global("Yves_Story_06","GLOBAL",0)
~ THEN REPLY #39287 /* ~Opowiedz jej historię Faroda.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 48
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
Global("Yves_Story_07","GLOBAL",0)
~ THEN REPLY #39288 /* ~Opowiedz jej historię Ignusa.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 51
  IF ~  NumInPartyGT(0)
~ THEN REPLY #39289 /* ~Zapytaj jednego z towarzyszy, czy ma jakąś historię do opowiedzenia.~ */ GOTO 20
  IF ~~ THEN REPLY #39290 /* ~"Właściwie to mam do ciebie pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39291 /* ~"W takim razie zrobimy to następnym razem. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.10
  SAY #39292 /* ~Yves cierpliwie oczekuje twojej opowieści.~ */
  IF ~  NearbyDialog("DMorte")
Global("Yves_Story_08","GLOBAL",0)
~ THEN REPLY #39293 /* ~"Morte... czy masz opowieść na wymianę?"~ */ EXTERN ~DMORTE~ 408
  IF ~  NearbyDialog("DAnnah")
Global("Yves_Story_09","GLOBAL",0)
~ THEN REPLY #39294 /* ~"Anno... czy masz opowieść na wymianę?"~ */ EXTERN ~DANNAH~ 195
  IF ~  NearbyDialog("DDakkon")
Global("Yves_Story_10","GLOBAL",0)
~ THEN REPLY #39295 /* ~"Dak'konie... czy masz opowieść na wymianę?"~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DDAKKON~ 122
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
Global("Yves_Story_11","GLOBAL",0)
~ THEN REPLY #39296 /* ~"Nie-Sławo... czy masz opowieść na wymianę?"~ */ DO ~SetGlobal("Yves_Story_11","GLOBAL",1)
~ EXTERN ~DGRACE~ 140
  IF ~  NearbyDialog("DNordom")
Global("Yves_Story_12","GLOBAL",0)
~ THEN REPLY #39297 /* ~"Nordomie... czy masz opowieść na wymianę?"~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DNORDOM~ 10
  IF ~~ THEN REPLY #39298 /* ~"Właściwie to mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39299 /* ~"Zrobimy to następnym razem. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #39300 /* ~Yves pochyla się do przodu gdy opowiadasz historię swego przebudzenia w Kostnicy Grabarzy... wydaje się pożerać każde twoje słowo. Kiedy kończysz, uśmiecha się do ciebie. "Zapamiętam tę opowieść. Ja także pragnę opowiedzieć o Grabarzach - 'Rozdziały Prochu'."~ */
  IF ~~ THEN REPLY #39301 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_01","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #39302 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39303 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 66.0
  SAY #39304 /* ~"Księga Umarłych, opasłe tomisko, w którym Grabarze przechowują wszelkie akta dotyczące przemijania wszystkiego, co żyje, poza Wieczną Granicę, posiada swoje rozdziały. W Księdze tej są rozdziały, w których poza prochem nie ma nic. Niektórzy wierzą, że imiona tam zawarte to imiona zagubionych dusz, które nie mogą umrzeć, lecz muszą cierpieć wiecznie, aż do wypełnienia się historii, kiedy to zostaną uwolnione."~ */
  IF ~~ THEN REPLY #39305 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39306 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39307 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.1
  SAY #39308 /* ~Yves pochyla się do przodu gdy opowiadasz historię Alei dającej życie... wydaje się pożerać każde twoje słowo. Kiedy kończysz, uśmiecha się do ciebie. "Zapamiętam tę opowieść. A teraz ja mam jedną opowieść dla ciebie. Zanim zacznę, muszę cię jednak zapytać, czy wiesz, co to jest modron?"~ */
  IF ~~ THEN REPLY #39309 /* ~"Tak."~ */ GOTO 24
  IF ~~ THEN REPLY #39310 /* ~"Nie..."~ */ GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 23.0 30.0
  SAY #39311 /* ~"W takim razie opowiem ci historię pod tytułem 'Zegar i Kwadron'."~ */
  IF ~~ THEN REPLY #39312 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #39313 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39314 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 66.1 81.0
  SAY #39315 /* ~"Pewnego razu był sobie modron. Był to modron dopiero co stworzony, obdarzony świeżą i nie przetestowaną logiką. Przybył do Sigil z rozkazu swych przełożonych modronów."~ */
  IF ~~ THEN REPLY #39316 /* ~"Mów dalej..."~ */ GOTO 26
  IF ~~ THEN REPLY #39317 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39318 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #39319 /* ~"Nie znał niczego oprócz poleceń i komend, posłuszeństwa i wypełniania rozkazów przełożonych. Albowiem musisz wiedzieć, że modrony są świadome tylko rozkazów swych bezpośrednich przełożonych - nie mają pojęcia o istnieniu wyższych przełożonych. Do czasu tego jednego."~ */
  IF ~~ THEN REPLY #39320 /* ~"Mów dalej..."~ */ GOTO 27
  IF ~~ THEN REPLY #39321 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39322 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #39328 /* ~"Pewnego dnia przypadkiem zaszedł do małego sklepiku, gdzie znajdował się mały zegar, który nie wskazywał już godzin. Był pęknięty wzdłuż brzegów, zaś kółka wskazówek były pęknięte. Modron natychmiast zabrał się do pracy, wyszukując części do naprawy zegara."~ */
  IF ~~ THEN REPLY #39329 /* ~"Mów dalej..."~ */ GOTO 28
  IF ~~ THEN REPLY #39330 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39331 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #39332 /* ~"Modron wykonał nowe pudło na części zegara, wymienił wygięte sprężyny, starannie uzupełnił i naoliwił całą maszynerię, wykroił nowe wskazówki z niepotrzebnego metalu, którego wokół miał pod dostatkiem. Precyzyjne tykanie nowo naprawionego zegara przypominało mu olbrzymie przekładnie Mechanusa, a także dodawało mu otuchy o tyle, o ile jakaś rzecz może dodawać otuchy modronowi."~ */
  IF ~~ THEN REPLY #39333 /* ~"Mów dalej..."~ */ GOTO 29
  IF ~~ THEN REPLY #39334 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39335 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #39336 /* ~"Tym, czego modron nigdy nie pojął było to, że prawdziwie *pokochał* zegar, nad którym pracował, i z powodów, których sam nie był w stanie wyjaśnić, postanowił pozostać w Sigil i być blisko tego zegara aż do końca swych dni."~ */
  IF ~~ THEN REPLY #39337 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39338 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39339 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1
  SAY #39340 /* ~"Modrony to stworzenia zapatrzone w literę prawa, niemalże maszyny, a nie żywe istoty. Istnieje wiele rodzajów modronów, ale wszystkie one mają swoje miejsce w swym bardzo sztywnej, dokładnie zorganizowanej hierarchii. Tak wielce oddani są swemu systemowi, że nie potrafią komunikować się z modronami nie będącymi ich bezpośrednimi przełożonymi lub podwładnymi. Nie są też w stanie dopuścić możliwości istnienia takowych modronów."~ */
  IF ~~ THEN REPLY #39341 /* ~"Teraz rozumiem."~ */ GOTO 24
  IF ~~ THEN REPLY #39342 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39343 /* ~"Może następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 19.3 19.4
  SAY #39344 /* ~Yves pochyla się do przodu gdy opowiadasz historię ukrytego ludu nieumarłych, rządzonego przez trupa, który nie przemówił od tysiąca lat... wydaje się pożerać każde twoje słowo. Kiedy kończysz, uśmiecha się do ciebie. "Zapamiętam tę opowieść. A teraz, mam jedną dla ciebie - 'Petentka pod Bramą'."~ */
  IF ~~ THEN REPLY #39345 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_03","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 32
  IF ~~ THEN REPLY #39346 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39347 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 66.2
  SAY #39348 /* ~"Było już dobrze po szczycie, kiedy pod bramami Więzienia dało się słyszeć odległe dudnienie."~ */
  IF ~~ THEN REPLY #39349 /* ~"Mów dalej..."~ */ GOTO 33
  IF ~~ THEN REPLY #39350 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39351 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #39352 /* ~"Carus - najstarszy Łaskobójca znany frakcji - zwlókł się z posterunku, po schodach w dół przez salę do wielkich wrót, które oddzielały więźniów od reszty świata. Dudnienie nie ustawało, gdy dotarł do bramy. Carus przemówił."~ */
  IF ~~ THEN REPLY #39353 /* ~"Mów dalej..."~ */ GOTO 34
  IF ~~ THEN REPLY #39354 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39355 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #39356 /* ~"Wykrzyknął, ale nie otrzymał żadnej odpowiedzi. Otworzył bramę, nie uważając na baczności. Miał jedynie dziwne doznania."~ */
  IF ~~ THEN REPLY #39357 /* ~"Mów dalej..."~ */ GOTO 35
  IF ~~ THEN REPLY #39358 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39359 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #39360 /* ~"Zabiedzona postać klęczała na zgiętych kolanach zaraz przy drzwiach. Jej ręce były pokryte krwią w miejscu, gdzie uderzały o bramę. Oddychała ciężko, z wysiłkiem wdychając powietrze. Gdy migotające światełko z wewnętrznej komnaty wylało się na bruk, kobieta zerknęła w górę na Łaskobójcę, który stał nieruchomo w przejściu, i zaczęła łkać."~ */
  IF ~~ THEN REPLY #39361 /* ~"Mów dalej..."~ */ GOTO 36
  IF ~~ THEN REPLY #39362 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39363 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39364 /* ~"Jak tak patrzył na tę kobietę, poczuł, że poza płcią, jest ona jego wiernym odbiciem. Jej obecność poruszyła go. Carus nie bardzo wiedział, co ma powiedzieć, tak więc po prostu zaczekał, aż kobieta mu wszystko wyjaśni."~ */
  IF ~~ THEN REPLY #39365 /* ~"Mów dalej..."~ */ GOTO 37
  IF ~~ THEN REPLY #39366 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39367 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #39368 /* ~"I wyjaśniła. Było to zwykłe stwierdzenie, ale największej wagi. Sprawiło, że Carus... którego kolana przepełnione były bólem od każdego ruchu... pochylił się i pomógł kobiecie podnieść się. Wpuścił ją do środka, prowadząc delikatnie przez przejście."~ */
  IF ~~ THEN REPLY #39369 /* ~"Mów dalej..."~ */ GOTO 38
  IF ~~ THEN REPLY #39370 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39371 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #39372 /* ~"Powiedziała, że stała się niesprawiedliwość. I Carus nie potrzebował niczego więcej."~ */
  IF ~~ THEN REPLY #39373 /* ~"Mów dalej..."~ */ GOTO 39
  IF ~~ THEN REPLY #39374 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39375 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #39376 /* ~"W końcu okazało się, że nie mogła wypełniać swych obowiązków jako Furia, ponieważ pewien człowiek, winny rozlewu krwi, umarł nie otrzymawszy kary. Błagała Carusa i Łaskobójców o pomoc... więc wykonali na niej egzekucję. Nie dopełniła swojego obowiązku."~ */
  IF ~~ THEN REPLY #39377 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39378 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39379 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 19.5
  SAY #39380 /* ~Yves pochyla się do przodu gdy opowiadasz historię człowieka, który nie mógł śnić i zamówił urządzenie, które pozwoliłoby mu śnić jeszcze raz... Yves wydaje się pożerać każde twoje słowo. Kiedy kończysz, uśmiecha się do ciebie. "Zapamiętam tę opowieść. A teraz, mam jedną dla ciebie - 'Opowieść Pszczelarza'."~ */
  IF ~~ THEN REPLY #39597 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_13","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 41
  IF ~~ THEN REPLY #39598 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39599 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0 66.3
  SAY #39529 /* ~"Pewnego razu pewien człowiek wszedł do pasieki. W tej pasiece usłyszał tysiące pszczół, chociaż nie mógł dojrzeć ani jednej pszczoły. Pomiędzy ulami przechadzał się pszczelarz wybierający plastry miodu z ewidentnie pustych uli. A jednak pomimo braku owadów, brzęczenie nie ustępowało i człowiek ów był zaintrygowany."~ */
  IF ~~ THEN REPLY #39600 /* ~"Mów dalej..."~ */ GOTO 42
  IF ~~ THEN REPLY #39601 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39602 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #39530 /* ~"Postanowił porozmawiać z pszczelarzem, który uniósł kaptur. Wówczas okazało się, że był on istotą całkowicie złożoną z pszczół. W całej masie owadów stanowiącej twarz tej istoty uformował się załamek w kształcie ust. Załamek poruszył się, gdy istota przemówiła, ale buczenie było tak duże, że jej słów nie można było zrozumieć. W tym momencie nasz bohater umarł, próbując zrozumieć, co też takiego powiedział pszczelarz."~ */
  IF ~~ THEN REPLY #39603 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39604 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39605 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.6
  SAY #39531 /* ~Yves pochyla się do przodu gdy opowiadasz historię wonnej klątwy Śmierdziwiatra... wydaje się pożerać każde twoje słowo. Kiedy kończysz, uśmiecha się do ciebie. "Zapamiętam tę opowieść. A teraz, mam jedną dla ciebie - 'Złota Opowieść'."~ */
  IF ~~ THEN REPLY #39606 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_04","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 44
  IF ~~ THEN REPLY #39607 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39608 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 66.4
  SAY #39532 /* ~"Na Sferze Ysgard znajduje się Złota Sala, gdzie można znaleźć tych Czuciowców, którzy poszukują przyjemności kulinarnych. Oddają się tym zachciankom na całego, nie zdając sobie nigdy sprawy z tego, że drzwi sali nigdy nie otwierają się, i że nie ma wyraźnej drogi powrotnej do Gmachu Rozrywki. Są oni nie chcianymi Czuciowcami. Takimi co to nie wierzą tak naprawdę we frakcję, tylko szukają przyjemności dla przyjemności. Czy więźniowie nie zdający sobie sprawy ze swego uwięzienia są prawdziwymi więźniami?"~ */
  IF ~~ THEN REPLY #39609 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39610 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39611 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.7
  SAY #39533 /* ~Yves pochyla się do przodu gdy opowiadasz historię Alei Niebezpiecznych Węgłów i w jaki sposób się ona pojawiła. Yves wydaje się pożerać każde twoje słowo. Kiedy kończysz, uśmiecha się do ciebie. "Zapamiętam tę opowieść. A teraz, mam jedną dla ciebie - 'Starający się o rękę Pani'."~ */
  IF ~~ THEN REPLY #39612 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_05","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #39613 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39614 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 66.5
  SAY #39534 /* ~"Jest to opowieść o młodzieńcu starającym się o rękę Pani Bólu, jednym z wielu w przeciągu lat. Młodzieniec ów miał obsesję na punkcie Pani Sigil. Wszędzie ją widział, w każdym zakątku jej miasta. Słyszał szelest jej sukni, skrobot jej piór, przez co zadurzył się w niej ponad wszelki rozsądek. Miał nadzieję, że jeżeli będzie jej oddawał część, przynajmniej będzie w stanie ją zobaczyć... no i ją czcił."~ */
  IF ~~ THEN REPLY #39615 /* ~"Mów dalej..."~ */ GOTO 47
  IF ~~ THEN REPLY #39616 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39617 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #39535 /* ~"Znaleziono go martwego na skąpanych we krwi schodach jego własnego domu, a straszliwe rany od pchnięć sztyletem pokrywały całe jego ciało... jednakże jego oczy były szeroko otwarte, zaś na jego ustach gościł triumfalny uśmiech."~ */
  IF ~~ THEN REPLY #39618 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39619 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39620 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 19.8
  SAY #39536 /* ~Yves pochyla się do przodu, gdy opowiadasz historię upadku Faroda... wydaje się pożerać każde twoje słowo. Kiedy kończysz, uśmiecha się do ciebie. "Zapamiętam tę opowieść. A teraz, mam jedną dla ciebie..."~ */
  IF ~~ THEN REPLY #39621 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_06","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 49
  IF ~~ THEN REPLY #39622 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39623 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 66.6
  SAY #39537 /* ~"Pewnego razu był sobie człowiek, który doświadczył najpiękniejszej rzeczy w wieloświecie. Jego intencją było złożyć to doświadczenie w jednym z kamieni doznań w środku Gmachu Rozrywki. Kamienie doznań są magicznymi przyrządami, które przechowują uczucia i wspomnienia na wieczność, umożliwiając innym uczestnictwo w nich."~ */
  IF ~~ THEN REPLY #39624 /* ~"Mów dalej..."~ */ GOTO 50
  IF ~~ THEN REPLY #39625 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39626 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #39538 /* ~"Ale pomyślał tak: czy jego doświadczenie się nie rozmyje, jeżeli podzieli się nim z innymi? Tak więc zachował je dla siebie, niczym coś cennego, i zestarzał się wraz z nim. Ale gdy się zestarzał, jego wspomnienie o tym doświadczeniu zmętniało i wypłowiało, i nie był w stanie dłużej przypomnieć sobie jego wspaniałości."~ */
  IF ~~ THEN REPLY #39627 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39628 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39629 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 19.9
  SAY #39539 /* ~Yves pochyla się do przodu gdy opowiadasz historię Ignusa i Sztuki, która płonęła w nim... wydaje się pożerać każde twoje słowo. Kiedy kończysz, uśmiecha się do ciebie. "Zapamiętam tę opowieść. A teraz, mam jedną dla ciebie - 'Egzekucja'."~ */
  IF ~~ THEN REPLY #39630 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_07","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 52
  IF ~~ THEN REPLY #39631 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39632 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 66.7
  SAY #39540 /* ~"Pewnego razu na ulicach Sigil grasował morderca, człowiek o mrocznym sercu o imieniu Kossacs. Został pobłogosławiony przez swą matkę z Otchłani, tak aby nikt nie mógł go uderzyć z zamiarem wyrządzenia krzywdy, bo sam by zginął. Rozkoszował się tym błogosławieństwem, wykorzystując je do wszczynania bójek i mordowania wszystkich, którzy weszli mu w drogę."~ */
  IF ~~ THEN REPLY #39633 /* ~"Mów dalej..."~ */ GOTO 53
  IF ~~ THEN REPLY #39634 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39635 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #39541 /* ~"Podczas jednego ze swych morderczych napadów został pojmany przez Harmonium w sieci i postawiony przed Guwernatami. Proces był krótki, wyrok ostateczny, a mimo to Kossacs śmiał się z postępowania prawnego, wiedząc, że nikt spośród nich ni emoże go skrzywdzić, jeżeli nie chce umrzeć straszliwą śmiercią. W ostatnim dniu procesu uznano go winnym i skazano na śmierć."~ */
  IF ~~ THEN REPLY #39636 /* ~"Mów dalej..."~ */ GOTO 76
  IF ~~ THEN REPLY #39637 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39638 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 77.0
  SAY #39542 /* ~"'W takim razie plwam na wasze tchórzostwo!' Kossacs zaśmiał się, po omacku sięgając po kielich w ciemności. Rzucił nim o ścianę i rozbił. Trucizna, która z niego wyciekła, skapnęła na ściany i wyschła. 'I co teraz - będziecie musieli spróbować mnie zabić.'"~ */
  IF ~~ THEN REPLY #39639 /* ~"Mów dalej..."~ */ GOTO 78
  IF ~~ THEN REPLY #39640 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39641 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #39543 /* ~Yves uśmiecha się. "Interesująca opowieść, Morte. A teraz ja mam jedną dla ciebie i twego towarzysza... 'Gra Biesa'."~ */
  IF ~~ THEN REPLY #39642 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_08","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 56
  IF ~~ THEN REPLY #39643 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39644 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #39544 /* ~"Pewien bies czasami wędrował w dziczy jednego ze światów pierwszej sfery materialnej w przebraniu przyjaznego staruszka. Jednego dnia napotkał grupę myśliwych w lesie.

'Co robicie?' zapytał bies. Myśliwi powiedzieli mu, a bies skinął potakująco głową. 'Nigdy wcześniej nie polowałem.'"~ */
  IF ~~ THEN REPLY #39645 /* ~"Mów dalej..."~ */ GOTO 57
  IF ~~ THEN REPLY #39646 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39647 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #39545 /* ~"Myśliwi zaprosili staruszka, aby im towarzyszył i cała grupa w końcu natknęła się na polanę, gdzie pasło się kilkanaście jeleni. Myśliwi mieli ze sobą kusze, lecz nie strzelali, więc bies spytał się, dlaczego."~ */
  IF ~~ THEN REPLY #39648 /* ~"Mów dalej..."~ */ GOTO 58
  IF ~~ THEN REPLY #39649 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39650 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #39546 /* ~"'One są nieuzbrojone.' zachichotali myśliwi, klepiąc swoje kusze. 'Nie polujemy na nic, co nie ma możliwości samoobrony. W gruncie rzeczy, gdzie w takim układzie byłoby mijesce na sport?'

Bies przytaknął ruchem głowy i błyskawicznie przyzwał trzech swoich pobratymców. Myśliwi zaczęli radośnie gonić biesy, ale w końcu zostali pochwyceni i pożarci."~ */
  IF ~~ THEN REPLY #39651 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39652 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39653 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #39547 /* ~Yves uśmiecha się. "Wspaniała opowieść, Nordomie. A teraz mam jedną dla ciebie i twego towarzysza... 'Kwiaty i Czuciowcy'."~ */
  IF ~~ THEN REPLY #39654 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_12","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 60
  IF ~~ THEN REPLY #39655 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39656 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 66.10
  SAY #39548 /* ~"Był sobie człowiek, który wiele czytał o kwiatach - eseje, traktaty, teksty biologiczne, poezję - i w związku z tym uważał się za dobrze wykształconego w kwestii kwiatów. Jednego dnia natknął się na pół ślepego ogrodnika, który doglądał ogrodów Czuciowców. I kto był ślepy jeśli idzie o kwiaty?"~ */
  IF ~~ THEN REPLY #39657 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39658 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39659 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #39549 /* ~Yves uśmiecha się. "Fascynująca opowieść, Dak'konie. Pozwól, że opowiem tobie i twemu towarzyszowi inną wersję twojej opowieści, którą słyszałam..."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 123
END

IF ~~ THEN BEGIN 62 // from: 66.9
  SAY #39550 /* ~Yves rozpoczyna opowiadanie innej wersji opowieści Dak'kona, w której wygnano Ach'ali z miasta githzerai o nazwie Shrak'at'lor za to, że wciąż paplała bez sensu...

"Jednego dnia, natknęła się na slaada podążającego do kamienia ikry. Błyskawicznie wzniosła ścianę z chaotycznej materii, którą nawet wygłodniałemu slaadowi trudno było zniszczyć. Czekał, głodny, i mówił do niej poprzez ścianę. Ona zadawała mu pytania i jak się tak zapamiętała w swych bezużytecznych poszukiwaniach i w odpowiedziach slaada, jej własna ściana zmurszała i zawaliła się na nią... i w ten sposób utonęła w materii Limbo."~ */
  IF ~~ THEN REPLY #39660 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39661 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39662 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #39551 /* ~Yves uśmiecha się do Anny. "Ale ja bardzo chciałabym posłuchać twojej opowieści..."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39663 /* ~"Po prostu opowiedz już tę historię, Anno."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39664 /* ~"Podziel się z nami swoją opowieścią, Anno..."~ */ EXTERN ~DANNAH~ 196
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39665 /* ~"Po prostu opowiedz już tę historię, Anno."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DMORTE~ 420
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39666 /* ~"Podziel się z nami swoją opowieścią, Anno..."~ */ EXTERN ~DMORTE~ 420
  IF ~~ THEN REPLY #39667 /* ~"Mam dla ciebie następną historię, Yves."~ */ GOTO 19
  IF ~~ THEN REPLY #39668 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39669 /* ~"Może następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #39552 /* ~Yves uśmiecha się. "To była wspaniała opowieść, Anno. Nigdy nie wahaj się dzielić się nią z innymi. Teraz ja mam jedną dla ciebie i twojego towarzysza - 'Spieczona Ziemia'."~ */
  IF ~~ THEN REPLY #39670 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_09","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 65
  IF ~~ THEN REPLY #39671 /* ~"Zaczekaj... Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39672 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0 66.8
  SAY #39553 /* ~"Pewnego razu duża wioska dotknięta została klęską suszy. Pewien rolnik udał się do Kamienia Czci i ponownie błagał go, aby wskazać mu przyczynę suszy. Spytał Kamień, czemu ten nie uczyni nic, podczas gdy pola są spieczone i umierają, dlaczego zwierzęta i ludzie cierpią, a Kamień nie czyni nic. 'Czy nie ofiarowaliśmy dosyć?' spytał rolnik, błagając niemal ma klęczkach. Lecz Kamień nie odpowiadał; po prostu tam był i rzucał cień."~ */
  IF ~~ THEN REPLY #39673 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #39674 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39675 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 4.6
  SAY #39554 /* ~Yves potakująco kiwa głową. "Którą?"~ */
  IF ~  Global("Yves_Story_01","GLOBAL",1)
~ THEN REPLY #39676 /* ~"Rozdziały Prochu."~ */ GOTO 22
  IF ~  Global("Yves_Story_02","GLOBAL",1)
~ THEN REPLY #39677 /* ~"Zegar i Kwadron."~ */ GOTO 25
  IF ~  Global("Yves_Story_03","GLOBAL",1)
~ THEN REPLY #39678 /* ~"Petentka pod Bramą."~ */ GOTO 32
  IF ~  Global("Yves_Story_13","GLOBAL",1)
~ THEN REPLY #39679 /* ~"Opowieść Pszczelarza."~ */ GOTO 41
  IF ~  Global("Yves_Story_04","GLOBAL",1)
~ THEN REPLY #39680 /* ~"Złota Opowieść."~ */ GOTO 44
  IF ~  Global("Yves_Story_05","GLOBAL",1)
~ THEN REPLY #39681 /* ~"Starający się o rękę Pani."~ */ GOTO 46
  IF ~  Global("Yves_Story_06","GLOBAL",1)
~ THEN REPLY #39682 /* ~"Opowieść o człowieku, który nie chciał podzielić się swym doświadczeniem."~ */ GOTO 49
  IF ~  Global("Yves_Story_07","GLOBAL",1)
~ THEN REPLY #39683 /* ~"Egzekucja."~ */ GOTO 52
  IF ~  Global("Yves_Story_09","GLOBAL",1)
~ THEN REPLY #39684 /* ~"Spieczona Ziemia."~ */ GOTO 65
  IF ~  Global("Yves_Story_10","GLOBAL",1)
~ THEN REPLY #39685 /* ~"Twoja wersja 'Utonięcia Ach'ali'."~ */ GOTO 62
  IF ~  Global("Yves_Story_12","GLOBAL",1)
~ THEN REPLY #39686 /* ~"Kwiaty i Czuciowcy."~ */ GOTO 60
  IF ~  Global("Iannis_Confessed","GLOBAL",2)
~ THEN REPLY #39687 /* ~"Opowieść o ojcu, córce i jej ukochanym."~ */ GOTO 72
  IF ~~ THEN REPLY #39688 /* ~"Właściwie to mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39689 /* ~"Nic nie szkodzi, Yves. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 71 even though they appear after this state */
~  GlobalGT("Yves","GLOBAL",0)
~ THEN BEGIN 67 // from:
  SAY #39555 /* ~Yves uśmiecha się do ciebie uprzejmie. "Witaj ponownie. Czy jesteś tutaj, aby wymienić się opowieściami?"~ */
  IF ~~ THEN REPLY #39690 /* ~"Tak."~ */ GOTO 19
  IF ~~ THEN REPLY #39691 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #39692 /* ~"Właściwie to tylko tędy przechodziłem. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 4.3
  SAY #39556 /* ~Yves kiwa głową potakująco. "Tak, ale ona i ja nie rozmawiamy już ze sobą, tak więc nic więcej o niej nie powiem."~ */
  IF ~~ THEN REPLY #39693 /* ~"Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39694 /* ~"A zatem żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.4
  SAY #39557 /* ~Yves kiwa głową potakująco, uśmiechając się. "Tak, dziękuję."~ */
  IF ~~ THEN REPLY #39695 /* ~"Cała przyjemność po mojej stronie. Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39696 /* ~"Oczywiście. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 4.7 4.8 79.0
  SAY #39558 /* ~"Ecco?" Yves marszczy brwi, zastanawiając się. "Kiedyś słyszałam opowieść o dziewczynie. Znała ona słowo, które z chwilą wypowiedzenia, zniszczyłoby wieloświat. Być może to jest Ecco. Chociaż spytaj Dolorę... jak rozumiem, ona czasami spotyka się z kimś, kto znał Ecco, zanim przestała mówić."~ */
  IF ~~ THEN REPLY #39697 /* ~"Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39698 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Yves","GLOBAL",0)
GlobalGT("Yvana","GLOBAL",1)
Global("Yves_Shared","AR0605",1)
Global("Iannis_Confessed","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #39559 /* ~Yves uśmiecha się do ciebie uprzejmie. "Witaj znów. Natknęłam się na opowieść, która mogłaby cię zainteresować..."~ */
  IF ~~ THEN REPLY #39699 /* ~"Tak, proszę."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",2)
AddexperienceParty(3000)
~ GOTO 72
  IF ~~ THEN REPLY #39700 /* ~"Nie teraz. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #39701 /* ~"Tylko tędy przechodziłem, Yves. Posłucham później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 66.11 71.0
  SAY #39560 /* ~"Był sobie człowiek, cieszący się dużym prestiżem, który pomimo swego bogactwa i pozycji w społeczeństwie czuł się strasznie nieszczęśliwy. Jego córka zmarła, więc to, co mu jeszcze z życia zostało, było przesłonięte poprzez mrok jej odejścia."~ */
  IF ~~ THEN REPLY #39702 /* ~"Mów dalej..."~ */ GOTO 73
  IF ~~ THEN REPLY #39703 /* ~"Zaczekaj... mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39704 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #39561 /* ~"I zdarzyło się, że poprzedni ukochany córki przyszedł do niego i rozmawiał o niej z sensem i uczuciem, przywracając ojcu światło w sercu. Robiąc tak obaj odnaleźli dwie zupełnie różne rzeczy, z których każda okazała się być cenna na różne sposoby."~ */
  IF ~~ THEN REPLY #39705 /* ~"Mów dalej..."~ */ GOTO 74
  IF ~~ THEN REPLY #39706 /* ~"Zaczekaj... mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39707 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #39562 /* ~"Jeden odnalazł iskrę życia, która doń wróciła, a mrok został wygnany precz z oczu i zakątków jego mózgu.

Natomiast ten człowiek, ów ukochany, odnalazł coś więcej, co miało okazać się dlań jeszcze cenniejsze w jego podróży: żal."~ */
  IF ~~ THEN REPLY #39708 /* ~"Mów dalej..."~ */ GOTO 75
  IF ~~ THEN REPLY #39709 /* ~"Zaczekaj... mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #39710 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #50722 /* ~"Bowiem, jak powiadają, to żal może odmienić naturę człowieka, chociaż być może tylko Szare Siostry wiedzą coś o tym na pewno."

Yves kiwa potakująco głową i uśmiecha się. "Nie znam znaczenia tej opowieści, ale być może przyda ci się ona w przyszłości."~ */
  IF ~~ THEN REPLY #39711 /* ~"Dziękuję. Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39712 /* ~"Dziękuję, Yves. Pójdę już; żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 53.0
  SAY #50723 /* ~"Wyrok na Kossacsa, ogłoszony przez Guwernatów, brzmiał: 'Odizolować przez trzykrotność trzydziestu dni, w którym to okresie czasu ma on sam wyzionąć ducha i zostać uznanym za martwego. Ciało jego ma zostać usunięte z chwilą ustania wszelkich czynności życiowych.'"~ */
  IF ~~ THEN REPLY #50724 /* ~"Mów dalej..."~ */ GOTO 77
  IF ~~ THEN REPLY #50725 /* ~"Zaczekaj... mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #50726 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #50727 /* ~"Łaskobójcy zaprowadzili Kossacsa do ich więzienia i zamknęli go w ciemnej, pustej celi. Nie było tam łóżka, światła, a jedyne drzwi stanowiła stalowa krata w suficie.

Kiedy go opuścili do celi, Łaskobójca powiedział mu: 'W kącie celi znajdziesz kielich. Zawiera on truciznę. Twoja śmierć będzie szybka.'

'Czy nie masz zamiaru wykonać na mnie wyroku?' Kossacs warknął na strażnika.

'Nikt w Sigil nie zamachnie się na ciebie z zamiarem zrobienia ci krzywdy.' odparł Łaskobójca."~ */
  IF ~~ THEN REPLY #50729 /* ~"Mów dalej..."~ */ GOTO 54
  IF ~~ THEN REPLY #50728 /* ~"Zaczekaj... mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #50730 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 54.0
  SAY #50731 /* ~"Lecz od kraty w suficie nie nadchodziła odpowiedź. To właśnie wówczas Kossacs dostrzegł, że cela nie ma łóżka. Nie miała też światła. I nie miała jedzenia ani wody. Jedynym sprzętem, który pozostał w celi był strzaskany kielich, bez trucizny. I po raz pierwszy Kossacs poczuł lodowaty dotyk nadchodzącej śmierci.

Po sześćdziesięciu dniach kratę otwarto i z celi wydobyto ciało Kossacsa, teraz już zimne. Wyzionął ducha. Wyrok się dokonał."~ */
  IF ~~ THEN REPLY #50732 /* ~"Mam dla ciebie następną opowieść."~ */ GOTO 19
  IF ~~ THEN REPLY #50733 /* ~"Mam do ciebie pytanie, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #50734 /* ~"Pójdę już. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 18.0 18.1 18.2 18.3
  SAY #66763 /* ~"Zaczekaj... jest coś jeszcze. Choć moja opowieść kończy się wraz ze śmiercią Raveli, są tacy, którzy twierdzą, że wiedźma wciąż żyje. Jest tu milcząca kurtyzana, która kiedyś opowiadała o tych rzeczach, ale już przestała. Gdyby zechciała z tobą porozmawiać, być może powiedziałaby ci więcej o Raveli."~ */
  IF ~~ THEN REPLY #66764 /* ~"Co jeszcze możesz mi powiedzieć o tej milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 70
  IF ~~ THEN REPLY #66765 /* ~"Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #66766 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 18.4 18.5
  SAY #66767 /* ~"Zaczekaj... jest coś jeszcze. Choć moja opowieść kończy się wraz ze śmiercią Raveli, są tacy, którzy twierdzą, że wiedźma wciąż żyje. Ecco jest taką osobą; zapytaj ją o Ravelę i być może opowie ci coś więcej na jej temat."~ */
  IF ~~ THEN REPLY #66768 /* ~"Mam następne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #66770 /* ~"To wszystko, co chciałem wiedzieć, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 19.2
  SAY #67895 /* ~Yves pochyla się do przodu gdy opowiadasz historię Alei dającej życie... wydaje się pożerać każde twoje słowo. Kiedy kończysz, uśmiecha się do ciebie, potem do Nordoma. "Zapamiętam tę opowieść. A teraz ja mam jedną opowieść dla ciebie. 'Zegar i Kwadron'."~ */
  IF ~~ THEN REPLY #67897 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #67896 /* ~"Zaczekaj... mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #67898 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END
