// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOLMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOLMI~

IF ~  GlobalLT("Jolmi","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #43388 /* ~Zdá se, že tato přátelsky vypadající žena někoho hledá. Když ses k ní přiblížil, její oči spočinuly na tvé tváři. "Vy tam, pane... můžu s vámi prohodit pár slov?"~ */
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43389 /* ~"Jistě..."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43852 /* ~"Co chceš?"~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #43853 /* ~"Ano... jmenuješ se Jolmi, je to tak? Mluvil jsem s tvým poslem."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ JOURNAL #63980 /* ~Šlechtična jménem Jolmi ke mně přišla se zvláštním návrhem... zaplatí mi za možnost mě 'zavraždit'. Snadný způsob, jak naplnit mou kapsu, předpokládám, že by vše mohlo proběhnout hladce...~ */ GOTO 4
  IF ~~ THEN REPLY #43854 /* ~"Ne, ne teď. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #43855 /* ~"Jmenuji se Jolmi, šlechtična z rodu Syrmů. Hledám jistého člověka, jak mi bylo řečeno, který nemůže zemřít... velmi zjizvený muž, pro něhož se smrt stala tou nejvšednější nepříjemností. To málo o jeho vzhledu, co se mi podařilo získat, na tebe docela sedí... jsi ten člověk?"~ */
  IF ~~ THEN REPLY #43856 /* ~"Ano jsem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Jolmi_1","GLOBALLaw",2)
SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Šlechtična jménem Jolmi ke mně přišla se zvláštním návrhem... zaplatí mi za možnost mě 'zavraždit'. Snadný způsob, jak naplnit mou kapsu, předpokládám, že by vše mohlo proběhnout hladce...~ */ GOTO 4
  IF ~~ THEN REPLY #43857 /* ~"Ne, nejsem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jolmi_1","GLOBALLaw",-1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #43858 /* ~Rázně dodala. "V tom případě, jsem ti dlužna poděkování za tvůj čas. Sbohem."~ */
  IF ~~ THEN REPLY #43859 /* ~"Počkej... měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #43860 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.1 13.0
  SAY #43861 /* ~Jolmi zavrtěla hlavou. "Jsou tady jiní, kteří mohou odpovědět na tvé otázky. Určitě někoho najdeš a mě nech pokračovat v mém hledání. Sbohem."~ */
  IF ~  GlobalLT("Jolmi","GLOBAL",3)
~ THEN REPLY #43862 /* ~"Vlastně, já jsem ten člověk, kterého hledáš."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Šlechtična jménem Jolmi ke mně přišla se zvláštním návrhem... zaplatí mi za možnost mě 'zavraždit'. Snadný způsob, jak naplnit mou kapsu, předpokládám, že by vše mohlo proběhnout hladce...~ */ GOTO 4
  IF ~~ THEN REPLY #43863 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.0 3.0 11.0
  SAY #43864 /* ~"Jsem tedy potěšena, že jsem se s tebou setkala." Nepatrně se uklonila. "Dávám ti poněkud neobvyklou nabídku... ačkoliv musíš připustit, že jsi neobvyklý člověk. Dám ti tisíc měďáků... za tvé svolení zabít tě. Jsi ochoten diskutovat o této záležitosti?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43865 /* ~"Jistě, proč ne?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43866 /* ~"Jistě, proč ne?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43867 /* ~"Jistě, proč ne?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43868 /* ~"Ale... proč?"~ */ GOTO 5
  IF ~~ THEN REPLY #43869 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.3 12.3
  SAY #43870 /* ~Jolmi nehnula ani brvou. "A proč ne? Myslím, že by to mohla být zajímavá zkušenost - zaplatit někomu za výsadu zavraždit ho. Když jsem poprvé slyšela řeči o tvé existenci, jak bych mohla odolat? Takže... jaká je tvá odpověď? Můžeme se bavit o dalších detailech?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43871 /* ~"Ano. Proberme detaily."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43872 /* ~"Ano. Proberme detaily."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43873 /* ~"Ano. Proberme detaily."~ */ GOTO 9
  IF ~~ THEN REPLY #43874 /* ~"Moment... kde jsi zaslechla tyto řeči?"~ */ GOTO 6
  IF ~~ THEN REPLY #43875 /* ~"To neudělám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #43876 /* ~Jolmi se zamračila. "V Městské hale se člověk dozví všechno možné. Jak by jeden mohl přeslechnout pověsti o člověku jako jsi ty? Ještě jednou se ptám: uvažuješ o mé nabídce?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43877 /* ~"Ano. Proberme detaily."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43878 /* ~"Ano. Proberme detaily."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43879 /* ~"Ano. Proberme detaily."~ */ GOTO 9
  IF ~~ THEN REPLY #43880 /* ~"To neudělám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.0 12.0
  SAY #43881 /* ~Po krátké rozmluvě jste se domluvili na následujících podmínkách: Jolmi ti zaplatí tisíc měďáků; ty jí na oplátku dovolíš vrazit dýku do svého srdce. Počká až znovu procitneš a poté ti zaplatí.

"Souhlasíš s tím tedy?"~ */
  IF ~~ THEN REPLY #43883 /* ~"Ano... pojďme na to."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43884 /* ~"Ne, myslím že ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1 6.1 12.1
  SAY #43885 /* ~Po krátké rozmluvě jste se domluvili na následujících podmínkách: Jolmi ti zaplatí patnáct set měďáků; ty jí na oplátku dovolíš vrazit dýku do svého srdce. Počká až znovu procitneš a poté ti zaplatí.

"Souhlasíš s tím tedy?"~ */
  IF ~~ THEN REPLY #43886 /* ~"Ano... pojďme na to."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43887 /* ~"Ne, myslím že ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.2 6.2 12.2
  SAY #43888 /* ~Po krátké rozmluvě, jste se domluvili na následujících podmínkách: Jolmi ti zaplatí dva tisíce měďáků; ty jí na oplátku dovolíš vrazit dýku do svého srdce. Počká až znovu procitneš a poté ti zaplatí.

"Souhlasíš s tím tedy?"~ */
  IF ~~ THEN REPLY #43889 /* ~"Ano... pojďme na to."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(2000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43890 /* ~"Ne, myslím že ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0 9.0
  SAY #43891 /* ~Záležitost je ve chvilce vyřízena... než ses zotavil, už si stačila očistit a schovat svou dýku. Když ses zvedl z podlahy v Městské hale, Jolmi ti podala několik váčků s měďáky, zatímco sis třel svou bolavou hruď. 

"Musím připustit určité zklamání. No, dobrá... nicméně dobře utracené peníze. Sbohem."~ */
  IF ~~ THEN REPLY #43892 /* ~"Ano... sbohem."~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
~ JOURNAL #63981 /* ~Dovolil jsem Jolmi, aby mě za slušnou sumičku pěněz bodla do srdce... zdála se z té zkušenosti trochu zklamaná, ale já jsem velice potěšený z tolika peněz.~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #43893 /* ~Jolmi se na tebe podívala svým nelítostným pohledem. "Ano?"~ */
  IF ~~ THEN REPLY #43894 /* ~"Jsem člověk, kterého hledáš."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Šlechtična jménem Jolmi ke mně přišla se zvláštním návrhem... zaplatí mi za možnost mě 'zavraždit'. Snadný způsob, jak naplnit mou kapsu, předpokládám, že by vše mohlo proběhnout hladce...~ */ GOTO 4
  IF ~~ THEN REPLY #43895 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #43896 /* ~"Nic... sbohem."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #43897 /* ~Když jsi k Jolmi přišel, její chladné oči se zableskly poznáním. "Znovu jsi zvážil mou nabídku? Tisíc měďáků za výsadu zabít tě?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43898 /* ~"Ano. Promluvme si o tom."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43899 /* ~"Ano. Promluvme si o tom."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43900 /* ~"Ano. Promluvme si o tom."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43901 /* ~"Nejdříve mi řekni, proč to vůbec chceš."~ */ GOTO 5
  IF ~~ THEN REPLY #43902 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",4)
~ THEN BEGIN 13 // from:
  SAY #43903 /* ~Jolmi se na tebe podívala svým nelítostným pohledem. Poznala tě. "Ano?"~ */
  IF ~~ THEN REPLY #43904 /* ~"Mám nějaké otázky, Jolmi..."~ */ GOTO 3
  IF ~~ THEN REPLY #43905 /* ~"Jen procházím... sbohem."~ */ EXIT
END
