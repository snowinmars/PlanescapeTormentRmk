// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHJULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHJULL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from: 100.0
  SAY #2913 /* ~"Kvůli tobě jsem vše ztratil! Budou neustále přicházet a přicházet... och, ta muka, která ti způsobím... uch... odpusť. Promluvil za mě hněv a uspěchanost."~ */
  IF ~~ THEN REPLY #2914 /* ~"Dobře. Potřebuju nějaké zásoby. Co máš?"~ */ GOTO 2
  IF ~~ THEN REPLY #54881 /* ~"To doufám. Mám pro tebe nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #54882 /* ~"Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 99.0
  SAY #54883 /* ~"Cítím z tebe pach zrady. Cítím a slyším, jak se mí bratři vracejí, aby mě vtáhli zpět do Baatoru... zmizni, křivopřísežníku! Dal jsem ti vše, co jsem mohl! Už ti nemohu dát víc!"~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54884 /* ~"Už nemáš nic, co bys mi dal?"~ */ GOTO 2
  IF ~~ THEN REPLY #54885 /* ~"Mám pro tebe ještě pár otázek.."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54886 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54887 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54888 /* ~"Tak sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.4
  SAY #54889 /* ~Fiend ztuhl. "Eh... nic cenného. Možná nějakou cetku, amulet... jestli jej opravdu potřebuješ, tak ano, mohl bych ti je dát, ale jinak..."~ */
  IF ~~ THEN REPLY #54890 /* ~"Co máš?"~ */ GOTO 3
  IF ~~ THEN REPLY #54891 /* ~"Zapomeň na to. Jenom mi odpověz na pár otázek."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54892 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54893 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54894 /* ~"Zapomeň na to. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #54895 /* ~"Feh! Třikrát proklet budiž, smrtelníku! Modli se, aby tomu devovi v žilách obíhala věčnost, protože jinak dohlédnu, abys mi zaplatil zpět, ale nebude to magie, kterou budu chtít zpátky... Urkhhhh... ugnnnhhh... ne, ne, nechtěl jsem ublížit... beru svá slova zpět... nechtěl jsem ublížit..."~ */
  IF ~~ THEN REPLY #54896 /* ~"Dobře. Dej to sem. Teď."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54897 /* ~"Jestli je nepotřebuješ, Jazyku, tak bych si je vzal."~ */ GOTO 5
  IF ~~ THEN REPLY #54898 /* ~"Zapomeň na to, Jazyku. Místo toho mi odpověz na pár otázek.."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54899 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54900 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54901 /* ~"Tak sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0
  SAY #54902 /* ~"Prokletý, vypočítavý... samozřejmě, že se můžeš podívat. Co bys rád viděl?"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54903 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54904 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54905 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54906 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54907 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54908 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54909 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 20
  IF ~~ THEN REPLY #54910 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54911 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54912 /* ~"Žádný z nich. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54913 /* ~"Žádný z nich. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #54914 /* ~"Argh! Vždycky můžu ty předměty nějak použít. Zvláště proti hordě fiendů, které jsi tak bezmyšlenkovitě přivedl před mé dveře!"~ */
  IF ~~ THEN REPLY #54915 /* ~"To je ale smůla. Tak je naval."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54916 /* ~"V tom případě je nechám v tvém vlastnictví.."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #54917 /* ~"Feh! Tvá ušlechtilost je ještě větší než těch třikrát prokletých andělů z Elysia. Co ještě chceš od ubohého chudého zuboženého nebožáka Fhjulla?" ~ */
  IF ~~ THEN REPLY #54918 /* ~"Když nad tím tak přemýšlím, rád bych se podíval na tvé věci."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54919 /* ~"Jenom odpovědi na pár otázek..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54920 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54921 /* ~"Momentálně nic. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54922 /* ~"Momentálně nic. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.2 4.7 6.1 9.0 10.0 11.0 12.0 13.7 14.7 15.7 16.7 17.7 18.7 19.7 20.13 21.2 22.2 23.1 24.0 25.0
  SAY #54923 /* ~Zaskřípal zuby. "Jak ti můžu dál posloužit?"~ */
  IF ~  Global("Curst_Portal","GLOBAL",0)
~ THEN REPLY #54924 /* ~"Jak se dostanu z tohohle kráteru?"~ */ DO ~SetGlobal("Curst_Portal","GLOBAL",1)
~ JOURNAL #66806 /* ~Jedovatý Jazyk mi řekl že portál, který mě vrátí do Curstu, je pod ocasní kostí obrovské kostry. Byl opravdu potěšený, že budu muset prolézt zadkem.~ */ GOTO 9
  IF ~  Global("Curst_Portal","GLOBAL",1)
