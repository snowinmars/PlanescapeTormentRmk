// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNEML.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DNEML~

IF ~  Global("Nemelle","GLOBAL",0)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #35996 /* ~Vysoká, štíhlá žena upíjí víno z keramického šálku. Vypadá to, že někoho hledá. Její tvář je exoticky elegantní a její uši, i když jsou částečně zakryty dlouhými vlasy, mají špičaté konce.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #35998 /* ~"Zdravím."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #43924 /* ~"Zdravím."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #43925 /* ~"Zdravím."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43926 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43927 /* ~Žena se k tobě otočila, má fialové oči, třpytící se jako odštěpek ametystu. Její řeč zní jako hudba. Když mluví, můžeš slyšet slabé melodické cinkání stovek maličkých jasných zvonků. Každé slovo dlouho zní ve tvých uších, jako by byla neochotna vzdát se tak nádherného zvuku. "Nemelle se otočit ke zjizvenému, zarputilému cizinci. Ptát se, co od ní chtít."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43928 /* ~"Jmenuješ se Nemelle? "Bylo mi řečeno, že znáš ovládací slovo pro tuto láhev."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43929 /* ~"Ty jsi Nemelle? Tvá přítelkyně Aelwyn se po tobě shání."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~Řekl jsem Nemelle, že jí hledá její přítelkyně Aelwyn. Odměnila mě magickým polibkem, který mi zvýšil maximální životy o tři.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43930 /* ~"Hledáš někoho?"~ */ GOTO 14
  IF ~~ THEN REPLY #43931 /* ~"Mám nějaké otázky..."~ */ GOTO 11
  IF ~~ THEN REPLY #43932 /* ~"Vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #43933 /* ~Žena se k tobě otočila, má fialové oči, třpytící se jako odštěpek ametystu. Její řeč zní jako hudba. Když mluví, můžeš slyšet slabé melodické cinkání stovek maličkých jasných zvonků. Každé slovo dlouho zní ve tvých uších, jako by nebyla ochotna vzdát se tak nádherného zvuku. "Nemelle se otočit ke zjizvenému, zarputilému cizinci. Ptát se, co od ní chtít."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 467
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #43934 /* ~Žena se k tobě otočila, má fialové oči, třpytící se jako ryzí odštěpek ametystu. Její řeč zní jako hudba. Když mluví, můžeš slyšet slabé melodické cinkání stovek maličkých jasných zvonků. Každé slovo dlouho zní ve tvých uších, jako by nebyla ochotna vzdát se tak nádherného zvuku. "Nemelle se otočit ke zjizvenému, zarputilému cizinci. Ptát se, co od ní chtít."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 468
END

IF ~~ THEN BEGIN 4 // from: 1.0 17.0 18.0 19.0
  SAY #43935 /* ~Žena se ani nepokusila dotknout nebo prozkoumat láhev, ale pouze mluví. "Nemelle to vzít od cizince, věnovat tomu pozornost. Ona vzpomínat, vidět to už někdy dříve? Možná... ano, teď si vzpomenout. Ona vrátit láhev, pošeptat do jeho ucha, jak se to stát..."~ */
  IF ~~ THEN REPLY #43936 /* ~"Hm..."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",2)
DestroyPartyItem("Decant",FALSE)
GiveItemCreate("Decant2",Protagonist,1,0,0)
~ JOURNAL #39492 /* ~Tajemná žena jménem Nemelle mi dala příkazové slovo pro magickou láhev, kterou jsem našel: 'Nildennosaj.'~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43937 /* ~Teď sis uvědomil, že to slovo znáš -- 'Nildenosaj' -- ačkoliv víš jistě, že žena ti to do ucha nepošeptala, ale pouze řekla, že tak učiní. Mrkla na tebe. "Teď už ji opustit, když je spokojen, co mu ona říct?"~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
!Global("Aelwyn","GLOBAL",2)
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43938 /* ~"Ještě ne. Potkal jsem Aelwyn."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~Řekl jsem Nemelle, že jsem jí našel její přítelkyni Aelwyn. Odměnila mě magickým polibkem, který mi zvýšil maximální životy o tři.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43939 /* ~"Ještě ne. Tvá přítelkyně Aelwyn se po tobě shání."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~Řekl jsem Nemelle, že jí hledá její přítelkyně Aelwyn. Odměnila mě magickým polibkem, který mi zvýšil maximální životy o tři.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43940 /* ~"Teď ještě ne. Nehledáš někoho?"~ */ GOTO 14
  IF ~~ THEN REPLY #43941 /* ~"Ne... Mám ještě nějaké otázky."~ */ GOTO 11
  IF ~~ THEN REPLY #43942 /* ~"Ano, opustím tě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 5.1 15.0 17.1 18.1
  SAY #43943 /* ~Nemelliny rty vykouzlily nádherný úsměv; vyzařuje z ní nakažlivé štěstí, které na tobě ulpívá jako sladce vonící laskavost. "Nemelle mít velkou radost, když slyšet o její přítelkyni. Být Aelwyn blízko?"~ */
  IF ~~ THEN REPLY #43944 /* ~"Je v jiné kavárně na východ odsud, přes tuto čtvrť."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #43945 /* ~"Nemelle děkovat muži za tuto báječnou zprávu. Brzy jít navštívit její nejlepší přítelkyně Aelwyn. Ale teď muset odměnit cizince..."~ */
  IF ~~ THEN REPLY #43946 /* ~"Ne, to je v pořádku... Nechci žádnou odměnu."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #43947 /* ~Počkej, až tě odmění.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43948 /* ~Nemelle se dotkla ukazováčkem svých rtů a vyloudila slaboučký, tichý zvuk.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #43949 /* ~"Ona se přiblížit k cizinci, položit její ruce na jeho hruď a políbit bledou, hrubou kůži jeho tváře. Vlít do něj život, který jej posílit... toto tedy být jeho odměnou."~ */
  IF ~~ THEN REPLY #43950 /* ~Čekej.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
