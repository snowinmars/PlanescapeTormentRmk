// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISAI~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2974 /* ~Je to žulová socha v životní velikosti, zpodobující muže, stojícího s rukama v bok a se zavřenýma očima. Je dokonale vytvořená s vynikajícím smyslem pro detaily... vypadá neuvěřitelně živě. Tak živě, že začínáš uvažovat, jestli je to opravdu socha.~ */
  IF ~  !NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28953 /* ~"Zdravím...?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28954 /* ~"Zdravím...?"~ */ GOTO 2
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28955 /* ~"Potkal jsem mága jménem Salabesh, který mluvil o jistém kamenném muži. Jsi to ty?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #28956 /* ~"Zdravím... jsi Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28957 /* ~Dotkni se sochy.~ */ GOTO 3
  IF ~~ THEN REPLY #28958 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 31.0
  SAY #28897 /* ~Socha neodpovídá.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28959 /* ~"Potkal jsem mága jménem Salabesh, který mluvil o jistém kamenném muži. Jsi to ty? "~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28960 /* ~Dotkni se sochy.~ */ GOTO 3
  IF ~~ THEN REPLY #28961 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #28898 /* ~Socha neodpovídá.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 285
END

IF ~~ THEN BEGIN 3 // from: 0.4 1.1 31.3
  SAY #28899 /* ~Dotknul ses sochy a zjistil jsi, že zatímco šaty, které ji zdobí, jsou vyrobeny z látky šedivé jak kámen, kůže je chladná a tvrdá jako žula.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #28982 /* ~"Hmm. Proč by někdo oblékal sochu?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
NearbyDialog("DMorte")
~ THEN REPLY #28983 /* ~"Hmm. Proč by někdo oblékal sochu?"~ */ EXTERN ~DMORTE~ 287
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28984 /* ~"Jeden mág, jmenoval se Salabesh, mi pověděl o jistém kamenném muži. Jsi to ty?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28985 /* ~Udeř sochu.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28986 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28900 /* ~Socha zůstává stále nehybná, stejně jako před tvým dotazem.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28987 /* ~"Jeden mág, jmenoval se Salabesh, mi pověděl o jistém kamenném muži. Jsi to ty?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28988 /* ~Udeř sochu.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28989 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 0.3 1.0 3.2 4.0 31.1 31.2
  SAY #28901 /* ~'Socha' se pohnula... sice pomalu, téměř nepostřehnutelně, ale očividně kývla hlavou.~ */
  IF ~~ THEN REPLY #28990 /* ~"Výborně. Měl bych pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #28991 /* ~"Myslel jsem si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 32.0
  SAY #28902 /* ~'Socha' zůstává tiše jako předtím.~ */
  IF ~~ THEN REPLY #28992 /* ~"Haló? Ty otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #28993 /* ~"Hmm. Tak se teda měj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #28903 /* ~A pořád žádná odpověď.~ */
  IF ~~ THEN REPLY #28994 /* ~Vyčkej na odpověď.~ */ GOTO 57
  IF ~~ THEN REPLY #28998 /* ~Vzdej to a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 58.0 58.1
  SAY #28904 /* ~Oči sochy se otevřely; pohlédla na tebe svýma temnýma šedivýma očima. Mluví těžkopádně, jako kdyby se o sebe třely dva balvany. "Tvá trpělivost... byla odměněna. Qui-Sai teď... s tebou... promluví."~ */
  IF ~~ THEN REPLY #28999 /* ~"Mám pár dotazů o tobě samém"...~ */ GOTO 11
  IF ~~ THEN REPLY #29000 /* ~"Chtěl bych se zeptat na něco ohledně tohoto místa."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29001 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 29
  IF ~~ THEN REPLY #29002 /* ~"Ještě se stavím později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 58.2
  SAY #28905 /* ~Oči sochy se otevřely; pohlédla na tebe svýma temnýma šedivýma očima. Mluví těžkopádně, jako kdyby se o sebe třely dva balvany. "Tvá trpělivost... byla odměněna. Qui-Sai teď... s tebou... promluví."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 289
END

