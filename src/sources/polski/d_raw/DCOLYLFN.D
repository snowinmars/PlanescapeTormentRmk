// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLYLFN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLYLFN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #18505 /* ~Ten dość cwaniacko wyglądający jegomość tkwi nieruchomo na stercie śmieci, tak, że patrząc z oddali można jego sylwetkę wziąć omyłkowo za jakąś postrzępioną płachtę. Udaje, że cię nie widzi, ale czujesz, że kątem oka omiata twoją postać uważnym spojrzeniem. Nagle podrywa się i kiwa na ciebie ręką. "Ssst! Hej! Ssst! Ej, ty!"~ */
  IF ~~ THEN REPLY #18506 /* ~Zbliż się do niego.~ */ GOTO 58
  IF ~~ THEN REPLY #18507 /* ~Nie zwracaj uwagi na faceta, idź swoją drogą.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #18508 /* ~Ten dość cwaniacko wyglądający jegomość tkwi nieruchomo na stercie śmieci, tak, że patrząc z oddali można jego sylwetkę wziąć omyłkowo za jakąś postrzępioną płachtę. Zauważywszy ciebie, a zaraz potem Mortego u twojego boku, podrywa się i kiwa na ciebie ręką: "Sssst... Ej! Ta czacha... Skądżeś ją wytrzasnął? To moja czaszka, niech skonam! Oddawaj ją."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #18509 /* ~Ten dość cwaniacko wyglądający jegomość tkwi nieruchomo na stercie śmieci, tak, że patrząc z oddali można jego sylwetkę wziąć omyłkowo za jakąś postrzępioną płachtę. Kiedy jego wzrok pada na Annę, jego ślepia rozszerzają się, a pomiędzy pożółkłe zęby napływa ślina, jakby zobaczył ulubiony smakołyk. "Sssst... Ej... Brzdęk-brzdęk, panienki lubią brzdęki, co? Pięknie, pięknie." Obleśnie oblizuje popękane i pokryte strupami wargi.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 108
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #18510 /* ~"Ech. Czegóż chcesz?!"~ */
  IF ~~ THEN REPLY #18511 /* ~"Szukam pewnych informacji..."~ */ GOTO 23
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 4 // from:
  SAY #18512 /* ~"Ech. A jak się miewa moja czaszka?" Wybucha śmiechem, co w jego przypadku oznacza przeraźliwe rzężenie.~ */
  IF ~~ THEN REPLY #18513 /* ~"Szukam pewnych informacji..."~ */ GOTO 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #18514 /* ~"Złodziej! Sęp! Parszywa hiena! Zabiera cudze rzeczy i nie chce oddać! Oddawaj moją czaszkę! Jest moja! Moja!"~ */
  IF ~~ THEN REPLY #18515 /* ~"Ta czaszka nie należy do ciebie."~ */ GOTO 6
  IF ~~ THEN REPLY #18516 /* ~Prawda: "Dobrze, weź sobie tę czaszkę."~ */ GOTO 9
  IF ~~ THEN REPLY #18517 /* ~Zaatakuj go, kiedy się odsłoni. Zachęć go: "Dobrze, weź sobie tę czaszkę."~ */ GOTO 10
  IF ~~ THEN REPLY #18518 /* ~"A jakiż masz dowód na to, że ta czaszka jest twoja?"~ */ GOTO 12
  IF ~~ THEN REPLY #18519 /* ~Prawda: "Gdybyś potrafił udowodnić, że ta czaszka do ciebie należy, wówczas oddałbym ci ją. To byłoby fair."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18520 /* ~"Kupię od ciebie tę czaszkę. Może być?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18521 /* ~"Kim jesteś?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18522 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18523 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0 13.0 16.6 19.2
  SAY #18524 /* ~"Śmiesz nazywać mnie kłamcą? Czaszka jest moja! Moja!" Mamrocze i przewraca oczami. "To ty jesteś kłamca, parszywy złodziej... Wypatroszę cię."~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18525 /* ~"Dotknij mnie tylko, a zdążysz jeszcze przed śmiercią, która zaraz potem nastąpi, gorzko takiego kroku pożałować."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18526 /* ~"Nie próbowałbym tego na twoim miejscu."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18527 /* ~"Spróbuj, proszę bardzo. Zobaczysz, co się stanie."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18528 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18529 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18530 /* ~"Dotknij mnie tylko, a zdążysz jeszcze przed śmiercią, która zaraz potem nastąpi, gorzko takiego kroku pożałować."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18531 /* ~"Nie próbowałbym tego na twoim miejscu."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18532 /* ~"Spróbuj, proszę bardzo. Zobaczysz, co się stanie."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18533 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18534 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #18546 /* ~Człowiek patrzy na ciebie przez zmrużone oczy. Kalkuluje swoje szanse w przypadku stoczenia z tobą walki, i zdaje się nie dochodzi do zbyt obiecujących konkluzji, bo tylko mamrocze pod nosem i nie rusza się z miejsca. "Moja czaszka. A ty złodziej. Złodziej. Ukradł czaszkę..."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18547 /* ~"Idź do diabła, kundlu."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18548 /* ~"Idź do diabła, kundlu."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~~ THEN REPLY #18549 /* ~Prawda: "Dobrze więc. Bierz czaszkę."~ */ GOTO 9
  IF ~~ THEN REPLY #18550 /* ~Zaatakuj go, kiedy się odsłoni. Zachęć go: "Dobrze, weź sobie tę czaszkę."~ */ GOTO 10
  IF ~~ THEN REPLY #18551 /* ~"A jakiż masz dowód na to, że ta czaszka jest twoja?"~ */ GOTO 12
  IF ~~ THEN REPLY #18552 /* ~Prawda: "Gdybyś potrafił udowodnić, że ta czaszka do ciebie należy, wówczas oddałbym ci ją. To byłoby fair."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18553 /* ~"Kupię od ciebie tę czaszkę. Może być?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18554 /* ~"Kim jesteś?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18555 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18556 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.5 6.6 6.7
  SAY #18557 /* ~Człowiek patrzy na ciebie przez zmrużone oczy. Nagle podrywa się i rzuca na ciebie.~ */
  IF ~~ THEN REPLY #18558 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18559 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.2 12.1 13.1 19.0
  SAY #18560 /* ~Człowiek zanosi się suchym chichotem i uśmiecha szeroko. Wyciąga łapczywie rękę do Mortego, a wówczas daje się słyszeć donośne kłapnięcie i ręka łotrzyka cofa się jak oparzona. 'Prawowity' właściciel Mortego odskakuje z wrzaskiem: "Aiggghhhh! Aighhh!!! Zabiję cię. Zabiję!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.3 12.2 13.2 19.1
  SAY #18561 /* ~Człowiek zanosi się suchym chichotem i uśmiecha szeroko. Wyciąga łapczywie rękę do Mortego, a ty sprężasz się, aby go zaatakować, ale wówczas daje się słyszeć donośne kłapnięcie i ręka łotrzyka cofa się jak oparzona. 'Prawowity' właściciel Mortego odskakuje z wrzaskiem: "Aiggghhhh! Aighhh!!! Zabiję cię. Zabiję!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18562 /* ~Gryząc z bólu wargi mężczyzna wpatruje się w ciebie wściekle. Nagle podrywa się i rzuca na ciebie.~ */
  IF ~~ THEN REPLY #18563 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18564 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3 5.4 7.4 7.5 13.3 13.4
  SAY #18565 /* ~Mężczyzna przypatruje ci się przez chwilę, jakby miał cię za pomyleńca. "To moje, niech mnie wezmą na szpice, moje. Mówię, że moja i to jedyny dowód, nie znam innego. Czaszka jest moja! Oddawaj ją! Ale już!"~ */
  IF ~~ THEN REPLY #18566 /* ~"Ta czaszka nie należy do ciebie."~ */ GOTO 6
  IF ~~ THEN REPLY #18567 /* ~Prawda: "Dobrze, zatem. Weź sobie tę czaszkę."~ */ GOTO 9
  IF ~~ THEN REPLY #18568 /* ~Zaatakuj go, kiedy się odsłoni. Zachęć go: "Dobrze, weź sobie tę czaszkę."~ */ GOTO 10
  IF ~~ THEN REPLY #18569 /* ~"Kupię od ciebie tę czaszkę. Może być?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18570 /* ~"Kim jesteś?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18571 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18572 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.6 7.7 12.4
  SAY #18573 /* ~"Czaszka jest moja! Moja! Dawaj ją! Dasz mi ją, zapomnę, żeś mi ją ukradł." Mamrocze pod nosem, przewracając wściekle oczami.~ */
  IF ~~ THEN REPLY #18574 /* ~"Ta czaszka nie należy do ciebie."~ */ GOTO 6
  IF ~~ THEN REPLY #18575 /* ~Prawda: "Dobrze. Weź sobie tę czaszkę."~ */ GOTO 9
  IF ~~ THEN REPLY #18576 /* ~Zaatakuj go, kiedy się odsłoni. Zachęć go: "Dobrze, weź sobie tę czaszkę."~ */ GOTO 10
  IF ~~ THEN REPLY #18577 /* ~"A jakiż masz dowód na to, że ta czaszka jest twoja?"~ */ GOTO 12
  IF ~~ THEN REPLY #18578 /* ~Prawda: "Gdybyś potrafił udowodnić, że ta czaszka do ciebie należy, wówczas oddałbym ci ją. To byłoby fair."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18579 /* ~"Kupię od ciebie tę czaszkę. Może być?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18580 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18581 /* ~"Wobec tego zapomnij, żeś kiedykolwiek mnie spotkał. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.5 7.6 12.3 13.5
  SAY #18582 /* ~Jego oczy zwężają się, a wargi układają w krzywy uśmiech. Dodatkowego uroku dodają mu poskręcane i brudne zębiska. "Czaszka... Czaszka to dużo brzdęku! Bardzo dużo! Chcesz kupić? Ta czaszka znaczy dla mnie bardzo dużo."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 191
