// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELCIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELCIT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19719 /* ~Na kostech tohoto prastarého oživeného těla nezůstalo už žádné maso... jenom několik barevných hadrů, které zřejmě slouží spíše jako dekorace než jako oblečení.~ */
  IF ~~ THEN REPLY #19744 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #19751 /* ~Nechej kostlivce být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #19720 /* ~"A pozdravení i tobě." Chladný, vzdálený hlas kostlivce se ozývá z jeho duté lebky.~ */
  IF ~~ THEN REPLY #19753 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #19755 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #19721 /* ~"Zodpovím ti, co budu moci." Z kloubů čelisti spadlo trochu prachu, když kostlivec promluvil. "Ptej se, jak je tobě libo. Mám více než dostatek času na hovor s tebou."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19757 /* ~"Proč jsem byl uvězněn?"~ */ GOTO 17
  IF ~~ THEN REPLY #19759 /* ~"Kde to jsem?"~ */ GOTO 3
  IF ~~ THEN REPLY #19760 /* ~"Co tady děláš?"~ */ GOTO 14
  IF ~~ THEN REPLY #19761 /* ~"Kdo obývá tohle místo?~ */ GOTO 4
  IF ~~ THEN REPLY #19763 /* ~"Chtěl bych se tě na někoho zeptat..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19765 /* ~"Neviděl jsi tady někde malou bronzovou kouli?"~ */ GOTO 16
  IF ~~ THEN REPLY #19768 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.1
  SAY #19722 /* ~"Jsi na místě, které nazýváme Mrtvé Národy... naší zemí a domovem, pod městem zvaným Sigil. Toto je pouze jenom částečka malá civilizace naší, toliko hraniční oblast. Mrtvé Národy zabírají sobě mnoho přemnoho mil zde v temnotách."~ */
  IF ~~ THEN REPLY #19769 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19770 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3 5.3 6.0 7.1 8.3 10.1 11.2 12.1 13.0
  SAY #19723 /* ~"Toto jest místem Nemrtvých, jimž vládne náš Tichý král. Jsou zde zombie, stejně tak jako ghúlové. Dále odsud, v katakombách směrem východním, kraniové krysy přebývají. A občas zabloudí na místa tato jeden z Živoucích - jako ty jsi, nebo Soego též."~ */
  IF ~~ THEN REPLY #19771 /* ~"Kdo je ten Tichý Král?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19772 /* ~"Řekni mi o svém vlastním druhu."~ */ GOTO 6
  IF ~~ THEN REPLY #19773 /* ~"Řekni mi o ostatních nemrtvých."~ */ GOTO 9
  IF ~~ THEN REPLY #19774 /* ~"Řekni mi o krysách."~ */ GOTO 11
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19775 /* ~"Řekni mi o Soegovi."~ */ GOTO 13
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19776 /* ~"Řekni mi o Soegovi."~ */ GOTO 12
  IF ~~ THEN REPLY #19777 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19778 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.6 6.1 7.2 8.4 9.2 10.2 11.3 12.2 13.1 14.1 15.1 16.1 17.3 18.2 20.0 21.5 22.2 23.2 24.2
  SAY #19724 /* ~Kostlivec pomalu přikývl, kosti jeho krku tiše praskají. "Prosím, předlož svou otázku mé osobě."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19779 /* ~"Proč jsem byl uvězněn?"~ */ GOTO 17
  IF ~~ THEN REPLY #19780 /* ~"Kde to jsem?"~ */ GOTO 3
  IF ~~ THEN REPLY #19781 /* ~"Co tady děláš?"~ */ GOTO 14
  IF ~~ THEN REPLY #19782 /* ~"Kdo obývá tohle místo?~ */ GOTO 4
  IF ~~ THEN REPLY #19783 /* ~"Chtěl bych se tě na někoho zeptat..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19784 /* ~"Neviděl jsi tady někde malou bronzovou kouli?"~ */ GOTO 16
  IF ~~ THEN REPLY #19785 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #19725 /* ~Kostlivec přikývl. "Jsme ti z nejstarších nemrtvých na místě tomto, povětšinou již masa zcela zbaveni. Snažíme se fungovati jakožto vůdci a mentorové pro ostatní, pracujeme a vedeme, abychom zde funkční a zdravou komunitu sobě udrželi."~ */
  IF ~~ THEN REPLY #19786 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #19787 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19788 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 9.0 23.0
  SAY #19726 /* ~"Silní, ale pomalí na duchu i těle. Zůstalo jim povíce jejich lidskosti - jejich emocí - než nám. V naší komunitě oni pracují jako dělníci pod dozorem Ošuntělé Mary, jež je nejinteligentnější a nejstarostlivější z řad jejich."~ */
  IF ~~ THEN REPLY #19789 /* ~"Řekni mi o Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #19790 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #19791 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19792 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 11.1 24.0
  SAY #19727 /* ~"Ghúlové jsou silná a krutá stvoření, vedená děsivou vládkyní zovoucí se Acaste. Pro komunitu Mrtvých národů pracují jako stráže... ale jsou zde elementem nestabilním. Pouze strach z počtu ostatních nemrtvých, taktéž z Tichého krále, je v klidu udržuje. Bez mocného našeho lorda, jenž velí jim, bychom mohli, stejně jako svěřenci naši, padnouti jejich násilnosti jednoho dne za oběť."~ */
  IF ~~ THEN REPLY #19793 /* ~"Řekni mi o Acaste."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #19794 /* ~"Kdo je ten Tichý Král?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19795 /* ~"Vaši svěřenci?"~ */ GOTO 15
  IF ~~ THEN REPLY #19796 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #19797 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19798 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #19728 /* ~"Na koho tážeš se?"~ */
  IF ~~ THEN REPLY #19799 /* ~"Zombie."~ */ GOTO 7
  IF ~~ THEN REPLY #19800 /* ~"Ghúlové."~ */ GOTO 8
  IF ~~ THEN REPLY #19801 /* ~"No tak nic. Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #19802 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0 8.1 17.1 18.1 21.0 22.0
  SAY #19729 /* ~"Náš lord a vůdce. Je nazýván Králem Tichým, jelikož mluví pouze v případech nutnosti nejvyšší." Kostlivec doprovází svou řeč gestikulacemi, díky kterým jeho klouby popraskávají a skřípají. "Taž se na něj Hargrimma, našeho kněze nejvyššího. On ti zodpovědět více dokáže."~ */
  IF ~~ THEN REPLY #19803 /* ~"Řekni mi o Hargrimmovi."~ */ GOTO 22
  IF ~~ THEN REPLY #19804 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #19805 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19806 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY #19730 /* ~"Havěť, jejíž vychytralost zvyšuje se, pokud je jich více poblízku. Mohou hrozivým nebezpečím býti... na naše svěřence útočili, klid kostí tichých a klidných narušovali. Teď se však v nejvýchodnější části katakomb zdržují. Ghúlové jich mnoho pochytali a pozřeli, takže jejich nájezdy nehrozí, alespoň pro čas nejbližší."~ */
  IF ~~ THEN REPLY #19808 /* ~"Vaši svěřenci?"~ */ GOTO 15
  IF ~~ THEN REPLY #19810 /* ~"Pověz mi o ghúlech."~ */ GOTO 8
  IF ~~ THEN REPLY #19811 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #19812 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19813 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.5
  SAY #19731 /* ~"Byl to jakýsi misionář, muž víry,  Spalovač, který toužil přemluviti nás, bychom my se Pravé Smrti odevzdali. Teď, pokud pochopila dobře má osoba, patří k našich svěřenců počtu."~ */
  IF ~~ THEN REPLY #19814 /* ~"Vaši svěřenci?"~ */ GOTO 15
  IF ~~ THEN REPLY #19815 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #19816 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19817 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.4 21.4
  SAY #19732 /* ~"Je to jakýsi misionář, muž víry,  Spalovač, který toužil přemluvit nás, bychom my se Pravé Smrti odevzdali. Pokud tak toužíš, můžeš ho nalézti v Kapli, jež nachází se v severní části těchto hal chladných a prašných.  Tam můžeš navázati s ním hovor, pokud to je to, po čem toužíš."~ */
  IF ~~ THEN REPLY #19818 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #19819 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19820 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2 5.2
  SAY #19733 /* ~"Co činí živí, ve světě nahoře? My o své životy staráme se, zde v tiché temnotě. Pracujeme, abychom své svěřence, tiché a klidné, ochránili před jinými, kteří jsou toužící narušit klid jejich a zneužíti je k prospěchu svému."~ */
  IF ~~ THEN REPLY #19821 /* ~"Vaši svěřenci?"~ */ GOTO 15
  IF ~~ THEN REPLY #19822 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19823 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.2 11.0 12.0 14.0 18.0
  SAY #19734 /* ~"Tiší a klidní... mrtví, jež nečiní ničeho, než odpočívají a spí. Chráníme je, dohlížíme nad odpočinkem jejich."~ */
  IF ~~ THEN REPLY #19824 /* ~"Kdo by je rušil?"~ */ GOTO 20
  IF ~~ THEN REPLY #19825 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19826 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 5.5
  SAY #19735 /* ~Kostlivec pokrčil rameny, jeho lopatky zaškrábaly o žebra. "Ne. Možná bys promluviti s Hargrimmem, naším knězem nejvyšším, ty měl. On mnoho zná."~ */
  IF ~~ THEN REPLY #19827 /* ~"Řekni mi o Hargrimmovi."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19828 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19829 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 5.0
  SAY #19736 /* ~Kostlivec se dotkl své tváře, natočil si lebku více nahoru. "Ghúlové povolení vlastní k zneškodnění těch, jež přistiženi budou, chtíc katakomby znesvětiti. Tichý Král má dojem ten, že nejlepší pro narušitele, kteří chyceni a uvězněni jsou, jako třeba osoba tvá, aby zchřadli zde a upadli do péče naší, než aby byli ghúly sežráni. Měl by sis promluviti s Hargrimmem, naším knězem nejvyšším. To on jest ten, jenž s Tichým Králem, naším vůdcem, hovoří."~ */
  IF ~~ THEN REPLY #19830 /* ~"Řekni mi o Hargrimmovi."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19831 /* ~"Tichý Král?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19832 /* ~"Upadli do vaší péče?'"~ */ GOTO 18
  IF ~~ THEN REPLY #19833 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19834 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #19737 /* ~Kostlivec přikývl. "Státi se jedním ze svěřenců našich. Započítati se mezi tiché a klidné."~ */
  IF ~~ THEN REPLY #19835 /* ~"Vaši... svěřenci?"~ */ GOTO 15
  IF ~~ THEN REPLY #19836 /* ~"Kdo je ten Tichý Král?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19837 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19838 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #19738 /* ~"Zdravím tebe, opět jednou. Jsi již přizpůsoben svému novému domovu?"~ */
  IF ~~ THEN REPLY #19839 /* ~"To těžko. Mám nějaké otázky."~ */ GOTO 2
  IF ~~ THEN REPLY #19840 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0
  SAY #19739 /* ~"Mnoho." Ukazuje je na zažloutlých, zaprášených prstních kůstkách. "Hladoví ghúlové nezvladatelní, krysy a především... živoucí. Ti z Pohřbené vesnice - muže zovoucího se Pharod služebníci - často kráčejí do chodeb Národů mrtvých, narušujíce mír a klid tichých a odpočívajících. Nevím, proč toto děje se, ni nestarám se o tento předmět. Mou starostí jedinou je způsob, jakýmž my jejich práci nečisté zabráníme."~ */
  IF ~~ THEN REPLY #19841 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19842 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.4 5.4 22.1 23.1 24.1
  SAY #19740 /* ~Kostlivec přikývl. "Kdože?"~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #19843 /* ~"Tichý Král."~ */ GOTO 10
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #19844 /* ~"Hargrimm."~ */ GOTO 22
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #19845 /* ~"Ošuntělá Mary."~ */ GOTO 23
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #19846 /* ~"Acaste."~ */ GOTO 24
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19847 /* ~"Soego."~ */ GOTO 13
  IF ~~ THEN REPLY #19848 /* ~"No tak nic. Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #19849 /* ~"Vlastně mě nezajímá nikdo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.0 16.0 17.0 21.1
  SAY #19741 /* ~"To on, mluvíc s Tichým Králem, pánem naším, nám slova a zákony předává. Hle, zde on je, v předpokoji místnosti trůnní Tichého krále, jenž králem našim jest."~ */
  IF ~~ THEN REPLY #19850 /* ~"Řekni mi o Tichém Králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19851 /* ~"Chci se tě zeptat na někoho jiného..."~ */ GOTO 21
  IF ~~ THEN REPLY #19852 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19853 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0 21.2
  SAY #19742 /* ~"Je pomalá, ale starostlivá a moudrosti velké držitelka. Jako matka jakási ona je pro zombie ostatní. Nalezneš jí sobě v komnatě směrem západním ode místa, jež poprvé dotkla se tvá noha, když do místa Národů Mrtvých vstoupil jsi sobě."~ */
  IF ~~ THEN REPLY #19854 /* ~"Řekni mi o zombiích."~ */ GOTO 7
  IF ~~ THEN REPLY #19855 /* ~"Chci se tě zeptat na někoho jiného..."~ */ GOTO 21
  IF ~~ THEN REPLY #19856 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19857 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 8.0 21.3
  SAY #19743 /* ~"On hordě ghúlů, jež zovou se sami sobě Zplesnivělí, strašlivým patriarchou jest. Sloužíť oni Národům mrtvým jakožto strážci a hlídači, taktéž obránci... pro zatímní čas. On dohlíží nad komnatou, jež stala se místem, kde tvá osoba do Národů mrtvých vstoupila."~ */
  IF ~~ THEN REPLY #19858 /* ~"Řekni mi o Zplesnivělých."~ */ GOTO 8
  IF ~~ THEN REPLY #19859 /* ~"Chci se tě zeptat na někoho jiného..."~ */ GOTO 21
  IF ~~ THEN REPLY #19860 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19861 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