IF ~~ THEN BEGIN 10 // from: 11.3 12.2 13.3 14.2 15.0 16.2 17.1 19.0 27.2 28.1 29.0 30.0 35.0 37.10 38.0 41.1 49.1 50.2 51.1 53.1 55.0 56.0 59.0
  SAY #28906 /* ~Zrovna, když sis pomyslel, že tě nejspíš neslyšel, promluvil. "Ptej se."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65157 /* ~"Mluvil jsem s Eli o tom, co jsi předtím řekla a přiznala, že ta bitva musí být dobojována. Je chybou spoléhat se jenom na skrývání."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65158 /* ~"Mluvil jsem s Eli o tom, co jsi předtím řekla a přiznala, že žádný zloděj nezvládá zlodějinu tak, aby získal diplom. Nemůžeš se stále skrývat před nepřáteli; tvá vůně nebo pouhé myšlení tě může prozradit."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65159 /* ~"Mluvil jsem s Lady Trnočesou o tom, co jsi před tím řekla. Řekla, že kouzelníci jsou fyzicky nedostateční, jejich kouzla pouze skrývají tuhle neschopnost. I když bitva stále trvá, kouzelník je již unaven."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29003 /* ~"Mám pár dotazů o tobě samém"...~ */ GOTO 11
  IF ~~ THEN REPLY #29004 /* ~"Chtěl bych se zeptat na něco ohledně tohoto místa."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29005 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 29
  IF ~~ THEN REPLY #29006 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.3 33.3
  SAY #28907 /* ~Po dalším momentu ticha promluvil: "Ptej se."~ */
  IF ~~ THEN REPLY #29007 /* ~"Co to bylo za meditaci předtím, než jsem tě poprvé potkal?"~ */ GOTO 51
  IF ~~ THEN REPLY #29008 /* ~"Kdo jsi?"~ */ GOTO 12
  IF ~~ THEN REPLY #29009 /* ~"Co tady děláš?"~ */ GOTO 13
  IF ~~ THEN REPLY #29010 /* ~"Měl bych ještě nějaké jiné otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #29011 /* ~"To je dobrý. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.2
  SAY #28908 /* ~"Říkají mi... Qui-Sai."~ */
  IF ~~ THEN REPLY #29012 /* ~"Co přesně jsi?"~ */ GOTO 27
  IF ~~ THEN REPLY #29013 /* ~"Co tady děláš?"~ */ GOTO 13
  IF ~~ THEN REPLY #29014 /* ~"Mám ještě další otázky..." ~ */ GOTO 10
  IF ~~ THEN REPLY #29015 /* ~"Tak to je prozatím všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.1 27.1 28.0
  SAY #28909 /* ~"Qui-Sai... medituje. Qui-sai... také trénuje... ostatní v umění... boje."~ */
  IF ~~ THEN REPLY #29016 /* ~"Co to bylo před chvílí za meditaci?"~ */ GOTO 51
  IF ~  GlobalLT("Qui_Sai","GLOBAL",5)
Global("CW_Qui_Question","GLOBAL",0)
~ THEN REPLY #29017 /* ~"Mohl bys mě trénovat?"~ */ GOTO 14
  IF ~~ THEN REPLY #29018 /* ~"Kdo jsi?"~ */ GOTO 12
  IF ~~ THEN REPLY #29019 /* ~"Mám ještě další otázky..."
~ */ GOTO 10
  IF ~~ THEN REPLY #29020 /* ~"Tak to je prozatím všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #28910 /* ~Prohlédl si tě od hlavy až k patě, vydávaje přitom hluboký skřípavý zvuk. Potom pomalu uchopil do ruky jeden se svých prstů a s hlasitým křupnutím si utrhnul jeden nehet. "Qui-Sai tě chce vidět... zlomit tento kámen." Podal ti kousek živého kamene.~ */
  IF ~  CheckStatGT(Protagonist,8,STR)
