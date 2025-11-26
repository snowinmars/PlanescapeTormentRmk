// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRUBIKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRUBIKON~

IF ~  Global("Know_Rubikon","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61026 /* ~Vidíš solidně stavěnou mechanickou postavu. Když jsi přistoupil, usmál se a lehce se uklonil. "Tak se konečně setkáváme..." Všiml sis, že jeho hlas postrádá monotóní tón, který měla všechna stvoření která jsi tu zatím potkal.~ */
  IF ~~ THEN REPLY #61028 /* ~"Zdravím."~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #61029 /* ~Ignoruj to stvoření.~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61031 /* ~Ještě jednou se uklonil. "Také tě zdravím." Naklonil hlavu na stranu a upřel na tě tázavý pohled. "Takže, budeme teď bojovat o vládu nad Rubikonem, nebo pokračovat v konverzaci, která by mohla uhasit tvoji zvědavost?" Čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #61033 /* ~"Dovedeme boj do konce."~ */ GOTO 2
  IF ~~ THEN REPLY #61035 /* ~"Máš pravdu, jsem zvědavý. Budeme mluvit?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 25.0
  SAY #61036 /* ~Lehce přikývl. "Ah, muž činu jak vidím. K takovému cítím respekt." Zaujal obranný postoj. "Nechť souboj započne!"~ */
  IF ~~ THEN REPLY #61038 /* ~"Ano, skončeme s tím."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 25.1
  SAY #61040 /* ~Lehce přikývl. "Ah, jak vidím prahneš po vědomostech. Musím přiznat, že jsem se v tobě na první pohled mýlil."~ */
  IF ~~ THEN REPLY #61041 /* ~"Mám pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #61043 /* ~"Když o tom tak přemýslím, radši odejdu. Sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.1 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.0 16.2 17.1 19.1 20.0 21.1 22.2 23.1
  SAY #61044 /* ~Usmál se. "Jen se ptej."~ */
  IF ~~ THEN REPLY #61045 /* ~"Kdo jsi?"~ */ GOTO 5
  IF ~~ THEN REPLY #61046 /* ~"Co jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #61047 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 15
  IF ~~ THEN REPLY #61048 /* ~"Co mi můžeš říct o modronech?"~ */ GOTO 16
  IF ~~ THEN REPLY #61049 /* ~"Proč musíme bojovat? Proč nemůžeme jít každý svou cestou?"~ */ GOTO 21
  IF ~~ THEN REPLY #61050 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61051 /* ~"Já jsem Rubikon, Mistr Čaroděj. To já ovládám všechny stroje, které obývají tohle místo."~ */
  IF ~~ THEN REPLY #61052 /* ~"Takže, ty určitě budeš zlý čajoděj?"~ */ GOTO 6
  IF ~~ THEN REPLY #61053 /* ~"Chápu, mám ještě nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61054 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61056 /* ~Zamyšleně se zamračil. "Nemám rád, když mne někdo nazývá zlým. Připouštím, že se mé názory ve spoustě věcí neshodují s názory ostatních, ale jsem proto snad zlý? Nemyslím si."~ */
  IF ~~ THEN REPLY #61057 /* ~"Tak co potom jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #61058 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61059 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #61060 /* ~Vypadá vztekle. "Jsem vězeň. Nejsem tu ze své vlastní vůle, v tom tě mohu ujistit."~ */
  IF ~~ THEN REPLY #61061 /* ~"Co tím myslíš?"~ */ GOTO 8
  IF ~~ THEN REPLY #61062 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61063 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 8 // from: 7.0 16.1
  SAY #61065 /* ~"Byl jsem vytvořen modrony jako figurka do jejich nesmyslných her. Během času jsem začal být samostatný a požádal jsem o svobodu. Ale jejich vůdce mne odmítl!"~ */
  IF ~  !InParty("Nordom")
~ THEN REPLY #61066 /* ~"Co jsi udělal?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",1)
~ GOTO 9
  IF ~  InParty("Nordom")
~ THEN REPLY #61067 /* ~"Co jsi udělal?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #61069 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61071 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #61074 /* ~Zírá na tebe. "Udělal jsem to, co by udělal každý, kdo by byl uvržen do otroctví. Bojoval jsem za svou svobodu!" Pro zvýšení efektu se odmlčel. "Zlikvidoval jsem jejich vůdce, a zařídil jsem, aby to vypadalo jako nehoda. A poté jsem se pokusil uprchnout nejbližším východem."~ */
  IF ~~ THEN REPLY #61075 /* ~"Co se stalo?"~ */ GOTO 10
  IF ~~ THEN REPLY #61076 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61078 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61079 /* ~Povzdechl si. "Bohužel tu byl jistý zabezpečující mechanismus, o kterém jsem nevěděl. Můj pokus o získání svobody byl vyhodnocen jako *Chyba programu* a bludiště se zhroutilo do sebe a opět mě uvěznilo..." Zahleděl se do dálky. "Byl jsem vězněm po staletí. A byl bych tam stále, kdybys nerestartoval Krychli a nenastavil ji na *Tězkou obtížnost*." Obrátil svou pozornost k tobě.~ */
  IF ~~ THEN REPLY #61081 /* ~"Tak, a co teď zamýšlíš?"~ */ GOTO 11
  IF ~~ THEN REPLY #61082 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61084 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61085 /* ~Pokrčil rameny. "Chtěl jsem otevřeně napadnout vědeckou místnost a obsadit ji. Poté bych podřídil modrony svému přání a získal bych plnou kontrolu nad krychlí. Svoboda bude má."~ */
  IF ~~ THEN REPLY #61086 /* ~"Řekněme, že se dostaneš ven. Co pak?"~ */ GOTO 12
  IF ~~ THEN REPLY #61088 /* ~"Co když ti modroni odmítnou pomáhat?"~ */ GOTO 13
  IF ~~ THEN REPLY #61089 /* ~"Takže hodláš z modronů udělal své otroky?"~ */ GOTO 14
  IF ~~ THEN REPLY #61090 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61092 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.0 14.0
  SAY #61094 /* ~"To zatím nevím. S mocí krychle v rukou budu mít sílu vyrovnat všechny účty." Pokrčil rameny. "Ale to ukáže až čas."~ */
  IF ~~ THEN REPLY #61096 /* ~"Co když ti modroni odmítnou pomáhat?"~ */ GOTO 13
  IF ~~ THEN REPLY #61097 /* ~"Takže hodláš z modronů udělal své otroky?"~ */ GOTO 14
  IF ~~ THEN REPLY #61098 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61099 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0 14.1
  SAY #61101 /* ~Usmál se na tebe. "Jen se neboj. Pomůžou mi. Ať tak či onak, nakonec mi pomůžou."~ */
  IF ~~ THEN REPLY #61102 /* ~"Řekněme, že se dotaneš ven. Co pak?"~ */ GOTO 12
  IF ~~ THEN REPLY #61103 /* ~"Takže hodláš z modronů udělal své otroky?"~ */ GOTO 14
  IF ~~ THEN REPLY #61104 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61106 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 14 // from: 11.2 12.1 13.1
  SAY #61107 /* ~Zamračil se. "Oni už jsou otroci! Jsou otroky práva, logiky, jsou spoutáni svými experimenty. Pod mou vládou budou mít konečně šanci žít, tak jak nejlépe kdy budou moci."~ */
  IF ~~ THEN REPLY #61108 /* ~"Řekněme, že se dostaneš ven. Co pak?"~ */ GOTO 12
  IF ~~ THEN REPLY #61113 /* ~"Co když ti modroni odmítnou pomáhat?"~ */ GOTO 13
  IF ~~ THEN REPLY #61114 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61115 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 15 // from: 4.2
  SAY #61116 /* ~Zasmál se a rozhlédl se kolem. "Tenhle malý kousek pekla? Je to ukázka šílenství modronů. Existuje na sféře Limbo, kde se myšlenky můžou stát realitou. Díky tomu si mohli jednoduše *přát*, aby vzniklo tohle vězení a poté ho obsadit stroji." Opět se zasmál. "Jaký to zázrak."~ */
  IF ~~ THEN REPLY #61117 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61118 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.3
  SAY #61119 /* ~Zatřásl hlavou. "Tady nejsou žádní modroni. Pouze vězni a jejich věznitelé."~ */
  IF ~~ THEN REPLY #61120 /* ~"Já jsem modrony viděl."~ */ GOTO 17
  IF ~~ THEN REPLY #61121 /* ~"Jací vězni?"~ */ GOTO 8
  IF ~~ THEN REPLY #61122 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61123 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61124 /* ~Zatřásl hlavou a věnoval ti smutný úsměv. "Ne. Stvoření, která jsi potkal, nebyla nic víc, než zkažené pozůstatky modronů. Vetšina, ne-li všechna tato stvoření, jsou na pokraji toho stát se samotáři a ani o tom neví."~ */
  IF ~~ THEN REPLY #61125 /* ~"Samotáři? Co to znamená?"~ */ GOTO 18
  IF ~~ THEN REPLY #61126 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61127 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61128 /* ~Povzdechl si. "Tenhle žalář byl vytvořen na podstatě chaosu. Taková záležitost může být jednoduše zhmotněna v opravdovou věc, skrze přání rádoby inteligentních tvorů. To učiní konstrukci takové budouvy velmi jednoduchou. Nicméně, je tu jistá cena, která musí být zaplacena." Odmlčel se.~ */
  IF ~~ THEN REPLY #61129 /* ~"Pokračuj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61130 /* ~"Modroni žijí vlastní podstatou řádu. Zde byli bohužel vystaveni podstatě chaosu. Takovýto střet obvykle vyústí v jistý druh šílenství. Modroni začali ztrácet jejich základní smysl pro *my* a místo toho se začali stávat samostatnými jedinci. Tohle jsem myslel, když jsem říkal *samotáři*, a to je ten největší hřích v jejich společnosti."~ */
  IF ~~ THEN REPLY #61131 /* ~"Co se stane se samotáři?"~ */ GOTO 20
  IF ~~ THEN REPLY #61132 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61133 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61134 /* ~Pokrčil rameny. "Tohle jsem nikdy pořádně nepochopil, ale modroni sdílí jakýsi druh společného bytí. Jakmile se nějaký modron stane samotářem, odnese si část tohoto bytí s sebou. Zbylí modroni pak zničí všechny samotáře, aby se veškeré bytí vrátilo do pomyslného společného jezírka, ze kterého bylo vzato."~ */
  IF ~~ THEN REPLY #61135 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61136 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 4.4
  SAY #61137 /* ~Usmál se na tebe. "Přijali tě za svého vůdce a momentálně ovládáš krychli. A proto musíš být eliminován. Nic osobního, to jistě chápeš."~ */
  IF ~~ THEN REPLY #61138 /* ~"A co když řeknu modronům, že jejich novým vůdcem jsi ty?"~ */ GOTO 22
  IF ~~ THEN REPLY #61139 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61140 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61141 /* ~Zatřásl hlavou. "Je mi líto, ale to nebude fungovat. Modroni takový příkaz nikdy nepřijmou. Buď jak buď, jsem jejich výtvor." Na nějakou chvíli se zamyslel a pak pokračoval. "Ne, napřed eliminuji tebe, a pak si podrobím je. Žádnou jinou cestu nevidím." ~ */
  IF ~~ THEN REPLY #61142 /* ~"Vždycky přece můžu odejít a tebe nechat jednat."~ */ GOTO 23
  IF ~~ THEN REPLY #61143 /* ~"Nuže... nebudu tu jen tak stát, mezitím co si ty spřádáš plány pro mou smrt. Myslím že je čas, abych s tebou skončil."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61144 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61145 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #61146 /* ~Zatřásl hlavou. "Ne, to nebude stačit. Musím si být jistý, že už se nikdy nevrátíš a nenarušíš moje plány. Jediná cesta jak tomu zabráním, je tě tady a teď pohřbít."~ */
  IF ~~ THEN REPLY #61147 /* ~"Nuže... nebudu tu jen tak stát, mezitím co si ty spřádáš plány pro mou smrt. Myslím že je čas, abych s tebou skončil."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61148 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #61149 /* ~"Musím jít, sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 3.1 4.5 5.2 6.2 7.2 8.3 9.2 10.2 11.4 12.3 13.3 14.3 15.1 16.3 17.2 19.2 20.1 21.2 22.3 23.2
  SAY #61150 /* ~Uklonil se ti. "Dobrá, byl jsem potěšen naší konverzací, ale nyní je čas, abys zemřel." Zaujal obranný postoj.~ */
  IF ~~ THEN REPLY #61151 /* ~"Budiž."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.1
  SAY #61152 /* ~"Nejsem někdo, koho můžeš jen tak ignorovat. Ty i já jen jdeme svou cestou." Usmál se na tebe. "Takže, budeme teď bojovat o kontrolu nad Rubikonem, nebo pokračovat v konverzaci, abys uhasil svou zvědavost?"~ */
  IF ~~ THEN REPLY #61153 /* ~"Dovedeme tenhle boj až dokonce."~ */ GOTO 2
  IF ~~ THEN REPLY #61154 /* ~"Máš pravdu, jsem zvědavý. Mužeme si promluvit?"~ */ GOTO 3
END

IF ~  Global("Know_Rubikon","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #61155 /* ~Vidíš Rubikona, kouzelníka z krychle. Usmál se na tebe a lehce se uklonil. "Nuže se opět setkáváme. Zdá se, že naše osudy jsou značně propletené. Započněmež tedy souboj." Zaujal obranný postoj.~ */
  IF ~~ THEN REPLY #61156 /* ~"Zdá se mi, že už jsme tu kdysi byli."~ */ GOTO 27
  IF ~~ THEN REPLY #61157 /* ~"Mám pár otázek..."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 26.0 28.0
  SAY #61158 /* ~Přikývl, ale nepřestal být ostražitý. "A budeme tu tak dlouho dokud tě neporazím. Dost řečí a skončeme s tím."~ */
  IF ~~ THEN REPLY #61159 /* ~"Jak si přeješ."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #61160 /* ~Zatřásl hlavou. "Čas na otázky vypršel. Nyní je čas jednat."~ */
  IF ~~ THEN REPLY #61161 /* ~"Zdá se mi že už jsme tu kdysi byli."~ */ GOTO 27
END