AddexperienceParty(8000)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43951 /* ~Když čekáš, cítíš lehký pálivý pocit na své tváři a hrudi. Tento pocit se rozlévá po celém tvém těle a začínáš se cítit silnější a živější.~ */
  IF ~~ THEN REPLY #43952 /* ~"Díky. Mám nějaké otázky."~ */ GOTO 11
  IF ~~ THEN REPLY #43953 /* ~"Díky, Nemelle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 5.3 10.0 17.3 18.2
  SAY #43954 /* ~"Nemelle slyšet cizincovy otázky, ale nemoci odpovědět na žádnou. Muset hledat jeho odpovědi někde jinde."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67835 /* ~"Fajn. Ale... hledáš někoho?"~ */ GOTO 14
  IF ~~ THEN REPLY #43955 /* ~"Ale... já jsem se ještě ani nezeptal..."~ */ GOTO 12
  IF ~~ THEN REPLY #43956 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #43957 /* ~Nemelle se na tebe usmála, pomalu zavrtěla hlavou, tvůj obličej se zrcadlil v jejích třpytících se očích. "Být otráven, být popleten, konečně se vzdát. Být jasné, že tato žena nevědět více, než by mohl on využít -- nebo pokud vědět, ona nemoci být přesvědčena se s ním o to podělit."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67830 /* ~"Fajn. Ale... hledáš někoho?"~ */ GOTO 14
  IF ~~ THEN REPLY #43958 /* ~"Co? Ne... jen mi dovol se na něco zeptat..."~ */ GOTO 13
  IF ~~ THEN REPLY #43959 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #43960 /* ~Otevřel jsi ústa, ale žádná slova z tebe nevyšla. Děláš co můžeš, ale nemůžeš se jí ptát. Nemelle smutně vrtí hlavou.~ */
  IF ~~ THEN REPLY #43961 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.2 5.2 11.0 12.0 17.2
  SAY #43962 /* ~"'Kde jenom být?'" Diví se Nemelle. "O její společnici Aelwyn se domnívat, že ji tady potkat před několika dny." Žena si nešťastně povzdechla. Ovzduší kolem ní, s její sklíčeností, začíná chladnout. "Jak dlouho muset hledat v tomto rozlehlém cizím městě, než najít její nejdražší přítelkyni?"~ */
  IF ~~ THEN REPLY #43963 /* ~"Mohl bych ti pomoci najít tvou přítelkyni. Jak vypadá?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_2","GLOBALGood",1)
SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #43964 /* ~"Mohl bych ti pomoci ji najít -- za odměnu, samozřejmě."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nemelle_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #43965 /* ~"Doufám, že ji najdeš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #43966 /* ~Nemelle sepnula ruce a sklonila před tebou svou hlavu. "Ona by být velmi potěšena slyšet zprávy o její přítelkyni! Ona říci milému cizinci, jak vypadat Aelwyn, aby ji poznat, když jít kolem ní." V mysli se ti vybavil obraz Aelwyn -- žena podobná Nemelle, ale se zlatýma očima a ohnivě karmínovými vlasy.~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43967 /* ~"Já jsem vlastně tu ženu potkal."~ */ JOURNAL #39493 /* ~Nabídl jsem pomoc tajemné ženě Nemelle, že jí najdu její přítelkyni. Jak se ukázalo, její přítelkyni už znám, je to Aelwyn. Nemelle mě odměnila magickým polibkem, který mi zvýšil maximální životy o tři.~ */ GOTO 6
  IF ~~ THEN REPLY #43968 /* ~"Až ji najdu, vrátím se. Sbohem."~ */ JOURNAL #39491 /* ~Souhlasil jsem, že najdu tajemné ženě Nemelle její přítelkyni Aelwyn, která je vysoká, krásná žena se zlatýma očima a rudými vlasy.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #43969 /* ~Nemelle mluví pomalu a se sklíčeným pohledem: "Ona vědět, jak cizinec brzy poznat, že nemít nic co zaplatit. Ať je jeho cena jakákoliv, ona by mu nemoci vyhovět."~ */
  IF ~~ THEN REPLY #43970 /* ~"Tak to tedy pro tebe udělám jako laskavost."~ */ DO ~SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43971 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43972 /* ~"Tak na to zapomeň. Sbohem."~ */ EXTERN ~DMORTE~ 471
