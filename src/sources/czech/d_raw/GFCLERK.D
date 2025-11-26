// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFCLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~GFCLERK~

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5909 /* ~"Tak to kvůli tobě je všechen ten povyk, he? No, nemůžu jim to mít za zlý... vypadáš nebezpečně. A teď vypadni."~ */
  IF ~~ THEN REPLY #5910 /* ~Zabij staříka.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_GFClerk_1","GLOBALGood",-1)
Kill(Myself)
~ EXIT
  IF ~~ THEN REPLY #5911 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5912 /* ~"Bych ti rád pomoh, synu, ale měl bych z toho věčí problémy, než bysem chtěl. No, přijď někdy jindy, až ti nebudou stráže funět za krkem.~ */
  IF ~~ THEN REPLY #5913 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #5914 /* ~Vidíš vysušeného starce s třesoucíma se rukama a vychytralým obličejem. Pozorně si tě prohlédl a pak promluvil. "Huh, neviděl sem tě už někdy? Mi připadáš povědomej."~ */
  IF ~~ THEN REPLY #5915 /* ~"Řekl bych, že je to možné."~ */ GOTO 4
  IF ~~ THEN REPLY #5916 /* ~"Ani náhodou, dědku."~ */ GOTO 5
  IF ~~ THEN REPLY #5917 /* ~"Pamatuješ si kde? Odkud?"~ */ GOTO 6
  IF ~~ THEN REPLY #5918 /* ~"Přišel jsem si vyzvednout předmět."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5919 /* ~"Potřebuju nějaké náhradní hadry a nářadí k peci."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5920 /* ~"Hledám převlek."~ */ GOTO 9
  IF ~~ THEN REPLY #5921 /* ~"Kdo jsi?"~ */ GOTO 10
  IF ~~ THEN REPLY #5922 /* ~"Rád bych si vyzvedl nářadí na pec."~ */ GOTO 11
  IF ~~ THEN REPLY #5923 /* ~"Zajímavé. Sbohem, dědku."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from: 5.0 8.2 9.2 10.0 11.4 14.0 18.0 21.0 22.0 23.0 24.0 25.0
  SAY #5924 /* ~"Eště něco chceš?"~ */
  IF ~~ THEN REPLY #5925 /* ~"Říkal jsi, žes mě už viděl. Pamatuješ si kde?"~ */ GOTO 6
  IF ~~ THEN REPLY #5926 /* ~"Ne, jenom jsem chtěl vidět tvůj vysmátej obličej."~ */ GOTO 12
  IF ~~ THEN REPLY #5927 /* ~"Přišel jsem si vyzvednout předmět."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5928 /* ~"Potřebuju nějaké náhradní hadry a nářadí k peci."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5929 /* ~"Hledám převlek."~ */ GOTO 9
  IF ~~ THEN REPLY #5930 /* ~"Kdo jsi?"~ */ GOTO 10
  IF ~~ THEN REPLY #5931 /* ~"Rád bych si vyzvedl nářadí na pec."~ */ GOTO 11
  IF ~~ THEN REPLY #5932 /* ~"Zajímavé. Sbohem, dědku."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5933 /* ~"Nikdy nezapomínám obličeje... vzpomenu si... ale, do Baatoru s tím."~ */
  IF ~~ THEN REPLY #5934 /* ~"Pamatuješ si kde? Je to pro mě důležité."~ */ GOTO 6
  IF ~~ THEN REPLY #5935 /* ~"Přišel jsem si vyzvednout předmět."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5936 /* ~"Potřebuju nějaké náhradní hadry a nářadí k peci."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5937 /* ~"Hledám převlek."~ */ GOTO 9
  IF ~~ THEN REPLY #5938 /* ~"Kdo jsi?"~ */ GOTO 10
  IF ~~ THEN REPLY #5939 /* ~"Rád bych si vyzvedl nářadí na pec."~ */ GOTO 11
  IF ~~ THEN REPLY #5940 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #5941 /* ~"Přísahal bysem, že sem tě už viděl. Nebyl si kriminálník?" Dědek se tiše zahihňal. "Zapomeň na to. Já si vzpomenu."~ */
  IF ~~ THEN REPLY #5942 /* ~"Dobře. Tak mi odpověz na nějaké otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #5943 /* ~"Doufám, že ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.0 4.0
  SAY #5944 /* ~"Ne tak rychle, chlapče. Chvíli trvá, než se mozek na takové věci dost rozehřeje. Žiju už dlouho a viděl sem za tu dobu spoustu obličejů a není to snadný, pamatovat si všechny. Paměť je pomíjivá věc, chlapče, na to si můžeš vsadit."

