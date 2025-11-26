// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHYSIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHYSIS~

IF ~~ THEN BEGIN 0 // from: 69.0 69.1
  SAY #2947 /* ~"Správně! A teď poslouchejte! Todle je seminář o *Válce*. Jestli chcete poslouchat o Válce Krve, sedejte. Jestli ne, tak ste na blbým místě a měli byste sebrat svý zadnice a vodtáhnout s nima někam jinam."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 320
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2948 /* ~Poslouchej.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32707 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32708 /* ~Muž se náhle temně rozhlédnul po posluchačích, jakoby někoho hledal. "A jesli je tady nějakej tanar'ri nebo baatezu, ať zvedne svou šupinatou prdel a vypadne. Nemám zájem poslouchat a hádat se s váma, vy bastardi..."~ */
  IF ~~ THEN REPLY #32709 /* ~Poslouchej dál.~ */ GOTO 2
  IF ~~ THEN REPLY #32710 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32711 /* ~"...páč todle nejni žádná diskuze vo tom, kdo je v právu a kdo ne." Někde za sebou slyšíš zvuk, jak něco velkého opuští posluchárnu. "Zkrátka budu popisovat Válku Krve z lidskýho pohledu. Nevyvyšuju ani jednu stranu, páč obě *smrděj*, akorát každá jináč."~ */
  IF ~~ THEN REPLY #32712 /* ~Poslouchej dál.~ */ GOTO 3
  IF ~~ THEN REPLY #32713 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32714 /* ~Mluvčí začíná být zasmušilý. "Takže... vy, kdo jste zbyli, chcete poslouchat příběhy vo *Válce*. Ste tu, byste si vyslechli šecky ty horory. Lítající pevnosti, pokrytý lidskou kůží! Bitevní pole velikosti celejch Sfér, na kerejch se bojuje!"~ */
  IF ~~ THEN REPLY #32716 /* ~Poslouchej dál.~ */ GOTO 4
  IF ~~ THEN REPLY #32717 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32718 /* ~Stiskl své zažloutlé zuby: "Příběhy o fiendech, kerý trhaj zubama jiný fiendy! Grar! Snrarrrr!" Jeho zavrčení zesláblo, náhle to vypadá, jako by se strašně nudil.~ */
  IF ~~ THEN REPLY #32719 /* ~Poslouchej dál.~ */ GOTO 5
  IF ~~ THEN REPLY #32720 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32721 /* ~"No, takže vám votevřu kebule a naleju do nich kapku rozumu: Je to pořádně kreténskej nápad, bejt tam." Výsměšně si odplivl a zakoulel očima.~ */
  IF ~~ THEN REPLY #32722 /* ~Poslouchej dál.~ */ GOTO 6
  IF ~~ THEN REPLY #32723 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32724 /* ~"Ale povím vam todle: Nedokážete si představit, na jaký úrovni se ta Válka Krve vodehrává. Nic, co ste dřív slyšeli, viděli, nebo se zúčastnili - *nic* se nedá srovnávat: čas, počet 'legií,' krveprolití... nic se nedá srovnávat, bando. Představit si to šecko? Zapoměňte na to. A co vám radim já? Jednoduchý: nestrkejte do tý krvavý mely ani jeden prstík, volové."~ */
  IF ~~ THEN REPLY #32725 /* ~Poslouchej dál.~ */ GOTO 7
  IF ~~ THEN REPLY #32726 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32727 /* ~"Jediná věc, kerou potřebujete vědět, je tadle: fiendi zabíjej fiendy. Baatezu vyvražďujou tanar'ri, tanar'ri masakrujou baatezu. Zrovna teď." Znovu si odplivl. "Nikdo nevyhrává. Nemyslím si, že by vůbec někdo *mohl* vyhrát. Největší remíza na týdle straně věčnosti... díky Mocnostem."~ */
  IF ~~ THEN REPLY #32728 /* ~Poslouchej dál.~ */ GOTO 8
  IF ~~ THEN REPLY #32729 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #32730 /* ~"To je šecko. "Pokrčil rameny. "Vážně všechno. Esli máte ňáky votázky, tak šup sem s nima..."~ */
  IF ~~ THEN REPLY #32731 /* ~Zeptej se.~ */ GOTO 11
  IF ~~ THEN REPLY #32732 /* ~Zůstaň zticha.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 11.10 12.2 13.2 14.3 15.2 16.2 17.2 18.3 19.3 20.2 21.2 22.2 23.2 24.3 25.2 26.2 27.5 28.2 29.2 30.2 31.5 32.2 33.2 34.2 35.2 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.2 45.2 46.3 47.2 48.7 49.2 50.2 51.2 52.2 54.2 55.2 56.1 57.2 58.1 59.2 60.4 61.1 62.2 64.2 70.1 74.3 75.1 76.1 77.1 79.1 80.1 81.1 82.0
  SAY #32733 /* ~"Správně... tak to je šechno. Někerý z vás sou Vnímaví, takže pro vás jedna extra rada: neupisujte se, abyste poznali, vo čem ta podělaná Válka je. Nebuďte úplní kreténi. Použijte senzorickej šutr, dyž už to musíte vědět, ale ať vás ani nenapadne zkoušet si, jaký je to naživo.""~ */
  IF ~~ THEN REPLY #32734 /* ~Poslouchej dál.~ */ GOTO 10
  IF ~~ THEN REPLY #32735 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32736 /* ~"Nemá to zkrátka cenu. Je to..." Na okamžik to vypadá, jako by muž zažíval velkou bolest, vypadá to, že snad začne plakat. "Je to zkrátka na houby celý. A todle je konec celý lekce, takže sbohem, bando."~ */
  IF ~~ THEN REPLY #32737 /* ~Odejdi.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.1 13.1 14.2 15.1 16.1 17.1 18.2 19.2 20.1 21.1 22.1 23.1 24.2 25.1 26.1 27.4 28.1 29.1 30.1 31.4 32.1 33.1 34.1 35.1 36.1 37.1 38.0 39.1 40.0 41.1 42.1 43.1 44.1 45.1 46.2 47.1 48.6 49.1 50.1 51.1 52.1 54.1 55.1 56.0 57.1 58.0 59.1 60.3 61.0 62.1 64.1 70.0 74.2
  SAY #32738 /* ~"Co potřebuješ vědít, kámo?"~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49564 /* ~"Jakže jsi přežil Válku krve?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49565 /* ~"Jakže jsi přežil Válku krve?"~ */ GOTO 70
  IF ~~ THEN REPLY #32739 /* ~"Můžeš mi říct něco více o samotné Válce Krve?"~ */ GOTO 32
  IF ~~ THEN REPLY #32740 /* ~"Co začalo Válku Krve?"~ */ GOTO 41
  IF ~~ THEN REPLY #32741 /* ~"Jak se můžu nechat najmout do Války Krve?"~ */ GOTO 59
  IF ~~ THEN REPLY #32742 /* ~"Kde se ta Válka Krve bojuje?"~ */ GOTO 55
  IF ~~ THEN REPLY #32743 /* ~"Jak se dá přežít Válka Krve?~ */ GOTO 12
  IF ~~ THEN REPLY #32744 /* ~"Popiš mi tanar'ri."~ */ GOTO 57
  IF ~~ THEN REPLY #32745 /* ~"Popiš mi baatezu."~ */ GOTO 45
  IF ~~ THEN REPLY #32746 /* ~"Takže nám nepovíš žádný příběhy z Války Krve?"~ */ GOTO 39
  IF ~~ THEN REPLY #33088 /* ~"Vlastně žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.6
  SAY #32747 /* ~"Chceš vědít, jak přežít Válku Krve? Tři věci, kámo." Zvedl zmrzačenou ruku, má na ní pouze dva prsty.~ */
  IF ~~ THEN REPLY #32748 /* ~"Pokračuj..."~ */ GOTO 13
  IF ~~ THEN REPLY #32749 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32750 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #32751 /* ~"Za prvý, vůbec do ní nechoď. Za druhý, drž se vod ní dál. A za třetí, nebuď kretén a neser se tam, ty vole."~ */
  IF ~~ THEN REPLY #32752 /* ~"Pokračuj..."~ */ GOTO 14
  IF ~~ THEN REPLY #32753 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32754 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #32755 /* ~"Pokaď se část Války rozjede tvým směrem, zapni fantazii, která tě kopne do prdele tak, že se rozběhneš, jak nejrychlejc to zvládneš. Pokáď nemůžeš běžet, lež fakt klidně a modli se, že akorát projde kolem." Na chvíli se odmlčel. "Až na to, že skoro není místo, kde nejni, a že nemáš vlastně vůbec kam utíkat, aby ses vod ní dostal."~ */
  IF ~~ THEN REPLY #32756 /* ~"Pokud není kam utéct, proč nebojují fiendové tady v Sigilu?"~ */ GOTO 21
  IF ~~ THEN REPLY #32757 /* ~"Ještě něco?"~ */ GOTO 15
  IF ~~ THEN REPLY #32758 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32759 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 15 // from: 14.1 29.0
  SAY #32760 /* ~"Jó: ať děláš co děláš, *nemluv* vo Válce Krve s *žádným* fiendem... Zkrátka vo ní nemluv, tečka. Páč nikdy nevíš, s kým to ksakru vůbec mluvíš. A všichni ti hajzlíci začnou bejt pořádně citlivý, když přivedeš řeč na Válku. Je to jejich důvod k životu."~ */
  IF ~~ THEN REPLY #32761 /* ~"Ještě něco?"~ */ GOTO 16
  IF ~~ THEN REPLY #32762 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32763 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #32764 /* ~Přikývl. "Neprocházej žádným portálem, pokavád si nejseš zatraceně jistej, kam vede. Asi ste neslyšeli příběhy vo debilních sférařích, keří prošli portálem a skočili rozplesknutí vprostřed bitky.  A víte proč ste nic takovýho nikdy neslyšeli? Páč sou tihle volové mrtví, mrtví, *mrtví.*"~ */
  IF ~~ THEN REPLY #32765 /* ~"Ještě něco?"~ */ GOTO 17
  IF ~~ THEN REPLY #32767 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32768 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #32769 /* ~"A ať už uděláš cokoli, nikdy se neupisuj na tažení, ať už na tebe budou cinkat jakýmakoli prachama. Jistá smrt a upsání na tažení do Války Krve je to samý, kámo."~ */
  IF ~~ THEN REPLY #32770 /* ~"A to proč?"~ */ GOTO 18
  IF ~~ THEN REPLY #32771 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32772 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #32773 /* ~"Je skoro jasný, že až se zapíšeš, tak ti to tak předělaj, že tvoje tažení skončí, až se sám čas podělá a zabalí to. Dokonce ani smrt nebude konec, páč se ponoříš do Nižších Sfér a voni si tě hned vytáhnou zpátky, nejspíš jako ještě něco horšího, než bejvals. Budou mít svý pařáty na tvým krku celou věčnost."~ */
  IF ~~ THEN REPLY #32774 /* ~"Jak se dá z kontraktu dostat?"~ */ GOTO 30
  IF ~~ THEN REPLY #32775 /* ~"Takže zemřít ve Válce Krve je hodně špatná věc?"~ */ GOTO 19
  IF ~~ THEN REPLY #32776 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32777 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 19 // from: 18.1 31.0
  SAY #32778 /* ~"Pokud seš zlej, tak určitě. Jestli seš dobrej, pudeš do jiný Sféry, strávit si tam svůj další život. Ale pořád budeš mrtvák. A co se tejče mě, mám na duši furt dost zla na smejvání, takže kdybych zdechnul, pudu do Nižších sfér, kde mě popadnou a narvou zpátky. Fuj."~ */
  IF ~~ THEN REPLY #32779 /* ~"Po smrti půjdeš do jiné Sféry? Můžeš mi to vysvětlit?"~ */ GOTO 20
  IF ~~ THEN REPLY #32780 /* ~"Jak se dá z kontraktu dostat?"~ */ GOTO 30
  IF ~~ THEN REPLY #32781 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32782 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32783 /* ~"Promluv si s lektorem smrti, esli vo tom chceš vědí víc. Nedokážu ti to vysvětlit tak dobře jako von, i dyž je to kretén, kerej tě nejspíš vopaří tím svým žhavým dechem, co funí z držky."~ */
  IF ~~ THEN REPLY #32784 /* ~"Jak se dá z kontraktu dostat?"~ */ GOTO 30
  IF ~~ THEN REPLY #32785 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32786 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 14.0
  SAY #32788 /* ~"Ale no tak, kámo, hele: voni tu bojovali... párkrát. Vobčas se nám sem zanese vlnka z Války Krve. Naše Paní Bolesti, pochváleno budiž její vocelový srdce, je zase rychle uklidní..."~ */
  IF ~~ THEN REPLY #32789 /* ~"Pokračuj..."~ */ GOTO 22
  IF ~~ THEN REPLY #32790 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32791 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32792 /* ~"...*někdy*." Odfrkl si. "Byly časy, děsný, příšerný časy, při kerejch by se jeden podělal strachy, kdy se probíjeli a spalovali celý podělaný bloky v Sigilu, než se rozhodla, že je třeba udělat domácí úklid." Mlaskl a cynicky mrkl. "Takže né vždycky se snaží zastavit Válku krve tak moc, jak by to mohlo vypadat, hm?"~ */
  IF ~~ THEN REPLY #33089 /* ~"Proč fiendi zkrátka neovládnou Sigil?"~ */ GOTO 23
  IF ~~ THEN REPLY #32794 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32805 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #32806 /* ~Zasmál se, ale pak začal prskavě kašlat. "Nepochop mě špatně: jak tanar'ri tak baatezu by strašně chtěli Sigil. Je to nejlepší flek v celým podělaným mnohovesmíru - Klec je Město Dveří a napojuje se *všude*. Nemůžeš ho ignorovat a pokud sloužíš ve Válce Krve a chceš vyhrát, *musíš* ho mít."~ */
  IF ~~ THEN REPLY #32807 /* ~"Pokračuj..."~ */ GOTO 24
  IF ~~ THEN REPLY #32808 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32809 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #32810 /* ~Muž si znovu odkašlal. "De vo to, že fiendi se sem nedostanou, dokud tu šéfuje Paní. Je drsná jako šmirgl a její pohlazení zmasakruje víc než tesáky ňákýho prašivýho fienda. A to drží fiendy mimo líp, než bys věřil. Jedna malá tichá Paní, ruky v rukávech a drží sama celou podělanou Válku Krve, jen tak." Hořce se zasmál.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 134
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32811 /* ~"Ale fiendům je přístup do Sigilu povolen?"~ */ GOTO 25
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32812 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32813 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #32814 /* ~"Ou, to je zatraceně jistý. Nemůžou se mlátit na ulicích... alespoň tak. Jako neutrální flek jim Sigil umožňuje tlachat a otravovat, bez toho, že by se povraždili mezi sebou. Někdy se dokonce baví i mezi sebou. Ale ten mír nikdá dlouho nevydrží, to je jistý..."~ */
  IF ~~ THEN REPLY #32815 /* ~"Pokračuj..."~ */ GOTO 26
  IF ~~ THEN REPLY #32816 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32817 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #32818 /* ~"A kromě toho, to, že se nemůžou podřezávat na ulicích neznamená, že tu nejsou špióni, náboráři a sem tam nějaký píchnutí do zad. Tady bojujou slovama. Lží, kámo. Někdy jsou to velký kecy a bouření. A taky tady mají zabezpečený domy. Místa, kde si můžou ochladit zadky, než si je dou zase nechat nakopat do další bitvy..."~ */
  IF ~~ THEN REPLY #32819 /* ~"Pokračuj..."~ */ GOTO 27
  IF ~~ THEN REPLY #32820 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32821 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32822 /* ~"A taky tady rádi nabíraj rekruty. Hledaj chlápky ze sfér, keří mají v srdci kapku chamtivosti po prachách a slávě, že budou makat ve slavný armádě." Přestal mluvit a důkladněji si tě prohlíží. "Tebe možná taky jednou najmuli, he? Vypadáš, jako by sis něco ve Válce vodsloužil."~ */
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32823 /* ~"O tom pochybuji."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32824 /* ~"Možná."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32825 /* ~"O tom pochybuji."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32884 /* ~"Možná."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32885 /* ~"Může být. Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32886 /* ~"Možná. Ať už je to jakkoli, už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 27.2 27.3
  SAY #32887 /* ~"Válka na tobě nechá jizvu, kámo. *Věděl bys*. A věděl bys, že *nikdy* nebudeš chtít zpátky."~ */
  IF ~~ THEN REPLY #32888 /* ~"Často nabírají rekruty?"~ */ GOTO 29
  IF ~~ THEN REPLY #32889 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32890 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 29 // from: 28.0 64.0
  SAY #32891 /* ~Smutně přikývl. "Na to si vsaď, kámo. Sigil je nejlepší zdroj krmiva ve Sférách. Vybíjet celý planety... to je spousta fachy, kámo."~ */
  IF ~~ THEN REPLY #32892 /* ~"Takže máš ještě nějakou radu ohledně přežití Války?"~ */ GOTO 15
  IF ~~ THEN REPLY #32893 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32894 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 30 // from: 18.0 19.1 20.0
  SAY #32895 /* ~"Pokud tě nechcou, máš jistou šanci. Nikdy sem neslyšel, že by brali nějaký mizerný rekruty. Oblbnout tanar'ri je docela riskantní, ale je to možný... baatezu jsou s těma svejma smlouvama mnohem nebezpečnější. Podepíšeš jednu a seš proklet po celej zbytek svýho mizernýho života..."~ */
  IF ~~ THEN REPLY #32896 /* ~"Pokračuj..."~ */ GOTO 31
  IF ~~ THEN REPLY #32897 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32898 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #32899 /* ~"Můžeš si zkusit trochu nahrabat a pak zdrhnout... ale kam bys šel? Existuje tolik pekel..."~ */
  IF ~~ THEN REPLY #32900 /* ~"A smrt ve Válce Krve by byla *velice* špatná věc?"~ */ GOTO 19
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #32901 /* ~"Takže, jak se dá utéct z Války Krve?" ~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49558 /* ~"Takže, jakže jsi přežil Válku krve?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49559 /* ~"Takže, jakže jsi přežil Válku krve?"~ */ GOTO 70
  IF ~~ THEN REPLY #32902 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32903 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 32 // from: 11.2
  SAY #32904 /* ~"Dybych to měl ňák krátce vyjádřit, tak bych to udělal asi takhle: Válka Krve probíhá skoro-celou-zatracenou-věčnost a bude tady dokud nebude skoro-celá-zatracená-věčnost zapsaná do Knihy mrtvejch. Tanar'ri, šampióni *chaosu* a zla se pokoušej vymačkat zelený sračky z baatezu, šampiónů *řádu* a zla. Masakrujou se mezi sebou navzájem kvůli tomu, co považujou za *správný* zlo, pokavaď tomu dokážeš uvěřit! Hah!"~ */
  IF ~~ THEN REPLY #32905 /* ~"Co si myslíš, že by se stalo, kdyby někdo zastavil Válku Krve?"~ */ GOTO 33
  IF ~~ THEN REPLY #32906 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32907 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #32908 /* ~"Válku nemůžeš nijak ovlivnit! Je až moc zasraně *velká*! Seš šutr, šutr v oceáně, kerej je šutřík v jiným oceánu, což je další blbej šutr v jiným mizerným oceáně a tak dál. Jako šutr je tvůj cíl zůstat někde ležet bez toho, že by si tě někdo všim a klesnout na dno se zbytkem šutrů..."~ */
  IF ~~ THEN REPLY #32909 /* ~"Pokračuj..."~ */ GOTO 34
  IF ~~ THEN REPLY #32910 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32911 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32912 /* ~"Pokud bys to moh ovlivnit - což *nemůžeš* - měl bys to zkusit, páč pak by se Sféry sesypaly."~ */
  IF ~~ THEN REPLY #32913 /* ~"Sféry by se sesypaly? Proč?"~ */ GOTO 35
  IF ~~ THEN REPLY #32914 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32915 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #32916 /* ~Zvedl ruce vzhůru. "Válka Krve je jako velkej zatracenej podpůrnej pilíř skrzevá Sféry... skopni ho a spousta sfér se sesype taky. Na zádech války leží naházený spousta bagáže." Vydal zvuk jako týraný osel a hořce se rozesmál. "Největší, nejšerednější nákladní zvíře ve Sférách..."~ */
  IF ~~ THEN REPLY #32917 /* ~"Pokračuj..."~ */ GOTO 36
  IF ~~ THEN REPLY #32918 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32919 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #32920 /* ~Cynicky se ušklíbl. "Kromě toho, válka je *skvělá* pro byznys." Dutě se zasmál, ale náhle vypadá, jako by se měl rozplakat. "No... toho si nevšímej... další otázka?"~ */
  IF ~~ THEN REPLY #32921 /* ~"Jsi v pořádku? Vypadáš, jako bys měl bolesti..."~ */ GOTO 37
  IF ~~ THEN REPLY #32922 /* ~"Ano, mám další otázku..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ghysis_1","GLOBALGood",1)
