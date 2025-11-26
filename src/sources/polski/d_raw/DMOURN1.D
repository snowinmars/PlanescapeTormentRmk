// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7078 /* ~Grabarz ten ubrany jest w długie ciemne szaty. W ich rękawach ukrył swoje dłonie. Ma pochyloną głowę i w określonym tempie, wraz z otaczającymi go Grabarzami, snuje pieśń.~ */
  IF ~~ THEN REPLY #7079 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #7810 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #7759 /* ~Wydaje się, że cię usłyszał, nie podnosi jednakże wzroku.~ */
  IF ~~ THEN REPLY #7811 /* ~"Chciałbym porozmawiać z tobą przez chwilę."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7812 /* ~Wsłuchaj się w ich śpiew.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7813 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7814 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7815 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7816 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7817 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7818 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7819 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #7760 /* ~Wszyscy Grabarze utrzymują taki sam ton i rytm. Co kilka minut pieśń wzmaga się, stając się prawie krzykiem, po czym zanika powoli w przypominający echo sposób. Gdy już kończy ona wybrzmiewać, Grabarze recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swą pieśń na powrót.~ */
  IF ~~ THEN REPLY #7820 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #7821 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #7761 /* ~Grabarz unosi głowę. Nie przestaje śpiewać - wciąż utrzymuje to samo tempo i rytm, co otaczający go Grabarze.~ */
  IF ~~ THEN REPLY #7823 /* ~"Co robicie?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7824 /* ~"Opłakuję zmarłą osobę."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7825 /* ~"Przyszedłem w imieniu osoby, która straciła kogoś."~ */ GOTO 35
  IF ~~ THEN REPLY #7828 /* ~"Wybacz, że ci przeszkodziłem. Żegnam."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #7762 /* ~Grabarz ignoruje cię. Pochyla głowę i wznawia śpiew.~ */
  IF ~~ THEN REPLY #7839 /* ~"Chciałbym z tobą porozmawiać."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7840 /* ~Wsłuchaj się w ich śpiew.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7841 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7842 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7843 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7844 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7845 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7846 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7847 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #7763 /* ~Opłakujący przerywa nagle i zaczyna ci się przyglądać. "Czy cierpisz z powodu tych, którzy odeszli?"~ */
  IF ~~ THEN REPLY #7848 /* ~"Nie. Śmierć nie jest w stanie zachwiać moimi emocjami."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #7849 /* ~Prawda: "Tak... Jestem przekonany, że ponoszę odpowiedzialność za śmierć niewinnej kobiety, Deionarry. Ale nie tylko to mnie gnębi. Obwiniam się również za żal, o jaki przyprawiłem jej ojca."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #7850 /* ~Prawda: "Tak... Czuje się odpowiedzialny za śmierć niewinnego mężczyzny, Zachariasza. Jego odejście bardzo mnie dotknęło."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #7851 /* ~Prawda: "Tak... Obwiniam się za śmierć wielu niewinnych osób z różnych zakątków sfer. Ciężar cierpienia spowodowany tą świadomością przerasta to, co potrafiłbym sam udźwignąć."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7852 /* ~"Nie ja. Jest pewna kobieta - Żona Angyara - która straciła syna. Balast cierpienia bardzo jej ciąży."~ */ GOTO 9
  IF ~~ THEN REPLY #7853 /* ~Kłamstwo: "Nie... Mówię w imieniu przyjaciela, ech... Adahna. To on jest tym, który cierpi z powodu zmarłej osoby."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7854 /* ~"Tak. Ta niedawna śmierć dostarczyła mi wiele cierpienia i bólu."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"Cóż, uch, zanim się zgodzę, mam parę pytań do ciebie..."~ */ GOTO 20
  IF ~~ THEN REPLY #14817 /* ~"Wybacz... Przejęzyczyłem się. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #7764 /* ~"Będziemy opłakiwać ból twój i jej ojca, jeśli nie macie nic przeciwko temu."~ */
  IF ~~ THEN REPLY #7856 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie ból jej ojca i mój."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7857 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #7765 /* ~"Będziemy opłakiwać twój ból, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #7858 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie mój ból."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #7859 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #7766 /* ~"Będziemy opłakiwać twój ból, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #7860 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie mój ból."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #7861 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #7767 /* ~"Będziemy opłakiwać jej ból, jeśli nie ma nic przeciwko temu."~ */
  IF ~~ THEN REPLY #7862 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie jej ból."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #7863 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #7768 /* ~"Będziemy opłakiwać jego ból, jeśli nie ma nic przeciwko temu."~ */
  IF ~~ THEN REPLY #7864 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie jego ból."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #7865 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #7769 /* ~Grabarz kiwa głową i wznawia śpiew.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7866 /* ~Wsłuchaj się w ich śpiew.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7867 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7868 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7869 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7870 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7871 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7872 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7873 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.7 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #7770 /* ~Grabarz pochyla głowę i wznawia śpiew.~ */
  IF ~~ THEN REPLY #7874 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #7771 /* ~"Jesteśmy w żałobie."~ */
  IF ~~ THEN REPLY #7875 /* ~"Kto umarł?"~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7876 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7877 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7878 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7879 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7880 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7881 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #7882 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7772 /* ~"My nie opłakujemy umarłych. Opłakujemy żywych."~ */
  IF ~~ THEN REPLY #7883 /* ~"Żywych?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7884 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7885 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7886 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7887 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7888 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7889 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #7890 /* ~"Ro... zumiem. Mam kilka innych pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7891 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #7773 /* ~"Opłakujemy żywych, którzy odczuwają stratę z powodu tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #7892 /* ~"Dlaczego?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7893 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7894 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7895 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7896 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7897 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7898 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #7899 /* ~"Ro... zumiem. Mam kilka innych pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7900 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7774 /* ~"Bardzo często, gdy dusza odchodzi w stan Prawdziwej Śmierci, pozostawia za sobą ślad zmartwienia. Gdy odejdzie ktoś, kogo kochaliśmy, towarzyszy temu cierpienie i poczucie straty."~ */
  IF ~~ THEN REPLY #7901 /* ~"Co jest czymś naturalnym..."~ */ GOTO 17
  IF ~~ THEN REPLY #7902 /* ~"Opłakujecie więc żywych, gdyż..."~ */ GOTO 17
  IF ~~ THEN REPLY #7903 /* ~"Prawdziwej Śmierci?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7904 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7905 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7906 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7907 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7908 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7909 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #7910 /* ~"Ro... zumiem. Mam kilka innych pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7911 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #7781 /* ~"Cierpienie i świadomość bycia opuszczonym to silne przeżycia. Tego typu emocje sprawiają, iż żywi zakotwiczają się silniej w tej egzystencji, co uniemożliwia im osiągnięcie Prawdziwej Śmierci, gdy nadejdzie ich czas. Opłakujemy żywych, którymi targają takie uczucia."~ */
  IF ~~ THEN REPLY #7912 /* ~"Prawdziwej Śmierci?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7913 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7914 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7915 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7916 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7917 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7918 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #7919 /* ~"Ro... zumiem. Mam kilka innych pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7920 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #7782 /* ~"Zwie się ją czasami śmiercią ostateczną. Prawdziwa Śmierć jest wyzwoleniem z tej złudnej, przepełnionej bólem egzystencji. To uwolnienie się od emocji. Uwolnienie od rozsądku. Wyzwolenie się z tych skorup."~ */
  IF ~~ THEN REPLY #7921 /* ~"Zdaje się to być odejściem w niepamięć."~ */ GOTO 19
  IF ~~ THEN REPLY #7922 /* ~"I dlatego opłakujecie żywych?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7923 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7924 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7925 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7926 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7927 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7928 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #7929 /* ~"Ro... zumiem. Mam kilka innych pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7930 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7783 /* ~Grabarz przytakuje. "Niektórzy ją tak nazywają, ale to nie jest zbytnio trafna nazwa."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7931 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7932 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7933 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7934 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7935 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7936 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #7937 /* ~"Mniejsza z tym. Mam kilka innych pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7938 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #7784 /* ~Grabarz czeka.~ */
  IF ~~ THEN REPLY #7939 /* ~"Co robicie?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #7940 /* ~"Dlaczego wasza pieśń się zmieniła?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7941 /* ~"Opłakuję zmarłą osobę."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7942 /* ~"Jestem tu w imieniu osoby, która kogoś straciła."~ */ GOTO 35
  IF ~~ THEN REPLY #7943 /* ~"Posłucham waszego śpiewu."~ */ GOTO 11
  IF ~~ THEN REPLY #7944 /* ~"Wybacz, że ci przeszkodziłem. Żegnam."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #7785 /* ~Wszyscy Grabarze utrzymują jednakowy ton i rytm. Ta pieśń jednak, w odróżnieniu od tej, którą usłyszałeś za pierwszym razem, zmienia się cyklicznie niczym fale uderzające o morskie wybrzeże - to napierające, to cofające się. Przemyśleniu temu towarzyszy przebłysk wspomnień...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #7945 /* ~Spróbuj sobie przypomnieć...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #7946 /* ~Spróbuj sobie przypomnieć...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #7947 /* ~Spróbuj sobie przypomnieć...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #7948 /* ~Spróbuj sobie przypomnieć...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #7949 /* ~Odrzuć wspomnienia.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #7786 /* ~Przypominasz sobie mgliście, jak stoisz na dalekim brzegu... gdzieś, w jakimś oddalonym stąd miejscu. Jest ktoś z tobą - kobieta. Stoi po twojej lewej stronie, poza twym polem widzenia i nie możesz jej dostrzec. Gdy próbujesz sięgnąć głębiej pamięcią, wszystko zanika...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7950 /* ~Wróć do rzeczywistości.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7951 /* ~Wróć do rzeczywistości.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #7787 /* ~...i ponownie stoisz pośród opłakujących Grabarzy. Ich pieśń ucichła tak, iż prawie zlała się z ciszą. Kończą ją, recytują kilka wersów opiewających Prawdziwą Śmierć, po czym rozpoczynają swe śpiewy na nowo.~ */
  IF ~~ THEN REPLY #7952 /* ~Wsłuchaj się jeszcze raz.~ */ GOTO 21
  IF ~~ THEN REPLY #7953 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #7788 /* ~Wszyscy Grabarze utrzymują jednakowy ton i rytm. Ta pieśń jednak, w odróżnieniu od tej, którą usłyszałeś za pierwszym razem, śpiewana jest znacznie wyżej, brzmi niczym świst wypuszczanej strzały, niczym hulający w wąwozie wiatr. Pieśń ta zaczyna się i kończy szybko - kiedy Grabarze milkną, recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swe śpiewy na nowo.~ */
  IF ~~ THEN REPLY #7954 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #7955 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #7789 /* ~Wszyscy Grabarze utrzymują jednakowy ton i rytm. Ta pieśń jednak, w odróżnieniu od tej, którą usłyszałeś za pierwszym razem, ma w sobie jakąś energię i spontaniczność - jest nieprzewidywalna, brzmienie zdaje się zmieniać nawet po tym, gdy słowa opuszczą już ich usta. Niezależnie od tego, jak często następują w tej pieśni zmiany, Grabarze pozostają w doskonałej synchronizacji. Kiedy ich pieśń milknie na tyle, iż stać się prawie ciszą, recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swe śpiewy na nowo.~ */
  IF ~~ THEN REPLY #7956 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #7957 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #7790 /* ~Pieśń ta, w odróżnieniu od tej zasłyszanej za pierwszym razem, to tylko pojedyncza nuta ciągnąca się przez kilka minut... Przypomina ci to bicie wielkiego dzwonu. Grabarze milkną na chwilę, gdy cichnie ich nuta, recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swą 'pieśń' na nowo.~ */
  IF ~~ THEN REPLY #7958 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #7959 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #7791 /* ~Pieśń ta, w odróżnieniu od tej zasłyszanej za pierwszym razem, brzmi znacznie subtelniej. Czasami staje się tak cicha, że zdaje się zlewać z dobiegającym z ulic gwarem. Tak gdzieś po minucie Grabarze milką, recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swą 'pieśń' na nowo.~ */
  IF ~~ THEN REPLY #7960 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #7961 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #7792 /* ~Grabarz spogląda na ciebie bez wyrazu. "Nasza pieśń się nie zmieniła. Odkąd zaczęliśmy, śpiewamy ją tak samo."~ */
  IF ~~ THEN REPLY #7962 /* ~"Wasza pieśń się zmieniła... Słyszę różnicę w brzmieniu i rytmie."~ */ GOTO 29
  IF ~~ THEN REPLY #7963 /* ~"Dobrze, mniejsza z tym."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #7793 /* ~Grabarz potrząsa głową. "A może to ty się zmieniłeś?"~ */
  IF ~~ THEN REPLY #7964 /* ~"Mam kilka innych pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7965 /* ~"Być może. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.1 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #7794 /* ~"Opłakuję Iannisa. Boleje on po stracie swej pierwszej i jedynej córki, Deionarry."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7966 /* ~"Deionarry? Słyszałem o niej. Wiesz może, jak umarła?"~ */ JOURNAL #27450 /* ~Grabarze żałobnicy powiedzieli, że opłakują człowieka o imieniu Iannis, który najwyraźniej jest ojcem kobiety, której ducha spotkałem w Kostnicy. Może Iannis będzie coś wiedział o mnie i Deionarze...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7967 /* ~"Mam jeszcze kilka pytań..."~ */ JOURNAL #27451 /* ~Grabarze żałobnicy powiedzieli, że opłakują człowieka o imieniu Iannis, który stracił swą jedyną córkę, Deionarrę. Z jakiegoś powodu imiona te wydały mi się dziwnie znajome, ale nie wiem dokładnie o kogo chodzi.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7968 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ JOURNAL #27451 /* ~Grabarze żałobnicy powiedzieli, że opłakują człowieka o imieniu Iannis, który stracił swą jedyną córkę, Deionarrę. Z jakiegoś powodu imiona te wydały mi się dziwnie znajome, ale nie wiem dokładnie o kogo chodzi.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.2 13.5 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #7795 /* ~"Opłakujemy twój żal po tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #7969 /* ~"Doszedłem już do siebie. Ta osoba, którą opłakiwałeś, zanim zaczęliśmy rozmowę, potrzebuje tego bardziej niż ja."~ */ GOTO 34
  IF ~~ THEN REPLY #7970 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7971 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.3 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #7796 /* ~"Opłakujemy Żonę Angyara bolejącą z powodu tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #7972 /* ~"Doszła już do siebie. Ta osoba, którą opłakiwałeś, zanim zaczęliśmy rozmowę, potrzebuje tego bardziej niż ona."~ */ GOTO 34
  IF ~~ THEN REPLY #7973 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7974 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.4 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #7797 /* ~"Opłakujemy Adahna cierpiącego z powodu tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #7975 /* ~"Uch... Adahn doszedł już do siebie. Ta osoba, którą opłakiwałeś, zanim zaczęliśmy rozmowę, potrzebuje tego bardziej niż on."~ */ GOTO 34
  IF ~~ THEN REPLY #7976 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7977 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #7798 /* ~"Grabarz przytaknął, po czym pochylił głowę i wznowił śpiew.~ */
  IF ~~ THEN REPLY #7978 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #7979 /* ~Słuchaj.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #7980 /* ~Odejdź.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #7799 /* ~Opłakujący przerywa nagle i zaczyna ci się przypatrywać. "Czy osoba, o której mówisz, czuje żal po tych, którzy odeszli?"~ */
  IF ~~ THEN REPLY #7981 /* ~"Nie. Nie zachwiało to ich emocjami."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7982 /* ~"Tak. Pewna kobieta - żona Angyara - straciła syna. Ciężar cierpienia leży jej na sercu."~ */ GOTO 9
  IF ~~ THEN REPLY #7983 /* ~Kłamstwo: "Ech, tak... Mój przyjaciel, hmm... Adahn... dopiero co stracił kogoś bliskiego. Bardzo boleje z powodu osoby, która odeszła."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7984 /* ~"Tak. Ta niedawna śmierć zesłała im wiele cierpienia i bólu."~ */ GOTO 38
  IF ~~ THEN REPLY #7985 /* ~"Wybacz... Przejęzyczyłem się. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #7800 /* ~"Będziemy opłakiwać twój ból, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #7986 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie mój ból."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #7987 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #7801 /* ~"Okoliczności jej śmierci nie są mi znane."~ */
  IF ~~ THEN REPLY #7988 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7989 /* ~"Świetnie. To już wszystko, co chciałem wiedzieć."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #7802 /* ~"Będziemy opłakiwać ich ból, jeśli nie mają nic przeciwko temu."~ */
  IF ~~ THEN REPLY #7990 /* ~"Gdybyś mógł, znacznie uśmierzyłoby to ich ból."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #7991 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 4.7 11.6
  SAY #7803 /* ~W odróżnieniu od tej zasłyszanej za pierwszym razem, ciężko jest określić ton obecnej pieśni. Gdy słuchasz, zdajesz sobie sprawę, że jej brzmienie ulega dziwnemu zniekształceniu - tak, jakby powietrze samo w sobie wsysało pieśń.
Po upływie około minuty Grabarze milką, recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swą 'pieśń' na nowo.~ */
  IF ~~ THEN REPLY #7992 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #7993 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.6 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #7804 /* ~"Opłakujemy osobę, o której mówiłeś, że czuje ból po tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #7994 /* ~"Osoba ta doszła już do siebie. Ta osoba, którą opłakiwałeś, zanim zaczęliśmy rozmowę, potrzebuje tego bardziej niż ona."~ */ GOTO 34
  IF ~~ THEN REPLY #7995 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #7996 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ GOTO 12
END
