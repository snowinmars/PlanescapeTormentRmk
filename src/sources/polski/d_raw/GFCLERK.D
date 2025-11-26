// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFCLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~GFCLERK~

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5909 /* ~"Więc to o ciebie tyle zamieszania? No, wcale ich nie winię... masz niebezpieczny wygląd. No, dalej, wynocha mi stąd."~ */
  IF ~~ THEN REPLY #5910 /* ~Zabij starca.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_GFClerk_1","GLOBALGood",-1)
Kill(Myself)
~ EXIT
  IF ~~ THEN REPLY #5911 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5912 /* ~"Chciałbym ci pomóc, synu, ale wpakowałbym się wtedy w o wiele większe kłopoty, niż to warte. Idź już i przyjdź kiedy indziej, gdy strażnicy nie będą ci deptać po piętach."~ */
  IF ~~ THEN REPLY #5913 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #5914 /* ~Widzisz starego, pomarszczonego człowieka z trzęsącymi się rękami i przebiegłością malującą się na twarzy. On przygląda ci się uważnie i mówi: "Wita... uch... czy ja cię już kiedyś widziałem? Jakoś mi wyglądasz znajomo."~ */
  IF ~~ THEN REPLY #5915 /* ~"Myślę, że to możliwe."~ */ GOTO 4
  IF ~~ THEN REPLY #5916 /* ~"Nie ma szans, stary."~ */ GOTO 5
  IF ~~ THEN REPLY #5917 /* ~"Skąd? Pamiętasz, skąd?"~ */ GOTO 6
  IF ~~ THEN REPLY #5918 /* ~"Jestem tu, aby odebrać pewną rzecz."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5919 /* ~"Potrzebne mi są jakieś ciuchy i narzędzia kowalskie."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5920 /* ~"Poszukuję przebrania."~ */ GOTO 9
  IF ~~ THEN REPLY #5921 /* ~"Kim jesteś?"~ */ GOTO 10
  IF ~~ THEN REPLY #5922 /* ~"Chcę wziąć kilka narzędzi do kuźni."~ */ GOTO 11
  IF ~~ THEN REPLY #5923 /* ~"A to ciekawe. Do zobaczenia, staruszku."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from: 5.0 8.2 9.2 10.0 11.4 14.0 18.0 21.0 22.0 23.0 24.0 25.0
  SAY #5924 /* ~"Czy potrzebujesz jeszcze czegoś?"~ */
  IF ~~ THEN REPLY #5925 /* ~"Wspomniałeś, że mnie już kiedyś widziałeś. Czy pamiętasz, gdzie to było?"~ */ GOTO 6
  IF ~~ THEN REPLY #5926 /* ~"Nie, chciałem po prostu zobaczyć, jak się uśmiechasz."~ */ GOTO 12
  IF ~~ THEN REPLY #5927 /* ~"Jestem tutaj po to, aby odebrać pewną rzecz."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5928 /* ~"Potrzebne mi są jakieś ciuchy i narzędzia kowalskie."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5929 /* ~"Poszukuję przebrania."~ */ GOTO 9
  IF ~~ THEN REPLY #5930 /* ~"Kim jesteś?"~ */ GOTO 10
  IF ~~ THEN REPLY #5931 /* ~"Chcę wziąć kilka narzędzi do kuźni."~ */ GOTO 11
  IF ~~ THEN REPLY #5932 /* ~"A to ciekawe. Do zobaczenia, staruszku."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5933 /* ~"Nigdy nie zapominam twarzy... przypomnę sobie... ach, niech to Baator pochłonie."~ */
  IF ~~ THEN REPLY #5934 /* ~"Czy pamiętasz, gdzie to było? Jest to dla mnie ważne."~ */ GOTO 6
  IF ~~ THEN REPLY #5935 /* ~"Jestem tu, aby odebrać pewną rzecz."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5936 /* ~"Potrzebne mi są jakieś ciuchy i narzędzia kowalskie."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5937 /* ~"Poszukuję przebrania."~ */ GOTO 9
  IF ~~ THEN REPLY #5938 /* ~"Kim jesteś?"~ */ GOTO 10
  IF ~~ THEN REPLY #5939 /* ~"Chcę wziąć kilka narzędzi do kuźni."~ */ GOTO 11
  IF ~~ THEN REPLY #5940 /* ~"W takim razie nie ma o czym mówić. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #5941 /* ~"Mógłbym przysiąc, żem cię już widział. Byłeś kiedy bandziorem?" Staruszek chichocze cichutko pod nosem. "Ach, nie ma o czym mówić. Przypomnę sobie."~ */
  IF ~~ THEN REPLY #5942 /* ~"Mam nadzieję. Odpowiedz mi więc na kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #5943 /* ~"Mam nadzieję, że nie. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.0 4.0
  SAY #5944 /* ~"Nie tak szybko, chłopcze. Takie zadanie wymaga, aby umysł trochę się rozgrzał. Żyję już długo i widziałem o wiele więcej twarzy przez ten cały czas, i nie tak łatwo je spamiętać. Pamięć to rzecz ulotna - na to możesz liczyć."