Než jsi odpověděl, zamručel jsi: "O tom mi povídej... 'chlapče'."
~ */
  IF ~~ THEN REPLY #5945 /* ~"Tak na to zapomeň. Přišel jsem si vyzvednout předmět."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5946 /* ~"Tak dobrá. Rád bych si vyzvedl nářadí na pec a nějaké náhradní hadry."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5947 /* ~"Fajn. Hledám převlek."~ */ GOTO 9
  IF ~~ THEN REPLY #5948 /* ~"Můžeš mi říct, kdo jsi?"~ */ GOTO 10
  IF ~~ THEN REPLY #5949 /* ~"Tak bych si rád vyzvedl nářadí na pec."~ */ GOTO 11
  IF ~~ THEN REPLY #5950 /* ~"Fajn. Sbohem, 'chlapče'".~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 4.1 6.0
  SAY #5951 /* ~"Máš stvrzenku? Musíš ji mít, jinak ti nic nedám."~ */
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5952 /* ~"Pár jich mám zrovna tady."~ */ DO ~TakePartyItemNum("Receipt",1)
TakePartyItemNum("Receipt2",1)
~ GOTO 13
  IF ~  !Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5953 /* ~"Jasně. Tady máš."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5954 /* ~"Jasně. Tady máš."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5955 /* ~"Ano, tady je."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 15
  IF ~  !PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5956 /* ~Lži: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALClerk1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
~ THEN REPLY #5957 /* ~"Jasně. Tady máš."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 19
  IF ~~ THEN REPLY #5958 /* ~"Ne."~ */ GOTO 16
  IF ~~ THEN REPLY #5959 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 3.3 4.2 6.1
  SAY #5960 /* ~"Jo? Tak to je fajn. Takže to bude... hm... řekněme 60 měďáků."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5961 /* ~"Tady máš."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5962 /* ~"Tolik nemám."~ */ GOTO 18
  IF ~~ THEN REPLY #5963 /* ~"Zapomeň na to. Mám další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #5964 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.4 4.3 6.2
  SAY #5965 /* ~"Tak převlek, jo? Tipoval bych, že vím na co. Dám ti to za neuvěřitelně nízkou cenu, akorát 60 měďáků."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5966 /* ~"Tady máš."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5967 /* ~"Tolik nemám."~ */ GOTO 18
  IF ~~ THEN REPLY #5968 /* ~"Zapomeň na to. Mám další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #5969 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.6 3.5 4.4 6.3
  SAY #5970 /* ~"Já? Jsem Nadilin, extraordinérní bojovník Božích Lidí!" Povzdychl si. "Teda, býval sem. Teďkonc sem úředník Slévárny a dejchám tenhle hnusnej vzduch a urychluju si tak svůj konec."~ */
  IF ~~ THEN REPLY #5971 /* ~"To je smůla. Mám další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #5972 /* ~"Dobře. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.7 3.6 4.5 6.4
  SAY #5973 /* ~"Ah, tak chceš bejt kovář, chlapče? Dobrá tedy. Budeš potřebovat zástěru - deset měďáků, nějaký kleště - dalších deset, a kladivo, to je dvacet. Celkem to je... hm, je to padesát měďáku."~ */
  IF ~~ THEN REPLY #5974 /* ~"To je čtyřicet měďáků, dědku."~ */ GOTO 20
  IF ~  PartyGoldGT(49)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #5975 /* ~Zaplať padesát měďáků.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(49)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5976 /* ~Zaplať padesát měďáků.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #5977 /* ~"Je mi líto, ale mě to připadá spíš jako čtyřicet měďáků."~ */ GOTO 20
  IF ~~ THEN REPLY #5978 /* ~"Zapomeň na to. Mám další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #5979 /* ~"Myslím, že to teď nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #5980 /* ~"Buď pochválen, synu. A teď mě omluv. Mám tu nějaký okna, z kerejch se musím koukat ven."~ */
  IF ~~ THEN REPLY #5981 /* ~"Err. Dobře."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0
  SAY #5982 /* ~"Hned jsem zpátky," řekl. Minuty ubíhají. Nakonec se vrátil a dal ti několik předmětů: malou kovanou věcičku a kvalitní palici. "Ten první kousek, ten je starej přes sto let! Čekalo to tady na tebe dost dlouho, příteli. Kde ses k tomu dostal?"~ */
  IF ~~ THEN REPLY #5983 /* ~"Nechal jsem si to tady, ale měl jsem spoustu práce a málo času."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