END

IF ~~ THEN BEGIN 15 // from:
  SAY #18583 /* ~Człowiek parska wściekle na Mortego: "W ten sposób chcesz ze mną rozmawiać? Ze swoim właścicielem?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 192
END

IF ~~ THEN BEGIN 16 // from:
  SAY #18584 /* ~Mężczyzna odwraca się do ciebie. Odsłania zęby i wygląda na wściekłego. "Och. Możemy się pogodzić. Ale to będzie kosztować... będzie cię to kosztować."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #18585 /* ~Daj mu jednego miedziaka.~ */ DO ~TakePartyGold(1)
~ GOTO 17
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18586 /* ~Daj mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18587 /* ~Daj mu pięćdziesiąt miedziaków.~ */ DO ~TakePartyGold(50)
~ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18588 /* ~Daj mu sto miedziaków.~ */ DO ~TakePartyGold(100)
~ GOTO 18
  IF ~  PartyGoldGT(499)
~ THEN REPLY #18589 /* ~Daj mu pięćset miedziaków.~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  PartyGold(0)
~ THEN REPLY #18590 /* ~"Nie ma dla ciebie żadnych miedziaków."~ */ GOTO 19
  IF ~~ THEN REPLY #18591 /* ~"Zapomnij o tym. Czaszka nie jest twoja, dlatego jej nie dostaniesz."~ */ GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #18592 /* ~"To na początek... A teraz dawaj resztę, i zaraz mnie tu nie będzie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 193
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2 16.3 16.4
  SAY #18593 /* ~"Uch... Dobra, to załatwia sprawę." Uśmiecha się upiornie. "Opłaca mi się być okradzionym..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 194
