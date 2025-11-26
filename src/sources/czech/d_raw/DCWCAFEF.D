// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27654 /* ~Dobře oblečená žena tady odpočívá, užívá si venkovní čerstvý vzduch a popíjí nápoj zakoupený v blízké kavárně.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27655 /* ~"Zdravím..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #27656 /* ~"Zdravím..."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 49
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #27657 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #27658 /* ~Nechej ženu být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #27659 /* ~Její oči se rozšířily, když si uvědomila, jak vypadáš. "Ah... Zdravím  tě, pane." Nervózně se usmála.~ */
  IF ~~ THEN REPLY #27660 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27661 /* ~"Nějaký problém s tím, jak vypadám?"~ */ GOTO 2
  IF ~~ THEN REPLY #27662 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 49.4
  SAY #27663 /* ~"Já.. je mi líto, ale musím se přiznat, že mě tvůj zevnějšek nejdříve vylekal. Nestává se mi často, že bych potkala může tak... zcestovalého... vzezření." Zatvářila se omluvně. "Omlouvám se, pane, neber to jako urážku."~ */
  IF ~~ THEN REPLY #27664 /* ~"Zcestovalý?"~ */ GOTO 3
  IF ~~ THEN REPLY #27665 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27666 /* ~"Neměj strach, už jdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27667 /* ~"'Světa znalý' pokud se ti to líbí více. Víš,pane, tvůj zevnějšek je tak trochu --- pomuchlaný, takový neupravený. Vzbuzuješ trochu pozornost. Ale Sigil je plný podivností, ne? Zdá se mi, že Úřednická Čtvrť jich má trochu méně než zbytek města. Kromě Haly, pochopitelně."~ */
  IF ~~ THEN REPLY #27668 /* ~"Úřednická čtvrť?"~ */ GOTO 6
  IF ~~ THEN REPLY #27669 /* ~"Hala?"~ */ GOTO 22
  IF ~~ THEN REPLY #27670 /* ~"Tím myslíš, že vypadám jako mrtvola? Ano, jsem. Jsem mrtvý!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27671 /* ~"Hmm. Mám nějakou otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #27672 /* ~"Pochopitelné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.10 13.2 15.2 16.2 17.2 18.3 19.3 21.2 22.4 23.4 24.2 25.8 26.2 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1 49.3 52.0 54.0
  SAY #27673 /* ~Přikývla. "Prosím, ptej se."~ */
  IF ~~ THEN REPLY #27674 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #27675 /* ~"Co je tady ve městě zajímavého?"~ */ GOTO 7
  IF ~~ THEN REPLY #27676 /* ~"Kde bych tady mohl najít práci?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27677 /* ~"Chtěl jsem se zeptat na jedno místo..."~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27678 /* ~"Jenom potřebuju poradit jak se dostat..."~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27679 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 42
  IF ~~ THEN REPLY #27680 /* ~"Vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27681 /* ~Dívá se na tebe, jako bys žertoval a když pochopila že ne, rozpačitě se zasmála. "Jsi v Úřednické čtvrti, pane."~ */
  IF ~~ THEN REPLY #27682 /* ~"Co mi můžeš říct o čtvrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #27683 /* ~"Pravda. Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27684 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27685 /* ~"No, většina Čtvrti -ta, kde mě mé povinnosti drží-- je zaplněná halami se záznamy a administrativními budovami. Tady ne."~ */
  IF ~~ THEN REPLY #27686 /* ~"Tvé povinnosti?"~ */ GOTO 10
  IF ~~ THEN REPLY #27687 /* ~"V čem je tahle sekce jiná?"~ */ GOTO 7
  IF ~~ THEN REPLY #27688 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27689 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27690 /* ~"Městská hala, samozřejmě. A taky Yvannina Galerie kuriozit..."~ */
  IF ~~ THEN REPLY #27691 /* ~"Pokračuj..."~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27692 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27693 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27694 /* ~"Další zajímavá místa jsou advokát, lékárna, Nevěstinec duševních rozkoší, katakomby pod Čtvrtí a krejčí. A ten podivný obchod s kuriozitami."~ */
  IF ~~ THEN REPLY #27695 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27696 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27697 /* ~"Hledáš jenom dočasnou práci, že? Nevypadáš, že by ses tady chtěl usadit..." Na chvíli se odmlčela a prohlédla si tě od hlavy k patě." Takže já bych to zkusila u advokáta, v lékárně anebo v Městské hale. Určitě tam najdeš nějaké podivné úkoly, za které ti dobře zaplatí."~ */
  IF ~~ THEN REPLY #27698 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27699 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27700 /* ~Přikývla. "Mé povinnosti, pane. K mému zaměstnavateli. Pracuju v jedné z mnoha administrativních budov tady ve Čtvrti."~ */
  IF ~~ THEN REPLY #27701 /* ~"Co tam děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #27702 /* ~"Tak v čem je tahle sekce jiná než zbytek Čtvrti?"~ */ GOTO 7
  IF ~~ THEN REPLY #27703 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27704 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27705 /* ~Zavrtěla hlavou a usmála se. "Prosím, pane, buď tak laskav a nepřipomínej mi to, dobře? Ne tady, kde se snažím na chvíli odpočinout."~ */
  IF ~~ THEN REPLY #27706 /* ~"Tak v čem je tahle sekce odlišná od zbytku Čtvrti?"~ */ GOTO 7
  IF ~~ THEN REPLY #27707 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27708 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 19.2 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27709 /* ~"Povím ti to málo, co vím."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27710 /* ~"Dům advokáta."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27711 /* ~"Dům advokáta."~ */ GOTO 14
  IF ~~ THEN REPLY #27712 /* ~"Lékárna."~ */ GOTO 16
  IF ~~ THEN REPLY #27713 /* ~"Galerie kuriozit."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27714 /* ~"Nevěstinec."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27715 /* ~"Nevěstinec."~ */ GOTO 19
  IF ~~ THEN REPLY #27716 /* ~"Podzemí Sigilu, Říše tmy."~ */ GOTO 21
  IF ~~ THEN REPLY #27717 /* ~"Městská hala."~ */ GOTO 22
  IF ~~ THEN REPLY #27718 /* ~"Obchod s kuriozitami."~ */ GOTO 23
  IF ~~ THEN REPLY #27719 /* ~"Krejčí."~ */ GOTO 24
  IF ~~ THEN REPLY #27720 /* ~"Na tom nezáleží. Chtěl bych se zeptat ještě..."~ */ GOTO 4
  IF ~~ THEN REPLY #27721 /* ~"Nikam, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27722 /* ~"Advokáti pomáhají řešit případy, koncipují právní dokumenty a jednají jako právní zástupci svých klientů. Jeden z nich, Iannis, je uznávaný a zcela spolehlivý. Usadil se a pracoval ve Čtvrti po dlouhou a dlouhou dobu."~ */
  IF ~~ THEN REPLY #27723 /* ~"Jak se dostanu k Iannisovu domu?"~ */ GOTO 26
  IF ~~ THEN REPLY #27724 /* ~"Chtěl bych se zeptat na jiné místo..." ~ */ GOTO 12
  IF ~~ THEN REPLY #27725 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27726 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 26.1
  SAY #27727 /* ~"Advokáti pomáhají řešit případy, koncipují právní dokumenty a jednají jako právní zástupci svých klientů."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 267
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27729 /* ~"Jeden z nich, Iannis, je uznávaný a zcela spolehlivý. Usadil se a pracoval ve Čtvrti po dlouhou a dlouhou dobu."~ */
  IF ~~ THEN REPLY #27730 /* ~"Jak se dostanu k Iannisovu domu?"~ */ GOTO 26
  IF ~~ THEN REPLY #27731 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27732 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27733 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 27.0
  SAY #27734 /* ~"V lékárně se prodávají různé masti, lektvary, léčivé byliny a pod." Na chvilku se zamračila.  "Majitelé toho místa jsou trochu divní, neustále ochutnávají své zboží. Přesto to jsou dobří chlapíci."~ */
  IF ~~ THEN REPLY #27735 /* ~"Jak se dostanu do lékárny?"~ */ GOTO 27
  IF ~~ THEN REPLY #27736 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27737 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27738 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.3 28.0
  SAY #27739 /* ~"Yvannina Galerie kuriozit je nejúchvatnější místo. Má sbírku uměleckých prací, starožitností a artefaktů ze všech částí Sfér."~ */
  IF ~~ THEN REPLY #27740 /* ~"Jak se dostanu do Galerie kuriozit?"~ */ GOTO 28
  IF ~~ THEN REPLY #27741 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27742 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27743 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.4 29.0
  SAY #27744 /* ~" Nevěstinec duševních rozkoší existuje, aby potěšil mysl a vědomí člověka. Je veden sukubou nazývanou Fall-from-Grace."~ */
  IF ~~ THEN REPLY #27745 /* ~"Vnímaví?"~ */ GOTO 36
  IF ~~ THEN REPLY #27746 /* ~"Jak se dostanu do nevěstince?"~ */ GOTO 29
  IF ~~ THEN REPLY #27747 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27748 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27749 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.5 29.1
  SAY #27750 /* ~" Nevěstinec duševních rozkoší existuje, aby potěšil mysl a vědomí člověka. Je veden sukubou." Zdvořile pokynula k Fall-From-Grace.~ */
  IF ~~ THEN REPLY #27751 /* ~"Vnímaví?"~ */ GOTO 36
  IF ~~ THEN REPLY #27752 /* ~"Jak se dostanu do Nevěstince?"~ */ GOTO 29
  IF ~~ THEN REPLY #27753 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27754 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27755 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27756 /* ~[no text]~ */
  IF ~~ THEN REPLY #27757 /* ~[no text]~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6 30.0
  SAY #27758 /* ~Přes její čelo probleskl náznak znepokojení. "Připadá mi dost podivné, že všechny vstupy k tomuto místu nebyly uzavřeny. Jestli tomu dobře rozumím, Spodní oblast není plná ničeho jiného než problémů a je nebezpečná všem, kteří se tam ocitnou."~ */
  IF ~~ THEN REPLY #27759 /* ~"Jak bych se tam dolů mohl dostat?"~ */ GOTO 30
  IF ~~ THEN REPLY #27760 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27761 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27762 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.7 31.0
  SAY #27763 /* ~"Jedna z nejúžasnějších Sigilských institucí... je to ústředí Společenství Vnímavých, proslavená po celém mnohovesmíru pro své koncerty, umělecké výstavy a přednášky. Ale nejúchvatnější zajímavostí jsou její sensoria."~ */
  IF ~~ THEN REPLY #27764 /* ~"Vnímaví?"~ */ GOTO 36
  IF ~~ THEN REPLY #27765 /* ~"Sensoria?"~ */ GOTO 38
  IF ~~ THEN REPLY #27766 /* ~"Kde je Hala?"~ */ GOTO 31
  IF ~~ THEN REPLY #27767 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27768 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27769 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.8 32.0
  SAY #27770 /* ~"Nebudu předstírat, že jsem k ním patřila i já, ale vím, že to tam vede obchodnice s lidmi... ve skutečnosti napůl fiendka, jejíž zboží pochází z Nižších sfér."~ */
  IF ~~ THEN REPLY #27771 /* ~"Napůl fiendka?"~ */ GOTO 35
  IF ~~ THEN REPLY #27772 /* ~"Nižších sfér?"~ */ GOTO 34
  IF ~~ THEN REPLY #27773 /* ~"Kde to místo najdu?"~ */ GOTO 32
  IF ~~ THEN REPLY #27774 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27775 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27776 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.9 33.0
  SAY #27777 /* ~"Goncalves je vynikající krejčí, ale je náladový a snadno se urazí. Musím tě ale varovat: pravděpodobně tě bude posuzovat podle vzhledu, a tak můžeš mít potíže, aby ses s ním spřátelil."~ */
  IF ~~ THEN REPLY #27778 /* ~"Kde je Goncalvův obchod?"~ */ GOTO 33
  IF ~~ THEN REPLY #27779 /* ~


