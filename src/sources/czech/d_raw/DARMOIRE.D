// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMOIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMOIRE~

IF ~  Global("Armoire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2879 /* ~Když si začal prohledávat skříň, její kliky se ti náhle vyrvaly z rukou a zásuvky se samy zabouchly. Ze skříně se ozvalo pohrdavé *hmph!*...~ */
  IF ~~ THEN REPLY #2880 /* ~"Haló?"~ */ DO ~SetGlobal("Armoire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42567 /* ~Jen odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7235 /* ~"'No nazdar.' Almara ze sebe vydala zvuk podobný nedůvěřivému zahučení. "Kohopak to tu máme? Ničemu jdoucího po zdobeném dámském spodním prádélku, ha?~ */
  IF ~~ THEN REPLY #42568 /* ~"Ty *mluvíš?*"~ */ GOTO 2
  IF ~~ THEN REPLY #42569 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #42570 /* ~"Co tady děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #42571 /* ~"Právě odcházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42532 /* ~"Já? Ano já, proč."~ */
  IF ~~ THEN REPLY #42572 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #42573 /* ~"Co tady děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #42574 /* ~"Právě odcházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #42533 /* ~"Já jsem Luis. A kdo jsi *ty?* Nemyslící, neotesaný chlapík, prohrabávající věci jiných lidí..."~ */
  IF ~~ THEN REPLY #42575 /* ~"To by mne nikdy nenapadlo. Co tady děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #42576 /* ~"Zapomeň na to; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #42534 /* ~"Dobrá, pane, pokud to musíte vědět... já jsem šatník."~ */
  IF ~~ THEN REPLY #42577 /* ~"Ale *proč* jsi šatník v nevěstinci?"~ */ GOTO 5
  IF ~~ THEN REPLY #42578 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 12.0
  SAY #42535 /* ~"Stal jsem se šatníkem, protože jsem se *chtěl* stát šatníkem, děkuji mnohokrát. To *neznamená* pozorovat ženy při svlékání, ani brát si jejich měkké voňavé spodní prádlo a strkat si je do zásuvek, kde se může třít o moji kůži. Taková obvinění jsou urážkou pro zástupce umění magie... Já jsem si pouze přičichl ke zkušenosti co to *znamená* být šatníkem. Pozoruhodnosti, vůně, pocity..."~ */
  IF ~~ THEN REPLY #42579 /* ~"Pak o tom všechny ženy vědí?"~ */ GOTO 6
  IF ~~ THEN REPLY #42580 /* ~"V pořádku. Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #42581 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42536 /* ~"Ano! Ano, dělají to a plně to schvalují... dobrá, tak ne tak úplně celým svým srdcem. A protože ony *nehovoří* o svém dovolení v mé přítomnosti - od té doby kdy zjistí, že já jsem šatník - nechtěl bych, aby věděly, že jsem někdo jiný, a tak mne mohly v celé té záležitosti vyšetřovat."~ */
  IF ~  CheckStatGT(Protagonist,14,DEX)
~ THEN REPLY #42582 /* ~"Potřeboval bys, abych o tom pomlčel."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,DEX)
~ THEN REPLY #42583 /* ~"Potřeboval bych od tebe, abys o tom pomlčel."~ */ GOTO 9
  IF ~~ THEN REPLY #42584 /* ~"Mám pro tebe nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #42585 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42537 /* ~"No tak teda dobře! Fajn! Otevři třetí zásuvku, ty darebo." Jakmile jsi strčil ruku do zásuvky, zavřela se s velikou silou - tak tak se ti podařilo včas ucuknout s prsty.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #42538 /* ~"Cha cha! Kreténe! Idiote! 'Otevři zásuvku,' jsem řekl, a ty jsi sáhl do--" Aby to zdůraznil, znovu zabouchl zásuvku, pak se začal otřásat smíchy.~ */
  IF ~~ THEN REPLY #42586 /* ~"Jdu jim to hned teď říct."~ */ GOTO 11
  IF ~~ THEN REPLY #42587 /* ~"Chystám se rozsekat tě na třísky."~ */ GOTO 10
  IF ~~ THEN REPLY #42588 /* ~"Velmi zábavné. Chtěl bych se tě na něco zeptat, Luisi..."~ */ GOTO 12
  IF ~~ THEN REPLY #42589 /* ~Odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #42539 /* ~"No tak teda dobře! Fajn! Otevři třetí zásuvku, ty darebo." Jakmile jsi strčil ruku do zásuvky, zabouchla se a přivřela ti velikou silou prsty. Pálivá bolest proběhla tvojí rukou a ty stahuješ svoje otlučené prsty.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1 11.0
  SAY #42540 /* ~"Neuděláš *nic* takového! Nu, protože i ti *nejobyčejnější* lidé vědí, že nikdo se nemůže dopustit hrubosti uvnitř Nevěstince... budeš prostě vyhozen. A i když to *nebyl* ten případ, ujišťuji tě, že mé umění rozkazovat je docela působivé."~ */
  IF ~~ THEN REPLY #42590 /* ~"Fajn, pak... půjdu jim o tobě říct."~ */ GOTO 11
  IF ~~ THEN REPLY #42591 /* ~"Pak bych měl nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #42592 /* ~"V tom případě, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.0
  SAY #42541 /* ~"Nejdříve, bych ti chtěl říci tohle: já se otevírám a zavírám v tomhle Nevěstinci již velmi dlouhý čas... a jsem docela dobře obeznámen s oběma jeho nájemníky a jejich činností. Ujišťuji tě, že mluvit o mně je naprosto zbytečné; nejenom, že přijdeš o mne, jako o potenciální zdroj informací, ale já jednoduše zmizím předtím, než někdo přijde zkoumat tvoje tvrzení, a nechám tě, abys vypadal jako hlupák."~ */
  IF ~~ THEN REPLY #42593 /* ~"Pak tě možná rozsekám na třísky."~ */ GOTO 10
  IF ~~ THEN REPLY #42594 /* ~"Chápu. Pak bych na tebe měl pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #42595 /* ~"Chápu. Pak tedy sbohem, Luisi."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 6.2 8.2 10.1 11.1 13.0 14.0 15.0 16.0 17.0 18.0 19.1 20.0 21.0 32.0
  SAY #42542 /* ~"Ano?"~ */
  IF ~~ THEN REPLY #42596 /* ~"Tak... proč jsi šatník v tomto nevěstinci?"~ */ GOTO 5
  IF ~~ THEN REPLY #42597 /* ~"Můžeš se vrátit do své normální podoby pokud chceš?"~ */ GOTO 13
  IF ~~ THEN REPLY #42598 /* ~Mohl bys mi říci něco o tomhle místě?"~ */ GOTO 14
  IF ~  Global("Nenny_Hint2","AR0605",3)
~ THEN REPLY #42599 /* ~"Nenny mi říkala, že viděla muže opouštějícího pokoj Kimasxi Zmijíhojazyku... myslím, žes to byl ty, Luisi."~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",4)
~ GOTO 36
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #42600 /* ~"Co mi můžeš říct o tiché prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 15
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #42601 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ GOTO 16
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #42602 /* ~"Pokouším se najít Vivianinu voňavku... nevíš kde může být?"~ */ GOTO 17
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #42603 /* ~"Pokouším se najít Marissin Karmínový závoj... nevíš, kde může být?"~ */ GOTO 18
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42604 /* ~"Víš něco o Ravel Puzzlewellové?"~ */ GOTO 19
  IF ~  GlobalGT("Vivian","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #42605 /* ~"Mluvil jsem celkem s devíti prostitutkami... nevíš kdo, nebo kde je desátá studentka?"~ */ GOTO 21
  IF ~~ THEN REPLY #42606 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #42543 /* ~Šatník vypadá, že o tom chvíli přemýšlí. "Nepotřebuji se dělit o podobná tajemství s takovými jako ty! A kromě toho, není tu žádný důvod měnit se zrovna teď zpět, do té doby než ještě úplně nevyzkouším ten pocit být šatníkem. Je to komplexní záležitost, držet a třídit měkké zřasené oděvy, vonící obdivuhodnou ženskou vůní." Zásuvka se otevřela a zavřela, vydajíce zvuk připomínající zábavný povzdech.~ */
  IF ~~ THEN REPLY #42607 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #42608 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #42544 /* ~"Byl bych člověk, který si to nechá pro sebe, spíše než abych mu to všechno řekl... konec konců, to je polovina potěšení z celého zážitku. Řeknu ti jen to, co už stejně pravděpodobně víš: jmenuje se Nevěstinec duševních rozkoší, a prostitutky uvnitř se specializují na umění jazyka a komunikace."~ */
  IF ~~ THEN REPLY #42609 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #42610 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.4
  SAY #42545 /* ~"Ano, Ecco. Ona nemůže být němá od narození, chápeš. Jinak, jsem si jistý, by se mezitím naučila nějaký jiný způsob komunikace. Muselo to být nedávno."~ */
  IF ~~ THEN REPLY #42611 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #42612 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.5
  SAY #42546 /* ~"Nechtěl bych zacházet tak daleko, abych řekl, že ona je *Ravelina* dcera, ale ona je noční čarodějnice - tímhle jsem si jist. Všimněte si její pleti, očí, zdravé přirozenosti a její nepřirozené fixace na sny jiných... všechny zaručené znaky, spolehlivé znaky. Nepochybně je to jen Kesaiovo energické odmítnutí její skutečné podstaty, co dosud brání její degeneraci do pokřivené staré babice, přeměnu na celonoční čarodějnicí."~ */
  IF ~~ THEN REPLY #42613 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #42614 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.6
  SAY #42547 /* ~"Jémine, ano... již *jsem* o tom slyšel. Velmi nešťastné! Měl jsi někdy to potěšení dýchat její vůni?" Zdá se, jako by se šatníkovy zásuvky chvěly potěšením. "Bylo to absolutně podivuhodné. Ale je mi líto, ne; nevím kde by se mohla nacházet dobrá vůně Lady Vivian."~ */
  IF ~~ THEN REPLY #42615 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #66529 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.7
  SAY #42548 /* ~"Slyšel jsem, že měla ve zvyku se procházet v karmínovém závoji, ale že si ho nedávno vzala k sobě do pokoje a ztmavila ho. Nevěděl jsem co se stalo. Tak to pak její závoj chybí, že?"~ */
  IF ~~ THEN REPLY #42616 /* ~"Ano. Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #42617 /* ~"Ano, to je. Sbohem, Luisi."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.8
  SAY #42549 /* ~"Málo lidí, kteří přebývali v Sigilu delší čas, ji nezná. Ačkoliv se musím divit, že se chcete dozvědět právě o ní?"~ */
  IF ~~ THEN REPLY #42618 /* ~"Potřebuji ji najít."~ */ GOTO 20
  IF ~~ THEN REPLY #42619 /* ~"Nikdy. Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #42620 /* ~"Zapomeň, že jsem se na ni ptal. Sbohem, Luisi."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42550 /* ~"Ty jsi šílený, rozumíš... úplně šílený. 'Naprosto natvrdlý.' Věřím, že je to pro tohle běžný termín. Ravel byla vypovězena ze Sigilu už dávno a pokud ona není mrtvá, budeš si přát, abys byl *ty*, pokud nějak uspěješ ve svém pátrání po ní. Ona pohltila všechny, kteří ji zatím našli, to se říká, a pravděpodobně ti udělá to samé. Já bych raději sám odešel."~ */
  IF ~~ THEN REPLY #42621 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #42622 /* ~"To je vše co jsem chtěl vědět. Sbohem. "~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.9
  SAY #42551 /* ~"Neexistuje desátý student! O jakých nesmyslech to mluvíš?"~ */
  IF ~~ THEN REPLY #42623 /* ~"Nikdy. Mám další otázku..."~ */ GOTO 12
  IF ~~ THEN REPLY #42624 /* ~"Zapomeň na to, Luisi. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 35.0 36.0
  SAY #42552 /* ~Podařilo se ti vytrhnout látku - průsvitný, karmínový závoj - ze šatníku. Když ho schováváš, všimneš si, že je naparfémovaný lehkou, cizokrajnou, a velmi příjemnou vůní.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 27.0 31.0
  SAY #42553 /* ~"K čertu! Ty zloději! Darebáku! Lotře! *Hned* to dej zpátky! To není tvoje! To je mimořádně osobní kus oděvu, který patří jedné dámě v tomto podniku, a ona by neocenila, že si hraješ s jejími osobními věcmi!"~ */
  IF ~~ THEN REPLY #42625 /* ~"Ách, ale to je pro tebe v pořádku, ty dřevěný zvrhlíku?"~ */ GOTO 24
  IF ~~ THEN REPLY #42626 /* ~"Ano, ano... sbohem, Luisi."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42554 /* ~"Nedělám nic tak zločinného a záludného jako ty! Já se pouze máchám v pocitech nezbytných k mému růstu jako jednotlivce."~ */
  IF ~~ THEN REPLY #42627 /* ~"Ano, ano... sbohem, Luisi."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 35.1 36.1
  SAY #42555 /* ~Nemůžeš jednoduše hýbat svojí rukou tak rychle, abys popadl karmínovou látku zevnitř Luise... v nejlepším případě bys dosáhl toho, že bys měl rozdrcené prsty.~ */
  IF ~~ THEN REPLY #42628 /* ~"Dej mi tu karmínovou látku."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42629 /* ~Vytáhni zásuvku, aby sis vzal látku.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42630 /* ~Vytáhni zásuvku, aby sis vzal látku.~ */ GOTO 28
  IF ~~ THEN REPLY #42631 /* ~Žebrej a fňukej o látku.~ */ GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.0 29.0 30.0
  SAY #42556 /* ~"Nemám. Nedám. Nikdy."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42632 /* ~Vytáhni zásuvku, aby sis vzal látku.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42633 /* ~Vytáhni zásuvku, aby sis vzal látku.~ */ GOTO 28
  IF ~~ THEN REPLY #42634 /* ~Žebrej a fňukej o látku.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 29.1 30.1
  SAY #42557 /* ~"*Mmmph.* Zastav! Zastav, říkám! Dávej pozor na kliky! Nepoškrábej konce! Hrom do toho, ty zvědavá špíno!"Šatník zvýšil svoji statečnou námahu, ale nakonec jsi vytáhl zásuvku a vytrhl z ní látku - průhledný karmínový závoj. Když ho schováváš, všimneš si, že je naparfémovaný lehkou, cizokrajnou, a velmi příjemnou vůní.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.1 28.1 30.2
  SAY #42558 /* ~Zásuvka zůstává zavřená. Slyšís jak odfukuje a sípá z té námahy. "Jdi *pryč,* ty barbare!"~ */
  IF ~~ THEN REPLY #42635 /* ~"Dej mi tu karmínovou látku, Luisi."~ */ GOTO 26
  IF ~~ THEN REPLY #42636 /* ~Vytáhni zásuvku, aby sis vzal látku.~ */ GOTO 28
  IF ~~ THEN REPLY #42637 /* ~Žebrej a fňukej o látku.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.2 28.2
  SAY #42559 /* ~"Ách, prosím přestaň s těmi nesmysly! Je to docela únavné a přesahuje to všechny známé významy slova *nuda!*"~ */
  IF ~~ THEN REPLY #42638 /* ~"Dej mi tu karmínovou látku."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42639 /* ~Vytáhni zásuvku, aby sis vzal látku.~ */ GOTO 27
  IF ~~ THEN REPLY #42640 /* ~Žebrej a fňukej o něco víc.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY #42560 /* ~"Přestaň! Jak únavně těžkopádné! Úplně jsi mne uspal."~ */
  IF ~~ THEN REPLY #42641 /* ~"Dej mi tu karmínovou látku."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42642 /* ~Vytáhni zásuvku, aby sis vzal látku.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42643 /* ~Vytáhni zásuvku, aby sis vzal látku.~ */ GOTO 28
  IF ~~ THEN REPLY #42644 /* ~Pokračuj v žebrání a fňukání.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.3
  SAY #42561 /* ~Šatník zívl, čímž ti vydal napospas karmínovou látku která v pohodě ležela vedle nějakého spodního prádla. Vystřelil jsi ruku a uchopil jsi ji předtím, než se zásuvka stihla zavřít. Když ji schováváš, všimneš si, že je naparfémovaná lehkou, cizokrajnou, a velmi příjemnou vůní.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~  Global("Armoire","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #42562 /* ~To je Luis, mluvící šatník.~ */
  IF ~~ THEN REPLY #42645 /* ~"Měl bych nějaké otázky, Luisi..."~ */ GOTO 12
  IF ~~ THEN REPLY #42646 /* ~Nech ho být.~ */ EXIT
END

IF ~  Global("Armoire","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #42563 /* ~To je Luis, mluvící šatník.~ */
  IF ~~ THEN REPLY #42647 /* ~"Měl bych nějaké otázky, Luisi..."~ */ GOTO 34
  IF ~~ THEN REPLY #42648 /* ~Nech ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #42564 /* ~Nad šatníkem visí zlověstné ticho; neodpovídá. Jsi si jistý, že je to pořád Luis - můžeš prakticky *cítit* nenávist vyzařující ze dřeva - ale nechce ti říct ani slovo.~ */
  IF ~~ THEN REPLY #42649 /* ~"Zatím, Luisi."~ */ EXIT
  IF ~~ THEN REPLY #42650 /* ~Odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 36.2
  SAY #42565 /* ~Balancuješ na okraji šatníku. Je celkem ukecaný, ale nikdy to nevypadá, že by zůstal otevřený dost dlouho na to, abys mohl chytit látku.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42651 /* ~Zkus to a strč ruku dovnitř, když je otevřená zásuvka.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42652 /* ~Zkus to a strč ruku dovnitř, když je otevřená zásuvka.~ */ GOTO 25
END

IF ~~ THEN BEGIN 36 // from: 12.3
  SAY #42566 /* ~"Ty *myslíš?* *MYSLÍŠ?!* Jak můžeš být tak děsivě sprostý, tak směšně troufalý, jak ze sebe můžeš chrlit takové nařčení bez toho, že by sis byl absolutně *jistý* ve svých obviněních?! Jak se *opovažuješ*! Drzý, vulgární mizero! Proč, bych měl..."

Jak Luis láteří a kleje, jeho zásuvky se otevírají a zavírají... ty si všimneš malého svazku karmínové látky, zastrčeného vedle nějakých šatů. Avšak opakované otevírání a zavírání zásuvek šatníku ztěžují možnost ji uchopit.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42653 /* ~Pokus se o to.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42654 /* ~Pokus se o to.~ */ GOTO 25
  IF ~~ THEN REPLY #42655 /* ~Počkej na příležitost ji chytit.~ */ GOTO 35
END