~ GOTO 11
  IF ~~ THEN REPLY #32923 /* ~"Ne, už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #32924 /* ~Muž se smutně usmál. "Jo, jo... poslouchej, kámo: Nejsem žádnej kněz a ani bych nechtěl bejt, ale poslouchej: drž si zlo dál vod svýho srdce. Když zemřeš se zlem v srdci, tvůj duch padne do Nižších Sfér, kde se staneš žadatelem..."~ */
  IF ~~ THEN REPLY #32925 /* ~"Pokračuj..."~ */ GOTO 38
  IF ~~ THEN REPLY #32926 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32927 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #32928 /* ~"A víš, co se stane pak? Žadatelé v Abyssu a Baatoru se stávaj vojákama... a jdou se mlátit do zatracený Války Krve, na celou věčnost." Ušklíbl se a zatřásl hlavou. "Tak to je tajemství, proč baatezu a tanar'ri zkoušej zkazit všechno, na co máknou, páč potřebujou víc vojáků. Zapamatuj si: nepouštěj si zlo do srdce, kámo."~ */
  IF ~~ THEN REPLY #32929 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32930 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 39 // from: 11.9
  SAY #32931 /* ~"Dobře, jeden: dám vám příklad, co pro ně znamená 'maso'. Daj dohromady ňáký nasraný smrtelný žoldáky, možná tak milión a nechají je zmasakrovat se bez jakýhokoli mizernýho důvodu - zbytečná bitva na ňáký Mocnostma zapomenutý sféře. A hádej, kam *všechny* ty duše půjdou?"~ */
  IF ~~ THEN REPLY #32932 /* ~"Kam?"~ */ GOTO 40
  IF ~~ THEN REPLY #32933 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32934 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #32935 /* ~"Jejich duše se ponoří do Sfér zla, kde bojujou, kde jsou vodtrhnutý vod Sfér a bojujou dál jako lemuři nebo vopice nebo jako cokoli jinýho mizernýho ďábelskýho, v co se ti chudáci změněj. Čím víc těhle zatracenejch žadatelů dostanou, tím víc jednotek maj."~ */
  IF ~~ THEN REPLY #32936 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32937 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 41 // from: 11.3
  SAY #32938 /* ~"Máš recht, že se zajímáš, co celou takovou mizernou melu začalo: co donutilo fiendy řezat se mezi sebou tak dlouho, dokavaď se to nestalo hlavním důvodem, proč sou vůbec naživu..."~ */
  IF ~~ THEN REPLY #32939 /* ~"Pokračuj..."~ */ GOTO 42
  IF ~~ THEN REPLY #32940 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32941 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #32942 /* ~"Jednoduchý: potkali se." Povzdychl si.  "Tanar'ri a baatezu se jednoho blbýho dne potkali jako dva vožralí fanatici a začali se mydlit. Tak je to jednoduchý." Zamračil se. "No..."~ */
  IF ~~ THEN REPLY #32943 /* ~"Pokračuj..."~ */ GOTO 43
  IF ~~ THEN REPLY #32944 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32945 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #32946 /* ~A teď si představ todle: dva vožralý *kněžoury*, a jeden každej z nich věří, že právě von zná ten jedinej *správnej* způsob, jak žít. Teď tydle kněžoury vobal šupinama, dej jim pařáty, drápy a smysl pro krutost velkej pár kiláků a pak je voba strč do jedný malý blbý cely... a máš docela dobrou představu vo lásce, kerá mezi nima vznikne. A máš to! Původ celý zatracený mizerný podělaný Války Krve!"~ */
  IF ~~ THEN REPLY #32947 /* ~"Proč spolu bojují dvě zlé rasy?"~ */ GOTO 44
  IF ~~ THEN REPLY #32948 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32949 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #32950 /* ~"Jedni věřej, že zlo by mělo bejt hezky organizovaný, druzí věřej, že zlo by mělo bejt chaotický, šíleně pobíhající po Sférách. Vobě rasy sou zlý, ale to neznamená, že by spolu v něčem souhlasily. Zlá krev, zlá krev... chtěj vyvraždit ty druhý, takže zůstanou akorát jejich bratři ve zlu. Nenáviděj se navzájem jako... jako..."~ */
  IF ~~ THEN REPLY #32951 /* ~"Pokračuj..."~ */ GOTO 61
  IF ~~ THEN REPLY #32952 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32953 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 45 // from: 11.8
  SAY #32954 /* ~Muž kývl. "Většinou neplatí tolik jako tanar'ri, ale neporuší to, co je napsaný. Ale sou mazaný - několik set tisíc krát mazanější a uzavíraj kotrakty vod doby, kdy čas začal existovat. Věděj, jak někoho stáhnout z kůže slovama. Podepiš a nejspíš tě dostanou a strčej do svejch legií."~ */
  IF ~~ THEN REPLY #32955 /* ~"Pokračuj..."~ */ GOTO 46
  IF ~~ THEN REPLY #32956 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32957 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32958 /* ~"Plánujou jako svině. Daj víc přemýšlení do jedný jednoduchý strategický potyčky, než by dala většina lidskejch armád do celý války." Odfrkl si a poškrábal se na tváři. "Většinou dávaj dohromady armády v Avernu, první vrstvě Baatoru."~ */
  IF ~~ THEN REPLY #32960 /* ~"Jaký je Avernus?"~ */ GOTO 47
  IF ~~ THEN REPLY #32961 /* ~"Jaké druhy jednotek slouží ve Válce Krve?"~ */ GOTO 48
  IF ~~ THEN REPLY #32962 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32963 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32964 /* ~"Avernus? Hrm..." Muž se zašklebil, jakoby mu vzpomínky působily fyzickou trýzeň. "Je to vobydlený zatracenejma a těma, keří se živí zatracenejma. Jsou to rudý kraje zhoubnejch písků a ohromnejch ohňů, co spalujou celou krajinu. Tak mi připadal Baator, vrstva Avernus. Děsivý místo."~ */
  IF ~~ THEN REPLY #32965 /* ~"Jaké druhy jednotek slouží ve Válce Krve?"~ */ GOTO 48
  IF ~~ THEN REPLY #32966 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32967 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.0 49.0 50.0 51.0 52.0 54.0
  SAY #32968 /* ~"Všechny možný, včetně smrtelníků z celejch Sfér. Abishai a cornugonové, lemuři a nupperibo, sukuby... seznam je dlouhej na kilák."~ */
  IF ~~ THEN REPLY #32969 /* ~"Pověz mi o abishai."~ */ GOTO 49
  IF ~~ THEN REPLY #32970 /* ~"Pověz mi o cornugonech."~ */ GOTO 50
  IF ~~ THEN REPLY #32971 /* ~"Pověz mi o lemurech."~ */ GOTO 51
  IF ~~ THEN REPLY #32972 /* ~"Pověz mi o nupperibo."~ */ GOTO 52
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #32973 /* ~"Pověz mi o sukubách."~ */ GOTO 53
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32974 /* ~"Pověz mi o sukubách."~ */ GOTO 54
  IF ~~ THEN REPLY #32975 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32976 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #32977 /* ~"Jsou to pěšáci většiny armád baatezu. Je jich hodně druhů, nejslabší a nejběžnější sou ti s černejma šupinama."~ */
  IF ~~ THEN REPLY #32978 /* ~"Jaké další jednotky slouží ve Válce Krve?"~ */ GOTO 48
  IF ~~ THEN REPLY #32979 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32980 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #32981 /* ~"Cornugonové sou *mrtví*, kámo. Málokdy uvidíš po kupě víc než pár, i když někdy vytvářej bandy elitních jednotek. Většinou vedou do bitvy jednotky slabších ras, jako abishai a smrtelných žoldáků."~ */
  IF ~~ THEN REPLY #32982 /* ~"Jaké další jednotky slouží ve Válce Krve?"~ */ GOTO 48
  IF ~~ THEN REPLY #32983 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32984 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.2
  SAY #32985 /* ~"Lemurové jsou tydle... věci... co vypadaj jako rozpuštěný lidi. Otravní malí mizerové, kteří se regenerujou, dokonce i když je zrovna zabíjíš. Nevšímaj si nebezpečí nebo bolesti, takže nikdy neutečou z boje. Většinou se hodí akorát jako štíty do předních linii, jináč na moc nejsou."~ */
  IF ~~ THEN REPLY #32986 /* ~"Jaké další jednotky slouží ve Válce Krve?"~ */ GOTO 48
  IF ~~ THEN REPLY #32987 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32988 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 52 // from: 48.3
  SAY #32989 /* ~"Tlustí hajzlíci, keří maj malinkatý kebule. Slepí, hluší a debilní, existujou akorát proto, aby zdechli v první linii. Ale sou dost tvrdí a nebezpeční... dokonce i z malýho kousku doroste celej bastard, dyž ho necháš."~ */
  IF ~~ THEN REPLY #32990 /* ~"Jaké další jednotky slouží ve Válce Krve?"~ */ GOTO 48
  IF ~~ THEN REPLY #32991 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #32992 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 53 // from: 48.4
  SAY #32993 /* ~"Sukuby jsou tanar'ri - krásní, ale děsně zlí, to sou. Sváděj smrtelníky a pak je zatáhnou do Abyssu." Kývl na Fall-From-Grace. "Bez urážky, madam."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 135
