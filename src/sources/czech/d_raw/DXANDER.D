// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANDER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6657 /* ~Starý muž na tebe beze strachu pohlédl a říká, "Tak ty jsi ten o kom všichni mluví, co? Pak tedy běž. Nemám ti co říct."~ */
  IF ~~ THEN REPLY #6668 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6669 /* ~Starý muž na tebe jednou nebo dvakrát mrkl a říká, "Zde ti nemohu pomoci. Měl bys jít se strážemi." Obrátil se zpět k zařízení, které držel v rukou.~ */
  IF ~~ THEN REPLY #6670 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Evil_Xander_1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #6671 /* ~"A ty si opravdu myslíš, že ti budu chtít pomoct potom co jsi mi vyhrožoval? Jsi větší hlupák, než jsem si myslel. Chci omluvu. Hned."~ */
  IF ~~ THEN REPLY #6672 /* ~"Do Devíti pekel s tebou, starče."~ */ GOTO 15
  IF ~~ THEN REPLY #6673 /* ~Lež: "Omlouvám se. Přemohl mne hněv. Už se to víckrát nestane."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #6674 /* ~"Omlouvám se. Přemohl mne hněv. Už se to víckrát nestane."~ */ GOTO 16
  IF ~~ THEN REPLY #6675 /* ~"Ne. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 15 even though they appear after this state */
~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #6676 /* ~"Ozubená kola nejsou v pořádku, příteli. Myslím, že teď, když je Bedai-Lihn mrtvá, musím ti dát pár rad, které potřebuješ k opravě. Takže poslouchej, jak to máš udělat..." Začal chrlit informace. Nemáš jistotu, zda jsi to všechno pochytil.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #6677 /* ~"Myslím, že to mám. Jinými slovy, nejdřív vyndám primární čep, vyčistím ho kolomazí, naostřím tupý zub a vyměním ho?"~ */ DO ~SetGlobal("GearRepair","GLOBAL",4)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #6678 /* ~"Myslím, že to mám... jak byla ta část o primárních hybných jednotkách... ne, počkat. Úplně jsem to nepochopil."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #6679 /* ~"Přesně tak. Mohu teď pokračovat na svých návrzích, nebo mne budeš otravovat ještě dalšími otázkami?"~ */
  IF ~~ THEN REPLY #6680 /* ~"Dobře, vlastně, chci se tě ještě na něco zeptat."~ */ GOTO 27
  IF ~~ THEN REPLY #6681 /* ~"Ne, to je vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #6682 /* ~"Je jasné, že to nejsi schopen opravit. Myslím, že půjdu a udělám to sám." Zabrblal a postavil se na nohy. "Někteří troubové to nám, starochům, ztěžují," reptá.~ */
  IF ~~ THEN REPLY #6683 /* ~"Než půjdeš, chtěl bych ti položit pár otázek."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 27
  IF ~~ THEN REPLY #6684 /* ~"Jo, no jasně, někteří z nás umí zase něco jiného. Troubo."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",4)