END

IF ~~ THEN BEGIN 19 // from: 16.5
  SAY #18594 /* ~"No to oddawaj mi czaszkę, złodzieju! Oddawaj ją! Oddawaj!"~ */
  IF ~~ THEN REPLY #18595 /* ~Prawda: "Bardzo dobrze. Weź ją sobie."~ */ GOTO 9
  IF ~~ THEN REPLY #18596 /* ~Zaatakuj go, kiedy się odsłoni: "Dobrze, weź sobie tę czaszkę."~ */ GOTO 10
  IF ~~ THEN REPLY #18597 /* ~"Nie. Czaszka nie jest twoja, więc ją sobie nie weźmiesz."~ */ GOTO 6
  IF ~~ THEN REPLY #18598 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #18599 /* ~"O to się nie martw... Nie zabraknie ci kłopotów, bądź pewien. Prawdziwych kłopotów!"~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18600 /* ~"Nie myśl tylko sobie, że zapłaciłem ci ze strachu przed tobą, albo dlatego, że czuję się słaby... Takie mniemanie może być dla ciebie śmiertelnie niebezpieczne."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18601 /* ~"Nie myśl tylko sobie, że zapłaciłem ci ze strachu przed tobą, albo dlatego, że czuję się słaby... Takie mniemanie może być dla ciebie śmiertelnie niebezpieczne."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18602 /* ~"Nie myśl tylko sobie, że zapłaciłem ci ze strachu przed tobą, albo dlatego, że czuję się słaby... Takie mniemanie może być dla ciebie śmiertelnie niebezpieczne."~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18603 /* ~"Nie myśl tylko sobie, że zapłaciłem ci ze strachu przed tobą, albo dlatego, że czuję się słaby... Takie mniemanie może być dla ciebie śmiertelnie niebezpieczne."~ */ GOTO 22
  IF ~~ THEN REPLY #18604 /* ~"Ach tak. Mam kilka pytań..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18605 /* ~"Och 'kłopoty', powiadasz? Doprawdy? Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18606 /* ~"Och 'kłopoty', powiadasz? Doprawdy? Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18607 /* ~"Hmph." Mężczyzna patrzy na ciebie przez zmrużone powieki, ale nic nie mówi. Wygląda na mocno zaniepokojonego.~ */
  IF ~~ THEN REPLY #18608 /* ~"Mam kilka pytań..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18609 /* ~"Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18610 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 20.3
  SAY #18611 /* ~"Uch! Idź klekotać paszczęką gdzie indziej. No już, precz! Plugawy złodziej. Przeklęty złodziej..." Twój rozmówca schodzi na bok, co może znaczyć, że wasza wymiana myśli dobiegła końca.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18612 /* ~Odejdź.~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18613 /* ~Odejdź.~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.0 4.0 20.4 21.0 58.0 59.0
  SAY #18614 /* ~Twój rozmówca uśmiecha się szyderczo. "Śpiewka kosztuje." Wyciąga dłoń i znacząco pociera jednym pożółkłym paluchem o drugi. "Brzdęk-brzdęk?". Jego ruchliwe ślepia, nie przerywając swego opętańczego tańca, coraz częściej zatrzymują się łakomie na twojej sakiewce.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18615 /* ~Podaj mu kilka monet.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18616 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18617 /* ~Rzuć mu w dłonie dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18618 /* ~"Nic nie dostaniesz. Czekam na twoją śpiewkę."~ */ GOTO 27
  IF ~~ THEN REPLY #18619 /* ~"Uch... Czemu twoje palce są takie żółte?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18620 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18621 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 27.1 30.0
  SAY #18622 /* ~Mężczyzna parska śmiechem. "Śpiewka nie jest tania. Czyś głuchy? Słuchaj, kiedy się do ciebie mówi."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18623 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18624 /* ~Rzuć mu w dłonie dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18625 /* ~"Nic nie dostaniesz. Czekam na twoją śpiewkę."~ */ GOTO 27
  IF ~~ THEN REPLY #18626 /* ~"Uch... Czemu twoje palce są takie żółte?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18627 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18628 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 27.2 30.1
  SAY #18629 /* ~Twój rozmówca przez chwilę pilnie przygląda się monetom, a potem zaś mierzy cię chytrym wzrokiem. "Wiem to i owo. Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #18630 /* ~"Opowiedz mi o Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18631 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18632 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18633 /* ~"Szukam mojego zagubionego dziennika."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18634 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18635 /* ~"Nieważne. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18636 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 24.1 27.3 30.2
  SAY #18637 /* ~"Mów. Ja posłucham. Może będę miał coś do powiedzenia..."~ */
  IF ~~ THEN REPLY #18638 /* ~"Opowiedz mi o Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18639 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18640 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18641 /* ~"Szukam mojego zagubionego dziennika."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18642 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18643 /* ~"Nieważne. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18644 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3 24.2 30.3
  SAY #18645 /* ~"Nic nie powiem." Uśmiecha się złośliwie i wskazuje palcem na siebie. "Ja znam śpiewkę, ty nie. Masz brzdęk, będziesz miał śpiewkę. Kumasz?"~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18646 /* ~Złap go i potrząśnij nim trochę.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_3","GLOBALGood",-1)
