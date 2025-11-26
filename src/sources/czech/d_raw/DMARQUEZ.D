// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARQUEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARQUEZ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49143 /* ~Vidíš statného blonďáka v důstojnické zbroji Harmonia. Tvář má zarudlou pitím a i přes jeho úsměv mu z očí vykukuje hořkost. Okamžitě se pustil do řeči. "Dohoda zní takto. Otrokáři unesli Vrdelovu dceru. Ty ji dostaneš zpátky. Řeknu ti, kde je najdeš a ty je zabiješ a přijdeš mi to ohlásit, já ti potom pomůžu najít devu, kterého hledáš. Dokonce tě můžu naučit i něco o zbraních. Souhlas?"~ */
  IF ~~ THEN REPLY #49144 /* ~"Souhlas."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49145 /* ~"Nejdřív bych si chtěl pár věcí ujasnit..."~ */ GOTO 2
  IF ~~ THEN REPLY #49146 /* ~"Nejdřív bych se chtěl na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #49147 /* ~"Ne. Neudělám to."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50464 /* ~"Všichni už jsou mrtví."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50465 /* ~"Všichni už jsou mrtví. I ona zemřela."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 4.2 5.0 7.4 12.0 17.0
  SAY #49148 /* ~"Co jsem slyšel naposled, byli otrokáři ve východní částí Vnitřního Curstu, někde u kasáren stráže. Najdi je, dej si pozor, aby se Vrdelově dceři nic nestalo a zabij je. Jakmile bude po všem, přijď sem a já ti řeknu první část klíče, který budeš potřebovat, aby ses dostal k devovi."~ */
  IF ~~ THEN REPLY #49149 /* ~"Dobrá. Chtěl bych se o tom ještě něco málo dozvědět."~ */ JOURNAL #49153 /* ~Souhlasil jsem, že najdu otrokáře (mají být někde za kasárnami stráží), osvobodím dceru Zkaženého Vrdela a zabiju otrokáře. Pak se mám vrátit k Marquezovi, který mi za to řekne první část klíče. Ten potřebuju k nalezení devy.~ */ GOTO 7
  IF ~~ THEN REPLY #49150 /* ~"Fajn. Sbohem."~ */ JOURNAL #49153 /* ~Souhlasil jsem, že najdu otrokáře (mají být někde za kasárnami stráží), osvobodím dceru Zkaženého Vrdela a zabiju otrokáře. Pak se mám vrátit k Marquezovi, který mi za to řekne první část klíče. Ten potřebuju k nalezení devy.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 12.1 12.2
  SAY #49157 /* ~"Pár otázek? Ne. Jsou tady jenom dvě odpovědi. Jsi pro otrokářství, nebo ne?"~ */
  IF ~~ THEN REPLY #49158 /* ~"Jsem proti."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marquez_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #49159 /* ~"Jsem pro."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marquez_1","GLOBALGood",-2)