Przed odpowiedzią mruczysz do siebie, "Mów do mnie jeszcze, 'chłopcze'."~ */
  IF ~~ THEN REPLY #5945 /* ~"W takim razie nie ma o czym mówić. Jestem tutaj, aby odebrać pewną rzecz."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5946 /* ~"W porządku. Potrzebuję jakiś łachmanów i narzędzi kowalskich."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5947 /* ~"Świetnie. Poszukuję przebrania."~ */ GOTO 9
  IF ~~ THEN REPLY #5948 /* ~"Możesz mi powiedzieć, kim jesteś?"~ */ GOTO 10
  IF ~~ THEN REPLY #5949 /* ~"W takim razie chcę wziąć trochę narzędzi kowalskich."~ */ GOTO 11
  IF ~~ THEN REPLY #5950 /* ~"Świetnie. Bywaj, 'chłopcze'."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 4.1 6.0
  SAY #5951 /* ~"Masz kwit? Musisz mieć kwit, albo nie będę mógł niczego wydać."~ */
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5952 /* ~"Mam oba tutaj."~ */ DO ~TakePartyItemNum("Receipt",1)
TakePartyItemNum("Receipt2",1)
~ GOTO 13
  IF ~  !Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5953 /* ~"Oczywiście. Proszę."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5954 /* ~"Oczywiście. Proszę."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5955 /* ~"Tak."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 15
  IF ~  !PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5956 /* ~Kłamstwo: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALClerk1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
~ THEN REPLY #5957 /* ~"Oczywiście. Proszę."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 19
  IF ~~ THEN REPLY #5958 /* ~"Nie."~ */ GOTO 16
  IF ~~ THEN REPLY #5959 /* ~"Nie ma o czym mówić. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 3.3 4.2 6.1
  SAY #5960 /* ~"Naprawdę? W porządku. To wszystko będzie... zobaczmy... niech będzie sześćdziesiąt miedziaków."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5961 /* ~"Proszę."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5962 /* ~"Nie mam tyle."~ */ GOTO 18
  IF ~~ THEN REPLY #5963 /* ~"Zapomnij o tym. Mam następne pytania."~ */ GOTO 3
  IF ~~ THEN REPLY #5964 /* ~"Zapomnij o tym. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.4 4.3 6.2
  SAY #5965 /* ~"Przebrania, co? Chyba już wiem, do czego ci potrzebne i dam ci je za nędzne sześćdziesiąt miedziaków."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5966 /* ~"Proszę."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5967 /* ~"Nie mam tyle."~ */ GOTO 18
  IF ~~ THEN REPLY #5968 /* ~"Zapomnij o tym. Mam następne pytanie."~ */ GOTO 3
  IF ~~ THEN REPLY #5969 /* ~"Zapomnij o tym. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.6 3.5 4.4 6.3
  SAY #5970 /* ~"Ja? Jestem Nadilin, nadzwyczajny bojownik Bogowców!" Wzdycha. "Przynajmniej kiedyś nim byłem. Teraz jestem urzędnikiem w Kuźni, wdychającym przepełnione sadzą powietrze i przyśpieszającym w ten sposób własny zgon."~ */
  IF ~~ THEN REPLY #5971 /* ~"To przykre. Mam następne pytanie."~ */ GOTO 3
  IF ~~ THEN REPLY #5972 /* ~"Zgadza się. To wszystko, co potrzeba mi wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.7 3.6 4.5 6.4
  SAY #5973 /* ~"Ach, teraz chcemy być kowalem, co, chłopcze? Bardzo dobrze. Przyda ci się fartuch - za dziesieć miedziaków - szczypce - za następne dziesięć - i młot - to już za dwadzieścia. Razem, policzmy, pięćdziesiąt miedziaków."~ */
  IF ~~ THEN REPLY #5974 /* ~"To razem będzie czterdzieści miedziaków, starcze."~ */ GOTO 20
  IF ~  PartyGoldGT(49)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #5975 /* ~Zapłać pięćdziesiąt miedziaków.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(49)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5976 /* ~Zapłać pięćdziesiąt miedziaków.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #5977 /* ~"Przykro mi, ale dla mnie to brzmi bardziej jak czterdzieści miedziaków."~ */ GOTO 20
  IF ~~ THEN REPLY #5978 /* ~"Nie ma o czym mówić. Mam następne pytania."~ */ GOTO 3
  IF ~~ THEN REPLY #5979 /* ~"Nie wydaje mi się, aby były mi potrzebne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #5980 /* ~"Bądź błogosławiony, synu. A teraz, jeżeli mi wybaczysz, muszę powyglądać trochę przez okno."~ */
  IF ~~ THEN REPLY #5981 /* ~"Eee. Zgadza się."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0
  SAY #5982 /* ~"Zaraz z tym wszystkim wrócę." Mija kilka minut. Wraca pędem i wręcza ci przedmioty: jakiś mały mechanizm i zręcznie wykonaną wekierę. "Ta pierwsza rzecz ma ponad sto lat! Czekasz na to od dawna, przyjacielu. Jak się na nią natknąłeś?"~ */
  IF ~~ THEN REPLY #5983 /* ~"Zostawiłem to dla siebie, ale potem byłem zajęty."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