END

IF ~~ THEN BEGIN 54 // from: 48.5
  SAY #32997 /* ~"Tanar'ri - krásní, ale děsně zlí, to sou. Sváděj smrtelníky a pak je zatáhnou do Abyssu... víc žadatelů, víc masa do bitvy."~ */
  IF ~~ THEN REPLY #32998 /* ~"Jaké další jednotky slouží ve Válce Krve?"~ */ GOTO 48
  IF ~~ THEN REPLY #32999 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #33000 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 55 // from: 11.5
  SAY #33001 /* ~"Spousta míst... *většinou* Nižší Sféry. Kdekoli kolem Řeky Styx... devět vrstev Baatoru, čtyři pece Džeheny, Šedý Pustiny, studený rudý Carceri - vězeňská sféra - a skoro nekonečná studna zla, zatracenej Abyss." Šedé Pustiny ti připadají nějak povědomé...~ */
  IF ~~ THEN REPLY #33002 /* ~"Pověz mi o Šedých Pustinách."~ */ GOTO 56
  IF ~~ THEN REPLY #33003 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #33004 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #33005 /* ~"Taky se jim říká Temno." Pokrčil rameny, pak se otřásl, jakoby reflexivně. "Šedý v každým možným smyslu slova. Barvy ti tam vypalujou oči, křičí, sou moc hlasitý a tvý sny sou vytažený na povrch a hozený na zem, ztracený navždy. Pouze Noční čarodějnice tam vládnou...Dámy z Šedých Pustin."~ */
  IF ~~ THEN REPLY #33006 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #33007 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 57 // from: 11.7
  SAY #33008 /* ~Muž kývl. "Tanar'ri platěj líp než baatezu, ale musíš mít dva tři obličeje a oči všude kolem, protože nikdy nevíš, kdy se obrátěj proti tobě: sou chaos, v srdcích maj akorát zmatek, nikdy nevíš, co provedou. Důvěra nebo dodržování slova pro ně neznamenaj prakticky nic..."~ */
  IF ~~ THEN REPLY #33009 /* ~"Pokračuj..."~ */ GOTO 58
  IF ~~ THEN REPLY #33010 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #33011 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #33012 /* ~Popotáhnul vzduch nosem a pak pokrčil rameny. "Nezajímá je, co se stane, dokud se *něco* děje a je to zlý. Většinou útočej na baatezu, aby se nemuseli vybíjet mezi sebou."~ */
  IF ~~ THEN REPLY #33013 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #33014 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 59 // from: 11.4
  SAY #33015 /* ~"Víš, pokaždý se stane, že nějakej úplně pitomej kretén přijde a hledá džob ve Válce Krve. Chce prachy, jeden jednoduchej úkol a pak žít dál a užívat si prachy. Možná jsem byl jeden z těhle debilů. Možná sem bejval žoldák a slyšel sem, že se dá ve Válce vydělat kupa prachů. Zajímalo mě to..."~ */
  IF ~~ THEN REPLY #33016 /* ~"Pokračuj..."~ */ GOTO 60
  IF ~~ THEN REPLY #33017 /* ~"Počkej... chci se zeptat ještě na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #33018 /* ~"Vlastně nic. Už žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #33019 /* ~"A naučilo mě to jedno, to rozhodně: sme jako mravenci pobíhající kolem noh tancujících, zatracenejch bohů. Viděl sem velký muže, kerý vo sobě tvrdili, že sou velcí vojáci." Zavrtěl hlavou. "*Papíroví* vojáčci. Válka a *pec* pro ně. Buď se probuděj, nebo v tý peci *shořej*."~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #33020 /* ~"Takže, jak jsi přežil Válku Krve?"~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49556 /* ~"Takže, jakže jsi přežil Válku krve?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49557 /* ~"Takže, jakže jsi přežil Válku krve?"~ */ GOTO 70
  IF ~~ THEN REPLY #33021 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #33022 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 61 // from: 44.0
  SAY #33023 /* ~Sepne ruce a snaží se najít ty správná slova. "Víš, oni nenávidí jinak než *my*. My dokonce ani nevíme, co to nenávist *je*. Máme jedno *jediné* slovo pro 'nenávist'. Oni jich mají..." Ztišil hlas..." Tisíce, tisíce, jejich smysl pokroucený jako... těla. *Proto* bojují."~ */
  IF ~~ THEN REPLY #33024 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #33025 /* ~"Už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 62 // from: 11.0 31.1 31.2 60.0 60.1
  SAY #33026 /* ~Mužova tvář ztmavla. "Já... no, to je jedna věc, o kerý mluvit nebudu, kámo. Musí ti stačit, dyž řeknu, že jeden musí udělat, co musí, aby se z Války dostal."~ */
  IF ~  Global("CW_Vrischika_Ghysis","GLOBAL",1)