~ THEN REPLY #29021 /* ~Rozlom kámen.~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,9,STR)
~ THEN REPLY #29022 /* ~Rozlom kámen.~ */ JOURNAL #28756 /* ~Qui-Sai, učitel boje v Městské hale, mě odmítl trénovat se slovy, že jsem příliš slabý. Snad, až někdy nabudu větší síly, se budu moci vrátit.~ */ GOTO 15
  IF ~~ THEN REPLY #29023 /* ~"Vlastně... Mám pro tebe ještě pár jiných otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #29024 /* ~"Už musím bohužel jít, tady máš ten kámen. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #28911 /* ~Ať se snažíš jak se snažíš, za žádnou cenu to nedokážeš. "Qui-Sai tě shledává... nevhodným... příliš slabým... pro výcvik v umění boje." Vzal si od tebe ten kámen, strčil si ho do pusy a rozžvýkal ho na prášek za doprovodu odpudivého křupavého zvuku.~ */
  IF ~~ THEN REPLY #29025 /* ~"Měl bych pár otázeček..."~ */ GOTO 10
  IF ~~ THEN REPLY #29026 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #28912 /* ~Po chvilce snažení jsi rozlomil plátek kamene na dvě části. Vzal si od tebe obě a strčil si je do pusy. Pak je rozžvýkal za doprovodu odpuzujícího křupavého zvuku. "Qui-Sai tě shledává... fyzicky vyhovujícím. Qui-Sai se nyní ptá... proč... vyhledáváš trénink?"~ */
  IF ~~ THEN REPLY #29027 /* ~"Pro sebeobranu."~ */ GOTO 17
  IF ~~ THEN REPLY #29029 /* ~"K ničení mých nepřátel."~ */ GOTO 17
  IF ~~ THEN REPLY #29030 /* ~"Zapomeň na to. Radši bych se tě ještě na něco zeptal..."~ */ GOTO 10
  IF ~~ THEN REPLY #29031 /* ~"Vlastně je mi k ničemu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #28913 /* ~"Qui-Sai nevidí... potřebu... boje."~ */
  IF ~~ THEN REPLY #29032 /* ~"Co tím chceš říct?"~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29033 /* ~"Máš pravdu. Ještě bych se tě chtěl na něco zeptat..."~ */ GOTO 10
  IF ~~ THEN REPLY #29034 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #28914 /* ~"Qui-Sai chtěl říci, že... je mnoho cest... jak docílit svého cíle. Například... ukrást oponentu zbraň... nechat ho... bezbranného."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29036 /* ~"Ale bitvami se stále musíš probojovávat. Spoléhat se na zlodějinu je chyba."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29038 /* ~"Cožpak ty mě nechceš trénovat?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1 20.2
  SAY #28915 /* ~"Qui-Sai nevidí... potřebu. Nepodařilo se ti přesvědčit Qui-Saie. Možná bys mohl... promluvit s místním poručníkem zlodějů. Nechceš-li cvičit pod jeho velením... mohl by alespoň poskytnout protiváhu mým argumentům."~ */
  IF ~~ THEN REPLY #29041 /* ~"Ještě na něco bych se tě ale chtěl zeptat..."~ */ JOURNAL #56794 /* ~Qui-Sai mě odmítl trénovat jako válečníka, tvrdíc, že zloděj má oproti bojovníkovi větší možnosti. Navrhl mi, ať trénuju na zloděje u cvičitele Haly, nebo, pokud se nechci stát zlodějem, ať zajdu k tomu cvičiteli a najdu protiargument na Qui-Saiovo tvrzení.~ */ GOTO 10
  IF ~~ THEN REPLY #29042 /* ~"V tom případě sbohem."~ */ JOURNAL #56794 /* ~Qui-Sai mě odmítl trénovat jako válečníka, tvrdíc, že zloděj má oproti bojovníkovi větší možnosti. Navrhl mi, ať trénuju na zloděje u cvičitele Haly, nebo, pokud se nechci stát zlodějem, ať zajdu k tomu cvičiteli a najdu protiargument na Qui-Saiovo tvrzení.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 10.0 18.0 33.0
  SAY #28916 /* ~Po chvíli pokýval hlavou. "Můžeš se i... skrýt. Jestliže nebudeš spatřen... nemůžeš býti napaden. Budeš... nezranitelný."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29043 /* ~"Ale ještě žádný zloděj nezvládl schovávání se zcela dokonale. A navíc, před někým se nemůžeš skrýt; tvůj pach či myšlenky tě dokáží prozradit."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  GlobalGT("CW_Eli_Ans","GLOBAL",1)