~ GOTO 54
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18647 /* ~Podaj mu kilka monet.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18648 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18649 /* ~Rzuć mu w dłonie dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18650 /* ~"Uch... Czemu twoje palce są takie żółte?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18651 /* ~"Zatem zapomnij, że o to pytałem. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18652 /* ~"Zatem zapomnij, że o to pytałem. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4 24.3 27.4
  SAY #18653 /* ~"Ech? Co proszę?" Jego oczy zwężają się do rozmiarów niewielkich szczelin, ale ciągle bacznie cię obserwuje.~ */
  IF ~~ THEN REPLY #18654 /* ~"Z drugiej strony na to patrząc, nie ciekawi mnie ta sprawa. Mniejsza o to."~ */ GOTO 30
  IF ~~ THEN REPLY #18655 /* ~"Twoje palce są całe żółte? Dlaczego?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18656 /* ~"Mniejsza o to. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18657 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #18658 /* ~"To pewna rzecz, którą zabrałem truposzowi... Małemu gnijącemu truposzowi..."~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.0 29.0
  SAY #18659 /* ~"Nieważne... Brzdęk za śpiewkę, pomnisz? Brzdęk-brzdęk?" Twój rozmówca wyciąga ku tobie dłonie i rozcapierza je wymownie.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18660 /* ~Podaj mu kilka monet.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18661 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18662 /* ~Rzuć mu w dłonie dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18663 /* ~"Nic nie dostaniesz. Czekam na twoją śpiewkę."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18664 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18665 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.0 26.0 33.2 34.1 35.1 39.0 40.0
  SAY #18666 /* ~"Tak to miasto, niechaj na szpicach skona... To okrąg. Miasto w okręgu. W środku wielkich okręgów."~ */
  IF ~~ THEN REPLY #18667 /* ~"Powiedz mi coś jeszcze o tym mieście."~ */ GOTO 32
  IF ~~ THEN REPLY #18668 /* ~"Co możesz mi powiedzieć o tym rejonie miasta?"~ */ GOTO 32
  IF ~~ THEN REPLY #18669 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18670 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18671 /* ~"Szukam mojego zagubionego dziennika."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18672 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18673 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18674 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #18675 /* ~"Marnujesz mój czas, a swój brzdęk, niech skonam... Wyrzucasz w błoto. Jak szukasz takich informacji, najmij sobie oprowadzacza."~ */
  IF ~~ THEN REPLY #18676 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18677 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18678 /* ~"Szukam mojego zagubionego dziennika."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18679 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18680 /* ~"Dobrze. Zatem go poszukam. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18681 /* ~"Dobrze. Zatem go poszukam. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.1 26.1 31.2 32.0 39.1 40.1
  SAY #18682 /* ~"Uch?" Człowiek wygląda na nieco zakłopotanego. "A co z nimi?"~ */
  IF ~~ THEN REPLY #18683 /* ~"Czym się zajmują?"~ */ GOTO 34
  IF ~~ THEN REPLY #18684 /* ~"Jesteś jednym z nich?"~ */ GOTO 35
  IF ~~ THEN REPLY #18685 /* ~"Opowiedz mi o Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18686 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18687 /* ~"Szukam mojego zagubionego dziennika."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18688 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18689 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18690 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #18691 /* ~Mężczyzna przypatruje ci się przez chwilę, jakby miał cię za pomyleńca. "Zbierają trochę umarlaków. Przywożą je Grabom i dostają trochę brzdęku za fatygę. Więc?"~ */
  IF ~~ THEN REPLY #18692 /* ~"Jesteś jednym z nich?"~ */ GOTO 35
  IF ~~ THEN REPLY #18693 /* ~"Opowiedz mi o Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18694 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18695 /* ~"Szukam mojego zagubionego dziennika."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18696 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18697 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18698 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #18699 /* ~"Może. Okazjonalnie. A o co chodzi?"~ */
  IF ~~ THEN REPLY #18700 /* ~"Czym się zajmują?"~ */ GOTO 34
  IF ~~ THEN REPLY #18701 /* ~"Opowiedz mi o Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18702 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18703 /* ~"Szukam mojego zagubionego dziennika."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18704 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18705 /* ~"Nie. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18706 /* ~"Nie. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 26.2 31.3 32.1 33.3 34.2 35.2 39.2 40.2
  SAY #18707 /* ~Jego oczy nagle zwężają się. "Uch..." Kręci głową, patrząc na ciebie uważnie. "Farod... Można pogadać o nim i dowiedzieć się cosik o nim... Ale to kosztuje... Uch... Jak mi życie miłe a księga umarłych wstrętna, to kosztuje i to niemało."~ */
  IF ~~ THEN REPLY #18708 /* ~"Czy wiesz, gdzie on jest?"~ */ GOTO 37
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18709 /* ~Daj mu jeszcze pięć monet.~ */ GOTO 38
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18710 /* ~"Zatem zapomnij, że o to pytałem. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18711 /* ~"Zatem zapomnij, że o to pytałem. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18712 /* ~Mężczyzna kiwa głową i rozgląda się dookoła. "Ta śpiewka kosztuje... Niemało."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18713 /* ~Daj mu jeszcze pięć monet.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #18714 /* ~Mężczyzna rozgląda się, zaś potem pochyla ci się do ucha. "Idź na wschodnią stronę placu i poczekaj tam. Przyjdę do ciebie za godzinę. Nie chcę, aby mnie z tobą dłużej tu widziano. Teraz koniec pytań... Ruszaj się!" Zbiera się do odejścia.~ */
  IF ~~ THEN REPLY #18715 /* ~"Czekaj!"~ */ GOTO 62
  IF ~~ THEN REPLY #18716 /* ~Pozwól mu odejść.~ */ GOTO 62