~ THEN BEGIN 6 // from: 12.2
  SAY #6685 /* ~"Jakmile budeš připraven získat klíč snů, zjizvený člověče, řekni a já ti ho dám."~ */
  IF ~~ THEN REPLY #6686 /* ~"Dej mi klíč."~ */ GOTO 7
  IF ~~ THEN REPLY #6687 /* ~"Ne. Teď ne. Odpověz mi na nějakou jinou otázku."~ */ GOTO 27
  IF ~~ THEN REPLY #6688 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6689 /* ~Odmlčel se, jako by sbíral bloudící myšlenky. "Zavři oči a natáhni ruku," řekl. "Musíš ten klíč ucítit dřív než jej uvidíš, jinak nebude fungovat."~ */
  IF ~~ THEN REPLY #6690 /* ~Udělej co říká.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6691 /* ~Nenápadně se dívej.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 11.0
  SAY #6692 /* ~Cítíš dotek v dlani. Nejprve ho sotva vnímáš, ale postupně pocit sílí a nabírá pevných tvarů, až nakonec Xander řekne: "Otevři oči." Když to uděláš, vidíš na dlani jednoduché černé pírko. "Má práce skončila," řekl Xander. "Použij tento klíč na dveře úplně vlevo ve slévárně a otevře se ti cesta k Tvůrci snů. Teď musím jít... mám ještě nějakou práci."~ */
  IF ~~ THEN REPLY #6693 /* ~"Pírko? Tohle všechno kvůli pírku?"~ */ JOURNAL #68034 /* ~Konečně jsem dokončil ten prokletý úkol s tvůrcem snů. A získal jsem za to... pírko. Měl by to být klíč, který mi odemkne dveře ke snům. Doufám, že to bude stát za všechny ty problémy.~ */ GOTO 10
  IF ~~ THEN REPLY #6695 /* ~"Děkuji Xandere. Sbohem."~ */ DO ~EscapeArea()
~ JOURNAL #68034 /* ~Konečně jsem dokončil ten prokletý úkol s tvůrcem snů. A získal jsem za to... pírko. Měl by to být klíč, který mi odemkne dveře ke snům. Doufám, že to bude stát za všechny ty problémy.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #6696 /* ~Pozoruješ štěrbinou mezi víčky jak se Xander chvíli koncentruje a drží své ruce ve vzduchu nad tvými. Nic se nestalo. Stařec otevřel oči, pohlédl na tvoji prázdnou ruku a rozzlobeně vybuchl: "Říkal jsem, abys zavřel oči, hlupáku! Tohle není žádná hra! Myslíš, že mne baví utrácet svůj život kvůli tvým hloupým výmyslům? Myslíš, že chci cítit tvé pochybnosti o mé práci? Zavři oči a měj je zavřené, tupče, nebo žádný klíč nebude!"~ */
  IF ~~ THEN REPLY #6697 /* ~"Dej mi klíč, starče. Teď."~ */ GOTO 11
  IF ~~ THEN REPLY #6698 /* ~Udělej co řekl.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6699 /* ~"Zapomeň na to. Mám lepší věci na práci, než čekat na bláznovo blouznění." Odejdi.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #6700 /* ~"Je to poslední ochrana Tvůrce snů, blbče. Myslíš, že chci, aby se k němu dostal kdokoliv? Nejsem hlupák. Chceš ještě něco jiného, nebo se teď mohu vrátit ke své práci?"~ */
  IF ~~ THEN REPLY #6702 /* ~"Vrať se do práce."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #6703 /* ~"Vrať se do práce, děkuji mockrát."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #6704 /* ~Zrudl jak snažil zadržet záplavu nadávek. Vydechl a stěží ovládajíc svůj hlas řekl: "Tupče, klíč je uzamčen ve víře. Buď mi uvěříš a zavřeš oči, nebo ne a nikdy své sny nenajdeš. Tvá volba. Příteli."~ */
  IF ~~ THEN REPLY #6705 /* ~Udělej co řekl.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
~ GOTO 8
  IF ~~ THEN REPLY #6706 /* ~"Zapomeň na to. Mám lepší věci na práci, než čekat na bláznovo blouznění."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",3)
~ THEN BEGIN 12 // from: 19.2
  SAY #6707 /* ~"Ještě od tebe potřebuji jednu věc a můžeme začít s posledním krokem ve výrobě Tvůrce snů. Potřebuji podušku, která se dává do rakve - bude stimulovat spánek tak silný jako kdybys mrtev. Otevře tvou mysl vyzařování Tvůrce snů. Je to, jak si pro sebe říkám, dotek inspirace."~ */
  IF ~  !PartyHasItem("DrmPllw")