~ THEN REPLY #29044 /* ~"Ale ještě žádný zloděj, ani Eli, nezvládl schovávání se zcela dokonale. A navíc, před někým se nemůžeš skrýt; tvůj pach či myšlenky tě dokáží prozradit."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29045 /* ~"Cožpak ty mě nechceš trénovat?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 10.1 20.0 20.1 33.1
  SAY #28917 /* ~Chvíli počkal, pak kývl. "Mocná kouzla... dokáží smést spoustu soků... mnohem rychleji... než čepel."~ */
  IF ~  GlobalGT("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Mágové jsou jako flakóny ohnivého oleje... mocní, ale jakmile se vyčerpají, nezbude nic. Jsou fyzicky slabí a jejich kouzla jsou jim pouze slabou berličkou. Když čaroděj vyplýtvá své možnosti, stále přebývá potřeba boje."~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",3)
SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  Global("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Mágové jsou jako flakóny ohnivého oleje... mocní, ale jakmile se vyčerpají, nezbude nic. Jsou fyzicky slabí a jejich kouzla jsou jim pouze slabou berličkou. Když čaroděj vyplýtvá své možnosti, stále přebývá potřeba boje."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29050 /* ~"Cožpak ty mě nechceš trénovat?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",2)
~ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 10.2 21.0 21.1 33.2
  SAY #28918 /* ~Jemně se pousmál a vydal hluboký dunivý zvuk ze svého hrdla. "Qui-Sai tě shledává... způsobilým pro výcvik. Qui-Sai tě očekává... v tréninkovém salónu."~ */
  IF ~~ THEN REPLY #29053 /* ~"Za chvíli jsem tam."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai konečně souhlasil, že mě bude cvičit. Řekl mi, ať za ním přijdu na válečnické cvičiště v Hale.~ */ EXIT
  IF ~~ THEN REPLY #29054 /* ~"Ještě si něco musím vyřídit. Stavím se později."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai konečně souhlasil, že mě bude cvičit. Řekl mi, ať za ním přijdu na válečnické cvičiště v Hale.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.3 4.1
  SAY #28919 /* ~Jakmile ses napřáhl, abys udeřil sochu, bleskurychle otevřela oči a tvá paže se náhle octla v ocelovém sevření jejích rukou. Šedé studené oči se jí zúžily a poté promluvila hlasem, jako když se o sebe třou dva balvany: "Proč... chceš... udeřit Qui-Saie?"~ */
  IF ~~ THEN REPLY #29055 /* ~"Odpusť, jenom jsem se chtěl přesvědčit, zda jsi opravdu socha."~ */ GOTO 24
  IF ~~ THEN REPLY #29056 /* ~"Proč sis ze mě dělal blázny?"~ */ GOTO 25
  IF ~~ THEN REPLY #29057 /* ~"Zapomeň, co se stalo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #28920 /* ~Pomalu zamračeně pokývl. "Je ti... odpuštěno. Přesto... máš očividně málo... trpělivosti."~ */
  IF ~~ THEN REPLY #29058 /* ~"Možná ano. Ale teď bych se tě chtěl na něco zeptat..."~ */ GOTO 6
  IF ~~ THEN REPLY #29059 /* ~"Asi máš pravdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28921 /* ~"Qui-Sai si z nikoho... nedělal blázny. Qui-Sai... tě shledává... ukvapeným... a neslušným."~ */
  IF ~~ THEN REPLY #29060 /* ~"Odpusť, jenom jsem se chtěl přesvědčit, zda jsi opravdu socha."~ */ GOTO 24
  IF ~~ THEN REPLY #29061 /* ~"To je špatný. Mám pro tebe pár otázek..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Qui_1","GLOBALGood",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #28922 /* ~Zavřel oči a znovu upadl do mlčení. ~ */
  IF ~~ THEN REPLY #29062 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0
  SAY #28923 /* ~"Jsem... nazýván podle rasy... kamenným princem. Qui-Sai je... genasi-země."~ */
  IF ~~ THEN REPLY #29063 /* ~"Genasi?"~ */ JOURNAL #65756 /* ~Qui-Sai, kterého jsem potkal v Občanské Hale, mi řekl, že je to, čemu se říká 'genasi-země'... potomek zemního elementála a člověka."~ */ GOTO 28
  IF ~~ THEN REPLY #29064 /* ~"Co tady děláš?"~ */ GOTO 13
  IF ~~ THEN REPLY #29065 /* ~"Mám ještě další otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #29066 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #28924 /* ~Pyšně pokývl. "Qui-Saiův otec... stvoření elementu země... Dao. Qui-Saiova matka... lidská žena... urozené krve. Tak vzniknul... genasi-země."~ */
  IF ~~ THEN REPLY #29067 /* ~"Co tady děláš?"~ */ GOTO 13
  IF ~~ THEN REPLY #29068 /* ~"Mám ještě pár dalších otázek.." ~ */ GOTO 10
  IF ~~ THEN REPLY #29069 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 8.2 10.5 33.5
  SAY #28925 /* ~"Ale nic."~ */
  IF ~~ THEN REPLY #29070 /* ~"Mám ještě další otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #29071 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.4 33.4
  SAY #28926 /* ~"Toto je... Městská hala. Chceš-li vědět víc... najdi někoho jiného... pro otázky."~ */
  IF ~~ THEN REPLY #29072 /* ~"Hmm. Mám ještě další otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #29073 /* ~"Najdu si někoho jiného. Měj se."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #28927 /* ~Socha tu stále stojí, nehybně a tiše jako obvykle.~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #29074 /* ~"Zdravím..."~ */ GOTO 1
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #29075 /* ~"Potkal jsem mága jménem Salabesh a ten mi vyprávěl o kamenném muži. Jsi to ty?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #29076 /* ~"Zdravím... nejsi náhodou Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #29077 /* ~Dotkni se sochy.~ */ GOTO 3
  IF ~~ THEN REPLY #29078 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #28928 /* ~Socha tu stále stojí, nehybně a tiše jako obvykle.~ */
  IF ~~ THEN REPLY #29079 /* ~"Nazdárek. Měl bych na tebe pár dotazů..."~ */ GOTO 6
  IF ~~ THEN REPLY #29080 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",3)
~ THEN BEGIN 33 // from:
  SAY #28929 /* ~"Qui-Sai tě vítá."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65160 /* ~"Mluvil jsem s Eli o tom co jsi předtím řekla a přiznala, že bitva musí dobojovat. Je chybou spoléhat se na útěk."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65161 /* ~"Mluvil jsem s Eli o tom co jsi předtím řekla a řekla, že žádný zloděj nezvládá zlodějinu tak aby získal diplom. Nemůžeš se stále skrývat před nepřáteli; tvá vůně nebo pouhé myšlení tě může prozradit."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65162 /* ~"Mluvil jsem s Lady Trnočesou o tom, co jsi před tím řekl. Řekla, že kouzelníci jsou fyzicky nedostateční, jejich kouzla pouze skrývají tuhle neschopnost. I když bitva stále trvá, kouzelník je již unaven."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29081 /* ~"Chci se zeptat na něco o tobě samém..."~ */ GOTO 11
  IF ~~ THEN REPLY #29082 /* ~"Můžeš mi povědět něco o tomto místě?"~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29083 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 29
  IF ~~ THEN REPLY #29084 /* ~"Jenom jdu kolem. Měj se."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #28930 /* ~"Nemluv. Jdi... do výcvikové komnaty."~ */
  IF ~~ THEN REPLY #29085 /* ~"Jsem tam za chviličku."~ */ EXIT
  IF ~~ THEN REPLY #29086 /* ~"Ještě mám trošku vyřizování. Stavím se později."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",5)
~ THEN BEGIN 35 // from:
  SAY #28931 /* ~Chladně si tě změřil svýma žulovýma rukama. "Jsi tu... trénovat pod Qui-Saiem?"~ */
  IF ~~ THEN REPLY #29087 /* ~"Ne, mám pro tebe pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #29088 /* ~"Ano, uč mě."~ */ GOTO 36
  IF ~~ THEN REPLY #65507 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY #28932 /* ~"Jsi... pasován válečníkem?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29089 /* ~"Ano."~ */ GOTO 37
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29090 /* ~"Eh... ne."~ */ GOTO 49
END

IF ~~ THEN BEGIN 37 // from: 36.0 40.0 41.0 42.2 43.2 44.2 45.2 46.2 48.1 50.0 50.1
  SAY #28933 /* ~"Qui-Sai je zběhlý v umění... boje všech zbraní, specialistou... žádných... mistrem mnohých. Co se chceš učit... od Qui-Saie?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29091 /* ~"Nauč mě bojovat pěstmi."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29092 /* ~"Nauč mě bojovat pěstmi."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29093 /* ~"Nauč mě bojovat s noži."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29094 /* ~"Nauč mě bojovat s noži." ~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29095 /* ~"Nauč mě bojovat s kyji."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29096 /* ~"Nauč mě bojovat s kyji."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29097 /* ~"Nauč mě bojovat se sekyrami."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29098 /* ~"Nauč mě bojovat se sekyrami."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29099 /* ~"Nauč mě bojovat s kladivy."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29100 /* ~"Nauč mě bojovat s kladivy."~ */ GOTO 46
  IF ~~ THEN REPLY #29101 /* ~"Vlastně bych se tě radši na něco zeptal..."~ */ GOTO 10
  IF ~~ THEN REPLY #29102 /* ~"Ale nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.2 37.4 37.6 37.8 40.1
  SAY #28934 /* ~"Už se nemůžeš... naučit více... protentokrát. Vrať se za... Qui-Saiem... až budeš... více zkušený."~ */
  IF ~~ THEN REPLY #29103 /* ~"Měl bych pro tebe ještě pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #29104 /* ~"Jak myslíš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 42.0 43.0 44.0 45.0 46.0 48.0
  SAY #28935 /* ~"Qui-Sai tě může... vycvičit."~ */
  IF ~~ THEN REPLY #29105 /* ~Trénuj s ním.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #28936 /* ~"Qui-Sai je... spokojen... s tebou jako... studentem. Učíš se... rychle."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29106 /* ~"Díky. Můžeš mě naučit ještě něco?"~ */ GOTO 37
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29107 /* ~"Díky. Můžeš mě naučit ještě něco?"~ */ GOTO 38
  IF ~~ THEN REPLY #29108 /* ~"Díky. Sbohem, Qui-Saii."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.1 43.1 44.1 45.1 46.1
  SAY #28937 /* ~Po zhodnocení tvých dovedností Qui-Sai zatřásl hlavou. "Qui-Sai tě shledává... už dostatečně zběhlým v... tomto způsobu boje. Qui-Sai tě... již nemůže cvičit. Přeješ-li si... se o této zbrani naučit víc... vyhledej Korura, v Dolní čtvrti."~ */
  IF ~~ THEN REPLY #29109 /* ~"Díky. Můžeš mě naučit ještě něco?"~ */ GOTO 37
  IF ~~ THEN REPLY #29110 /* ~"Měl bych pro tebe ještě pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #29111 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 37.1
  SAY #28938 /* ~"Qui-Sai tě může cvičit... v umění boje s... pěstmi. Je to... to, co si přeješ?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
~ THEN REPLY #29112 /* ~"Ano, uč mě."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,FIST,2)
~ THEN REPLY #29113 /* ~"Ano, uč mě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29114 /* ~"Ne... co jiného mě můžeš naučit?"~ */ GOTO 37
  IF ~~ THEN REPLY #29115 /* ~ "Ne, dneska nemám náladu na trénink. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 37.3
  SAY #28939 /* ~"Qui-Sai tě může cvičit... v umění boje s... dýkami. Je to... to, co si přeješ?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
~ THEN REPLY #29116 /* ~"Ano, uč mě."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
~ THEN REPLY #29117 /* ~"Ano, uč mě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29118 /* ~"Ne... co jiného mě můžeš naučit?"~ */ GOTO 37
  IF ~~ THEN REPLY #29119 /* ~"Ne, dneska nemám náladu na trénink. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.5
  SAY #28940 /* ~"Qui-Sai tě může cvičit... v umění boje s... kyji. Je to... to, co si přeješ?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
~ THEN REPLY #29120 /* ~"Ano, uč mě."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
~ THEN REPLY #29121 /* ~"Ano, uč mě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29122 /* ~"Ne... co jiného mě můžeš naučit?"~ */ GOTO 37
  IF ~~ THEN REPLY #29123 /* ~"Ne, dneska nemám náladu na trénink. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.7
  SAY #28941 /* ~"Qui-Sai tě může cvičit... v umění boje se... sekyrami. Je to... to, co si přeješ?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
~ THEN REPLY #29124 /* ~"Ano, uč mě."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,AXE,2)
~ THEN REPLY #29125 /* ~"Ano, uč mě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29126 /* ~"Ne... co jiného mě můžeš naučit?"~ */ GOTO 37
  IF ~~ THEN REPLY #29127 /* ~"Ne, dneska nemám náladu na trénink. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.9
  SAY #28942 /* ~"Qui-Sai tě může cvičit... v umění boje s... s mocným kladivem. Je to... to, co si přeješ?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
~ THEN REPLY #29128 /* ~ "Ano, uč mě."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
~ THEN REPLY #29129 /* ~"Ano, uč mě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29131 /* ~"Ne... co jiného mě můžeš naučit?"~ */ GOTO 37
  IF ~~ THEN REPLY #29132 /* ~"Ne, dneska nemám náladu na trénink. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #28943 /* ~Po zhodnocení tvých dovedností, Qui-Sai pokývl a vydal hluboký dunivý zvuk. "Qui-Sai tě shledává... připraveným pro... další výuku v... mocném kladivu."~ */
  IF ~~ THEN REPLY #29133 /* ~"Pak mě tedy uč."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #28944 /* ~"Qui-Sai by tě chtěl upozornit... na toto: až se staneš mistrem... v kladivu... nestaneš se mistrem... v jiných zbraních. Je tohle... tvé přání?"~ */
  IF ~~ THEN REPLY #29134 /* ~"Ano, přeji si specializovat se na boj s kladivy."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #28818 /* ~Qui-Sai, učitel boje v Městské hale, mě vyučil v mistrovství s kladivem. Od nynějška jsem specialistou v boji s touto zbraní.~ */ GOTO 39
  IF ~~ THEN REPLY #29135 /* ~"Ne. Co jiného mě můžeš naučit?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 49 // from: 36.1
  SAY #28945 /* ~Qui-Saiova ústa se zkroutila do hlubokého zamračení. "Pak tě Qui-Sai... nemůže naučit nic."~ */
  IF ~~ THEN REPLY #29136 /* ~"Můžeš ze mě udělat válečníka?"~ */ GOTO 50
  IF ~~ THEN REPLY #29137 /* ~"Měl bych pro tebe pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #29138 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28946 /* ~Qui-Saiovo levé obočí se neskutečně pomalu zdvihlo až k jeho čelu. "Vzdáš se... své nynější cesty, abys následoval... cestu válečníka?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29139 /* ~"Ano. Už si nepřeji studovat umění magie. Udělej ze mě válečníka."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #29140 /* ~"Ano. Už si nepřeji studovat umění magie. Udělej ze mě válečníka."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~~ THEN REPLY #29141 /* ~"Vlastně ani ne. Radši bych se tě zeptal na pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #29142 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 11.0 13.0
  SAY #28947 /* ~"Qui-Sai medituje v.. Cestě kamene."~ */
  IF ~~ THEN REPLY #29143 /* ~"Cesta kamene?'"~ */ GOTO 52
  IF ~~ THEN REPLY #29144 /* ~"Mám ještě další otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #29145 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #28948 /* ~Qui-Sai kývl. "To je... filosofie. To je... metoda boje. S její pomocí... Qui-Sai může dosáhnout... nezranitelnosti."~ */
  IF ~~ THEN REPLY #29146 /* ~"Nezranitelnost? To budeš v bitvách neporazitelným..."~ */ GOTO 53
  IF ~~ THEN REPLY #29147 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #28949 /* ~"Ano. Teď... ale cesta není ještě... u konce. Qui-Sai ho ale... jednoho dne dosáhne. Qui-Sai... to ví."~ */
  IF ~  Global("Way_of_Stone","GLOBAL",0)
~ THEN REPLY #29148 /* ~"Mohl bys mi povědět, na co všechno už jsi přišel?"~ */ GOTO 54
  IF ~~ THEN REPLY #29149 /* ~"Ach tak. Měl bych ještě pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #29150 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #28950 /* ~Qui-Sai kývl. "Ještě nikdo nežádal... Qui-Saie o sdílení jeho vědomostí... o Cestě. Qui-Sai se teď... podělí." Začal zdlouhavě, pomalu a zřetelně vysvětlovat...~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #29151 /* ~Poslouchej a osvoj si Cestu kamene.~ */ DO ~SetGlobal("Way_of_Stone","GLOBAL",1)
PermanentStatChange(Protagonist,ARMORCLASS,LOWER,1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28819 /* ~ Qui-Sai, učitel boje v Městské hale, mě vyučil v 'Cestě kamene.' Zatímco většina z jeho filosofií nemá pro mě žádného či prachbídného významu, díky tomu, že jsem bytost z masa a kostí, můžu využít některé z principů života k tomu, abych se stal méně zranitelným v bitvě.~ */ GOTO 55
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #29152 /* ~Poslouchej, snaž se pochopit Cestu kamene.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28820 /* ~Qui-Sai, učitel boje v Městské hale, se mě pokoušel vyučit v 'Cestě kamene.' Tato filosofie ale byla bohužel příliš komplikovaná na to, abych ji pochopil.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #28951 /* ~Po hodinách poslouchání a mnoha, mnoha otázkách, jsi dospěl k názoru, že jen nepatrný zlomek z Cesty kamene tě Qui-Sai dokáže naučit. V bitvě to můžeš využít k odolávání a k odrážení výpadů svých soků, zvýšíš si tak třídu zbroje.~ */
  IF ~~ THEN REPLY #29153 /* ~"Díky, Qui-Saii. Mám pro tebe ještě pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #29154 /* ~"Díky, Qui-Saii. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #28952 /* ~Po hodinách poslouchání a mnoha, mnoha otázkách, stále ještě nechápeš Qui-Saiovu Cestu kamene. Její koncepty jsou prostě příliš složité a cizí na to, abys je pochopil.~ */
  IF ~~ THEN REPLY #29155 /* ~"Dík za tvůj čas, Qui-Saii. Měl bych ještě pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #29156 /* ~ "Dík za tvůj čas, Qui-Saii. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 7.0
  SAY #31247 /* ~Žádná odpověď. Máš pocit, že ten Qui-Sai zkouší tvou trpělivost.~ */
  IF ~~ THEN REPLY #28995 /* ~Čekej dál.~ */ GOTO 58
  IF ~~ THEN REPLY #28996 /* ~Vzdej to a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #31251 /* ~Uběhlo pár minut a Qui-Sai stále ještě neodpovídá.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31257 /* ~Tiše vyčkej ještě chvíli...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!Global("Water","GLOBAL",3)
~ THEN REPLY #31258 /* ~Tiše vyčkej ještě chvíli...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
Global("Water","GLOBAL",3)
~ THEN REPLY #31259 /* ~Tiše vyčkej ještě chvíli...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 9
  IF ~~ THEN REPLY #31260 /* ~Vzdej to a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.2
  SAY #65163 /* ~"Qui-Sai vidí... toť vše. Nepřesvědčil jsi Qui-Saie... i když. Možná bys mohl... promluvit si s kouzelnickým instruktorem. Když nebudeš chtít trénovat pod ní... možná, že by mohla poskytnout protiváhu k mému argumentu."~ */
  IF ~~ THEN REPLY #65164 /* ~"Nech mě zeptat se tě na něco jiné, tedy..."~ */ JOURNAL #58925 /* ~Qui-Sai mě odmítl trénovat jako válečníka, tvrdíc, že mág má větší výhody - navzdory jeho předchozímu argumentu o zlodějích. Navrhl mi, ať trénuju na kouzelníka u magického cvičitele Haly, nebo, pokud mám odpor ke kouzlům, ať zajdu k tomu cvičiteli a najdu protiargument na Qui-Saiovo tvrzení.~ */ GOTO 10
  IF ~~ THEN REPLY #65165 /* ~"V tomto případě sbohem."~ */ JOURNAL #58925 /* ~Qui-Sai mě odmítl trénovat jako válečníka, tvrdíc, že mág má větší výhody - navzdory jeho předchozímu argumentu o zlodějích. Navrhl mi, ať trénuju na kouzelníka u magického cvičitele Haly, nebo, pokud mám odpor ke kouzlům, ať zajdu k tomu cvičiteli a najdu protiargument na Qui-Saiovo tvrzení.~ */ EXIT
END
