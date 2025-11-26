// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25842 /* ~Na této velmi dobře oblečené ženě je jasně vidět, že někam spěchá.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #25843 /* ~"Zdravím..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #25938 /* ~"Zdravím..."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 26
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #25939 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #25940 /* ~Nechej ji být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #25844 /* ~Zastavila se a koukla na tebe. Rozhlédla se kolem sebe, zda jsi nevolal na někoho jiného, pak se pousmála. "Promiň, ale... znám tě?"~ */
  IF ~~ THEN REPLY #25845 /* ~"Ne, ale chtěl bych se na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #25926 /* ~"Nějaký problém s tím, jak vypadám?"~ */ GOTO 23
  IF ~~ THEN REPLY #25930 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0 26.3 29.0 30.2 31.0
  SAY #25846 /* ~"Někam jdu, pane - a mám  na to hodně málo času." Udělala krok od tebe. "Takže, když se neurazíš..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25847 /* ~"Jen jednu otázku, dobře?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25920 /* ~"Jenom jednu otázku, dobře?"~ */ GOTO 20
  IF ~~ THEN REPLY #25924 /* ~"To by mi *vadilo*. A teď odpověz na mé otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #25925 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25848 /* ~Kousla se do rtu, pak přikývla. "Dobře. Ale ptej se rychle... čas jsou peníze!"~ */
  IF ~~ THEN REPLY #25849 /* ~"Co je tohle za místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #25864 /* ~"Je zde něco zajímavého?"~ */ GOTO 8
  IF ~~ THEN REPLY #25871 /* ~"Kde tady můžu najít práci?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25876 /* ~"Jen potřebuju poradit směr..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25911 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 21
  IF ~~ THEN REPLY #25919 /* ~"No nic, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25850 /* ~ Překvapeně se na tebe podívala. "Toto je Úřednická čtvrť, pane. Ztratil ses? Nic si z toho nedělej. Teď musím jít! Sbohem..."~ */
  IF ~~ THEN REPLY #25851 /* ~"Počkej... mám další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #25863 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25852 /* ~"Jedna otázka bylo to, s čím jsem souhlasila, pane - budeš tak laskav a čestný a necháš mě pokračovat v cestě, nebo ne? Možná v pouličních kavárnách najdeš někoho, kdo bude mít na tebe více času."~ */
  IF ~~ THEN REPLY #25853 /* ~"Stůj. Zůstaneš tady a odpovíš na moje otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #25862 /* ~"Sbohem, později."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25854 /* ~Přimhouřila oči. "Tvé hrubé chování a hrůzné vzezření ti možná pomáhá tam odkud jsi, ale my v této části Sigilu máme zákony. Nyní odejdi, 'pane', dřív než mě donutíš zavolat pomoc!"~ */
  IF ~~ THEN REPLY #25855 /* ~"Pochybuji, že někdo přijde včas aby tě zachránil."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25859 /* ~"Nikoho nezavoláš, víš-li co je pro tebe dobrý."~ */ GOTO 7
  IF ~~ THEN REPLY #25860 /* ~"Omlouvám se. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #25861 /* ~"Sbohem, později." ~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25856 /* ~ Tak hlasitě, jak dokázala, začala křičet o pomoc: "Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #25857 /* ~Zaútoč na ni.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25858 /* ~Zkus odejít, než kdokoliv přijde.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25865 /* ~"Mnoho, pane! A speciálně tady, v této části Úřednické čtvrti, kde je Městská hala. A také Galerie umění a kuriozit."~ */
  IF ~~ THEN REPLY #25866 /* ~"Ještě něco?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25867 /* ~Zamyslela se. "No, dobře. Je tu krejčí Goncalves, lékárna, advokátův dům a Nevěstinec duševních rozkoší.' Jo a katakomby přímo pod čtvrtí. A ještě ten zvláštní, malý obchod s kuriozitami."~ */
  IF ~~ THEN REPLY #25868 /* ~"Měl bych otázku o jednom zmiňovaném místě ..."~ */ GOTO 5
  IF ~~ THEN REPLY #25869 /* ~"Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25870 /* ~"Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25872 /* ~Zamyslela se. "Můžeš zkusit Radnici... možná budou mít co ti nabídnout. Taky bys mohl zkusit advokáta nebo možná lékárnu. Ted už ale musím jít... Sbohem."~ */
  IF ~~ THEN REPLY #25873 /* ~"Měl bych otázku o jednom zmiňovaném místě ..."~ */ GOTO 5
  IF ~~ THEN REPLY #25874 /* ~"Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25875 /* ~"Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25877 /* ~"Co se snažíš najít, pane?"~ */
  IF ~~ THEN REPLY #25878 /* ~"Advokátův dům."~ */ GOTO 12
  IF ~~ THEN REPLY #25882 /* ~"Lékárna."~ */ GOTO 13
  IF ~~ THEN REPLY #25886 /* ~"Sklad umění."~ */ GOTO 14
  IF ~~ THEN REPLY #25890 /* ~"Nevěstinec."~ */ GOTO 15
  IF ~~ THEN REPLY #25894 /* ~"Katakomby pod čtvrtí."~ */ GOTO 16
  IF ~~ THEN REPLY #25898 /* ~"Městská hala."~ */ GOTO 17
  IF ~~ THEN REPLY #25902 /* ~"Obchod s kuriozitami."~ */ GOTO 18
  IF ~~ THEN REPLY #25906 /* ~"Krejčí."~ */ GOTO 19
  IF ~~ THEN REPLY #25910 /* ~"No nic, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25879 /* ~ "Dům Iannise je jižně od brány do Dolní čtvrti - tam, kudy jsi sem poprvé nejspíš přišel. Měl by být na východní straně cesty."~ */
  IF ~~ THEN REPLY #25880 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25881 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25883 /* ~"Jdi po cestě, co vede východně od brány do Dolní čtvrti - je to tam, kudy jsi sem poprvé nejspíš přišel. Když cesta zatočí severovýchodně a jihovýchodně, běžte do jižní čtvrti... najdeš ho tam, západně od cesty. Je otočený do jižní čtvrti, poznáte ho podle tří oken z barevného skla."~ */
  IF ~~ THEN REPLY #25884 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25885 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25887 /* ~"Jdi po cestě, co vede východně od brány do Dolní čtvrti - je to tam, kudy jsi sem poprvé přišel, aspoň doufám. Když cesta zatočí severovýchodně a jihovýchodně, běž do jižní čtvrti... najdeš ho tam, západně od cesty. Je otočený do jižní čtvrti a má střechu, jejíž tašky jsou podepřeny velkými kameny."~ */
  IF ~~ THEN REPLY #25888 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25889 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25891 /* ~Zamračila se na tebe, kroutíce hlavou. "Je to prostě východně od brány do Dolní čtvrti - tam, kudy jsi sem poprvé nejspíš přišel. Je to velká, kruhová budova se vstupem otočeným k jižní čtvrti."~ */
  IF ~~ THEN REPLY #25892 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25893 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25895 /* ~Zamračila se.  "Jsou tyto vstupy stále otevřeny? Jestli ano, jsou jistě hlídané... o těchto katakombách se povídá, že jsou dost nebezpečné. Ale nejsem si jistá, jak se tam dostat, pane."~ */
  IF ~~ THEN REPLY #25896 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25897 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25899 /* ~"Najít Městskou halu je velice jednoduché, pane. 'Je to ta masivní stavba v severovýchodní části této oblasti."~ */
  IF ~~ THEN REPLY #25900 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25901 /* ~"Aha. Díky za tvůj čas. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25903 /* ~"Je to v jihovýchodní části. Zvláštní budova,  má takové široké schody... Já tam nikdy nebyla... Mám z toho místa takový divný, nepříjemný pocit."~ */
  IF ~~ THEN REPLY #25904 /* ~"Díky. Ještě se tě chci zeptat na něco dalšího..."~ */ GOTO 5
  IF ~~ THEN REPLY #25905 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25907 /* ~"Krejčího najdeš severovýchodně od Dolní čtvrti - tudy ses sem nejspíš dostal. Je to velká budova, přední dveře vedou na jih."~ */
  IF ~~ THEN REPLY #25908 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25909 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25912 /* ~Potřásla hlavou. "Je mi líto... možná najdeš někoho, kdo má více času v některé kavárně, pane. A teď, na shledanou..."~ */
  IF ~~ THEN REPLY #25913 /* ~"Stůj. Zůstaneš tady a odpovíš na mé otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #25917 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25914 /* ~"Ravel Noční čarodějnice? Jako dítěti mi o ní rodiče vyprávěli příběhy... strašidelné příběhy."~ */
  IF ~~ THEN REPLY #25915 /* ~"Pohádky?"~ */ GOTO 22
  IF ~~ THEN REPLY #25916 /* ~"Aha. Ještě bych se chtěl zeptat na něco dalšího..."~ */ GOTO 5
  IF ~~ THEN REPLY #25918 /* ~"Díky, to je všechno, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25921 /* ~Přikývla. "Ano. O čarodějnici s černým srdcem, která chtěla zlomit Sigil. Říkali mi, že si pro mě přijde, jestli budu hlasitě křičet, a vezme mě s sebou na to hrozné místo, kam ji zahnali." Najednou se zamračila. "Opravdu bych měla raději jít, pane... Sbohem"~ */
  IF ~~ THEN REPLY #25922 /* ~"Počkej. Mám další otázku..."~ */ GOTO 5
  IF ~~ THEN REPLY #25923 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1 26.4
  SAY #25927 /* ~"Ne, ne... ani v nejmenším!" Žena se nervózně zasmála. "No, možná..." ¨Kývla hlavou na tvé zjizvené, nahé torzo. "*Máš* trochu... ach... 'divočejší vzezření,' než typický obyvatel Čtvrti, ne? Prosím, neber to jako urážku, pane."~ */
  IF ~~ THEN REPLY #25928 /* ~"Neurazila jsi mě. A teď mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #25929 /* ~"Už od tebe nic víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25932 /* ~Žena zdvořile kývla na pozdrav. "Buď pozdraven a nashledanou. Pokud mě omluvíš, pane, tak trochu spěchám."~ */
  IF ~~ THEN REPLY #25933 /* ~"Počkej. Mám nějaké otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #25937 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25934 /* ~"Jak jsem už řekla, pane, strašně spěchám. Možná najdete někoho, kdo má více času než já, v některé kavárně na ulici. A teď sbohem..."~ */
  IF ~~ THEN REPLY #25935 /* ~"Stůj. Zůstaneš tady a odpovíš na mé otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #25936 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 0.1
  SAY #25941 /* ~Zarazila se a podívala se na tebe, oči se jí na chvíli rozšířily. Rozhlédla se kolem sebe, jestli jsi náhodou nevolal na někoho jiného,  pak se neklidně usmála. "Promiň, ale já tě-" Najednou se její oči zaměřily na Morteho. "Och! Takový roztomilý malý mimir!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #25942 /* ~"Mimir?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 244
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25943 /* ~"Že? Rád se nechává škrábat na lebce.."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25944 /* ~"Nedotýkal bych se ho - kouše."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 248
  IF ~~ THEN REPLY #25945 /* ~"Ano, ano. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #25946 /* ~"Nějaký problém s tím, jak vypadám?"~ */ GOTO 23
  IF ~~ THEN REPLY #25947 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #25948 /* ~Žena se usmála. "To je milé! On mluví sám o sobě!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 245
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #25950 /* ~Zatřásla hlavou. "Ne, žádný, kterého bych viděla. Jsou to jenom věci-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 247
END

IF ~~ THEN BEGIN 29 // from:
  SAY #25952 /* ~Žena pokrčila rameny. "To je určitě může být."~ */
  IF ~~ THEN REPLY #25953 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #25954 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1
  SAY #25955 /* ~"Vážně?" Stále se usmívá, ale tváří se podezřívavě. "Určitě si děláš legraci, pane! Je to jenom mimir..."~ */
  IF ~~ THEN REPLY #25956 /* ~"Co tím myslíš? Co pak to nemají rádi všichni?"~ */ GOTO 28
  IF ~~ THEN REPLY #25957 /* ~"Ne, mluvím pravdu. Zkus to."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #25958 /* ~"Nevšímej si ho. Mám nějaké otázku..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #25959 /* ~Natáhla ruku a opatrně poplácala Morteho... který se okamžitě začal třít o její ruku, divoce se šklebit a přitom na tebe mrkal. Nervózně se zasmála. "To je divné..."~ */
  IF ~~ THEN REPLY #25960 /* ~"Ano. No, já mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #25961 /* ~"Není to vše? Sbohem."~ */ EXIT
END
