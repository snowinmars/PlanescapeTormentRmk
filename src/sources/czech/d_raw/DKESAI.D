// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESAI~

IF ~  Global("Kesai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2939 /* ~Nebezpečně smyslná žena s hustou hřívou vlnitých vlasů barvy havraní černi, namodralou kůží a třpytivýma, karmínovýma očima, které vypadají jako rubíny, ve kterých hoří oheň. I když není krásná v běžném slova smyslu, díky svým rysům vypadá exoticky a velice atraktivně.~ */
  IF ~~ THEN REPLY #2940 /* ~"Zdravím..."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #40857 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40858 /* ~Ženin hlas je smyslný a hluboký: "A já zdravím *tebe*, pane." Šlehla po tobě svýma žhavýma očima. "Jsem Kesai-Serris. A teď mi pověz: co pro tebe můžu udělat, hmmm?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 432
  IF ~  !NearbyDialog("DMorte")
Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40859 /* ~"Kesai? Ty jsi Ravelina dcera?"~ */ GOTO 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40860 /* ~"No, jaké služby většinou poskytuješ návštěvníkům?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40861 /* ~"Mám nějaké otázky..."~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40862 /* ~"Nic, díky. Sbohem."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #40863 /* ~Kesai se od srdce zasmála a odhalila při tom špičáky, které se dají bez nadsázky označit jako tesáky. Zavrtěla hlavou a usmála se na Morteho. "Pravda. Ale prosím... co pro tebe můžu udělat?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40864 /* ~"Kesai? Ty jsi Ravelina dcera?"~ */ GOTO 41
  IF ~~ THEN REPLY #40865 /* ~"No, jaké služby většinou poskytuješ návštěvníkům?"~ */ GOTO 4
  IF ~~ THEN REPLY #40866 /* ~"Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #40867 /* ~"Nic, díky. Sbohem."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.3 66.3 67.3 68.4
  SAY #40868 /* ~Svraštila obočí. "Škádlíš mě? Pfff." Kesai se na tebe usmála, ale její rudé oči zůstávají zúžené. "Přijď, až si budeš chtít promluvit, hmm?"~ */
  IF ~~ THEN REPLY #40869 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 66.1 67.1 68.2
  SAY #40870 /* ~"Mluvím, pochopitelně! Většinou o snech, často o těch erotických... ale ne vždycky!" Kesai na tebe zamrkala. "Takže! Povyprávíš mi nějaký tvůj? Nemusíš se stydět, už jsem slyšela všechno, víš. Nic mě nepřekvapí ani nešokuje. A já miluju sny cizích lidí. Můžeme si nějaké vyměnit, jestli chceš - ale ty musíš začít."~ */
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40871 /* ~"Jakmile jsem tě uviděl, tak se mé sny poněkud změnily..."~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40872 /* ~"Jakmile jsem tě uviděl, tak se mé sny poněkud změnily, má paní..."~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 7
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40873 /* ~"Vážně nemám moc snů. Dlouhou dobu jsem neměl vůbec žádné."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40874 /* ~"Já... mě se vlastně nic nezdá."~ */ GOTO 21
  IF ~~ THEN REPLY #40875 /* ~"Ne... raději ne."~ */ GOTO 5
  IF ~~ THEN REPLY #40876 /* ~"Rád bych, ale nemám moc času."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.4 4.5 6.2 6.3 13.1 14.1 15.2 15.3 16.2 17.2 17.3 19.2 19.3 23.1
  SAY #40877 /* ~Kesai našpulila rty, ale po chvíli pokrčila rameny. "Jak chceš! Budu čekat, pro případ že si to rozmyslíš..."~ */
  IF ~~ THEN REPLY #40878 /* ~"Počkej... Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #40879 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #40880 /* ~"Ale?" Kesai se usmála a zavrtěla hlavou. "No tak... chci slyšet pravdu. O čem se ti zdálo?"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40881 /* ~"Vážně nemám moc snů. Dlouhou dobu jsem neměl vůbec žádné."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40882 /* ~"Já... mě se vlastně nic nezdá."~ */ GOTO 21
  IF ~~ THEN REPLY #40883 /* ~"Raději bych o tom nemluvil."~ */ GOTO 5
  IF ~~ THEN REPLY #40884 /* ~"Rád bych ti to řekl, ale mám málo času."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #40885 /* ~"*Ale*?" Kesai se usmála a její zářivě rudé oči tě znovu přejely. "Vypadáš jako divoch, víš? Pověz mi: jsi na své milenky drsný? Myslím během *aktu*... fyzického aktu?"~ */
  IF ~~ THEN REPLY #40886 /* ~"Myslíš 'násilnický'?"~ */ GOTO 8
  IF ~~ THEN REPLY #40887 /* ~"Proč se ptáš na něco takového?"~ */ GOTO 9
  IF ~~ THEN REPLY #40888 /* ~"Ne, vlastně jsem docela jemný."~ */ GOTO 10
  IF ~~ THEN REPLY #40889 /* ~"Ano, řekl bych, že ano."~ */ GOTO 10
  IF ~~ THEN REPLY #40890 /* ~"Jenom, když se jim to tak líbí."~ */ GOTO 10
  IF ~~ THEN REPLY #40891 /* ~"To vlastně záleží na tom, jakou mám náladu."~ */ GOTO 10
  IF ~~ THEN REPLY #40892 /* ~"Já... já to vlastně nevím, vážně."~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40893 /* ~"Nebesa chraňte, ne!" Kesai si rozhořčeně odfrkla. "Někteří lidé na to jdou *pomalu* a *citlivě*... zatímco jiní na to jdou víc zpříma, drsně a rovnou do toho, víš? Zkrátka mě zajímá, kam zapadáš *ty*, to je všechno."~ */
  IF ~~ THEN REPLY #40894 /* ~"Proč se ptáš na něco takového?"~ */ GOTO 9
  IF ~~ THEN REPLY #40895 /* ~"Ne, vlastně jsem docela jemný."~ */ GOTO 10
  IF ~~ THEN REPLY #40896 /* ~"Tak to bych řekl, že jsem tak trochu drsný."~ */ GOTO 10
  IF ~~ THEN REPLY #40899 /* ~"Jsem drsný, jenom když se jim to líbí."~ */ GOTO 10
  IF ~~ THEN REPLY #40900 /* ~"To vlastně záleží na tom, jakou mám náladu."~ */ GOTO 10
  IF ~~ THEN REPLY #40901 /* ~"Já... já to vlastně nevím, vážně."~ */ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #40902 /* ~Kesai pokrčila rameny. "Jsem zvědavá... a ráda se bavím o aktu lásky. Hodně lidí se necítí dobře, když o tom mají mluvit, ale je důležité umět to, především se svým partnerem. Je to dobré pro oba! Doufám, že mí klienti neztratí hlas, až o tom budou mluvit se svými milenkami, pokud už to nedělají. Takže, ještě jsi mi neodpověděl..."~ */
  IF ~~ THEN REPLY #40903 /* ~"Ne, vlastně jsem docela jemný."~ */ GOTO 10
  IF ~~ THEN REPLY #40904 /* ~"Řekl bych, že jsem tak trochu drsný."~ */ GOTO 10
  IF ~~ THEN REPLY #40905 /* ~"Jsem drsný, jenom když se jim to líbí."~ */ GOTO 10
  IF ~~ THEN REPLY #40906 /* ~"To vlastně záleží na tom, jakou mám náladu."~ */ GOTO 10
  IF ~~ THEN REPLY #40907 /* ~"Já... já to vlastně nevím, vážně."~ */ GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 7.4 7.5 8.1 8.2 8.3 8.4 9.0 9.1 9.2 9.3
  SAY #40908 /* ~Kesai s úsměvem přikývla. "Myslela jsem si, že něco takového řekneš. Já jsem taky docela drsná... Ráda se nechávám nosit a mám docela ráda kousání! Ale mám docela ostré zuby a tak si musím dávat pozor. Někdy se nechám unést a pak se objeví pár kapek krve, víš?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 433
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40909 /* ~"Máš ostré zuby?"~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40910 /* ~"Mě by to nevadilo..."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40911 /* ~"Se mnou by to asi neprošlo..."~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40912 /* ~"Ano... no, mám nějaké otázky..."~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40913 /* ~"Aha. Tak to bych měl raději jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #40914 /* ~"Nejspíš pobíhá někde po Pustinách. Ale to byla jenom rétorická otázka, že?" Mrkla na Morteho a pak se otočila zpět k tobě.~ */
  IF ~~ THEN REPLY #40915 /* ~"Máš ostré zuby?"~ */ GOTO 12
  IF ~~ THEN REPLY #40916 /* ~"Myslím, že by mi trocha kousání nevadila..."~ */ GOTO 13
  IF ~~ THEN REPLY #40917 /* ~"Se mnou by kousání asi neprošlo..."~ */ GOTO 16
  IF ~~ THEN REPLY #40918 /* ~"Mám nějaké otázky, Kesai..."~ */ GOTO 26
  IF ~~ THEN REPLY #40919 /* ~"Asi bych měl raději už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #40920 /* ~Kesai přikývla. "Mmm-hmm, to určitě mám. Chceš se podívat? Hele..." Pootevřela ústa a přejela si fialovým jazykem po spodních zubech. Její špičáky jsou dost velké, že by se daly klidně označit jako tesáky.~ */
  IF ~~ THEN REPLY #40921 /* ~"Myslím, že by mi trocha kousání nevadila..."~ */ GOTO 13
  IF ~~ THEN REPLY #40922 /* ~"Tak kousnutí těmihle zuby by se mi vůbec nelíbilo..."~ */ GOTO 16
  IF ~~ THEN REPLY #40923 /* ~"Aha. Mám nějaké otázky, Kesai..."~ */ GOTO 26
  IF ~~ THEN REPLY #40924 /* ~"Asi bych měl raději už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.0
  SAY #40925 /* ~Kesai se zasmála. "Stejně pochybuji, že bych se přes tu tvoji hrubou kůži dostala. Zůstal ti v té kůži vůbec nějaký cit?"~ */
  IF ~~ THEN REPLY #40926 /* ~"Ne, bohužel ani ne. Ty jizvy jsou strašně hrubé."~ */ GOTO 14
  IF ~~ THEN REPLY #40927 /* ~"Opravdu o tom nechci mluvit."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40928 /* ~"Oh, to je škoda. *Máš* spoustu jizev..." Kesai se ti zadívala do obličeje zblízka. "Dokonce i na rtech a na očních víčcích... pověz mi: jsi zjizvený všude? Víš... *všude*?"~ */
  IF ~~ THEN REPLY #40929 /* ~"Ne, ani ne. Některé části těla se mi podařilo uchránit."~ */ GOTO 15
  IF ~~ THEN REPLY #40930 /* ~"Opravdu o tom nechci mluvit."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40931 /* ~"Tak to je dobře!" Kesai se šťastně zasmála a pak nasadila přehnaně vážný výraz. "Ale pořád jsi mi neřekl o svých snech. No tak. Povídej, přeháněj!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40932 /* ~"Vážně nemám moc snů. Dlouhou dobu jsem neměl vůbec žádné."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40933 /* ~"Já... já vlastně nemám sny."~ */ GOTO 21
  IF ~~ THEN REPLY #40934 /* ~"Raději bych o tom nemluvil."~ */ GOTO 5
  IF ~~ THEN REPLY #40935 /* ~"Rád bych ti to řekl, ale nemám moc času."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 10.3 11.2 12.1
  SAY #40936 /* ~"Ach, rozumíš? To je to, proč je tak proč je tak důležité mluvit o takových věcech, hlavně když je jeden milenec. První společné chvíle páru můžou být dokonalejší, když jednají o aktu, předem... ostatně, je tak zábavné o tom mluvit, hmmm?" Kesai se na tebe velmi usmála, její oči se třpytily jako dva rudé klenoty.~ */
  IF ~~ THEN REPLY #40937 /* ~"Ano, já jsem to říkala."~ */ GOTO 17
  IF ~~ THEN REPLY #40938 /* ~"Ne, myslím si že je to důvějnější záležitost, nesmí být brána tak lehce."~ */ GOTO 17
  IF ~~ THEN REPLY #40939 /* ~"Opravdu bych o tom raději nediskutovala."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40940 /* ~Kesai pokývala, vypadá, že se na chvíli ztratila v myšlenkách. "Řekni... nikdy *jsi* mi nevyprávěl o tvých snech, víš. Pojď dál, pojď snít!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40941 /* ~"Neměl jsem moc snů, opravdu. Na dlouhý čas jsem vůbec žádné sny neměl."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40942 /* ~"Já... vlastně nemám sny."~ */ GOTO 21
  IF ~~ THEN REPLY #40943 /* ~"Radši bych o tom nemluvil."~ */ GOTO 5
  IF ~~ THEN REPLY #40944 /* ~"Rád bych ti to řekl, ale mám moc málo času."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 7.6 8.5 9.4
  SAY #40945 /* ~Kesai se na chvíli nafoukla, poté se zachvěla. "Když je ti nepříjemné o tom mluvit, tak dobrá. I přesto řeknu, že nemáš žádnou takovou rezervaci s milenkou. Je důležité o těchto věcech mluvit, hlavně před aktem, víš? Bude to pro nás oba nejlepší."~ */
  IF ~~ THEN REPLY #40946 /* ~"Budu o tom přemýšlet."~ */ GOTO 19
  IF ~~ THEN REPLY #40947 /* ~"Myslím si, že nejvíc myslíš na své vlastní záležitosti."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #40948 /* ~Při odpovědi se upřímně usmála. "Řekni... nikdy *jsi* mi nevyprávěl o tvých snech, víš. Pojď dál, pojď snít!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40949 /* ~"Neměl jsem moc snů, opravdu. Na dlouhý čas jsem vůbec žádné sny neměl."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40950 /* ~"Já... vlastně nemám sny."~ */ GOTO 21
  IF ~~ THEN REPLY #40951 /* ~"Radši bych o tom nemluvil."~ */ GOTO 5
  IF ~~ THEN REPLY #40952 /* ~"Rád bych ti to řekl, ale mám moc málo času."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #40953 /* ~Kesai se v afektu usmála, válejíce její žhnoucí, rudé oči. "*Ty* jsi se ke *mně* přiblížil, víš. Když tě takovéto věci probírají, můžeš mi samozdřejmě opustit a mluvit s nějakou jinou ženou."~ */
  IF ~~ THEN REPLY #40954 /* ~"Ne, ještě ne - mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #40955 /* ~"Tak já to udělám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 4.3 6.1 15.1 17.1 19.1
  SAY #40956 /* ~Kesai v překvapení povytáhla obočí. "Opravdu? Jak smutné! Dokonce fiendi a dévy mají sny, víš. Jsi si *jistý* nebo ne?"~ */
  IF ~~ THEN REPLY #40957 /* ~"Zcela jistě. Vůbec žádné sny."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #40958 /* ~"Hmm. Tak podivné! Nevím co k tomu mám říct..."~ */
  IF ~~ THEN REPLY #40959 /* ~"Dobře, mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #40960 /* ~"Všechno je v pořádku. Sbohem, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.2 6.0 15.0 17.0 19.0
  SAY #40961 /* ~"Opravdu vůbec žádné? Tak podivné! Dokonce i fiendi a dévy mají sny, víš. Tak o čem byly tyto sny, hmm?" Kesai se na tebe natočila, chtíce odpovědi.~ */
  IF ~~ THEN REPLY #40962 /* ~"Jsou to spíš noční můry, než sny. Vize tmavého, ostnatého bludiště... noční čarodějnice, jménem Ravel..."~ */ GOTO 24
  IF ~~ THEN REPLY #40963 /* ~"Radši bych o tom nemluvil"~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #40964 /* ~Kesai chvíli mlčela. "Oh? Oh... noční můry. Já chápu... to je politování hodné, opravdu..."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #40965 /* ~"Jsi v pořádku? Náhle vypadáš zmatená..."~ */ GOTO 25
  IF ~~ THEN REPLY #40966 /* ~"Ano, možná. Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #40967 /* ~"Vše je v pořádku. Sbohem, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #40968 /* ~"Je mi fajn, skoro fajn. Nicméně ti děkuju." Kesai se na tebe usmála.~ */
  IF ~~ THEN REPLY #40969 /* ~"V tom případě, mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #40970 /* ~"Tak potom tedy odejdu. Sbohem, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.3 2.2 5.0 10.4 11.3 12.2 20.0 22.0 24.1 25.0 27.2 28.2 29.1 30.1 31.0 32.1 33.2 34.0 36.1 37.0 38.1 39.0 40.0 42.1 66.2 67.2 68.3 69.0
  SAY #40971 /* ~Kesai na tebe mrkla svýma rudýma očima, očekávajíce tvou další otázku.~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40972 /* ~"Kesai, mluvil jsem s Kimasxi. Řekla mi, že je napůl tvá sestra, a že Ravel je tvá matka."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",3)
~ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40973 /* ~"Jsi Ravelina dcera, je tu nějaká šance?"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40974 /* ~"Co jsi?"~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,12,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40975 /* ~"Když neposloucháš mé otázky, co jsi?"~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,13,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40976 /* ~"Co jsi?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40977 /* ~"Když neposloucháš mé otázky, co jsi?"~ */ GOTO 28
  IF ~~ THEN REPLY #40978 /* ~"Co tu děláš?"~ */ GOTO 29
  IF ~~ THEN REPLY #40979 /* ~"Co mi můžeš říci o tomto místě?"~ */ GOTO 32
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40980 /* ~"Co mi můžeš říci o tichých prostitutkách?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 69
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67844 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 69
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40981 /* ~"Snažím se najít Vivianin parfém... nevíš, kde by mohl být?"~ */ JOURNAL #66727 /* ~Jedna z prostitutek mi řekla, ať se zeptám Nenny, jestli neví něco o tom, kdo vzal Vivian její osobní voňavku. Nenny zřejmě neustále pobíhá kolem a sleduje, co dělají ostatní.~ */ GOTO 33
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40982 /* ~"Snažím se najít Marissin Karmínový závoj... nevíš, kde by mohl být?"~ */ JOURNAL #66728 /* ~Jedna z prostitutek mi řekla, ať se zeptám Nenny, jestli neviděla Marissin závoj. Nenny zřejmě neustále pobíhá kolem a sleduje, co dělají ostatní.~ */ GOTO 36
  IF ~  GlobalLT("Kesai","GLOBAL",3)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40983 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 38
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40984 /* ~"Už jsem mluvil s devíti prostitutkami... nevíš, kde nebo kdo je ta desátá?"~ */ GOTO 40
  IF ~~ THEN REPLY #40985 /* ~"Vlastně nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.2 26.3
  SAY #40986 /* ~Kesai zatřásla hlavou. "Copak ti to nikdo neřekl?" Sama se sebou zatřese, vymrští na tebe svá velká ňadra. "Žena!" Zvedla obočí. "Vidím, že se ti má odpověď nelíbila... vlastně jsem poznamenána sférami. To je vše, co potřebuješ vědět."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40987 /* ~"Kesai, mluvil jsem s Kimasxi. Řekla mi, že je napůl tvá sestra, a že Ravel je tvá matka."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40988 /* ~"Jsi Ravelina dcera?"~ */ GOTO 41
  IF ~~ THEN REPLY #40989 /* ~"Jsi Ravelina dcera?"~ */ GOTO 26
  IF ~~ THEN REPLY #40990 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 26.5
  SAY #40991 /* ~Kesai zatřásla hlavou. "Cože, to nevidíš sám?" Zastavila sama sebe, vymrštila její velká ňadra na tebe. "Žena!" Zvedla obočí. "Vidím, že se ti má odpověď nelíbila... vlastně jsem sférami poznamenaná jako tvoje přítelkyně." Kesai naznačila Annah. "To je vše, co jsi potřeboval vědět."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40992 /* ~"Kesai, mluvil jsem s Kimasxi. Řekla mi, že je napůl tvá sestra, a že Ravel je tvá matka."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40993 /* ~"Jsi Ravelina dcera?"~ */ GOTO 41
  IF ~~ THEN REPLY #40994 /* ~"Jsi Ravelina dcera?"~ */ GOTO 26
  IF ~~ THEN REPLY #40995 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.6
  SAY #40996 /* ~"Tvá otázka se zdá zábavná." Mrkla na tebe. "Ale ve skutečnosti jsem studentka paní Grace. To jsou všechny prostitutky v nevěstinci."~ */
  IF ~~ THEN REPLY #40997 /* ~"Studentka?"~ */ GOTO 30
  IF ~~ THEN REPLY #40998 /* ~"Mám jiné otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #40999 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41000 /* ~"To je v pořádku. Nevěstinec je vlastně škola pro ženy, které si myslí, že se stávají Vnímavými. Paní Grace nás učí způsoby řeči, a tak se můžeme lépe ztotožnit s námi i s ostatními okolo. To nám dává mnohem více zkušeností ze sfér, víš?"~ */
  IF ~~ THEN REPLY #41001 /* ~"Řekni mi o Vnímavých."~ */ GOTO 31
  IF ~~ THEN REPLY #41002 /* ~"Mám jiné otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41003 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #41004 /* ~"Společnost vjemu věří, že mnohovesmír může být pochopen pouze zkoušením... čím víc ho zakoušíš, tím více rozumíš temnotě mnohovesmíru. Zapletené, co? Myslím si, že jsem se narodila, abych byla jedním z nich - chci to *poznat*."~ */
  IF ~~ THEN REPLY #41005 /* ~"Mám jiné otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41006 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.7
  SAY #41007 /* ~"Nevěstinec duševních rozkoší je vlastně škola pro ženy, které si myslí, že se stávají Vnímavými. Paní Grace nás učí způsoby řeči, a tak se můžeme lépe ztotožnit s námi i s ostatními okolo. To nám dává mnohem více zkušeností ze sfér, víš?"~ */
  IF ~~ THEN REPLY #41008 /* ~"Řekni mi o Vnímavých."~ */ GOTO 31
  IF ~~ THEN REPLY #41009 /* ~"Mám jiné otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41010 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.10
  SAY #41011 /* ~"Ne, já ne." Kesai se zamračila. "Většina žen ti řekne, že je chválená, ale vždy byla hezčí než já... dělala mým očím poklony... a tak mile se smála! Doufám, že brzy znovu najde svou vůni. Zkus se na to zeptat Nenny; ona je vždy všude, a tak mohla něco zaslechnout."~ */
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #41012 /* ~"Máš velmi krásné oči, víš."~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #41013 /* ~"Máš velmi krásné oči, víš."~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ EXTERN ~DANNAH~ 206
  IF ~~ THEN REPLY #41014 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41015 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #41016 /* ~"Proč, děkuji ti! Můžeš je vidět planout ve tmě, víš... bizarní, ne?" Pozastavila se, aby se na tebe mohla podívat. "Také máš pěkné oči... tak temné a tajemné! Tak smysluplné."~ */
  IF ~~ THEN REPLY #41017 /* ~"Díky, Kesai. Mám jiné otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41018 /* ~"Díky. Sbohem, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #41019 /* ~Kesai-Serris se zachvěla a znovu se na tebe podívala.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 26.11
  SAY #41020 /* ~"Hmm. Ne, neviděla jsem jí od té doby, co to naposled odnášela... ale Nenny mohla něco vidět, tak se jí zeptej. Připouštím, že je to hezké... Marissa svůj pokoj bez své roušky neopustí, a tak jsme my všechny hlídaly její falešný jazyk... opustila nás pouze Kimasxi, aby se s tím vypořádala." Kesai se afektovaně usmála. "Nicméně Kimasxi je z nich dvou ta horší."~ */
  IF ~~ THEN REPLY #41021 /* ~"Tak jak?"~ */ GOTO 37
  IF ~~ THEN REPLY #41022 /* ~"Mám další otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41023 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #41024 /* ~"Marissa je hrdá a malicherná, ale Kimasxi... to je trpké, zlomyslné ženské monstrum, s jedovatým jazykem a chováním balorů. Nevím, *proč* by s ní chtěl kdokoliv mluvit - opravdu pochybuji, že její znalosti ospravedlní její jedovatá ústa - nicméně hosty dostává."~ */
  IF ~~ THEN REPLY #41025 /* ~"Mám další otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41026 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 26.12
  SAY #41027 /* ~"Ne. Nic."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #41028 /* ~"Opravdu? Najednou vypadáš rozrušená..."~ */ GOTO 39
  IF ~~ THEN REPLY #41029 /* ~"Mám další otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41030 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #41031 /* ~Podívala se na tebe svýma červenýma očima. "Samozřejmě, že jsem si jistá! Už se mě na ní neptej."~ */
  IF ~~ THEN REPLY #41032 /* ~"Vynikající. Mám jiné otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41033 /* ~"Poté sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 26.13
  SAY #41034 /* ~"Desátá?" Kesai našpulila rty, zdvihala nohu tak, jak chtěla. "Ne... je nás tu jen devět. Vždy tu bylo devět prostitutek, ledaže by Paní Grace dělala nějaké nové změny, o kterých já nevím."~ */
  IF ~~ THEN REPLY #41035 /* ~"Mám další otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41036 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.1 2.0 26.1 27.1 28.1 66.0 67.0
  SAY #41037 /* ~Kesai najednou odhalila své zuby, oči se jí zúžily do rudě zářících štěrbin. "Co?! Kde jsi to slyšel?"~ */
  IF ~~ THEN REPLY #41038 /* ~"Řekla mi to Ecco."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~Zeptal jsem se Kesai-Serris, zdali není dcerou Ravel, a to ji docela vyvedlo z míry... nechtěla tomu věřit. Pokud mi skutečně nelhala, pak musím najít něco, čím bych jí to dokázal.~ */ GOTO 42
  IF ~~ THEN REPLY #41039 /* ~"Pravdivá pověst, to je všechno."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~Zeptal jsem se Kesai-Serris, zdali není dcerou Ravel, a to ji docela vyvedlo z míry... nechtěla tomu věřit. Pokud mi skutečně nelhala, pak musím najít něco, čím bych jí to dokázal.~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #41040 /* ~"Směšné! Myslela jsem si, že *vím*, jestli ta zlá čarodějnice byla moje vlastní matka! Teď mě s tím přestaň otravovat."~ */
  IF ~~ THEN REPLY #41041 /* ~"Tak kdo je tvoje matka?"~ */ GOTO 43
  IF ~~ THEN REPLY #41042 /* ~"Vynikající. Mám jiné otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41043 /* ~"Potom sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #41044 /* ~"Nevím, vše v pořádku? Vychovával mě můj otec; nikdy jsem jí nepoznala. Ale *zdám* se ti jako noční čarodějnice?!"~ */
  IF ~~ THEN REPLY #41045 /* ~"Dobře... to je kůže... a oči... a můžou být i zuby..."~ */ GOTO 44
  IF ~~ THEN REPLY #41046 /* ~"Ne, ne - samozdřejmě že ne."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #41047 /* ~Kesai-Serris na tebe zírá, její oči planou. "Snad si promluvíme *později,* ale už nikdy nebudu mít náladu. Sbohem."~ */
  IF ~~ THEN REPLY #41048 /* ~"Sbohem."~ */ DO ~SetGlobal("Kesai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 26.0 27.0 28.0
  SAY #41049 /* ~Kesai zavrčela, její oči se zatřpytily záští. "Ty... ty... sakra, jak se mi ta ženská hnusí! Proč *věříš* té schránce vnitřností?"~ */
  IF ~~ THEN REPLY #41050 /* ~"Řekla, žes to zapřela a ve skutečnosti to nemusíš vědět, ale je to pravda. Řekla, že se můžeš zeptat svého otce... ten ti to řekne."~ */ DO ~SetGlobal("Kesai","GLOBAL",3)
SetGlobal("Kesai_Quest","GLOBAL",2)
~ JOURNAL #39518 /* ~Kesai-Serris si konečně uvědomila, že byla dcerou Ravel. Nějak se jí podařilo promluvit si se svým otcem polofiendem - jak ostatně očekávala Kimasxi - a dozvěděla se tak pravdu.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #41051 /* ~Kesai na tebe mlčky civěla. "Dej mi chvíli." Odvrátila se od tebe a začala slabě mumlat... vzduch kolem ní se jako by lehce třpytil a naplňoval se zápachem mědi, jako horká krev...~ */
  IF ~~ THEN REPLY #41052 /* ~Trpělivě čekej.~ */ GOTO 51
  IF ~~ THEN REPLY #41053 /* ~Natraž uši a snaž se zaslechnout, co říká.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #41054 /* ~Naklonil jsi se ku Kesai a snažil jsi se zaslechnout její mumlání.

"Haughazaneneli, Vypovězený princi Ithagský, Markýzi Krvavého Stínu, otče můj, slyš mě, volám tě..."~ */
  IF ~~ THEN REPLY #41055 /* ~Poslouchej dál.~ */ GOTO 48
  IF ~~ THEN REPLY #41056 /* ~Přestaň poslouchat.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #41057 /* ~"Ano, milovaný otče, jsem to já, Kesai-Serris. Vyzývám tě, abys mi odpověděl na jednu otázku, na kterou se tě ptám opět a opět..."~ */
  IF ~~ THEN REPLY #41058 /* ~Poslouchej dál.~ */ GOTO 49
  IF ~~ THEN REPLY #41059 /* ~Přestaň poslouchat.~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41060 /* ~"Ano, milovaný otče. Nemohu snést mít jinou otázku, když neznám sama sebe. *Musíš* mi to říci... nikdy jsem se na nic jiného neptala. Řekni mi to, prosím tě..."~ */
  IF ~~ THEN REPLY #41061 /* ~Poslouchej dál.~ */ GOTO 50
  IF ~~ THEN REPLY #41062 /* ~Přestaň poslouchat.~ */ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #41063 /* ~"A-ano... ano, milovaný otče, rozumím. Děkuji ti... sbohem..."~ */
  IF ~~ THEN REPLY #41064 /* ~"Hotovo? Co říkal?"~ */ GOTO 51
  IF ~~ THEN REPLY #41065 /* ~Odkloň se a tvař se, jako kdyby si nic neslyšel.~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 46.0 47.1 48.1 49.1 50.0 50.1
  SAY #41066 /* ~Kesai ještě na chvíli zůstala odvrácena, než se konečně obrátila na tebe. "Nechci věřit, že ta zlá čarodějnice může být mojí matkou. Žila jsem dlouho, nevěnovala se věku, a někdy měla... pobuřující sny." Otřásla se. "Ale stále... nepřeji si být dědičkou zla, které působila, ani vábit Panin upřený pohled jako má matka. Takové zlé věci dělala!"~ */
  IF ~~ THEN REPLY #41067 /* ~"Řekneš mi, co o ní víš?"~ */ GOTO 52
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41068 /* ~"Potřebuji, abys mi dala kousek tebe, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41069 /* ~"Nebudu se tím zabývat, Kesai; ničím se Ravel nepodobáš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #41070 /* ~"Slyšela jsem, že před lidi staví nesplnitelné úkoly, úkoly, které může zodpovědět jen ona. Zabije každého, kdo špatně odpoví, nebo je nechá bloudit jejími děsnými zahradami jako příklad pro všechny ostatní. Těch pár, kteří unikli, umučila v jejich snech, řídila je jako koně, zlomila jejich mysl a mrštila jejich duše do bezbarvého zapomnění Šedých pustin..."~ */
  IF ~~ THEN REPLY #41071 /* ~"Pokračuj..."~ */ GOTO 53
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41072 /* ~"Potřebuji, abys mi dala kousek tebe, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41073 /* ~"V pořádku... nemusíš mi už nic říkat. Sbohem, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41074 /* ~"Její magie byla míněna, aby byla nad čímkoliv, co kdy bylo viděno; byla to fantazie tkaná z nočních můr, která se stala skutečností. Kámen a pevné hmoty se před ní ohýbaly jako měkký jíl; zákony Sfér jí padnou k nohám a ona může z ničeho tkát iluzi... a z iluze tkát děsící a zničující a ohromující realitu."~ */
  IF ~~ THEN REPLY #41075 /* ~"Pokračuj..."~ */ GOTO 54
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41076 /* ~"Potřebuji, abys mi dala kousek tebe, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41077 /* ~"V pořádku... nemusíš mi už nic říkat. Sbohem, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #41078 /* ~"Byla paní veškeré Temné magie, byla jejich paní i mistryně. Honila Guvnera, který se jí odvážil zopakovat Sigilský zákon, stínem, který ho celého pohltil mimo jazyka, prstů a masa z jeho tváře. Odvrátila Nemilosrdné naruby a ničila budovy těch, kteří ji urazily. Ovládala strašné, strašné síly."~ */
  IF ~~ THEN REPLY #41079 /* ~"Pokračuj..."~ */ GOTO 55
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41080 /* ~"Potřebuji, abys mi dala kousek tebe, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41081 /* ~"V pořádku... nemusíš mi už nic říkat. Sbohem, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #41082 /* ~"Měnila se ve vodu, a chtěla toho zneužít, aby něco z kratochvíle zničila, aby ukradla znalosti jiných. Byla monstrum, jako všechno, co se zplodilo z Šedých pustin."~ */
  IF ~~ THEN REPLY #41083 /* ~"Pokračuj..."~ */ GOTO 56
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41084 /* ~"Potřebuji, abys mi dala kousek tebe, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41085 /* ~"V pořádku... nemusíš mi už nic říkat. Sbohem, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #41086 /* ~"Konečně, vyhrožovala, že otevře Klec a nechá vniknout zuřivost Sfér, jako vlnu. Naštěstí se jí to nepovedlo. Existovala jen, aby působila zášť..."~ */
  IF ~~ THEN REPLY #41087 /* ~"Pokračuj..."~ */ GOTO 57
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41088 /* ~"Potřebuji, abys mi dala kousek tebe, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41089 /* ~"V pořádku... nemusíš mi už nic říkat. Sbohem, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41090 /* ~"Nevím, jestli je mrtvá... ale vím, teď, že byla mou matkou." Kesaiiny ruce poklesly, a její hlava také. "Oh, tak já jsem slzela, takže můžu oplakávat se smutkem!"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #41091 /* ~Pokus se jí utěšit.~ */ GOTO 59
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #41092 /* ~Pokus se jí utěšit.~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #41093 /* ~Pokus se jí utěšit.~ */ GOTO 61
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41094 /* ~"Potřebuji, abys mi dala kousek tebe, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41095 /* ~"Nebudu se tím zabývat, Kesai; ničím se Ravel nepodobáš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 51.1 52.1 53.1 54.1 55.1 56.1 57.3 59.0 60.0 61.0 68.0
  SAY #41096 /* ~Vypadá polekaná. "Prosím?"~ */
  IF ~~ THEN REPLY #41097 /* ~"Klíčem k portálu do Ravelina bludiště je její část, a ty jsi z její krve. Je to dost blízko."~ */ GOTO 62
  IF ~~ THEN REPLY #41098 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #41099 /* ~"Tak... tak mě nech být. Budu v pořádku. Potřebuju čas na rozmyšlenou, to je všechno."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41100 /* ~"V pořádku, ale... potřebuji, abys mi dala kousek sebe."~ */ GOTO 58
  IF ~~ THEN REPLY #41101 /* ~"Nebudu se tím zabývat, Kesai; ničím se Ravel nepodobáš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.1
  SAY #41102 /* ~"Díky... díky za tvé úsilí... ale budu v pořádku. Potřebuju čas na rozmyšlení, to je všechno."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41103 /* ~"Protiví se mi tě na to teď ptát... ale potřebuji, abys mi dala kousek sebe, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41104 /* ~"Nebudu se tím zabývat, Kesai; ničím se Ravel nepodobáš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.2
  SAY #41105 /* ~Najednou padla do tvých rukou, chvěla se, jako kdyby se právě dostala na břeh a lapala po dechu. Chvíli tam Kesai jen tak stála, držela se tě... ale poté se tě pustila. "Děkuji ti, ale... budu v pořádku. Potřebuju čas na rozmyšlení, to je všechno."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41106 /* ~"Protiví se mi tě na to teď ptát... ale potřebuji, abys mi dala kousek sebe, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41107 /* ~"Nebudu se tím zabývat, Kesai; ničím se Ravel nepodobáš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 58.0
  SAY #41108 /* ~Kesai těžce oddychuje. "Snažíš se jí najít?" Její překvapení se rychle změnilo v opatrnost. Co... co po mně chceš?"~ */
  IF ~~ THEN REPLY #41109 /* ~"Nejraději tvou krev. Jen jednu nebo dvě kapky, jsem si jistý."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #41110 /* ~Pokývala. "Ale... máš něco, na čem bys to mohl přenést? Část oblečení, třeba šátek, víš?"~ */
  IF ~  PartyHasItem("Hanky")
~ THEN REPLY #41111 /* ~"Ano... tady..."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~Dostal jsem na kapesník několik kapiček krve Kesai-Serris. Díky tomu, že byla dcerou Ravel, mohl by tento kapesník posloužit jako klíč k portálu do Ravelinina bludiště.~ */ GOTO 64
  IF ~  !PartyHasItem("Hanky")
~ THEN REPLY #41112 /* ~"Ne, neviděla."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",2)
~ GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 63.0 68.1
  SAY #41113 /* ~Kesai si vzala šátek a opatrně nabodla špičku svého prstu na svůj zub. Potom, co se několik kapek krve vsáklo do látky, vrátila ti ho. "Řítíš se do smrtelného nebezpečí, víš. Dokonce, i kdyby příběhy o mé matce byly ohromně přehnané, je strašně silná a úplný ďábel. Hodně štěstí."~ */
  IF ~~ THEN REPLY #41114 /* ~"Ano, slyšel jsem. Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1
  SAY #41115 /* ~Kesai vzdychla a podívala se okolo. "Jsem si jistá, že v Nevěstinci alespoň jedno je. Hledej, jestli to najdeš. Rozumíš? Potom ti dám mou krev."~ */
  IF ~~ THEN REPLY #41116 /* ~"Tak já se vrátím až budu mít šátek. Sbohem."~ */ JOURNAL #50721 /* ~Ukazuje se, že několik kapek krve Kesai by postačilo jako klíč k portálu do Ravelina bludiště... Teď jí jenom musím donést kapesník, abych je mohl nasbírat.~ */ EXIT
END

IF ~  Global("Kesai","GLOBAL",1)
~ THEN BEGIN 66 // from:
  SAY #41117 /* ~Kesai-Serris se vřele usmála když jsi se k ní přiblížil a odendala vlnitou kadeř vlasů z jejích bystrých a rudých očí. "Dobře, opět tě zdravím... můžu pro tebe něco udělat, hmmm?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41118 /* ~"Kesai? Jsi Ravelina dcera?"~ */ GOTO 41
  IF ~~ THEN REPLY #41119 /* ~"To počká... co děláš za věci?"~ */ GOTO 4
  IF ~~ THEN REPLY #41120 /* ~"Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41121 /* ~"Nic, díky. Sbohem."~ */ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",2)
~ THEN BEGIN 67 // from:
  SAY #41122 /* ~Kesai-Serris se vřele usmála když jsi se k ní přiblížil a odendala vlnitou kadeř vlasů z jejích bystrých a rudých očí. "Neboj se; dlouho zmatená nebudu. Můžu pro tebe něco udělat, hmmm?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41123 /* ~"Kesai? Jsi Ravelina dcera?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #41124 /* ~"To počká... co děláš za věci?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #41125 /* ~"Mám nějaké otázky..."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #41126 /* ~"Nic, díky. Sbohem."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",3)
~ THEN BEGIN 68 // from:
  SAY #41127 /* ~Kesai-Serris se vřele usmála když jsi se k ní přiblížil a odendala vlnitou kadeř vlasů z jejích bystrých a rudých očí. "Dobře, opět tě zdravím... můžu pro tebe něco udělat, hmmm?"~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #52907 /* ~"Potřebuju, abys mi dala kousek sebe, Kesai."~ */ GOTO 58
  IF ~  Global("Know_Ravel_Key","GLOBAL",2)
PartyHasItem("Hanky")
~ THEN REPLY #41128 /* ~"Ano... mám ten šátek..."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~Dostal jsem na kapesník několik kapiček krve Kesai-Serris. Díky tomu, že byla dcerou Ravel, mohl by tento kapesník posloužit jako klíč k portálu do Ravelinina bludiště.~ */ GOTO 64
  IF ~~ THEN REPLY #41129 /* ~"To počká... co děláš za věci?"~ */ GOTO 4
  IF ~~ THEN REPLY #41130 /* ~"Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41131 /* ~""Nic, díky. Sbohem."~ */ GOTO 3
END

IF ~~ THEN BEGIN 69 // from: 26.8 26.9
  SAY #41132 /* ~"Ano, to je Ecco. Je velmi roztomilá, ale tak tichá. Rozumím jí, protože jednou řekla něco, co způsobilo velkou tragédii... a proto už nikdy nepromluví." Kesai se otřásla, směje se. "Dost zajímavý příběh, ale nevím, jestli je pravdivý. Zkus se zeptat Dolory... viděla jsem jí mluvit s Ecčiným minulým milencem, který tu byl v dobách, kdy Ecco ještě mluvila."~ */
  IF ~~ THEN REPLY #41133 /* ~"Mám ještě jiné otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #41134 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END