END

IF ~~ THEN BEGIN 39 // from: 25.4 26.4 31.5 32.3 33.5 34.4 35.4 40.3
  SAY #18717 /* ~"Plugawa, zawszona wiedźma!" Spluwa i szybko zakreśla pół-okrąg nad sercem. "Żeby tak czarna ospa powaliła tę kundlicę! Ażeby tak wszystkie choróbska wszystkich Sfer wyżarły jej bebechy. Jeślibyś chciał ją odwiedzić, pewnikiem, żeby ją utopić w plwocinach, znajdziesz jej szczurzą chatę koło Placu, przy deskach na śmietnisku. Jeśli chcesz, poszukaj jej tam, ale jak wrócisz od niej, to nie podchodź do mnie."~ */
  IF ~~ THEN REPLY #18718 /* ~"Opowiedz mi o Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18719 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18720 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18721 /* ~"Szukam mojego zagubionego dziennika."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18722 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18723 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 25.3 26.3 31.4 32.2 33.4 34.3 35.3 39.3
  SAY #18724 /* ~"Uch... Może... Może... Nie wiem. Nie widziałem. Nie widziałem żadnych ksiąg."~ */
  IF ~~ THEN REPLY #18725 /* ~"Opowiedz mi o Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18726 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18727 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 36
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18728 /* ~"Opowiedz mi o Mebbet."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18729 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18730 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.7 6.3 6.8 7.0 7.8 12.5 13.6 20.5 21.1 22.0 23.5 24.4 25.5 26.5 27.5 28.2 30.4 31.6 32.4 33.6 34.5 35.5 36.2 39.4 40.4 58.1 59.1
  SAY #18731 /* ~Nagle zauważasz, że Żółtopalcy przysunął się nieco za blisko, a jego dłonie wykonują dziwne ruchy w bezpośrednim sąsiedztwie twojej sakiewki.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18732 /* ~Chwyć go za rękę.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18733 /* ~Chwyć go za rękę.~ */ GOTO 42
  IF ~  Global("Yellow_PP","GLOBAL",0)
