// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOSTONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOSTONE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #64887 /* ~Tenhle tmavý kámen je celý pokrytý prachem, jakoby tu ležel celé roky - vypadá jako úlomek z jedné ze soch. Celý kámen pokrývá množstvo zvláštních run a značek, zdají se ti nějak známé.~ */
  IF ~~ THEN REPLY #64888 /* ~Prozkoumej kámen...~ */ GOTO 1
  IF ~~ THEN REPLY #64889 /* ~Nech ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64890 /* ~Když ses kamene dotkl, ústa zobrazená na jedné straně začala mluvit tvým hlasem; slyšel jsi jejich ozvěnu, jakoby jsi mluvil s někým ve velké sněmovně.~ */
  IF ~~ THEN REPLY #64914 /* ~Poslouchej...~ */ GOTO 2
  IF ~~ THEN REPLY #64915 /* ~Opusť kámen, ať si kecá co chce.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64891 /* ~"Dak'kon, Morte, Xachariáš, Deionarra - a tohle jsem já. Trochu jsem tenhle kámen okouzlil, aby ti odevzdal zprávu; pozorně ho poslouchej a pak udělej co říkám."~ */
  IF ~~ THEN REPLY #64912 /* ~Pokračuj v poslechu.~ */ GOTO 3
  IF ~~ THEN REPLY #64913 /* ~Neposlouchej užvaněný kámen.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64892 /* ~Hlas si oddechl; znělo to podrážděně: "Nevím, jak jsme se rozdělili, ale myslím si, že portál, který nás sem přenesl, nás rozděluje. Je to jen malá překážka -- když jsi našel tenhle kámen, zůstaň s ním, než se k tobě znovu přidám. Jak jsem tušil, tahle pevnost se dělí na několik měst -- moc se tam neprocházej, lehčeji tě najdu."~ */
  IF ~~ THEN REPLY #64910 /* ~Pokračuj v poslechu.~ */ GOTO 4
  IF ~~ THEN REPLY #64911 /* ~Neposlouchej užvaněný kámen.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64893 /* ~Slyšel jsi znovu nadechnutí, znělo nezaujatě, jako kdyby někdo něco zkoumal a přitom o tom mluvil: "Našel jsem cestu přes první sklepení; tohle místo je *plné* stínů, je jich tu příliš mnoho, aby se s nimi dalo bojovat - když na nějaké narazíš, zdrhej, než tě obklíčí; zdají se mi tvrdší než ty, se kterými jsme se dříve setkali; Myslím, že je nějak živí energie ze sfér a dělá je silnějšími."~ */
  IF ~~ THEN REPLY #64908 /* ~Pokračuj v poslechu.~ */ GOTO 5
  IF ~~ THEN REPLY #64909 /* ~Neposlouchej užvaněný kámen.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64894 /* ~Znovu jsi slyšel nadechnutí: "Ve sklepení, které mě přeneslo z místa na místo, bylo několik pozůstatků z velké války. Podařilo se mi nalákat stíny ke každému stroji, pak se přesunout, zatímco se oni seskupovali tam, kde jsem byl předtím. Získal jsem dostatek času na útěk. Taky jsem zakopl o čtyři pozůstatky, otevřely mi portál, kterým jsem se dostal ven." Hlas utichl, jako by se tomu, co to říkal, něco stalo. ~ */
  IF ~~ THEN REPLY #64906 /* ~Pokračuj v poslechu.~ */ DO ~SetGlobal("Freed_Fortress_Shadows","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #64907 /* ~Neposlouchej užvaněný kámen.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64895 /* ~"Ukazuje se, že to sklepení, ze kterého jsem přišel, je nějaký druh strážnice -- pozůstatky ukazují, že byla zabarikádovaná z obou stran zevnitř *a* zvenku Pevnosti. Cokoliv tohle místo postavilo, chtělo udržet stíny pod zámkem, aby nemohli volně odejít; stíny nejsou z nějakého materiálu, tak nemohly použít stroje pro útěk. Hmmm. Musím o tom ještě popřemýšlet..."~ */
  IF ~~ THEN REPLY #64904 /* ~Pokračuj v poslechu.~ */ GOTO 7
  IF ~~ THEN REPLY #64905 /* ~Neposlouchej užvaněný kámen.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64896 /* ~"Nevadí - jsem v místnosti s velkým krystalem a před tím, než půjdu dál, to tu chci trochu lépe prozkoumat." Hlas se odmlčel, jako kdyby se rozhlížel kolem. "Je tu pět soch a vypadají jako já - a taky vypadají *staře,* jako kdyby tu byly pěkně dlouho."~ */
  IF ~~ THEN REPLY #64902 /* ~Pokračuj v poslechu.~ */ GOTO 8
  IF ~~ THEN REPLY #64903 /* ~Neposlouchej užvaněný kámen.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64897 /* ~"Ještě ten krystal... nevypadá, že by patřil do Pevnosti a jeho velikost a tvar mi připomínají něco, co jsem četl ve starých knihách, je to nějaký druh dimenzionálního vězení, které rozděluje duši. Nemyslím si, že mne sem portál z hlavní haly teleportoval náhodou, Myslím si, že krystal je past, takže se ho *nedotýkej*, dokud opět nebudeme spolu pohromadě  - to jsem Ti chtěl *říct*, Morte."~ */
  IF ~~ THEN REPLY #64900 /* ~Pokračuj v poslechu.~ */ GOTO 9
  IF ~~ THEN REPLY #64901 /* ~Neposlouchej užvaněný kámen.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64898 /* ~"Pokusím se Vás teď všechny najít. Když najdete tento mluvící kámen, *nechoďte* od něho pryč nebo Vás nebudu schopen nikdy najít. Zanechal jsem u podstavce jedné ze soch nějaké věci. Moc s nimi neplýtvej - nevím, jak dlouho nám to potrvá najít své nepřátele a dostat se pryč, tyto věci se nám mohou později hodit. Brzy Vás uvidím."~ */
  IF ~~ THEN REPLY #64899 /* ~Neposlouchej užvaněný kámen.~ */ EXIT
END
