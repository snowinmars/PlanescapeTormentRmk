// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1041.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1041~

IF ~  Global("Bei","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6573 /* ~Tato oživená mužská mrtvola má na čele vyřezáno číslo "1041". Navzdory vyschlému tělu je zřejmé, že její rysy byly za života poněkud 'exotické'. Je celkem v dobrém stavu. Rty zombie byly sešity - nejspíš proto, aby se předešlo jejímu neustálému nářku - a silně páchne formaldehydem.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6576 /* ~"Tak... je tam dál vidět něco zajímavého?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6577 /* ~"Tak... je tam dál vidět něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6578 /* ~"Vím, že nejsi zombie, jasný? Mě neoklameš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Bei","GLOBAL",0)
~ THEN REPLY #6579 /* ~Použij svou schopnost Kosti-vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Bei","GLOBAL",1)
~ THEN REPLY #6580 /* ~Použij svou schopnost Kosti-vyprávějte na mrtvolu.~ */ GOTO 37
  IF ~~ THEN REPLY #6581 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #9095 /* ~Zanechej mrtvolu mrtvolou.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6574 /* ~Mrtvola na tebe stále zírá.~ */
  IF ~~ THEN REPLY #6582 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6575 /* ~Mrtvola na moment zavrávorala, jak se duše vrátila do svého někdejšího příbytku. Její mandlové oči ztmavly a nad bledým tělem se objevil slabý bronzový přísvit. Narovnala se a oprášila si šaty. 

Duch si konečně všiml toho, kdo jej vyvolal, chvíli se na tebe zvědavě zadíval a pak se lehce uklonil.~ */
  IF ~~ THEN REPLY #6583 /* ~Také se ukloň.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #9096 /* ~"Měl bych pár otázek..."~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #9097 /* ~Opusť ducha.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9060 /* ~Duch se na chvíli usmál, jako by byl potěšen. Potom se uklidnil, stoupl si s jednou rukou za zády a začal přednášet jemným, zpěvavým hlasem:

"Suiang jianne shyr nan bye yih nan;
"Dong feng wu lih bay hua tsarn;
"Chuen tsarn daw syy sy fang jinn;
"Lah Jiuh cherng huei ley shyy gan."

Jen to dořekl, vypadá spokojeně a čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #9098 /* ~"Já.. err..."~ */ GOTO 5
  IF ~~ THEN REPLY #9099 /* ~"Vůbec netuším, co to povídáš... můžeš vlastně rozumět ty mě?"~ */ GOTO 5
  IF ~~ THEN REPLY #9100 /* ~"Nedokážu ti porozumět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #9061 /* ~Chtěl ses na něco zeptat, ale než jsi stačil cokoliv říct, duch začal přednášet jemným, zpěvavým hlasem:

"Suiang jianne shyr nan bye yih nan;
"Dong feng wu lih bay hua tsarn;
"Chuen tsarn daw syy sy fang jinn;
"Lah Jiuh cherng huei ley shyy gan."

Jen to dořekl, vypadá spokojeně a čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #9101 /* ~"Já... err..."~ */ GOTO 5
  IF ~~ THEN REPLY #9102 /* ~"Vůbec netuším, co to povídáš... můžeš vlastně rozumět ty mě?"~ */ GOTO 5
  IF ~~ THEN REPLY #9103 /* ~"Nedokážu ti porozumět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #9062 /* ~Duch na chvíli přestal, jako by přemýšlel. Potom začal mluvit znovu zastřeným, ještě hlubším hlasem.
"Musíš mi odpustit, vzácný pane.  Byla to hodně dlouhá doba co jsem naposledy mluvil tvým jazykem. Neměj obavu, můj duch byl předvolán, aby ti odpověděl na tvé otázky; co tedy ode mně potřebuješ vědět?"~ */
  IF ~~ THEN REPLY #9104 /* ~"Kdo jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #9105 /* ~"Odkud pocházíš?"~ */ GOTO 7
  IF ~~ THEN REPLY #9106 /* ~"Jak ses sem dostal? Jako zombie?"~ */ GOTO 8
  IF ~~ THEN REPLY #9107 /* ~"Kde jsi... kde přebývá tvá duše... teď?"~ */ GOTO 11
  IF ~~ THEN REPLY #9108 /* ~"Co víš o tomto místě?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9109 /* ~"Neznáš náhodou muže jménem Pharod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9110 /* ~"Ale nic, zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 14.0
  SAY #9063 /* ~"Je těžké odpovědět kdo jsem... kdo jsem *byl*. Byl jsem znám jako Zhuang Bei, učitel a ochránce Liu Xixi, dcery Censora Chi'an.~ */
  IF ~~ THEN REPLY #9111 /* ~"Vychovatel a tělesný strážce?"~ */ GOTO 12
  IF ~~ THEN REPLY #9112 /* ~"Hmm. To zní úchvatně."~ */ GOTO 13
  IF ~~ THEN REPLY #9113 /* ~"Ach tak. Měl bych pro tebe ještě pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #9114 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 14.1
  SAY #9064 /* ~"Jsem z místa, které se nazývá Shou Lung... místa, které jsem kdysi považoval za střed vesmíru." Vypadá jako by našel potěšení v přemýšlení. "Mnoho míst, mnoho světů. Kdysi jsem se považoval za opravdu učeného muže, ale teď teprve vidím, jak málo jsem věděl, když jsem zemřel..."~ */
  IF ~~ THEN REPLY #9115 /* ~"Jak ses z toho 'Shou Lung' dostal až sem?"~ */ GOTO 16
  IF ~~ THEN REPLY #9116 /* ~"Ach tak. Měl bych ještě pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #9117 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2 14.2
  SAY #9065 /* ~"Byl jsem zavražděn jedním z mužů, se kterými jsem se dostal do tohoto světa. Honil jsem ho v tomhle městě mnoho, mnoho týdnů -- to bylo tehdy, když jsem se učil tvoji řeč -- ale on mě našel první. Profesionální zabiják, chytil mě a zabil, když jsem spal."~ */
  IF ~~ THEN REPLY #9118 /* ~"Ty jsi spadnul do tohohle světa?"~ */ GOTO 16
  IF ~~ THEN REPLY #9119 /* ~"Chytal jsi vraha?"~ */ GOTO 16
  IF ~~ THEN REPLY #9120 /* ~"Ano, ale víš, jak to, že tvá mrtvola pracuje na tomto místě?"~ */ GOTO 17
  IF ~~ THEN REPLY #9121 /* ~"Mluvíš touto řečí příliš dobře na to, jak krátkou dobu ses ji učil."~ */ GOTO 18
  IF ~~ THEN REPLY #9122 /* ~"Můžu se tě zeptat ještě na něco?"~ */ GOTO 14
  IF ~~ THEN REPLY #9123 /* ~"No, už abych zase šel. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4 14.4
  SAY #9066 /* ~"Tahle budova? vůbec nic; slyšel jsem o ní, vím, že má mrtvola zde byla a sloužila, ale to je vše."
"Nevím skoro nic o tomhle velkém městě, 'Sigil.' Týdny jsem zde strávil hledáním mužů, s nimiž jsem se do tohoto světa dostal a studováním řeči; ačkoliv mě to mrzelo, měl jsem jen málo času na jiné věci. Mohl jsem se toho tolik naučit z mnoha zázraků tohoto místa..."~ */
  IF ~~ THEN REPLY #9124 /* ~"Tvá mrtvola tu slouží? Jak se něco takového přihodilo?"~ */ GOTO 17
  IF ~~ THEN REPLY #9125 /* ~"Ty jsi spadnul do tohoto světa?"~ */ GOTO 16
  IF ~~ THEN REPLY #9126 /* ~"Mluvíš touto řečí příliš dobře na to, jak krátkou dobu ses ji učil."~ */ GOTO 18
  IF ~~ THEN REPLY #9127 /* ~"Můžu se tě zeptat ještě na něco?"~ */ GOTO 14
  IF ~~ THEN REPLY #9128 /* ~"Už nejspíš půjdu. Snad si ještě někdy popovídáme."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.5 14.5
  SAY #9067 /* ~"Ne, to jméno mi nic neříká. Je mi líto, že jsem ti s tím nemohl pomoct."~ */
  IF ~~ THEN REPLY #9129 /* ~"Rozumím ti. Měl bych ještě pár otázeček..."~ */ GOTO 14
  IF ~~ THEN REPLY #9130 /* ~"Už nejspíš půjdu. Snad si ještě někdy popovídáme."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 14.3
  SAY #9068 /* ~Duch na chvíli vypadal zarmouceně.
"Já... můj duch se zdržuje v království známého soudce, Yen-Wang-Yeha: v Paláci Soudu."~ */
  IF ~~ THEN REPLY #9131 /* ~"Děje se něco? Je to snad špatné místo?"~ */ GOTO 15
  IF ~~ THEN REPLY #9132 /* ~"Ach tak. Měl bych ještě pár otázeček..."~ */ GOTO 14
  IF ~~ THEN REPLY #9133 /* ~"Tak to by bylo zatím všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 16.1
  SAY #9069 /* ~"Ne; to není tak nezvyklé v místech, odkud pocházím. Byla to moje povinnost být neustále nablízku Slečně Liu, nejenom ji chránit před zraněním, ale také ji vzdělávat. Jak vidíš, měl jsem výbornou pověst jak ve výuce tak i v šermu. Možná jsem jí mohl posloužit více, kdybych byl lepší v šermu, ačkoliv..."~ */
  IF ~~ THEN REPLY #9134 /* ~"Sloužil jí lépe? Copak jsi v něčem selhal?"~ */ GOTO 16
  IF ~~ THEN REPLY #9135 /* ~"Mno, měl bych pro tebe ještě pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #9136 /* ~"Tak tedy, loučím se s tebou. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #9070 /* ~"Impozantní? Ano, možná příliš na můj vkus. Já... zklamal jsem Slečnu Liu i Censora."~ */
  IF ~~ THEN REPLY #9137 /* ~"Jak to?"~ */ GOTO 16
  IF ~~ THEN REPLY #9138 /* ~"Měl bych pro tebe ještě pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #9139 /* ~"Chápu tě. Snad si ještě budeme moci promluvit někdy v budoucnu."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
  SAY #9071 /* ~Duch se naklonil, v neočekávaně půvabném pohybu, k vysušené mrtvole. "Prosím, vyslov své přání."~ */
  IF ~~ THEN REPLY #9140 /* ~"Kdo jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #9141 /* ~"Odkud vlastně jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #9142 /* ~"Jak ses dostal až sem? Teda myslím zombie."~ */ GOTO 8
  IF ~~ THEN REPLY #9143 /* ~"Kde jsi... kde tvůj duch spočívá... v tomto čase?"~ */ GOTO 11
  IF ~~ THEN REPLY #9144 /* ~"Co všechno víš o tomto místě?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9145 /* ~"Neznáš náhodou někoho jménem Pharod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9146 /* ~"Co jsi to prve povídal?"~ */ GOTO 26
  IF ~~ THEN REPLY #9147 /* ~"Vlastně nic nechci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #9072 /* ~"Dobrá, uvidíš..." Duch se na chvíli zamyslel, zatímco o sebe třel odumřelé ruky mrtvoly. "Když jsem vešel, po krátké chvíli čekání byl jsem uveden k mému poslednímu, *opravdovému* cíli. Avšak, během mé cesty Palácem tam nastaly nějaké nepokoje, a já jsem zůstal sám v postranním pokoji se slibem, že se o mně za chvíli postarají."~ */
  IF ~~ THEN REPLY #9148 /* ~"A...?"~ */ GOTO 19
  IF ~~ THEN REPLY #9149 /* ~"Konečné místo určení? Kam jsi měl být poslán?"~ */ GOTO 20
  IF ~~ THEN REPLY #9150 /* ~"Počkej... Chci se zeptat ještě na něco - dřív než začneš vyprávět."~ */ GOTO 14
  IF ~~ THEN REPLY #9151 /* ~"Zbytek si snad poslechnu někdy příště. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.0 8.0 8.1 9.1 12.0 13.0
  SAY #9073 /* ~"Řeknu ti celý příběh. Jako učitel a ochránce Liu Xixi, jsem byl samozřejmě pověřen její výukou i ochranou. Jednoho krásného večera jsme stáli na balkoně nad nádvořím, kde jsem ji učil rozpoznávat různá souhvězdí.~ */
  IF ~~ THEN REPLY #9152 /* ~"Pokračuj, prosím."~ */ GOTO 21
  IF ~~ THEN REPLY #9153 /* ~"Vychovatel *a* tělesný strážce?"~ */ GOTO 12
  IF ~~ THEN REPLY #9154 /* ~"Zbytek si snad poslechnu někdy příště. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.2 9.0
  SAY #9074 /* ~"Ah, tamto. Jedné noci jsem byl na ulici osloven ženou; byla z organizace nazvané Spalovači, stejné, která dohlížela nad tímto komplexem."
"Navrhla mi, oplátkou za menší obnos peněz, že má mrtvola by mohla být... použita... zde po mém úmrtí."~ */
  IF ~~ THEN REPLY #9155 /* ~"A tobě se to nezdá trošičku divný?"~ */ GOTO 22
  IF ~~ THEN REPLY #9156 /* ~"Hmm. Měl bych další otázku, jestli ti to teda nevadí..."~ */ GOTO 14
  IF ~~ THEN REPLY #9157 /* ~"To by snad bylo všechno. Alespoň prozatím. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.3 9.2
  SAY #9075 /* ~"Lingvistika, po pravdě, je oblast, která mě velmi zajímá. Když jsem se stal učedníkem, zjistil jsem, že se velmi lehce učím nové jazyky, bez jakýchkoliv potíží."~ */
  IF ~~ THEN REPLY #9158 /* ~"Tím by se to všechno vysvětlilo. Další otázečka..."~ */ GOTO 14
  IF ~~ THEN REPLY #9159 /* ~"Chápu. Díky, žes se mnou promluvil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 20.0
  SAY #9076 /* ~"No tak vidíš... nikdo se pro mne nevrátil. Čekal jsem tiše několik dní, ale vypadalo to, že to nemělo žádný smysl. Nakonec jsem z té místnosti odešel, abych prozkoumal palác doufaje, že najdu někoho kdo mě nasměruje..." Mírně si vydechl, z jeho výdechu je cítit slabá vůně balzamovací tekutiny. "Je tam 9 001 místností; když jsem do nějaké přišel, byl jsem pouze nasměrován do další. Vypadalo to, že tam zůstanu navěky."~ */
  IF ~~ THEN REPLY #9160 /* ~"A mohl bych ti položit ještě další otázku..."~ */ GOTO 14
  IF ~~ THEN REPLY #9161 /* ~"Můžu snad být v něčem nápomocen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #9162 /* ~"Pošetilý blázne... zajímalo by mě, jak dlouho tě nechali jen tak se potulovat."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9163 /* ~"Přeji ti mnoho štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #9077 /* ~"To nemohu říci. Je to všechno tak frustrující!" na chvilku se odmlčel, aby se uklidnil, protáhnul si ztuhlé maso a šlachy na koleně, čímž se znovu dostal do klidu.~ */
  IF ~~ THEN REPLY #9164 /* ~"Pokračuj, prosím, ve svém vyprávění."~ */ GOTO 19
  IF ~~ THEN REPLY #9165 /* ~"To si dokážu představit... Mám ještě další otázku..."~ */ GOTO 14
  IF ~~ THEN REPLY #9166 /* ~"Snad si ještě najdu čas doposlechnout si to jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.0
  SAY #9078 /* ~"Tak dobrá. Jak jsme tam postávali, dva zabijáci se znenadání dostali ze střechy na balkón, podle všeho aby zavraždili nebo unesli Slečnu Liu. Zatímco jsem pokřikoval na stráže, vytáhl jsem svou zbraň a vrhl jsem se jí na pomoc. Ve vzniknuvší bitvě se nám nějak podařilo rozbít zábradlí a všichni čtyři jsme spadli přímo do Nefritového portálu."~ */
  IF ~~ THEN REPLY #9167 /* ~"Kamže? Do Nefritového portálu?"~ */ GOTO 23
  IF ~~ THEN REPLY #9168 /* ~"Počkej... ještě bych se chtěl zeptat na něco jiného."~ */ GOTO 14
  IF ~~ THEN REPLY #9169 /* ~"Možná se ještě uvidíme a ty mi to budeš moct dovyprávět. Zatím se měj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.0
  SAY #9079 /* ~"Možná ze začátku... ta myšlenka se mi zdá tak trošku... No ale, když jsem s ní chviličku mluvil, uvědomil jsem si, že ti -- Spalovači -- si myslí o smrti téměř to samé, co já. Mé tělo? Nic víc, než jen povoz na cestě k cíli. Věřím jejich 'Pravé smrti' - dostat se do povzneseného stavu, kterého já osobně chci dosáhnout... navždy se osvobodit ze sevření hmotného světa. Moje mrtvola, která už splnila svůj účel coby má smrtelná schránka, by tu měla ještě vykonat nějakou malou službičku. Tak je to mnohem lepší." Duch se na tebe zdvořile usmál.~ */
  IF ~~ THEN REPLY #9170 /* ~"Chápu tě. Ještě bych se rád na něco zeptal..."~ */ GOTO 14
  IF ~~ THEN REPLY #9171 /* ~"Zajímavé, ale teď už bych měl asi jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #9080 /* ~"Ach! Odpusť mi, že jsem předpokládal tvou obeznámenost s touto... Nefritový portál je jakýsi okrouhlý bazén, který leží na Nádvoří. Je vydlážděn bílými a zelenými kočičími hlavami. Říká se mu portál, protože se proslýchá, že občas se na jeho třpytivé hladině objeví obraz - pohled do jiného světa."~ */
  IF ~~ THEN REPLY #9172 /* ~"Prosím, pokračuj ve svém vyprávění."~ */ GOTO 27
  IF ~~ THEN REPLY #9173 /* ~"Ještě než začneš, se tě chci na něco zeptat..."~ */ GOTO 14
  IF ~~ THEN REPLY #9174 /* ~"Tak to je snad všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1
  SAY #9081 /* ~"Tvá nabídka je velice laskavá. Bohužel se obávám, že zde není nic, co bys mohl udělat... Jsem si jist, že se časem opět navrátím na svou cestu životem. Přesto ti děkuji."~ */
  IF ~~ THEN REPLY #9175 /* ~"Zajisté. Já... můžu se tě ještě na něco zeptat?"~ */ GOTO 14
  IF ~~ THEN REPLY #9176 /* ~"Žádné obavy. Stejně už bych měl jít; sbohem.""Žádné obavy. Stejně už bych měl jít; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.2 33.1 35.1
  SAY #9082 /* ~Duch na tebe mrazivě pohleděl, mdlé plamínky se rozhořely kdesi hluboko v jeho očích; zdá se, že jsi ho urazil.~ */
  IF ~~ THEN REPLY #9177 /* ~"Omlouvám se. Mohl bych se ještě na něco zeptat?"~ */ GOTO 14
  IF ~~ THEN REPLY #9178 /* ~Odejdi, nechej ducha vznášet se tam, kde je.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.6
  SAY #9083 /* ~"Ach, to... err... to byla báseň. Velmi těžce se to překládá. Nemáš snad ještě jinou, lepší otázku?" Neklidně se na tebe usmál.~ */
  IF ~~ THEN REPLY #9179 /* ~"Ano... ano, měl bych..."~ */ GOTO 14
  IF ~~ THEN REPLY #9180 /* ~"Ne... rád bych se totiž o té básni dozvěděl něco bližšího."~ */ GOTO 28
  IF ~~ THEN REPLY #9181 /* ~"Ne. Jestli to ale nebude tím, že jsem na odchodu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #9084 /* ~"Jak už jsem říkal, spadli jsme do Nefritového portálu. Dřív mě nikdy ani nenapadlo, že by to mohl být skutečně portál, ale teď už vím, že je to pravda! Náhle jsem si totiž uvědomil, že ležím se zlomenou nohou v nějaké neznámé aleji. Pak jsem ze zorientoval v čase, pouze abych viděl, jak zabijáci utíkají a jak jeden z nich přitom nese Liu Xixi přehozenou přes rameno."~ */
  IF ~~ THEN REPLY #9182 /* ~"Vskutku dost divné. Pokračuj, prosím."~ */ GOTO 31
  IF ~~ THEN REPLY #9183 /* ~"Vydrž. Rád bych se zeptal ještě na něco jiného..."~ */ GOTO 14
  IF ~~ THEN REPLY #9184 /* ~"Ah, děkuji ti. Ale... už bych měl asi jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #9085 /* ~"Tak dobrá." Na chvilku se zamyslel, zatímco konečky mrtvolných prstů klepal jedním o druhý. Po chvíli začal přednášet v pevném, odměřeném rytmu:

"Je obtížné se potkat, je obtížné se rozejít.
"Stovka květin odkvete, severní vítr se odvrátí.
"Až jarní červi zahynou, hedvábí se už nevrátí.
"Až se z vosku stane prach, pak mohou slzy odeznít."

Zdvořile se na tebe usmál. ~ */
  IF ~~ THEN REPLY #9185 /* ~"Ještě bych měl další otázečku..."~ */ GOTO 14
  IF ~~ THEN REPLY #9186 /* ~"Zajímavé. Co to znamená?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #9187 /* ~"Tím myslíš, že bych měl tvou duši radši nechat na pokoji? Urazil jsem tě snad něčím?"~ */ GOTO 30
  IF ~~ THEN REPLY #9188 /* ~"Díky, žes mi to vysvětlil. Zatím se měj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #9086 /* ~"Víš, neříká se mi lehce, že to byl takříkajíc chabý pokus... teď říkám, že bude lepší, když necháš duše mrtvých o samotě. Už netoužím mít cokoli společného s tímto..." Rychlým gestem naznačil, že myslí vše kolem sebe. "...světem."~ */
  IF ~~ THEN REPLY #9189 /* ~"Hmm. Ještě bych pro tebe měl pár dalších otázek."~ */ GOTO 14
  IF ~~ THEN REPLY #9190 /* ~"Chápu tě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY #9087 /* ~"Ach... mno... ne. Původně jsem to nechtěl říct tak přímo; vyhnout se tak konfrontaci, chápeš. Já prostě už nechci mít nic společného s tímto..." Rychlým gestem naznačil, že myslí vše kolem sebe. "...světem."~ */
  IF ~~ THEN REPLY #9191 /* ~"Hmm. Ještě bych pro tebe měl pár dalších otázek."~ */ GOTO 14
  IF ~~ THEN REPLY #9192 /* ~"Chápu tě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #9088 /* ~"No, to je téměř všechno. V bolestech jsem pokulhával kolem, než jsem našel někoho, kdo by vyléčil mou nohu; za své služby si vzal jen drobnou minci, co jsem měl u sebe. Od onoho léčitele a dalších lidí jsem se naučil jazyk místních, zatímco jsem hledal místo s těmi vrahy."~ */
  IF ~~ THEN REPLY #9193 /* ~"A nikdy už jsi je nenašel, co?"~ */ GOTO 32
  IF ~~ THEN REPLY #9194 /* ~"Hmm. Víš, zdá se mi divné, jak rychle ses naučil tuto řeč..."~ */ GOTO 38
  IF ~~ THEN REPLY #9195 /* ~"Ještě než budeš pokračovat, bych se tě rád na něco zeptal..."~ */ GOTO 14
  IF ~~ THEN REPLY #9196 /* ~"Zbytek si poslechnu zase někdy příště; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #9089 /* ~"Jednoho z nich jsem chytil, ale on odmítal promluvit. Popravil jsem ho tedy a jeho hlavu jsem dal do hedvábného pytle, takže jsem ji mohl předat Censorovi, když jsem mu přiváděl jeho dceru zpět." Na okamžik se zamračil a poté opět pokračoval. "Ten druhý zabiják... unikl mi. Vlastně, udělal nejen to; zavraždil mě dřív, než jsem stihl zabít já jeho. Je to smutné, ale už to mám všechno za sebou."~ */
  IF ~~ THEN REPLY #9197 /* ~"A věděl jsi předtím, jak se vrátit zpět do své země, zachránil jsi tu... 'Xi-xi?'~ */ GOTO 33
  IF ~~ THEN REPLY #9198 /* ~"Zajímavý příběh. Ještě bych se tě rád na něco zeptal..."~ */ GOTO 14
  IF ~~ THEN REPLY #9199 /* ~"Fascinující. No, asi už půjdu. Takže sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #9090 /* ~"Ne, ale jsem si jistý, že bych mohl najít pro tebe nějaké řešení. Zaměřme se teď na tohle."~ */
  IF ~~ THEN REPLY #9200 /* ~"Možná že jsou pořád ještě ve městě. Snad bych ti nějak dokázal pomoci."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_2","GLOBALGood",1)
~ GOTO 34
  IF ~~ THEN REPLY #9201 /* ~"Ono je jednoduché zapomenout se na své povinnosti, když už jsi mrtvý. Nevím, jestli bych se já dokázal vykašlat na něco takového."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Bei_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9202 /* ~"Zajímavé. Můžu se tě ještě na něco zeptat?"~ */ GOTO 14
  IF ~~ THEN REPLY #9203 /* ~"Hmm. Tak já už půjdu. Měj se dobře."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #9091 /* ~"Tvá nabídka z tebe dělá čestného muže... přesto, od doby mé smrti neuplynulo méně než sedmdesát pět let. Muž, jehož rukou jsem zahynul, je teď mrtvý též, stejně tak jako Xixi."~ */
  IF ~~ THEN REPLY #9205 /* ~"Hmm. No tak nic. Mám ještě nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #9206 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #9092 /* ~"Ten zabiják mohl vypadat podobně jako já, na svém čele měl vytetován lotosový květ." Když si všiml tvých rozpaků, dodal "Lotos je druh květiny, má sedm okvětních lístků. Liu Xixi je mladá dívka; je jí pouze čtrnáct let. Možná že ona nebo ti zabijáci ví, kde se nacházela cesta zpět a jak ji opět aktivovat."~ */
  IF ~~ THEN REPLY #9207 /* ~"Kdybych ji viděl, udělám, co budu moct, abych jí pomohl - pro tvoji památku."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_3","GLOBALGood",1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #9208 /* ~"Na tohle nemám čas."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Bei_2","GLOBALLaw",-1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #9209 /* ~"Dobrá. Mám pro tebe ještě pár otázek..."~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #9210 /* ~"Víc už nepotřebuju. Sbohem."~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #9093 /* ~"Jsi velice čestný muž. Pro mě to už nedělej, nicméně... právě dívce a jejímu otci jsi ohromně pomohl."~ */
  IF ~~ THEN REPLY #9211 /* ~"Fajn, měl bych ještě pár otázeček..."~ */ GOTO 14
  IF ~~ THEN REPLY #9212 /* ~"Rozumím. Tak tedy sbohem, duchu."~ */ EXIT
END

IF ~  Global("Bei","GLOBAL",1)
~ THEN BEGIN 37 // from: 0.4
  SAY #9094 /* ~"Vlastně jsem ani neočekával, že tě znovu uvidím." Duch se ti uctivě poklonil, ale jeho výraz zůstal nezměněn. "Takže, co pro tebe mohu udělat?"~ */
  IF ~~ THEN REPLY #9213 /* ~"Otázečku..."~ */ GOTO 14
  IF ~~ THEN REPLY #9214 /* ~"Ale nic; nechám tě tedy na pokoji."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1
  SAY #9718 /* ~"Lingvistika je pro mě vlastně velice zajímavá oblast. Když jsem se stal učencem, zjistil jsem, že se dokáži naučit nové jazyky bez jakýchkoli problémů."~ */
  IF ~~ THEN REPLY #9719 /* ~"To by to vysvětlovalo. Takže vrahy jsi nikdy nenašel?"~ */ GOTO 32
  IF ~~ THEN REPLY #9720 /* ~"Aha. Teď bych se tě chtěl zeptat ještě na něco jiného..."~ */ GOTO 14
  IF ~~ THEN REPLY #9721 /* ~"Rozumím. Děkuju za rozhovor. Sbohem."~ */ EXIT
END