~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49160 /* ~"Tak pomůžeš, ne? Ano... nebo ne."~ */
  IF ~~ THEN REPLY #49161 /* ~"Pomůžu."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49171 /* ~"Ne."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #49173 /* ~Dívá se na tebe a z očí mu září znechucení. "Znamená to, že nepomůžeš... i když je to v tvém vlastním zájmu?"~ */
  IF ~~ THEN REPLY #49174 /* ~"Co tím myslíš?"~ */ GOTO 5
  IF ~~ THEN REPLY #49176 /* ~"To je správné. Nepomůžu."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #49177 /* ~"Oh, já pomůžu."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49178 /* ~"Myslím tím, že všichni vědí, co chceš. Hledáš devu. Zkaženej Vrdel ví, jak se k němu dostat. Byl bys blbec, kdybys tuhle situaci nevyužil."~ */
  IF ~~ THEN REPLY #49179 /* ~"Tak fajn. Pomůžu."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49181 /* ~"Stejně nepomůžu."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.3 3.1 4.1 5.1 12.3 17.1
  SAY #49182 /* ~"Tak to jsi ještě větší kretén, než jsem si myslel. Nemáme si co říct. Sbohem." Vrátil se ke svému pití.~ */
  IF ~~ THEN REPLY #49183 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 8.1 9.1 10.0 11.0 13.2 21.0
  SAY #49184 /* ~"Co?"~ */
  IF ~~ THEN REPLY #49185 /* ~"Kdo jsi?"~ */ GOTO 8
  IF ~~ THEN REPLY #49186 /* ~"Co tady děláš?"~ */ GOTO 9
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #49187 /* ~"A o co jde tobě v téhle věci s otrokářstvím?"~ */ GOTO 10
  IF ~~ THEN REPLY #49188 /* ~"Co mi můžeš říct tom klíči?"~ */ GOTO 11
  IF ~~ THEN REPLY #49189 /* ~"Kde že jsou ti otrokáři?"~ */ GOTO 1
  IF ~~ THEN REPLY #49190 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49191 /* ~"Jsem Marquez, bývalý Oceň Tři z Harmonia. Bývalý, protože jsem nedávno odešel."~ */
  IF ~~ THEN REPLY #49192 /* ~"Proč?"~ */ GOTO 10
  IF ~~ THEN REPLY #49194 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #49195 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #49196 /* ~"Chlastám. Jak ti to připadá? Čekám na někoho, kdo příjde a napraví chyby, které jsem způsobil. A ty vypadáš přesně na toho týpka, na jakýho čekám."~ */
  IF ~~ THEN REPLY #49197 /* ~"Jaké chyby?"~ */ GOTO 10
  IF ~~ THEN REPLY #49199 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #49200 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.0 9.0
  SAY #49201 /* ~"Zjistil jsem, že Harmonium, skupina ve kterou jsem od začátku věřil, nakupuje lidi, unáší je a odvádí je proti jejich vůli, ničí jejich životy. Je to vysávání života z těch, kteří se opovažují být jiní. A to už jsem nezvládl, už to nešlo dál vydržet. Otrokáři, proti kterým budeš bojovat, jsou mí bývalí společníci." Odplivl si na podlahu. "Svině. Lháři. Už se nedá nikomu věřit."~ */
  IF ~~ THEN REPLY #49203 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #49204 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #49205 /* ~"Klíč má pět částí. Verbální. Jsou to slova, která máme uložená v hlavě." Zubatě se na tebe usmál. "Mučením ho ze mě nedostaneš a řekl bych, že by se ti to nepovedlo ani u ostatních. Máme společné tajemství a ty budeš muset získat všech pět částí, abys ho odhalil."~ */
  IF ~~ THEN REPLY #49206 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #49207 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 17 even though they appear after this state */
