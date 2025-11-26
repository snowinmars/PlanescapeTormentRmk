// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSANDOZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSANDOZ~

IF ~~ THEN BEGIN 0 // from:
  SAY #46769 /* ~Zpoza dveří se ozval tlumený hlas. "Jdi pryč!"~ */
  IF ~~ THEN REPLY #46770 /* ~"Ty jsi Sandoz?"~ */ GOTO 2
  IF ~~ THEN REPLY #46915 /* ~"Dobře, jdu pryč. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46916 /* ~Sandozův hlas je ztlumen tlustými dveřmi. "Co chceš?!" Hlas zní zoufale a osaměle.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46917 /* ~"Přišel jsem si s tebou promluvit, Sandozi."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46918 /* ~"Přišel jsem ti říct, co povídala tvoje dcera."~ */ GOTO 4
  IF ~~ THEN REPLY #46919 /* ~"Přišel jsem ti říct, že to můžeš klidně skončit."~ */ GOTO 6
  IF ~~ THEN REPLY #46920 /* ~"Řekli mi, ať si s tebou promluvím. Asi nechtějí, abys byl zemřel?"~ */ GOTO 8
  IF ~~ THEN REPLY #46921 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #46922 /* ~Hlas vyštěkl. "Kdo jiný bych byl? Tohle jsou mé místnosti, moje frakce..." Hořce se směje. "Tohle je místo, kde umřu..."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46923 /* ~"Pověz mi o sobě, Sandozi."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46924 /* ~"Nechceš slyšet, co řekla tvoje dcera?"~ */ GOTO 4
  IF ~~ THEN REPLY #46925 /* ~"No, tak hodně štěstí. Stejně na tebe všichni kašlou."~ */ GOTO 6
  IF ~~ THEN REPLY #46926 /* ~"Řekli mi, ať si s tebou promluvím. Asi nechtějí, abys byl zemřel?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #46927 /* ~"Chceš si promluvit? To chceš? A co takhle poslouchat?" Hlas se odmlčel, aby nabral síly. "Jaký to má smysl, to je všechno, co chci vědět. Proč děláme věci, které děláme? Co je ta věc, která nás pořád žene dál?"~ */
  IF ~~ THEN REPLY #46928 /* ~Čekej, dokud nebude pokračovat.~ */ GOTO 15
  IF ~~ THEN REPLY #46929 /* ~"Řekl bych, že dál nás vede samotný život."~ */ GOTO 11
  IF ~~ THEN REPLY #46930 /* ~"Nevím, co?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #46931 /* ~Odmlčel se. Po chvíli se ozvalo: "Ty jsi mluvil s mou dcerou?"~ */
  IF ~~ THEN REPLY #46932 /* ~"Ano. A řekla tohle: "Celý život je zkouška. Nikdo nemůže čekat, že skočí přímo na konec. To není odpověď. Pouze Strážci Zkázy a Spalovači věří v úplný rozpad - a ty jsi s nimi nikdy nesouhlasil. Zapamatuj si to."~ */ GOTO 5
  IF ~~ THEN REPLY #46933 /* ~"Ano, a také řekla, že stejně tak se můžeš zabít sám."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46934 /* ~Dutě se zasmál. "Tohle řekla? Dej mi minutku."~ */
  IF ~~ THEN REPLY #46935 /* ~"Máš času, kolik chceš."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 4.1 9.2 10.4 13.1 15.1
  SAY #46936 /* ~Slyšíš tlumený vzlyk, nadávku. Odmlka. Slyšíš skřípání dřeva na podlaze, náhlý pohyb a nezaměnitelný zvuk prasknutí kosti.~ */
  IF ~~ THEN REPLY #46937 /* ~"Tak takhle je to tedy..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
SetGlobal("G_Test3","GLOBAL",7)
MoveToPoint([337.740])
PlaySoundNotRanged("SPE_11")
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0 14.0
  SAY #46938 /* ~Když promluví znovu, hlas zní trochu vyváženěji. "Jdi dolů a řekni Keldorovi, že jsi mi do hlavy natlačil trochu rozumu. Zaskočím za ním později... ale svůj úkol jsi splnil. A teď jdi."~ */
  IF ~~ THEN REPLY #46939 /* ~"Díky. Sbohem."~ */ DO ~SetGlobal("G_Test3","GLOBAL",6)
