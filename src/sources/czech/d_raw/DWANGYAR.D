// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DWANGYAR~

IF ~  Global("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3009 /* ~Žena vypadá na pozdní střední věk, její vlasy už v sobě mají proužky šedi. Celá její tvář je zbrázděná vráskami, které jí tam vyryly starosti. Jakmile tě spatřila, začala se rozhodovat mezi tím, že tě požádá, abys odešel, a zavoláním muže u stolu.~ */
  IF ~~ THEN REPLY #3010 /* ~"Zdravím."~ */ DO ~SetGlobal("Wife_of_Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11844 /* ~Nechej ženu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11806 /* ~"Radši zmiz, nebo zavolám manžela. Nebude se mu líbit, že nám lezeš do baráku."~ */
  IF ~~ THEN REPLY #11845 /* ~"Kdybys ho doopravdy chtěla zavolat, už bys to udělala. Mám pro tebe nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11846 /* ~"Zavolej manžela a oba zemřete. A teď mi odpovíš na mé otázky."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11847 /* ~"Uklidni se. Mám jenom nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #11848 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2 25.1 25.3
  SAY #11807 /* ~Pohlédne na manžela, v očích má obavy. "Já... já nemám čas, cizinče. Neotravuj mě s takovými věcmi."~ */
  IF ~~ THEN REPLY #11849 /* ~"Promiň... jsi v pořádku?"~ */ GOTO 4
  IF ~~ THEN REPLY #11850 /* ~"Uděláš si čas. A teď se tě chci zeptat na tohle..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11851 /* ~"Sbohem tedy. Omlouvám se, že jsem vyrušoval."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.2 16.0 25.2
  SAY #11808 /* ~Zbledla, oči se jí rozšířily strachem. Než se jí ale stačíš na něco zeptat, zhluboka se nadechla a začala ječet!~ */
  IF ~~ THEN REPLY #11852 /* ~"Zatraceně..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #11809 /* ~"Já?" Vypadá překvapeně. "Oh... jo, jo." Snížila hlas. "Měl bys raději odejít. Manžel v poslední době není ve své kůži. Radši bys ho neměl provokovat svojí přítomností."~ */
  IF ~  Global("Angyar","GLOBAL",1)
~ THEN REPLY #11853 /* ~"Mluvil jsem s ním... vypadá ustaraně. Co je mu?"~ */ GOTO 5
  IF ~  Global("Angyar","GLOBAL",0)
~ THEN REPLY #11854 /* ~"Co je s ním?"~ */ GOTO 5
  IF ~~ THEN REPLY #11855 /* ~"No, raději by neměl provokovat on mě. A ty taky ne. A teď se ti chci zeptat na tohle..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11856 /* ~"Sbohem tedy. Omlouvám se, že jsem vyrušoval."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #11810 /* ~"V poslední době mu není dobře, asi má rýmu..." Nepřesvědčivě pokrčila rameny.~ */
  IF ~~ THEN REPLY #11857 /* ~"Co tvého manžela skutečně trápí?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #11858 /* ~"Když mi povíš co ho trápí, možná bych mu mohl pomoci."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #11859 /* ~"Sbohem tedy. Omlouvám se, že jsem vyrušoval."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #11811 /* ~"Myslím... myslím že udělal něco, čeho teď lituje." Její ustrašený výraz se změnil v zoufalství. "Myslím, že podepsal Smrtelnou smlouvu. Nemůžu pochopit, jak mohl udělat takovou hloupost!"~ */
  IF ~~ THEN REPLY #11860 /* ~"Smrtelná Smlouva?"~ */ GOTO 12
  IF ~~ THEN REPLY #11861 /* ~"Aha. Vypadá to, že máš spoustu problémů. Sbohem."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #11812 /* ~Zastavila tě. "Prosím, neříkej nikomu, že to víš ode mne, zvláště ne mému muži." Vypadá vystrašeně. "Slib mi to."~ */
  IF ~~ THEN REPLY #11862 /* ~"Proč?"
~ */ GOTO 10
  IF ~~ THEN REPLY #11863 /* ~Lež: "Přísahám, že to nikomu neřeknu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11864 /* ~Přísaha: "Přísahám, že to nikomu neřeknu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11865 /* ~"Takový slib ti dát nemůžu. Sbohem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 10.3 10.4 11.1 11.2
  SAY #11813 /* ~Vypadá to, že se uvolnila... trošinku. "Sbohem tedy."~ */
  IF ~~ THEN REPLY #11866 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #11814 /* ~Její výraz zoufalství ještě zesílil. "Já... nikdy jsem ti neměla nic říct." Oči se jí zalévají slzami. "Jsem stejný hlupák jako on!"~ */
  IF ~~ THEN REPLY #11867 /* ~"Proč to musí být tajemství?"~ */ GOTO 10
  IF ~~ THEN REPLY #11868 /* ~"Máš pravdu. Neměla jsi mi to nikdy říkat. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #11869 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #11815 /* ~"Můj manžel má velký temperament... a donutil mě slíbit, že nikomu neřeknu, co se mu stalo." Znovu se na tebe podívala. "*Musíš* o tom pomlčet."~ */
  IF ~~ THEN REPLY #11870 /* ~"Neměla jsi mi to říkat... sliby se mají dodržovat, jinak mezi lidmi nebude žádná důvěra. Bylo by lepší, kdybys nic takového neslibovala."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_2","GLOBALLaw",1)
~ GOTO 11
  IF ~~ THEN REPLY #11871 /* ~"Slib z donucení není platný. Já bych si z porušení takového slibu hlavu nedělal."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11872 /* ~"Sliby jsou od toho, aby se porušily. Nejsou tak důležité."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11873 /* ~Lež: "Přísahám, že to nikomu neřeknu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11874 /* ~Přísaha: "Přísahám, že to nikomu neřeknu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11875 /* ~"Takový slib ti dát nemůžu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #11816 /* ~Povzdychla si. "Pořád ale..."~ */
  IF ~~ THEN REPLY #11876 /* ~"Hele, možná bych mohl nějak pomoct... co jsou ty Smrtelné smlouvy, o kterých ses zmínila?"~ */ GOTO 12
  IF ~~ THEN REPLY #11877 /* ~Lež: "To nic. Přísahám, že to nikomu neřeknu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11878 /* ~Přísaha: "To nic. Přísahám, že to nikomu neřeknu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11879 /* ~"Už si nemáme co říct. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 11.0 25.0
  SAY #11817 /* ~"Mrtví... Spalovači... mají smlouvy, které jim dávají práva na něčí tělo potom, co umře."~ */
  IF ~~ THEN REPLY #11880 /* ~"Co Spalovači s tím tělem dělají?"~ */ GOTO 13
  IF ~~ THEN REPLY #11881 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11818 /* ~"Oživí je svou černou magií, změní je na chodící mrtvoly a udělají z nich dělníky, dokud..." Bezmocně se podívala na manžela. "...dokud neshnijí."~ */
  IF ~~ THEN REPLY #11882 /* ~"Proč tvůj manžel něco takového podepsal?"~ */ GOTO 14
  IF ~~ THEN REPLY #11883 /* ~"Tvůj manžel po smrti tělo potřebovat nebude. Tak v čem je problém?"~ */ GOTO 15
  IF ~~ THEN REPLY #11884 /* ~"Vypadá to, že máš spoustu problémů. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.2
  SAY #11819 /* ~"Asi chtěl domů přinést víc peněz než obvykle. Je pyšný... ale domnívám se, že si tím jen ubližuje."~ */
  IF ~~ THEN REPLY #11885 /* ~"To je nešťastné. Ale já mám pro tebe nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #11886 /* ~"Nemůže být ta smlouva zrušena?"~ */ GOTO 17
  IF ~~ THEN REPLY #11887 /* ~"Tvůj manžel po smrti tělo potřebovat nebude. Tak v čem je problém?"~ */ GOTO 15
  IF ~~ THEN REPLY #11888 /* ~"Vypadá to, že máš spoustu problémů. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.2
  SAY #11820 /* ~"Nejenom ta smlouva, jeho povaha se od doby, kdy to podepsal, změnila... je teď zakaboněný a nevrlý a nedokáže se donutit k nějaké pořádné práci. Je to, jako by nad ním visel stín Paní Bolesti..." Povzdychla si.~ */
  IF ~~ THEN REPLY #11889 /* ~"To je nešťastné. Ale já mám pro tebe nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #11890 /* ~"Nemůže být ta smlouva zrušena?"~ */ GOTO 17
  IF ~~ THEN REPLY #11891 /* ~"Proč tvůj manžel něco takového podepsal?"~ */ GOTO 14
  IF ~~ THEN REPLY #11892 /* ~"Vypadá to, že máš spoustu problémů. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0 17.1 24.0
  SAY #11821 /* ~Pohlédne na manžela, v očích má obavy. "Já... já nemám čas, cizinče. Mám svou práci..."~ */
  IF ~~ THEN REPLY #11893 /* ~"Tak si čas udělej. A teď se tě chci zeptat na tohle..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11894 /* ~"Sbohem tedy. Omlouvám se, že jsem vyrušoval."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1
  SAY #11822 /* ~Překvapeně se na tebe podívala, pak si povzdychla. "*Zkoušela* jsem to! Mluvila jsem se Spalovačem, který to s ním podepsal, ale on je studenej, jako všichni Mrtví! Dokonce mě poučoval, jako bych neměla právo pokusit se manželovi pomoct!" Stiskla rty. "Je studený a krutý."~ */
  IF ~~ THEN REPLY #11895 /* ~"Podívám se, co se s tím dá dělat. S kterým Spalovačem tvůj manžel podepsal smlouvu?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #11896 /* ~"To je nešťastné. Ale já mám pro tebe nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #11897 /* ~"Vypadá to, že máš spoustu problémů. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 20.0
  SAY #11823 /* ~"Nebudu odmítat tak přátelské gesto." Vypadá vděčně, ale pořád se tváří ustaraně. "Ale musím tě požádat, abys nikomu neříkal, o co jsem tě žádala. Můj manžel je dost velký nervák, a kdyby na to přišel..." Otřásla se.~ */
  IF ~~ THEN REPLY #11898 /* ~Lež: "Slibuju, že to tvůj manžel nezjistí."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 21
  IF ~~ THEN REPLY #11899 /* ~Přísaha: "Slibuju, že to tvůj manžel nezjistí."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #11900 /* ~"Nemůžu nic slíbit. Uvidíme, jak to dopadne."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #11824 /* ~"Ten Spalovač si říká Hrobkop... jeho první jméno neznám. Sedává ve spalovačském baru v Úlu... myslím, že se to tam jmenuje Bar Zapomnění. Nejspíš ho najdeš tam, jak se snaží donutit ke smlouvě další lidi."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11902 /* ~"Oh, Mortai? Je mrtvý."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11903 /* ~"V tom případě ho vyhledám. Kde je ten Bar Zapomnění?"~ */ JOURNAL #64577 /* ~V Úlu jsem se setkal se ženou, jejíž manžel Angyar podepsal 'Smrtelnou smlouvu' s jedním ze Spalovačů v Baru Zapomnění -- s mužem jménem Mortai Hrobkop. Nabídl jsem jí, že bych se mohl pokusit ten kontrakt urovnat a dopřát tak jí i jejímu manželovi klidu. Řekla mi, že Bar Zapomnění se nachází v této čtvrti Úlu, jihozápadně od Spalovačského monumentu, a že před vchodem stojí zombie. ~ */ GOTO 20
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11904 /* ~"Už má smlouvu tvého muže tady."~ */ JOURNAL #64578 /* ~V Úlu jsem se setkal se ženou jejíž manžel, Angyar, podepsal 'Smrtelou smlouvu' s jedním ze Spalovačů v Baru Zapomnění -- s mužem jménem Mortai Hrobkop. Ten kontrakt už jsem ale získal, takže si cestu do Baru Zapomnění mohu odpustit. ~ */ GOTO 28
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #11825 /* ~"Vyjdi na ulici, jdi k památníku a pak zamiř na jihozápad..." Zaťukala si prsty na tvář. "Měl bys dorazit přímo tam. Před vchodem je jedna z těch..." Tvář se jí zkroutila znechucením. "...chodících mrtvol."~ */
  IF ~~ THEN REPLY #11905 /* ~"Velmi dobře. Podívám se, co se s tím dá dělat."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 18.0 18.1 38.0
  SAY #11826 /* ~"Děkuju ti, cizinče. Jsem ti vděčná za pomoc."~ */
  IF ~~ THEN REPLY #11906 /* ~"Bez problému. Půjdu se podívat, co by se dalo udělat se zrušením té smlouvy."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY #11827 /* ~"Tak to tě požádám, abys o tom pomlčel, jak to jenom půjde."~ */
  IF ~~ THEN REPLY #11907 /* ~"Velmi dobře. Půjdu se podívat, co by se dalo udělat se zrušením té smlouvy."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 37.0
  SAY #11828 /* ~"Mrtvý?!" Vypadá ohromeně. "Ale Smlouva... neexistuje způsob, jak..."~ */
  IF ~  !PartyHasItem("Acontrac")
~ THEN REPLY #11908 /* ~"To je problém."~ */ JOURNAL #64579 /* ~V Úlu jsem se setkal se ženou jejíž manžel, Angyar, podepsal 'Smrtelou smlouvu' s jedním ze Spalovačů v Baru Zapomnění -- s mužem jménem Mortai Hrobkop. Toho už jsem ale zapsal do Knihy mrtvých, takže jsem ho zbavil téhle mizérie kolem a tuhle ženu a jejího manžela jsem zatratil. ~ */ GOTO 24
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11909 /* ~"Neměj starost. Mám smlouvu tady.""~ */ JOURNAL #64578 /* ~V Úlu jsem se setkal se ženou jejíž manžel, Angyar, podepsal 'Smrtelou smlouvu' s jedním ze Spalovačů v Baru Zapomnění -- s mužem jménem Mortai Hrobkop. Ten kontrakt už jsem ale získal, takže si cestu do Baru Zapomnění mohu odpustit. ~ */ GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11829 /* ~Zmlkla. Podívala se na svého muže, pak se otočila k tobě. "Tak to už se nedá nic dělat." Její hlas zní hrobově. "Prosím odejdi."~ */
  IF ~~ THEN REPLY #11910 /* ~"Nejdřív mám nějaké otázky..."~ */ DO ~Enemy()
~ GOTO 16
  IF ~~ THEN REPLY #11911 /* ~"Sbohem."~ */ DO ~Enemy()
~ EXIT
END

IF ~  GlobalGT("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #11830 /* ~Angyarova žena se na tebe dívá se strachem "Řekla jsem ti, že tady nejsi vítán... měl bys jít, než zavolám manžela. Nebude se mu líbit, že nám lezeš do domu."~ */
  IF ~  Global("Angyar_Quest","GLOBAL",1)
~ THEN REPLY #11912 /* ~"S kterým Spalovačem to tvůj manžel podepsal tu smlouvu?"~ */ GOTO 12
  IF ~~ THEN REPLY #11913 /* ~"Kdybys ho doopravdy chtěla zavolat, už bys to udělala. A teď mám nějaké otázky."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11914 /* ~"Zavolej manžela a oba zemřete. A teď mi odpovíš na mé otázky."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11915 /* ~"Uklidni se. Mám jenom nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #11917 /* ~"Sbohem."~ */ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #11831 /* ~Angyarova žena se na tebe dívá s nadějí. "Dokázal jsi...?"~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11916 /* ~"Ano, získal jsem od Mortaie tu smlouvu. Tady je."~ */ GOTO 28
  IF ~~ THEN REPLY #11918 /* ~"Ještě ne.. S kýmže to tvůj manžel podepsal tu smlouvu?"~ */ GOTO 37
  IF ~~ THEN REPLY #11919 /* ~"Pracuju na tom. Sbohem."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11832 /* ~Angyarova žena se na tebe usmála. "Vítej, dobrý pane. Jak ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #11920 /* ~"Zajímalo by mně, jestli si tady můžu odpočinout."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11921 /* ~"Dochází mi zásoby... nemůžeš mi pomoct?"~ */ DO ~StartStore("Wangyar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #11922 /* ~"Jenom jsem se chtěl podívat, jak se daří. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.2 23.1 26.0 37.2
  SAY #11833 /* ~Ulehčilo se jí, oči se jí zamlžily. "Oh, u mocností... musíš být převlečený deva, že jsi udělal takovou věc pro někoho, koho vůbec neznáš..."~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11923 /* ~Dej jí smlouvu.~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ JOURNAL #64580 /* ~Získal jsem Angyarův kontrakt a vrátil ho jeho ženě. Poděkovala mi a řekla, abych ten kontrakt ukázal jejímu manželovi. ~ */ GOTO 29
  IF ~~ THEN REPLY #11924 /* ~"Nedělám to zadarmo, víš. Očekávám něco na oplátku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11834 /* ~"Ne, ne. Kdybys mohl dát smlouvu manželovi, říct mu, že jsi mu ho donesl, ale neřekl jak... ocenila bych to."~ */
  IF ~~ THEN REPLY #11925 /* ~"Velmi dobře. Ukážu mu to."~ */ EXIT
  IF ~~ THEN REPLY #11926 /* ~"Nedělám to zadarmo, víš. Očekávám něco na oplátku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.1
  SAY #11835 /* ~Chápavě se na tebe dívá. "Mám nějaké peníze, pár měďáků... vezmeš si je?"~ */
  IF ~~ THEN REPLY #11927 /* ~"Ano."~ */ DO ~GivePartyGold(11)
~ GOTO 31
  IF ~~ THEN REPLY #11928 /* ~"Pár měďáků nestačí. Co ještě máš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11836 /* ~Sáhla do záhybů své roby a vytáhla hrst měďáků. Smutně se na ně dívá, ale pak ti je podává. "Za duši mého manžela je to malá cena."~ */
  IF ~~ THEN REPLY #11929 /* ~"To by pro začátek stačilo. Co ještě máš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #11930 /* ~"Fajn. Tady je smlouva."~ */ JOURNAL #64580 /* ~Získal jsem Angyarův kontrakt a vrátil ho jeho ženě. Poděkovala mi a řekla, abych ten kontrakt ukázal jejímu manželovi. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1
  SAY #11837 /* ~"Ne, ne. Kdybys mohl dát smlouvu manželovi, říct mu, že jsi mu ho donesl, ale neřekl jak... ocenila bych to."~ */
  IF ~~ THEN REPLY #11931 /* ~"Velmi dobře. Ukážu mu to."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1 31.0
  SAY #11838 /* ~"Já... už nic jiného nemám." Tváří se vystrašeně. "Opravdu, pane. Vůbec nic. Můj manžel by nikdy nepodepsal Smrtelnou smlouvu, kdyby..."~ */
  IF ~~ THEN REPLY #11932 /* ~"*Nelži* mi, ženo. Co ještě máš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_6","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #11933 /* ~"To nic. Tady je smlouva."~ */ JOURNAL #64580 /* ~Získal jsem Angyarův kontrakt a vrátil ho jeho ženě. Poděkovala mi a řekla, abych ten kontrakt ukázal jejímu manželovi. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11839 /* ~Zbledla, oči se jí rozšířily hrůzou. Než stačíš zareagovat, zhluboka se nadechla a začala ječet!~ */
  IF ~~ THEN REPLY #11934 /* ~"Zatraceně..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Angyar","GLOBAL",3)
~ THEN BEGIN 35 // from:
  SAY #11840 /* ~Angyarova žena se k tobě otočila a hodila po manželovi ustaraným pohledem. "Jsem ti vděčná za tu smlouvu, ale rozzlobil jsi mého muže." Dívá se na Angyara ustrašenýma očima. "Měl bys raději jít."~ */
  IF ~~ THEN REPLY #11935 /* ~"Velmi dobře. Omlouvám se, že jsem vyrušoval."~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",3)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 36 // from:
  SAY #11841 /* ~Angyarova žena se na tebe dívá s nadějí v očích. "Dal jsi mu to...?"~ */
  IF ~~ THEN REPLY #11936 /* ~"Ještě ne.. Vrátím se později."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 26.1
  SAY #11842 /* ~"Ten Spalovač si říká Hrobkop... jeho první jméno neznám. Sedává ve spalovačském baru v Úlu... myslím, že se to tam jmenuje Bar Zapomnění. Nejspíš ho najdeš tam, jak se snaží donutit ke smlouvě další lidi."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11937 /* ~"Oh, Mortai? Je mrtvý."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11938 /* ~"V tom případě ho vyhledám. Kde je ten Bar Zapomnění?"~ */ GOTO 38
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11939 /* ~"Už mám smlouvu tvého manžela tady u sebe."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #11843 /* ~"Vyjdi na ulici, jdi k památníku a pak zamiř na jihozápad..." Zaťukala si prsty na tvář. "Měl bys dorazit přímo tam. Před vchodem je jedna z těch..." Tvář se jí zkroutila znechucením. "...chodících mrtvol."~ */
  IF ~~ THEN REPLY #11940 /* ~"Velmi dobře. Podívám se, co se s tím dá dělat."~ */ GOTO 21
END