~ THEN REPLY #49560 /* ~"Ale žena jménem Vrischika mi řekla, že jsi musel povraždit své vlastní muže, abys unikl z Války."~ */ GOTO 74
  IF ~~ THEN REPLY #33027 /* ~"Tak bych se tě tedy chtěl zeptat na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #33028 /* ~"Tak už nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 63 // from: 27.0 27.1
  SAY #33029 /* ~"Válka na tobě nechá jizvy, kámo. *Věděl* bys. A věděl bys, že už *nikdy* nechceš zpátky." Tvé spánky začínají bolestně tepat, když vnímáš mužova slova... a vzpomínky se začínají objevovat...~ */
  IF ~  CheckStatLT(Protagonist,9,WIS)
~ THEN REPLY #33030 /* ~Zkus si vzpomenout.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,8,WIS)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #33031 /* ~Zkus si vzpomenout.~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33032 /* ~Zkus si vzpomenout.~ */ DO ~GiveExperience(Protagonist,1500)
~ GOTO 65
  IF ~~ THEN REPLY #32996 /* ~Potlač vzpomínky.~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.3 68.0
  SAY #33035 /* ~"Kámo? Hej ty, cítíš se dobře?"~ */
  IF ~~ THEN REPLY #33098 /* ~"Ano... jsem v pořádku. Takže, najímají fiendi často?"~ */ GOTO 29
  IF ~~ THEN REPLY #33099 /* ~"Jsem v pořádku. Chtěl bych se tě zeptat na něco jiného."~ */ GOTO 11
  IF ~~ THEN REPLY #33100 /* ~"Jsem OK. Už pro tebe nemám další otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 65 // from: 63.0 63.1 63.2
  SAY #33036 /* ~Posluchárna pomalu mizí z tvého pohledu, jak z tvé mysli vyvěrají hrozivé vize... vize místa, kde se období nepodobají ničemu, co jsi kdy cítil, o čem jsi kdy slyšel nebo se jen pokusil představit. Místo, kde modlitby zůstávají nevyslyšeny, padajíce jako kameny na zemi... podivně zbarvené blesky poletující po něčem, co kdysi bývalo oblohou, co se ale teď vaří pod tvýma nohama a řve, když se o to náhodou otřeš...~ */
  IF ~~ THEN REPLY #33102 /* ~Pokračuj ve vzpomínce...~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #33037 /* ~Utíkáš v čele velké skupiny lidí, procházíte temnými kaňony, kde se stěny otřásají, jako by v rytmu tepajícího srdce, na sobě máš pouze svou krev. Nakonec stojíš na místě, kde se popelnatě šedý terén plazí jako klubko hadů, otáčí se kolem tvých kotníků a šeptá tvé zlo zemi. Pochoduješ do nekonečna, tiše, skrze tuto barevnou zemi, kde to vypadá, že únava *žije* a honí tě jako stín po pláních, bičujíc tě zoufalstvím...~ */
  IF ~~ THEN REPLY #33112 /* ~Pokračuj ve vzpomínce...~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #33039 /* ~Za čas ty a otrhaní muži, kteří tě následují, narazíte na čarodějnici, sedící na hromadě gigantických svíjejících se larev, která rýpe do jedné ze slizkých věcí zlomeným drápem. Ukazuješ jednomu muži, ať jde k ní a promluví s ní, skřípavý hlas čarodějnice se nese k tvým uším...~ */
  IF ~~ THEN REPLY #33113 /* ~Pokračuj ve vzpomínce...~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #33056 /* ~"Promluvím si s ním," řekla, pak se zachichotala. Její oči zazářily, když ti ukázala na muže. "Ten hezkej, kerej vede tvoji otrhanou skupinku. S tím si promluvím.." a to je vše, co si pamatuješ.~ */
  IF ~~ THEN GOTO 64
