// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR3~

IF ~  Global("Good_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52688 /* ~"Probudil se."~ */
  IF ~~ THEN DO ~SetGlobal("Good_Incarnation","GLOBAL",1)
~ EXTERN ~DINCAR1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63861 /* ~"Vy dva, buďte tiše! Nechte nás ujistit se, že je v pořádku a schovejte si argumenty na později."~ */
  IF ~~ THEN REPLY #63862 /* ~"Kd... kdo vy všichni jste?"~ */ EXTERN ~DINCAR1~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63863 /* ~"Uklidni se. Je jen dezorientovaný, tak jako jsme byli my. Dejte mu chvíli, aby se sebral."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63864 /* ~"Tyhle diskuse jsou nám k ničemu! Dejte mu vlastní prostor, nechte ho být. "~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 4
END

IF ~  Global("Good_Incarnation","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #63865 /* ~Muž před tebou vypadá jako ty, ale jeho tvář se zdá... nějaká klidnější. Jak se blížíš, věnuje ti mírný úsměv přikyvuje hlavou, jako na souhlas. "Jsi v pořádku?"~ */
  IF ~~ THEN REPLY #63866 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Good_Incarnation","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #63867 /* ~Nech ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 8.0
  SAY #63868 /* ~"Měli jsme *vůbec* nějaké jméno? Nebo to bylo jméno jen jednoho z nás?" Muž se jemně usmívá. "Věz, jsem tvůj druh - Já, stejně jako tito ostatní, zemřeli mou smrtí v tvé mysli a tato myšlenka je vše, v čem setrváváme."~ */
  IF ~~ THEN REPLY #63869 /* ~"Ale kdo *jsi* ty?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #63870 /* ~"Oh..." Jeho úsměv povadne a znepokojeně se na tebe podívá. "Musí to pro tebe být matoucí. Nech mě to vysvětlit  - Já jsem jedna z tvých inkarnací. Jednou jsem se ztratil, teď jsem tady."~ */
  IF ~~ THEN REPLY #63871 /* ~"Jak je to možné?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63872 /* ~"Já - nevím. Kdykoliv ses uvnitř Pevnosti nečeho dotknul, kousek tebe byl vzat na povrch." Na chvílí se odmlčí, přemýšlí. "Jeden z ostatních ví, jak se to vůbec mohlo stát - jde to mimo mé chápání."~ */
  IF ~~ THEN REPLY #63873 /* ~"Pokud jsi částí mě, pak jsou věci, které musím vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63874 /* ~"Musím to zvážit - Pak si s tebou znovu promluvím."~ */ EXIT
END

IF ~  Global("Good_Incarnation","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #63875 /* ~Jak se blížíš, tahle inkarnace se na tebe směje a mluví, její hlas provází slabá ozvěna. "Ano?"~ */
  IF ~~ THEN REPLY #63876 /* ~"Kdo jsi?"~ */ GOTO 5
  IF ~~ THEN REPLY #63877 /* ~"Pokud jsi částí mne, pak jsou věci, které musím vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63878 /* ~Nech inkarnaci osamotě.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.1 10.1 11.1 12.1 13.0 14.1 15.0 16.0 17.1 18.1 19.0 20.0 29.2
  SAY #63879 /* ~"Ptej se."~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63880 /* ~"Aby odešel, musíš se znovu stát mou součástí. Uděláš to?"~ */ GOTO 21
  IF ~  Global("Know_Traces","GLOBAL",1)
~ THEN REPLY #63881 /* ~"Před tím si řekl, že když zemřu, stopy mé mysli se ztratí. To je to, co způsobilo, že jste se objevili. Spravně?"~ */ GOTO 29
  IF ~~ THEN REPLY #63882 /* ~"Měl jsem životů nepočítaně. Proč jsou tu jenom tři inkarnace?"~ */ GOTO 10
  IF ~~ THEN REPLY #63883 /* ~"Ty víš, proč jsem se chtěl stát nesmrtelným?"~ */ GOTO 14
  IF ~~ THEN REPLY #63884 /* ~"Jaký byl tvůj život?"~ */ GOTO 17
  IF ~~ THEN REPLY #63885 /* ~"Do Pevnosti jsem přišel s přáteli... ale byli ode mne odděleni."~ */ GOTO 16
  IF ~~ THEN REPLY #63886 /* ~"Jak můžu tohle místo opustit?"~ */ GOTO 20
  IF ~~ THEN REPLY #63887 /* ~"Už nemám nic víc, na co bych se zeptal - můžem si promluvit později."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #63888 /* ~"Já nevím. Možná jsme byli ty tři kusy, které stále ještě zůstali přítomny v tvé mysli."~ */
  IF ~~ THEN REPLY #63889 /* ~"Přítomny? Jak?"~ */ DO ~SetGlobal("Know_Traces","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #63890 /* ~"Je tu ještě neco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63891 /* ~"Musím to uvážit - Pak si s tebou zase promluvím."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63892 /* ~"Nejsem si zcela jistý, ale hádám, že když zemřeme, stopy té dřívější osobnosti mohou zůstat v tvojí mysli - a vím, že někdy tak můžeme cítit sami sebe."~ */
  IF ~~ THEN REPLY #63893 /* ~"Jak?"~ */ GOTO 12
  IF ~~ THEN REPLY #63894 /* ~"Je tu ještě neco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63895 /* ~"Musím to uvážit - Pak si s tebou zase promluvím."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 29.1
  SAY #63896 /* ~"Například, když jsi se dostal do nebezpečí nebo si mu byl blízko, zjistil jsem, že se mohu hýbat, pomáhat ti jít správným směrem."~ */
  IF ~~ THEN REPLY #63897 /* ~"Takže *ty* jsi byl ten plíživý pocit, který jsem vzadu v hlavě míval?"~ */ GOTO 13
  IF ~~ THEN REPLY #63898 /* ~"Je tu ještě neco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63899 /* ~"Musím to uvážit - Pak si s tebou zase promluvím."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63900 /* ~"Jsem na rozpacích z popisu, jak si to cítil, ale je to možné, ano."~ */
  IF ~~ THEN REPLY #63901 /* ~"Je tu ještě neco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63902 /* ~"Musím to uvážit - Pak si s tebou zase promluvím."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63903 /* ~"Ne, já ne. Myslím, že to mohl být jen skrytý strach. Možná to ví jeden z ostatních, ale já ne."~ */
  IF ~~ THEN REPLY #63904 /* ~"Co tě nutí si myslet, že to byl skrytý strach?"~ */ GOTO 15
  IF ~~ THEN REPLY #63905 /* ~"Je tu ještě neco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63906 /* ~"Musím to uvážit - Pak si s tebou zase promluvím."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63907 /* ~Muž se na tebe usmívá, ale není v tom humor; jestliže něco, tak spíš utrpení. "Který muž si přeje zemřít?" Pomalu pokývá hlavou. "Jen jeden z nás zná pravý důvod, proč jsme se přenesli do tohoto stavu."~ */
  IF ~~ THEN REPLY #63908 /* ~"Je tu ještě neco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63909 /* ~"Musím to uvážit - Pak si s tebou zase promluvím."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63910 /* ~"Pak se obávám, že tvoji přátelé už jsou mrtví." Muž vypadá mrzutě. "Toto místo plodí život plný nenávisti."~ */
  IF ~~ THEN REPLY #63911 /* ~"Je tu ještě něco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63912 /* ~"Musím to uvážit - Pak si s tebou zase promluvím."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY #63913 /* ~"Bylo to tiché a dlouhé a plnilo se mnohou bolestí i radostí, tak jak život očekává. Jeden čas jsem sloužil jako kartograf a několik let procházel Sféry."~ */
  IF ~~ THEN REPLY #63914 /* ~"Jak si zemřel?"~ */ GOTO 18
  IF ~~ THEN REPLY #63915 /* ~"Je tu ještě neco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63916 /* ~"Výborně. Víc si spolu promluvíme později."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #63917 /* ~"Ke konci, během mé cesty po polích Bytopie, strašlivé stíny mi vzali život, když jsem spal. Zemřel jsem, cítiv na sobě jejich drápy." ~ */
  IF ~~ THEN REPLY #63918 /* ~"Jsou to stíny všech těch, kteří zemřeli na těchto místech."~ */ GOTO 19
  IF ~~ THEN REPLY #63919 /* ~"Je tu ještě neco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63920 /* ~"Výborně. Víc si spolu promluvíme později."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63921 /* ~Muž vypadá dotčeně. "Ano, já vím... Já vím, že teď. Nikdo nemůže být na tomto místě lítosti a necítit jejich agónii."~ */
  IF ~~ THEN REPLY #63922 /* ~"Je tu ještě něco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63923 /* ~"Výborně. Víc si spolu promluvíme později."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.6
  SAY #63924 /* ~"Já nevím - Nikdy před tím jsem tady nebyl. Jeden z ostatních by možná mohl vědět, jak toto místo opustit, ale já ne."~ */
  IF ~~ THEN REPLY #63925 /* ~"Je tu ještě něco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63926 /* ~"Výborně. Víc si spolu promluvíme později."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.0
  SAY #63927 /* ~"Měl jsem podezření - nikdy jsme nepřemýšleli o existenci jako je tato a nepřirozenosti jakou naše nesmrtelnost je, toto místo to spojí." Pokyvuje. "Ano, znovu se s tebou sloučím."~ */
  IF ~~ THEN REPLY #63928 /* ~"Víš, že přestaneš existovat?"~ */ GOTO 22
  IF ~~ THEN REPLY #63929 /* ~"Výborně."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #63930 /* ~Přikyvuje. "Ano, vím."~ */
  IF ~~ THEN REPLY #63931 /* ~"Výborně."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 36.0
  SAY #63932 /* ~"Ještě jedna věc... jenom toto..." Inkarnace se na chvíli odmlčí, propátrávajíc tvůj obličej. "Než upadnu v zapomnění - je tu něco, co bych chtěl vědět."~ */
  IF ~~ THEN REPLY #63933 /* ~"Trochu času ještě vyšetřit mohu - co chceš vědět?"~ */ GOTO 24
  IF ~~ THEN REPLY #63934 /* ~"Na to nemám čas. Jestliže mi opravdu chceš pomoci, potřebuju, aby ses sám sebe vzdal."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63935 /* ~Studuje tvé oči, jeho výraz chmurne. "*Žil* si svůj život - měl jsi krátký život? A nakonec... stál za to?"~ */
  IF ~~ THEN REPLY #63936 /* ~"Ne. Narodil jsem se na hrozivém místě a je mi líto, jak jsem ho žil."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63937 /* ~"Zdál se... krátký. Ale to málo, co jsem zažil, jsem si vychutnal a na nic si nepřeji zapomenout."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63938 /* ~"Příliš mnoho jsem cestoval, abych to opravdu ocenil. Možná se to uvidí potom, co tuhle věc uzavřeme."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63939 /* ~"Tvoje otázka není k věci - Já teď odejdu."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63940 /* ~"Zdá se, že tento život působil jen bolest, sobě i ostatním. Chtěl bych vidět konec a ještě jednou se smířit se Sférami."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 24.1 24.2 24.3 24.4
  SAY #63941 /* ~Pokýve hlavou a chvíli máš dojem, že chce něco říct, ale pak se zhroutí, život z něj vyprchá a spojí se s tvým. Jak klesá na černé kameny, vzadu v hlavě vnímáš plíživý pocit, který tě rozechvívá a ty víš, že inkarnace už více není.~ */
  IF ~~ THEN REPLY #63942 /* ~"Sbohem..."~ */ DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
SetGlobal("Absorb_Good_Incarnation","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63943 /* ~Třetí inkarnace mluví měkce, ale zní bolestivě. "Proč si udělal takovou hroznou věc?"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 32
END

IF ~~ THEN BEGIN 27 // from:
  SAY #63944 /* ~Třetí inkarnace pokračuje. "Možná v téhle věci neexistují žádné odpovědi. Možná nikdy neexistovaly."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 73
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63945 /* ~Třetí inkarnace pokračuje. "Možná v téhle věci neexistují žádné odpovědi. Možná nikdy neexistovaly."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 74
END

IF ~~ THEN BEGIN 29 // from: 9.1
  SAY #63946 /* ~"Mé porozumnění není dokonalé, ale ano, vypadá to jako ten případ. A my můžeme v tenkých drahách cítit sami sebe."~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #63947 /* ~"Takže, je možné, že ten první z nás - ten opravdový z nás, ten před všemi inkarnacemi, může stále ještě být zahrabán někde v mé mysli."~ */ DO ~AddexperienceParty(96000)
~ GOTO 30
  IF ~~ THEN REPLY #63948 /* ~"Jak jako?"~ */ GOTO 12
  IF ~~ THEN REPLY #63949 /* ~"Je tu ještě něco jiného, co bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63950 /* ~"Výborně. Víc si spolu promluvíme později."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #63951 /* ~Výraz na tváři inkarnace se mihne jen na moment, ale je to jako okno a náhle si uvědomuješ, kdo je ten, s kým mluvíš.~ */
  IF ~~ THEN REPLY #63952 /* ~"*Ty* jsi byl prvním z nás."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63953 /* ~Oči inkarnace získají bázlivý nádech a její pohled se odvrátí od tvého. "Já vím co si myslíš - ale to není ten případ. Myslíš, že poznání mysli prvního z nás ti zde nějak pomůže, v tomto místě. Nepomůže."~ */
  IF ~~ THEN REPLY #63954 /* ~"Ale proč - Mám příliš mnoho otázek, na které TY neumíš odpovědět. Proč jsme se stali nesmrtelnými? Proč?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #63955 /* ~"Protože pokud zemřeme, *opravdu* zemřeme..." Inkarnace zvedne svůj pohled na tebe a její oči jsou jako ocel. "Mrtvé království *nemůže* být rájem, ne pro nás. Pokud si mluvil s těmi ostatními zde, víš, že střípky zla jejich životů nejsou nic než kapkou vody v porovnání se zlem, které mám v sobě já. Život, jeden život, i *bez* tisíců ostatních, ti dá vstupenku na věčnost v Nižších Sférách."~ */
  IF ~~ THEN REPLY #63956 /* ~"Ale ty vypadáš mnohem... klidněji. Víc vyrovnaně."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63957 /* ~"Stal jsem se tou cestou, ano. Protože pro mě..." Jeho hlas získá hlubokou ozvěnu. "Je to *lítost*, která může změnit charakter člověka." Vzdychne. "Ale bylo příliš pozdě. Už jsem byl zatracen."~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #63958 /* ~"Přišel jsem na to, že změnit povahu nestačí. Potřebuji více času a potřebuji více života. Tak jsem přišel za největší z Šedých sester a žádal ji o spásu - zkusit to a pomoci mi přežít tak dlouho, abych mohl napravit všechnu bolest, kterou jsem způsobil. Udělat mne nesmrtelným."~ */
  IF ~~ THEN REPLY #63959 /* ~"A Ravel to udělala. Ale když poprvé zkoušela tvojí nesmrtelnost a zabila tě, všechno si zapomněl. *Všechno.*"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #63960 /* ~Vypadá zlomeně. "A od té doby Sféry umírají. Zločin je velký a vina je má."~ */
  IF ~~ THEN REPLY #63961 /* ~"Ještě je spousta otázek, které na tebe mám - kdo jsi, jaký tvůj *život* byl? Kdo-"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63962 /* ~Inkarnace zavrtí hlavou, přeruší tě. "Až se stanu ničím, až se spojím s tebou, dostaneš odpovědi, které hledáš. Možná bude chvíli trvat než si je srovnáš, ale jsou tam." Smutně se usměje. "Je obtížné vyprávět život slovy."~ */
  IF ~~ THEN REPLY #63963 /* ~"Dobře tedy... staneme se jedním. Jsi připraven?"~ */ DO ~SetGlobal("Absorb_Real_Incarnation","GLOBAL",1)
~ GOTO 23
END