~ THEN REPLY #54925 /* ~"Jak že se odtud dostanu?"~ */ GOTO 9
  IF ~~ THEN REPLY #54926 /* ~"Pověz mi o Triasovi."~ */ GOTO 10
  IF ~~ THEN REPLY #54927 /* ~"Tak proč tě vlastně baatezu nahánějí?"~ */ GOTO 11
  IF ~~ THEN REPLY #54928 /* ~"Nemáš něco, o co by ses rád... se mnou podělil?"~ */ GOTO 2
  IF ~~ THEN REPLY #54929 /* ~"Proč se schováváš v tomhle kráteru?"~ */ JOURNAL #66807 /* ~Jedovatý Jazyk mi řekl, že se v kráteru a v kostlivci skrývá proto, že magie kostí Ul-Gorise zabraňuje magickému stopování, takže je tady v bezpečí před těmi, kteří ho hledají a chtějí mu ublížit.~ */ GOTO 12
  IF ~~ THEN REPLY #47138 /* ~"Rád bych tu přespal."~ */ GOTO 101
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54931 /* ~"Teď zrovna ne. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54932 /* ~"Teď zrovna ne. Sbohem."~ */ GOTO 8
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54931 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.4 2.4 3.5 4.10 6.4 7.8 9.3 10.3 11.3 12.3 13.10 14.10 15.10 16.10 17.10 18.10 19.10 20.16 21.5 22.5 23.4
  SAY #54933 /* ~"Ha! Jaké problémy přineseš příště? Tvůj druh se vždycky vrací... feh!"~ */
  IF ~~ THEN REPLY #54934 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #54935 /* ~"Feh... znamená to, že mě necháš znovu v mém osamění? Pak tedy tvrdím, s takovým potěšením, jaké jen mohu cítit, že portál leží pod řitním koncem kostí tohoto stvoření. Vrátí tě do odporného města Curst, odkud jsi přišel. A napadá mě pár dalších vhodných cest, které můžeš podniknout."~ */
  IF ~~ THEN REPLY #54936 /* ~"Díky. Mám ještě pár otázek..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54937 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54938 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54939 /* ~"Tak sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #54940 /* ~"To zbabělé pseudo dítě světla! Ten zavrženíhodný... aggh... Nic nemám proti němu ani proti jeho zrádným prolhaným, zákon respektujícím, způsobům! Pchá! Je to podvodník, smrtelníku, a neměl bys mu v ničem věřit. Myslím to pochopitelně s veškerou dobročinností a..." Jedovatý Jazyk plivl na zem, "...dobrotou. Jeho klam mě stál věčnost... dokud nezemře." Jeho zubatý škleb je překvapivě plný naděje.~ */
  IF ~~ THEN REPLY #54941 /* ~"Mám ještě pár otázek..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54942 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54943 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54944 /* ~"Tak sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #54945 /* ~"Feh... chtějí vyrovnat, napravit zlo, zajistit, že bude vše v pořádku. Má existence daleko od jejich zraku zohyzďuje perfektnost, kterou chtějí mít na tváři zla."~ */
  IF ~~ THEN REPLY #54946 /* ~"Mám ještě pár otázek..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54947 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54948 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54949 /* ~"Tak sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY #54950 /* ~"Tohle je kostra Ul-Gorise, otce všech goristro. Jsou to žijící medvědí dobývací věže, juggernauti chaosu, obrovští, prakticky nezastavitelní, odolní vůči magii... a Ul-Gorisovy kosti, v kráteru, kde zemřel, vyzařují tolik energie, že mě ubrání před odhalením. Feh!"~ */
  IF ~~ THEN REPLY #54951 /* ~"Mám ještě pár otázek..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54952 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54953 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54954 /* ~"Tak sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 4.0 14.1 15.1 16.1 17.1 18.1 19.0
  SAY #54955 /* ~"Feh... to je Dar Nenávisti, fajn zbraň pro takové, jako jsi ty." Usmál se pro sebe. "Nemyslím, že ji budeš chtít... je prokletá. Měl bys radši pouvažovat..."~ */
  IF ~~ THEN REPLY #54956 /* ~"Stejně si to vezmu."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 19
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54957 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54958 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54959 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54960 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54961 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54962 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 20
  IF ~~ THEN REPLY #54963 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54964 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54965 /* ~"Žádný z nich. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54966 /* ~"Žádný z nich. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 4.1 13.1 15.2 16.2 17.2 18.2 19.1
  SAY #54967 /* ~"Ta stará věc? Feh! To je Gordický uzel. Rozsekni ho, a budeš dvakrát větší vůdce, než jsi, heh heh. Ale zaplatíš za to cenu, kterou naštěstí nedokážu zaplatit za tebe."~ */
  IF ~~ THEN REPLY #54968 /* ~"Stejně si to vezmu."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54969 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 13
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54970 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54971 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54972 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54973 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54974 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 20
  IF ~~ THEN REPLY #54975 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54976 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54977 /* ~"Žádný z nich. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54978 /* ~"Žádný z nich. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 4.2 13.2 14.2 16.3 17.3 18.3 19.2
  SAY #54979 /* ~Povzdychl si. "Zmijí slza. Strč si to do tlamy a budeš líbat jako zmije, plný jedu a nenávisti."~ */
  IF ~~ THEN REPLY #54980 /* ~"Vezmu si to."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54981 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54982 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 14
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54983 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54984 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54985 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54986 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 20
  IF ~~ THEN REPLY #54987 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54988 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54989 /* ~"Žádný z nich. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54990 /* ~"Žádný z nich. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 4.3 13.3 14.3 15.3 17.4 18.4 19.3
  SAY #54991 /* ~"Upomínka na mé časy v Baatoru - nůž z Baatorianské zelené oceli, jeden z nejsilnějších materiálu, který znám. Feh! Vezmi si mou historii a skonči už!"~ */
  IF ~~ THEN REPLY #54992 /* ~"Vezmu si to. Ale ještě si nejsem jistý, jestli jsem skončil."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54993 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54994 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54995 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 15
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54996 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54997 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54998 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 20
  IF ~~ THEN REPLY #54999 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55000 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55001 /* ~"Žádný z nich. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55002 /* ~"Žádný z nich. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 4.4 13.4 14.4 15.4 16.4 18.5 19.4
  SAY #55003 /* ~"Ta stará věc? Feh! Je to jenom dýka z Baatorianské zelené oceli. Uchovává si ostrost. Určitě nic, co bys potřeboval."~ */
  IF ~~ THEN REPLY #55004 /* ~"Stejně si to vezmu."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55005 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55006 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55007 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55008 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 16
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55009 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55010 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 20
  IF ~~ THEN REPLY #55014 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55015 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55016 /* ~"Žádný z nich. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55017 /* ~"Žádný z nich. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 4.5 13.5 14.5 15.5 16.5 17.5 19.5
  SAY #55018 /* ~"Tohle? To jsou *kassegové*, paraziti, kterí se napojí na tvůj mozek a vysají tvou mentální energii, jenom tak... Pche! Prokletá smlouva! Zvýší tvou mentální sílu, něco, co určitě potřebuješ! Vezmi si je! Vezmi si je!"~ */
  IF ~~ THEN REPLY #55019 /* ~"Vezmu."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55020 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55022 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55023 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55024 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55025 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 17
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55026 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 20
  IF ~~ THEN REPLY #55027 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55028 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55029 /* ~"Žádný z nich. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55030 /* ~"Žádný z nich. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0 15.0 16.0 17.0 18.0 21.1 22.1 23.0
  SAY #55031 /* ~"Feh! Samozřejmě! Je tady ještě něco, co vyžaduješ od svého *pokorného* služebníka?!"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55032 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55033 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55034 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55035 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55036 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55037 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55038 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 20
  IF ~~ THEN REPLY #55039 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55040 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55041 /* ~"Žádný z nich. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55042 /* ~"Žádný z nich. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 4.6 13.6 14.6 15.6 16.6 17.6 18.6 19.6 21.0 22.0
  SAY #55043 /* ~"Pche! Obereš mě o veškerý majetek! Chceš kouzla? Feh! Tohle mám, ty upíre!" Zadrmolil seznam kouzel.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55046 /* ~"Co takhle hezké kouzlíčko Odstranění prokletí?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55047 /* ~"Dej mi další Odstranění prokletí."~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55048 /* ~"Koule nezranitelnosti zní užitečně. Sem s ní."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55049 /* ~"Nemáš ještě Kouli nezranitelnosti?"~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55050 /* ~"Co takhle Bouře řetězových blesků?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55051 /* ~"Další Bouře řetězových blesků bude fajn..."~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55052 /* ~"Kyselinová bouře zní nebezpečně. Dej mi to."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55053 /* ~"Kyselinová bouře. Dej mi to."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55054 /* ~"Ostrá bouře? Hezký jméno. Chci to."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55055 /* ~"Dej mi další Ostrou bouři."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55056 /* ~"Stygijská Ledová bouře. To je kapku moc nebezpečné kouzlo... raději si ho od tebe vezmu."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55057 /* ~"Stygijská Ledová bouře. To se mi líbí."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55058 /* ~"Neřekl jsi vůbec nic."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 23
  IF ~~ THEN REPLY #55059 /* ~"Zapomeň na to. Mám nějaké otázky."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55060 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55061 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55062 /* ~"Zapomeň na to. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.2 20.4 20.6 20.8 20.10
  SAY #55063 /* ~Jeho ruka zmizela, jak sáhl do podivného prostoru/neprostoru. Vytáhl svitek, který je na dotek jako lidská kůže a hodil ti ho. "Feh! Vezmi si ho a buď prokl... vezmi si to!"~ */
  IF ~~ THEN REPLY #55064 /* ~"Díky... Jaký další kouzla ještě máš?"~ */ GOTO 20
  IF ~~ THEN REPLY #55065 /* ~"Podívejme se ještě jednou na ty věci."~ */ GOTO 19
  IF ~~ THEN REPLY #55066 /* ~"Zapomeň na to. Mám nějaké otázky."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55067 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55068 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55070 /* ~"Zapomeň na to. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.3 20.5 20.7 20.9 20.11
  SAY #55072 /* ~Zubatě se zašklebil. "Mám neuvěřitelnou radost, protože ti musím oznámit, že zásoby tohoto kouzla jsi mi už vybrakoval! Feh!"~ */
  IF ~~ THEN REPLY #55073 /* ~"Jaké další kouzla máš?"~ */ GOTO 20
  IF ~~ THEN REPLY #55074 /* ~"Podívejme se ještě jednou na ty věci."~ */ GOTO 19
  IF ~~ THEN REPLY #55075 /* ~"Zapomeň na to. Mám nějaké otázky."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55076 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55078 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55080 /* ~"Zapomeň na to. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 20.12
  SAY #55081 /* ~Jedovatý Jazyk na tebe vyprskl. "Zruinoval jsi, zničil, zlikvidoval jednu z nejunikátnějších kouzelných knihoven ve vesmíru... ať už ti to bude k čemu chceš. Už pro tebe nemám další kouzla."~ */
  IF ~~ THEN REPLY #55082 /* ~"Podívejme se ještě jednou na ty věci."~ */ GOTO 19
  IF ~~ THEN REPLY #55083 /* ~"Tak na to zapomeň. Místo toho mi odpověz na pár otázek..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55084 /* ~"Tak sbohem."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55085 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55086 /* ~"Tak sbohem."~ */ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",0)
