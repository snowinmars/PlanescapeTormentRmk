// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALAIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DALAIS~

IF ~  Global("Know_Alais","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3067 /* ~Základník se na tebe znechuceně dívá. "Co chceš?" Způsob, jakým mluví je urážlivý.~ */
  IF ~~ THEN REPLY #11435 /* ~"Uvolni se. Chci se na něco zeptat."~ */ GOTO 1
  IF ~~ THEN REPLY #11436 /* ~"Od tebe? Nic."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11437 /* ~"Z tvého postoje se mi zdá, že už ode mě nic nepotřebuješ a mě by velice potěšilo, kdybys nekazil mou přítomnost tou svojí. Sbohem." Neústupně se od tebe odvrátil.~ */
  IF ~~ THEN REPLY #11438 /* ~"Podívej, omlouvám se ti za to, co jsem předtím řekl. Potřebuju odpověď na nějaké otázky."~ */ GOTO 2
  IF ~~ THEN REPLY #11439 /* ~"Dobře tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11440 /* ~"Řekl jsi to, co jsi řekl a já si to vzal k srdci. Ale aby nikdo nemohl říct, že jsem neústupný. Na co ses ptal?"~ */
  IF ~~ THEN REPLY #11441 /* ~"Znovu se tě ptám, kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #11442 /* ~"Kdo jsou návštěvníci tohoto baru?"~ */ GOTO 4
  IF ~~ THEN REPLY #11443 /* ~"Co mi můžeš říci o tomto místě?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11444 /* ~"Hledám deník. Neviděl jsi teď někdy nějaký?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11445 /* ~"Slyšel jsi o sběrači jménem Pharod?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11446 /* ~"Rád bych se ti omluvil."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11447 /* ~"Rád bych se ti omluvil."~ */ GOTO 11
  IF ~~ THEN REPLY #11448 /* ~"Nic. Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #11449 /* ~Jeho oči zaplály. "Urazil jsi mě dost, 'příteli'. Už nikdy s tebou nepromluvím." Úplně se odvrátil, plný uražené pýchy. Žádnými lichotkami ho nepřiměješ, aby se otočil zpět.~ */
  IF ~~ THEN REPLY #11450 /* ~Zaútoč na něj.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11451 /* ~Nechej ho o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #11452 /* ~"Jediný člověk, kterého zde znám je Ebb. Jsem tady nový a nehodlám se míchat do záležitostí těch druhých. Máš pro mne nějaké další otázky, nebo si můžu dál užívat své osamělosti?"~ */
  IF ~~ THEN REPLY #11454 /* ~"Dobře, vlastně, nejdříve pro tebe mám několik otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #11455 /* ~"Vrať se k čemukoliv, co jsi dělal."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 8.0 22.0
  SAY #11456 /* ~Těžce vzdychá a pohrdavě se na tebe dívá. "Tak začni, zjizvený, zeptej se, ale pak odejdeš."~ */
  IF ~~ THEN REPLY #11458 /* ~"Znovu se tě ptám, kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #11460 /* ~"Kdo jsou návštěvníci tohoto baru?"~ */ GOTO 4
  IF ~~ THEN REPLY #11461 /* ~"Co mi můžeš říci o tomto místě?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11462 /* ~"Sháním deník. Neviděl jsi teď někdy nějaký?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11464 /* ~"Slyšel jsi o sběrači jménem Pharod?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11465 /* ~"Rád bych se ti omluvil."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11466 /* ~"Rád bych se ti omluvil."~ */ GOTO 11
  IF ~~ THEN REPLY #11467 /* ~"Nic. Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.2
  SAY #11469 /* ~"Toto je bar, jedno z oblíbených míst. Tedy bylo by, nebýt těch fiendů támhle v rohu a nekonečného zástupu podivností, které se přede mnou objevují. Zdá se mi, že tady lze najít alespoň trochu lidskosti, za což jsem neskonale vděčný."~ */
  IF ~~ THEN REPLY #11470 /* ~"Oh, to je pravda. Ty jsi Bezradný, nebo ne?"~ */ GOTO 12
  IF ~~ THEN REPLY #11471 /* ~"Jsi z Primy, nebo ne?"~ */ GOTO 13
  IF ~~ THEN REPLY #11472 /* ~"Dovedu si to představit. Víc otázek, jestli mohu."~ */ GOTO 5
  IF ~~ THEN REPLY #11473 /* ~"Dovedu si to představit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 5.3
  SAY #11474 /* ~"Deník? Kde bych ho asi mohl vidět? Když jsem tady nový, jak ode mne můžeš chtít, abych si pamatoval DENÍK? Ty nejsi jen urážlivý a útočný, ale zdáš se také úplně hloupý."~ */
  IF ~~ THEN REPLY #11475 /* ~"Řekněme, že na urážky to je nerozhodně."~ */ GOTO 14
  IF ~~ THEN REPLY #11476 /* ~"Snažíš se mě vyprovokovat?"~ */ GOTO 15
  IF ~~ THEN REPLY #11477 /* ~"To nemá cenu. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #11478 /* ~Zaútoč na něj.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 5.4
  SAY #11524 /* ~"Předtím jsem ti říkal, že jsem tu nový a ty ses mi za to vysmál. Zřejmě nevím nic o těchto 'sběračích'. Necháš mě teď o samotě?"~ */
  IF ~~ THEN REPLY #11525 /* ~"Ještě ne. Stále od tebe potřebuji odpovědi."~ */ GOTO 5
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11526 /* ~"Rád bych se ti omluvil."~ */ GOTO 11
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11527 /* ~"Rád bych ti to nějak nahradil."~ */ GOTO 9
  IF ~~ THEN REPLY #11528 /* ~"Zajisté. Dobrý den."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 5.5 8.2
  SAY #11529 /* ~Vypadá úplně překvapeně, jako by mu byla myšlenka omluvy cizí. "Ty se chceš... omluvit?"~ */
  IF ~~ THEN REPLY #11530 /* ~"Tak jak jsem řekl."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
IncrementGlobal("Alais_Apology","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #11531 /* ~"Když tak o tom přemýšlím, tak ne. Změnil jsem svůj názor. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 14.0
  SAY #11532 /* ~"Tedy... tedy... tedy já se domnívám, jako věc cti, musím přijmout tvou omluvu. Dobrá. Výměnou nabízím také já svou omluvu. Dejme tu příhodu stranou a už o tom nemluvme."~ */
  IF ~~ THEN REPLY #11533 /* ~"Vynikající. Můžeš mi odpovědět na nějaké jiné otázky?"~ */ GOTO 16
  IF ~~ THEN REPLY #11534 /* ~"Vynikající. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.6 5.6 8.1
  SAY #11535 /* ~"Možná že jsem hlupák, ale ne takový hlupák, abych se od tebe nechal urážet a prominul ti to tak lehce. Můžeš se jít třeba bodnout. Já mohu jen doufat, že sám získáš více jizev a možná více cti. Sbohem, pane." Otočil se a úplně tě ignoruje.~ */
  IF ~~ THEN REPLY #11536 /* ~Zaútoč na něj.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11537 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 13.1
  SAY #11538 /* ~"Dvakrát jsi mě urazil a já o tom už nic nechci slyšet. Braň se!"~ */
  IF ~~ THEN REPLY #11539 /* ~"Můžeme se domluvit..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11540 /* ~"Jestli si myslíš, že jsem ze skutečného světa, tak ano, jsem z Prime. Jsem bojovník, který je tam docela slavný. A i když nemohu znát všechna zákoutí této nové země, neříkal bych si 'Bezradný', jak to dělali nějací holomci tady kolem."~ */
  IF ~~ THEN REPLY #11541 /* ~"Ne, vše je v pořádku. Odvoláme jednu urážku, nebo ne?"~ */ GOTO 14
  IF ~~ THEN REPLY #11542 /* ~"Opravdu? Já chci."~ */ GOTO 12
  IF ~~ THEN REPLY #11543 /* ~"Vynikající. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0 13.0
  SAY #11545 /* ~"Nerozhodně? Ne dokud se neomluvíš, ničemo." Vypadá že se těší na souboj. "Nebo tě mám provokovat dál?"~ */
  IF ~~ THEN REPLY #11546 /* ~"Tedy dobrá. Omluvám se."~ */ GOTO 10
  IF ~~ THEN REPLY #11547 /* ~"Omluvit se? Tobě? Nikdy."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 7.1 14.1
  SAY #11549 /* ~"Ty jsi darebák od základu, padavka beze cti, jsi kus masa bez ducha, starý, zjizvený muž bez naděje na vykoupení, odsouzený putovat životem bez jakýchkoliv znaků, které dělají muže mužem. Skončil jsem s tebou, cítím k tobě jen lítost. Sbohem, pane." Odvrátil se od tebe.~ */
  IF ~~ THEN REPLY #11550 /* ~Zaútoč na něj.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11551 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from: 10.0 19.0 20.1 23.3 25.1 26.0 27.0 28.1
  SAY #11553 /* ~"Jaké vzdělání hledáš?"~ */
  IF ~~ THEN REPLY #11555 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11559 /* ~"Kdo jsou patroni tohoto baru?"~ */ GOTO 23
  IF ~~ THEN REPLY #11561 /* ~"Co mi můžeš říci o tomto místě?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11562 /* ~"Sháním deník. Neviděl jsi teď někdy nějaký?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11583 /* ~"Slyšel jsi o sběrači jménem Pharod?"~ */ GOTO 27
  IF ~~ THEN REPLY #11658 /* ~"Nic. Zapomeň na to."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #11565 /* ~Vidíš upraveného, svalnatého muže, oblečeného v obleku, který je docela nudný a světský v porovnání s ostatními, co jsi viděl v tomto městě. Nese se s nadutou arogancí. Vůbec se sem nehodí. "Co chceš?" ptá se.~ */
  IF ~~ THEN REPLY #11566 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11568 /* ~"Kdo jsou patroni tohoto baru?"~ */ GOTO 23
  IF ~~ THEN REPLY #11570 /* ~"Co mi můžeš říci o tomto místě?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11573 /* ~"Sháním deník. Neviděl jsi teď někdy nějaký?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11574 /* ~"Slyšel jsi o sběrači jménem Pharod?"~ */ GOTO 27
  IF ~~ THEN REPLY #11580 /* ~"Nic. Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0
  SAY #11585 /* ~"Já jsem Alais, věhlasný bojovník! Jistě jsi o mně slyšel?"~ */
  IF ~~ THEN REPLY #11588 /* ~Lež: "Ano."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaos_Alais_One","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #11590 /* ~Pravda: "Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Alais_One","GLOBALLaw",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11592 /* ~"Konečně! Ne každý, co je zde je úplný ignorant! Můžeš mi koupit pití a pak můžeme měnit příběhy! Můžu tě počastovat mými posledními dobrodružstvími, včetně toho, jak jsem přišel do tohoto nejneobyčejnějšího, hrozivého města."~ */
  IF ~~ THEN REPLY #11594 /* ~"Stěží mohu počkat. Zaprvé, můžeš mi odpovědět na nějaké otázky?"~ */ GOTO 16
  IF ~~ THEN REPLY #11595 /* ~"Odkud jsi? Jak ses sem DOSTAL?"~ */ GOTO 21
  IF ~~ THEN REPLY #11597 /* ~"Snad později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #11606 /* ~"Opravdu to tak může být? Opravdu se mohlo stát, že nikdo v tomto městě neslyšel o mých hrdinských činech? Běda... musím znovu prokázat své klady. A to jsem si myslel, že se moje pověst rozšířila světem křížem krážem."~ */
  IF ~~ THEN REPLY #11608 /* ~"Z jakého světa *jsi*?"~ */ GOTO 21
  IF ~~ THEN REPLY #11609 /* ~"Jsem si tím jistý. Odpovíš mi na nějaké otázky?"~ */ GOTO 16
  IF ~~ THEN REPLY #11612 /* ~"Všichni čelíme zklamání. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 25.0
  SAY #11629 /* ~"Přicházím z města Aliburn na řece Taime. Určitě jsi slyšel o jeho slávě a divech? Nevadí, nevadí... toto místo je zaostalé a nevědomé, když přijde na nádheru opravdových měst. Slyšel jsem, že moje země je obyvateli tohoto města nazývaná 'Prime' - nicméně proč zrovna Prime, to nevím."~ */
  IF ~~ THEN REPLY #45189 /* ~"Jak ses sem dostal?"~ */ GOTO 28
  IF ~~ THEN REPLY #45190 /* ~"Pravda. Jsi daleko od domova. Hodně štěstí a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.2 28.0
  SAY #11637 /* ~Naježil se, zrudl a jeho ruce se křečovitě sevřely okolo rukojeti jeho meče. "Říkáte Bezradný? Jsem uražen vašimi slovy, pane a loučím se s Vámi, doufám, že se již nepotkáme." Odvrátil se od tebe rozhněvaně a pyšně.~ */
  IF ~~ THEN REPLY #11638 /* ~Chtěl jsem ti položit několik otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #11639 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.1 17.1
  SAY #11640 /* ~"Potkal jsem jenom starého Ebba Kolenovrza, který mi vysvětlil, co je to za město a co jsou to ty 'kruhy'. Kouzlo mého nepřítele nás muselo katapultovat na druhý konec světa, protože v mé zemi žádné kruhy nejsou."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",0)
~ THEN REPLY #11641 /* ~"Ne kruhy... ale Sféry. Sféry existence. Jsou to sféry představivosti, myšlenky a víry. Nejsou to fyzické stepi nebo lučiny, ale jiné dimenze."~ */ DO ~AddexperienceParty(250)
SetGlobal("Alais_Ed","GLOBAL",1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",1)
~ THEN REPLY #11642 /* ~"Ne, ne... Sféry. Jako ve sférách existence. Jsou sféry fantazie, myšlení a důvěry. Nejsou to fyzické stepi nebo lučiny, ale jiné dimenze."~ */ GOTO 24
  IF ~~ THEN REPLY #11643 /* ~"Aha. Ty jsi Bezradný."~ */ GOTO 22
  IF ~~ THEN REPLY #11644 /* ~"Hm. Pravda. Poslouchej, mám nějaké další otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #11645 /* ~"Pravda. Jsi daleko od domova. Hodně štěstí a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #11646 /* ~Přes jeho tvář přeběhl zmatený pohled. "Já... já rozumím. To, co ten starý muž říkal, začíná mít význam... omluvte mne. Musím si to nechat rozležet v hlavě. Sbohem."~ */
  IF ~~ THEN REPLY #11647 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.2 17.2
  SAY #11648 /* ~"Nevím. Když jsem se sem dostal, uvědomil jsem si, že potřebuji nějaké místo, kde bych se mohl vzpamatovat. Představ si mé překvapení, když jsem zjistil, že i obyčejný bar je v této části světa zalidněn výstředními lidmi a blázny. Opravdu jsem byl přenesen do blázince!"~ */
  IF ~~ THEN REPLY #11649 /* ~"Odkud jsi?"~ */ GOTO 21
  IF ~~ THEN REPLY #11650 /* ~"Samozřejmě že to tak někdy vypadá. Rád bych se tě zeptal na několik dalších otázek."~ */ GOTO 16
  IF ~~ THEN REPLY #11651 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.3 17.3
  SAY #11652 /* ~"Obávám se, že takové předměty jsem nehledal. Dělám vše pro to, abych se zorientoval v tomto podivném prostředí a, i když jsem se při tom zaměřil na malé detaily, musím přiznat, že jsem nehledal deníky jakéhokoliv druhu."~ */
  IF ~~ THEN REPLY #11653 /* ~"Pak je vše v naprostém pořádku. Odpověz mi ještě na nějaké otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #11654 /* ~"Vynikající. Děkuji ti za tvůj čas."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.4 17.4
  SAY #11655 /* ~"Pharod? Sběrač? Tato jména a názvy mi nic neříkají, ale mohl jsem je zaslechnout v jiných souvislostech. Tvou tvář si určitě zapamatuji. Opravdu na ni nezapomenu."~ */
  IF ~~ THEN REPLY #11656 /* ~"Děkuji ti. Odpovíš mi na pár dalších otázek?"~ */ GOTO 16
  IF ~~ THEN REPLY #11657 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 21.0
  SAY #2950 /* ~"Naháněl jsem svého starého nepřítele, zlotřilého životního stína Tir Tanelela..." Odmlčel se a čeká na potvrzení, než pokračuje dál. "Přivolal svou démonickou magii a otevřel si dveře, kterými prolezl. Než mi mohl utéct úplně, vrhl jsem se za ním... a objevil jsem se tady."~ */
  IF ~~ THEN REPLY #45193 /* ~"Chápu. Jsi jeden z Bezradných."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",3)
~ GOTO 22
  IF ~~ THEN REPLY #45195 /* ~"To mi zní jako zajímavé dobrodružství. Ještě mám pár dalších otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #45196 /* ~"Tak tedy hodně štěstí. Budeš ho potřebovat. Sbohem."~ */ EXIT
END