"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27780 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27781 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27782 /* ~"Ou? Kde?"~ */
  IF ~~ THEN REPLY #27783 /* ~"Advokátův dům."~ */ GOTO 26
  IF ~~ THEN REPLY #27784 /* ~"Lékárna."~ */ GOTO 27
  IF ~~ THEN REPLY #27785 /* ~"Galerie kuriozit."~ */ GOTO 28
  IF ~~ THEN REPLY #27786 /* ~"Nevěstinec."~ */ GOTO 29
  IF ~~ THEN REPLY #27787 /* ~"Podzemí Sigilu, Říše tmy."~ */ GOTO 30
  IF ~~ THEN REPLY #27788 /* ~"Městská hala."~ */ GOTO 31
  IF ~~ THEN REPLY #27789 /* ~"Obchod s kuriozitami."~ */ GOTO 32
  IF ~~ THEN REPLY #27790 /* ~"Krejčí."~ */ GOTO 33
  IF ~~ THEN REPLY #27791 /* ~"Nevadí. Zeptám se na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27792 /* ~"Nikde, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27793 /* ~"Iannisův dům je na jih od brány do Dolní čtvrti - kde jsi nejpravděpodobněji poprvé vstoupil do těchto míst. Bude na východní straně cesty."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27794 /* ~"Co mi můžeš říct o advokátovi?"~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27795 /* ~"Co mi můžeš říct o advokátovi?"~ */ GOTO 14
  IF ~~ THEN REPLY #27796 /* ~"Díky. Zeptám se na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27797 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27798 /* ~"Jdi po cestě, která vede na východ od brány do Dolní čtvrti - kde jsi nejpravděpodobněji poprvé vstoupil do těchto míst. Tam kde se cesta rozbíhá na severovýchod a jihovýchod, jdi k jihu... a tam to najdeš, na východ od cesty. Dům směřuje k jihu a má tři okna z barevného skla."~ */
  IF ~~ THEN REPLY #27799 /* ~"Co mi můžeš říct o tom místě?"~ */ GOTO 16
  IF ~~ THEN REPLY #27800 /* ~"Díky. Zeptám se na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27801 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27802 /* ~"Jdi po cestě, která vede na východ od brány do Dolní čtvrti - kde jsi nejpravděpodobněji poprvé vstoupil do těchto míst. Tam kde se cesta rozbíhá na severovýchod a jihovýchod, jdi k jihu... a tam to najdeš, na západ od cesty. Dům směřuje k jihu a má střechu jejíž tašky jsou zatíženy velkými kameny."~ */
  IF ~~ THEN REPLY #27803 /* ~"Co mi můžeš říct o tom místě?"~ */ GOTO 17
  IF ~~ THEN REPLY #27804 /* ~"Díky. Zeptám se na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27805 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 19.1 25.3
  SAY #27806 /* ~Ostře se zamračila a zavrtěla hlavou. "Je to přesně na východ od brány do Dolní čtvrti - kde jsi nejpravděpodobněji poprvé vstoupil do těchto míst. Je to velké, kulaté stavení, jehož vstup směřuje k jihu."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27807 /* ~"Co mi můžeš říct o Nevěstinci?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27808 /* ~"Co mi můžeš říct o Nevěstinci?"~ */ GOTO 19
  IF ~~ THEN REPLY #27809 /* ~"Díky. Zeptám se na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27810 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27811 /* ~Pokrčila rameny. "Nevím. Přesto bych byla velmi opatrná, pokud bych to našla. Říká se, že ze Spodní oblasti nic nevyšlo nahoru... včetně toho, co tam vstoupilo."~ */
  IF ~~ THEN REPLY #27812 /* ~"Co jiného mi o tom můžeš říct?"~ */ GOTO 21
  IF ~~ THEN REPLY #27813 /* ~"Díky. Zeptám se na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27814 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27815 /* ~"Halu je velmi snadné najít. Je to masivní stavba v severovýchodní části tohoto území."~ */
  IF ~~ THEN REPLY #27816 /* ~"Co mi můžeš říci o Hale?"~ */ GOTO 22
  IF ~~ THEN REPLY #27817 /* ~"Díky. Zeptám se na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27818 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27819 /* ~"Je to v jihovýchodní části tohoto území. Neobvyklá stavba, nahoru vede široká řada schodů. Já osobně jsem do toho místa nikdy nevstoupila... To místo ve mně vyvolává divný pocit."~ */
  IF ~~ THEN REPLY #27820 /* ~"Co mi můžeš říct o tom místě?"~ */ GOTO 23
  IF ~~ THEN REPLY #27821 /* ~"Díky. Zeptám se na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27822 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27823 /* ~"Krejčovství najdeš na sever a na východ od brány do Dolní čtvrti - kde jsi nejpravděpodobněji poprvé vstoupil do těchto míst. Je to široká budova, jejíž vstup směřuje k jihu."~ */
  IF ~~ THEN REPLY #27824 /* ~"Co mi můžeš říct o tom místě?"~ */ GOTO 24
  IF ~~ THEN REPLY #27825 /* ~"Díky. Zeptám se na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27826 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27827 /* ~Naklonila se, ztišila hlas a zašeptala. "Víš... Baator, Abyss a tak podobně. Hrozná místa."~ */
  IF ~~ THEN REPLY #27828 /* ~"Říkala jsi, že byla napůl fiendka?"~ */ GOTO 35
  IF ~~ THEN REPLY #27829 /* ~"Kde najdu ten obchod s kuriozitami?"~ */ GOTO 32
  IF ~~ THEN REPLY #27830 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27831 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27832 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27833 /* ~"Měj na paměti, není tiefling, ale opravdová poloviční fiendka. Říkám, dcera Incubuse a smrtelné ženy. I když nedám na klevety, už o ní nemluv."~ */
  IF ~~ THEN REPLY #27834 /* ~"Řekla jsi, že její zboží pochází z Nižších sfér?"~ */ GOTO 34
  IF ~~ THEN REPLY #27835 /* ~"Kde najdu ten obchod s kuriozitami?"~ */ GOTO 32
  IF ~~ THEN REPLY #27836 /* ~"Chtěl bych se zeptat na jiné místo..."~ */ GOTO 12
  IF ~~ THEN REPLY #27837 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27838 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 19.0 22.0
  SAY #27839 /* ~"Ano. Jejich pravé jméno je 'Společenství Vjemu.' Věří, že pravá podstata mnohovesmíru může být objevena pouze skrze přímý zážitek..."~ */
  IF ~~ THEN REPLY #27840 /* ~"Aha. Pokračuj."~ */ GOTO 48
  IF ~~ THEN REPLY #27841 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27842 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27843 /* ~"Objevili prostředky, jakým způsobem se mohou podělit se svými prožitky i s jinými, pomocí sensorií."~ */
  IF ~~ THEN REPLY #27844 /* ~"Sensorií?"~ */ GOTO 38
  IF ~~ THEN REPLY #27845 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27846 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27847 /* ~"Vnímaví vytvořili prostředek, pomocí kterého mohou získat prožitky, zachytit je do krystalů a dovolit *druhým* je prožít. Vnímaví se potulují po Sférách a zkoumají svá vnitřní já, aby je mohli sdílet s ostatními... vlastně všechno, co prožili nebo pocítili, je uloženo v jejich sensoriích."~ */
  IF ~~ THEN REPLY #27848 /* ~"Kde jsou ta sensoria umístěna?"~ */ GOTO 39
  IF ~~ THEN REPLY #27849 /* ~"Tyto prožitky... jsou něco jako vzpomínky?"~ */ GOTO 40
  IF ~~ THEN REPLY #27850 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27851 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27852 /* ~"Uvnitř Městské haly. Jsou tam sensoria, která jsou otevřena pro veřejnost a ta, která jsou otevřena pouze pro Vnímavé. Za jejich užití se platí drobný poplatek, ale je to pouze malá cena za to, že získáš nějakou zkušenost."~ */
  IF ~~ THEN REPLY #27853 /* ~"Kde je Hala?"~ */ GOTO 31
  IF ~~ THEN REPLY #27854 /* ~"Tyto prožitky... jsou něco jako vzpomínky?"~ */ GOTO 40
  IF ~~ THEN REPLY #27855 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27856 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27857 /* ~"V *jistém smyslu* ano, ale velmi intenzívní... a ne vzpomínky, které jsou tvé, ale někoho jiného a jsou zachyceny do krystalu."~ */
  IF ~~ THEN REPLY #27858 /* ~"Zachyceny? Ztratí člověk svou paměť nebo zkušenost, když jsou vloženy do krystalu?"~ */ GOTO 41
  IF ~~ THEN REPLY #27859 /* ~"Kde jsou ta sensoria umístěna?"~ */ GOTO 39
  IF ~~ THEN REPLY #27860 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27861 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27862 /* ~"Ne..." Zamračila se. "Nebo alespoň myslím, že ne. Věřím, že krystal *okopíruje* smyslové prožitky. Aby sis byl jistý, můžeš se na to zeptat Vnímavých, ale já tomu tak rozumím."~ */
  IF ~~ THEN REPLY #27863 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27864 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27865 /* ~"To jméno je mi povědomé... je postavou v knize? Darebák v románě, ne? Nemohu se rozpomenout."~ */
  IF ~~ THEN REPLY #27866 /* ~"Nevadí. Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27867 /* ~"Tak nevadí. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27868 /* ~"Ráda tě zase vidím." Usmívá se na tebe přes svůj šálek. "Ještě další otázky, že?"~ */
  IF ~~ THEN REPLY #27869 /* ~"Správně."~ */ GOTO 4
  IF ~~ THEN REPLY #27870 /* ~"Vlastně ne... pouze jdu kolem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27871 /* ~Vypadá popletená. "Ještě jednou?"~ */
  IF ~~ THEN REPLY #27872 /* ~"Řekl jsem, že jsem mrtvý!' Mrtvý, mrtvý, lala! Mrtvý, mrtvý, lala..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27873 /* ~"Nevadí. Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27874 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27875 /* ~Nabyla opatrný výraz. "Oh, ano... nejsme všichni. Už musím jít. Mám pocit, že mám někde neodkladnou záležitost."~ */
  IF ~~ THEN REPLY #27876 /* ~"Počkej! Neřekl jsem ti *proč* jsem mrtvý..."~ */ GOTO 46
  IF ~~ THEN REPLY #27877 /* ~"Počkej chvíli. Mám ještě nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27878 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27879 /* ~Udělala krok zpět. "Musím se přiznat, že mě to nezajímá." Začala se dívat kolem, jako by hledala někoho, kdo by jí mohl pomoci.~ */
  IF ~~ THEN REPLY #27880 /* ~"Protože jsem ve svých předchozích životech zabil příliš mnoho lidí."~ */ GOTO 47
  IF ~~ THEN REPLY #27881 /* ~"Tak nevadí. Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27882 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27883 /* ~Upustila svůj šálek a zakřičela: "Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #27884 /* ~Zaútoč na ni.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27885 /* ~Zkus se vytratit než někdo přijde.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27886 /* ~"Jak jen mohou, tak své životy věnují získávání zážitků po mnohovesmíru. Hodně cestují, jak po Sférách tak i do hloubi své vlastní mysli a emocí. Ale dokázali s tím pokročit ještě o krok dále, víš..."~ */
  IF ~~ THEN REPLY #27887 /* ~"Jak?"~ */ GOTO 37
  IF ~~ THEN REPLY #27888 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27889 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 0.1
  SAY #27890 /* ~Její oči se trochu rozšířily, když si uvědomila tvůj vzhled. Úzkostlivě se usmála. "Oh... zdravím..." Najednou její oči spočinuly na Mortem. "Oh! Jaký rozkošný malý mimir!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #27891 /* ~"Mimir?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 268
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27892 /* ~"Že jo? Rád se nechá podrbat nahoře na lebce."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27893 /* ~"Nedotýkal bych se ho - kouše."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 272
  IF ~~ THEN REPLY #27894 /* ~"Ano, je. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27895 /* ~"Nějaké potíže, že tady jsem?"~ */ GOTO 2
  IF ~~ THEN REPLY #27896 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #27897 /* ~Žena se usmála. "Jak milé! Ono to i samo mluví!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 269