~ THEN REPLY #6708 /* ~"Podušku do rakve, eh? Budeš ji mít. Nejdřív mi ale ještě odpověz na pár otázek."~ */ GOTO 27
  IF ~~ THEN REPLY #6709 /* ~"Už mě opravdu nebaví stále ti nosit nějaké předměty."~ */ GOTO 13
  IF ~  PartyHasItem("DrmPllw")
~ THEN REPLY #6710 /* ~"Mám pro tebe podušku. Jdeme na to."~ */ DO ~TakePartyItemNum("DrmPllw",1)
SetGlobal("Dream","GLOBAL",4)
~ JOURNAL #68035 /* ~Získal jsem pro Xandera od Hamryse polštář do rakve. Jsem zvědavý, jaký úkol budu muset splnit teď...~ */ GOTO 6
  IF ~~ THEN REPLY #6711 /* ~"Seženu to."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 19.1 21.1
  SAY #6712 /* ~"Tak ty nechceš co? Pak by sis měl možná vzpomenout, že nosíš tyhle předměty na konstrukci, kterou sis TY vymyslel! Na projekt, který jsi chtěl v prvé řadě vytvořit TY, na zařízení tak nepraktické, že jeho řešení si zabralo životy čtyř generací mé rodiny, všechno kvůli TOBĚ. Pokud chceš vidět tento projekt hotový, dokončíš poslední stupeň a přestaneš s tím nekonečným kňouráním."~ */
  IF ~~ THEN REPLY #6713 /* ~"Starče, takovým tónem se mnou nemluv, nebo zjistíš, že to jsou tvá poslední slova."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Xander_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #6714 /* ~"Dobrá. V pořádku. Udělám to. Už na mne přestaň ječet."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6715 /* ~"Chceš zahodit veškerý ten čas a úsilí? Chceš ztratit své sny protože se ti nelíbí, když tě někdo nazve tupcem? Jsi hlupák pokud si myslíš, že můžeš dokončit tento projekt bez mých znalostí. A jsi ještě větší hlupák, pokud si myslíš, že za drzý jazyk se platí rozsudkem smrti. Opravdu si myslíš, že můžeš vyřešit své problémy tak, že budeš vyhrožovat každému, kdo ti přijde do cesty? Sféry takhle nefungují, můj zjizvený příteli."~ */
  IF ~~ THEN REPLY #6716 /* ~"Už jsem zabíjel i pro míň."~ */ GOTO 16
  IF ~~ THEN REPLY #6717 /* ~"Odcházím. Než udělám nějakou chybu, které bychom oba litovali."~ */ EXIT
END

IF WEIGHT #2 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 15 // from: 2.0
  SAY #6718 /* ~"Zapíchni to, chudáku. Nikdy nezískáš své sny. Je po tvém drahocenném Tvůrci snů."~ */
  IF ~~ THEN REPLY #6719 /* ~Hotovo.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.1 2.2 14.0
  SAY #6720 /* ~"Jsem si jist, že ano, ty hlupáku bez mozku. Tvoje stupidní póza velkého ranaře je jen poslední kapka. Ty i tvůj Tvůrce snů můžete jít rovnou do Abyssu." Vypadá, jako by byl připraven přivolat stráže.~ */
  IF ~  CheckStatGT(Protagonist,13,DEX)
~ THEN REPLY #6721 /* ~Zlom mu vaz, než to udělá.~ */ DO ~Kill(Myself)
PlaySoundNotRanged("SPE_11")
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #6722 /* ~Zlom mu vaz, než to udělá.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #6723 /* ~Uteč.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #6724 /* ~Tvé ruce se sevřely, jak si je omotal kolem krku starého technika. Zlomil si jej jako větvičku a on zemřel, pohled upřený na tvé nohy. Určitě si mu ukázal. Naneštěstí, ukázal si to také všem ostatním lidem v Síni. Spustil se poplach.~ */
  IF ~~ THEN REPLY #6725 /* ~"Tak tedy dobrá."~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #6726 /* ~Mrštně se vyhnul tvým roztaženým pažím a přivolává stráže.~ */
  IF ~~ THEN REPLY #6727 /* ~"Zatraceně."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #7 ~  Global("Dream","GLOBAL",2)