END

IF ~  True()
~ THEN BEGIN 69 // from:
  SAY #33057 /* ~Dřepící shrbený starý muž má stále ještě široká ramena a zjizvené, mozolnaté ruce dělníka nebo válečníka. Vypadá to, jakoby se kolem něj vznášela aura zoufalství. Vypadá to, že právě přednáší.~ */
  IF ~  Global("Ghysis","GLOBAL",0)
~ THEN REPLY #33114 /* ~Zůstaň na lekci.~ */ DO ~SetGlobal("Ghysis","GLOBAL",1)
SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~  GlobalGT("Ghysis","GLOBAL",0)
~ THEN REPLY #33115 /* ~Zůstaň na lekci.~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #49551 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 11.1 31.3 60.2
  SAY #33059 /* ~Ghysisova tvář se zkroutila. "Odpal! O tomhle už s tebou nepromluvím ani slovo!"~ */
  IF ~~ THEN REPLY #49554 /* ~"Tak mi teda dovol zeptat se na něco jiného..."~ */ GOTO 11
  IF ~~ THEN REPLY #49555 /* ~"V tom případě už nemám žádné otázky."~ */ GOTO 9
END

IF ~~ THEN BEGIN 71 // from:
  SAY #33060 /* ~[bez textu]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #33061 /* ~[bez textu]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #33062 /* ~[bez textu]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 62.0
  SAY #33063 /* ~Mužova tvář zrudla vztekem. "Hlídej si hubu, kámo! To je lež! Hnusná, odporná lež! Seš *bláznivej*, povídáš si s fiendem o Válce a věříš mu každé slovo?!?"~ */
  IF ~~ THEN REPLY #33124 /* ~"To mi řekla. A já netvrdím, že tomu věřím."~ */ GOTO 75
  IF ~~ THEN REPLY #33125 /* ~"Co se tedy stalo?"~ */ GOTO 75
  IF ~~ THEN REPLY #33126 /* ~"Zapomeň, že jsem se o tom zmínil. Mám jiné otázky..."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #49566 /* ~"Zapomeň na to. Už nemám další otázky."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #33064 /* ~"Povím ti, co se stalo, vole!" Povzdychl si a trochu se zklidnil. "Byl sem jeden z Jednotky Zářivýho obrazu... a část z ní bylo původně padesát tři smrtelnejch žoldáků, i když nás přežilo akorát devět. Byli sme utáboření v Avernu a čekali sme na posily pro další bitvu..."~ */
  IF ~~ THEN REPLY #33127 /* ~"Pokračuj..."~ */ GOTO 76
  IF ~~ THEN REPLY #33128 /* ~"Vlastně teď nemám čas, poslechnu si zbytek někdy jindy."~ */ GOTO 9
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #33065 /* ~"No, moje služba už byla skoro vodkroucená... vlastně jsem měl po tý bitvě odejít. Problém byl, že kdybych tam zemřel, patřil bych jim už navždy - v mým srdci bylo moc černoty, až moc zla. Skončil bych jako žadatel v Baatoru, věčný voják Války." Při tom pomyšlení se otřásl.~ */
  IF ~~ THEN REPLY #33129 /* ~"Co se stalo?"~ */ GOTO 77
  IF ~~ THEN REPLY #33130 /* ~"Vlastně teď nemám čas, poslechnu si zbytek někdy jindy."~ */ GOTO 9
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #33066 /* ~"Já a další dva kluci sme zdrhli jako psi, to se stalo. Pár dnů sme pobíhali po Sféře, než sme dorazili k velkýmu pilíři z živejch hlav... děsivej pohled... něco nám breptaly a syčely na nás, volaly, ať prej dem blíž. Tu noc sem se vodkrad vod vostatních a šel sem blíž, promluvit si s nima.""~ */
  IF ~~ THEN REPLY #33131 /* ~"A...?"~ */ GOTO 78
  IF ~~ THEN REPLY #33132 /* ~"Vlastně teď nemám čas, poslechnu si zbytek někdy jindy."~ */ GOTO 9
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #33067 /* ~Ghysis zavřel oči a přetřel si spánky. "Já... zeptal jsem se pilíře, jak bych se mohl uvolnil, jak utýct z Baatoru... a on mi to prozradil... výměnou za mý dva bratry." Je chvíli zticha, ohryzává si klouby, jak zápasí se slzami. "Pro mě... tenkrát... to byla zkrátka... jediná možnost."~ */
  IF ~~ THEN REPLY #33133 /* ~"Pořád mi to připadá, jako bys je zavraždil."~ */ GOTO 80
  IF ~~ THEN REPLY #33134 /* ~"Musel ses rozhodnout, bylo to děsivé."~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",2)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #33068 /* ~Přikývl. "Nejsem si jistý, jestli si někdy odpustím. Teď už jsem jenom voják, který si hledá místo, kde umře. Musím se vočistit vod tý zlý skrvny, vočistit vnitřního Ghysise, jinak se vrátím do Války Krve. Přednáším tady, abych od ní udržel lidi dál, aby si nemuseli vybírat tak, jako jsem to musel udělat já."~ */
  IF ~~ THEN REPLY #33136 /* ~"Aha... ale mě to stále zní, jako bys ty dva zavraždil."~ */ GOTO 80
  IF ~~ THEN REPLY #33137 /* ~"Rozumím, Ghysisi."~ */ GOTO 9