END

IF ~~ THEN BEGIN 51 // from: 53.0
  SAY #27899 /* ~Zavrtěla hlavou. "Ne, žádného takového jsem neviděla. Jsou to pouze předměty, že..?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 271
END

IF ~~ THEN BEGIN 52 // from:
  SAY #27901 /* ~Pokrčila rameny. "Možná to tak je."~ */
  IF ~~ THEN REPLY #27902 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27903 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.1
  SAY #27904 /* ~"Skutečně?" Stále se usmívala, ale vypadala podezřívavě. "Určitě žertuješ! Je to pouze mimir..."~ */
  IF ~~ THEN REPLY #27905 /* ~"Co tím chceš říct? Copak to nemají všichni rádi?"~ */ GOTO 51
  IF ~~ THEN REPLY #27906 /* ~"Nežertuji, říkám pravdu. Zkus to."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 54
  IF ~~ THEN REPLY #27907 /* ~"No nevadí. Mám ještě další otázky..."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #27908 /* ~Natáhla se a opatrně sáhla na Morteho... který se okamžitě začal tulit k její ruce, do široka cenil zuby a po celou dobu na tebe mrkal. Úzkostlivě se usmívala: "Jak podivné!"~ */
  IF ~~ THEN REPLY #27909 /* ~"Ano... tak jo, mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27910 /* ~"To už by stačilo. Sbohem."~ */ EXIT
END
