// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDHALL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDHALL~

IF ~~ THEN BEGIN 0 // from:
  SAY #822 /* ~Bevor Morte seine Tirade beenden kann, beginnt der Schreiber heftig zu husten. Kurz darauf läßt der Husten nach, und der Schreiber atmet wieder keuchend.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 104
END

IF ~~ THEN BEGIN 1 // from:
  SAY #826 /* ~Bevor Morte seinen Satz beenden kann, blitzen die grauen Augen des Schreibers zu dir herüber. "Die Jahre lasten schwer auf mir, Rastloser." Er legt seinen Federkiel ab. "... doch an Taubheit leide ich noch nicht."~ */
  IF ~~ THEN REPLY #827 /* ~"'Rastloser'? Kennst du mich?"~ */ DO ~SetGlobal("0202_Dhall_Face_Player","AR0202",1)
~ GOTO 44
END

IF ~~ THEN BEGIN 2 // from: 21.0
  SAY #829 /* ~"Kennst du die Frau nicht, deren Leiche unten in der Gedenkhalle bestattet ist? Ich dachte, du wärst früher mit ihr gereist..." Dhall scheint gleich wieder husten zu müssen, dann  holt er Luft. "Oder etwa nicht?"~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5070 /* ~"Wo ist ihre Leiche?"~ */ GOTO 42
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5071 /* ~"Ich weiß nichts über sie."~ */ GOTO 43
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #5072 /* ~"Sie behauptet, mich zu kennen, aber ich kann mich nicht an sie erinnern."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #5073 /* ~"Du sagst, da wären noch andere. Wer ist denn noch hier?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #5074 /* ~"Du sagst, da wären noch andere. Wer ist denn noch hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #6063 /* ~"Könnte schon sein. Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 9
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #6064 /* ~"Ich werde mal runter in die Gedenkhalle gehen und gucken, ob ich ihre Leiche finden kann."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #13288 /* ~"Vielleicht nicht. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 9.0
  SAY #832 /* ~Dhall starrt dich an. "Bist du sicher?"~ */
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",0)
~ THEN REPLY #830 /* ~"Ja. Wirklich eine gute Verkleidung."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",2)
~ JOURNAL #39468 /* ~Ich hab dem Schreiber Dhall von Vaxis und seiner Verkleidung erzählt. Dhall sollte demnächst den Rest der Staubmenschentruppe losschicken, um Vaxis ranzukriegen.~ */ GOTO 4
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",1)
~ THEN REPLY #831 /* ~"Ja. Wirklich eine gute Verkleidung."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dhall_2","GLOBALGood",-3)
~ JOURNAL #39469 /* ~Ich hatte zwar Vaxis versprochen, daß ich ihn nicht an die Staubmenschen verraten würde, aber was soll's? Ich hab dem Schreiber Dhall von ihm und seiner Verkleidung erzählt. Dhall sollte demnächst den Rest der Staubmenschentruppe losschicken, um Vaxis ranzukriegen.~ */ GOTO 4
  IF ~~ THEN REPLY #834 /* ~"Nein, wenn ich mich recht besinne, hab' ich's mir vielleicht nur eingebildet. Hör mal, ich hätte da noch ein paar Fragen..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #833 /* ~"Ich..." Dhall hat einen neuen Hustenanfall. Nach ein oder zwei Minuten hat er genügend Atem geschöpft, um zu sagen. "Ich... werde sofort die Wachen benachrichtigen."~ */
  IF ~~ THEN REPLY #836 /* ~"Vielen Dank." Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #837 /* ~"Ausgezeichnet. Leb wohl."~ */ GOTO 11
END