AddexperienceParty(40000)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #5984 /* ~"Dostal jsem to."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #5985 /* ~"Zdědil jsem to."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 7.1 7.2
  SAY #5986 /* ~Starý muž si vzal tvou stvrzenku a porovnal ji se svými záznamy. Na minutu pak odběhl a vrátil se s kvalitní palicí v ruce. "Tady máš, chlapče."~ */
  IF ~~ THEN REPLY #5987 /* ~"Díky. Mám nějaké otázky."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #5988 /* ~"Díky. Sbohem."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #5989 /* ~Stařec si vzal stvrzenku a pozorně si ji prohlédl. "Ta věc je přes sto let stará! Jak ses k tomu dostal?"~ */
  IF ~~ THEN REPLY #5990 /* ~"Nechal jsem si to tady, ale měl jsem moc práce a málo času."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 23
  IF ~~ THEN REPLY #5991 /* ~"Dostal jsem to."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #26874 /* ~"Bylo to v odkaze."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 7.4 7.6
  SAY #5992 /* ~Na chvíli se odmlčel. "Jestli máš stvrzenku, dej mi ji. Jinak ti nemůžu nic dát. No tak. Mám spoustu práce."~ */
  IF ~~ THEN REPLY #5993 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0 9.0
  SAY #5994 /* ~"Tak tady máš. Odveď tu děvku pryč, ať už si nemusíme dělat starosti s její zrádností."~ */
  IF ~~ THEN REPLY #5995 /* ~Lži: "Co? K tomu to nepotřebuju!"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALClerk2","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #5996 /* ~"Jak to víš?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ GOTO 27
  IF ~~ THEN REPLY #5997 /* ~"Díky, starý muži. Sbohem."~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1 9.1 20.2
  SAY #5998 /* ~"Tak to ti to nemůžu dát. Je mi líto."~ */
  IF ~~ THEN REPLY #5999 /* ~"Fajn. Tak mi odpověz na nějaké otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #6000 /* ~"Fajn. Na shledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #6001 /* ~Pozorně si prohlédl stvrzenku a pak se ti podíval do očí. "Není to to samý, co jsem ti už dal? Nemůžu ti to dát dvakrát, víš." Strčil stvrzenku do kapsy. "A teď jdi. Padej!"~ */
  IF ~~ THEN REPLY #6002 /* ~Odejdi.~ */ DO ~TakePartyItemNum("Receipt",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.0 11.3
  SAY #6003 /* ~"Na co myslím? Samozřejmě že je. Povím ti, že paměť je pomíjivá věc."~ */
  IF ~  PartyGoldGT(39)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #6004 /* ~"To je. Dej mi to."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(39)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6005 /* ~"To je. Dej mi to."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #6006 /* ~"No, na můj vkus je to pořád moc drahé."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 11.1 20.0
  SAY #6007 /* ~"Nezapomeň si vyzvednout nějakou rudu od Thildona, jestli chceš dělat u pece. Je to mizerný bastard, ale pokud chceš rudu, musíš jít za ním."~ */
  IF ~~ THEN REPLY #6008 /* ~"Díky. Mám pro tebe další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #6009 /* ~"Díky. Na shledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.2 20.1
  SAY #6010 /* ~"Jestli chceš makat u pece, budeš potřebovat nějakou rudu. Zkus tu Thildonovu zástupkyni. Zapomněl jsem jak se menuje, ale měla by ti to dát bez nějakých velkých keců."~ */
  IF ~~ THEN REPLY #6011 /* ~"Díky, staříku. Mám pro tebe pár otázek."~ */ GOTO 3
  IF ~~ THEN REPLY #6012 /* ~"Díky a nashledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.0 15.0
  SAY #6013 /* ~"To je dobrý, chlapče. To se vsadím, žes měl moc práce." Zasmál se. Podal ti svůj náklad. "Tady máš. Dej si na tu věcičku pozor, jasný?"~ */
  IF ~~ THEN REPLY #6014 /* ~"Ano. Ale mám ještě nějaké otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #6015 /* ~"Určitě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.1 15.1
  SAY #6016 /* ~"Předávaný z generace na generaci, co? Máš štěstí, že jsme to nevyhodili - občas to děláme, nebo prodáváme, když jsme si jistí, že už si pro to zákazník nepřijde. No, tady máš. A dávej na to pozor."~ */
  IF ~~ THEN REPLY #6017 /* ~"Jasně. Odpovíš mi na pár otázek?"~ */ GOTO 3
  IF ~~ THEN REPLY #6018 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.2 15.2
  SAY #6019 /* ~"Aha. No, to se ti povedlo. Tady máš, chlapče. A dávej na to pozor, jasný?"~ */
  IF ~~ THEN REPLY #6020 /* ~"Jasně. Odpovíš mi na pár otázek?"~ */ GOTO 3
  IF ~~ THEN REPLY #6021 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.0
  SAY #6022 /* ~Dívá se na tebe se znechucením. "No tak, chlapče. Vem si svý věci a vypadni, nebo si to rozmyslím a zavolám stráž."~ */
  IF ~~ THEN REPLY #6023 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #6024 /* ~"Možná sem starej, ale nejsem blbej. Bedai-Lihn už je nějakou dobu nešťastná a nikdy se jí nelíbila práce pro fiendy. A teď padej. Mám nějakou práci."~ */
  IF ~~ THEN REPLY #6025 /* ~Odejdi.~ */ EXIT
END