~ THEN BEGIN 24 // from:
  SAY #55087 /* ~"Feh! Tak ses vrátil! O čem mluvil Pilíř? Odpověděl na tvé nesmyslné otázky?"~ [FFT067] */
  IF ~~ THEN REPLY #55088 /* ~"Mám jenom pár otázek..."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #55089 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #55090 /* ~"Argh! Co? COŽE??"~ [FFT018] */
  IF ~~ THEN REPLY #55091 /* ~"Mám jenom pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #55094 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 95.0
  SAY #55095 /* ~"Feh! Zápach tan'nari! Vycítím ho na míle daleko! Respektujte trochu můj domov! Nemůžeš si najít nějaký dým nebo kyselinové výpary a trochu s nimi přeplácnout ten pach? Feh! Nikdy se toho tanar'rického smradu nezbavím. Bude sem přitahovat baatezu z celých sfér."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 594
END

IF ~~ THEN BEGIN 27 // from:
  SAY #55096 /* ~"Oh, a ne jenom nějaká tanar'ri, ale tanar'rijská děvka mi nakráčela do mého domova... horší už to snad ani nemůže být! Pojďte dál! Pojďte, můj dům je váš dům!" Zoufale zamával rukama ve vzduchu. "Proč nepozvete zbytek harpyjí z Abyssu, ať se přidají a v mém vlastním domě mě umučí?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 28 // from: 96.0
  SAY #55097 /* ~"Feh! Zápach tan'nari! Vycítím ho na míle daleko! Respektujte trochu můj domov! Nemůžeš si najít nějaký dým nebo kyselinové výpary a trochu s nimi přeplácnout ten pach? Feh! Nikdy se toho tanar'rického smradu nezbavím. Bude sem přitahovat baatezu z celých sfér."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 29 // from:
  SAY #55098 /* ~"Přišel jsi mě zabít?! Mučit mě? Pokud ano, věz, že ještě stále mám k dispozici velkou sílu!"~ */
  IF ~~ THEN REPLY #55100 /* ~"Nepřišel jsem tě zabít."~ */ GOTO 45
  IF ~~ THEN REPLY #55101 /* ~"Nepřišel jsem tě mučit."~ */ GOTO 44
  IF ~~ THEN REPLY #55103 /* ~"Chci jenom otázky na pár odpovědí."~ */ GOTO 43
  IF ~~ THEN REPLY #55104 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 98.0
  SAY #55187 /* ~"Musíš neustále ničit klid mého domova zápachem tanar'ri? Ptej se a jdi pryč!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55188 /* ~"Řekni mi o Triasovi."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55381 /* ~"Řekni mi o Triasovi."~ */ GOTO 55
  IF ~~ THEN REPLY #55389 /* ~"Co se stalo s tvými křídly?"~ */ GOTO 49
  IF ~~ THEN REPLY #55391 /* ~"Řekni mi o sobě."~ */ GOTO 56
  IF ~~ THEN REPLY #55392 /* ~"Kde je to místo?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55394 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55397 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 64
  IF ~~ THEN REPLY #55400 /* ~"Co to děláš?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55404 /* ~"Potřebuju pomoc."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55406 /* ~"Řekni mi znovu o tom Pilíři a jak se tam dostanu."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 98 96 95 99 100 even though they appear after this state */
~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN BEGIN 31 // from:
  SAY #55413 /* ~"Jsem tak potěšený, že tě zase vidím. Stejně potěšený bych byl, kdyby ses zkroutil do klubíčka a umřel."~ [FFT044A] */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55416 /* ~"Řekni mi o Triasovi."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55419 /* ~"Řekni mi o Triasovi."~ */ GOTO 55
  IF ~~ THEN REPLY #55422 /* ~"Řekni mi o sobě."~ */ GOTO 55
  IF ~~ THEN REPLY #55423 /* ~"Co se stalo s tvými křídly?"~ */ GOTO 49
  IF ~~ THEN REPLY #55424 /* ~"Kde je to místo?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55425 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55426 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 64
  IF ~~ THEN REPLY #55428 /* ~"Co to děláš?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55430 /* ~"Potřebuju pomoc."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55433 /* ~"Řekni mi znovu o tom Pilíři a jak se tam dostanu."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 97.0
  SAY #55440 /* ~"Co ode mně chceš, jaké přehnané požadavky na mně budeš klást tentokrát?"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55441 /* ~"Řekni mi o Triasovi."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55443 /* ~"Řekni mi o Triasovi."~ */ GOTO 55
  IF ~~ THEN REPLY #55444 /* ~"Řekni mi o sobě."~ */ GOTO 56
  IF ~~ THEN REPLY #55446 /* ~"Co se stalo s tvými křídly?"~ */ GOTO 49
  IF ~~ THEN REPLY #55447 /* ~"Kde je to místo?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55448 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55451 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 64
  IF ~~ THEN REPLY #55455 /* ~"Co to děláš?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55457 /* ~"Potřebuju pomoc."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55460 /* ~"Řekni mi znovu o tom Pilíři a jak se tam dostanu."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 97 98 96 95 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 33 // from:
  SAY #55539 /* ~"Feh! Kdo je tam?! Přišel jsi mě zabít? Mučit? Jestli ano, věz, že mám ještě stále k dispozici spoustu síly!"~ [FFT066] */
  IF ~~ THEN REPLY #55541 /* ~"Jsi Fhjull Jedovatý Jazyk?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55543 /* ~"Feh! Samozřejmě že jsem! Musel jsi to vědět, když jsi vlezl přímo do *téhle* lebky, ze všech lebek poházených po nekonečných Pustinách... nebo je to jenom náhoda, která poslala idiota bouchat na mé dveře?" Náhle si něco uvědomil. "Musíš přísahat, že NIKOMU neřekneš, že víš, kde jsem!"~ */
  IF ~~ THEN REPLY #55554 /* ~Pravdivě: "Přísahám."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fhjull_1","GLOBALLaw",1)
~ GOTO 35
  IF ~~ THEN REPLY #55555 /* ~"Ne."~ */ GOTO 36
  IF ~~ THEN REPLY #61261 /* ~Lež: "Přísahám."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-1)
