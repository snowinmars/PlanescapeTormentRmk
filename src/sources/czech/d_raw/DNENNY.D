// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DNENNY~

IF ~  Global("Nenny","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2964 /* ~Útlá, velice atraktivní mladá žena se blaženě usmívá a něco brouká. Její široké, světle modré oči jakoby pohlcovaly vše, na co se podívá.~ */
  IF ~~ THEN REPLY #2965 /* ~"Zdravím..."~ */ DO ~SetGlobal("Nenny","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #39865 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39866 /* ~Usmívající se mladá žena se před tebou uctivě poklonila a poté opět vzhlédla. "Přeji krásný den, dobrý pane! Já jsem Nenny! Jakpak se máš v tento krásný d-?" Náhle si povšimla tvých jizev a udiveně si položila ruku před ústa. "Božínku! Jsi zraněný!" Prohlédla si tě. "Snad všude!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 421
  IF ~  !NearbyDialog("DMorte")
HPPercent(Protagonist,100)
~ THEN REPLY #39867 /* ~"Jsou to staré jizvy. Jsem v pořádku."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentGT(Protagonist,49)
~ THEN REPLY #39868 /* ~"Jen tak lehce; za chvilku budu zase jako rybička."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentLT(Protagonist,50)
~ THEN REPLY #39869 /* ~"Ano, ale ta zranění se brzy zahojí."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39870 /* ~"Nevšímej si toho. Měl bych pár otázek..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39871 /* ~"O mě se neboj. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #39872 /* ~Tiše kývla a opět stáhla ruku.~ */
  IF ~~ THEN REPLY #39873 /* ~"Měl bych pár dotazů..."~ */ GOTO 5
  IF ~~ THEN REPLY #39874 /* ~"Už asi půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 4.0 7.1 9.2 10.2 11.3 12.2 13.3 14.2 15.1 18.0 19.2 21.0 21.1 22.3 23.1 24.3 25.2 26.0 27.0 28.0 29.1 30.0 31.0 32.0 33.1 35.1 36.1 37.1 38.1 47.0 52.0 53.0 54.0 55.0
  SAY #39875 /* ~"Prosím, ptej se!" Mile se usmívá.~ */
  IF ~~ THEN REPLY #39876 /* ~"Co tady vlastně děláš?"~ */ GOTO 32
  IF ~~ THEN REPLY #39877 /* ~"Můžeš mi povědět něco o tomto místě?"~ */ GOTO 33
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39878 /* ~"Co mi můžeš říct o tiché nevěstce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 31
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67847 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 31
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39879 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ JOURNAL #66743 /* ~Zeptal jsem se jedné z prostitutek, jestli neví, zda je Kesai-Serris opravdu Ravelina dcera. Prostitutka mi navrhla, ať se zeptám Juliette. Prý byly dobré přítelkyně, než Juliette potkala Montagua.~ */ GOTO 30
  IF ~  Global("Nenny_Hint2","AR0605",2)
~ THEN REPLY #39880 /* ~"Kimasxi prý mizí věci z jejího pokoje. Neviděla si něco podezdřelého?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",3)
~ JOURNAL #39526 /* ~Nenny mi pověděla, že viděla nějakého muže plížit se z pokoje Kimasxi Zmijíjazyk, ale nevšimla si, že by opustil Nevěstinec. Jestliže to byl ten zloděj, může tu snad ještě být?~ */ GOTO 54
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39881 /* ~"Snažím se najít Vivianinu voňavku... nevíš, kde by mohla být?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint","AR0605",0)
Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39882 /* ~"Snažím se najít Vivianinu voňavku... nevíš, kde by mohla být?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",1)
~ JOURNAL #39525 /* ~Nenny mi pověděla, že spatřila Marissu plížit se z Vivianina pokoje... možná že ona vzala Vivianin parfém, a jestli ne, tak by alespoň mohla tušit, kde ho najít.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39883 /* ~"Snažím se najít Marissin Karmínový závoj... nevíš, kde by mohl být?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint2","AR0605",0)
Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39884 /* ~"Snažím se najít Marissin Karmínový závoj... nevíš, kde by mohl být?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",1)
~ JOURNAL #39524 /* ~Nenny my řekla, že viděla Kimasxi Zmijíjazyk plížit se z Marissina pokoje... možná že ona vzala Marisse její Karmínový závoj a jestli ne, tak by alespoň mohla tušit, kde ho najít.~ */ GOTO 53
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39885 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~Zeptal jsem se jedné z protitutek na Ravel a ona mi řekla, ať si o ní promluvím s Yves. Yves prý sbírá nejrůznější příběhy, a pravděpodobně ve svém repertoáru bude mít i nějaký o Ravel.~ */ GOTO 4
  IF ~~ THEN REPLY #39886 /* ~"Vlastně už nic nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.10
  SAY #39887 /* ~"Kdepak, je mi líto. Ale je to opravdu *velké* jméno, co? Vsadila bych se, že Ravel musí být opravdu zajímavá osoba! Vlastně... měl by ses na ní poptat u Yves. Yves sbírá rozličné příběhy!"~ */
  IF ~~ THEN REPLY #39888 /* ~"Když myslíš. Teď bych se tě chtěl na něco zeptat..."~ */ GOTO 3
  IF ~~ THEN REPLY #39889 /* ~"Tak to je prozatím vše. Sbohem, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #39890 /* ~"He?" Zdá se, že nemůže odtrhnout oči od tvých jizev. "Jak já se stydím! Prosím omluv mé neslušné civění. Jmenuji se Nenny," Mírně se poklonila. "A je mi velkým potěšením přivítat tě v Nevěstinci duševních rozkoší." Už opět zírá na tvé tělo. "Vždyť pod těmi jizvami máš tetování! Co znamená třeba tohle?" Ukázala na jedno z tvých tetování.~ */
  IF ~~ THEN REPLY #39891 /* ~"Tak tohle zrovna -"~ */ GOTO 6
  IF ~~ THEN REPLY #39892 /* ~"Ale nic, já -"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #39893 /* ~"Vypadá to úžasně! Podívej na ty tahy inkoustem... teda myslím, že je to inkoust..." Prohlédla si tetování a poté vztáhla ruku, aby se ho dotkla.~ */
  IF ~~ THEN REPLY #39894 /* ~Nechej ji dotknout se.~ */ GOTO 7
  IF ~~ THEN REPLY #39895 /* ~Nenechej ji dotknout se.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39896 /* ~"Myslím, že to bude inkoust." Přejela prstem po hraně tetování. "Je to tak? Páni a ten vzor! Koukni, jak se tady protínají ty čáry." Dotkla se středu tetování. "To je prostě úžasné..." Sešpulila rty a zamračila se zklamáním. "Mohla bych to udělat lépe, kdyby tu nebylo tolik jizev..."~ */
  IF ~~ THEN REPLY #39897 /* ~"S těmi jizvami nic nenadělám; jsou trvalé."~ */ GOTO 10
  IF ~~ THEN REPLY #39898 /* ~"Měl bych pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #39899 /* ~"Už nejspíš půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #39900 /* ~Nenny vzhlédla, když jsi jí zabránil dotknou se tvé kůže. "Promiň, promiň, dobrý pane! Neber si to zle, jenom jsem chtěla prozkoumat tetování a poznat jeho vzorek. Je to tak fascinující!" Sešpulila rty a pak lehce zatřásla hlavou. "Tak drzá! Jsem tak drzá! Moc se omlouvám, dobrý pane! Prosím neurážej se!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 422
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39901 /* ~"Žádný problém."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39902 /* ~"Dohlédni, aby se to nestalo znovu."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.2
  SAY #39903 /* ~Nenny přikývla a potom se na tebe sladce usmála. "Promiň, promiň... ale *musím* vědět... máš absolutní *jistotu*, že jsi v pořádku? Vidím, že ti něco je, a nemohu ti pomoci, ale doufám, že tě *něco* nebolí."~ */
  IF ~~ THEN REPLY #39904 /* ~"Není to nic tělesného."~ */ GOTO 11
  IF ~~ THEN REPLY #39905 /* ~"Mám amnesii, ale to je všechno."~ */ GOTO 20
  IF ~~ THEN REPLY #39906 /* ~"Zapomeň na to. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39907 /* ~"Nedělej si starosti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #39908 /* ~"Oh, promiň, promiň... vůbec jsem se neměla zmiňovat!" Shrbila se. "Ale *musím* vědět... máš absolutní *jistotu*, že jsi v pořádku? Vidím, že ti něco je a nemohu ti pomoci, ale doufám, že tě *něco* nebolí."~ */
  IF ~~ THEN REPLY #39909 /* ~"Není to nic tělesného."~ */ GOTO 11
  IF ~~ THEN REPLY #39910 /* ~"Mám amnesii a to je všechno."~ */ GOTO 20
  IF ~~ THEN REPLY #39911 /* ~"Zapomeň na to. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39912 /* ~"Nedělej si starosti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #39913 /* ~"Oh! Máš vnitřní zranění? V hlavě?" Dychtivě tleskla rukama. "Asi ti mohu pomoci! Vlastně vím, že můžu! Část tréninku Vnímavých je učení, jak vytáhnout bolest z jiných ... moje paní řekla, že Vnímaví mohou vytáhnout bolest z rány a přenést ji na sebe... ale dost řečí, *mohu* pomoci! Smím to zkusit?! Prosím, řekni ano!"~ */
  IF ~~ THEN REPLY #39914 /* ~"Vnímaví?"~ */ GOTO 26
  IF ~~ THEN REPLY #39915 /* ~"Ano, buď tak hodná, prosím."~ */ GOTO 16
  IF ~~ THEN REPLY #39916 /* ~"Tvoje paní?"~ */ GOTO 12
  IF ~~ THEN REPLY #39917 /* ~"Ne. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39918 /* ~"Ne. Nic mě nebolí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #39919 /* ~"Oh, ano," Řekla Nenny živě. "paní Grace. Je ta nejlepší bytost, jakou jsem kdy poznala!"~ */
  IF ~~ THEN REPLY #39920 /* ~"Řekni mi o paní Grace."~ */ GOTO 13
  IF ~~ THEN REPLY #39921 /* ~"Rozumím. Pojďme tedy na to."~ */ GOTO 16
  IF ~~ THEN REPLY #39922 /* ~"Skutečně nepotřebuji tvou pomoc, ale mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39923 /* ~"Vím. Ale vážně nepotřebuji tvou pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #39924 /* ~"Je tak krásná, co myslíš? Je těžké uvěřit že je z Nižších Sfér, je tak hezká a elegantní!"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 14
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39925 /* ~"Co s tím mají Nižší sféry společného?"~ */ GOTO 15
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39926 /* ~"Rozumím. Pojďme tedy na to."~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39927 /* ~"Skutečně nepotřebuji tvou pomoc, ale mám nějaké otázky..."~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39928 /* ~"Vím. Ale vážně nepotřebuji tvou pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39929 /* ~Nenny náhle zpozorovala Fall-From-Grace vedle tebe. "Ó! Paní Grace!" uklání se; Grace odpovídá kývnutím a s úsměvem.~ */
  IF ~~ THEN REPLY #39930 /* ~"Co s tím vším mají Nižší Sféry společného?"~ */ GOTO 15
  IF ~~ THEN REPLY #39931 /* ~"Rozumím. Tak jdeme na to; pokus se mi pomoct."~ */ GOTO 16
  IF ~~ THEN REPLY #39932 /* ~"Já opravdu nepotřebuji tvou pomoc, spíš bych měl nějaký dotaz..."~ */ GOTO 3
  IF ~~ THEN REPLY #39933 /* ~"Aha. Ale stejně nepotřebuji tvou pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #39934 /* ~"Oni dole jsou všichni tak *zlí*. Kdo by si pomyslil, že paní Grace by mohla pocházet z takového místa?"~ */
  IF ~~ THEN REPLY #39935 /* ~"Rozumím. Tak jdeme na to; pokus se mi pomoct."~ */ GOTO 16
  IF ~~ THEN REPLY #39936 /* ~"Já opravdu nepotřebuji tvou pomoc, spíš bych měl nějaký dotaz..."~ */ GOTO 3
  IF ~~ THEN REPLY #39937 /* ~"Aha. Ale stejně nepotřebuji tvou pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 12.1 13.2 14.1 15.0
  SAY #39938 /* ~Nenny sepne své ruce a lehce je pokládá na tvé čelo.~ */
  IF ~  HPPercent(Protagonist,100)
~ THEN REPLY #39939 /* ~Dovol jí dotknout se Tě.~ */ GOTO 17
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #39940 /* ~Dovol jí dotknout se Tě.~ */ DO ~Damage(Protagonist,RAISE,1)
~ GOTO 17
  IF ~~ THEN REPLY #39941 /* ~Nedovol jí dotknout se Tě.~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 19.1 29.0
  SAY #39942 /* ~Jak stojí Nenny poblíž, cítíš, že její kůže lehce voní šeříkem. Pokládá své ruce jemně na tvé čelo a zavírá oči. Něco si mumlá pro sebe a ty cítíš, jak tvým tělem prochází příjemné teplo. ~ */
  IF ~~ THEN REPLY #39943 /* ~"Ó... díky. Ten pocit byl pěkný."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39944 /* ~"Jistě! Jsem moc ráda, že ti můžu pomoci!" Nenny září a vypadá, jako by měla puknout radostí.~ */
  IF ~~ THEN REPLY #39945 /* ~"Měl bych dotaz..."~ */ GOTO 3
  IF ~~ THEN REPLY #39946 /* ~"Teď už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #39947 /* ~Nenny začíná mrazit, vypadáš překvapeně, když tě to zabolí. "Omlouvám se! Promiň! Nelíbí se ti ten dotyk? Měla jsem ti to říct! Takhle pracuje Sensorický dotyk... umístím své ruce na tvé tělo - obvykle blízko nějakého zranění, abych mohla soustředit sílu - a pak vysaju tvou bolest ven."~ */
  IF ~~ THEN REPLY #39948 /* ~"Sensorický dotyk...?"~ */ GOTO 29
  IF ~~ THEN REPLY #39949 /* ~"Dobře. Tak tedy potom jdeme na to."~ */ GOTO 17
  IF ~~ THEN REPLY #39950 /* ~"Měl bych dotaz..."~ */ GOTO 3
  IF ~~ THEN REPLY #39951 /* ~"Teď už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.1 10.1
  SAY #39952 /* ~"Amnesie?" Nenny zamrká a pak se rozzáří. "Ztráta paměti! Jsi *tak* šťastný," domýšlivě prohodila. "Všechno musí být pro Tebe tak *nové*."~ */
  IF ~~ THEN REPLY #39953 /* ~"Jo to je pravda, ale nováčci jsou... nevítaní."~ */ GOTO 21
  IF ~~ THEN REPLY #39954 /* ~"Trošku mě to zajímá."~ */ GOTO 22
  IF ~~ THEN REPLY #39955 /* ~"Tak... o tomhle pohledu na věc jsem ještě neuvažoval."~ */ GOTO 23
  IF ~~ THEN REPLY #39956 /* ~"Dal bych přednost věcem, které jsou více běžné."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #39957 /* ~Zamrká. "To zní tak *smutně.*"~ */
  IF ~~ THEN REPLY #39958 /* ~"Ano, to teda jo... ale měl bych nějaký dotaz..."~ */ GOTO 3
  IF ~~ THEN REPLY #39959 /* ~"Ne doopravdy. Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39960 /* ~"Možná... v jiném případě, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #39961 /* ~"Vážně? Proč?"~ */
  IF ~~ THEN REPLY #39962 /* ~"Protože nemohu. Jak může jeden opsat své pocity?"~ */ GOTO 25
  IF ~~ THEN REPLY #39963 /* ~"Nemám rád ztráty paměti a smrt není příjemná zkušenost."~ */ GOTO 28
  IF ~~ THEN REPLY #39964 /* ~"Bez základu na kterém bych mohl stavět - třeba kdo jsem - nemohu pokračovat."~ */ GOTO 28
  IF ~~ THEN REPLY #39965 /* ~"Tak... zapomeň na to. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39966 /* ~"Nechci se o tom víc bavit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #39967 /* ~Nenny potěšena tleskla rukama. "Jsem tak ráda, že jsem tě mohla přivést na tuhle myšlenku! Slyšela jsem, že všechno co se týká Vnímavých se týká... přenášení nových zkušeností jiným."~ */
  IF ~~ THEN REPLY #39968 /* ~"Vnímavý?"~ */ GOTO 26
  IF ~~ THEN REPLY #39969 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39970 /* ~"Opustím tě, prozatím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY #39971 /* ~"Jak kdo?" smála se, potom se uchichtla. "Myslím, jako co?"~ */
  IF ~  GlobalGT("Know_Player_Killer","GLOBAL",0)
~ THEN REPLY #39972 /* ~"Můj vrah, například."~ */ GOTO 28
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #39973 /* ~"Morte ne. Je příliš důvěryhodný."~ */ EXTERN ~DMORTE~ 424
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #39974 /* ~"Rád bych věděl, zda jsem předtím znal někoho z mé družiny."~ */ GOTO 28
  IF ~~ THEN REPLY #39975 /* ~"Tak... zapomeň na to. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39976 /* ~"Nechci se o tom déle bavit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #39977 /* ~"Oh, zkusím to ještě jednou!" Říká Nenny rozjařeně. "No tak! Pojďme na to, vím, že můžeš."~ */
  IF ~~ THEN REPLY #39978 /* ~"Nemám rád ztráty paměti a smrt není příjemná zkušenost."~ */ GOTO 28
  IF ~~ THEN REPLY #39979 /* ~"Bez základu na kterém bych mohl stavět - třeba kdo jsem - nemohu pokračovat."~ */ GOTO 28
  IF ~~ THEN REPLY #39980 /* ~"Tak... zapomeň na to. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39981 /* ~"Nechci se o tom déle bavit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 11.0 23.0
  SAY #39982 /* ~"Vnímaví! Oh, jsou to takoví *snílci*. Věří, že dosáhnou pochopení mnohovesmíru jenom prostřednictvím zkušeností! Okus toto, poslouchej tohle, cítíš toto, podívej se na tohle... a je tu toho *tolik*, je to *také* velké místo, někdy je to těžké pochopit."~ */
  IF ~~ THEN REPLY #39983 /* ~"Mám nějaké další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39984 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #39985 /* ~Nenny se chichotá.~ */
  IF ~~ THEN REPLY #39986 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39987 /* ~"Sbohem, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.1 22.2 24.0 24.2 25.0 25.1
  SAY #39988 /* ~"Huh." Nenny se myšlením objevili na čele vrásky. "Myslím, že to dává smysl. Věřím, že mohu pomoci!"~ */
  IF ~~ THEN REPLY #39989 /* ~"Dobře, *mohla* bys odpovědět na mé otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39990 /* ~"Já také. Sbohem, Nenny..."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.0
  SAY #39991 /* ~"Ano! Všichni Vnímaví to mohou dělat, ale já ještě tak úplně nepatřím mezi Vnímavé, tak v tom nejsem tak dobrá. Když se mi to podaří, mohu přenést zranění z jiného člověka na sebe!"~ */
  IF ~~ THEN REPLY #39992 /* ~"Pojďme na to, tedy."~ */ GOTO 17
  IF ~~ THEN REPLY #39993 /* ~"Mám nějakou otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #39994 /* ~"Prozatím tě opustím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.4
  SAY #39995 /* ~"Promiň. Hmmm. Snad by ses mohl zeptat Juliette. Ona a Kesai bývaly dobré přítelkyně. Potom Juliette poznala Montagueho a teď již spolu tolik nemluví."~ */
  IF ~~ THEN REPLY #39996 /* ~"Mám další otázku, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #39997 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 3.2 3.3
  SAY #39998 /* ~"Oh, Ecco! Ano, nezdá se ti zvláštní, *co* myslíš?! Víš, že ještě nepromluvila ani slovo? Vážně!" Nenny se opřela a začala šeptat. "Myslím si, že byla citově raněna tak zle, že už nemohla nikdy víc mluvit! Sázím se, že o tom Dolora ví, neboť někdy mluví s posledním milencem Eccy, z doby kdy ještě mluvila!"~ */
  IF ~~ THEN REPLY #39999 /* ~"Mám další otázku, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #40000 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.0
  SAY #40001 /* ~"Říkám ti jenom blbosti!" Zachichotala se a šťouchla tě do břicha. "Tak já mluvím ke *všem* svým klientům. Všechny prostitutky to dělají; je to základní myšlenka Nevěstince! Učit se lépe komunikovat s ostatními lidmi, sdílet své zkušenosti a pochopit je."~ */
  IF ~~ THEN REPLY #40002 /* ~"Mám další otázku, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #40003 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.1
  SAY #40004 /* ~"Uch... samozřejmě mohu! Nevěstinec duševních rozkoší je škola, která byla založená paní Fall-from-Grace. Tu se prostitutky - jako například já! - učí hovořit a poznávat lidi, všechno nám to pomáhá pochopit sebe samé i jiné. Miluji to tu... je to tu jak nekonečná vlna zkušeností, která do mě naráží a plní mou hlavu novými krásnými myšlenkami!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 425
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40006 /* ~"Mám další otázku, Nenny..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40007 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 3.6 3.8
  SAY #40008 /* ~"Hmm." Nenny se hluboce zamračeně zahleděla. "Já... uh..."~ */
  IF ~~ THEN REPLY #40009 /* ~"Co?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #40010 /* ~"Ach, já jenom nemohu! Nemohu mluvit zlé věci o jiných! Já to prostě nedokážu!"~ */
  IF ~~ THEN REPLY #40011 /* ~"Není zlé ukázat na zloděje, Nenny."~ */ GOTO 36
  IF ~~ THEN REPLY #40012 /* ~"Zapomeň na to... mám další otázku."~ */ GOTO 3
  IF ~~ THEN REPLY #40013 /* ~"Nevadí, Nenny. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #40014 /* ~"Oh, ale já nevím jestli je zloděj..." Nenny si okusuje ret a dívá se na tebe s prosebnýma očima, jako by chtěla, abys změnil téma hovoru.~ */
  IF ~~ THEN REPLY #40015 /* ~"Podívej, proč se *nepokusíš* říct o něm něco nepěkného?"~ */ GOTO 37
  IF ~~ THEN REPLY #40016 /* ~"Zapomeň na to... mám další otázku."~ */ GOTO 3
  IF ~~ THEN REPLY #40017 /* ~"Nevadí, Nenny. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #40018 /* ~"Ach, dobře tedy." Nenny dala ruky v bok, téměř přehnaně a hluboce se zahleděna na neurčitý bod. Odolával jsi pokušení smát se. "Ooooooh, já ji tak moc *moc* nenávidím." Na chvíli ztichla, potom se na tebe podívala koutkem oka, jako by čekala tvou reakci. "Bylo to přesvědčivé?"~ */
  IF ~~ THEN REPLY #40019 /* ~"Ne, nějak se mi to nezdálo..."~ */ GOTO 38
  IF ~~ THEN REPLY #40020 /* ~"Ne. Prostě, zapomeň na to... mám další otázku."~ */ GOTO 3
  IF ~~ THEN REPLY #40021 /* ~"Nevadí, Nenny. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #40022 /* ~Nenny se zamračila. "Já vím, já to nedokážu!" Stísněně na tebe pohlédla. "Víš jak je to *těžké* říkat o někom zlé věci?! Cítím se přitom strašně."~ */
  IF ~~ THEN REPLY #40023 /* ~"Proč si to nevyzkoušíš na mně, Nenny?"~ */ GOTO 39
  IF ~~ THEN REPLY #40024 /* ~"Zapomeň na to... mám další otázku."~ */ GOTO 3
  IF ~~ THEN REPLY #40025 /* ~"Nevadí, Nenny. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40026 /* ~"Myslím, že bych to mohla zkusit..." Vypadá nejistě. "Jsi hnusný, ohavný a hrubý!" Dala si ruky v bok. "Kreténe!" Podívala se na tebe. "Jaké to bylo?"~ */
  IF ~~ THEN REPLY #40027 /* ~"Měla bys víc zdůraznit to hrubý.'"~ */ GOTO 40
  IF ~~ THEN REPLY #40028 /* ~"Teď mě udeř."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40029 /* ~"Jsi hnusný, ohavný a *hrubý!*"~ */
  IF ~~ THEN REPLY #40030 /* ~"Lepší. Teď mě udeř."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #40031 /* ~Nenny si dala ruku před ústa, vypadá šokovaná. "Ach, to nechci! Nemohu!" Zamrkala. "Jak může někdo někoho udeřit? Nikdy!"~ */
  IF ~~ THEN REPLY #40032 /* ~"Udělej to. Jde to lehko, když chceš. Nezapomeň: Jsem protivný, ohavný a hrubý. Zasloužím si to."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #40033 /* ~Nenny tě udeřila; skoro jsi to necítil. Stále vypadala šokovaná a bála se, že tě zranila. "Ach, promiň! Bolelo to? Řekni, že jsi v pořádku!"~ */
  IF ~~ THEN REPLY #40034 /* ~"Nekroť svoji povahu, Nenny. No tak; ukaž co v tobě je. Určitě můžeš říct něco nepěkného... jen to všechno ze sebe uvolni."~ */ GOTO 43
  IF ~~ THEN REPLY #40035 /* ~"Oh! Zatraceně, nikdy mě nikdo tak silně nepraštil!"~ */ GOTO 49
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #40036 /* ~"Oh... myslím, oh!" Nenny se narovnala do své plné výšky, sevřela ruce v pěst, dala si je v bok a svraštila svou tvář do zamračeného pohledu. "Oh, do čerta s tebou! Ty jsi na vině všemu mému pokořování, kterým jsem prošla! Chodit spát pozdě v noci," Její oči si tě stále přeměřovaly. "Když odcházíš bojovat, přijdeš vždycky tak zbídačený! Co si o tom budou děti myslet, hmm?!"~ */
  IF ~~ THEN REPLY #40037 /* ~"Skvělé."~ */ GOTO 44
  IF ~~ THEN REPLY #40038 /* ~"Uh... kecáš?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 44 // from: 43.0 51.0
  SAY #40039 /* ~"Ooh, nelichoť mi, nevylížu ti prdel pro tvůj souhlas! Jsem svá paní, která odejde z tvého života, pokud nedostane pevný závazek!"~ */
  IF ~~ THEN REPLY #40040 /* ~"V pořádku... je toho na tebe moc, Nenny."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK2)
~ GOTO 45
  IF ~~ THEN REPLY #40041 /* ~"Eh... zklidni se. Je čas utišit svůj hněv."~ */ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #40042 /* ~Nenny tě udeřila. Sotva jsi to cítil. "Tu máš." Praštila tě znovu. "A tu!" A znovu tě praštila, měníc se na mlátící bouřku.~ */
  IF ~~ THEN REPLY #40043 /* ~"Okej, okej... čas se zklidnit."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0 48.0
  SAY #40044 /* ~Nenny si unaveně povzdechla. "No nazdar. Bylo to lehčí než jsem myslela!"~ */
  IF ~~ THEN REPLY #40045 /* ~"Neříkej."~ */ DO ~SetGlobal("Nenny_Angry","AR0605",1)
AddexperienceParty(5000)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #40046 /* ~"Jsem si jista, že příště to bude lepší! Jsem tak vzrušená, že jsem se něco nového naučila... díky!"~ */
  IF ~~ THEN REPLY #40047 /* ~"Jistě. Mám otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #66337 /* ~"Bez problému. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.1
  SAY #40048 /* ~"Cože?!" Nennin vztek vzrostl o další stupeň. "Ty jsi zapomněl na naše děti?! Jsi tak zblblý z toho chlastu že jsi zapomněl, že máme *děti?!*" Nenny rozhazuje ruce vztekem. "Jsi tak pitomý, bezohledný, bezcitný a mnoho *dalšího*, na co si teď zrovna nemůžu vzpomenout."~ */
  IF ~~ THEN REPLY #40049 /* ~"Eh... zklidni se. Je čas utišit svůj hněv."~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 42.1
  SAY #40050 /* ~Nenniny oči se rozšířily, když ses začal svíjet v hrané bolesti. "Oh! Oh, Nechtěla jsem tě udeřit tak prudce! Lituji toho! Promiň!"~ */
  IF ~~ THEN REPLY #40051 /* ~"Nikdy neříkej promiň. Řekni 'Lepší zvyknout si na to.'"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #40052 /* ~Nenny na tebe pohlédla. "Oh... uh, lepší zvyknout si na to."~ */
  IF ~~ THEN REPLY #40053 /* ~"Mrač se když to říkáš. Řekni to vážně a s přesvědčením."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #40054 /* ~Nenny se svou drobounkou postavou vzepjala do výšky, zaťala pěsti, opřela je v bok a svraštila tvář do zamračeného pohledu. "Lepší zvyknout si na to!"~ */
  IF ~~ THEN REPLY #40055 /* ~"Skvělé."~ */ GOTO 44
END

IF ~~ THEN BEGIN 52 // from: 3.7
  SAY #40056 /* ~"Možná... Viděla jsem ji, myslím Marissu jak se vyplížila jedné noci z Vivianina pokoje. Neříkám, že to vzala, ale vím, že Marissa není moc dobrý člověk a jistě to vypadá podezřele, huh? Musím se jí na to zeptat." Nenny na tebe kývla.~ */
  IF ~~ THEN REPLY #40057 /* ~"Díky, Nenny. Mám jinou otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #40058 /* ~"To je všechno, co jsem chtěl vědět. Sbohem, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.9
  SAY #40059 /* ~"Myslím, že vím! Viděla jsem jak se jedné noci Kimasxi Zmijíjazyk vyplížila z Marissinina pokoje. Jak víš, obě jsou potvory, ale Kimasxi je skutečně odporná! V každém případě, musím se jí na to co nejdřív zeptat."~ */
  IF ~~ THEN REPLY #40060 /* ~"Díky, Nenny. Mám jinou otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #40061 /* ~"To je všechno, co jsem chtěl vědět. Sbohem, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 3.5
  SAY #40062 /* ~Nenniny oči se rozšířily. "Oh! Správně! Víš, jedné noci jsem viděla muže vplížit se do Kimasxina pokoje, když se venku bavila s ochrankou... Hlídala jsem dveře celý den, ale on odtud nevyšel ven! Není to divné? Nemyslím si, že by utekl oknem, a nikdy jsem nezjistila, kudy se ven dostal. A potom jsem na to úplně zapomněla! Hloupé, že?"~ */
  IF ~~ THEN REPLY #40063 /* ~"Ano, to je... Mám jinou otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #40064 /* ~"To tedy je. Sbohem, Nenny."~ */ EXIT
END

IF ~  Global("Nenny","GLOBAL",1)
~ THEN BEGIN 55 // from:
  SAY #40065 /* ~"Buď *pozdraven* vážený pane! Jsem Nenny! Jak se ti *daří* v tento pěkný den? Oh! My jsme se již střetli!" Nenny se na tebe srdečně usmála. "Omlouvám se! Připadal jsi mi známý, myslela jsem..."~ */
  IF ~~ THEN REPLY #40066 /* ~"To je v pořádku, Nenny. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #40067 /* ~"Jenom přecházím. Sbohem, Nenny."~ */ EXIT
END