AddexperienceParty(40000)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #5984 /* ~"Zostało mi to przekazane."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #5985 /* ~"To było w zapisie."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 7.1 7.2
  SAY #5986 /* ~Staruszek bierze od ciebie kwit i porównuje go ze swymi zapiskami. Na chwilę wychodzi, ale wraca ze zręcznie wykonaną wekierą w dłoniach. "Masz, chłopcze."~ */
  IF ~~ THEN REPLY #5987 /* ~"Dziękuję. Mam następne pytania."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #5988 /* ~"Dziękuję. To na razie."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #5989 /* ~Staruszek bierze od ciebie kwit i uważnie mu się przygląda. "Ta rzecz ma ponad sto lat! Jak ją znalazłeś?"~ */
  IF ~~ THEN REPLY #5990 /* ~"Zostawiłem to dla siebie, ale potem byłem zajęty."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 23
  IF ~~ THEN REPLY #5991 /* ~"Zostało mi to przekazane."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #26874 /* ~"To było w zapisie."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 7.4 7.6
  SAY #5992 /* ~Na chwilę przerywa. "Jeśli masz kwit, daj mi go. W przeciwnym razie nie mogę nic wydać. No, dalej. Z pewnością mogę być zajętym człowiekiem, z którego żaden przechodzień nie będzie się naigrawał."~ */
  IF ~~ THEN REPLY #5993 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0 9.0
  SAY #5994 /* ~"Proszę. Wyprowadź stąd tę sukę, abyśmy nie musieli dłużej znosić jej zdrad."~ */
  IF ~~ THEN REPLY #5995 /* ~Kłamstwo: "Co? To nie dlatego tego potrzebuję!"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALClerk2","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #5996 /* ~"Skąd o tym wiesz?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ GOTO 27
  IF ~~ THEN REPLY #5997 /* ~"Wielce dzięki, stary. Żegnaj."~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1 9.1 20.2
  SAY #5998 /* ~"W takim razie naprawdę nie mogę ci tego dać. Przykro mi."~ */
  IF ~~ THEN REPLY #5999 /* ~"Świetnie. W takim razie odpowiedz mi na kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #6000 /* ~"Dobrze. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #6001 /* ~Ogląda kwit i spogląda na ciebie. "Czy ja już ci tego nie dawałem? Widzisz, nie mogę wydać tego dwukrotnie." Chowa kwit do kieszeni. "A teraz już idź. No już!"~ */
  IF ~~ THEN REPLY #6002 /* ~Odejdź.~ */ DO ~TakePartyItemNum("Receipt",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.0 11.3
  SAY #6003 /* ~"O czym ja myślę! Oczywiście, że tak. Mówię ci, pamięć to zdradliwa rzecz."~ */
  IF ~  PartyGoldGT(39)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #6004 /* ~"Dokładnie. Daj mi sprzęt."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(39)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6005 /* ~"Dokładnie. Daj mi sprzęt."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #6006 /* ~"No cóż. To i tak jest zbyt drogo jak na mój gust."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 11.1 20.0
  SAY #6007 /* ~"Nie zapomnij wziąć trochę rudy od Tyldona, jeżeli chcesz pracować w kuźni. Skąpy z niego drań, ale jest jednocześnie jedyną osobą, od której można brać rudę."~ */
  IF ~~ THEN REPLY #6008 /* ~"Dziękuję. Mam dla ciebie kilka innych pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #6009 /* ~"Dzięki. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.2 20.1
  SAY #6010 /* ~"Jeśli chcesz pracować w kuźni, musisz mieć skąd brać rudę. Wypróbuj zmienniczkę Tyldona. Zapomniałem, jak się nazywa, ale powinna ci dać rudę bez zbędnego gadania."~ */
  IF ~~ THEN REPLY #6011 /* ~"Dziękuję, stary. Mam dla ciebie kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #6012 /* ~"Dziękuję i do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.0 15.0
  SAY #6013 /* ~"A to dobre, chłopcze. Założę się, że byłeś zajęty!" Śmieje się do siebie. Podaje ci przedmioty. "No, masz. Traktuj tę pracę na poważnie, słyszysz?"~ */
  IF ~~ THEN REPLY #6014 /* ~"Tak zrobię. Ale i tak mam jeszcze kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #6015 /* ~"Z pewnością. Żegnaj.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.1 15.1
  SAY #6016 /* ~"Przekazane z pokolenia na pokolenie, co? Masz szczęście, że nie wyrzuciliśmy tego - czasami tak robimy albo sprzedajemy, jeżeli możemy udowodnić, że klient nie zjawi się po to, co zostawił. No cóż, proszę. Opiekuj się tym, słyszysz?"~ */
  IF ~~ THEN REPLY #6017 /* ~"Oczywiście. A czy możesz odpowiedzieć mi na kilka pytań?"~ */ GOTO 3
  IF ~~ THEN REPLY #6018 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.2 15.2
  SAY #6019 /* ~"Rozumiem. Nieźle się obłowiłeś. Trzymaj, chłopcze. Traktuj ten metal z uwagą, słyszysz?"~ */
  IF ~~ THEN REPLY #6020 /* ~"No pewnie. Odpowiesz mi na pytanie, dobrze?"~ */ GOTO 3
  IF ~~ THEN REPLY #6021 /* ~"Pewnie. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.0
  SAY #6022 /* ~Spogląda na ciebie z niesmakiem. "Może byś mnie tak docenił, chłopcze. Masz coś chciał. Teraz idź już albo zmienię zdanie i zawołam straż."~ */
  IF ~~ THEN REPLY #6023 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #6024 /* ~"Może jestem już stary i zbzikowany, ale to nie znaczy, że nie wiem, co jest grane. Bedai-Lin od pewnego czasu nie jest szczęśliwa, a nigdy nie lubiła pracować dla biesów. Idź już. Z całą pewnością mam jeszcze parę rzeczy do zrobienia."~ */
  IF ~~ THEN REPLY #6025 /* ~Odejdź.~ */ EXIT
END