END

IF ~  Global("Nemelle","GLOBAL",1)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #43973 /* ~Když tě žena zdraví, krásně se usmívá. Její krása není o nic méně úchvatnější, než když jsi ji uviděl poprvé. "Opět se potkat s cizincem. Proč,' ona se divit, 'on chtít přijít za ní ještě jednou?'"~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43974 /* ~"Nemelle... "Bylo mi řečeno, že znáš ovládací slovo pro tuto láhev."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43975 /* ~"Tvá přítelkyně Aelwyn  se po tobě shání."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~Řekl jsem Nemelle, že jí hledá její přítelkyně Aelwyn. Odměnila mě magickým polibkem, který mi zvýšil maximální životy o tři.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43976 /* ~"Nehledáš někoho?"~ */ GOTO 14
  IF ~~ THEN REPLY #43977 /* ~"Mám nějaké otázky..."~ */ GOTO 11
  IF ~~ THEN REPLY #43978 /* ~"Vlastně nic, sbohem."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",2)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 18 // from:
  SAY #43979 /* ~Když tě žena zdraví, krásně se usmívá. Její krása není o nic méně úchvatnější, než když jsi ji uviděl poprvé. "Nemelle zadržet dech, když se cizinec blížit. 'Najít on Aelwyn?' ona být zvědavá."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43980 /* ~"Bylo mi řečeno, že znáš ovládací slovo pro tuto láhev."~ */ GOTO 4
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43981 /* ~"Našel jsem Aelwyn. Ona tě hledá taktéž."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~Řekl jsem Nemelle, že jsem jí našel její přítelkyni Aelwyn. Odměnila mě magickým polibkem, který mi zvýšil maximální životy o tři.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43982 /* ~"Nenašel jsem ji. Mám nějaké otázky..."~ */ GOTO 11
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43983 /* ~"Ne, jen jdu kolem. Sbohem."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",3)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 19 // from:
  SAY #43984 /* ~Nemelle sepnula ruce a sklonila před tebou svou hlavu. Když ji konečně zvedla a usmála se na tebe, rozlil se po tvém těle závan příjemného pocitu -- způsobujícího téměř závrať. "Nemelle děkovat cizinci ještě jednou. Ona jenom doufat, že on vědět, jak šťastná se ona cítit při setkání s Aelwyn."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #68508 /* ~"Bez... problému... Já... řekli mi, že bys měla znát příkazové slovo pro tuhle láhev."~ */ GOTO 4
  IF ~~ THEN REPLY #68510 /* ~"Já... myslím že ano. Sbohem, Nemelle."~ */ EXIT
END

IF ~  Global("Attack_Nemelle","AR0600",1)
~ THEN BEGIN 20 // from:
  SAY #43986 /* ~Žena na tebe hrozivě vrčí, v jejích fialových očích se zračí čistá nenávist. Mluví, jako by předčítala z knihy: "'Ona křičet, ty hlupáku. 'Jak si tak moci dovolit napadnout dceru Asaharmovu! Být pes...' Ona zpřísnit její pohled na něj. '...a jako pes on zemřít!'" Pak se na tebe chladně podívala a upila vína ze svého poháru.~ */
  IF ~~ THEN REPLY #43987 /* ~"Jé...?"~ */ GOTO 21
  IF ~~ THEN REPLY #43988 /* ~Ignoruj ji, připrav si útok.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #43989 /* ~Skučící a v agónii jsi klesnul k zemi... tvé vnitřnosti jako by se rozvířily a začínáš vykašlávat velké chuchvalce sražené černé krve. Nakonec ses zhroutil na ulici a zmítáš se v křečích a poslední špetka života z tvého těla vyprchala...~ */
  IF ~~ THEN REPLY #43990 /* ~Padni do temnoty...~ */ DO ~Kill(Protagonist)
~ EXIT
END