SetGlobal("Lawful_Fhjull_1","GLOBAL",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.2
  SAY #55556 /* ~Viditelně se uklidnil. "A jak jsi našel tohle místo, heh?"~ */
  IF ~~ THEN REPLY #55558 /* ~"Deva Trias mi řekl, že bys pro mě mohl mít pár odpovědí."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #55560 /* ~"Tak buď proklet! Jako by mi na tom záleželo! Feh! Jak jsi našel tohle místo?!"~ */
  IF ~~ THEN REPLY #55562 /* ~"Deva Trias mi řekl, že bys pro mě mohl mít pár odpovědí."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #55563 /* ~Ztuhl. "Trias? Trias *Zrádce* tě sem poslal?" Sevřel a povolil pařáty. "Tohle je vrchol! Ten bastard! Zabij ho a já tě odměním vším, co mám! Stáhni ho z kůže a dones mi ji, ať ji můžu nosit jako plášť... hurkkk!"  ~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMEGETHIT)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #55565 /* ~"Myslím... ne, ne... nic proti devovi. Bylo by to špatné... spletl jsem se. Spletl jsem se."~ */
  IF ~~ THEN REPLY #55567 /* ~"Co ti Trias udělal?"~ */ GOTO 39
  IF ~~ THEN REPLY #55568 /* ~"I když tohle bylo docela zábavné, byl bych rád, kdybys mi odpověděl na pár otázek."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 30.0 31.0 32.0 38.0 43.0 46.0 47.0 56.0 87.0
  SAY #55569 /* ~"Feh! Roky služby jako Advokát Pekla! Dokonalá organizace, každý detail perfektní. Nikdy jsem se nehádal s nadřízenými. Udělal jsem VŠE, co po mně chtěli. Trestal jsem ty pod sebou nejkrutějšími a nejvynalézavějšími tresty, když zklamali."~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #55571 /* ~"PAK... jedno klopýtnutí a vše se rozpadlo! Kvůli NÁHODĚ. CHAOS. NÁHODA. A nižší rasy nechápou, proč si baatezu přejí, aby měl mnohovesmír řád." Odmlčel se, syčí zlostí. "Deva lhal. *LHAL*. Trias zrádce mě ošidil a donutil podepsat kontrakt a já, zaslepený možností, že ho polapím, jsem vlezl přímo do jeho pasti."~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #55573 /* ~"Pokud zemře, kontrakt skončí... ale já ho nedokázal najít a, i kdyby ano, jak bych mu ublížil?! CO mám dělat? Dokonce jenom kvůli těmhle myšlenkám se má mysl otřásá bolestí. Byl jsem si *tak* jistý, že ho mám v hrsti. Ta krátkozraká chamtivost mě stála uvěznění v téhle díře dobré vůle. Bleh."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~Našel jsem Fhjulla Jedovatého Jazyka, dobročinného fienda. Je smluvně vázán dohodou s Triasem - kterého nazývá Trias Zrádce. Musí konat dobré skutky, pomáhat těm, kdož jsou v nouzi. Nemá z toho zrovna radost.~ */ GOTO 42
  IF ~  NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~Našel jsem Fhjulla Jedovatého Jazyka, dobročinného fienda. Je smluvně vázán dohodou s Triasem - kterého nazývá Trias Zrádce. Musí konat dobré skutky, pomáhat těm, kdož jsou v nouzi. Nemá z toho zrovna radost.~ */ EXTERN ~DVHAIL~ 153
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #55574 /* ~"A teď jsem proklet, musím činit dobré skutky, pomáhat potřebným. Feh! Nekonečné prokletí pro Triase! Ať všechna hnojiště Maladomini spadnou na jeho hlavu!"

Nadával ještě chvíli, pak obrátil svou pozornost zpět k tobě a skrze zaťaté zuby promluvil. "Můj kontrakt s devou mě nutí, abych se tě zeptal, co pro tebe můžu udělat. Přišel jsi mě mučit? Zabít mě?"~ */
  IF ~~ THEN REPLY #55590 /* ~"Hledám jenom vědomosti."~ */ GOTO 43
  IF ~~ THEN REPLY #55575 /* ~"Nepřišel jsem tě mučit."~ */ GOTO 44
  IF ~~ THEN REPLY #55591 /* ~"Nepřišel jsem tě zabít."~ */ GOTO 45
  IF ~~ THEN REPLY #55592 /* ~"Ne. Vlastně už jdu pryč."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.2 38.1 42.0 50.2 55.0 57.2 72.7 77.7 79.7 83.1 84.1 88.1 92.1 93.2 94.0
  SAY #55593 /* ~"Oh, SKVĚLÉ."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55594 /* ~"Řekni mi o Triasovi."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55595 /* ~"Řekni mi o Triasovi."~ */ GOTO 55
  IF ~~ THEN REPLY #55596 /* ~"Řekni mi o sobě."~ */ GOTO 56
  IF ~~ THEN REPLY #55598 /* ~"Co se stalo s tvými křídly?"~ */ GOTO 49
  IF ~~ THEN REPLY #55600 /* ~"Kde je to místo?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55601 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55603 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 64
  IF ~~ THEN REPLY #55606 /* ~"Co to děláš?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55607 /* ~"Potřebuju pomoc."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55609 /* ~"Řekni mi znovu o tom Pilíři a jak se tam dostanu."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 29.1 42.1
  SAY #55614 /* ~"Feh! Uvidíme, uvidíme! Pokud mi nechceš způsobit bolest nebo mě zabít, obávám se, že muka jsou poněkud nenápadnější formy... což může být horší než jakákoli bolest."~ */
  IF ~~ THEN REPLY #55615 /* ~"Jenom bych chtěl odpovědi na pár otázek..."~ */ GOTO 47
  IF ~~ THEN REPLY #55617 /* ~"Dobře, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 29.0 42.2
  SAY #55620 /* ~"Feh! Kdybych mohl! Pak bych ukončil tuhle mizernou existenci!"~ */
  IF ~~ THEN REPLY #55622 /* ~"Jenom bych chtěl odpovědi na pár otázek..."~ */ GOTO 46
  IF ~~ THEN REPLY #55623 /* ~"Proč je ta existence tak špatná?"~ */ GOTO 48
  IF ~~ THEN REPLY #55624 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0 49.2 51.1 53.1 54.4 56.3 63.1 71.0 73.7 74.7 76.7 78.7 82.2 86.1 90.0
  SAY #55626 /* ~"Jak můžou MODRONI tolik mluvit?" Mávl rukou. "Mluv. Mluv! Feh!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55627 /* ~"Řekni mi o Triasovi."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55630 /* ~"Řekni mi o Triasovi."~ */ GOTO 55
  IF ~~ THEN REPLY #55632 /* ~"Řekni mi o sobě."~ */ GOTO 56
  IF ~~ THEN REPLY #55633 /* ~"Co se stalo s tvými křídly?"~ */ GOTO 49
  IF ~~ THEN REPLY #55634 /* ~"Kde je to místo?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55635 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55636 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 64
  IF ~~ THEN REPLY #55640 /* ~"Co to děláš?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55641 /* ~"Potřebuju pomoc."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55643 /* ~"Řekni mi znovu o tom Pilíři a jak se tam dostanu."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.0 52.1 60.1 70.3 75.7 80.13 81.2 85.0 87.2 89.0 91.1
  SAY #55649 /* ~"Feh. Mluv. Řekni svou cenu."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55651 /* ~"Řekni mi o Triasovi."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55652 /* ~"Řekni mi o Triasovi."~ */ GOTO 55
  IF ~~ THEN REPLY #55654 /* ~"Řekni mi o sobě."~ */ GOTO 56
  IF ~~ THEN REPLY #55656 /* ~"Co se stalo s tvými křídly?"~ */ GOTO 49
  IF ~~ THEN REPLY #55658 /* ~"Kde je to místo?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55659 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55661 /* ~"Řekli mi, že bys měl vědět o mé smrtelnosti. Byla mi ukradena."~ */ GOTO 64
  IF ~~ THEN REPLY #55663 /* ~"Co to děláš?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55665 /* ~"Potřebuju pomoc."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55667 /* ~"Řekni mi znovu o tom Pilíři a jak se tam dostanu."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #55671 /* ~Zakroutil očima. "Viděl jsi slávu Baatoru, procházel temnými paláci a navštívil řvoucí ocelová města skrytá v otravném plynu? Neviděl! Jinak by ses neptal! Feh!"~ */
  IF ~~ THEN REPLY #55672 /* ~"Dobrá. Odpověz mi na pár otázek..."~ */ GOTO 46
  IF ~~ THEN REPLY #55674 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.2 31.3 32.3 43.3 46.3 47.3
  SAY #55676 /* ~"Oh, ano. Nejsou překrásné... ? Feh! Byla to první věc, kterou mi před mým exilem vzali. Než jsem musel uprchnout z hořících hal mého lidu, křídla mi vzal jako trofej nízký *abishai*, pro zástavu ve Válce Krve. Od lebky mi odlomily mé rohy a jeden z nich byl vydlabán a teď ho používá k pití můj Lord Bel, ať je jeho jméno proklínáno po celých sférách."~ */
  IF ~~ THEN REPLY #55677 /* ~"Proč se to stalo?"~ */ GOTO 55
  IF ~~ THEN REPLY #55678 /* ~"Co mi můžeš říct o Válce Krve?"~ */ GOTO 84
  IF ~~ THEN REPLY #55679 /* ~"Odpověz mi na pár otázek."~ */ GOTO 46
  IF ~~ THEN REPLY #55680 /* ~"Díky... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 30.4 31.4 32.4 43.4 46.4 47.4
  SAY #55682 /* ~"Feh. Zatracený kráter v Pustinách, který odráží prázdnotu mého života. Feh. Potřebuju jen málo. Morek z kostí mi dodává jídlo a zvláštní energie tohoto místa zabraňuje hlupákům, aby mě tady vyčmuchali... i když se občas najde idiot, který se sem dostane."~ */
  IF ~~ THEN REPLY #55684 /* ~"Co je to za stvoření?"~ */ GOTO 85
  IF ~~ THEN REPLY #55686 /* ~"Co dělá tvůj život tak prázdným?"~ */ GOTO 86
  IF ~~ THEN REPLY #55688 /* ~"Odpověz mi na pár otázek."~ */ GOTO 43
  IF ~~ THEN REPLY #55690 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 30.5 31.5 32.5 43.5 46.5 47.5 93.0
  SAY #55693 /* ~Poprvé si tě prohlíží zblízka. "Vzpomínky mou myslí plynou v rozlehlých kaňonech, skoro-člověče. Mnoho stvoření jsem potkal za svého nesmrtelného života... ale nemyslím si, že ty jsi byl mezi nimi."~ */
  IF ~~ THEN REPLY #55695 /* ~"Pokračuj."~ */ GOTO 57
  IF ~~ THEN REPLY #55696 /* ~"Odpověz mi na pár otázek."~ */ GOTO 46
  IF ~~ THEN REPLY #55698 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 30.7 31.7 32.7 43.7 46.7 47.7
  SAY #55700 /* ~"Jednoduše jsem si žil svůj život v bolestivém a tragickém osamění, dokud jsi bez pozvání nevtrhl do tohoto kráteru mého života. Kráter, taková metafora pro můj život, pro mou existenci, bledý stín obydlí, kde jsem dříve sídlil."~ */
  IF ~~ THEN REPLY #55701 /* ~"Co se ti stalo?"~ */ GOTO 87
  IF ~~ THEN REPLY #55702 /* ~"Odpověz mi na pár otázek."~ */ GOTO 47
  IF ~~ THEN REPLY #55703 /* ~"Oh, dobře. Nadávej si pro sebe dál. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 30.8 31.8 32.8 43.8 46.8 47.8
  SAY #55704 /* ~Vydal podivné zaúpění. "Mám pár... jenom pár... předmětů, které jsem pracně za ta léta nasbíral. Jsou pro mě... velice cenné... ale jestli je potřebuješ..."~ */
  IF ~~ THEN REPLY #55705 /* ~"To jistě. Podíváme se, co máš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 72
  IF ~~ THEN REPLY #55706 /* ~"Odpověz mi na pár otázek."~ */ GOTO 46
  IF ~~ THEN REPLY #55707 /* ~"Nic. Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 30.9 31.9 32.9 43.9 46.9 47.9
  SAY #55708 /* ~"Co potřebuješ vědět? Jak se tam dostat? Co je to? Co? Co?!"~ */
  IF ~~ THEN REPLY #55709 /* ~"Řekni mi, co to je."~ */ GOTO 89
  IF ~~ THEN REPLY #55710 /* ~"Řekni mi, jak se tam dostanu."~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55711 /* ~"A jak se vrátím?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55713 /* ~"Jak se vrátím od Pilíře?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~~ THEN REPLY #55716 /* ~"Odpověz mi na pár otázek."~ */ GOTO 46
  IF ~~ THEN REPLY #55721 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 30.1 31.1 31.2 32.1 43.1 46.1 47.1 49.0 56.1 87.1
  SAY #55718 /* ~"Feh! Řekl jsem na téma Zrádce vše, co chci. To on mě odsoudil k tomuto životu a z jeho střev bych si nejraděj udělal harfu a zahrál na ni... ne... ne... ne. Nic proti devovi! Ne! Proklínám!"~ */
  IF ~~ THEN REPLY #55724 /* ~"Tak mi odpověz na pár otázek..."~ */ GOTO 43
  IF ~~ THEN REPLY #55726 /* ~"Aha... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 30.3 32.2 43.2 46.2 47.2
  SAY #55732 /* ~"Býval jsem jeden z nejlepších Advokátů Pekla, pekelných advokátů, v Baatoru... a pak jsem utrpěl... ztrátu. Úplné převrácení mého štěstí. Kvůli takovým věcem nenávidím náhodu a chaos mnohovesmíru ještě více."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55734 /* ~"Co se ti stalo?"~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55737 /* ~"Co se ti stalo?"~ */ GOTO 55
  IF ~~ THEN REPLY #55740 /* ~"Proč jsi musel odejít?"~ */ GOTO 90
  IF ~~ THEN REPLY #55741 /* ~"Odpověz mi na pár otázek."~ */ GOTO 46
  IF ~~ THEN REPLY #55744 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 51.0
  SAY #55746 /* ~Jedovatý Jazyk pokrčil rameny. "Všichni mi připadáte stejní... myslím si, že bych si to tvé zjizvené maso zapamatoval... je tak podobné dýchajícím malbám, které má ten ... chm... Bel ve své galérii kůží v Baatoru, až na to, že v jednotlivých jizvách je méně umění a více vášně."~ */
  IF ~~ THEN REPLY #55747 /* ~"Vykašleme se na jizvy a budeme mluvit o mé smrtelnosti, dobře?"~ */ GOTO 64
  IF ~~ THEN REPLY #55748 /* ~"Pokračuj..."~ */ GOTO 58
  IF ~~ THEN REPLY #55749 /* ~"Mám ještě pár otázek..."~ */ GOTO 43
  IF ~~ THEN REPLY #55750 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #55751 /* ~"Násilí je ohromné, téměř na přijatelné úrovni, ale jizvy jsou aplikovány s téměř tanar'rijskou hrubostí, bez starostí o maximalizaci bolesti příjemce. Umělec baatezu by se mnohem více snažil sledovat cestu bolesti po těle. Některé rány vypadají jako čistá zabití, jiná vypadají, jako by je způsobil slepý řezník sekající řízky."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 59
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #60449 /* ~"Cože...?"~ */ DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #55753 /* ~"Feh. Z lidského umění se mi někdy dělá zle. Takový promrhaný potenciál."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 193
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY #55754 /* ~"Feh. Z lidského umění se mi někdy dělá zle. Takový promrhaný potenciál."~ */
  IF ~~ THEN REPLY #55755 /* ~"Vykašleme se na jizvy a budeme mluvit o mé smrtelnosti, dobře?"~ */ GOTO 64
  IF ~~ THEN REPLY #55756 /* ~"Mám nějaké otázky..."~ */ GOTO 47
  IF ~~ THEN REPLY #55757 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #55758 /* ~"Feh! Říct, že tanar'ri jsou hrubí je urážkou hrubosti. Každá nižší rasa, která se zasvěcuje chaosu, která se nechá táhnout jeho stagnujícími vlnami a říká si 'zlá', není vůbec rasa. Jsou to zvířata."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 194
END

IF ~~ THEN BEGIN 62 // from:
  SAY #55759 /* ~"Feh a dvakrát feh! Tanar'rijská zvěř chce z tváře zla smazat řád a pořádek! Neomluvitelné! Netolerovatelné! Nemůžu --"~ */
  IF ~~ THEN DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ EXTERN ~DGRACE~ 195
END

IF ~~ THEN BEGIN 63 // from:
  SAY #55760 /* ~"Feh! Říkáš to proto, že jsi... co jsi." Zamhouřil oči a mávl rukou. "Alespoň že můžu být cynický."~ */
  IF ~~ THEN REPLY #55761 /* ~"Skvělé. Vraťme se k hovoru o mé smrtelnosti, místo abychom projednávali mé jizvy."~ */ GOTO 64
  IF ~~ THEN REPLY #55762 /* ~"Mám nějaké jiné otázky, na které chci odpověď."~ */ GOTO 46
  IF ~~ THEN REPLY #55763 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 30.6 31.6 32.6 43.6 46.6 47.6 57.0 60.0 63.0
  SAY #55764 /* ~"Dobrá, dobrá." Poškrábal se na hlavě. "Pokud si správně vzpomínám - a je spousta věcí, na které si vzpomenout nedokážu, díky tomu prokletému devovi! - tak jsem o takovém případu už slyšel. Jsi díky tomu nesmrtelný, že?"~ */
  IF ~~ THEN REPLY #55765 /* ~"Ano."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #55766 /* ~"Jestli je to tak, tak už ani samotná smrt není svatá. Feh. Za mých dnů smrtelníci znali své místo... a teď má každý druhý nemoc nekonečné nudy. Měli bychom udělat sraz a pozvat všechny z celých sfér a nabídnout jim smlouvy na nesmrtelnost... nám těžce pracujícím baatezu by to ušetřilo spoustu námahy. Feh."~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #55767 /* ~"Víš, kdyby byl každý nesmrtelný, tak by celý ten žadatelský systém skončil na hnojišti. Feh. Nesmrtelnost není cetka, která by se měla dávat na hraní nevychovaným dětem, jako jsi ty."~ */
  IF ~~ THEN REPLY #55768 /* ~"Ať je to jak chce, hlavně mi řekni, co víš o mé smrtelnosti."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55769 /* ~"Feh... jak jsem říkal, pamatuju si, že jsem někde slyšel o místě zvaném Pevnost Lítosti." Chvíli přemýšlí. "Ano, ano. To je ono."~ */
  IF ~~ THEN REPLY #55770 /* ~"Jak se tam dostanu?"~ */ GOTO 68
  IF ~~ THEN REPLY #55771 /* ~"Co o tom místě víš?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #55772 /* ~Široce se usmál. "Jsem potěšen, že tě můžu informovat, že NEVÍM! Vůbec! Nemůžu ti tam pomoct, a to mé srdce těší. Ne - můžu - Ti - pomoct. Oh, jak jsem toužil říct tyhle slova. Jak sladce chutna-"~ */
  IF ~  Global("Know_Pillar","AR1101",0)
~ THEN REPLY #55773 /* ~"Víš o někom, kdo by to mohl vědět?"~ */ DO ~AddexperienceParty(350000)
SetGlobal("Know_Pillar","AR1101",1)
~ GOTO 69
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #66919 /* ~"Znáš někoho, kdo ano?"~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #55774 /* ~"Eh? Dost toho křížového výslechu! Ano, ano, vím o *někom*, kdo by to mohl vědět... v Baatoru je pilíř zrádců, lhářů... a mudrců. Navzdory jejich povaze jsou jejich znalosti velké. Mohli by vědět, kde najdeš tu Pevnost Lítosti."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #55775 /* ~"Jak se dostanu do Baatoru?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ JOURNAL #66809 /* ~Jedovatý Jazyk mi řekl o pilíři z lebek mudrců, lhářů a zrádců, který by měl vědět odpovědi na otázky ohledně mé smrtelnosti. Pod levou paží obrovského kostlivce je portál, kterým můžu odcestovat do Baatoru.~ */ EXTERN ~DMORTE~ 595
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55776 /* ~"Jak se dostanu do Baatoru?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 54.1 69.1
  SAY #55777 /* ~"Před mým domem je portál. Leží u předních tlap tohohle gigantického stvoření. Projdi obloukem vytvořeným levou z nich a dostaneš se k Pilíři Lebek. Portál je teď aktivní."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55778 /* ~"A jak se vrátím?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Fiend mi také řekl, jak se od Pilíře vrátit - mám najít něco běžného z prostředí sféry a to by mě mělo vrátit zpět sem.~ */ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55779 /* ~"Jak se vrátím od Pilíře?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Fiend mi také řekl, jak se od Pilíře vrátit - mám najít něco běžného z prostředí sféry a to by mě mělo vrátit zpět sem.~ */ GOTO 71
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #55780 /* ~"Jak se vrátím od Pilíře?"~ */ GOTO 94
  IF ~~ THEN REPLY #55781 /* ~"Díky. Mám ještě další otázky..."~ */ GOTO 47
  IF ~~ THEN REPLY #61262 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 54.2 54.3 70.0 70.1
  SAY #55782 /* ~"Eh? Vrátíš? No, na to jsem nemyslel. Aby ses mohl vrátit z Baatoru, potřebuješ znalost a kousek zubatého obsidiánu, kterým si pořežeš jazyk. Tu znalost získáš od Pilíře. Ale nemáš důvod se sem vracet. A já nijak netoužím tě znovu vidět."~ */
  IF ~~ THEN REPLY #55783 /* ~"Díky. Mám ještě pár otázek..."~ */ GOTO 46
  IF ~~ THEN REPLY #55784 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 53.0
  SAY #55785 /* ~Vyprskl. "NE představuju si, jak tě zabíjím a nechávám tvé tělo trelonům."~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55786 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55787 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55788 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55789 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55790 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55791 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55792 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 80
  IF ~~ THEN REPLY #55793 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 43
  IF ~~ THEN REPLY #55794 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 74.1 75.1 76.1 77.1 78.1 79.0
  SAY #55795 /* ~"Feh... to je Dar Nenávisti, fajn zbraň pro takové, jako jsi ty." Usmál se pro sebe. "Nemyslím, že ji budeš chtít... je prokletá. Měl bys radši pouvažovat..."~ */
  IF ~~ THEN REPLY #55796 /* ~"Stejně si to vezmu."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 79
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55797 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55798 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55799 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55800 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55801 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55802 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 80
  IF ~~ THEN REPLY #55803 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 46
  IF ~~ THEN REPLY #55804 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1 73.1 75.2 76.2 77.2 78.2 79.1
  SAY #55805 /* ~"Ta stará věc? Feh! To je Gordický uzel. Rozsekni ho, a budeš dvakrát větší vůdce, než jsi, heh heh. Ale zaplatíš za to cenu, kterou naštěstí nedokážu zaplatit za tebe."~ */
  IF ~~ THEN REPLY #55806 /* ~"Stejně si to vezmu."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55807 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 73
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55808 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55809 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55810 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55811 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 78
  IF ~~ THEN REPLY #55812 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 80
  IF ~~ THEN REPLY #55813 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 46
  IF ~~ THEN REPLY #55814 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2 73.2 74.2 76.3 77.3 78.3 79.2
  SAY #55815 /* ~Povzdychl si. "Zmijí slza. Strč si to do tlamy a budeš líbat jako zmije, plný jedu a nenávisti."~ */
  IF ~~ THEN REPLY #55816 /* ~"Vezmu si to."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55817 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55818 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 74
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55819 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55820 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55821 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55822 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 80
  IF ~~ THEN REPLY #55823 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 47
  IF ~~ THEN REPLY #55824 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 72.3 73.3 74.3 75.3 77.4 78.4 79.3
  SAY #55825 /* ~"Upomínka na mé časy v Baatoru - nůž z Baatorianské zelené oceli, jeden z nejsilnějších materiálu, který znám. Feh! Vezmi si mou historii a skonči už!"~ */
  IF ~~ THEN REPLY #55826 /* ~"Vezmu si to. Ale nejsem si jistý, jestli jsem skončil."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55827 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55828 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55829 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 75
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55830 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55831 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55835 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 80
  IF ~~ THEN REPLY #55838 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 46
  IF ~~ THEN REPLY #55840 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 72.4 73.4 74.4 75.4 76.4 78.5 79.4
  SAY #55851 /* ~"Ta stará věc? Feh! Je to jenom dýka z Baatorianské zelené oceli. Uchovává si ostrost. Určitě nic, co bys potřeboval."~ */
  IF ~~ THEN REPLY #55852 /* ~"Stejně si to vezmu."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55854 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55856 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55859 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55861 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 76
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55863 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55866 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 80
  IF ~~ THEN REPLY #55868 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 43
  IF ~~ THEN REPLY #55869 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 72.5 73.5 74.5 75.5 76.5 77.5 79.5
  SAY #55872 /* ~"Tohle? To jsou *kassegové*, paraziti, kteří se napojí na tvůj mozek a vysají tvou mentální energii, jenom tak... Pchá! Prokletá smlouva! Zvýší tvou mentální sílu, něco, co určitě potřebuješ! Vezmi si je! Vezmi si je!"~ */
  IF ~~ THEN REPLY #55874 /* ~"Ano."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55878 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55880 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55881 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55883 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55885 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 77
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55888 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 80
  IF ~~ THEN REPLY #55889 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 46
  IF ~~ THEN REPLY #55891 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 73.0 74.0 75.0 76.0 77.0 78.0 81.1 82.1 83.0
  SAY #55893 /* ~"Feh! Samozřejmě! Je tady ještě něco, co požaduješ od svého *pokorného* služebníka?!"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55896 /* ~Prozkoumej krutě vypadající sekeru: "Co je tohle?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55899 /* ~Prozkoumej zamotaný špagát: "Co je tohle?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55903 /* ~Prozkoumej zelenou kapku: "Co je tohle?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55904 /* ~Prozkoumej nůž z nazelenalé ocele: "Co je tohle?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55908 /* ~Prozkoumej zeleně zbarvenou dýku: "Co je tohle?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55911 /* ~Prozkoumej kroutící se brouky: "Co je tohle?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55916 /* ~"Nemáš náhodou nějaká kouzla?"~ */ GOTO 80
  IF ~~ THEN REPLY #55919 /* ~"Zapomeň na to. Místo toho mi odpověz na pár otázek."~ */ GOTO 43
  IF ~~ THEN REPLY #55920 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 72.6 73.6 74.6 75.6 76.6 77.6 78.6 79.6 81.0 82.0
  SAY #55922 /* ~"Pche! Obereš mě o veškerý majetek! Chceš kouzla? Feh! Tohle mám, ty upíre!" Zadrmolil seznam kouzel.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55929 /* ~"Co takhle hezké kouzlíčko Odstranění prokletí?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55932 /* ~"Co takhle hezké kouzlíčko Odstranění prokletí?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55933 /* ~"Koule nezranitelnosti zní užitečně. Sem s ní."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55934 /* ~"Nemáš ještě Kouli nezranitelnosti?"~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55939 /* ~"Co takhle Bouře řetězových blesků?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55943 /* ~"Další Bouře řetězových blesků bude fajn..."~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55945 /* ~"Kyselinová bouře zní nebezpečně. Dej mi to."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55946 /* ~"Kyselinová bouře. Dej mi to."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55947 /* ~"Ostrá bouře? Hezký jméno. Chci to."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55948 /* ~"Dej mi další Ostrou bouři."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55949 /* ~"Styxská ledová bouře. To je kapku moc nebezpečné kouzlo... raději si ho od tebe vezmu."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55950 /* ~"Styxská ledová bouře. To se mi líbí."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55951 /* ~"Neřekl jsi vůbec nic."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 83
  IF ~~ THEN REPLY #55952 /* ~"Zapomeň na to. Mám nějaké otázky."~ */ GOTO 47
  IF ~~ THEN REPLY #55953 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.2 80.4 80.6 80.8 80.10
  SAY #55954 /* ~Jeho ruka zmizela, jak sáhl do podivného prostoru/neprostoru. Vytáhl svitek, který je na dotek jako lidská kůže a hodil ti ho. "Feh! Vezmi si ho a buď prokl... vezmi si to!"~ */
  IF ~~ THEN REPLY #55955 /* ~"Díky... Jaký další kouzla ještě máš?"~ */ GOTO 80
  IF ~~ THEN REPLY #55956 /* ~"Podívejme se ještě jednou na ty věci."~ */ GOTO 79
  IF ~~ THEN REPLY #55957 /* ~"Zapomeň na to. Mám nějaké otázky."~ */ GOTO 47
  IF ~~ THEN REPLY #55958 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1 80.3 80.5 80.7 80.9 80.11
  SAY #55959 /* ~Zubatě se zašklebil. "Mám neuvěřitelnou radost, protože ti musím oznámit, že zásoby tohoto kouzla jsi mi už vybrakoval! Feh!"~ */
  IF ~~ THEN REPLY #55960 /* ~"Jaké další kouzla máš?"~ */ GOTO 80
  IF ~~ THEN REPLY #55961 /* ~"Podívejme se ještě jednou na ty věci."~ */ GOTO 79
  IF ~~ THEN REPLY #55962 /* ~"Zapomeň na to. Mám nějaké otázky."~ */ GOTO 46
  IF ~~ THEN REPLY #55963 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.12
  SAY #55964 /* ~Jedovatý Jazyk na tebe vyprskl. "Zruinoval jsi, zničil, zlikvidoval jednu z nejunikátnějších kouzelných knihoven ve vesmíru... ať už ti to bude k čemu chceš. Už pro tebe nemám další kouzla."~ */
  IF ~~ THEN REPLY #55965 /* ~"Podívejme se ještě jednou na ty věci."~ */ GOTO 79
  IF ~~ THEN REPLY #55966 /* ~"Tak na to zapomeň. Místo toho mi odpověz na pár otázek.."~ */ GOTO 43
  IF ~~ THEN REPLY #55967 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 49.1
  SAY #55969 /* ~"Feh! Mlátil jsi snad hlavou do každého kamene, který spadl z hory ignorance? V Nižších Sférách zuří Válka Krve. Není sféra, které by se ten konflikt nedotýkal. Představ si nejhorší možnou válku, jakou dokáže tvá mysl zvládnout, vynásob to milionkrát a máš zlomek bitevního pole, na kterém se bojuje. Je to válka ideologie, která má definovat jeden z nejzákladnějších principů mnohovosmíru!"~ */
  IF ~~ THEN REPLY #55970 /* ~"Pokračuj."~ */ GOTO 91
  IF ~~ THEN REPLY #55972 /* ~"Zapomeň na to. Mám víc otázek."~ */ GOTO 43
  IF ~~ THEN REPLY #55973 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 50.0
  SAY #55976 /* ~"Tohle je kostra Ul-Gorise, otce všech goristro. Jsou to žijící medvědí dobývací věže, juggernauti chaosu, obrovští, prakticky nezastavitelní, odolní vůči magii... a Ul-Gorisovy kosti, v kráteru, kde zemřel, vyzařují tolik energie, že mě ubrání před odhalením, umožňují tomuhle ubohému tělíčku prožít si ještě pár zoufalých let. Feh!"~ */
  IF ~~ THEN REPLY #55978 /* ~"Jasný. Mám ještě pár otázek..."~ */ GOTO 47
  IF ~~ THEN REPLY #55981 /* ~"Jasný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 50.1
  SAY #55982 /* ~"Procházel jsi ulicemi Dis a cítil sladký pach hořícího masa, nadechoval ses zhluboka jedovatých výparů ledu Styx, vedl jsi armády nočními paláci... Ne. Nic z toho. Jinak bys mi tuhle otázku nedával, skoro-muži. ~ */
  IF ~~ THEN REPLY #55983 /* ~"Tak co se ti stalo?"~ */ GOTO 87
  IF ~~ THEN REPLY #55985 /* ~"Mám ještě pár otázek..."~ */ GOTO 46
  IF ~~ THEN REPLY #55986 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 52.0 86.0
  SAY #55987 /* ~"Ten prokletý deva se mi stal! Tak bezpečný, tak jistý jsem byl... Feh! Přišel jsem o skoro všechnu svou moc. Není se čemu divit, že mě honí hodry Baatorských maršálů."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55989 /* ~"Řekni mi o Triasovi."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55990 /* ~"Řekni mi o Triasovi."~ */ GOTO 55
  IF ~~ THEN REPLY #55992 /* ~"Mám ještě pár otázek..."~ */ GOTO 47
  IF ~~ THEN REPLY #55993 /* ~"Jasný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #55995 /* ~"Feh! Kdybych ti neřekl povahu toho prokletého kontraktu! NEMŮŽU ti nedat tuto informaci. Pilíř... je tvá jediná naděje."~ */
  IF ~~ THEN REPLY #55997 /* ~"Morte, proč tam nechceš jít?"~ */ EXTERN ~DMORTE~ 596
  IF ~~ THEN REPLY #55998 /* ~"Dobrá. Odpověz mi na pár otázek."~ */ GOTO 43
  IF ~~ THEN REPLY #55999 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 54.0
  SAY #56001 /* ~"Feh... co to je? Je to masivní hromada hlav, duchů těch mrtvých, kteří zaživa řekli lži, čímž zavedli jiné na smrt. Je to sbírka mudrců a podvodníků, všichni promíchaní dohromady mají nejrozsáhlejší znalosti v mnohovesmíru."~ */
  IF ~~ THEN REPLY #56003 /* ~"Díky. Mám nějaké jiné otázky..."~ */ GOTO 47
  IF ~~ THEN REPLY #56004 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 56.2
  SAY #56006 /* ~"Feh! Zruším tvou ignoranci v této věci. Věz, že není ŽÁDNÉ místo pro baatezu, spoutaného řetězy charity, kde bych CHTĚL být. Tady jsem alespoň trochu skryt před krutostí kontraktu. Deva má duši ďábla, to ti řeknu."~ */
  IF ~~ THEN REPLY #56007 /* ~"Tak mi tedy odpověz na pár otázek..."~ */ GOTO 46
  IF ~~ THEN REPLY #56008 /* ~"Jasný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 84.0
  SAY #56009 /* ~"Žene to výzkum vpřed... kvůli Válce Krve vznikají čím dál hrozivější výtvory. Proč? Protože je to bolest, smrt a zlo. Tanar'ri bojují pro chaos a zlo... zlo skrze brutální sílu a náhle záchvaty zuřivosti. Jejich 'zlo' je zlo hordy, davová mentalita vířícího zla. Zabíjejí a plundrují."~ */
  IF ~~ THEN REPLY #56010 /* ~"A ostatní strany?"~ */ GOTO 92
  IF ~~ THEN REPLY #56011 /* ~"Zapomeň na to. Mám jiné otázky..."~ */ GOTO 47
  IF ~~ THEN REPLY #56012 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #56013 /* ~"Baatezu si přejí přísně organizované zlo, páchání zla precizním, řádným způsobem. Tanar'ri vraždí. Baatezu využívají. Obě rasy jsou rozhodnuty exterminovat druhou."~ */
  IF ~~ THEN REPLY #56014 /* ~"Pokračuj."~ */ GOTO 93
  IF ~~ THEN REPLY #56015 /* ~"Zapomeň na to. Odpověz mi místo toho na pár otázek."~ */ GOTO 43
  IF ~~ THEN REPLY #56016 /* ~"To je vše, co jsem chtěl slyšet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #56017 /* ~"Částí mého úkolu... a byl jsem nejlepší!... bylo získávání nových rekrutů, většinou sférických válečníků a mágů z jiných světů jako terče do předních linií války. Prý jsem dokonce zaujal samotného Lorda Bela. Prý viděl mou cenu! Feh! Teď je mé pokoření úplné!"~ */
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #56018 /* ~"Poznáváš mě?"~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #56019 /* ~"Poznáváš mě?"~ */ GOTO 94
  IF ~~ THEN REPLY #56020 /* ~"Dobrá. Tak mi odpověz mi na pár otázek."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56021 /* ~"To bych řekl. Sbohem."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56022 /* ~"To bych řekl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 70.2 93.1
  SAY #56023 /* ~"Copak už jsme si tím neprošli? Feh! Hloupí lidé!"~ */
  IF ~~ THEN REPLY #56024 /* ~"Tak mi odpověz mi na pár otázek."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56025 /* ~"Díky. Sbohem."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56026 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
NearbyDialog("Dmorte")
~ THEN BEGIN 95 // from:
  SAY #61568 /* ~Vidíš zbědovaného fienda s jedním otrhaným křídlem, pokrytým jizvami. Jeho zatvrzelý, vzteklý a zoufalý hlas, výchazí zpoza skřípajících zubů. "Tanar'ri v mým domě! Jaká to hanba! A proč sis sebou rovnou nepřivedla všechny svý smradlavý družky?!"~ [FFT003] */
  IF ~~ THEN GOTO 26
END

IF WEIGHT #5 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
!NearbyDialog("Dmorte")
~ THEN BEGIN 96 // from:
  SAY #61569 /* ~Vidíš zbědovaného fienda s jedním otrhaným křídlem, pokrytým jizvami. Jeho zatvrzelý, vzteklý a zoufalý hlas, výchazí zpoza skřípajících zubů. "Tanar'ri v mým domě! Jaká to hanba! A proč sis sebou rovnou nepřivedla všechny svý smradlavý družky?!"~ [FFT003] */
  IF ~~ THEN GOTO 28
END

IF WEIGHT #8 /* Triggers after states #: 98 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 97 // from:
  SAY #61570 /* ~"Zdá se, že se budu muset pohřbít, abych se vyhnul společnosti."~ [FFT002] */
  IF ~~ THEN GOTO 32
END

IF WEIGHT #6 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
~ THEN BEGIN 98 // from:
  SAY #61571 /* ~"Skvělý. Dokonce další smraďoši!"~ [FFT037] */
  IF ~~ THEN GOTO 30
END

IF WEIGHT #1 /* Triggers after states #: 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",0)
~ THEN BEGIN 99 // from:
  SAY #61572 /* ~"Feh! Zpropadeně! Po všech mých varováních a slibech, klidně přivedeš Baatorskou chásku až k mým dveřím! Parchante! Zrádče! Já... hmmm... tak takovýhle je to pocit..."~ [FFT068] */
  IF ~~ THEN GOTO 1
END

IF WEIGHT #0 ~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",1)
~ THEN BEGIN 100 // from:
  SAY #61573 /* ~"Co tu chcete?" Fiend se otočil a plivl na podlahu.~ [FFT082] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 101 // from: 7.6 30.10 31.10 32.10 43.10 46.10 47.10
  SAY #68475 /* ~"CO? Musím tvou přítomnost trpět ještě déle? Copak ta muka nikdy neskončí? Feh! Fajn, tak fajn! Lehni si na podlahu! Vyžer mi spíž! Rozhrabej mi mé experimenty! Já budu hned tady vedle, kdybys snad zase něco potřeboval! Feh!"~ */
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #5595 /* ~"Dík."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #11798 /* ~"Díky..."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #11798 /* ~"Díky..."~ */ EXIT
END
