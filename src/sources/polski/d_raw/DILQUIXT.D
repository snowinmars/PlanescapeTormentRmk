// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXT~

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3069 /* ~Widzisz szeroką w barach, ogromną postać o czterech ramionach i głowie psa. Jedna para jego potężnie umięśnionych ramion zakończona jest przerażającymi, wyszczerbionymi szczypcami, które wyglądają jakby mogły wydrzeć samą duszę ze swojej ofiary. Jego głos jest zaskakująco miękki. "Ach, podróżniku! Widzę, że przynosisz ze sobą wartościowych kompanów i..." przerywa by wciągnąć powietrze, "...*rozkoszny* zapach. Anno, znałem twego ojca - nawet teraz nie jest mu lekko w Otchłani. I Panna Nie-Sława; twoja matka, Czerwony Welon, na pewno ucieszy się na wieść, że masz się dobrze."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #11201 /* ~Widzisz szeroką w barach, ogromną postać o czterech ramionach i głowie psa. Jedna para jego potężnie umięśnionych ramion zakończona jest przerażającymi, wyszczerbionymi szczypcami, które wyglądają jakby mogły wydrzeć samą duszę ze swojej ofiary. Jego głos jest zaskakująco miękki. "Ach, podróżniku! Widzę, że przynosisz ze sobą wartościowych kompanów i..." przerywa by wciągnąć powietrze, "...*rozkoszny* zapach. Anno, znałem twego ojca - nawet teraz nie jest mu lekko w Otchłani."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #11203 /* ~Widzisz szeroką w barach, ogromną postać o czterech ramionach i głowie psa. Jedna para jego potężnie umięśnionych ramion zakończona jest przerażającymi, wyszczerbionymi szczypcami, które wyglądają jakby mogły wydrzeć samą duszę ze swojej ofiary. Jego głos jest zaskakująco miękki. "Ach, podróżniku! Widzę, że przynosisz ze sobą wartościowych kompanów i..." przerywa by wciągnąć powietrze, "...*rozkoszny* zapach. Panno Nie-Sławo; twoja matka, Czerwony Welon, na pewno ucieszy się na wieść, że masz się dobrze."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DGRACE~ 11
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 3 // from:
  SAY #11204 /* ~Widzisz szeroką w barach, ogromną postać o czterech ramionach i głowie psa. Jedna para jego potężnie umięśnionych ramion zakończona jest przerażającymi, wyszczerbionymi szczypcami, które wyglądają jakby mogły wydrzeć samą duszę ze swojej ofiary. Jego głos jest zaskakująco miękki. "Rozdzieranie imion tych abiszai na pojedyncze sylaby było jak najbardziej przyjemne. Dziękuję, że mi to umożliwiłeś."~ */
  IF ~~ THEN REPLY #3367 /* ~"Cała przyjemność po mojej stronie. Mam kilka pytań do ciebie..."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ GOTO 5
  IF ~~ THEN REPLY #11202 /* ~"Cała przyjemność po mojej stronie. Żegnaj."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 4 // from:
  SAY #11205 /* ~Glabrezu odwraca się niecierpliwie, jak gdyby był starym przyjacielem. "Ach, wędrowcze. Wróciłeś! Jak mogę ci pomóc?" Niby przypadkiem kłania się kpiąco Nie-Sławie i Annie.~ */
  IF ~~ THEN REPLY #11206 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11207 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0 6.0 7.0 8.0 9.2 10.1 11.0 12.2 13.1 14.1 15.2 16.0 17.0 18.0 18.2 19.0
  SAY #11208 /* ~"Ależ oczywiście! Pomoc komuś, kto mógłby być moim najbardziej wartościowym przyjacielem i sprzymierzeńcem, sprawia mi tylko przyjemność!"~ */
  IF ~~ THEN REPLY #11209 /* ~"Opowiedz mi o sobie."~ */ GOTO 9
  IF ~~ THEN REPLY #11210 /* ~"Dlaczego wcześniej byłeś w przebraniu?"~ */ GOTO 10
  IF ~~ THEN REPLY #11211 /* ~"Opowiedz mi o gospodzie i jej klientach."~ */ GOTO 11
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11212 /* ~"Barkis chce, żebym rozwiązał problem z rachunkiem tej Mokkai."~ */ GOTO 12
  IF ~~ THEN REPLY #11213 /* ~"Nic więcej mi nie trzeba. Żegnaj."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 6 // from:
  SAY #11214 /* ~Glabrezu odwraca się niecierpliwie, jak gdyby był starym przyjacielem. "Ach, wędrowcze. Wróciłeś! Jak mogę ci pomóc?" Niby przypadkiem kłania się kpiąco Annie.~ */
  IF ~~ THEN REPLY #11215 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11216 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 7 // from:
  SAY #11217 /* ~Glabrezu odwraca się niecierpliwie, jak gdyby był starym przyjacielem. "Ach, wędrowcze. Wróciłeś! Jak mogę ci pomóc?" Niby przypadkiem kłania się kpiąco Nie-Sławie.~ */
  IF ~~ THEN REPLY #11218 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11219 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 8 // from:
  SAY #11220 /* ~Glabrezu odwraca się niecierpliwie, jak gdyby był starym przyjacielem. "Ach, wędrowcze. Wróciłeś! Jak mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #11221 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11222 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #11223 /* ~"Ja? Jestem tylko prostym glabrezu, tanar'ri - 'demonem' dla ignorantów - jestem tu, by być razem ze śmiertelnikami i uczyć się jak żyją. Niektórym, tym którzy według mnie zasługują na ten zaszczyt, proponuję więcej mocy praktycznie za nic. Zrobiłbym tak i z tobą, ale czuć od ciebie umiłowanie porządku - twój duch jest do niego przywiązany. Nie mogę teraz pokonać tej siły, ale jeśli chcesz spróbować tej mocy kiedy indziej," uśmiecha się odsłaniając ostre, poszarpane zęby "może dojdziemy do porozumienia."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11224 /* ~"Być może. Opowiedz mi jeszcze o tanar'ri."~ */ GOTO 13
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11225 /* ~"Być może. Opowiedz mi jeszcze o tanar'ri."~ */ GOTO 14
  IF ~~ THEN REPLY #11226 /* ~"Być może. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11227 /* ~"Być może. Ale nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #11228 /* ~"Przebrałem się tak, gdyż zarówno pozwoliło mi to szpiegować abiszai - są już martwe - i ponieważ wielu bojaźliwych ludzi boi się ujrzeć moją moc. A teraz, nadszedł czas, bym ukazał me prawdziwe oblicze."~ */
  IF ~~ THEN REPLY #11229 /* ~"Dlaczego teraz?"~ */ GOTO 17
  IF ~~ THEN REPLY #11230 /* ~"Rozumiem. Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #11231 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #11232 /* ~"Po pozbyciu się tych wstrętnych baatezu, miejsce to stało się jeszcze przyjemniejsze. Zapach palącego się ciała, małych konfliktów mocy i mało znaczące dramaty tworzą całkiem przyjemne otoczenie. Wolałbym słyszeć więcej krzyków, ale w końcu nie jesteśmy w Otchłani. Ci klienci - w większości - mają małe myśli i małe marzenia. O jest dla mnie tajemnicą - nie rozumiem jego mocy, ale to się zmieni. Jeśli chodzi o innych - nie są dla mnie żadnym źródłem fascynacji. Wiedziałem takich jak oni przez niezliczone milenia."~ */
  IF ~~ THEN REPLY #11233 /* ~"Bardzo dobrze. Odpowiedz mi jeszcze na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11234 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #11235 /* ~"Należy użyć prostego rozwiązania. Mógłbyś ją zarżnąć, ale to mogłoby ściągnąć na ciebie niepotrzebną uwagę. Sugeruję otrucie."~ */
  IF ~~ THEN REPLY #11236 /* ~"A jeżeli chciałbym zapłacić jej rachunek i pomóc jej?"~ */ GOTO 18
  IF ~~ THEN REPLY #11237 /* ~"Nie mam trucizny."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11238 /* ~"Dziękuję za rady. Odpowiedz mi jeszcze na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11239 /* ~"Dziękuję za radę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #11240 /* ~Ilquiks kiwa głową w kierunku Nie-Sławy. "Twoja towarzyszka powinna być w stanie dużo ci opowiedzieć." Uśmiecha się lubieżnie i kontynuuje, "Jesteśmy z dumą chaotyczni - wierzymy w moc indywidualności. Oczywiście, w tym przypadku, mówię tylko o sobie." Ponownie uśmiecha się, tym razem do siebie. "Niektórzy mówią, że jesteśmy źli, i może tak jest. A jednak wierzę, że jednostka odpowiada tylko przed sobą. Zbyt duża dbałość o potrzeby innych to słabość. I wreszcie, zapamiętaj sobie: Każdy tanar'ri - czy też demon, jak to wy, śmiertelnicy od czasu do czasu nas nazywacie - reprezentuje jakiś sposób myślenia, szczególną chęć umysłu do pozyskania mocy. Zlicz nieograniczoną ilość Otchłani. Tak naprawdę, w umysłach śmiertelników, jesteśmy odwzorowaniem siły naszej sprawy."~ */
  IF ~~ THEN REPLY #11241 /* ~"A więc właściwie nie jesteście materialni?"~ */ GOTO 15
  IF ~~ THEN REPLY #11242 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11243 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #11244 /* ~"Jesteśmy z dumą chaotyczni - wierzymy w moc indywidualności. Oczywiście, w tym przypadku, mówię tylko o sobie." Ponownie uśmiecha się, tym razem do siebie. "Niektórzy mówią, że jesteśmy źli, i może tak jest. A jednak wierzę, że jednostka odpowiada tylko przed sobą. Zbyt duża dbałość o potrzeby innych to słabość. I wreszcie, zapamiętaj sobie: Każdy tanar'ri - czy też demon, jak to wy, śmiertelnicy od czasu do czasu nas nazywacie - reprezentuje jakiś sposób myślenia, szczególną chęć umysłu do pozyskania mocy. Zlicz nieograniczoną ilość Otchłani. Tak naprawdę, w umysłach śmiertelników, jesteśmy odwzorowaniem siły naszej sprawy."~ */
  IF ~~ THEN REPLY #11245 /* ~"A więc właściwie nie jesteście materialni?"~ */ GOTO 15
  IF ~~ THEN REPLY #11246 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11247 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0 14.0
  SAY #11248 /* ~"Oczywiście, że jesteśmy materialni - tak długo jak jesteśmy tutaj, w Sferach Zewnętrznych. Ale to jest miejsce, gdzie wszystkie myśli ucieleśniają się. To, czym naprawdę jesteśmy to symbol. Nasza siła rośnie, gdy w Pierwszej Sferze Materialnej rośnie wiara w nas. Oto powód, dla którego werbujemy śmiertelników, którzy nawet nie zdają sobie sprawy z naszej obecności w ich umysłach i sercach."~ */
  IF ~~ THEN REPLY #11249 /* ~"To obrzydliwe. Powinni mieć wolną wolę i prawo wyboru."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_IlquixT_One","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #11250 /* ~"Jeśli są zbyt słabi, by wam się przeciwstawić, lub gdy sami was zapraszają, zasługują na to, co ich spotyka."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_IlquixT_One","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #11251 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11252 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #11253 /* ~"Mają wolną wolę, człowieku pokryty bliznami. Nie mielibyśmy punktu zaczepienia, gdyby się nam opierali. Gubi ich słabość. Gdyby tylko stali się silniejsi, nie moglibyśmy nic osiągnąć. To nasz sposób egzystencji." Uśmiecha się. "A gdyby nim nie był, sprawilibyśmy by taki się stał."~ */
  IF ~~ THEN REPLY #11254 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11255 /* ~"Dziękuję za naukę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #11256 /* ~"Ponieważ nadszedł czas, który wybrałem. Mam swoje powody, mały nieśmiertelniku, ale nie podam ich tylko dlatego, że jesteś ich ciekaw. Chyba że potrafisz mnie *zmusić*..."~ */
  IF ~~ THEN REPLY #11257 /* ~"Wolałbym usłyszeć odpowiedź na parę innych pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11258 /* ~"Jeśli nalegasz. Przygotuj się na śmierć."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0
  SAY #11259 /* ~"Gdybyś naprawdę chciał to zrobić, to po co prosiłbyś przyjaciela o radę? Daj spokój. Trucizna jest zdecydowanie najlepszym rozwiązaniem problemu."~ */
  IF ~~ THEN REPLY #11260 /* ~"Nie, myślę, że spróbuję czegoś innego. Odpowiedz mi na parę innych pytań..."~ */ GOTO 5
  IF ~  !PartyHasItem("Embalm")
