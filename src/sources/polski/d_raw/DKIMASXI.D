// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIMASXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIMASXI~

IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2941 /* ~Diabelstwo o dzikim wyglądzie krzywi się ze złością na twój widok. Jej pokryte tatuażami ciało jest praktycznie nagie, ma na sobie tylko wąski, skórzany rzemień, czarny biustonosz i naramienniki, które służą raczej za dekorację, niż rzeczywisty ochraniacz. Jej spiczaste włosy - oraz rzadki mech na przypominających kozie nogach - są mosiężno-białe. W uszach, nozdrzach, ustach i brwi ma niezliczoną ilość kolczyków. Na szyi, skórzaną obrożę z napisem 'Kimasxi Żmijowy Język'.~ */
  IF ~~ THEN REPLY #2942 /* ~"Witaj..."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41630 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41579 /* ~Kimasxi obnaża zęby. "A na cóż *ty* się patrzysz, ty pokaleczony skurlu?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 434
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41643 /* ~"Na ciebie. Mam kilka pytań..."~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41644 /* ~"Na ciebie - i nie jestem pod wrażeniem. Żegnaj."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41645 /* ~"Na nic. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY #41580 /* ~Szyderczo uśmiecha się do Mortego, a następnie patrzy poniżej, tam gdzie normalnie byłoby ciało. "Ostry masz język... jak na truposza bez ciała."~ */
  IF ~~ THEN REPLY #41721 /* ~"Hej, wy dwoje. Wystarczy już tego."~ */ EXTERN ~DMORTE~ 435
  IF ~~ THEN REPLY #41722 /* ~Niech się kłócą.~ */ EXTERN ~DMORTE~ 436
END