~ THEN BEGIN 19 // from: 21.0
  SAY #6728 /* ~"Přístroj vyžaduje ptačí klec, ozdobenou břitvami, pěkně opracovanou, aby napodobila ničivou sílu snů a jejich schopnost zachytit naše srdce a představy. Pátrej v Obléhací věži po kleci, kterou jsem si nechal udělat."~ */
  IF ~~ THEN REPLY #6729 /* ~"Jak se tam dostanu?"~ */ GOTO 20
  IF ~~ THEN REPLY #6749 /* ~"Už ti nechci stále nosit nějaké předměty."~ */ GOTO 13
  IF ~  PartyHasItem("DrmCage")
~ THEN REPLY #6865 /* ~"Mám to právě tady. Teď mi dej mé sny."~ */ DO ~TakePartyItemNum("DrmCage",1)
SetGlobal("Dream","GLOBAL",3)
~ JOURNAL #68036 /* ~Poté, co jsem mu donesl ptačí klícku mě Xander poslal pro polštář z rakve, aby mohl napodobit spánek mrtvého.~ */ GOTO 12
  IF ~~ THEN REPLY #6866 /* ~"Klec. Jak všední. Nu dobrá. Nejdříve mi odpověz na nějaké otázky."~ */ GOTO 27
  IF ~~ THEN REPLY #6868 /* ~"Klec s břitvami. Já se vrátím."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #6751 /* ~"Dokázal jsi sám sobě, že jsi vynalézavý. Najdi způsob."~ */
  IF ~~ THEN REPLY #6752 /* ~"Jasně. Teď mi odpověz na jinou otázku."~ */ GOTO 27
  IF ~~ THEN REPLY #6753 /* ~"To udělám. Ještě mne uvidíš."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Dream","GLOBAL",1)
~ THEN BEGIN 21 // from: 24.0 26.0 28.1 29.1 30.0
  SAY #6754 /* ~"Abych mohl zahájit závěrečný krok ve výrobě Tvůrce snů, potřebuji kousek tvé kůže namočený v tvé krvi, takže se přístroj může ztotožnit s tvou fyzickou esencí. Musí být v modrozelené láhvi, aby symbolizovala moře snů, na němž popluješ."~ */
  IF ~  PartyHasItem("DrmVial")
~ THEN REPLY #6755 /* ~"Mám to sebou. Vezmi si to. Ukaž mi mé sny."~ */ DO ~TakePartyItemNum("DrmVial",1)
SetGlobal("Dream","GLOBAL",2)
~ JOURNAL #68037 /* ~Donesl jsem zpět Xanderovi lahvičku s mou krví a kouskem kůže, na můj... stroj snů. Jeho další požadavek je: přinést mu ptačí klec pokrytou čepelemi.~ */ GOTO 19
  IF ~~ THEN REPLY #6756 /* ~"Už ti nechci stále nosit nějaké předměty."~ */ GOTO 13
  IF ~~ THEN REPLY #6757 /* ~"Maso a krev, hm? Nedávno jsem toho dal celkem dost. Nejdřív mi odpověz na otázku."~ */ GOTO 27
  IF ~~ THEN REPLY #6758 /* ~"Můžeš mi odpovědět na jednu nebo dvě otázky? Tvůj Tvůrce snů mne nezajímá."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 22
  IF ~~ THEN REPLY #6759 /* ~"Maso, krev, láhev. Dobře. Vrátím se."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.3 33.1
  SAY #6760 /* ~Xander vypadá, jako bys ho udeřil do břicha... tvrdě. "Tebe to nezajímá? Ale... zabralo to čtyři generace mojí rodiny... můj prapradědeček říkal, že jsi vypadal tak úzkostlivě... on měl tento svitek..."~ */
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #6761 /* ~"Tvůj prapradědeček? Co? Řekni mi co o mně víš."~ */ GOTO 23
  IF ~~ THEN REPLY #6762 /* ~"Ne. Nezajímá mne to. Jen mi odpověz na nějaké otázky."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,0,0)
~ GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #6763 /* ~"Přišel jsi za mým prapradědečkem Xeroem a řekl jsi, že nemůžeš snít. Říkals, že by sis přál zase snít. Nabídls mu obrovskou sumu peněz, aby postavil stroj, který obnoví sny, cos ztratil. Řekl jsi, že se zase vrátíš za pár let, ale nikdy ses nevrátil."

Cítíš, jak se ti vrací paměť.~ */
  IF ~~ THEN REPLY #6764 /* ~Potlač ji.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #6765 /* ~Přijmi ji.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #6766 /* ~Přijmi ji.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #6767 /* ~Silou vůle zadržuješ paměť, aby nezaplnila tvou hlavu.

"Práce na stroji pokračovaly když Xero zemřel. Moje prababička Nula zahájila studia více esoterickým způsobem, používala byliny a mozaikové kameny pro vytvoření magických vzorů, které by mohly vyvolat fragmenty snů z Astrální a Éterické sféry. Můj strýček šel ještě o krok dál, když při konstrukci zařízení využíval nebeskou i pekelnou pomoc. A já... já jsem vytvořil obřady, které uvolní jeho potenciál... a pak se ti mohou vrátit sny zpět."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6768 /* ~"Dobrá. Přesvědčil jsi mne. Co musím udělat, abych znovu získal své sny?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6769 /* ~"To není nic, co bych zrovna potřeboval. Jen mi odpověz na nějaké otázky."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6770 /* ~"Zajímavé. Možná si o tom ještě promluvíme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.2
  SAY #6772 /* ~Vzpomínka na mladého řemeslníka Xeno Xandera překryla slova jeho potomka vybavuje se ti ztřeštěný mladý čaroděj ukazující kouzlo, které sám vymyslel. "Říkám tomu 'Usmíření'," říká. Oba pozorujete magické částečky, které se na tobě usadily a ty cítíš, jak se v tvém nitru rozprostírá veliký klid a mír. "Působivé," říkáš. "Jen doufám, že dokážete stejně dobře pracovat na Tvůrci snů."

Nihl Xander přestal hovořit: "Posloucháš mne?"~ */
  IF ~~ THEN REPLY #6773 /* ~"Co? Samozřejmě. Mohl bys to prosím zopakovat?"~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ GOTO 26
  IF ~~ THEN REPLY #6774 /* ~"Ne, neposlouchám. Sbohem."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #6775 /* ~Vypadá poněkud popuzeně, ale spolkne to. "Práce na stroji pokračovaly když Xero zemřel. Moje prababička Nula zahájila studia více esoterickým způsobem, používala byliny a mozaikové kameny pro vytvoření magických vzorů, které by mohly vyvolat fragmenty snů z Astrální a Éterické sféry. Můj strýček šel ještě o krok dál, když při konstrukci zařízení využíval nebeskou i pekelnou pomoc. A já... já jsem vytvořil obřady, které uvolní jeho potenciál... a pak se ti mohou vrátit sny zpět."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6776 /* ~"Dobrá. Přesvědčil jsi mne. Co musím udělat, abych znovu získal své sny?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6777 /* ~"To není nic, co bych zrovna potřeboval. Jen mi odpověz na nějaké otázky."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6778 /* ~"Zajímavé. Možná si o tom ještě promluvíme. Sbohem."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 4.0 5.0 6.1 12.0 19.3 20.0 21.2 22.1 24.1 26.1 28.2 29.2 30.1 31.0 32.0 33.2 34.0 35.1 36.0 38.0
  SAY #6779 /* ~Malá vráska soustředění prořízla jeho už tak dost vrásčité čelo. "Co bys chtěl vědět?"~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6780 /* ~"Předtím ses zmínil o Tvůrci snů. Řekni mi teď o tom něco víc."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6781 /* ~"Řekni mi, co víš o vraždě kováře."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
