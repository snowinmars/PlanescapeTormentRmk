// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARISSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARISSA~

IF ~  Global("Marissa","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2957 /* ~V temnotě za přepážkou se ti podařilo odhalit ženskou postavu. Otočila se k tobě, ale z jejího obličeje nevidíš vůbec nic.~ */
  IF ~~ THEN REPLY #2959 /* ~"Zdravím..."~ */ DO ~SetGlobal("Marissa","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2958 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40451 /* ~Postava odpověděla hlasem, který je pomalý a smrtící, že zní jako by někdo přejížděl hrotem ocelové dýky po kameni: "Ano? Přišel sis promluvit s Marissou, že? Je od tebe docela hrubé, vejít do tmavé místnosti, vrazit tady do mého příbytku... hrubé a také hloupé." Slyšíš slabý šeptající zvuk, jako by vál slabý větřík... nebo syčeli hadi."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 428
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40452 /* ~"Omlouvám se. Nebyl jsem si jistý, jestli tady někdo je."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40453 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40454 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #40455 /* ~Žena si slabě odfrkla. "Ale vypadá to, že v této místnosti někdo *je*, není-liž pravda? Budeš tedy pokračovat na své cestě někam pryč?"~ */
  IF ~~ THEN REPLY #40456 /* ~"Ještě ne... Mám nějaké otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #40457 /* ~"Ano... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #40458 /* ~"*Máš*?" Je slyšet tichý syčivý zvuk. Když žena znovu promluvila, její hlas překypuje sarkasmem. "Ooo. Nemůžu se dočkat..."~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.1 6.1 7.1 8.0 9.1 10.2 11.1 12.2 13.1 14.1 15.2 16.2 17.2 18.1 20.3 21.1 24.3 26.6 27.1 28.2 29.0 31.1 32.0 35.6 37.2 38.1 39.1 40.0 41.0 42.0 43.0 44.0 45.0 46.2 47.0 48.0 50.0 51.1 52.0 53.1 54.0 55.2 57.0 58.0
  SAY #40459 /* ~"Ptej se."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40460 /* ~"Našel jsem tvůj závoj..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40461 /* ~"Našel jsem tvůj závoj..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40462 /* ~"Proč jsi schovaná za tou zástěnou?"~ */ GOTO 12
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40463 /* ~"Proč jsi schovaná za tou zástěnou?"~ */ GOTO 50
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40464 /* ~"Proč je tady taková tma?"~ */ GOTO 9
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40465 /* ~"Proč je tady taková tma?"~ */ GOTO 50
  IF ~~ THEN REPLY #40466 /* ~"Co tady děláš?"~ */ GOTO 10
  IF ~~ THEN REPLY #40467 /* ~"Můžeš mi říct něco o tomhle místě?"~ */ GOTO 38
  IF ~  Global("Veil_Quest","AR0605",0)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40469 /* ~"Mohla bys, řekněme, změnit na sochu Lim-Lima?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40470 /* ~"Mohla bys, řekněme, změnit na sochu Lim-Lima?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40471 /* ~"Mohla bys, řekněme, změnit na sochu Lim-Lima?"~ */ GOTO 55
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40472 /* ~"Můžeš mi říct něco o mlčenlivé prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 52
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67846 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 52
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40473 /* ~"Slyšel jsem, že je Kesai-Serris Ravelina dcera. Je to pravda?"~ */ JOURNAL #66743 /* ~Zeptal jsem se jedné z prostitutek, jestli neví, zda je Kesai-Serris opravdu Ravelina dcera. Prostitutka mi navrhla, ať se zeptám Juliette. Prý byly dobré přítelkyně, než Juliette potkala Montagua.~ */ GOTO 41
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40474 /* ~"Slyšel jsem, že tě nedávno viděli plížit se z Vivianiny komnaty. Nemá to náhodou nějakou spojitost s jejím zmizelým parfémem?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~Zeptal jsem se Marissy na to, jak byla spatřena, když se plížila do Vivianina pokoje, ale nic mi neodpověděla.~ */ GOTO 51
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40475 /* ~"Slyšel jsem, že tě nedávno viděli plížit se z Vivianiny komnaty. Nemá to náhodou nějakou spojitost s jejím zmizelým parfémem?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~Zeptal jsem se Marissy na to, jak byla spatřena, když se plížila do Vivianina pokoje, ale nic mi neodpověděla.~ */ GOTO 45
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40476 /* ~"Pokouším se najít Vivianin parfém... nevíš, kde by náhodou mohl být?"~ */ GOTO 44
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40477 /* ~"Víš něco o Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~Zeptal jsem se jedné z protitutek na Ravel a ona mi řekla, ať si o ní promluvím s Yves. Yves prý sbírá nejrůznější příběhy, a pravděpodobně ve svém repertoáru bude mít i nějaký o Ravel.~ */ GOTO 43
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40478 /* ~"Už jsem mluvil s devíti prostitutkami... nevíš kdo je desátý student nebo kde by mohl být?"~ */ GOTO 42
  IF ~~ THEN REPLY #40479 /* ~"Tak vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 10.0 11.0
  SAY #40468 /* ~Slyšíš tichý syčivý zvuk. "Protože se ztratilo něco mého a něco nevítaného překročilo můj práh."~ */
  IF ~~ THEN REPLY #40480 /* ~"Co se ztratilo?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, jedna z "pracovnic" Nevěstince duševních rozkoší, ztratila svůj Karmínový závoj. Sice mě nepožádala o jeho nalezení, ale stejně bych se mohl porozhlédnout kolem, jestli se někde nepovaluje.~ */ GOTO 6
  IF ~~ THEN REPLY #40481 /* ~"Mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40482 /* ~"V tom případě tedy odejdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 51.0
  SAY #40483 /* ~"Můj závoj... můj Karmínový závoj. Neviděl jsi ho náhodou?"~ */
  IF ~~ THEN REPLY #40484 /* ~"Ne... na co je? Je to normální závoj?"~ */ GOTO 7
  IF ~~ THEN REPLY #40485 /* ~"Ne. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #40486 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 27.0 53.0
  SAY #40487 /* ~Marissa si tiše povzdychla. "Ne, ani ne. Pomáhá mi v komunikaci... komunikaci z očí do očí, přesněji řečeno."~ */
  IF ~~ THEN REPLY #40488 /* ~"Proč si musíš schovávat tvář?"~ */ GOTO 8
  IF ~~ THEN REPLY #40489 /* ~"Mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40490 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40491 /* ~"Dost těch hloupých otázek! Jsi neuvěřitelně únavný a otravný! A teď: co *chceš*?"~ */
  IF ~~ THEN REPLY #40492 /* ~"Jenom odpovědi na pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #40493 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 12.0
  SAY #40494 /* ~"Abych zabránila nežádoucím... a trapným... problémům. A teď co vlastně chceš?"~ */
  IF ~~ THEN REPLY #40495 /* ~"Chci, abys vyšla na světlo."~ */ GOTO 13
  IF ~~ THEN REPLY #40496 /* ~"Jenom odpovědi na pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #40497 /* ~"Nic. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY #40498 /* ~"Sedím tady sama se svými myšlenkami. Poslouchám jak vyslovuješ ty své. Tichá prázdnota, které obojí vyzařují - jak doslova, tak obrazně - mě ohlušuje."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40499 /* ~"Proč máš tak hrozivou vadu?"~ */ GOTO 5
  IF ~~ THEN REPLY #40500 /* ~"Rád bych slyšel tvé myšlenky..."~ */ GOTO 11
  IF ~~ THEN REPLY #40501 /* ~"Mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40502 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40503 /* ~"Oh, myslím, že ne. Momentálně by ti asi nepřipadaly moc povzbudivé. Ale teď, co *chceš*?"~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40504 /* ~"Proč máš tak hrozivou vadu?"~ */ GOTO 5
  IF ~~ THEN REPLY #40505 /* ~"Jenom odpovědi na nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #40506 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY #40507 /* ~"Přeješ si, abych vyšla ze svého rohu, vstoupila do osvětleného místa a promluvila si s tebou z oči do očí?" Marissa se zasmála. Je slyšel zvuk šustících šupin. "Ne, myslím že ne. Mně temnota vyhovuje a bezpochyby vyhovuje i tobě."~ */
  IF ~~ THEN REPLY #40508 /* ~"Proč je tady taková tma?"~ */ GOTO 9
  IF ~~ THEN REPLY #40509 /* ~"Prosím, vyjdi na světlo..."~ */ GOTO 13
  IF ~~ THEN REPLY #40510 /* ~"Tak má tedy další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40511 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 12.1
  SAY #40512 /* ~"Ne, nevyjdu a ani to, že jsi použil slovíčko 'prosím' ti nepomůže, abys mě přesvědčil. A teď - co *chceš*? Určitě jsi nedošel až tak daleko, abys mě *viděl*?"~ */
  IF ~~ THEN REPLY #40513 /* ~"Já *chci* vidět, jak vypadáš..."~ */ GOTO 14
  IF ~~ THEN REPLY #40514 /* ~"Tak mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40515 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40516 /* ~"Nic takového nechceš."~ */
  IF ~~ THEN REPLY #40517 /* ~"Oh, chci."~ */ GOTO 15
  IF ~~ THEN REPLY #40518 /* ~"Tak to mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40519 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40520 /* ~"Jak vypadáš *ty*? Temnota nás kryje oba dva. Zahrajeme si? Příšerně se nudím. Budu hádat... jsi muž, člověk?"~ */
  IF ~~ THEN REPLY #40521 /* ~"Ano."~ */ GOTO 16
  IF ~~ THEN REPLY #40522 /* ~"Myslím si to..."~ */ GOTO 17
  IF ~~ THEN REPLY #40523 /* ~"Žádné hry. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #40524 /* ~"Teď se nějak na hraní necítím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #40525 /* ~"Máš... poraněné hrdlo?"~ */
  IF ~~ THEN REPLY #40526 /* ~"Ano."~ */ GOTO 20
  IF ~~ THEN REPLY #40527 /* ~"Nevidím to, ale věřím, že ano."~ */ GOTO 20
  IF ~~ THEN REPLY #40528 /* ~"Žádné další hry. Mám otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #40529 /* ~"Teď se nějak na hraní necítím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #40530 /* ~"Ty 'myslíš?' Jak to, že to nevíš?"~ */
  IF ~~ THEN REPLY #40531 /* ~"Je to tak trochu komplikované."~ */ GOTO 18
  IF ~~ THEN REPLY #40532 /* ~"Opravdu si nejsem jistý, co vlastně jsem."~ */ GOTO 19
  IF ~~ THEN REPLY #40533 /* ~"Zapomeň na to. Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40534 /* ~"To nic. Sbohem, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #40535 /* ~"Jistě? To musí být příliš ohromující, aby to dokázala pochopit taková mysl, jako je ta moje chabá."~ */
  IF ~~ THEN REPLY #40536 /* ~"Opravdu nemám ponětí, co jsem vlastně zač."~ */ GOTO 19
  IF ~~ THEN REPLY #40537 /* ~"Zapomeň na to. Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40538 /* ~"To nic. Sbohem, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #40539 /* ~"Doopravdy? To je téměř... zajímavé..." Temnotou se začíná rozléhat syčivý zvuk.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 19.0
  SAY #40540 /* ~"Hmm... popiš mi, jak vypadáš."~ */
  IF ~~ THEN REPLY #40541 /* ~Pravda: "Jsem vysoký, svalnatý a příšerně zjizvený."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marissa_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #40542 /* ~Lež: "Jsem vysoký, atletické postavy... velice pohledný..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marissa_1","GLOBALLaw",-1)
~ GOTO 22
  IF ~~ THEN REPLY #40543 /* ~"Ty první, Marisso."~ */ GOTO 24
  IF ~~ THEN REPLY #40544 /* ~"Ne, díky. Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40545 /* ~"Nemám náladu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 37.1
  SAY #40546 /* ~"Jistě? Hmmm..." Na chvíli se odmlčela. "Jak to, že jsi tak příšerně zjizvený? Počkej... to nic. Nechci to vědět."~ */
  IF ~~ THEN REPLY #40547 /* ~"A teď mi popiš, jak vypadáš."~ */ GOTO 36
  IF ~~ THEN REPLY #40548 /* ~"Dobrá. Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40549 /* ~"Fajn. Sbohem, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #40550 /* ~"Oh, vážně? Pojď blíž - *mnohem* blíž, tak ať si vidíme navzájem do obličeje..." Jakoby z ní vycházel jemný syčivý zvuk...~ */
  IF ~~ THEN REPLY #40551 /* ~Jdi blíž.~ */ GOTO 23
  IF ~~ THEN REPLY #40552 /* ~Drž se zpátky.~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 22.0 37.0
  SAY #40553 /* ~Postoupil jsi dopředu, takže se tvá tvář téměř dotýká Marissiny. Pošilháváš, abys viděl její obličej. Má krásné rysy, její pleť je bledá a neposkvrněná, ale její vlasy, to je jedna vřící masa syčících hadů. Marissiny oči - mají barvu zářivého modrého drahokamu - ti připadají nějak podivné, dokud si neuvědomíš, že je to vlastně tetování na zavřených očních víčkách. "Jsi připraven na překvapení?" zeptala se, rty zkroucené do zlého úsměvu...~ */
  IF ~~ THEN REPLY #40554 /* ~Otoč se.~ */ GOTO 48
  IF ~~ THEN REPLY #40555 /* ~"Jistě, zkus mě překvapit."~ */ GOTO 49
END

IF ~~ THEN BEGIN 24 // from: 20.2
  SAY #40556 /* ~"Budeme se popisovat slůvko po slůvku? Tak tedy já začnu se slovem 'štíhlá'. A teď je řada na tobě. Popiš se nějakým slovem."~ */
  IF ~~ THEN REPLY #40557 /* ~"Vysoký."~ */ GOTO 25
  IF ~~ THEN REPLY #40558 /* ~"Svalnatý."~ */ GOTO 25
  IF ~~ THEN REPLY #40559 /* ~"Zjizvený."~ */ GOTO 25
  IF ~~ THEN REPLY #40560 /* ~"Ne... žádné hry. Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40561 /* ~"Nějak se zrovna necítím na hraní. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #40562 /* ~"Mmm-hmm. Já bych řekla... bledá."

Vyměňujete si slůvko po slůvku, až se Marissa nakonec popíše jako štíhlá bledá překrásná žena s rozeklaným jazykem, která má místo vlasů syčící hady, a že její oči září. Odhaduješ, že zřejmě proto je má stále zavřené.~ */
  IF ~~ THEN REPLY #40563 /* ~"Jsi fiend?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - jedna z prostitutek v Nevěstinci - tvrdí, že má moc změnit živé bytosti na kámen pouhým pohledem.~ */ GOTO 26
  IF ~~ THEN REPLY #40564 /* ~"Připadá mi, že... vypadáš velmi exoticky, Marisso."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - jedna z prostitutek v Nevěstinci - tvrdí, že má moc změnit živé bytosti na kámen pouhým pohledem.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0 36.0
  SAY #40565 /* ~Marissa se zasmála, zvuk smíchu je doprovázený tichým syčením. "Ne, ani ne... i když moc, kterou mám, by někteří *mohli* nazývat fiendskou. Například můj pohled mění živé věci na kámen. Jediným mrknutím mého oka se bytosti z masa a krve mění na sochy..."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40566 /* ~"Živé věci na kámen? Mohla bys, řekněme, změnit na sochu Lim-Lima?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, jedna z "pracovnic" Nevěstince duševních rozkoší, ztratila svůj Karmínový závoj. Sice mě nepožádala o jeho nalezení, ale stejně bych se mohl porozhlédnout kolem, jestli se někde nepovaluje.~ */ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40567 /* ~"Živé věci na kámen? Mohla bys, řekněme, změnit na sochu Lim-Lima?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40568 /* ~"Živé věci na kámen? Mohla bys, řekněme, změnit na sochu Lim-Lima?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40569 /* ~"To musí být občas docela nepříjemné."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, jedna z "pracovnic" Nevěstince duševních rozkoší, ztratila svůj Karmínový závoj. Sice mě nepožádala o jeho nalezení, ale stejně bych se mohl porozhlédnout kolem, jestli se někde nepovaluje.~ */ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40570 /* ~"To musí být občas docela nepříjemné."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40571 /* ~"To musí být občas docela nepříjemné."~ */ GOTO 29
  IF ~~ THEN REPLY #40572 /* ~"Zajímavé. Chtěl bych se zeptat..."~ */ GOTO 4
  IF ~~ THEN REPLY #40573 /* ~"Aha. Teď už půjdu. Sbohem, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.3 35.3
  SAY #40574 /* ~"Myslíš? Tak možná proto tady sedím sama v temnotě, schovaná za zástěnou." I když na Marissu nevidíš, máš skoro jistotu, že se šklebí. Najednou si povzdechla. "Kdybych jenom věděla, kam zmizel můj Karmínový závoj. Neviděl jsi ho náhodou?"~ */
  IF ~~ THEN REPLY #40575 /* ~"Ne... na co je? Je to jenom normální závoj?"~ */ GOTO 7
  IF ~~ THEN REPLY #40576 /* ~"Ne. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #40577 /* ~"Neviděl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 35.4
  SAY #40578 /* ~"Myslíš? Tak možná proto tady sedím sama v temnotě, schovaná za zástěnou." I když na Marissu nevidíš, jsi si jistý, že se šklebí. Najednou si povzdechla. "Kdybych jenom věděla, kam zmizel můj Karmínový závoj. Neviděl jsi ho náhodou?"~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40579 /* ~"Mám tvůj závoj tady, u sebe, Marisso..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40580 /* ~"Mám tvůj závoj tady, u sebe, Marisso..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40581 /* ~"Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40582 /* ~"Sbohem, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.5 35.5
  SAY #40583 /* ~"Můj Karmínový závoj mi umožňuje cestovat s malým rizikem, že se to stane, takže to není zase tak hrozné."~ */
  IF ~~ THEN REPLY #40584 /* ~"Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40585 /* ~"Sbohem, Marisso"~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 4.0 4.1 28.0 28.1 46.0 46.1
  SAY #40586 /* ~"Tak podal bys mi ho tedy, prosím?"~ */
  IF ~~ THEN REPLY #40587 /* ~"Jistě, tady máš..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~Vrátil jsem Marisse její Karmínový závoj - za všechno dobré, co pro mě udělala.~ */ GOTO 31
  IF ~~ THEN REPLY #40588 /* ~"Nejdříve potřebuje něco jako náhradu..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marissa_1","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0 33.0 34.0
  SAY #40589 /* ~Držíš před sebou Karmínový závoj a cítíš, jak ti ho bere z rukou. "Ah. Ano, to je mnohem lepší." Objevily se před tebou dva zářící rudé body, jak otevřela své oči. "Tak takhle vypadáš... asi by bylo lepší, kdybych nechala oči zavřené."~ */
  IF ~~ THEN REPLY #40590 /* ~"Hlídej si ten svůj rozeklaný jazyk, Marisso."~ */ GOTO 32
  IF ~~ THEN REPLY #40591 /* ~"Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40592 /* ~"Sbohem, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #40593 /* ~"Ještě jsem ani nezačala."~ */
  IF ~~ THEN REPLY #40594 /* ~"Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40595 /* ~"Sbohem, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #40596 /* ~"Jistě... dokonalý žoldák. Tady... natáhni se a chytni mě za zápěstí... najdeš tam zlatý náramek. Vezmi si ho, je tvůj. Bude ti mnohem víc k užitku, než můj Karmínový závoj, tím si můžeš být jistý."~ */
  IF ~~ THEN REPLY #40597 /* ~"Vlastně... vlastně nic. Tady máš, vezmi si svůj závoj."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~Vrátil jsem Marisse její Karmínový závoj - za všechno dobré, co pro mě udělala.~ */ GOTO 31
  IF ~~ THEN REPLY #40598 /* ~Vezmi si náramek.~ */ DO ~GiveItemCreate("GolBra",Protagonist,1,0,0)
~ JOURNAL #39520 /* ~Vrátil jsem Marisse její Karmínový závoj, ale pouze za příslib odměny.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #40599 /* ~Sundal jsi náramek z jemného Marissina zápěstí...~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 35 // from: 25.1 36.1
  SAY #40600 /* ~Marissa se zasmála, její smích je doprovázený jemným syčením. "Oh, ano, jsem, jsem. A můj jediný pohled mění živé věci na kámen. Jediným mrknutím mého oka se bytosti z masa a krve mění na sochy..."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40601 /* ~"Živé věci na kámen? Mohla bys, řekněme, změnit na sochu Lim-Lima?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40602 /* ~"Živé věci na kámen? Mohla bys, řekněme, změnit na sochu Lim-Lima?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40603 /* ~"Živé věci na kámen? Mohla bys, řekněme, změnit na sochu Lim-Lima?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40604 /* ~"To musí být občas docela nepříjemné."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40605 /* ~"To musí být občas docela nepříjemné."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40606 /* ~"To musí být občas docela nepříjemné."~ */ GOTO 29
  IF ~~ THEN REPLY #40607 /* ~"Zajímavé. Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40608 /* ~"Aha. Teď už budu muset jít. Sbohem, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 21.0
  SAY #40609 /* ~Marissa se popsala jako štíhlá bledá překrásná žena s rozeklaným jazykem, která má místo vlasů syčící hady a že její oči září. Odhaduješ, že zřejmě proto je má stále zavřené.~ */
  IF ~~ THEN REPLY #40610 /* ~"Jsi fiend?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - jedna z prostitutek v Nevěstinci - tvrdí, že má moc změnit živé bytosti na kámen pouhým pohledem.~ */ GOTO 26
  IF ~~ THEN REPLY #40611 /* ~"Vypadáš velmi... exoticky, Marisso."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - jedna z prostitutek v Nevěstinci - tvrdí, že má moc změnit živé bytosti na kámen pouhým pohledem.~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #40612 /* ~"Nevěříš tomu, jak tě hodnotím? Mohlo by to být tak, že nejsi tím, kým se zdáš být?"~ */
  IF ~~ THEN REPLY #40613 /* ~Přistup k ní blíž.~ */ GOTO 23
  IF ~~ THEN REPLY #40614 /* ~"Velmi dobře... Jsem vysoký, svalnatý a hrozivě zjizvený."~ */ GOTO 21
  IF ~~ THEN REPLY #40615 /* ~"Zkrátka na to zapomeň. Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40616 /* ~"No, prozatím na to zapomeneme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.7
  SAY #40617 /* ~"Ne, nemám na to náladu. Jsem si jistá, že některá z místních dívek ti ráda povypráví všechno o malé škole Paní Grace pro aspirující Vnímavé... tak jdi a najdi některou z nich."~ */
  IF ~~ THEN REPLY #40618 /* ~"Vnímaví?"~ */ GOTO 39
  IF ~~ THEN REPLY #40619 /* ~"Ne, ještě ne. Mám pár dalších otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #40620 /* ~"Možná to udělám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40621 /* ~"Ano, ano... malá hloupá skupinka, která chce vše zažít. Rozhodně nemusím být Vnímavá, abych *byla* vnímavá... a jakmile získám přístup do Městské haly a do senzorií, prostě půjdu dál."~ */
  IF ~~ THEN REPLY #40622 /* ~"Povyprávěj mi o senzoriích."~ */ GOTO 40
  IF ~~ THEN REPLY #40623 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40624 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40625 /* ~"Jsou to haly, kde jsou vjemy uloženy do předmětů zvaných senzorické kameny. Jsou dvě: veřejné senzorium v Městské hale, které je přístupné všem, a senzorium Vnímavých, kam mají přístup jenom členové společenství Vjemu - Vnímaví."~ */
  IF ~~ THEN REPLY #40626 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40627 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.13
  SAY #40628 /* ~"Nevím... ale mě by to nepřekvapilo. Jen se na tu holku *podívej*, pro Héřiny rány! Ale zeptej se Juliette. Ty dvě bývaly kdysi přítelkyně... než se mezi ně dostal Montague."~ */
  IF ~~ THEN REPLY #40629 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40630 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.18
  SAY #40631 /* ~"Trávím tolik času tady, ve svých komnatách, ale myslím si, že i *já* bych věděla, kdybychom měli desátou studentku. Není žádná."~ */
  IF ~~ THEN REPLY #40632 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40633 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 4.17
  SAY #40634 /* ~"Ne. Ty ano?" Z temnoty se ozval podrážděný vzdech. "Jdi se zeptat Yves. Sbírá příběhy a pravděpodobně ti může říct něco užitečného."~ */
  IF ~~ THEN REPLY #40635 /* ~"Tak nic. Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40636 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 4.16
  SAY #40637 /* ~"Ne, nemám ponětí."~ */
  IF ~~ THEN REPLY #40638 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40639 /* ~"Tak já tedy už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 4.15
  SAY #40640 /* ~Marissa nic neřekla, ale z temnoty kolem ní vychází rozzlobené syčení. "Ano, vlezla jsem do Vivianiny komnaty pro některé z jejích parfémů... ale pochybuju, že tady najdeš nějakou dívku, která to neudělala. Pokud ale naznačuješ, že mám její *osobní* vůni... klidně si tady čmuchej. Ale nenajdeš ji, ani na mně, ani nikde v mé komnatě, o tom tě ujišťuji."~ */
  IF ~~ THEN REPLY #40641 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40642 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",1)
~ THEN BEGIN 46 // from:
  SAY #40643 /* ~Z temnot vychází Marissin chladný a krutý hlas. "Už zase! Věřím, že tentokrát máš pro svůj příchod nějaký důvod? Nebo jsou to zase jenom tvé nesmyslné otázky?"~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40644 /* ~"Vlastně jsem ti přinesl tvůj Karmínový závoj..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40645 /* ~"Vlastně jsem ti přinesl tvůj Karmínový závoj..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40646 /* ~"Další 'nesmyslné' otázky, Marisso."~ */ GOTO 4
  IF ~~ THEN REPLY #40647 /* ~"Jenom procházím kolem. Sbohem."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #40648 /* ~Marissiny oči září v temnotě. "Ano?" Její otázku doprovází slabé syčení.~ */
  IF ~~ THEN REPLY #40649 /* ~"Mám nějaké otázky, Marisso..."~ */ GOTO 4
  IF ~~ THEN REPLY #40650 /* ~"Nic, jenom procházím kolem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 23.0
  SAY #40651 /* ~Odvrátil jsi oči právě když Marissa otevřela své. Uvědomuješ si chladné rudé světlo, které proniká do okraje tvého vidění. "Oh..." Zklamaně si povzdychla. "Ty ses otočil! A opravdu vypadáš podivně. No tak, jen se na mě zase podívej. Už jsem oči zavřela."~ */
  IF ~~ THEN REPLY #40652 /* ~"Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40653 /* ~"To je v pořádku... zkrátka už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.1
  SAY #40654 /* ~Marissiny oči se náhle otevřely a zalily tě chladnou rudou září... je to poslední věc, kterou tvé oči spatřily, protože hned poté se - a celý zbytek tvého těla - změnil navždy na kámen.~ */
  IF ~~ THEN REPLY #40655 /* ~"Aaaah..."~ */ DO ~UseItem("M_Gaze",Protagonist)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 4.3 4.5
  SAY #40656 /* ~Marissa byla chvíli zticha, než odpověděla. "Nejprve to bylo proto, že jsem ztratila svůj Karmínový závoj... ale teď... nevím. Možná jsem si zvykla jednat se svými zákazníky takto a nějak jsem si to oblíbila. Možná, že mě to časem omrzí a já vyjdu zase jednou do ulic Sigilu, ale prozatím... mi to tady vyhovuje."~ */
  IF ~~ THEN REPLY #40657 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40658 /* ~"To je vše, co jsem chtěl vědět. Sbohem, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 4.14
  SAY #40659 /* ~Marissa nic neřekla, ale z temnoty kolem ní vychází rozzlobené syčení. "Ano, vlezla jsem do Vivianiny komnaty pro některé z jejích parfémů... ale pochybuju, že tady najdeš nějakou dívku, která to neudělala. Pokud ale naznačuješ, že mám její *osobní* vůni... klidně si tady čmuchej. Ale nenajdeš ji, ani na mně, ani nikde v mé komnatě, o tom tě ujišťuji. Možná že tu vůni vzala ta samá osoba, která ukradla můj Karmínový závoj."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40660 /* ~"Někdo ti ukradl tvůj závoj?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, jedna z "pracovnic" Nevěstince duševních rozkoší, ztratila svůj Karmínový závoj. Sice mě nepožádala o jeho nalezení, ale stejně bych se mohl porozhlédnout kolem, jestli se někde nepovaluje.~ */ GOTO 6
  IF ~~ THEN REPLY #40661 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40662 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 4.11 4.12
  SAY #40663 /* ~"Ano... 'Ecco.' Kdysi jsem znala jistou Ecco, ale její jméno se psalo jinak. O této dívce ale nic nevím. Zeptej se na ni Dolory. Je to přítelkyně dávného milence Ecco, alespoň jsem to slyšela."~ */
  IF ~~ THEN REPLY #40664 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40665 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 4.8 26.0 35.0
  SAY #40666 /* ~"Myslím, že bych mohla... jestli máš Lim-Lima a mně by se chtělo. A *možná* by se mi chtělo, kdybych měla svůj Karmínový závoj... ale nevím, kde se ztratil. Neviděl jsi ho náhodou?"~ */
  IF ~~ THEN REPLY #40667 /* ~"Ne... na co je? Je to normální závoj?"~ */ GOTO 7
  IF ~~ THEN REPLY #40668 /* ~"Ne. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #40669 /* ~"Neviděl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.9 26.1 35.1
  SAY #40670 /* ~"Myslím, že bych mohla... jestli máš Lim-Lima a mně by se chtělo. A *možná* by se mi chtělo, kdybych měla svůj Karmínový závoj."~ */
  IF ~~ THEN REPLY #40671 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40672 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 4.10 26.2 35.2
  SAY #40673 /* ~"Myslím, že bych mohla. Proč? Máš u sebe Lim-Lima?"~ */
  IF ~  PartyHasItem("LimLim")
~ THEN REPLY #40674 /* ~"Ano, mám."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
GiveItemCreate("S_LimLim",Protagonist,1,0,0)
~ GOTO 56
  IF ~  !PartyHasItem("LimLim")
~ THEN REPLY #40675 /* ~"Ne, zrovna teď ne."~ */ GOTO 58
  IF ~~ THEN REPLY #40676 /* ~"No vlastně nic. Mám otázku."~ */ GOTO 4
  IF ~~ THEN REPLY #40677 /* ~"Zapomeň, že jsem se ptal, Marisso... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #40678 /* ~"Tak ho sem podej..." Marissa si vzala z tvých rukou malé stvoření, které šťastně zapípalo 'Piyo! Piyo!' - neuvědomujíce si svůj hrozící osud.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #40679 /* ~Rudě se zablesklo a Lim-Limovo pípání náhle zmlklo. Marissa ti podala Lim-Lima, změněného na věc ze studeného a těžkého kamene.~ */
  IF ~~ THEN REPLY #40680 /* ~"Díky, Marisso. Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40681 /* ~"Děkuju ti, Marisso. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #40682 /* ~"No tak v tom případě není o čem debatovat." Hlasitě si povzdechla. "Nejsem si jistá, proč jsi mě s tím vůbec obtěžoval."~ */
  IF ~~ THEN REPLY #40683 /* ~"Mám ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #40684 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
