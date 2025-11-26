// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2835 /* ~Hlídač se na tebe dívá se směsicí strachu a nenávisti, ale rychle ti otevřel bránu. Když jsi procházel kolem, odvrátil hlavu, abys mu neviděl do očí.~ */
  IF ~~ THEN REPLY #2836 /* ~"Ráno, chlapci!"~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #19865 /* ~Stráž se napřímila. "Máš to, co Pharod chce, vole?"~ */
  IF ~~ THEN REPLY #19866 /* ~"Ano."~ */ GOTO 2
  IF ~~ THEN REPLY #19867 /* ~"Ještě ne."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19868 /* ~"Tak mi to ukaž, vole, a já otevřu bránu. Ale jinak ne, jasný?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #19869 /* ~Ukaž mu to.~ */ GOTO 4
  IF ~~ THEN REPLY #19870 /* ~"Dobrá, nemám to. Ale mám něco, co by tě mohlo zajímat."~ */ GOTO 5
  IF ~~ THEN REPLY #19871 /* ~"To si nemyslím. Já se vrátím."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #19872 /* ~"Esli to nemáš, tak proč otravuješ?" Strážný si odfrkl.~ */
  IF ~~ THEN REPLY #19873 /* ~"Nemám to. Ale mám něco, co by tě mohlo zajímat."~ */ GOTO 5
  IF ~~ THEN REPLY #19874 /* ~"Dobrá. Zatím nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #19875 /* ~"Fajn. Poď dovnitř."~ */
  IF ~~ THEN REPLY #19876 /* ~"Děkuju."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #19877 /* ~"Jo? A co by to tak mělo bejt?"~ */
  IF ~~ THEN REPLY #19878 /* ~"Prachy. Jak by se ti líbil jeden měďák?"~ */ GOTO 7
  IF ~~ THEN REPLY #19879 /* ~"Prachy. Jak by se ti líbilo deset měďáků?"~ */ GOTO 8
  IF ~~ THEN REPLY #19880 /* ~"Prachy. Jak by se ti líbilo dvacet pět měďáků?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19881 /* ~"Prachy. Jak by se ti líbilo padesát měďáků?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19882 /* ~"Prachy. Jak by se ti líbilo padesát měďáků?"~ */ GOTO 11
  IF ~~ THEN REPLY #19883 /* ~"Prachy. Jak by se ti líbilo sto měďáků?"~ */ GOTO 12
  IF ~~ THEN REPLY #19884 /* ~"Když nad tím tak přemýšlím, vlastně mě nic nenapadá."~ */ GOTO 6
  IF ~~ THEN REPLY #19885 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.6
  SAY #19886 /* ~"Tak v tom případě dál nepudeš, vole." Plivl ti před nohy.~ */
  IF ~~ THEN REPLY #19887 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #19888 /* ~Zle se usmál. "Urážíš mě, vole. Zkus to znovu."~ */
  IF ~~ THEN REPLY #19889 /* ~"Dobrá. Jak by se ti líbilo deset měďáků?"~ */ GOTO 8
  IF ~~ THEN REPLY #19890 /* ~"Dobrá. Jak by se ti líbilo dvacet pět měďáků?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19892 /* ~"Dobrá. Co takhle padesát?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19893 /* ~"Dobrá. Co takhle padesát?"~ */ GOTO 11
  IF ~~ THEN REPLY #19895 /* ~"Dobrá. Co takhle stovka?"~ */ GOTO 12
  IF ~~ THEN REPLY #19896 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #19899 /* ~"To si nemyslím..."~ */
  IF ~~ THEN REPLY #19900 /* ~"Dobrá.  Jak by se ti líbilo dvacet pět měďáků?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19901 /* ~"Dobrá. Co takhle padesát?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19902 /* ~"Dobrá. Co takhle padesát?"~ */ GOTO 11
  IF ~~ THEN REPLY #19903 /* ~"Dobrá. Co takhle stovka?"~ */ GOTO 12
  IF ~~ THEN REPLY #19904 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 7.1 8.0
  SAY #19905 /* ~"Lepšíš se, vole, ale eště pořád to není vono."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19906 /* ~"Dobrá. Co takhle padesát?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19907 /* ~"Dobrá. Co takhle padesát?"~ */ GOTO 11
  IF ~~ THEN REPLY #19908 /* ~"Dobrá. Co takhle stovka?"~ */ GOTO 12
  IF ~~ THEN REPLY #19909 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3 7.2 8.1 9.0 25.1
  SAY #19910 /* ~Odporný ksicht se zkroutil úsměvem. "To by šlo. Dej to sem a já otevřu bránu."~ */
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19911 /* ~"Hmm... nemám dost."~ */ GOTO 14
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19912 /* ~Dej mu padesát mincí. "Tady máš."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19913 /* ~Dej mu padesát mincí. "Tady máš."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19914 /* ~Nechej ho, ať se pro ně natáhne. "Vem si je a jsou tvoje."~ */ GOTO 15
  IF ~~ THEN REPLY #19915 /* ~"Zapomeň na to. Jdu zpátky do katakomb."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.4 7.3 8.2 9.1
  SAY #19916 /* ~Počítá a pak odpoví, "Ne. Vy dostanete víc, než to."~ */
  IF ~~ THEN REPLY #19917 /* ~"Dobrá tedy. Co takhle stovka?"~ */ GOTO 12
  IF ~~ THEN REPLY #19918 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.5 7.4 8.3 9.2 11.0 26.1
  SAY #19919 /* ~"To bude stačit. Podej to sem a já otevřu bránu."~ */
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19920 /* ~"Hmm... nemám dost."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19921 /* ~Podej mu stovku. "Tady máš. Celá dohodnutá suma."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19922 /* ~Dej mu devadesát mincí. "Tady máš. Celá dohodnutá suma."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19923 /* ~Nechej ho, ať se pro to natáhne. "Vezmi si to a je to tvoje."~ */ GOTO 16
  IF ~~ THEN REPLY #19924 /* ~"Zapomeň na to. Jdu zpátky do katakomb."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 10.2 12.1 12.2 15.4 15.5 16.5 16.6
  SAY #19925 /* ~Pohodil hrstkou mincí a řekl, "Jo, mělo by to být dost." Otevřel bránu.~ */
  IF ~~ THEN REPLY #19926 /* ~"Prozatím nashle."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 12.0 15.6 16.4 21.0 25.0 26.0
  SAY #19927 /* ~"To je blbý. Uvidíme se, až budeš mít dost. Jinak se skrz nedostaneš." Otočil se od tebe. ~ */
  IF ~~ THEN REPLY #19928 /* ~"Dobrá tedy..."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #19929 /* ~Natáhl se skrze bránu pro mince.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19930 /* ~Popadni ho za ruku a zkruť ji.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19931 /* ~Popadni ho za ruku a zkruť ji.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19932 /* ~Popadni ho za ruku a zkruť ji.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19933 /* ~Popadni ho za ruku a zkruť ji.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19934 /* ~Dej mu padesát mincí. "Tady máš. Celá dohodnutá suma."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19935 /* ~Dej mu čtyřicet minci: "Tady máš. Celá dohodnutá suma."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19936 /* ~"Hmm... nemám dost."~ */ GOTO 14
  IF ~~ THEN REPLY #19937 /* ~"Zapomeň na to. Jdu zpátky dolů."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #19938 /* ~Natáhl se skrze bránu pro mince.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19939 /* ~Popadni ho za ruku a zkruť ji.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19940 /* ~Popadni ho za ruku a zkruť ji.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19941 /* ~Popadni ho za ruku a zkruť ji.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19942 /* ~Popadni ho za ruku a zkruť ji.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19943 /* ~"Hmm... nemám dost."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19944 /* ~Podej mu stovku. "Tady máš. Celá dohodnutá suma."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19945 /* ~Dej mu devadesát mincí. "Tady máš. Celá dohodnutá suma."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19946 /* ~"Zapomeň na to. Jdu zpátky do katakomb."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 16.0
  SAY #19947 /* ~Zkušeně jsi popadl jeho paži a zkroutil ji. Strážný zařval bolestí, což se skvěle doplnilo se zvukem, který vydal jeho kroucený loket.~ */
  IF ~~ THEN REPLY #19948 /* ~"Pusť mě, nebo ti jí ulomím!"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19949 /* ~Nechej ho jít. "A teď mě pusť dovnitř, nebo tě natrhám na kousky. Nemám náladu na žádné hry."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 15.1 15.2 16.1 16.2
  SAY #19950 /* ~Jak sáhl po penězích, popadl jsi jeho paži. Chvíli bojuje a snaží se uvolnit z tvého sevření, ale nakonec se ti podařilo zkroutit mu ruku tak, že se nemůže ani hnout. Řve bolestí.~ */
  IF ~~ THEN REPLY #19951 /* ~"Pusť mě, nebo ti jí ulomím!"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19952 /* ~Nechej ho jít. "A teď mě pusť dovnitř, nebo tě natrhám na kousky. Nemám náladu na žádné hry."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 15.3 16.3
  SAY #6783 /* ~Jak se natáhl pro peníze, pokusil ses chytit ho za ruku. Rychle škubl svou rukou zpět za mříže a zařval, "Za tohle zaplatíš dvojnásob, špíno! Zmiz mi z očí!" Odvrátil se od tebe.~ */
  IF ~~ THEN REPLY #6844 /* ~"Pak tedy, sbohem..."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.1 18.0 18.1
  SAY #19953 /* ~Rychle, než stačíš splnit svou hrozbu, otevřel bránu a pak ustoupil mimo tvůj dosah.~ */
  IF ~~ THEN REPLY #19954 /* ~"Ještě jednou mě naštvi a budou sbírat tvoje končetiny ze tří různých krypt. Rozumíš? Fajn."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19955 /* ~"Poučili jsme se, viď? Doufám, že příště budeš mít ke mně více respektu. Sbohem."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  Global("No_Pin","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #19956 /* ~Strážný se na tebe výhrůžně zadíval. "Průchod tě bude stát dva stováky, vole. A žádný srandičky!"~ */
  IF ~~ THEN REPLY #19957 /* ~"Nemám tolik."~ */ GOTO 14
  IF ~  PartyGoldGT(199)