END

IF ~~ THEN BEGIN 80 // from: 78.0 79.0
  SAY #33069 /* ~Přikývl. "Nejsem si jistý, jestli si někdy odpustím. Teď už jsem jenom voják, který si hledá místo, kde umře. Musím se vočistit vod tý zlý skrvny, vočistit vnitřního Ghysise, jinak se vrátím do Války Krve. Přednáším tady, abych od ní udržel lidi dál, aby si nemuseli vybírat tak, jako jsem to musel udělat já."~ */
  IF ~~ THEN REPLY #33138 /* ~"Možná bych se o tom měl zmínit po okolí, Ghysisi - jsem si jistý, že lidi budou nadšeni, když se dozví, jak jsi *přesně* vyklouznul z Války Krve."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_1","GLOBALGood",-1)
~ GOTO 81
  IF ~~ THEN REPLY #33139 /* ~"To je fajn."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #33070 /* ~"Neříkám, že to bylo správný, ale nemůžeš popřít, že to bylo to, co sem udělat musel. já tomu říkám *přežití*, ne vražda... a teď mě nechej. Starej Ghysis už se s *tebou* dál bavit nebude.~ */
  IF ~~ THEN REPLY #33140 /* ~"Mám ti to hláskovat, dědku? Je to vydírání. Za své mlčení si vezmu něco cenného."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_2","GLOBALGood",-1)
~ GOTO 82
  IF ~~ THEN REPLY #33141 /* ~"Nic... zapomeň, že jsem něco řekl."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #33071 /* ~Ghysis se zašklebil a zavrtěl hlavou. "Seš... seš vodpornej, vole. Na, vem si, co mám, je to tvý... hlavně drž hubu. Ale mám takovej pocit, že jestli skončím zpátky ve Válce Krve, že vím, kdo tam se mnou bude bojovat bok po boku..." Podal ti několik mincí a pár dalších předmětů.~ */
  IF ~~ THEN REPLY #33142 /* ~"Nestane se to, Ghysisi. Prozatím. A teď dokonči přednášku."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
GivePartyGold(200)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("BloodFly",Protagonist,1,0,0)
~ GOTO 9
END