~  Global("Slavers","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #49208 /* ~"Jsi zpátky." Polknul a odložil pití. "Poslal tě Vrdel. Dobře. Takže poslouchej. Otrokáři unesli Vrdelovu dceru. Ty ji dostaneš zpátky. Řeknu ti, kde je najdeš a ty je zabiješ a přijdeš mi to ohlásit, já ti potom pomůžu najít devu, kterého hledáš. Dokonce tě můžu naučit i něco o zbraních. Souhlas?"~ */
  IF ~~ THEN REPLY #49209 /* ~"Souhlas."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49210 /* ~"Nejdřív bych si chtěl pár věcí ujasnit..."~ */ GOTO 2
  IF ~~ THEN REPLY #49211 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ GOTO 2
  IF ~~ THEN REPLY #49212 /* ~"Ne. Neudělám to."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50468 /* ~"Všichni už jsou mrtví."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50469 /* ~"Všichni už jsou mrtví. I ona zemřela."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF WEIGHT #4 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #49214 /* ~Marquez se na tebe podíval. "Seš tady kvůli Vrdelově dceři Jasilyi?"~ */
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #49215 /* ~"Je volná. Brzy by se tu měla objevit."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",5)
AddexperienceParty(65000)
~ GOTO 14
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49216 /* ~"Zemřela, když jsem se ji pokoušel osvobodit."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
  IF ~~ THEN REPLY #49217 /* ~"Ne. Ale chci se na něco zeptat..."~ */ GOTO 7
  IF ~~ THEN REPLY #50466 /* ~"Nauč mě něco o zbraních."~ */ GOTO 21
  IF ~~ THEN REPLY #67822 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.4 12.4 13.0
  SAY #49219 /* ~Poplácal tě po rameni. "Dobrá práce. Chceš první část klíče, kterej tě dostane pod Curst, co? Tady je: 'Takové místo nekonečná justice připravila pro vzbouřené...' A teď jdi támdle za Kitlou. Ta má druhou část klíče. Anebo jestli chceš, můžu tě naučit něco o zbraních."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Pak mě tedy uč."~ */ JOURNAL #66862 /* ~Dostal jsem první část Klíče, který mi odemkne průchod k devovi. Slova jsou "Takové místo připravila nekonečná spravedlnost pro ty vzbouřené..." Teď si mám jít promluvit s někým jménem Kitla U Zrádcovy Brány.~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Pak mě tedy uč."~ */ JOURNAL #66862 /* ~Dostal jsem první část Klíče, který mi odemkne průchod k devovi. Slova jsou "Takové místo připravila nekonečná spravedlnost pro ty vzbouřené..." Teď si mám jít promluvit s někým jménem Kitla U Zrádcovy Brány.~ */ GOTO 20
  IF ~~ THEN REPLY #67824 /* ~"Děkuju. Sbohem."~ */ JOURNAL #66862 /* ~Dostal jsem první část Klíče, který mi odemkne průchod k devovi. Slova jsou "Takové místo připravila nekonečná spravedlnost pro ty vzbouřené..." Teď si mám jít promluvit s někým jménem Kitla U Zrádcovy Brány.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.5 12.5 13.1
  SAY #49222 /* ~"To je fakt škoda. Jsem si jistej, že se tomu nedalo zabránit." Zírá na tebe, ale nedokážeš poznat, na co myslí. "Tohle je první část klíče: 'Takové místo nekonečná justice připravila pro vzbouřené...' A teď jdi támdle za Kitlou. Ta má druhou část klíče. Anebo jestli chceš, můžu tě naučit něco o zbraních."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Pak mě tedy uč."~ */ JOURNAL #66862 /* ~Dostal jsem první část Klíče, který mi odemkne průchod k devovi. Slova jsou "Takové místo připravila nekonečná spravedlnost pro ty vzbouřené..." Teď si mám jít promluvit s někým jménem Kitla U Zrádcovy Brány.~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Pak mě tedy uč."~ */ JOURNAL #66862 /* ~Dostal jsem první část Klíče, který mi odemkne průchod k devovi. Slova jsou "Takové místo připravila nekonečná spravedlnost pro ty vzbouřené..." Teď si mám jít promluvit s někým jménem Kitla U Zrádcovy Brány.~ */ GOTO 20
  IF ~~ THEN REPLY #67826 /* ~"Děkuju. Sbohem."~ */ JOURNAL #66862 /* ~Dostal jsem první část Klíče, který mi odemkne průchod k devovi. Slova jsou "Takové místo připravila nekonečná spravedlnost pro ty vzbouřené..." Teď si mám jít promluvit s někým jménem Kitla U Zrádcovy Brány.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  GlobalGT("Curst_Key","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #49224 /* ~"Už se nemusíš se mnou bavit. Řekli jsme si, co bylo třeba. Jdi za Kitlou. A teď mě nechej chlastat. Nebo se snad chceš dozvědět něco o zbraních?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Pak mě tedy uč."~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Pak mě tedy uč."~ */ GOTO 20
  IF ~~ THEN REPLY #67821 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Slavers","GLOBAL",6)
~ THEN BEGIN 17 // from:
  SAY #49230 /* ~"Rozmyslel sis to a pomůžeš Vrdelovi, nebo máš zase nějaké debilní otázky?"~ */
  IF ~~ THEN REPLY #49228 /* ~"Rozmyslel jsem si to. Pomůžu."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49229 /* ~"Nerozmyslel jsem si to."~ */ GOTO 6
END

IF WEIGHT #5 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 18 // from:
  SAY #49231 /* ~Vidíš statného blonďáka v důstojnické zbroji Harmonia. Tvář má zarudlou pitím a i přes jeho úsměv mu z očí vykukuje hořkost. Okamžitě se pustil do řeči. "Poslal tě Vrdel? Ne? Tak mě přestaň otravovat." Vrátil se ke svému pití a totálně tě ignoruje.~ */
  IF ~~ THEN REPLY #49232 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #49233 /* ~"Poslal tě Vrdel? Ne? Tak mě přestaň otravovat." Vrátil se ke svému pití a totálně tě ignoruje.~ */
  IF ~~ THEN REPLY #49234 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.1 15.1 16.1
  SAY #66962 /* ~"Nejsi někdo, kdo nosí zbraně jen ze srandy, z tvých jizev se to dá snadno poznat. Ale nepřipadá mi, že bys zrovna teď žil a kráčel cestou bojovníka. Chceš se vzdát momentálního zaměstnání a raději místo toho třískat hlavy?"~ */
  IF ~~ THEN REPLY #66978 /* ~"Ano."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 22
  IF ~~ THEN REPLY #66979 /* ~"Ne."~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #66963 /* ~"Eště nejseš připravenej. Dokončí to s Jasilyou a Barsem a pak tě možná něco naučím."~ */
  IF ~~ THEN REPLY #66980 /* ~"Fajn. Mám ještě pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #66981 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.0 20.0
  SAY #66964 /* ~"Neseš se jako někdo, kdo se už se zbraněmi seznámil, takže na to půjdeme rovnou. Co chceš?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66982 /* ~"Můžeš mi říct, jestli jsem připravený na další instrukce?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66983 /* ~"Můžeš mi říct, jestli jsem připravený na další instrukce?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #66984 /* ~"Jsem docela schopný se všemi zbraněmi. Je tady ještě něco, co bys mě mohl naučit?"~ */ JOURNAL #66986 /* ~Marquez mi řekl, že jestli se chci o zbraních naučit víc, měl bych vyhledat Korura, někde v Dolní Čtvrti Sigilu. Doufám, že se mi podaří dostat se zpátky a využít toho.~ */ GOTO 24
  IF ~~ THEN REPLY #66985 /* ~"Teď zrovna nic. Vrátím se později."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #66965 /* ~"Tak proč mě otravuješ? Zmiz. Mám něco důležitýho na práci. To pití se samo nevypije."~ */
  IF ~~ THEN REPLY #66987 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 34.2
  SAY #66966 /* ~Odhadoval tvé schopnosti a pak zahvízdal. "Brácho, ty seš neuvěřitelnej. Napadá mě jenom jeden člověk, co by tě možná moh naučit víc: chlápek jménem Korur, žije v Dolní Čtvrti Sigilu. Zkus ho najít."~ */
  IF ~~ THEN REPLY #66988 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0 33.1 34.0 35.0
  SAY #66967 /* ~"Nejseš připravenej naučit se víc. Vrať se, až budeš."~ */
  IF ~~ THEN REPLY #66989 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1 27.6 28.6 29.6 30.6 31.6 33.0 34.1 35.1
  SAY #66968 /* ~"Můžu tě učit cokoli... až po určitou míru.  O jaký zbrani se chceš něco dozvědět?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66990 /* ~"Nauč mě, jak bojovat s holýma rukama."~ */ GOTO 27
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66991 /* ~"Nauč mě, jak používat dýky."~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66992 /* ~"Nauč mě, jak používat palice."~ */ GOTO 29
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66993 /* ~"Nauč mě, jak používat sekery."~ */ GOTO 30
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66994 /* ~"Nauč mě, jak používat kladiva."~ */ GOTO 31
  IF ~~ THEN REPLY #66995 /* ~"Dneska se na trénink necítím. Přijdu později."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #66969 /* ~"Tvrdej boxer? Levej hák, pravej hák, jo? Chceš se učit rvát s holejma rukama?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66996 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66997 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66998 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66999 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67000 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67001 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67030 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 26
  IF ~~ THEN REPLY #67031 /* ~"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #66970 /* ~"Dýky, jo? Zbraň pro grázly, ale je dobrá pro... osobní styk. Chceš se to naučit?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67002 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67003 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67004 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67005 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67006 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67007 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67029 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 26
  IF ~~ THEN REPLY #67032 /* ~"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #66971 /* ~"Chceš se věnovat starýmu dobrýmu pálkování, eh?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67008 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67009 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67010 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67011 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67012 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67013 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67028 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 26
  IF ~~ THEN REPLY #67033 /* ~"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #66972 /* ~Zahvízdal. "Chceš někomu ublížit, jo? Chceš se učit sekery?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67014 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67015 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67016 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 33
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67017 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67018 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
~ THEN REPLY #67019 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67027 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 26
  IF ~~ THEN REPLY #67034 /* ~"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.4
  SAY #66973 /* ~"Zbraň gentlemana - anebo kováře. Chceš se učit zacházet s kladivem?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67020 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67021 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67022 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67023 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67024 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67025 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67026 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 26
  IF ~~ THEN REPLY #67035 /* ~


"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 27.2 27.4 28.0 28.2 28.4 29.0 29.2 29.4 30.0 30.4 31.0 31.2 31.4
  SAY #66974 /* ~"Dobrá, tedy! Jdeme na to!"~ */
  IF ~~ THEN REPLY #67037 /* ~"Kdykoli se na to budeš cítit..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2 32.0
  SAY #66975 /* ~Bojujete. Po chvíli si otřel pot z očí. "Seš zatraceně dobrej. Chceš ještě něco?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67038 /* ~"Děkuju ti. Rád bych se naučil něco i ostatních zbraních, jestli mě budeš učit."~ */ GOTO 26
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67039 /* ~"Děkuju ti. Rád bych se naučil něco i ostatních zbraních, jestli mě budeš učit."~ */ GOTO 25
  IF ~~ THEN REPLY #67040 /* ~"Děkuju ti. To je pro dnešek vše."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.3 27.5 28.3 28.5 29.3 29.5 30.3 30.5 31.3 31.5
  SAY #66976 /* ~Zkoumal tvé schopnosti, pak řekl: "Naučil ses o tom bojovém stylu tolik, kolik tě dokážu naučit. Jestli se chceš naučit víc, zajdi si do Sigilu a promluv si s Korurem, měl by být někde v Dolní Čtvrti. Je to mistr prakticky ve všem."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67041 /* ~"Můžeš mě učit s jinou zbraní?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67042 /* ~"Můžeš mě učit s jinou zbraní?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #67043 /* ~"Můžeš mě učit s jinou zbraní?"~ */ GOTO 24
  IF ~~ THEN REPLY #67044 /* ~"Dobrá tedy. Děkuju. Sbohem." ~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.1 28.1 29.1 30.1 31.1
  SAY #66977 /* ~Zkoumal tvé schopnosti, pak řekl: "To je tak všechno, co tě můžu naučit. Pokud jsi nezasvětil svou kariéru studiu zbraní - tedy jestli ses nespecializoval na cestu bojovníka - moc se toho nenaučíš. Musíš se *specializovat*."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67045 /* ~"Můžeš mě učit s jinou zbraní?"~ */ JOURNAL #68288 /* ~Bylo mi řečeno, že více se o zbraních už nemohu naučit, pokud se nebudu specializovat na cestu bojovníka. Zaměření na bojová umění, které bych nikdy neopouštěl kvůli zlodějně nebo magii by mi mělo dát specializaci, o které mluví mí cvičitelé.~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67046 /* ~"Můžeš mě učit s jinou zbraní?"~ */ JOURNAL #68288 /* ~Bylo mi řečeno, že více se o zbraních už nemohu naučit, pokud se nebudu specializovat na cestu bojovníka. Zaměření na bojová umění, které bych nikdy neopouštěl kvůli zlodějně nebo magii by mi mělo dát specializaci, o které mluví mí cvičitelé.~ */ GOTO 26
  IF ~~ THEN REPLY #67047 /* ~"Dobrá tedy. Děkuju. Sbohem." ~ */ JOURNAL #68288 /* ~Bylo mi řečeno, že více se o zbraních už nemohu naučit, pokud se nebudu specializovat na cestu bojovníka. Zaměření na bojová umění, které bych nikdy neopouštěl kvůli zlodějně nebo magii by mi mělo dát specializaci, o které mluví mí cvičitelé.~ */ EXIT
END
