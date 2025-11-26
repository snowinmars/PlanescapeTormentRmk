// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMICCAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMICCAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45919 /* ~Kulatá žena se zlýma očima a nosovým hlasem zahýkala: "Tak co to tady máme? Zákazníka? Vidí to mé oči zákazníka?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DBROKAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45921 /* ~"Mrtvý se vrátil. Brokahu! Mrtvý se vrátil!"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45923 /* ~Jeho partnerka, zesláblá žena s hýkavým hlasem, tě rychle přejela pohledem a odpověděla: "Je to zákazník, ty blbče, tupče, omezenče! Říkám ti to celou dobu! Řekla jsem ti, že budeme mít zákazníky, ale tys mi nikdy nevěřil a teď jednoho máme! Jsi připravený na tohohle... no... mrtvě vypadajícího muže?"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45925 /* ~"Mám oči, copak nevidím? Vidím ho, vidím ho, přestaň otravovat, ty pytle starých vyschlých kostí!" Otočila se k tobě a pokusila se, aby její hlas zněl příjemně. "Co pro tebe může Miccah udělat?"~ */
  IF ~~ THEN REPLY #45926 /* ~"Promluvme si o obchodu."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45927 /* ~"Můžeš mi říct o okolí?"~ */ GOTO 5
  IF ~~ THEN REPLY #45928 /* ~"Můžeš mi říct o sobě?"~ */ GOTO 6
  IF ~~ THEN REPLY #45929 /* ~"Kdo je on?"~ */ GOTO 7
  IF ~~ THEN REPLY #45931 /* ~"Co mi můžeš říct o společenstvech?"~ */ GOTO 8
  IF ~~ THEN REPLY #45932 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45933 /* ~"To jsem ti říkala!" Snížila hlas a otočila se k tobě. "Co pro tebe můžeme udělat?"~ */
  IF ~~ THEN REPLY #45934 /* ~"Promluvme si o obchodu."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45935 /* ~"Můžeš mi říct o okolí?"~ */ GOTO 5
  IF ~~ THEN REPLY #45936 /* ~"Můžeš mi říct o sobě?"~ */ GOTO 6
  IF ~~ THEN REPLY #45939 /* ~"Kdo je on?"~ */ GOTO 7
  IF ~~ THEN REPLY #45941 /* ~"Co mi můžeš říct o společenstvech?"~ */ GOTO 8
  IF ~~ THEN REPLY #45942 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45944 /* ~"Jsem si jistá, že můj manžel bude potěšený, když ti bude moct říct o Hale a bordelu..." odfrkla si, "ale mé chutě jsou spíše..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 14
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45947 /* ~"Já? Jsem přišpendlená k téhle zastavárně s manželem, který mě nedokáže ocenit..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 15
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45951 /* ~"On? To je Brokah. Je to můj manžel nějakých dvacet let, i když díky jeho neschopné povaze se dá jen těžce věřit tomu, že ještě neutekl..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 16
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45955 /* ~"Společenství? Společenství? Ha. Všechno co dělají, že nám tenhle ubohý obchůdek zdanili skoro k smrti, zaženou nás do Úlu nebo ještě na horší místo a z Brokaha udělali ještě slabšího chlapa, než býval..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 17
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45958 /* ~Miccah se vložila do řeči. "A první věc, o které mu povíš, bude bez pochyby bordel! Je to vždycky bordel nebo Městská hala - nikdy Trh nebo..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 9
END

IF ~~ THEN BEGIN 10 // from:
  SAY #45961 /* ~"Je jenom slušný. Opravdu ho to nezajímá. Stejně nemáš nic užitečného co říct. Jsi majitel zastavárny a to je všechno, co kdy budeš, protože ti chybí ambice..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45964 /* ~"... nejohromnější dar, jaký kdy v životě dostal, že jo? Zachránila jsem ho, víš, od života, který pro něj chystali jeho rodiče a on mi slíbil, že mě od tohohle všeho odvede a místo toho vidíš, jaký život dal on mě. Povídám ti, je toho dost, aby to jednoho donutilo pít..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45967 /* ~"Mám uši, slyším, co říká. Brokah se společenstvy nic nemá, protože oni vědí, že u žádné víry nevydrží dost dlouho, aby jí uvěřil sám."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45969 /* ~"A vůbec žádný úsudek, to říkám já, protože jsem dovolila, aby mě tvé slova odtáhly od zářné budoucnosti a teď jsem..."
Ti dva se navzájem zahrnují spoustou urážek, asi se budou hádat dost dlouho.
~ */
  IF ~~ THEN REPLY #45970 /* ~"Mám ještě pár otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #45971 /* ~"Chtěl bych si něco koupit..."~ */ GOTO 17
  IF ~~ THEN REPLY #45972 /* ~"Sbohem tedy."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45973 /* ~"Něco, o čem jsem si myslela, že to manželství vyléčí a co je teď úplně pryč. Ach!"
Oba opět zapadli do hádky a ignorují tě, i když docela vášnivě.
~ */
  IF ~~ THEN REPLY #45974 /* ~"Mám ještě pár otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #45975 /* ~"Chtěl bych si něco koupit..."~ */ GOTO 17
  IF ~~ THEN REPLY #45976 /* ~"Sbohem tedy."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45977 /* ~"Je jasné, že kozám na farmě chybí tvůj láskyplný přístup..." Brokah zrudl a to dva se začínají hádat ještě více, než předtím. Věnují pozornost pouze sobě navzájem, dokonale tě ignorujíc.
~ */
  IF ~~ THEN REPLY #45979 /* ~"Mám ještě pár otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #45980 /* ~"Chtěl bych si něco koupit..."~ */ GOTO 17
  IF ~~ THEN REPLY #45981 /* ~"Sbohem tedy."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45982 /* ~Chvíli nesrozumitelně mumlá a pak se pustila do tirády, která ti způsobuje bolest uší, ke které se Brokah o chvíli později připojuje ještě hlasitěji. Ignorují tě. ~ */
  IF ~~ THEN REPLY #45983 /* ~"Mám ještě pár otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #45985 /* ~"Chtěl bych si něco koupit..."~ */ GOTO 17
  IF ~~ THEN REPLY #45987 /* ~"Sbohem tedy."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 13.2 14.0 14.1 14.2 15.0 15.1 15.2 16.0 16.1 16.2
  SAY #45988 /* ~Ti dva se zuřivě hádají. Dokonale tě ignorují, jejich slova zaplňují vzduch v obchodě a docela ho rozpalují.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #45989 /* ~"Tak teda přijdu později. Sbohem."~ */ DO ~SetGlobal("Insult_BandM_1","GLOBAL",1)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ EXTERN ~DMORTE~ 730
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #66818 /* ~"Tak zkrátka přijdu později. Sbohem."~ */ EXIT
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #66819 /* ~"Tak zkrátka přijdu později. Sbohem."~ */ EXIT
END