~ THEN REPLY #6782 /* ~"Požádali mě, abych opravil tohle soukolí ve slévárně. Můžeš mi říct jak?~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6785 /* ~"Kdo jsi?"~ */ GOTO 33
  IF ~~ THEN REPLY #6787 /* ~"Co mi můžeš říct o Božích lidech?"~ */ GOTO 35
  IF ~~ THEN REPLY #6788 /* ~"Řekni mi něco o svých spolupracovnících."~ */ GOTO 34
  IF ~~ THEN REPLY #6789 /* ~"Co tady děláš?"~ */ GOTO 39
  IF ~  GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #8742 /* ~"Teď už nic. Sbohem."~ */ EXIT
  IF ~  Global("Dream","GLOBAL",5)
~ THEN REPLY #66567 /* ~"Teď zrovna nic. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 33.0
  SAY #6791 /* ~"Je to jak přístroj, tak i rituál. Je to stav mysli a konstrukce z páry a krve. Umožní snění těm, kteří vstoupí do jeho dosahu. Byl postaven pro tebe a čeká na tebe. Jsi připraven jej dokončit? Čekal na tebe desetiletí."~ */
  IF ~~ THEN REPLY #6792 /* ~"Jak víš, že byl postaven pro mne?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6793 /* ~"Ano."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6795 /* ~"Ne. Možná se sem pro to vrátím. Odpověz mi na jiné otázky."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6796 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #6798 /* ~"Protože můj prapradědeček, Xeno Xander, vytesal tvůj obličej do kamene, abychom tě mohli poznat, až se vrátíš pro práci, jíž jsi ho pověřil. Vždycky si myslel, že by ses mohl vrátit, ale nikdo jiný tomu ve skutečnosti nevěřil. Naše rodina na tom pracovala, protože jsme řekli, že to uděláme... a teď, jsi tady."~ */
  IF ~~ THEN REPLY #6799 /* ~"Pořád ještě máš ten kámen?"~ */ GOTO 30
  IF ~~ THEN REPLY #6801 /* ~"Pak jsem pro to musel mít důvod. Dokončeme to."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6802 /* ~"Ne. Nezajímá mne to. Jen mi odpověz na nějaké otázky."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #6803 /* ~"Ne. Před rokem mi ho ukradli. Zahlédl jsem jen mizející stín. Byl to jediný předmět, který mi vzali. Nemám tušení, kdo to mohl vzít, ale zapamatoval jsem si vzhled."~ */
  IF ~~ THEN REPLY #6804 /* ~"V pořádku. Pak tedy dokončeme Tvůrce snů."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6805 /* ~"Teď mne to zrovna nezajímá. Přesto bych se tě rád ještě na něco zeptal."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6806 /* ~"Nezajímá mne nějaký Tvůrce snů. Možná později. Sbohem."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 37.1 37.2
  SAY #6808 /* ~"Běž si popovídat s Bedai-Lihn. Ona už bude vědět. Zabývá se drobnostmi tohoto místa. Není skutečný snílek. Věnuje pozornost tomu, co udržuje toto místo v chodu. Ona nedělá projekty."~ */
  IF ~~ THEN REPLY #6809 /* ~"V pořádku, udělám to. Mám ještě další otázky."~ */ GOTO 27
  IF ~~ THEN REPLY #6810 /* ~"V pořádku, udělám to hned teď."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.1 37.0
  SAY #6812 /* ~"Já nevím nic. Já jsem zde pracoval na svém výrobku a soustředil jsem se na práci. Nedával jsem pozor na to, co dělají dělníci - oni si dělají svou práci a já zase svou."~ */
  IF ~~ THEN REPLY #6816 /* ~"Já... rozumím. Pak mi tedy odpověz na nějaké jiné otázky."~ */ GOTO 27
  IF ~~ THEN REPLY #6817 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 27.3 37.3
  SAY #6819 /* ~"Jsem Nihl Xander, pravnuk řemeslníka Xero Xandera, inženýra, snílka, tvůrce. A já jsem dokončil jeho práci - práci, kterou jsi ho pověřil - Tvůrce snů! Jsi připraven ho teď vyzkoušet?" ~ */
  IF ~~ THEN REPLY #6820 /* ~"Tvůrce snů? Co to je?"~ */ GOTO 28
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6821 /* ~"Ne. Mám na tebe jiné otázky."~ */ GOTO 22
  IF ~  GlobalGT("Dream","GLOBAL",0)