IF ~~ THEN BEGIN 3 // from:
  SAY #41581 /* ~"Kleszczami?! Jedynym irytującym insektem w pobliżu jesteś *ty*!" Nagle odwraca się do ciebie. "Hej! Chcesz ze mną pogadać, czy jak?"~ */
  IF ~~ THEN REPLY #41723 /* ~"'Czy jak?' A co jeszcze mogę z tobą zrobić?"~ */ GOTO 5
  IF ~~ THEN REPLY #41724 /* ~"Tak... Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #41725 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 1.3 5.2 8.2 9.3 10.3 12.2 14.1 15.1 16.1 21.2 21.3
  SAY #41582 /* ~Wywraca oczami. "Więc szpicuj się!"~ */
  IF ~~ THEN REPLY #41726 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #41583 /* ~"Coś ty chciał przez to powiedzieć, ty skurlowata jadaczko? No dalej! Daj mi powód, żebym ci powiedziała 'nie'."~ */
  IF ~~ THEN REPLY #41727 /* ~"Co zwykle robisz z klientami?"~ */ GOTO 6
  IF ~~ THEN REPLY #41728 /* ~"Mam tylko kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #41729 /* ~"Nieważne. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41584 /* ~"Praktykuję obrazę."~ */
  IF ~~ THEN REPLY #41730 /* ~"Co to znaczy?"~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 7
  IF ~~ THEN REPLY #41731 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #41732 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #41585 /* ~"Pokażę ci." Próbuje otwartą dłonią uderzyć cię w twarz, ale udaje ci się uchylić. Kimasxi wydyma wargi i krzywi się. "No cóż."~ */
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41733 /* ~"Powiedz... możesz nauczyć Mortego jak być bardziej obelżywym?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #41734 /* ~"Myślałem, że coś, co przypomina pół-zwierzę, ma lepszy refleks."~ */ GOTO 8
  IF ~~ THEN REPLY #41735 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #41736 /* ~"Mam już cię dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #41586 /* ~Obdarza cię sceptycznym spojrzeniem. "Potrafisz *myśleć*? Ha. Wiesz, *myślałam*, że coś, co przypomina pół-zombie, ma *gorszy* refleks."~ */
  IF ~~ THEN REPLY #41737 /* ~"Cóż, źle myślałaś... wyobrażam sobie, że często ci się to przytrafia."~ */ GOTO 9
  IF ~~ THEN REPLY #41738 /* ~"Słuchaj, mam tylko kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #41739 /* ~"Mam już cię dość. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #41587 /* ~"Musisz sobie dużo *wyobrażać*: że nie jesteś tak cholernie szkaradny, że kobiety biorą cię poważnie... i przestań się gapić na moje piersi!" Jej ostatnie słowa zaskakują cię, bo wcale tam nie patrzyłeś.~ */
  IF ~~ THEN REPLY #41740 /* ~"O czym ty mówisz?"~ */ GOTO 10
  IF ~~ THEN REPLY #41741 /* ~"Czy *to* one? Rozpoznałem je po tych małych, guzkowatych, nowotworowych naroślach."~ */ GOTO 12
  IF ~~ THEN REPLY #41742 /* ~"Słuchaj, mam tylko kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #41743 /* ~"Mam już cię dość. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41588 /* ~"Och, jasne, że nie patrzyłeś, nie? Ty wielki, lubieżny truposzu... Co z tobą? Nigdy wcześniej nie widziałeś pary cycków?"~ */
  IF ~~ THEN REPLY #41744 /* ~"Wcale nie patrzyłem. Zachowujesz się, jakbyś była szalona..."~ */ GOTO 11
  IF ~~ THEN REPLY #41745 /* ~"Czy *to* one? Rozpoznałem je po tych małych, guzkowatych, nowotworowych naroślach."~ */ GOTO 12
  IF ~~ THEN REPLY #41746 /* ~"Słuchaj, mam tylko kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #41747 /* ~"Mam już cię dość. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #41589 /* ~Kimasxi wywraca oczami, krzyżuje ramiona i zaciska usta. "Rozmawiać z tobą, to jak rozmawiać z modronem. Szpicuj się, nudziarzu; lepiej zajmij się jakąś *zwyczajniejszą* dziewczyną."~ */
  IF ~~ THEN REPLY #41748 /* ~"Poczekaj - mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #41749 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 10.1
  SAY #41590 /* ~Unosi brew. "Słuchaj, jeśli nie jesteś w stanie zauważyć tak pięknych piersi jak moje, to *najwidoczniej* nie spędzałeś za dużo czasu w towarzystwie kobiet..."~ */
  IF ~~ THEN REPLY #41750 /* ~"Chcesz przez to powiedzieć, że jesteś kobietą? Mieścisz się w tej kategorii?"~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41751 /* ~"Słuchaj, mam tylko kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #41752 /* ~"Mam już cię dość. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0 16.0
  SAY #41591 /* ~Wygląda na to, że brakuje jej słów. Na moment, przez krzywiącą się maskę jej twarzy przebija uśmiech - ale już po chwili jej twarz jest bardziej bazyliszkowata niż kiedykolwiek. "No dobrze, czego chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #41753 /* ~"Odpowiedzi na pytania..."~ */ GOTO 22
  IF ~~ THEN REPLY #41754 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 3.1 5.1 6.1 7.2 8.1 9.2 10.2 11.0 12.1 21.0 41.0
  SAY #41592 /* ~Diabelstwo przewraca oczami. "A niby dlaczego myślisz, że mnie to *obchodzi*? Dlaczego nie poliżesz mnie w tyłek?"~ */
  IF ~~ THEN REPLY #41755 /* ~"Nie mam dość szerokiego języka... i nie lubię mieć włosów w ustach."~ */ GOTO 15
  IF ~~ THEN REPLY #41756 /* ~"Mam już cię dość. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41593 /* ~"Cóż, wydajesz się lubić smak odchodów, ty wdychający gnój kretynie."~ */
  IF ~~ THEN REPLY #41757 /* ~"Bo to zupełnie to samo, co pocałować ciebie, ty wyliniała miso smrodu."~ */ GOTO 16
  IF ~~ THEN REPLY #41758 /* ~"Mam już cię dość. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41594 /* ~"Pocałować *mnie*?" Wydaje dźwięk, jakby wymiotowała. "Wolałabym pocałować krwawą flegmę, niż ciebie. Nie, dzięki!"~ */
  IF ~~ THEN REPLY #41759 /* ~"Nie dziękuj mi... dziękuj Mocom, że ktoś w ogóle chce cię całować."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41760 /* ~"Mam już cię dość. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.0 22.2
  SAY #41595 /* ~Unosi brwi. "No *to* dopiero jest niezwykła prośba. Nie wiem, wygląda na to, że już sama w sobie ma wystarczająco plugawy język..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 437
END

IF ~~ THEN BEGIN 18 // from:
  SAY #41596 /* ~"*Chciałbyś* mieć nogi jak ja, ty żałosna jadaczko! Mogę chodzić, biegać, tańczyć... a ty? Podskakujesz, *marząc* o choćby i kozich!"