~ THEN REPLY #11261 /* ~"Problem częściowo leży w tym, że nie mam trucizny."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11262 /* ~"Pomyślę o tym. Odpowiedz mi na parę pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11263 /* ~"Być może. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.1 18.1
  SAY #11264 /* ~"Nie masz trucizny? A więc pozwól mi dać ci trochę!" Przez chwilę koncentruje się i po chwili w jego szponiastej łapie pojawia się dzbanek z jakimś płynem. "Może rozpoznajesz w nim płyn do balsamowania, którego używają Grabarze," mruczy. "Nie będzie bolało, jeśli to cię niepokoi." Potwór wpycha ci truciznę do rąk.~ */
  IF ~~ THEN REPLY #11265 /* ~"Wielkie dzięki. Mam jeszcze parę pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11266 /* ~"Wielkie dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #2072 /* ~Potwór wydaje się rozbawiony, odwraca się do ciebie. "Czy jeszcze nie nauczyłeś jej dobrych manier, podróżniku?"~ */
  IF ~~ THEN REPLY #2073 /* ~"Anno, ucisz się."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ EXTERN ~DANNAH~ 80
  IF ~~ THEN REPLY #2077 /* ~"Nie. Jest sobą i mówi to, co myśli."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~DANNAH~ 81
END