~ THEN REPLY #6823 /* ~"Ne. Mám na tebe jiné otázky "~ */ GOTO 27
  IF ~~ THEN REPLY #6824 /* ~"Ne."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.5 37.5 40.0
  SAY #6827 /* ~"Pcha. Oni nemají skutečné nadání. Oni hovoří o tvorbě a chválí svou moc, ale tvoří jen samé světské věci. Jejich představy jsou ubohé, omezené, posednuté malými drobnostmi. Skuteční snílci, říkám, vytvoří veliký plán a pak se soustředí na detaily. Začít s detaily je pro mravence představivosti... malý hmyz, který usiluje jen o to, aby byl nakrmen."~ */
  IF ~~ THEN REPLY #6829 /* ~"To je od tebe velmi šlechetné. Odpověz mi na nějaké další otázky, pokud můžeš."~ */ GOTO 27
  IF ~~ THEN REPLY #6830 /* ~"Aha... Vzhledem k tomu, musím už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.4 37.4
  SAY #6831 /* ~Povzdechl a sebral se. "To je na dlouhé vyprávění. Tak tedy začněme. Všechny bytosti něco potřebují, že ano? Ony tvoří, staví, bourají, sní, bojují, smilní... oni to všechno dělají, protože chtějí něco víc, než to, co mají. Dokonce i na základní úrovni existence se každý iota snaží být o něco větší. Někteří toho dosáhnou. Jiní padnou cestou." ~ */
  IF ~~ THEN REPLY #6832 /* ~"Pokračuj."~ */ GOTO 41
  IF ~~ THEN REPLY #6833 /* ~"Zapomeň na to. Raději ti položím jinou otázku."~ */ GOTO 27
  IF ~~ THEN REPLY #6834 /* ~"A nebo víš co, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 41.0
  SAY #6836 /* ~"Factor Keldor je právě támhle nahoře na pódiu. Promluv si s ním. Nebo najdi toho sebevražedného blázna Sandoze a promluv si s ním. Přestaneš mne už obtěžovat?"~ */
  IF ~~ THEN REPLY #6837 /* ~"Ještě ne."~ */ GOTO 27
  IF ~~ THEN REPLY #6838 /* ~"Ano. Sbohem."~ */ EXIT
END

IF WEIGHT #10 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from: 39.1 40.1 41.1
  SAY #6839 /* ~Vidíš muže s hustými vlasy, oblečeného do nejlepších šatů - pokud uvěříš, že móda zemřela před padesáti lety. Jeho oděv vypadá, jako by byl složen z kousků hadrů pouličních rošťáků a on, zdá se, působí přezíravým postojem k těm kolem něho - nebo by to mohl být jeho skutečný postoj. Nepodíval se na tebe, dokud jsi na něj nepromluvil a pak si jeho oči začaly pozorně prohlížet tvůj obličej. "Chceš něco?" řekl pomalu.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6841 /* ~"Řekni mi co víš o vraždě kováře."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
~ THEN REPLY #6842 /* ~"Požádali mne, abych opravil tohle soukolí ve slévárně. Můžeš mi říct jak?~ */ GOTO 31
  IF ~  Global("GearRepair","GLOBAL",2)