~ THEN REPLY #18734 /* ~Uważnie obserwuj jego poczynania.~ */ DO ~GiveExperience(Protagonist,200)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
SetGlobal("Yellow_PP","GLOBAL",1)
TakePartyGold(5)
~ GOTO 57
  IF ~~ THEN REPLY #18735 /* ~"Co ty wyprawiasz?"~ */ GOTO 50
  IF ~~ THEN REPLY #18736 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1 57.1
  SAY #18737 /* ~Mężczyzna cofa się błyskawicznie i bierze nogi za pas!~ */
  IF ~~ THEN REPLY #18738 /* ~"A niech to..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0 57.0
  SAY #18739 /* ~Łapiesz go za rękę. Żółtopalcy wygląda na przerażonego. "Ej! Ej! Co robisz? Puszczaj!" Walczy zawzięcie, ale nie potrafi uwolnić się z twojego uścisku.~ */
  IF ~~ THEN REPLY #18740 /* ~Prawda: "Masz zamiar mnie okraść. Ja natomiast mam zamiar ukręcić ci łeb."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18741 /* ~Blef: "Masz zamiar mnie okraść. Ja natomiast mam zamiar ukręcić ci łeb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.1 50.3
  SAY #18742 /* ~"Ej! Ej! Przestań! Zaszła pomyłka! Pomyłka! Można rozwiązać tę sprawę bez mieszania do tego księgi umarłych!"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18743 /* ~"Oszczędzę cię w zamian za kilka informacji."~ */ GOTO 45
  IF ~~ THEN REPLY #18744 /* ~"Daj mi wszystko, co mi zabrałeś, a daruję ci życie."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18745 /* ~"Zmiataj stąd i uważaj, żeby mi na przyszłość nie wchodzić w drogę."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #18746 /* ~Mężczyzna kiwa skwapliwie głową. "Tak, tak, tak! Pytaj, pytaj, o co chcesz!"~ */
  IF ~~ THEN REPLY #18747 /* ~"Powiedz mi, gdzie mogę znaleźć człowieka o imieniu Farod."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #18748 /* ~"Ech..." Wygląda na nieco zakłopotanego. "Śpiewka o Farodzie niebezpieczna. Nieco brzdęku mogłoby pomóc... Uch?"~ */
  IF ~~ THEN REPLY #18749 /* ~"Zdaje się, że cokolwiek zapomniałeś o swoim aktualnym położeniu. Gadaj... Natychmiast."~ */ GOTO 47
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18750 /* ~Daj mu trzy miedziaki.~ */ DO ~TakePartyGold(3)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #18751 /* ~"Uch... Tak, wiem, że tutaj nie mieszka... Ale bywa blisko, bardzo blisko. On jest i tutaj i tam, ciągle w ruchu... Musi mieć jakieś kryjówki, z których wychodzi i potem w nich znika. Pewno jest tu ktoś, kto wie, gdzie jest ta dziura... Ale ja nie wiem."~ */
  IF ~~ THEN REPLY #18752 /* ~Prawda: "Myślę, że kłamiesz. Śpiewka albo śmierć, wybieraj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_1","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #18753 /* ~Blef: "Myślę, że kłamiesz. Śpiewka albo śmierć, wybieraj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_2","GLOBALLaw",-1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0 47.1
  SAY #18754 /* ~"Ej..." Oblizuje wargi i rozgląda się dookoła. "Już, już... Jest tam brama. Szukaj jej w północno-zachodnim narożniku tego Placu... Założę się, że to tam czai się ten stary wąż. Ale nie wiem, jak przejść przez tę bramę."~ */
  IF ~~ THEN REPLY #18755 /* ~"A teraz dawaj wszystko, co mi zabrałeś."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18756 /* ~"Zmiataj stąd... I uważaj, żeby mi na przyszłość nie wchodzić w drogę."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1 48.0
  SAY #18757 /* ~Kiwa głową. Z przerażeniem i obrzydzeniem w oczach, Żółtopalcy przekazuje ci parę garści miedziaków.~ */
  IF ~~ THEN REPLY #18758 /* ~"Zmiataj stąd... I uważaj, żeby mi na przyszłość nie wchodzić w drogę."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 41.3 57.2
  SAY #18759 /* ~Mężczyzna przypatruje ci się przez chwilę, jakby miał cię za pomyleńca. "Uch? Co?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18760 /* ~"Dlaczego chcesz mnie okraść? Dam ci, ile będziesz chciał."~ */ EXTERN ~DMORTE~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18761 /* ~"Dlaczego chcesz mnie okraść? Dam ci, ile będziesz chciał."~ */ GOTO 51
  IF ~~ THEN REPLY #18762 /* ~Prawda: "Masz zamiar mnie okraść. Ja natomiast mam zamiar ukręcić ci łeb."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18763 /* ~Blef: "Masz zamiar mnie okraść. Ja natomiast mam zamiar ukręcić ci łeb."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #18765 /* ~"Chcesz mnie okraść. Odejdź stąd i nigdy więcej nie wchodź mi w drogę."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #18764 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #18766 /* ~Żółtopalcy przygląda ci się wzrokiem pełnym niedowierzania. "Przydałoby mi się wiele brzdęku. Prawie umieram z głodu, niechaj skonam. Życie na ulicach to nie zabawa."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18767 /* ~Daj mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 53
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18768 /* ~Daj mu dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 53
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18769 /* ~Daj mu pięćdziesiąt miedziaków.~ */ DO ~TakePartyGold(50)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18770 /* ~Daj mu sto miedziaków.~ */ DO ~TakePartyGold(100)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #18771 /* ~"Odwołuję co powiedziałem. Odejdź stąd i nigdy więcej nie wchodź mi w drogę."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #18772 /* ~Żółtopalcy przygląda ci się wzrokiem pełnym niedowierzania. "Przydałoby mi się wiele brzdęku. Prawie umieram z głodu, niechaj skonam. Życie na Ulicach to nie zabawa."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 196
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 51.3
  SAY #18773 /* ~"Uch... Serdeczne dzięki. Bardzoś hojny. Niechaj cień Pani wszędzie za tobą podąża."~ */
  IF ~~ THEN REPLY #18774 /* ~"Nie próbuj mnie więcej okradać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 27.0
  SAY #18775 /* ~Twoje ręce są jednak szybsze, sięgają odzienia łotrzyka i zatrzymują jego ucieczkę żelaznym uściskiem. Jest na tyle lekki, że bez trudu unosisz go w górę i potrząsasz nim solidnie jak paskudnym owadem. "Gaaa! Zaśpiewam, ci zaśpiewam. Tylko postaw mnie na ziemi!"~ */
  IF ~~ THEN REPLY #18776 /* ~Ciśnij nim o kupę śmieci.~ */ GOTO 55
  IF ~~ THEN REPLY #18777 /* ~Postaw go na ziemi, ale nie puszczaj go.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #18778 /* ~Z celową niedelikatnością ciskasz łotrzyka o ziemię. Ten jednak z zadziwiającą szybkości gramoli z ziemi i rzuca się w ślepy galop, byle dalej od ciebie!~ */
  IF ~~ THEN REPLY #18779 /* ~"A niech to..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #18780 /* ~Kiedy sprowadzasz Żółtopalcego z przestworzy na ziemię, łotrzyk wymierza ci bolesnego kopniaka w goleń. Upuszczasz go i tracisz kontrolę nad sytuacją na jakieś pół sekundy, ale to w zupełności wystarcza mu na to, aby dać drapaka.~ */
  IF ~~ THEN REPLY #18781 /* ~"A niech to..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 41.2
  SAY #18782 /* ~Patrzysz uważnie, jak zręczne paluchy Żółtopalcego wślizgują do wnętrza twojej sakiewki i zaraz wynurzają się z niej z powrotem, zapewne bogatsze o pokaźną garść miedziaków. Chociaż cała ta scena rozegrała się na twoich oczach bardzo szybko, odnalazłeś w niej coś bardzo znajomego. Masz wręcz wrażenie, że sam umiałbyś zrobić to samo, a i nawet z większą dozą rutyny.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18783 /* ~Chwyć go za rękę.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18784 /* ~Chwyć go za rękę.~ */ GOTO 42
  IF ~~ THEN REPLY #18785 /* ~"Co ty wyprawiasz?"~ */ GOTO 50
  IF ~~ THEN REPLY #18786 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66861 /* ~Zignoruj to i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 0.0
  SAY #18787 /* ~"Widziałem, że mi się przyglądałeś... Zatem czegóż chcesz? Hę?"~ */
  IF ~~ THEN REPLY #18788 /* ~"Mam kilka pytań..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18789 /* ~"Niczego. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18790 /* ~"Niczego. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #18791 /* ~"Ech! Wyluzuj się, ogoniasta damulko." Odwraca się teraz do ciebie. "Widziałem, żeś mi się przyglądał. Czegóż chcesz? Hę?"~ */
  IF ~~ THEN REPLY #18792 /* ~"Mam kilka pytań..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18793 /* ~"Niczego. Żegnaj."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18794 /* ~"Niczego. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #18795 /* ~"Ech! Wyluzuj się, ogoniasta damulko." Nieznajomy odwraca się teraz do ciebie i nagle spostrzega u twojego boku Mortego. "Ej! Ta czacha... Skądżeś ją wytrzasnął? To moja czaszka, niech skonam! Oddawaj ją."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF ~~ THEN BEGIN 61 // from:
  SAY #54287 /* ~Żółtopalcy rzuca się do pośpiesznej ucieczki. Po chwili tracisz go z oczu, ale jego bolesne pojękiwania docierają do ciebie jeszcze przez pewien czas.~ */
  IF ~~ THEN REPLY #54288 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 38.0 38.1
  SAY #54786 /* ~Żółtopalcy rzuca się do pośpiesznej ucieczki. Masz niejakie wrażenie, że więcej już nie zaznasz przyjemności jego towarzystwa.~ */
  IF ~~ THEN REPLY #54787 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END