Obydwoje rzucają się na siebie, obrzucając się najgorszymi obelgami. Jest to prawdziwa bitwa na słowa.~ */
  IF ~~ THEN REPLY #41761 /* ~Czekaj do końca...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41597 /* ~W końcu przestają się obrażać, i tylko, w niesamowitej ciszy, obrzucają się pełnym nienawiści wzrokiem. W końcu, diabelstwo przyznaje niechętnie: "Niezły jesteś. Naprawdę niezły."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 438
END

IF ~~ THEN BEGIN 20 // from:
  SAY #41598 /* ~Kimasxi mruży oczy. "Nie przesadzaj, *czaszko*."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 439
END

IF ~~ THEN BEGIN 21 // from:
  SAY #41599 /* ~Zwraca się do ciebie. "To czego chciałeś? Nie mam zamiaru być tu z tobą dłużej, niż to absolutnie konieczne."~ */
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41762 /* ~"Właściwie mam tylko kilka pytań..."~ */ GOTO 14
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41763 /* ~"Właściwie mam tylko kilka pytań..."~ */ GOTO 22
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41764 /* ~"Odczuwam to samo. Żegnaj."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41765 /* ~"To na razie wystarczy. Żegnaj."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41766 /* ~"Odczuwam to samo. Żegnaj."~ */ EXIT
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41767 /* ~"To na razie wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 21.1 23.0 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 33.0 34.1 35.0 36.0 37.0 38.0 40.0 42.0 43.0
  SAY #41600 /* ~Wygląda na poirytowaną. "Dobra, co by to nie było... pytaj."~ */
  IF ~~ THEN REPLY #41768 /* ~"Kim jesteś?"~ */ GOTO 36
  IF ~~ THEN REPLY #41769 /* ~"Czym się zajmujesz?"~ */ GOTO 37
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41770 /* ~"Powiedz... Nauczysz Mortego jak być bardziej obelżywym?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41771 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67845 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 43
  IF ~  Global("Know_Kim_Kes","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41772 /* ~"Słyszałem, że jesteś przyrodnią siostrą Kesai-Serris. To prawda?"~ */ GOTO 27
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41773 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ GOTO 25
  IF ~  Global("Nenny_Hint2","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #41774 /* ~"Powiedziano mi, że ostatnio widziano jak wymykałaś się z komnat Marissy... czy ma to coś wspólnego ze zniknięciem jej welonu?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",2)
~ GOTO 39
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41775 /* ~"Usiłuję odnaleźć zapach Vivian... Czy wiesz może, gdzie mógłby być?"~ */ GOTO 32
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41776 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41777 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ JOURNAL #66742 /* ~Kiedy zapytałem się o Ravelę jednej z kurtyzan z Przybytku, dziewczyna poradziła mi, abym porozmawiał na temat Raveli z Yves. Powiedziano mi, że Yves zwykła kolekcjonować wszystkie plotki i opowiastki i na pewno znajdzie w swoim repertuarze coś na temat Raveli.~ */ GOTO 24
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #41778 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 34
  IF ~~ THEN REPLY #41779 /* ~"Właściwie nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.9
  SAY #41602 /* ~Prycha. "Może w twoim tyłku, co? Cholera, nie wiem." Kimasxi wygładza włosy, które mimo to z powrotem układają się w spiczastą strzechę.~ */
  IF ~~ THEN REPLY #41780 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41781 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.10
  SAY #41603 /* ~"A co *ja* miałabym o niej wiedzieć? Wyglądam ci na jakiegoś naukowca, albo co? Idź pytać kogoś bardziej 'uczonego'... albo Yves. Pewnie wśród tych wszystkich historii, które zna, będzie przynajmniej *jedna* o niej. Och, nie zapomnij przy okazji usiąść na jakiejś halabardzie."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41782 /* ~"Słyszałem, że Kesai-Serris jest jej córką. To prawda?"~ */ GOTO 25
  IF ~~ THEN REPLY #41783 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41784 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.6 24.0
  SAY #41604 /* ~Wzrusza ramionami. "Z tego co wiem, tak." Nagle staje się podejrzliwa. "Dlaczego pytasz?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41785 /* ~"Pytałem ją, ale zaprzeczyła."~ */ GOTO 26
  IF ~~ THEN REPLY #41786 /* ~"Nie martw się tym. Mam jeszcze jedno pytanie."~ */ GOTO 22
  IF ~~ THEN REPLY #41787 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #41605 /* ~"No i? Nie żeby to był w ogóle twój interes."~ */
  IF ~  Global("Know_Kim_Kes","AR0605",1)
~ THEN REPLY #41788 /* ~"Słyszałem też, że jesteś jej przyrodnią siostrą."~ */ GOTO 27
  IF ~~ THEN REPLY #41789 /* ~"Może nie. Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41790 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.5 26.0
  SAY #41606 /* ~"Tak, jestem spokrewniona z tą pucułowatą marzycielką o haczykowatym nosie. Ten sam ojciec, różne matki. No i co?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41791 /* ~"Miałem nadzieję, że pomożesz mi dowiedzieć się, czy Kesai jest *naprawdę* córką Raveli."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",2)
~ JOURNAL #39475 /* ~Kimasxi Żmijowy Język, przyrodnia siostra Kesai-Serris, powiedziała mi, że powinienem poprosić Kesai, aby skontaktowała się z ojcem, jeśli chce dostać dowód na to, że jest córką Raveli Szaradnej.~ */ GOTO 28
  IF ~~ THEN REPLY #41792 /* ~"Nie martw się tym. Mam jeszcze jedno pytanie."~ */ GOTO 22
  IF ~~ THEN REPLY #41793 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #41607 /* ~Kimasxi marszczy czoło. "Normalnie, w życiu bym ci nie pomogła, ale mam wrażenie, że całkiem nieźle zdenerwuje to tę strojącą się, flirciarską panienkę. Powiedz jej, żeby spytała naszego ojca... jest potężnym kambionem, więc powinna być w stanie go przywołać. To powinno wystarczyć."~ */
  IF ~~ THEN REPLY #41794 /* ~"Kambionem?"~ */ GOTO 29
  IF ~~ THEN REPLY #41795 /* ~"Dzięki. Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41796 /* ~"Pójdę z nią porozmawiać. Dzięki, Kimasxi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #41608 /* ~"Tak, *kambionem*." Kimasxi wywraca oczami. "Nie słyszałeś, gdy mówiłam po raz pierwszy? Co uszy przestały działać z ostatnim tchnieniem umysłu?"~ */
  IF ~~ THEN REPLY #41797 /* ~"Pytałem, czym jest kambion..."~ */ GOTO 30
  IF ~~ THEN REPLY #41798 /* ~"Nie... ale mam następne pytanie."~ */ GOTO 22
  IF ~~ THEN REPLY #41799 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41609 /* ~"O rany, ty naprawdę jesteś Tępakiem." Ze smutkiem kręci głową, cmokając. "To pół-bies, trepie. Coś tak jakby ty... ale ty jesteś *pół-gnojem*. W każdym razie, śmierdzisz jak gnój."~ */
  IF ~~ THEN REPLY #41800 /* ~"Lepsze to, niż być nawet w połowie *tobą*, Kimasxi."~ */ GOTO 31
  IF ~~ THEN REPLY #41801 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41802 /* ~"Żegnaj, Kimasxi."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #41610 /* ~"*Chciałbyś* być w połowie Kimasxi, skurlu... nawet gdybyś miał mieć kozi zadek na ramionach, byłoby to lepsze niż ta twoja, pełna blizn, gęba."~ */
  IF ~~ THEN REPLY #41803 /* ~"Dość tego, Kimasxi. Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41804 /* ~"Nie mam na to czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.8
  SAY #41611 /* ~"Spróbuj w rynsztokach Ula... ale może to tylko podobny zapach. A tak na poważnie... ukradła go Marissa."~ */
  IF ~  GlobalGT("Marissa","GLOBAL",0)
~ THEN REPLY #41805 /* ~"Marissa? Jesteś pewna?"~ */ GOTO 33
  IF ~  Global("Marissa","GLOBAL",0)
~ THEN REPLY #41806 /* ~"Marissa... jeszcze jej nie spotkałem. Jesteś pewna?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #41612 /* ~"Nie, ale mam nadzieję, że wleziesz do jej pokoju i zdenerwujesz ją na tyle, że zrobi ci coś okropnego."~ */
  IF ~~ THEN REPLY #41807 /* ~"Hmm. Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41808 /* ~"W takim razie, nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.11
  SAY #41613 /* ~"Tak, ukrywa się pod moim łóżkiem. No idź i sprawdź... na czworakach. Nie kopnę cię w... naprawdę."~ */
  IF ~~ THEN REPLY #41809 /* ~Na czworaki i sprawdź.~ */ GOTO 35
  IF ~~ THEN REPLY #41810 /* ~"Hmm. Mam następne pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41811 /* ~"W takim razie, nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41614 /* ~Patrząc pod jej łóżko - oczywiście nic pod nim nie ma - zdajesz sobie sprawę, że Kimasxi stoi tuż za tobą. "Nie mogłam... to zbyt proste. Wstawaj biedny, głupi truposzu. *Nie ma* dziesiątej uczennicy."~ */
  IF ~~ THEN REPLY #41812 /* ~"W takim razie mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41813 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.0
  SAY #41615 /* ~"Pytasz o moje imię? Nieciekawe. Ale mogę zgadnąć twoje: 'Kupo-blizn-wynocha-stąd-zanim-podpalę-twój-tyłek'."~ */
  IF ~~ THEN REPLY #41814 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41815 /* ~"Przyjmę, że to Kimasxi, skoro taki jest napis na obroży. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #41616 /* ~"Na pewno nie tobą." Uśmiecha się z wyższością. "Właściwie, to rozważam jak najlepiej powiedzieć ci, żebyś się szpicował."~ */
  IF ~~ THEN REPLY #41816 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41817 /* ~"W takim razie, nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #41617 /* ~"Jasne. Nie-Sława zbiera biedne sierotki z ulic Ula, wychowuje, żebyśmy oddawały się rozpuście z takimi szkaradnymi typami jak ty, podczas gdy sama tłucze nas, ubiera w szmaty i pije naszą krew. To naprawdę okropne."~ */
  IF ~~ THEN REPLY #41818 /* ~"Rozumiem... Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41819 /* ~"Dobrze... pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.7
  SAY #41618 /* ~Kimasxi wpada w szał: "KTO CI TO POWIE..." Nagle ucisza się i zaczyna obserwować cię zmrużonymi oczyma. "Gdybym nawet tam *była*, trepie, nie wzięłabym jej brudnego welonu... Jeżeli chcesz, to przeszukaj mój pokój. Ale jeśli złapię cię na obwąchiwaniu mojej bielizny, upewnię się, że już więcej cię tu nie wpuszczą."~ */
  IF ~~ THEN REPLY #41820 /* ~"Dlaczego ktoś miałby obwąchiwać twoją bieliznę?"~ */ JOURNAL #66514 /* ~Wspomniałem Kimasxi, że widziano ją wymykającą się z apartamentów Marrisy, ale ona zaprzeczyła podejrzeniom o tym, że to ona przywłaszczyła sobie karmazynowy welon. Przeciwnie, stwierdziła, że i jej komnatę niedawno obrabowano.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #41619 /* ~"Nie mam pojęcia. Ale ktoś zwędził więcej niż jedną parę. Mój ulubiony skórzany biustonosz z żelaznymi ćwiekami też." Chrząka ze złością.~ */
  IF ~~ THEN REPLY #41822 /* ~"Hmm. Mam jeszcze jedno pytanie."~ */ GOTO 22
  IF ~~ THEN REPLY #41823 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN BEGIN 41 // from:
  SAY #41620 /* ~"Proszę, kogo my tu mamy. Brzydki, jak zawsze. Mało ci jeszcze obelg Kimasxi, co?"~ */
  IF ~~ THEN REPLY #41824 /* ~"Nie, mam tylko parę pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #41825 /* ~"Właściwie jestem tu przypadkiem. Żegnaj."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN BEGIN 42 // from:
  SAY #41621 /* ~"Och, to znowu *ty*. Nie masz mnie dość, co?"~ */
  IF ~~ THEN REPLY #41826 /* ~"Mam kilka pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #41827 /* ~"Właściwie jestem tu przypadkiem, KImasxi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.3 22.4
  SAY #41622 /* ~"O tej małej 'Ecco'? Nic o niej nie wiem. Nie gadam z nią... to znaczy, po co? I tak nie może odpowiedzieć. Spytaj o nią Oziębłą Dolorę... myślę, że widziałam jak się zabawia z dawnym obiektem westchnień Ecco, z czasów, kiedy ta jeszcze mogła mówić."~ */
  IF ~~ THEN REPLY #41828 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #41829 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
