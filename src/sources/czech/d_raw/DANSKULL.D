// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31732 /* ~Lebka procedila skrze zuby: "Tím myslíš, že jsi kouzelník, vrah a travič."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 8
END

IF ~  Global("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 1 // from:
  SAY #31733 /* ~Hlas lebky je hluboký a skřípající, zvuk křemene a oceli. "Já... mám pocit, že už jsem tě viděl dříve, cizinče."~ */
  IF ~~ THEN REPLY #31734 /* ~"Kde jsi mě viděl?"~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31743 /* ~"Je to docela možné, ale já na tohle nemám čas."~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  GlobalGT("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31744 /* ~"Zase ty? Co chceš ještě vědět?"~ */
  IF ~~ THEN REPLY #31745 /* ~"Řekl jsi, že už jsi mě viděl. Kde?"~ */ GOTO 3
  IF ~~ THEN REPLY #31746 /* ~"Řekni mi o sobě."~ */ GOTO 4
  IF ~~ THEN REPLY #31747 /* ~"Jak ses sem dostal?"~ */ GOTO 5
  IF ~~ THEN REPLY #31748 /* ~"Pověz mi o Lotharovi."~ */ GOTO 6
  IF ~~ THEN REPLY #31749 /* ~"Pověz mi o ostatních lebkách."~ */ GOTO 7
  IF ~~ THEN REPLY #31750 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 10.0 11.0
  SAY #31751 /* ~"Curst. Průchodové město do Carceri."~ */
  IF ~~ THEN REPLY #31752 /* ~"Curst? Průchodové město? Carceri?"~ */ GOTO 8
  IF ~~ THEN REPLY #31753 /* ~"Co jsem tam dělal?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.0 6.2 7.0
  SAY #31754 /* ~"Já? Já jsem Pochmurný Skalp. Býval jsem anarchista, jeden z Revoluční Ligy. Měli jsme tajemství a buňky, chtěli jsme převrátit sféry tak, aby mohli být všichni volní. Měli jsme tajemství na některé factoly a byli jsme připravení k úderu. Ale pak nás zradila jiná frakce. Já jsem skončil mrtvý a Lothar si mě vzal, kvůli mým tajemstvím. Ještěže už většina z nich zastarala - proti Lotharovu šarmu není obrana.."~ */
  IF ~~ THEN REPLY #31755 /* ~"Co mi můžeš říct o Anarchistech?"~ */ GOTO 12
  IF ~~ THEN REPLY #31756 /* ~"Pověz mi o Lotharovi."~ */ GOTO 6
  IF ~~ THEN REPLY #31757 /* ~"Pověz mi o ostatních lebkách."~ */ GOTO 7
  IF ~~ THEN REPLY #31758 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 6.3 7.1
  SAY #31759 /* ~"Zrada. Měl jsem to čekat, když se zamyslím nad tím, kdo jsem. Nebo spíše kdo jsem byl."~ */
  IF ~~ THEN REPLY #31760 /* ~"Kdo jsi byl?"~ */ GOTO 4
  IF ~~ THEN REPLY #31761 /* ~"Asi ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 4.1 7.2
  SAY #31762 /* ~"Vykecal jsem mnoho tajemství, ale tohle si nechám pro sebe. Z Lotharových rukou jsem viděl takové hrůzy, že by se styděli i mučitelé Harmonia. Zná má tajemství mnohem lépe než já jeho a dopadl bych špatně, kdybych je někomu vyzradil. Dokonce tobě. Hlavně tobě."~ */
  IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31763 /* ~"Proč? Co o mně víš?"~ */ GOTO 10
  IF ~  GlobalGT("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31764 /* ~"Proč? Co o mně víš?"~ */ GOTO 11
  IF ~~ THEN REPLY #31765 /* ~"Tak mi řekni o sobě."~ */ GOTO 4
  IF ~~ THEN REPLY #31766 /* ~"Jak ses sem tedy dostal?"~ */ GOTO 5
  IF ~~ THEN REPLY #31767 /* ~"Co mi můžeš říct o ostatních lebkách?"~ */ GOTO 7
  IF ~~ THEN REPLY #31768 /* ~"To je fér. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 4.2 6.4
  SAY #31769 /* ~"Tyhle? To jsou jenom nástroje, i když o tom neví. Jejich sny jsou malé a osobní. Nevidí ve svých plánech větší obraz. Nevidí přes svůj stín. Jsou bezcenné. Nemluvím s nimi."~ */
  IF ~~ THEN REPLY #31770 /* ~"Aha. Tak mi řekni o sobě."~ */ GOTO 4
  IF ~~ THEN REPLY #31771 /* ~"Tak jak ses sem tedy dostal?"~ */ GOTO 5
  IF ~~ THEN REPLY #31772 /* ~"A co Lothar?"~ */ GOTO 6
  IF ~~ THEN REPLY #31773 /* ~"To je vše, co potřebuju vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 9.0
  SAY #31774 /* ~"Jsi idiot nebo co? Je to průchodové město na okraji Vnějších sfér, brána do vězeňské sféry Carceri. Je to místo plné zrádců a podvraťáků a kuje se tam tolik piklů, kolik má obyvatel. Jo, být hned vedle Carceri, to trochu zamíchá lidem s jejich povahou. Nedivil bych se, kdyby město sklouzlo."~ */
  IF ~~ THEN REPLY #31775 /* ~"Sklouzlo? Co tím myslíš?"~ */ GOTO 16
  IF ~~ THEN REPLY #31776 /* ~"Co jsem tam dělal?"~ */ GOTO 9
  IF ~~ THEN REPLY #31777 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1 8.1
  SAY #31778 /* ~"Co jsi tam dělal? Blábolil jsi něco o magorovi, který tě chce zabít, a chodil jsi po špatných místech. No, bylo jasný, že jsi blázen, tak jsme tě s partou přepadli. Zapíchli jsme tě a obrali tě o věci. Hned po tom mě zradili, ale stačil jsem něco z toho schovat."~ */
  IF ~~ THEN REPLY #31779 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 8
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #31780 /* ~"Kde je to?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN REPLY #31781 /* ~"Kde je to?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31782 /* ~"Kde je to?"~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #31783 /* ~"Oh. Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #31784 /* ~"Vím, že jsi pro Lothara nějak důležitý a že je kolem tebe něco, co chce pochopit. Jsi jako nějaká hádanka. Zajímá se o tebe, chlapče, a chce odpovědi na své otázky. Bude si na tebe dávat pozor. A já vím, že jsi pořádný cestovatel - už tě viděli dřív."~ */
  IF ~~ THEN REPLY #31734 /* ~"Kde jsi mě viděl?"~ */ GOTO 3
  IF ~~ THEN REPLY #31794 /* ~"Zapamatuju si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #31795 /* ~"Už jsem většinu řekl támhle tvému příteli. Vím, že jsi pro Lothara nějak důležitý, a že je kolem tebe něco, co chce pochopit. Jsi jako nějaká hádanka. Zajímá se o tebe, chlapče, a chce odpovědi na své otázky. Bude si na tebe dávat pozor. A já vím, že jsi pořádný cestovatel - už tě viděli dřív."~ */
  IF ~~ THEN REPLY #31734 /* ~"Kde jsi mě viděl?"~ */ GOTO 3
  IF ~~ THEN REPLY #31797 /* ~"Zapamatuju si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 16.0
  SAY #31798 /* ~"Jsme tajná společnost vytvořená buňkami našich členů, které pracují samostatně podle direktiv, zaslaných sítí informátorů a vůdců, co zůstávají v pozadí. Našim cílem je strhnout vládnoucí strukturu, uvolnit lidi od lží politiků a mocností, nechat je všechny žít jejich vlastní život podle jejich výběru. Pracujeme tajně - pracovali jsme tajně -a neustále jsme měnili své postupy, abychom zabránili infiltraci. Můj čas vypršel před dekádami, takže všechna tajemství, která jsem znal, už dávno neplatí, kromě tváří a dokonce i ty se už musely změnit."~ */
  IF ~~ THEN REPLY #31799 /* ~"Připadáte mi jako pěkně paranoidní banda."~ */ GOTO 13
  IF ~~ THEN REPLY #31800 /* ~"To je vše, co potřebuju vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31801 /* ~"Pokud společnost, do které patříš prospívá z intrik, infiltrací a nenávisti vládnoucí skupiny, taky by sis dával pozor. Není to paranoia, když po tobě opravdu jdou. Podle naší víry, ten, kdo je zapletený jenom jako trojitý agent je amatér." Lebka si tě chvíli prohlíží. "Myslím, že už se s tebou dál nebudu bavit. Sbohem."~ */
  IF ~~ THEN REPLY #31802 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1 9.2
  SAY #31803 /* ~"To ti nepovím. Možná jednou získám svý tělo zpět a zajdu si pro to sám a možná ne. Ale teď mě strašně baví sledovat tě, jak se trápíš. Přeju ti hodně štěstí v hledání." Lebka ztichla a žádné přesvědčování ji nedokáží přivést zpět k řeči.~ */
  IF ~~ THEN REPLY #31804 /* ~"Bastard."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #31805 /* ~Máš pocit, že tě lebka pozorně odhaduje. "Ty jsi jeden z bratrů, že jo. Mám na to nos - teda alespoň míval jsem - a myslím si, že jsi jedním z nás. Tak dobře. Je to ve skladišti. Promluv si s majitelem toho místa a řekni mu, že tě posílám. Neříkej mu, že jsem mrtvý a on by ti to měl bez problémů dát."~ */
  IF ~~ THEN REPLY #31806 /* ~"To si zapamatuju. Díky, i když nejsem zrovna šťastný z toho, že jsi mě zabil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #31807 /* ~"Když se víra města stane příliš podobnou té sféře, se kterou se stýká, síla víry je dostatečná, aby sousedící sféra pohltila celé město. Stává se to co chvíli - alespoň když jsou v tom zapleteni Anarchisti." Promluvil s náznakem ponuré pýchy.~ */
  IF ~~ THEN REPLY #31808 /* ~"Pověz mi o Anarchistech."~ */ GOTO 12
  IF ~~ THEN REPLY #31809 /* ~"Díky. Sbohem."~ */ EXIT
END