SetDoorLocked("ar0511d1",FALSE)
OpenDoor("ar0511d1")
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 2.3
  SAY #46940 /* ~"Aha... poslali zaujatého cizince, aby mi to rozmluvil, eh? Ha!" Hlas ztichl do spikleneckého šepotu. "Řekli ti, že se k nim můžeš přidat, jestli mě umluvíš? Myslí si, že se budeš pak starat víc?"~ */
  IF ~~ THEN REPLY #46941 /* ~Čekej, dokud nebude pokračovat.~ */ GOTO 9
  IF ~~ THEN REPLY #46942 /* ~"Jenom jsem se chtěl podívat, jestli nemůžu nějak pomoct."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46943 /* ~"No? Řekni něco... Nebo jsi náhle oněměl? Ha! Kdybys viděl jenom polovinu věcí, co já... jenom polovinu věcí..."~ */
  IF ~~ THEN REPLY #46944 /* ~"Co jsi viděl?"~ */ GOTO 10
  IF ~~ THEN REPLY #46945 /* ~"Nemáš tušení, co všechno jsem viděl *já*, Sandozi. A já nevyhrožuju tím, že se zabiju. Vzpamatuj se, chlape a chovej se jako dospělý."~ */ GOTO 13
  IF ~~ THEN REPLY #46946 /* ~"Tak bys měl možná zapadnout do té své sladké nevědomosti. Zabij se..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46947 /* ~"Viděl jsem nepředstavitelné hrůzy. Viděl jsem šíleného, zmučeného boha ovládaného chechtajícími se fiendy. Viděl jsem, jak se vrstva Abyssu vlévá do esence jediné osoby... Viděl jsem znásilněné zákony přírody a viděl jsem všechny lidské pravdy převrácené vzhůru nohama. NIC z toho už mi nedává smysl a já už to nedokážu, nemůžu to dál vydržet! Jaký to má smysl, se tě ptám, jaký to má všechno smysl?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46948 /* ~"To je celý základ filozofie Božích lidí, Sandozi. Jenom si zapamatuj, že procházíš zkouškami. Teď je testováno tvé porozumění, nebo možná expanze tvého intelektu. Podívej se, co jsi udělal a pak se zeptej, co by ses z toho měl naučit."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #46949 /* ~"To je celý základ filozofie Božích lidí, Sandozi. Jenom si zapamatuj, že procházíš zkouškami. Teď je testováno tvé porozumění, nebo možná expanze tvého intelektu. Podívej se, co jsi udělal a pak se zeptej, co by ses z toho měl naučit."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46950 /* ~"To je celý základ filozofie Božích lidí, Sandozi. Jenom si zapamatuj, že procházíš zkouškami. Teď je testováno tvé porozumění, nebo možná expanze tvého intelektu. Podívej se, co jsi udělal a pak se zeptej, co by ses z toho měl naučit."~ */ GOTO 12
  IF ~~ THEN REPLY #46951 /* ~"Nevím, v čem je smysl, ale vypadá to, že samotný život, to je hlavní smysl všeho."~ */ GOTO 11
  IF ~~ THEN REPLY #46952 /* ~"Nemá to smysl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 3.1 8.1 10.3
  SAY #46953 /* ~Odplivl si. Slyšíš, jak sliny narazily do dveří. "Jdi pryč, dokud ti nedoroste mozek, nebo nenajdeš někoho, kdo ti dá odpovědi." Neodpovídá na žádné další otázky, které mu dáváš.~ */
  IF ~~ THEN REPLY #46954 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2 16.0 17.1
  SAY #46956 /* ~Zasmál se. "Učili tě dobře. Alespoň tak. Dej mi chvilku, ať si to promyslím. Nespěcháš doufám nikam."~ */
  IF ~~ THEN REPLY #46957 /* ~"Máš času, kolik chceš. Promysli si to."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #46958 /* ~Zpoza dveří je chvíli slyšet jenom zrychlený dech, potom slabý smích. "Nejsi zrovna taktní, co? Co kdybych ti řekl, že právě teď mám hlavu ve smyčce?"~ */
  IF ~~ THEN REPLY #46959 /* ~"Řekl bych ti, ať se přestaneš chovat jako pitomec a postavíš se realitě. Když se zabiješ, nic tím nedokážeš. Pouze to, že jsi ve zkoušce zklamal."~ */ GOTO 14
  IF ~~ THEN REPLY #46960 /* ~"Řekl bych ti, zkus to. Jestli jsi takový zbabělec, že uvažuješ o vlastním zabití, nemyslím si, že máš dost odvahy, abys to udělal."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46961 /* ~"Ty... Dobrá tedy... dej mi minutku, ať si to promyslím..."~ */
  IF ~~ THEN REPLY #46962 /* ~"Máš času, kolik chceš."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.2
  SAY #46963 /* ~"Pýcha! Pýcha a ego! Neustále si říkáme, že můžeme něco být, že něco znamenáme, že existuje důvod, proč jsme tady, ale nakonec... nakonec je jenom temnota. Já jsem tu konečnou temnotu *viděl*, nemá smysl to popírat. Ale stejně dál pokračujeme, se svou hloupou pýchou. Nemá to žádný smysl."~ */
  IF ~~ THEN REPLY #46964 /* ~"Nikdy jsi neuvažoval o tom, že to, že ses stal Božím člověkem, mělo nějaký smysl?"~ */ GOTO 16
  IF ~~ THEN REPLY #46965 /* ~"No, když se o tom zmiňuješ, tak máš pravdu..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #46966 /* ~"Co tím myslíš?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46967 /* ~"Jednou jsi našel smysl. Věřil jsi, že vše, co potkáme, je zkouška. Věřil jsi, že jsme tady, abychom překonali tu temnotu, dostali se za ni. Neříkej mi, že jsi teď tak zeslábl."~ */ GOTO 12
  IF ~~ THEN REPLY #46968 /* ~"Proč ses přidal k Božím lidem?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #46969 /* ~"Protože jsem si myslel, že to má smysl. Spletl jsem se. Nic nemá smysl. Láska, rodina, bohatství... nic z toho nemá smysl."~ */
  IF ~~ THEN REPLY #46970 /* ~"Všechno to? Nemůžu ti nějak dokázat opak? Že nemáš pravdu?"~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46971 /* ~"Kromě toho, že vše jde dál. Stal ses Božím člověkem, protože jsi nevěřil v šanci na něco tak úžasného. Překonej tuhle zkoušku, Sandozi, a staneš se ještě silnějším."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #46972 /* ~"Najdi někoho, kdo mě přesvědčí o opaku, někoho, kdo mi to dokáže říct jinak. Ty to asi nedokážeš... najdi někoho, kdo ano." Odchází od dveří a konverzace je tím pádem nemožná.~ */
  IF ~~ THEN REPLY #46973 /* ~"Já se vrátím."~ */ EXIT
END

IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #46974 /* ~"Dlužím ti život, cizinče. Nezapomenu na to. Ale právě teď musím něco promyslet. Doufám, že mi odpustíš, když se s tebou nebudu bavit."~ */
  IF ~~ THEN REPLY #46975 /* ~"Jistě. Sbohem."~ */ EXIT
END