IF ~  Global("Dhall","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #838 /* ~Dieser Schreiber sieht sehr alt aus... Seine Haut ist faltig und eine Spur gelb, wie altes Pergament. Dunkelgraue Augen liegen in einem eckigen Gesicht, und ein langer, weißer Bart fließt wie ein Wasserfall an seinen Roben hinunter. Sein Atem geht stoßweise und unregelmäßig, doch selbst sein gelegentliches Husten verlangsamt das Kratzen seines Federfüllers nicht.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #839 /* ~"Sei gegrüßt."~ */ EXTERN ~DMORTE~ 102
  IF ~  !NearbyDialog("DMorte")
Global("Mortuary_Alert","GLOBAL",0)
~ THEN REPLY #835 /* ~"Sei gegrüßt."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
Global("Mortuary_Alert","GLOBAL",1)
~ THEN REPLY #5058 /* ~"Sei gegrüßt."~ */ GOTO 6
  IF ~~ THEN REPLY #5060 /* ~Laß den alten Schreiber in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #841 /* ~Die grauen Augen funkeln, als er von seinem Buch aufblickt. "Ich ahnte schon, daß du für die Übergriffe in der Leichenhalle verantwortlich bist. So..." Er hüstelt und holt keuchend Luft. "So gelangst du bestimmt nicht ins nächste Leben."~ */
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #842 /* ~"Ich habe mich nur verteidigt. "Ich hätte da ein paar Fragen, bevor ich verschwinde..."~ */ GOTO 9
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #843 /* ~"Einen kleinen Tod mit euch Leichenanbetern zu teilen betrachte ich nicht gerade als Verbrechen, muß ich sagen. Ich hätte aber ein paar Fragen an dich..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dhall_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Dhall","GLOBAL",0)
~ THEN REPLY #5062 /* ~"Kennst du mich?"~ */ GOTO 44
  IF ~~ THEN REPLY #5063 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #844 /* ~Der Schreiber hört auf, in sein Buch hineinzukritzeln, dann schaut er auf. Seine Augen gleichen zwei Nägeln, die aus seinem Schädel ragen. "Du..." Er klingt müde, als hätte er dieselben Worte schon oft vorher gesagt. "Du bist also aus deinem Schlaf erwacht und zu deinem Traum zurückgekehrt." In seiner Stimme klingt jetzt etwas Respekt mit. "Freut mich, dich wieder zu sehen, Rastloser."~ */
  IF ~~ THEN REPLY #845 /* ~"'Rastloser'? Kennst du mich?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 8 // from: 22.0
  SAY #851 /* ~"Versteh doch. Deine Existenz ist für sie reine Blasphemie. Viele unseres Bundes würden dich einäschern lassen... wenn sie von deinem Zustand wüßten."~ */
  IF ~~ THEN REPLY #940 /* ~"Du bist ein Staubmensch. Aber du scheinst kein Interesse daran zu haben, mich zu töten. Warum nicht?"~ */ GOTO 23
  IF ~~ THEN REPLY #911 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #913 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6038 /* ~"Mehr will ich gar nicht hören. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
  SAY #852 /* ~"Gut. Was wolltest du wissen?"~ */
  IF ~  Global("Vaxis","GLOBAL",1)
!Dead("Vaxis")
Global("Vaxis_Leave","GLOBAL",0)
Global("Betray_Vaxis","GLOBAL",0)
~ THEN REPLY #854 /* ~"Wußtest du schon, daß sich in den östlichen Kammern jemand als Zombie verkleidet hat?"~ */ GOTO 3
  IF ~~ THEN REPLY #857 /* ~"Was ist das für ein Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #855 /* ~"Wie bin ich hierhergekommen?"~ */ GOTO 15
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
Global("AR0200_Visited","GLOBAL",0)
~ THEN REPLY #858 /* ~"Kannst du mir erzählen, wie man hier rauskommt?"~ */ GOTO 13
  IF ~~ THEN REPLY #5069 /* ~"Weißt du, wer ich bin?"~ */ JOURNAL #39460 /* ~Ich hab Dhall gefragt, ob er mich kennt, und er meinte, daß er wenig über mich wissen würde - und noch weniger über meine Gefährten, die mich in der Vergangenheit begleitet haben. Sie sollen in der Leichenhalle liegen... Vielleicht würde ihr Anblick ja ein paar Erinnerungen wachrufen.~ */ GOTO 21
  IF ~~ THEN REPLY #5748 /* ~"Was machst du da?"~ */ GOTO 25
  IF ~~ THEN REPLY #6065 /* ~"Du hörst dich krank an. Geht es dir nicht gut?"~ */ GOTO 26
  IF ~~ THEN REPLY #41663 /* ~"Nichts... Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #859 /* ~"Du befindest dich in der Leichenhalle, Rastloser. Du bist... wiedergekommen..." Ein Hustenanfall hindert ihn am Weiterreden. Nach einer Weile beruhigt er sich und atmet wieder keuchend. "... hier wartet, wer den Schatten dieses Lebens bald verlassen wird."~ */
  IF ~~ THEN REPLY #861 /* ~"Erzähl mir über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #860 /* ~"'Rastloser'?"~ */ GOTO 38
  IF ~~ THEN REPLY #862 /* ~"Schatten dieses Lebens?"~ */ GOTO 33
  IF ~~ THEN REPLY #863 /* ~"'Wiedergekommen', sagst du...? War ich denn schon öfter hier?"~ */ GOTO 14
  IF ~~ THEN REPLY #864 /* ~"Wie bin ich hierhergekommen?"~ */ GOTO 15
  IF ~~ THEN REPLY #865 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #866 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
  SAY #867 /* ~Als du dich umdrehst, um zu gehen, sagt Dhall: "Glaube mir, ich beneide dich nicht, Rastloser. So wiedergeboren zu werden wie du, wäre für mich ein unerträglicher Fluch. Aber du mußt dich damit abfinden. Irgendwann wird dich dein Pfad wieder hierher führen..." Dhall hustet; dabei rasselt es in seiner Brust. "Dies ist der Weg aller Dinge aus Fleisch und Blut."~ */
  IF ~~ THEN REPLY #41564 /* ~"Dann treffen wir uns vielleicht wieder, Dhall."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.3 2.4 42.2 42.3 43.1 43.2
  SAY #868 /* ~"Die gibt es zweifellos, doch kenne ich ihre Namen nicht, noch weiß ich, wo sie liegen. Ein solcher wie du hat einen Pfad verlassen, den viele gegangen sind, doch nur wenige überlebt haben." Dhall gestikuliert um dich herum. "Alle Toten kommen hierher. Einige müssen einst mit dir gereist sein."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #870 /* ~"Wo ist diese Frau, die du erwähntest"?~ */ GOTO 42
  IF ~~ THEN REPLY #871 /* ~"Deine Erklärungen hören sich logisch an. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #872 /* ~"Gut, dann werde ich nach ihnen suchen. Wer weiß, vielleicht rufen sie mein Erinnerungsvermögen wieder wach. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #875 /* ~"Hmmm... Das Haupttor ist der offensichtlichste Ausgang, aber dort wird niemand außer Staubmenschen vorbeigelassen..." Dhall fällt in ein ruckartiges Husten und fährt dann fort. "...Einer der Führer am Haupttor hat einen Schlüssel dafür, aber da müßtest du schon sehr gute Überredungskünste anwenden, damit er es dir öffnet."~ */
  IF ~~ THEN REPLY #876 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #877 /* ~"Dann leb wohl, Dhall."
~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #878 /* ~"Ja, *wieder*. Du bist bereits viele Male hierher gebracht worden, Rastloser. Ich hatte gehofft, diesmal könnte dein letztes Mal sein, wenn ich mir die Wunden so ansehe, die du erlitten hast." Er seufzt. "Wann gibst du endlich deine Leidenschaften auf und verläßt diesen Schatten eines Lebens?"~ */
  IF ~~ THEN REPLY #880 /* ~"'Rastloser'?"~ */ GOTO 38
  IF ~~ THEN REPLY #881 /* ~"Wunden?"~ */ GOTO 34
  IF ~~ THEN REPLY #883 /* ~"Schatten des Lebens?"~ */ GOTO 33
  IF ~~ THEN REPLY #879 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #5751 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5752 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 9.2 10.4 32.5
  SAY #885 /* ~Dhall schnaubt verächtlich, als würde er sich nur ungern erinnern. "Du wurdest auf deinem verrotteten Wagen in die Leichenhalle kutschiert, Rastloser. Angesichts der Anzahl an ergebenen Untertanen, die zusammen mit dir stinkend und eiternd auf dem Wagen lagen, hätte man dich glatt für einen blaublütigen Edelmann halten können."~ */
  IF ~~ THEN REPLY #886 /* ~"Ich kam auf einem Karren hier an?"~ */ JOURNAL #39463 /* ~Anscheinend hat Pharod meine Leiche in einem Karren hierher gebracht, zusammen mit einem Berg anderer Leichen. War ich wirklich *tot*, als ich hier ankam?~ */ GOTO 16
  IF ~~ THEN REPLY #887 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #888 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #889 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #890 /* ~"Ja... dein Knochengerüst steckte irgendwo mitten im Haufen und vermischte seine Sekrete mit dem restlichen Leichenberg." Dhall hustet wieder heftig los; nach ein paar Minuten kommt er wieder zu Atem. "Dein 'Hofmarschall' Pharod war wie immer sehr erfreut über die paar lausigen Kupferstücke, die er dafür bekam, daß er euch vor der Leichenhalle ablud."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #891 /* ~"Wer ist dieser Pharod?"~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #892 /* ~"Hört sich an, als ob du Pharod nicht leiden kannst."~ */ GOTO 35
  IF ~~ THEN REPLY #893 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #894 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5753 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #895 /* ~"Er ist ein... Totensammler." Dhall holt schwer Atem und fährt fort. "In unserer Stadt gibt es Leute, die die Körper all derer aufstöbern, die den Pfad des Wahren Todes beschritten haben, und sie dann zu uns bringen, um sie bestatten zu lassen."~ */
  IF ~~ THEN REPLY #897 /* ~"Wo kann ich diesen 'Pharod' finden?"~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #898 /* ~"Hört sich an, als ob du Pharod nicht leiden kannst."~ */ GOTO 35
  IF ~~ THEN REPLY #899 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #5754 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6031 /* ~"Dann werde ich mich gleich mal nach diesem Pharod umsehen. Leb wohl, Dhall."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 29.1 31.0 35.1 36.1
  SAY #900 /* ~"Wenn alles beim Alten bleibt, Rastloser, ist es sehr viel wahrscheinlicher, daß Pharod dich findet und wieder hierher bringt, als daß du die Schlammgrube findest, in der er sich gerade suhlt."~ */
  IF ~~ THEN REPLY #902 /* ~"Trotzdem muß ich ihn finden."~ */ GOTO 19
  IF ~~ THEN REPLY #903 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #904 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5755 /* ~"Ich werde das Gefühl nicht los, daß sich unsere Wege kreuzen werden. Leb wohl, Dhall."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.4 18.0 18.3 29.3 31.2
  SAY #901 /* ~Eine leise Warnung schleicht sich in Dhalls Tonfall. "Suche nicht nach Pharod, Rastloser. Ich bin sicher, daß sich der Kreis einfach wieder schließen wird, du nicht weiser sein wirst und Pharod darum letztendlich um ein paar Kupferstücke reicher. Nimm den Tod an, Rastloser. Setze den Kreis deiner Leiden nicht fort."~ */
  IF ~~ THEN REPLY #906 /* ~"Ich *muß* ihn einfach finden. Weißt du, wo er ist?"~ */ JOURNAL #39464 /* ~Dhall hat mir erzählt, daß ich Pharod in einem Ort jenseits der Leichenhalle finden kann, der 'Stock' genannt wird. Er schien nicht so recht zu wollen, daß ich Pharod aufspüre, aber auf der anderen Seite hat er auch nicht sein Gedächtnis verloren und ist auch nicht in der Leichenhalle aufgewacht - er kann seine Meinung also für sich behalten. Dhall hat gemeint, ich solle ein paar Leute im Stock nach Pharods Aufenthaltsort fragen.~ */ GOTO 20
  IF ~~ THEN REPLY #905 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #907 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5756 /* ~"Ich kann nicht länger mit dir sprechen. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #908 /* ~Dhall hält kurz inne. Dann spricht er, wenn auch scheinbar widerwillig. "Ich weiß ja nicht, unter welchem Rinnstein Pharod sich gerade versteckt, aber ich glaube, er könnte sich irgendwo jenseits der Tore zur Leichenhalle, im Stock, aufhalten. Vielleicht weiß ja dort jemand, wo er steckt."~ */
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #910 /* ~"Hört sich an, als ob du Pharod nicht leiden kannst."~ */ GOTO 35
  IF ~~ THEN REPLY #909 /* ~"Kannst du mir noch mehr über die Leichenhalle erzählen?"~ */ GOTO 32
  IF ~~ THEN REPLY #5757 /* ~"Vielen Dank." Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6030 /* ~"Dann werde ich dorthin gehen und mich umhören. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 21 // from: 9.4
  SAY #914 /* ~"Ich weiß herzlich wenig von dir, Rastloser. Ich weiß ein wenig mehr von denen, die mit dir gereist sind und sich nun in unserer Obhut befinden." Dhall seufzt. "Ich bitte dich, nicht länger andere zu bitten, sich dir anzuschließen, Rastloser - wo du gehst, da geht das Leid. Trage deine Last allein."~ */
  IF ~~ THEN REPLY #921 /* ~"Ich bin also mit anderen zusammen gereist? Und sie sind hier?"~ */ JOURNAL #39461 /* ~Dhall hat mir erzählt, daß eine der Frauen, die mit mir gereist sind, in der Gedenkhalle im Erdgeschoß der Leichenhalle bestattet ist.~ */ GOTO 2
  IF ~~ THEN REPLY #922 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #923 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 47.0
  SAY #915 /* ~Dhall seufzt. "Man sagt, es gebe Seelen, die den Wahren Tod niemals erreichen können. Der Tod hat sie aufgegeben, und ihre Namen werden niemals in das Totenbuch eingetragen werden. Vom Tod wiederzuerwachen, wie du es getan hast... deutet darauf hin, daß du eine dieser Seelen bist. Deine Existenz ist in unserem Bund inakzeptabel."~ */
  IF ~~ THEN REPLY #917 /* ~"'Inakzeptabel'? Das klingt nicht so, als ob ich einen besonders guten Stand hätte."~ */ GOTO 8
  IF ~~ THEN REPLY #918 /* ~"Ich verstehe. Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #919 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #920 /* ~"Ich denke, ich habe jetzt genug gehört. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 23 // from: 8.0
  SAY #924 /* ~"Weil es nicht richtig ist, dir unsere Überzeugungen aufzuzwingen. Du mußt diese Schattendasein aus freien Stücken aufgeben, nicht etwa, weil du gezwungen wirst." Dhall scheint augenblicklich loshusten zu müssen, doch er schafft es, sich zu beherrschen. "Solange ich meinen Posten behalte, werde ich dein Recht schützen, deine eigene Wahrheit zu suchen."~ */
  IF ~~ THEN REPLY #927 /* ~"Was ist denn dein Posten?"~ */ GOTO 25
  IF ~~ THEN REPLY #928 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #925 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6039 /* ~"Mehr will ich gar nicht hören. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 24 // from: 25.0
  SAY #929 /* ~"Ich bin derjenige, der die Hüllen katalogisiert, die in unsere Hallen kommen, Rastloser." Dhall hat einen Hustenanfall, dann fängt er sich wieder. "Nur ich sehe die Gesichter derer, die auf unseren Totenbanken liegen. Das Dunkel deiner Existenz ist bei mir sicher aufgehoben."~ */
  IF ~~ THEN REPLY #1305 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #6041 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6042 /* ~"Es sieht so aus, als ob du was bei mir gut hättest. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 9.5 23.0
  SAY #930 /* ~"Ich bin ein Schreiber, ein Katalogisierer aller Hüllen, die in die Leichenhalle kommen." Dhall hustet wieder und atmet dann tief ein. "Solange der Strom der Leichen durch die Leichenhalle fließt, werde ich auf meinem Posten bleiben."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #931 /* ~"Du sagst, daß ich hier schon öfter war. Wie kommt es dann aber, daß die Staubmenschen mich nicht wiedererkennen?"~ */ JOURNAL #39462 /* ~Dhall hat mir gesagt, daß er es war, der meine wiederholten Besuche der Leichenhalle vor den Staubmenschen geheim gehalten hat. Da er der Schreiber im Empfangsraum ist, ist er einer der wenigen, die meine Leiche sehen, wenn sie hier reingebracht wird.~ */ GOTO 24
  IF ~~ THEN REPLY #932 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #933 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6040 /* ~"Also gut. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 26 // from: 9.6
  SAY #934 /* ~"Ich bin dem Wahren Tod jetzt nahe, Rastloser. Nicht mehr lange, und ich werde die Ewige Grenze überschreiten und den ersehnten Frieden finden. Ich bin dieser sterblichen Sphäre überdrüssig..." Dhall seufzt schwer. "Ich habe auf den Ebenen schon alles erlebt, was einer wie ich erleben kann."~ */
  IF ~~ THEN REPLY #935 /* ~"'Ewige Grenze'?"~ */ GOTO 41
  IF ~~ THEN REPLY #936 /* ~"Bist du da sicher? Vielleicht gibt es eine Möglichkeit, wie ich dir helfen kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dhall_1","GLOBALGood",1)
~ GOTO 27
  IF ~~ THEN REPLY #937 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #960 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #938 /* ~"Ich möchte nicht ewig oder noch einmal leben, Rastloser. Ich könnte es nicht ertragen."~ */
  IF ~~ THEN REPLY #1303 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #1304 /* ~"Einverstanden. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 28 // from: 2.2 42.1
  SAY #939 /* ~"Sie *sprach* mit dir?" Dhall beginnt zu flüstern. "Hast du *Fieber*, Rastloser? Sie hat den Wahren Tod erreicht und ist für dich unerreichbar."~ */
  IF ~~ THEN REPLY #981 /* ~"Sie hat mit mir gesprochen, Dhall. Ihr Geist wohnt hier."~ */ GOTO 30
  IF ~~ THEN REPLY #982 /* ~"Vielleicht hab' ich mir's auch nur eingebildet. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #873 /* ~"Ich bin mir nicht sicher, daß sie den Wahren Tod erreicht hat. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 29 // from: 36.0
  SAY #941 /* ~Dhall überlegt kurz. "Kann gut sein. Vermißt du etwas... etwas Wertvolles?" Seine Stimme wird schwächer; er runzelt die Stirn. "Nicht, daß Pharod irgend etwas verschmähen würde, das nicht fest an dein Knochengerüst angewachsen ist, und manchmal reicht auch das nicht aus, um seine Raffgier zu bremsen."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #942 /* ~"Ich vermisse ein Journal."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #943 /* ~"Hmmm. Weißt du, wo Pharod zu finden ist?"~ */ GOTO 18
  IF ~~ THEN REPLY #944 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #6026 /* ~"Vielleicht sollte ich doch mal mit Pharod reden. Leb wohl, Dhall."~ */ GOTO 19
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #874 /* ~"Ich verstehe. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #945 /* ~Dhall zeichnet mit einem Finger einen Halbkreis vor sich in die Luft. "Dies ist ein schlechtes Omen, Rastloser. Ich bete, daß du diese Unterhaltung geträumt hast... Und doch fürchte ich, daß das nicht der Fall ist."~ */
  IF ~~ THEN REPLY #946 /* ~"Vielleicht hab' ich mir's auch nur eingebildet. Ich hätte aber noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #947 /* ~"Vielleicht können wir darauf später zurückkommen. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #850 /* ~"Ein Journal? Wenn es irgendeinen Wert hatte, hat Pharod es wahrscheinlich ergattert."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #948 /* ~"Wo kann ich diesen Pharod finden?"~ */ GOTO 18
  IF ~~ THEN REPLY #949 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #6027 /* ~"Dann sollte ich ihn wohl aufsuchen. Leb wohl, Dhall."~ */ GOTO 19
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #6066 /* ~"Ich verstehe. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 32 // from: 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
  SAY #950 /* ~"Hierher werden die Toten gebracht, um beerdigt oder verbrannt zu werden. Es ist unsere Verantwortlichkeit als Staubmenschen, uns um die Toten zu kümmern, um die, die diesen Schatten von einem Leben hinter sich gelassen haben und nun den Pfad des Wahren Todes gehen." Dhalls Stimme senkt sich besorgt. "Deine Wunden müssen dich schwer mitgenommen haben, wenn du diesen Ort nicht wiedererkennst. Er ist ja beinahe ein Zuhause für dich."~ */
  IF ~~ THEN REPLY #951 /* ~"Schatten des Lebens?"~ */ GOTO 33
  IF ~~ THEN REPLY #953 /* ~"Wahrer Tod?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #954 /* ~"Staubmenschen?"~ */ GOTO 47
  IF ~~ THEN REPLY #955 /* ~"Sigil?"~ */ GOTO 37
  IF ~~ THEN REPLY #956 /* ~"Wunden?"~ */ GOTO 34
  IF ~~ THEN REPLY #846 /* ~"Wie bin ich hierhergekommen?"~ */ GOTO 15
  IF ~~ THEN REPLY #5735 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6062 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 33 // from: 10.2 14.2 32.0 41.0 47.2 49.0
  SAY #957 /* ~"Ja, ein Schatten. Siehst du, Rastloser, dieses Leben... ist nicht echt. Dein Leben, mein Leben, das sind nur Schatten, ein Aufflackern dessen, was das Leben einmal war. Dieses 'Leben' ist der Ort, wo wir landen, *nachdem* wir gestorben sind. Und hier bleiben wir dann... in der Falle. In einem Käfig. So lange, bis wir den Wahren Tod erreichen können."~ */
  IF ~~ THEN REPLY #958 /* ~"Wahrer Tod?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #959 /* ~"Was bringt dich zu dem Glauben, dieses Leben wäre nicht echt?"~ */ GOTO 50
  IF ~~ THEN REPLY #5736 /* ~"Erzähl mir noch etwas über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #5737 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5738 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 14.1 32.4
  SAY #961 /* ~"Ja, die Wunden, die deinen Körper zieren... sie sehen aus, als hätten sie jeden anderen auf den Pfad des Wahren Todes befördert. Und doch scheinen viele bereits verheilt zu sein." Dhall muß kurz heftig husten, dann kann er weitersprechen. "Aber dies sind nur die oberflächlichen Wunden."~ */
  IF ~~ THEN REPLY #1301 /* ~"Nur oberflächliche Wunden? Wie meinst du das?"~ */ JOURNAL #39470 /* ~Dhall hat gemeint, die Verwundungen, die ich davongetragen habe, seien nichts im Vergleich zu den Verwundungen meiner Seele... Er ging sogar soweit zu behaupten, die erlittenen Verwundungen wären schuld an meinem Gedächtnisverlust und der seelische Schaden wäre vielleicht schlimmer als Amnesie. Kein schöner Gedanke - warum kann ich nicht hie und da mal ein paar *gute* Neuigkeiten erhalten?~ */ GOTO 53
  IF ~~ THEN REPLY #1302 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #5746 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5747 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from: 16.1 17.1 20.0
  SAY #962 /* ~"Einige von ihnen achte ich, Rastloser." Dhall holt tief Atem. "Pharod nicht. Er trägt seinen schlechten Ruf wie ein Ehrenabzeichen zur Schau und geht allzu frei mit dem Hab und Gut der Toten um. Er ist ein Postenritter, der mit dem größten Ramsch noch Querhandel treibt."~ */
  IF ~~ THEN REPLY #963 /* ~"'Postenritter'?"~ */ GOTO 36
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #964 /* ~"Weißt du, wo ich Pharod finden kann?"~ */ GOTO 18
  IF ~~ THEN REPLY #965 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6028 /* ~"Ermutigend. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #966 /* ~"Ein Postenritter..." Dhall hustet. "... ein Dieb. Alle, die Pharod an unseren Mauern abliefert, kommen mit weniger Würde zu uns, als sie zu Lebzeiten besessen haben. Pharod streift ihnen alles von den Fingern, was er kriegen kann, bevor die Totenstarre einsetzt."~ */
  IF ~~ THEN REPLY #967 /* ~"Hat dieser Pharod etwas von mir genommen?"~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #968 /* ~"Weißt du, wo ich Pharod finden kann?"~ */ GOTO 18
  IF ~~ THEN REPLY #969 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6029 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 37 // from: 32.3
  SAY #970 /* ~"Sigil ist unsere schöne Stadt, Rastloser."~ */
  IF ~~ THEN REPLY #971 /* ~"Erzähl mir noch etwas über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #972 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5758 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 38 // from: 10.1 14.0
  SAY #973 /* ~"Der Name 'Rastloser' ist so gut wie jeder andere..." Dhall atmet schwer. "Irgend etwas hält dich hier fest, nicht wahr? Etwas, das gelöst werden muß, eine Leidenschaft, die gestillt werden muß, bevor du den Wahren Tod erlangen kannst?"~ */
  IF ~~ THEN REPLY #974 /* ~"Den Wahren Tod?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #975 /* ~"Erzähl mir noch etwas über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #5749 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5750 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 39 // from:
  SAY #884 /* ~"Du wirst das tun, was du immer getan hast, Rastloser. Schnapp dir diesen geldgierigen alten Narren, Wurmhaar, und verlang zurück, was dir gehört. Dann kannst du dich wieder deinem sinnlosen Treiben widmen, dich an sinnlosen Aufgaben versuchen, sinnlose Gegenstände sammeln, nur um erneut geschlagen und zu uns zurückgebracht zu werden. Spar dir die Zeit und sprich jetzt mit mir, dann müssen wir dieselbe Unterhaltung nicht noch einmal führen, wenn deine Erinnerungen wieder weg sind."~ */
  IF ~~ THEN REPLY #976 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #977 /* ~"Leb wohl, Dhall."~ */ EXIT
END

IF ~  Global("Dhall","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #978 /* ~Dhall blickt auf, als du näherkommst. "So. Du bist also zurückgekommen..." Dhall holt keuchend Luft, dann wird er von einem heftigen Hustenanfall geschüttelt. Nach einer Weile beruhigt er sich und atmet wieder schwer. "... ich grüße dich erneut, Rastloser."~ */
  IF ~~ THEN REPLY #979 /* ~"Ich hätte da noch ein paar Fragen an dich, Dhall."~ */ GOTO 9
  IF ~~ THEN REPLY #980 /* ~"Macht nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 26.0 52.0
  SAY #983 /* ~"Die Grenze zwischen dem Schatten dieses Lebens und dem Wahren Tod."~ */
  IF ~~ THEN REPLY #984 /* ~"Schatten dieses Lebens?"~ */ GOTO 33
  IF ~~ THEN REPLY #985 /* ~"Wahrer Tod?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #5739 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #5740 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5741 /* ~"Leb wohl, Dhall."
~ */ GOTO 11
END

IF ~~ THEN BEGIN 42 // from: 2.0 12.0 43.0
  SAY #5075 /* ~"Die nordwestliche Gedenkhalle im Stockwerk unter uns. Schau dir diese Totenbahren hier an... ihr Name müßte eigentlich auf einer der Gedenktafeln stehen. Vielleicht hilft das deinem Gedächtnis auf die Sprünge."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5076 /* ~"Ich weiß nicht. Ich kann mich nicht daran erinnern, jemals mit einer Frau gereist zu sein."~ */ GOTO 43
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #5077 /* ~"Nun, sie behauptet, mich zu kennen, aber ich kann mich nicht an sie erinnern."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #5078 /* ~"Du sagst, da wären noch andere. Wer ist denn noch hier?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #5079 /* ~"Du sagst, da wären noch andere. Wer ist denn noch hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #6067 /* ~"Vielleicht gehe ich sie suchen. Ich hätte da noch ein paar andere Fragen an dich, bevor ich gehe..."~ */ GOTO 9
  IF ~~ THEN REPLY #6068 /* ~"Ich werde mal runter in die Gedenkhalle gehen und gucken, ob ich ihre Leiche finden kann."~ */ GOTO 11
END

IF ~~ THEN BEGIN 43 // from: 2.1 42.0
  SAY #5080 /* ~Dhall gibt dir darauf keine Antwort. Er starrt dich einfach stumm an.~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5081 /* ~"Wo kann ich sie finden?"~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #5082 /* ~"Vorhin sagtest du, es wären hier noch andere bestattet, die mit mir gereist sind. Wo sind sie?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #5083 /* ~"Vorhin sagtest du, es wären hier noch andere bestattet, die mit mir gereist sind. Wo sind sie?"~ */ GOTO 12
  IF ~~ THEN REPLY #6069 /* ~"Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #6070 /* ~"Dann leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 44 // from: 1.0 6.2 7.0
  SAY #840 /* ~"Dich kennen? Ich..." In der Stimme des Schreibers schwingt Bitterkeit mit. "Ich habe dich *nie* gekannt, Rastloser. Genauso wenig, wie du dich selbst." Er schweigt einen Moment. "Weil du es vergessen hast, nicht wahr?"~ */
  IF ~~ THEN REPLY #1327 /* ~"Wer *bist* du?"~ */ DO ~SetGlobal("Dhall","GLOBAL",1)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #5728 /* ~"Wie immer, die Frage. Und wie immer, die falsche Frage." Dhall beugt sich etwas nach vorn, aber diese Bewegung löst plötzlich einen Hustenanfall aus. "Ich..." Er schweigt einen Augenblick, bis er wieder zu Atem kommt. "Ich... bin Dhall."~ */
  IF ~~ THEN REPLY #5731 /* ~"Vielleicht kannst du mir ja ein paar Fragen beantworten, Dhall..."~ */ JOURNAL #39459 /* ~Ich habe einen kränklichen Schreiber namens Dhall in der Leichenhalle getroffen. Er wußte, daß ich alles über mich vergessen hatte, noch bevor wir auch nur ein Wort gewechselt hatten. Kannte ich ihn, bevor ich meine Erinnerungen verloren habe? Ich hatte gehofft, ein paar Antworten zu erhalten, aber dieser Ort scheint mehr und mehr Fragen zu gebären.~ */ GOTO 9
  IF ~~ THEN REPLY #5732 /* ~"Für so was hab' ich keine Zeit. Leb wohl."~ */ JOURNAL #39459 /* ~Ich habe einen kränklichen Schreiber namens Dhall in der Leichenhalle getroffen. Er wußte, daß ich alles über mich vergessen hatte, noch bevor wir auch nur ein Wort gewechselt hatten. Kannte ich ihn, bevor ich meine Erinnerungen verloren habe? Ich hatte gehofft, ein paar Antworten zu erhalten, aber dieser Ort scheint mehr und mehr Fragen zu gebären.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #5730 /* ~"Also gut, Rastloser." Dhall nickt. "Aber ich fürchte, daß die Zeit in dieser Angelegenhit nicht dein Feind ist." Er nimmt seinen Federfüller wieder auf. "Wenn du noch etwas zu bereden hast, ich werde hier sein."~ */
  IF ~~ THEN REPLY #40005 /* ~"Ich komme vielleicht wieder. Lebe Wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 32.2
  SAY #847 /* ~"Wir Staubmenschen sind ein Bund, eine Vereinigung jener von uns, die sich der Illusion dieses Lebens bewußt sind. Wir warten auf das kommende Leben und helfen anderen auf ihrer Reise."~ */
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #6032 /* ~"Vielleicht kannst du mir erklären, warum die Staubmenschen mich tot wissen wollen."~ */ GOTO 22
  IF ~~ THEN REPLY #6033 /* ~"Den Wahren Tod?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #6034 /* ~"Schatten, der dieses Leben ist?"~ */ GOTO 33
  IF ~~ THEN REPLY #6035 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #6036 /* ~"Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #6037 /* ~"Dann leb wohl."
~ */ GOTO 11
END

IF ~~ THEN BEGIN 48 // from: 32.1 33.0 38.0 41.1 47.1
  SAY #848 /* ~"Der Wahre Tod ist die Nicht-Existenz. Ein Zustand ohne Vernunft, ohne Empfindung, ohne Leidenschaft." Dhall hustet und sagt schwer atmend. "Ein Zustand der Reinheit."~ */
  IF ~~ THEN REPLY #6043 /* ~"Hört sich an wie Vergessenheit. Warum sollte jemand so was wollen?"~ */ GOTO 49
  IF ~~ THEN REPLY #6044 /* ~"Oh. Kannst du mir noch mehr über die Leichenhalle erzählen?"~ */ GOTO 32
  IF ~~ THEN REPLY #6045 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #6046 /* ~"Ich muß mich jetzt verabschieden. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #849 /* ~"Ist es schlimmer, als im Schatten dessen zu verweilen, was früher einmal Leben war? Ich glaube nicht."~ */
  IF ~~ THEN REPLY #6047 /* ~"Schatten des Lebens?"~ */ GOTO 33
  IF ~~ THEN REPLY #6048 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #6049 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #6050 /* ~"Ich muß mich jetzt verabschieden. Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 50 // from: 33.1
  SAY #853 /* ~"Was läßt dich denken, daß dieses Leben echt *ist*? Schau in dich hinein. Merkst du nicht, daß da etwas fehlt?" Dhall schüttelt seinen Kopf. "Dies ist ein Fegefeuer. Es gibt hier nichts als Leid. Elend. Folter. Das sind doch keine Elemente, die ein 'Leben' ausmachen. Das sind Teile des Käfigs, der uns in diesem Schatten gefangen hält."~ */
  IF ~~ THEN REPLY #6051 /* ~"Ich fürchte du bist ganz und gar dem Fatalismus verfallen. Diese Elemente sind Teil des Lebens, aber doch nicht alles."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dhall_2","GLOBALGood",1)
~ GOTO 51
  IF ~~ THEN REPLY #6052 /* ~"Käfig? Was meinst du damit?"~ */ GOTO 51
  IF ~~ THEN REPLY #6053 /* ~"Genug von deiner Philosophiererei. Was hat dieses ganze Gerede damit zu tun, daß ich hier aufgewacht bin?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dhall_3","GLOBALGood",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0 50.1 50.2
  SAY #5733 /* ~Dhall schüttelt den Kopf. "Leidenschaften haben Gewicht. Sie verankern viele in diesem Schatten des Lebens. Solange man sich an Gefühle klammert, wird man immer wieder in dieses 'Leben' zurückgeboren, immer leidend, niemals die Reinheit des Wahren Todes kennend."~ */
  IF ~~ THEN REPLY #6054 /* ~"Ich... verstehe. Wie entkommt man denn dem Zyklus der Wiedergeburt und erreicht diesen... Wahren Tod?"~ */ GOTO 52
  IF ~~ THEN REPLY #6055 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #6056 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6057 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #5734 /* ~"Töte deine Leidenschaften. Befreie dich von dem Bedürfnis nach Empfindung. Wenn du wirklich gereinigt bist, dann endet der Kreis der Wiedergeburt und du findest Frieden. " Dhall seufzt... es klingt wie das Röcheln des Todes in seiner Kehle. "Jenseits unserer Hüllen, hinter der Ewigen Grenze, liegt der Frieden, den alle Seelen suchen."~ */
  IF ~~ THEN REPLY #6058 /* ~"'Ewige Grenze'?"~ */ GOTO 41
  IF ~~ THEN REPLY #6059 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #6060 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #6061 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 53 // from: 34.0
  SAY #5742 /* ~"Ich spreche von den Verletzungen der Seele. Du hast vieles vergessen, nicht wahr? Vielleicht sind deine wirklichen Wunden viel tiefer als die Narben, die dein Äußeres zieren..." Dhall hustet erneut. "...aber das ist etwas, das nur du allein weißt."~ */
  IF ~~ THEN REPLY #5743 /* ~"Erzähl mir mehr über die Leichenhalle."~ */ GOTO 32
  IF ~~ THEN REPLY #5744 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #5745 /* ~"Leb wohl, Dhall."~ */ GOTO 11
END
