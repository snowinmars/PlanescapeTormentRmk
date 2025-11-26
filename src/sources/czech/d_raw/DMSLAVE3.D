// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37845 /* ~Vidíš štíhlého mladíka s krysími rysy. Zdá se, že si každého kolem sebe pečlivě odhaduje. Zaznamenal tě a bez zájmu si tě prohlíží.~ */
  IF ~~ THEN REPLY #37869 /* ~"Dobrý den."~ */ GOTO 1
  IF ~~ THEN REPLY #37870 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37846 /* ~Pořád se na tebe dívá a měří si pohledem tvé tělo. Pak se setká s tvým pohledem. "Jo, zdravím."~ */
  IF ~~ THEN REPLY #37871 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37872 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 6.1 7.0 8.1 9.0 10.0 11.0 12.0 15.0 16.2 17.2 18.0
  SAY #37847 /* ~Chladně se usměje. "Ano?"~ */
  IF ~~ THEN REPLY #37873 /* ~"Co je to za místo?"~ */ GOTO 3
  IF ~~ THEN REPLY #37874 /* ~"Co mi můžeš říct o této čtvrti?"~ */ GOTO 9
  IF ~~ THEN REPLY #37875 /* ~"Co mi řekneš o ostatních čtvrtích?"~ */ GOTO 10
  IF ~~ THEN REPLY #37876 /* ~"Co bys mi řekl o městě Sigil?"~ */ GOTO 11
  IF ~~ THEN REPLY #37877 /* ~"Je tu v okolí něco zajímavého?"~ */ GOTO 12
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37878 /* ~"Hledám někoho jménem Lothar, nebo Pán kostí..."~ */ GOTO 13
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37879 /* ~"Ztratila se mi lebka... znáš někoho, kdo má o takové věci zájem?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #37880 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37848 /* ~Chvíli na tebe tupě zírá. "Tohle je aukce. Prodávají se tu otroci."~ */
  IF ~~ THEN REPLY #37881 /* ~"Proč tě prodávají?"~ */ GOTO 4
  IF ~~ THEN REPLY #37882 /* ~"Nevěděl jsem, že v Sigilu existuje otroctví."~ */ GOTO 5
  IF ~~ THEN REPLY #37883 /* ~"Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37884 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37852 /* ~S nehybnou tváří tě stále sleduje. "Dlužím nějaké peníze a nemám čím zaplatit. Budu prodán abych splatil dluh."~ */
  IF ~~ THEN REPLY #37885 /* ~"Nevěděl jsem, že v Sigilu existuje otroctví."~ */ GOTO 5
  IF ~~ THEN REPLY #37886 /* ~"Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37887 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37853 /* ~S odpovědí chvíli otálí. "Otroctví je všude kolem, jen si to většina lidí neuvědomuje. Jsme otroky svým citům, potřebě jíst a dýchat, potřebě a dokonce zákonům jimiž si vládneme..." Pokrčil rameny. "Jsme otroci."~ */
  IF ~~ THEN REPLY #37888 /* ~"Vidím kam míříš."~ */ GOTO 6
  IF ~~ THEN REPLY #37889 /* ~"Nesouhlasím s tebou."~ */ GOTO 8
  IF ~~ THEN REPLY #37890 /* ~"Aha. Mám nějaké otázky..."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37855 /* ~Přikývl. "Díky rozeznání vlastního otroctví v nevlídném mnohovesmíru můžeš sám udělat něco pro svou svobodu." ~ */
  IF ~~ THEN REPLY #37891 /* ~"Jak?"~ */ GOTO 7
  IF ~~ THEN REPLY #37892 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37893 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37856 /* ~Zavrtěl hlavou. "Jedině ty můžeš na tuto otázku odpovědět. Musíš hledat sám v sobě..." Ztichl a bezvýrazně se na tebe dívá.~ */
  IF ~~ THEN REPLY #37894 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37895 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #37857 /* ~Pokrčil rameny. "Potom jsi otrokem své ignorance. Jakmile si to uvědomíš, budeš se moci osvobodit."~ */
  IF ~~ THEN REPLY #37896 /* ~"Jak?"~ */ GOTO 7
  IF ~~ THEN REPLY #37897 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37898 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1
  SAY #37858 /* ~Bez ustání se na tebe dívá. "Toto je Dolní čtvrť. Je to domov šťastných, těch, kteří nebydlí v brlozích Úlu. Je to domov nešťastných, těch, kteří si nemohou dovolit vznešenost Čtvrti Paní bolesti. Je to domov doufajících, těch, kteří věří v lepší budoucnost. Je to domov zoufalých, těch, kdož nedohlédnou ani hranic vlastní beznaděje..." Pokrčil rameny.~ */
  IF ~~ THEN REPLY #37899 /* ~"Hm... aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37900 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37859 /* ~Pokrčil rameny. "Čtvrti jsou jako divadelní hra i se svými herci. Pozadí se mění scénu od scény, ale lidé na jevišti zůstávají. Kdybys prošel Sigil křížem krážem, poznal bys, že je to pravda." Bezvýrazně se na tebe dívá.~ */
  IF ~~ THEN REPLY #37901 /* ~"Ano... Tedy... Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37902 /* ~"Myslím, že už bych měl jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3
  SAY #37860 /* ~Pomalu se kolem rozhlíží odhadujícím pohledem. "Sigil je právě tím, čím se zdá být. Pro někoho je středem všeho a pro ostatní okrajem ničeho. Pro někoho je počátkem všech cest, pro někoho koncem." Chladně se otočil na tebe. "Čím je pro tebe?" ~ */
  IF ~~ THEN REPLY #37903 /* ~"Nejsem si jistý... Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37904 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #37862 /* ~Rozpřáhl ruce, jakoby chtěl obejmout celý svět, a dívá se na tebe prázdnýma očima. "Všechno má cenu, všechno je bezcenné. Všechno stojí za vidění." Svěsil ruce. "Díváme se na svět každý svýma očima a každý si ceníme něčeho jiného. To, co je cenné pro mě, nemusí mít cenu pro tebe. Vše tedy stojí za vidění, abychom si mohli postavit vesmír, v němž MY chceme žít. ~ */
  IF ~~ THEN REPLY #37905 /* ~"Hmm... Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37906 /* ~"Opravdu už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.5
  SAY #37863 /* ~Naklonil hlavu na stranu a před odpovědí zaváhal. "Pán kostí nemá rád návštěvy. Pokud by si chtěl užít tvé přítomnosti, poslal by pro tebe."~ */
  IF ~~ THEN REPLY #37907 /* ~"Co mi o něm můžeš říct?"~ */ GOTO 14
  IF ~~ THEN REPLY #37908 /* ~"Víš, kde jej najdu?"~ */ GOTO 15
  IF ~~ THEN REPLY #37909 /* ~"Poslal pro mě, něco mi ukradl."~ */ GOTO 16
  IF ~~ THEN REPLY #37910 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0
  SAY #37864 /* ~"Je veleknězem smrti, a tak je sám nesmrtelný. Vládne silami života a smrti a užívá je docela přesvědčivě." Na chvíli se zamyslí. "Je největší silou v Sigilu a není radno si s ním zahrávat."~ */
  IF ~~ THEN REPLY #37911 /* ~"Víš, kde jej najdu?"~ */ GOTO 15
  IF ~~ THEN REPLY #37912 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0 16.0 17.1
  SAY #37865 /* ~Odvrátil se od tebe a zahleděl se do dálky. "Přebývá ve svém domově, náš kostěj. Je to blízko, ale nevím kde." Hledí na tebe mrtvýma očima. "Pokračuj v hledání. Buď najdeš ty jeho, nebo on tebe. Dvě cesty ke stejnému cíli." ~ */
  IF ~~ THEN REPLY #37913 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37914 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY #37866 /* ~Zavrtěl hlavou. Jednou máš, jindy ne. Buď rád za to, co ještě máš."~ */
  IF ~~ THEN REPLY #37915 /* ~"Víš, kde jej můžu najít?"~ */ GOTO 15
  IF ~~ THEN REPLY #37916 /* ~"Co mi o něm můžeš říct?"~ */ GOTO 14
  IF ~~ THEN REPLY #37917 /* ~"Měl bych pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37918 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #37867 /* ~Pomalu kývl hlavou. "Ano. Myslím, že to je práce Lothara, Pána kostí."~ */
  IF ~~ THEN REPLY #37919 /* ~"Co mi o něm můžeš říct?"~ */ GOTO 14
  IF ~~ THEN REPLY #37920 /* ~"Kde bych ho našel?"~ */ GOTO 15
  IF ~~ THEN REPLY #37921 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37922 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37868 /* ~Vidíš štíhlého mladíka s krysími rysy. Všiml si tě a bezvýrazně se na tebe dívá. "Opět se setkáváme."~ */
  IF ~~ THEN REPLY #37923 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37924 /* ~"Tak nic. Sbohem."~ */ EXIT
END
