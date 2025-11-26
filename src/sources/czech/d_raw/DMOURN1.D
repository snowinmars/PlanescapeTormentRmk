// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7078 /* ~Tento Spalovač je oblečen v dlouhé a tmavé roucho, ruce ukryty v rukávech. Se skloněnou hlavou monotónně prozpěvuje v rovnoměrném rytmu společně s ostatními Spalovači okolo něj.~ */
  IF ~~ THEN REPLY #7079 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #7810 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #7759 /* ~Spalovač tě nejspíš slyšel, ale nezvedl hlavu.~ */
  IF ~~ THEN REPLY #7811 /* ~"Na chvíli bych si s tebou popovídal."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7812 /* ~Naslouchej jejich chvalozpěvu.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7813 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7814 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7815 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7816 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7817 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7818 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7819 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #7760 /* ~Všichni Spalovači začali stejným rytmem i melodií. Žalm vystoupal do křiku co pár minut, pak zvolna slábl podoben ozvěně. Když úplně utichl, Spalovači pronesli několik vět velebících 'Skutečnou smrt', a následně žalm znova opakovali.~ */
  IF ~~ THEN REPLY #7820 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #7821 /* ~Odejdi a neruš je ve zpěvu.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #7761 /* ~Spalovač zvedl svou hlavu. Neustal v liturgii, udržuje stejné tempo a tón jako ostatní Spalovači kolem něj.~ */
  IF ~~ THEN REPLY #7823 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7824 /* ~"Oplakávám někoho mrtvého."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7825 /* ~"Jsem tu za někoho, kdo ztratil jiného."~ */ GOTO 35
  IF ~~ THEN REPLY #7828 /* ~"Promiň, že jsem tě obtěžoval. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #7762 /* ~Spalovač tě ignoruje, sklonil hlavu a jal se pokračovat ve chvalozpěvu.~ */
  IF ~~ THEN REPLY #7839 /* ~"Promluvil bych si s tebou."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7840 /* ~Naslouchej jejich chvalozpěvu.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7841 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7842 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7843 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7844 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7845 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7846 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7847 /* ~Opusť ho v klidu.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #7763 /* ~Modlící se náhle zarazil a prohlédl si tě. "Cítíš zármutek nad někým, kdo zemřel?"~ */
  IF ~~ THEN REPLY #7848 /* ~"Ne. Smrt ve mně neburcuje emoce."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #7849 /* ~Pravda: "Ano... Věřím, že nesu vinu za smrt nevinné ženy, Deionarry. Nejen, že se trápím kvůli jejímu skonu, ale cítím se zodpovědný i za zármutek, jenž postihl jejího otce."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #7850 /* ~Pravda: "Ano... Nesu vinu za smrt nevinného muže, Xachariáše. Jeho odchod mě zarmoutil."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #7851 /* ~Pravda: "Ano... Nesu vinu za smrt mnoha nevinných v mnoha sférách. Muka, kterými jsem postižen díky tomuto zjištění, jsou více, než mohu unést.."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7852 /* ~"To jsem nebyl já. Existuje žena, manželka Angyara, která ztratila syna. Muka na ni těžce doléhají."~ */ GOTO 9
  IF ~~ THEN REPLY #7853 /* ~Lež: "Ne, tedy, mluvím za přítele, oh... Adahna - je jedním z těch, co se rmoutí kvůli mrtvým."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7854 /* ~"Ano, tahle nedávná smrt mi nadělila hodně bolesti a utrpení."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"Tedy, oh, předtím než k tomu dojdu, ještě bych se přeptal na..."~ */ GOTO 20
  IF ~~ THEN REPLY #14817 /* ~"Omlouvám se... Přeřekl jsem se. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #7764 /* ~"Budeme oplakávat dohromady bolest tvou a jejího otce, jestli to nebude vadit."~ */
  IF ~~ THEN REPLY #7856 /* ~"Jestli můžeš, velice to zmenší utrpení mé i jejího otce."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7857 /* ~"Ne, není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #7765 /* ~"Budeme oplakávat tvou bolest, jestli po tom toužíš."~ */
  IF ~~ THEN REPLY #7858 /* ~"Jestli můžeš, hodně to uleví jeho bolesti."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #7859 /* ~"Ne, není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #7766 /* ~"Budeme truchlit nad tvou bolestí, je-li to tvé přání."~ */
  IF ~~ THEN REPLY #7860 /* ~"Jestli je to v tvých silách, hodně mu to uleví."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #7861 /* ~"Ne, to není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #7767 /* ~"Budeme oplakávat její bolest, pokud proti tomu nic nemáš."~ */
  IF ~~ THEN REPLY #7862 /* ~"Pakliže můžeš, hodně to uleví jeho bolesti."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #7863 /* ~"Ne, není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #7768 /* ~"Budeme truchlit nad jeho bolestí, pakliže nejsi proti."~ */
  IF ~~ THEN REPLY #7864 /* ~"Jestli je to v tvých silách, hodně to uleví jeho bolesti."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #7865 /* ~"Ne, není zapotřebí. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #7769 /* ~Spalovač přitakal a pokračuje v chvalozpěvu.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7866 /* ~Naslouchej jejich chvalozpěvu.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7867 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7868 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7869 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7870 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7871 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7872 /* ~Naslouchej jejich chvalozpěvu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7873 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.7 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #7770 /* ~Spalovač sklonil hlavu a pokračuje v chvalozpěvu.~ */
  IF ~~ THEN REPLY #7874 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #7771 /* ~"Oplakáváme."~ */
  IF ~~ THEN REPLY #7875 /* ~"Kteří zemřeli?"~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7876 /* ~"Koho především oplakáváš?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7877 /* ~"Koho především oplakáváš?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7878 /* ~"Koho především oplakáváš?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7879 /* ~"Koho především oplakáváš?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7880 /* ~"Koho především oplakáváš?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7881 /* ~"Koho především oplakáváš?"~ */ GOTO 40
  IF ~~ THEN REPLY #7882 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7772 /* ~"My netruchlíme nad mrtvými. Oplakáváme živé."~ */
  IF ~~ THEN REPLY #7883 /* ~"Živé?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7884 /* ~"Koho především oplakáváš?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7885 /* ~"Koho především oplakáváš?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7886 /* ~"Koho především oplakáváš?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7887 /* ~"Koho především oplakáváš?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7888 /* ~"Koho především oplakáváš?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7889 /* ~"Koho především oplakáváš?"~ */ GOTO 40
  IF ~~ THEN REPLY #7890 /* ~"Já... chápu. Trochu bych změnil téma a zeptal se na..."~ */ GOTO 20
  IF ~~ THEN REPLY #7891 /* ~"Myslím, že už jsem slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #7773 /* ~"Oplakáváme ty živé, kteří želí ztráty zesnulých."~ */
  IF ~~ THEN REPLY #7892 /* ~"Proč?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7893 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7894 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7895 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7896 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7897 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7898 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #7899 /* ~"Ach... tak. Měl bych ještě pár otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #7900 /* ~"Už jsem myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7774 /* ~"Odchod duše do Skutečné smrti pravidelně přináší neblahé následky. Když zesnulé máme rádi, nezřídka doprovází jejich odchod zármutek a pocit ztráty."~ */
  IF ~~ THEN REPLY #7901 /* ~"Což je přirozené..."~ */ GOTO 17
  IF ~~ THEN REPLY #7902 /* ~"Takže ty truchlíš za živé, protože..."~ */ GOTO 17
  IF ~~ THEN REPLY #7903 /* ~"Pravá smrt?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7904 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7905 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7906 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7907 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7908 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7909 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #7910 /* ~"Já... rozumím. Mám ještě pár dalších otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #7911 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #7781 /* ~"Zármutek a ztráta patří mezi silné emoce. Takové city poutají živé k životu, nedovolují jim dosáhnout Skutečné smrti, když nadejde jejich čas a smrt si pro ně přijde. Oplakáváme živé zasažené takovými emocemi."~ */
  IF ~~ THEN REPLY #7912 /* ~"Pravá smrt?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7913 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7914 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7915 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7916 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7917 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7918 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #7919 /* ~"Já... rozumím. Mám ještě pár dalších otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #7920 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #7782 /* ~"To je to, čemu se někdy říká konečná smrt. Skutečná smrt je osvobození se z téhle stinné, bolestné existence. Oproštění se od emocí. Oproštění se od pohnutek. Osvobození se z těchhle ulit."~ */
  IF ~~ THEN REPLY #7921 /* ~"To zní jako absolutní zapomnění."~ */ GOTO 19
  IF ~~ THEN REPLY #7922 /* ~"Proto truchlíš za živé?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7923 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7924 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7925 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7926 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7927 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7928 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #7929 /* ~"Ach tak. Mám ještě pár dalších otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #7930 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7783 /* ~Spalovač pokýval hlavou. "Někteří tomu tak říkají. Ale není to zrovna přesné."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7931 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7932 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7933 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7934 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7935 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7936 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #7937 /* ~"To je nepodstatné. Měl bych pro tebe ještě nějaké otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #7938 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #7784 /* ~Spalovač čeká.~ */
  IF ~~ THEN REPLY #7939 /* ~"Co to děláš?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #7940 /* ~"Proč se tvoje píseň změnila?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7941 /* ~"Truchlím za jednoho mrtvého."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7942 /* ~"Jsem tu kvůli jedné osobě, která ztratila blízkého."~ */ GOTO 35
  IF ~~ THEN REPLY #7943 /* ~"Rád bych si poslechl tvůj žalozpěv."~ */ GOTO 11
  IF ~~ THEN REPLY #7944 /* ~"Promiň, že jsem  obtěžoval. Zatím se měj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #7785 /* ~Všichni Spalovači zaujali stejný rytmus i melodii. Narozdíl od žalmu, který jsi slyšel, když jsi poprvé míjel památník, tento žalm jako by cykloval podoben vzdouvání a poklesu vln na pobřeží. Toto přirovnání ti oživilo paměť... ~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #7945 /* ~Zkus si vzpomenout...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #7946 /* ~Zkus si vzpomenout...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #7947 /* ~Zkus si vzpomenout...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #7948 /* ~Zkus si vzpomenout...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #7949 /* ~Zažeň vzpomínky.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #7786 /* ~Matně si vzpomínáš, jak jsi stál na vzdáleném břehu... na jiném místě, někde daleko odsud. Kdosi tam byl s tebou, žena. Stojící po tvé levici, už i mimo periferní vidění; a ty si ji nemůžeš vybavit. Čím víc si zkoušíš vzpomenout, tím víc mizí...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7950 /* ~Vzpamatuj se.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7951 /* ~Vzpamatuj se.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #7787 /* ~...a ještě jednou jsi stanul před oplakávajícími Spalovači. Jejich žalm téměř utichl. Pak ustali ve zpěvu, pronesli několik vět velebících 'Skutečnou smrt', a poté žalm znovu opakovali.~ */
  IF ~~ THEN REPLY #7952 /* ~Poslouchej znovu.~ */ GOTO 21
  IF ~~ THEN REPLY #7953 /* ~Zanechej ho u jeho žalozpěvů.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #7788 /* ~Všichni Spalovači zaujali stejný rytmus i melodii. Narozdíl od žalmu, který zpívali, když jsi poprvé míjel památník, tento žalm byl jaksi vysoko posazen, zněl jako svist šípu nebo větru svištícího kaňonem. Tento žalm začíná i končí rychle - a když Spalovači utichnou, nastává čas pro velebení 'Skutečné smrti' - několik vět, po kterých se vrací zpět ke zpěvu žalmu.~ */
  IF ~~ THEN REPLY #7954 /* ~"Mám pro tebe ještě pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #7955 /* ~Zanechej ho u jeho žalozpěvů.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #7789 /* ~Všichni Spalovači zaujali stejný rytmus i melodii. Narozdíl od žalmu, který jsi slyšel prvně při cestě kolem pomníku, tento žalm, jakkoliv plný syrové energie je nepředvídatelný - mění se vždy, když vyjde z jiných úst. Navzdory tomu, jak moc se mění každým okamžikem, jeden Spalovač druhého výborně doplňují. Když žalm dospěl ke svému konci, Spalovači společně velebí 'Skutečnou smrt' několika větami, po nichž se vrací ke zpěvu.~ */
  IF ~~ THEN REPLY #7956 /* ~"Mám pro tebe ještě pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #7957 /* ~Zanechej ho u jeho žalozpěvů.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #7790 /* ~Narozdíl od žalmu, který jsi slyšel, když jsi poprvé míjel památník, tento žalm se sestává toliko z jednoho tónu, vyluzovaného hrdly přítomných Spalovačů po několik minut... připomíná ti zvuk velkého zvonu. Spalovači po ukončení zpěvu zůstávají chvíli zticha a až pak pronáší několik vět, velebení 'Skutečné smrti', po němž se žalm znova opakuje.~ */
  IF ~~ THEN REPLY #7958 /* ~"Mám pro tebe ještě pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #7959 /* ~Zanechej ho u jeho žalozpěvů.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #7791 /* ~Narozdíl od žalmu, který jsi slyšel prvně při cestě kolem pomníku, je tenhle žalm jemnější; tak, že místy skoro splývá s hlukem z ulice. Asi po minutě Spalovači úplně utichnou, aby se následně pustili do velebení 'Skutečné smrti'. Po několika větách začínají znova zpívat žalm.~ */
  IF ~~ THEN REPLY #7960 /* ~"Mám pro tebe ještě pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #7961 /* ~Zanechej ho u jeho žalozpěvů.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #7792 /* ~Spalovač se na tebe prázdně zahleděl. "Náš žalm se nezměnil. Pokračujeme ve stejném žalmu, kterým jsme začali."~ */
  IF ~~ THEN REPLY #7962 /* ~"Tvůj zpěv se změnil... rozpoznávám rozdíl v tónu a rytmu."~ */ GOTO 29
  IF ~~ THEN REPLY #7963 /* ~"Tak fajn, zapomeň na to."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #7793 /* ~Spalovač potřásl hlavou. "Potom jsi to ty, kdo se změnil." ~ */
  IF ~~ THEN REPLY #7964 /* ~"Rád bych se zeptal ještě na něco..."~ */ GOTO 20
  IF ~~ THEN REPLY #7965 /* ~"Možná že ano. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.1 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #7794 /* ~"Oplakávám Iannise. Byl zasažen ztrátou své první a jediné dcery, Deionarry."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7966 /* ~"Deionarra? Už jsem o ní slyšel. Nevíš, jak zemřela?"~ */ JOURNAL #27450 /* ~Spalovači mi řekli, že oplakávají muže jménem Iannis, který je nejspíš otec ducha, kterého jsem potkal v Márnici. Možná by Iannis mohl vědět něco více o vztahu mezi Deionarrou a mnou...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7967 /* ~"Měl bych ještě nějaké otázky..."~ */ JOURNAL #27451 /* ~Spalovači mi řekli, že oplakávají muže jménem Iannis, který ztratil svou jedinou dceru Deionarru. Z nějakého důvodu mi ty jména připadají známá, ale nedokážu si je zařadit.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7968 /* ~"Děkuji ti. To by bylo prozatím vše."~ */ JOURNAL #27451 /* ~Spalovači mi řekli, že oplakávají muže jménem Iannis, který ztratil svou jedinou dceru Deionarru. Z nějakého důvodu mi ty jména připadají známá, ale nedokážu si je zařadit.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.2 13.5 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #7795 /* ~"Truchlíme pro tvůj zármutek nad zesnulými."~ */
  IF ~~ THEN REPLY #7969 /* ~"Už jsem se z toho vzpamatoval. Ten, za něhož jsi truchlil před naším rozhovorem, to potřebuje víc než já."~ */ GOTO 34
  IF ~~ THEN REPLY #7970 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #7971 /* ~"Děkuji ti. To by bylo prozatím vše."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.3 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #7796 /* ~"Oplakáváme Angyarovu ženu, jenž cítí zármutek nad zesnulými."~ */
  IF ~~ THEN REPLY #7972 /* ~"Ona už se z toho vzpamatovala. Ten, za něhož jsi truchlil před naším rozhovorem, to potřebuje víc než ona."~ */ GOTO 34
  IF ~~ THEN REPLY #7973 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #7974 /* ~"Děkuji ti. To by bylo prozatím vše."~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.4 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #7797 /* ~"Oplakáváme Adahna, který cítí zármutek nad zesnulým."~ */
  IF ~~ THEN REPLY #7975 /* ~"Err... Adahn už se z toho vzpamatoval. Ten, za něhož jsi truchlil před naším rozhovorem, to potřebuje víc než on."~ */ GOTO 34
  IF ~~ THEN REPLY #7976 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #7977 /* ~"Děkuji ti. To by bylo prozatím vše."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #7798 /* ~Spalovač přitakal, pak sklonil hlavu a pokračoval v liturgii.~ */
  IF ~~ THEN REPLY #7978 /* ~"Měl bych ještě nějaké otázky..."~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #7979 /* ~Poslouchej.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #7980 /* ~Odejdi.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #7799 /* ~Modlící se náhle zarazil a prohlédl si tě. "Cítí ten, o němž mluvíš, bolest a zármutek kvůli někomu, kdo je mrtev?"~ */
  IF ~~ THEN REPLY #7981 /* ~"Ne. Vůbec to neovlivňuje jejich emoce."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7982 /* ~"Ano. Jistá žena, Žena-Angyarova, ztratila syna. Její život teď doprovází trýzeň."~ */ GOTO 9
  IF ~~ THEN REPLY #7983 /* ~Lež: "Err, ano... můj přítel, err... Adahn... právě ztratil někoho blízkého. Cítí smutek po oné zemřelé osobě."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7984 /* ~"Ano, ta náhlá smrt jim přinesla nával bolesti a utrpení."~ */ GOTO 38
  IF ~~ THEN REPLY #7985 /* ~"Omlouvám se, ale... asi jsem se spletl. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #7800 /* ~"Budeme truchlit nad tvou bolestí, jestli po tom toužíš."~ */
  IF ~~ THEN REPLY #7986 /* ~"Kdybys byl tak hodný, moc by mi to ulehčilo."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #7987 /* ~"Ne, to nebude potřeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #7801 /* ~"Okolnosti provázející její smrt mi nejsou známy."~ */
  IF ~~ THEN REPLY #7988 /* ~"Měl bych ještě pár otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #7989 /* ~"Tak dobrá. To by bylo prozatím vše."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #7802 /* ~"Budeme oplakávat jejich bolest, pokud jim to nebude vadit."~ */
  IF ~~ THEN REPLY #7990 /* ~"Kdybys byl tak hodný, určitě by jim to moc ulehčilo."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #7991 /* ~"Ne, to nebude potřeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 4.7 11.6
  SAY #7803 /* ~Narozdíl od žalmu, který jsi slyšel, když jsi poprvé míjel památník, je těžší tón tohoto žalmu rozeznat. Během naslouchání zjišťuješ, že jeho zvuk zni prapodivně ztlumený, jako by ho sám vzduch pohlcoval. Žalm Spalovačů ztichne zhruba po minutě, aby se oddali velebení 'Skutečné smrti'. Vyřknou několik vět, po nichž se žalm znova opakuje.~ */
  IF ~~ THEN REPLY #7992 /* ~"Měl bych pro tebe pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #7993 /* ~Zanechej ho u jeho žalozpěvů.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.6 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #7804 /* ~"Oplakáváme toho, o kom jsi řekl, že cítí zármutek nad zesnulým."~ */
  IF ~~ THEN REPLY #7994 /* ~"Ta osoba se už z toho vzpamatovala. Ten, pro něhož jsi truchlil před naším rozhovorem, to potřebuje víc než ona."~ */ GOTO 34
  IF ~~ THEN REPLY #7995 /* ~"Měl bych pro tebe ještě pár otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #7996 /* ~"Děkuji ti. To by prozatím bylo všechno."~ */ GOTO 12
END