~ THEN REPLY #19958 /* ~"Dobrá. Tady máš."~ */ DO ~TakePartyGold(200)
~ GOTO 22
  IF ~~ THEN REPLY #19959 /* ~"Tak na to zapomeň."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #19960 /* ~Vzal si peníze a pečlivě je spočítal. Když se konečně přesvědčil, že jsi ho neošidil ani o jednu minci, otevřel ti bránu. "A nezapomeň, vole. Cesta zpátky tě bude stát stejně."~ */
  IF ~~ THEN REPLY #19961 /* ~"No jó."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19962 /* ~"Mám víc než potřebuju."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
!Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #19963 /* ~Strážný se vzpřímil. "Máš prachy na mýtné?"~ */
  IF ~~ THEN REPLY #19965 /* ~"Mýtné? Kolik?"~ */ GOTO 25
  IF ~~ THEN REPLY #19966 /* ~"Nevěděl jsem, že se platí mýtné."~ */ GOTO 24
  IF ~~ THEN REPLY #19967 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #19964 /* ~"Spousta lidí ne. Ale tady jsou."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19968 /* ~"Kolik to je?"~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19969 /* ~"Kolik to je?"~ */ GOTO 26
  IF ~~ THEN REPLY #19970 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #19971 /* ~"Pro tebe? Padesát měďáků."~ */
  IF ~~ THEN REPLY #19972 /* ~"Padesát? Nevím, jestli se mi chce platit tolik."~ */ GOTO 14
  IF ~~ THEN REPLY #19973 /* ~"Řekl bych, že to by šlo."~ */ GOTO 10
  IF ~~ THEN REPLY #19974 /* ~"Tak na to zapomeň."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #19975 /* ~"Pro tebe? Stovka."~ */
  IF ~~ THEN REPLY #19976 /* ~"Stovka? Nevím, jestli se mi chce platit tolik."~ */ GOTO 14
  IF ~~ THEN REPLY #19977 /* ~"Řekl bych, že to by šlo."~ */ GOTO 12
  IF ~~ THEN REPLY #19978 /* ~"Tak na to zapomeň."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 30.2 31.0 32.1 33.0 34.0 35.0 37.0 38.0
  SAY #19979 /* ~"Co chceš teďkonc?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19980 /* ~"Pharod mi dal svolení jít dolů do katakomb. Otevři mi bránu."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19981 /* ~"Co je za tou branou?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19982 /* ~"Co je za tou branou?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19983 /* ~"Můžeš mi zase otevřít bránu?"~ */ GOTO 36
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19984 /* ~"Co mi můžeš říct o okolní oblasti?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19985 /* ~"Rád bych šel tam dolů."~ */ GOTO 35
  IF ~~ THEN REPLY #19986 /* ~"Kdo jsi?"~ */ GOTO 37
  IF ~~ THEN REPLY #19987 /* ~"Co to děláš?"~ */ GOTO 38
  IF ~~ THEN REPLY #19988 /* ~"Nic. Sbohem."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 28 // from:
  SAY #19989 /* ~Vidíš velkého člověka narvaného do záplatovaných pracovních šatů, který páchne starým pivem. Je vážně velký - je jasné, že na tuhle práci ho vybrali díky jeho svalům a ne mozku. "Co chceš?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19990 /* ~"Pharod mi dal svolení jít dolů do katakomb. Otevři mi bránu."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19991 /* ~"Co je za tou branou?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19992 /* ~"Co je za tou branou?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19993 /* ~"Co mi můžeš říct o okolní oblasti?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19994 /* ~"Rád bych šel tam dolů."~ */ GOTO 35
  IF ~~ THEN REPLY #19995 /* ~"Kdo jsi?"~ */ GOTO 37
  IF ~~ THEN REPLY #19996 /* ~"Co to děláš?"~ */ GOTO 38
  IF ~~ THEN REPLY #19997 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #19998 /* ~Škubnutím otevřel bránu. "Tak padej, vole, a nezdržuj."~ */
  IF ~~ THEN REPLY #19999 /* ~"Sbohem."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 27.4 28.1 28.3
  SAY #20000 /* ~"Katakomby Truchlících Šutráků, vole. Spousta zdechlin, spousta krypt, kerý se daj vybrakovat."~ */
  IF ~~ THEN REPLY #20001 /* ~"Proč se tomu říká katakomby Truchlících... Kamenů?"~ */ GOTO 31
  IF ~~ THEN REPLY #20002 /* ~"Můžeš mi to popsat přesněji?"~ */ GOTO 32
  IF ~~ THEN REPLY #20003 /* ~"Děkuju. Mám pár dalších otázek..."~ */ GOTO 27
  IF ~~ THEN REPLY #20004 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #20005 /* ~"Svrchu kape spousta vody, takže to vypadá, jako by stěny brečely. Podle toho se tomu tak říká."~ */
  IF ~~ THEN REPLY #20006 /* ~"Jasný. Můžeš mi odpovědět ještě na pár dalších otázek?"~ */ GOTO 27
  IF ~~ THEN REPLY #20007 /* ~"Děkuju."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #20008 /* ~"Moc ne. Byl sem tam sám akorát dvakrát, možná třikrát... většinou tam choděj mrtvoly vobírat ostatní. Gris, ten toho vybrakoval nejvíc. Myslíme si, že ho tam něco ťaplo za zadek a zapsalo ho k ostatním do knihy zdechlin."~ */
  IF ~~ THEN REPLY #20009 /* ~"Gris?"~ */ GOTO 33
  IF ~~ THEN REPLY #20010 /* ~"Aha. Mám pár dalších otázek..."~ */ GOTO 27
  IF ~~ THEN REPLY #20011 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #20012 /* ~"Jo, 'Gris Sup.' Von a eště dva další nedávno vlezli dolů a už se nevobjevili. Dybys náhodou našel jeho zdechlinu, dotáhni ji zpátky." Usmál se na tebe jako šakal. "Střelíme jí Spalovačům, bude na chlast."~ */
  IF ~~ THEN REPLY #20013 /* ~"Ha. Mám pár dalších otázek..."~ */ GOTO 27
  IF ~~ THEN REPLY #20014 /* ~"Přesně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.2 28.2
  SAY #20015 /* ~Strážný si tě chvíli prohlížel a pak si odfrkl. "Ložnice tvý mátiny, vole. Brána musí bejt zavřená, páč se nám tady v poslední době ňák moc rozhejbala doprava." Hromově se rozesmál. "Vodpal, pako, nebo se přidáš k zdechlinám tam dole."~ */
  IF ~~ THEN REPLY #20016 /* ~"Jenom mi odpověz na pár otázek..."~ */ GOTO 27
  IF ~~ THEN REPLY #20017 /* ~"Dobrá."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.5 28.4
  SAY #20018 /* ~Strážný tě přejel pohledem a pak zavrtěl hlavou. "Jo, jo... všichni chcem jít tam dolů. Hele. Ty nejseš vocaď, to poznám na první pohled. Takže vodpal."~ */
  IF ~~ THEN REPLY #20019 /* ~"Tak mi odpověz na pár otázek..."~ */ GOTO 27
  IF ~~ THEN REPLY #20020 /* ~"Fajn."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 27.3
  SAY #20021 /* ~Podíval se na tebe a škubnutím otevřel bránu, bez jediného slova.~ */
  IF ~~ THEN REPLY #20022 /* ~"Sbohem."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 27.6 28.5
  SAY #20023 /* ~"Po tom ti nic ksakru nejni. Vodpal."~ */
  IF ~~ THEN REPLY #20024 /* ~"Nejdřív mi odpověz na pár otázek..."~ */ GOTO 27
  IF ~~ THEN REPLY #20025 /* ~"Děkuju... příteli."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 27.7 28.6
  SAY #20026 /* ~"Jak ti asi připadá to, co tady dělám, co? Peru si spoďáry? Vypadni vocaď, ty debilní pahňupe!"~ */
  IF ~~ THEN REPLY #20027 /* ~"Už jenom jednu otázku..."~ */ GOTO 27
  IF ~~ THEN REPLY #20028 /* ~"No jó."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Open_Door","AR0109",0)
~ THEN BEGIN 39 // from:
  SAY #56027 /* ~"Brána už není zamčená, takže mě nemusíš dál obtěžovat."~ */
  IF ~~ THEN REPLY #56028 /* ~Odejdi.~ */ EXIT
END