!Dead("Bedai")
~ THEN REPLY #6843 /* ~"Požádali mne, abych opravil tohle soukolí ve slévárně. Můžeš mi říct jak?~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6846 /* ~"Kdo jsi?"~ */ GOTO 33
  IF ~~ THEN REPLY #6847 /* ~"Co mi můžeš říct o Božích lidech?"~ */ GOTO 35
  IF ~~ THEN REPLY #6849 /* ~"Řekni mi o svých spolupracovnících."~ */ GOTO 34
  IF ~~ THEN REPLY #6850 /* ~"Co tady děláš?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6852 /* ~Vybuchl: "Mohu jí pomoct a vysvětlit to! Nesmrtelnost je jedním z největších prokletí lidské představivosti - každý hlupák si myslí, že to chce a nikdo z nich nepočítá s tím, co dostane. Je to bláznivý dar a jen blázen si ho vezme!" Pokračuje již v klidu. "A kromě toho, ještě jsem nenašel způsob, jak to udělat se svými stroji."~ */
  IF ~~ THEN REPLY #6853 /* ~"Aha. Pak mi tedy odpověz na jiné otázky."~ */ GOTO 27
  IF ~~ THEN REPLY #6854 /* ~"Aha. Avšak to mi nepomůže. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.6 37.6
  SAY #8743 /* ~"Co dělám? Já jsem inženýr všech inženýrů. Studoval jsem pod tanar'rijským kovářem Kazanem, který hnětl slova v kovárně nenávisti, kalil je v korytě zoufalství a posílal je porážet hloupost. Prvky frází, sžíravých slov, jím byly vzkříšeny a on tvořil zbraně hrozivých rozměrů - zbraně, jež by mohly uvrhnout nepřítele v bídu a zničit zrůdné ideje ostatních. Jsem si jist, že jste jeho práci viděli."~ */
  IF ~~ THEN REPLY #8756 /* ~"Takže, ty tady vyrábíš zlé zbraně?"~ */ GOTO 40
  IF ~~ THEN REPLY #8758 /* ~"Jsem si jist, že mám. Odpověz mi na pár otázek."~ */ GOTO 37
  IF ~~ THEN REPLY #8759 /* ~"Ano, musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8747 /* ~"Vůbec ne! Má kovárna není postavena na nenávisti, ale na porozumnění. Studoval jsem také pod čtveráckým řemeslníkem Terasaphireaem, který stvořil hojivý dotek lahodného myšlení, představ, že chce utišit kdejaké fiendské, zaplivané srdce. Pracoval svou vůlí s péčí a láskou. Má práce mísí vše to, jakož i všechny ďábelské i vznešené prvky smíšené v duši smrtelníka."~ */
  IF ~~ THEN REPLY #8761 /* ~"Jsou tvoji spolupracovníci tak dobře vyučeni jako ty?"~ */ GOTO 34
  IF ~~ THEN REPLY #8762 /* ~"Úžasné! Můžu se zeptat na pár dalších otázek?"~ */ GOTO 37
  IF ~~ THEN REPLY #8764 /* ~"Budu o tom přemýšlet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.0
  SAY #8748 /* ~"Každé rozhodnutí, každá akce, každá reakce, to vše tvoří základ, na němž se dá dále stavět. Je tedy zřejmé, že náš současný povýšený stav bytí je postaven na základech nás samých pro něco většího. Co je to, když ne boží kápě? Je to cesta mnou vždy ospravedlňovaná, a upřímně, nejsem v náladě na filosofickou diskusi. Pokud to chceš, najdi faktora nebo tak něco."~ */
  IF ~~ THEN REPLY #8765 /* ~"Kde bych mohl najít faktora?"~ */ GOTO 36
  IF ~~ THEN REPLY #8766 /* ~"Jasně. Odpověz mi na další otázky, ano?"~ */ GOTO 37
  IF ~~ THEN REPLY #8767 /* ~"Jasně. Sbohem."~ */ EXIT
END
