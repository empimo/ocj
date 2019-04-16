-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  Dim 17 fév. 2019 à 20:28
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `main`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `id_qst` int(11) NOT NULL,
  `body` varchar(1024) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `id_qst`, `body`, `is_correct`, `score`) VALUES
(1, 1, 'O(k²)', 0, 0),
(2, 1, 'O(k)', 1, 1),
(3, 1, 'O(nk)', 0, 0),
(4, 2, 'O(sqrt(n))', 0, 0),
(5, 2, 'O(log n)', 1, 1),
(6, 3, 'O(n)', 0, 0),
(7, 3, 'O(log n)', 1, 1),
(8, 4, 'O(log n)', 0, 0),
(9, 4, 'O(Sn)', 1, 1),
(10, 4, 'O(n²)', 0, 0),
(11, 5, 'True', 0, 0),
(12, 5, 'False', 1, 1),
(13, 6, 'True', 1, 1),
(14, 6, 'False', 0, 0),
(15, 7, 'True', 1, 1),
(16, 7, 'False', 0, 0),
(17, 8, 'O(log m)', 0, 0),
(18, 8, 'O(m log m)', 0, 0),
(19, 8, 'O(m)', 1, 4),
(20, 9, 'False', 0, 0),
(21, 9, 'True', 1, 2),
(22, 10, 'False', 1, 2),
(23, 10, 'True', 0, 0),
(24, 11, 'False', 1, 2),
(25, 11, 'True', 0, 0),
(26, 12, 'False', 0, 0),
(27, 12, 'True', 1, 2),
(28, 13, 'False', 1, 2),
(29, 13, 'True', 0, 0),
(30, 14, 'False', 1, 2),
(31, 14, 'True', 0, 0),
(32, 15, 'False', 0, 0),
(33, 15, 'True', 1, 2),
(34, 16, 'False', 0, 0),
(35, 16, 'True', 1, 2),
(36, 17, 'False', 1, 2),
(37, 17, 'True', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `attempt`
--

CREATE TABLE `attempt` (
  `id` int(11) NOT NULL,
  `user_login` varchar(64) NOT NULL,
  `answer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `attempt`
--

INSERT INTO `attempt` (`id`, `user_login`, `answer_id`) VALUES
(10, 'ahmed12', 37),
(11, 'ahmed12', 34),
(12, 'ahmed12', 33),
(13, 'ahmed12', 18),
(14, 'ahmed12', 26),
(15, 'ahmed12', 25),
(16, 'ahmed12', 22),
(17, 'ahmed12', 20),
(18, 'ahmed12', 30),
(19, 'ahmed12', 29),
(20, 'ahmed12', 12),
(21, 'ahmed12', 9),
(22, 'ahmed12', 15),
(23, 'ahmed12', 14),
(24, 'ahmed12', 7),
(25, 'ahmed12', 4),
(26, 'ahmed12', 2),
(27, 'ayoub47', 36),
(28, 'ayoub47', 35),
(29, 'ayoub47', 32),
(30, 'ayoub47', 18),
(31, 'ayoub47', 26),
(32, 'ayoub47', 24),
(33, 'ayoub47', 23),
(34, 'ayoub47', 21),
(35, 'ayoub47', 30),
(36, 'ayoub47', 29),
(37, 'ayoub47', 11),
(38, 'ayoub47', 9),
(39, 'ayoub47', 15),
(40, 'ayoub47', 14),
(41, 'ayoub47', 6),
(42, 'ayoub47', 5),
(43, 'ayoub47', 1),
(44, 'jean_bouteiller', 37),
(45, 'jean_bouteiller', 35),
(46, 'jean_bouteiller', 32),
(47, 'jean_bouteiller', 17),
(48, 'jean_bouteiller', 27),
(49, 'jean_bouteiller', 24),
(50, 'jean_bouteiller', 23),
(51, 'jean_bouteiller', 20),
(52, 'jean_bouteiller', 31),
(53, 'jean_bouteiller', 28),
(54, 'jean_bouteiller', 11),
(55, 'jean_bouteiller', 8),
(56, 'jean_bouteiller', 15),
(57, 'jean_bouteiller', 13),
(58, 'jean_bouteiller', 6),
(59, 'jean_bouteiller', 5),
(60, 'jean_bouteiller', 3),
(61, 'joshuaX4', 37),
(62, 'joshuaX4', 34),
(63, 'joshuaX4', 33),
(64, 'joshuaX4', 17),
(65, 'joshuaX4', 26),
(66, 'joshuaX4', 25),
(67, 'joshuaX4', 22),
(68, 'joshuaX4', 21),
(69, 'joshuaX4', 30),
(70, 'joshuaX4', 29),
(71, 'joshuaX4', 11),
(72, 'joshuaX4', 9),
(73, 'joshuaX4', 15),
(74, 'joshuaX4', 13),
(75, 'joshuaX4', 7),
(76, 'joshuaX4', 5),
(77, 'joshuaX4', 3),
(78, 'hugo_vincenti', 27),
(79, 'hugo_vincenti', 25),
(80, 'hugo_vincenti', 23),
(81, 'hugo_vincenti', 21),
(82, 'hugo_vincenti', 30),
(83, 'hugo_vincenti', 29),
(84, 'hugo_vincenti', 16),
(85, 'hugo_vincenti', 13),
(86, 'howard_s', 16),
(87, 'howard_s', 13),
(88, 'howard_s', 7),
(89, 'howard_s', 4),
(90, 'howard_s', 3),
(91, 'howard_s', 19),
(92, 'howard_s', 37),
(93, 'howard_s', 34),
(94, 'howard_s', 33),
(95, 'bloom14', 16),
(96, 'bloom14', 14),
(97, 'bloom14', 7),
(98, 'bloom14', 5),
(99, 'bloom14', 3),
(100, 'bloom14', 12),
(101, 'bloom14', 10),
(102, 'bloom14', 31),
(103, 'bloom14', 29),
(104, '_lacour', 36),
(105, '_lacour', 34),
(106, '_lacour', 33),
(107, '_lacour', 26),
(108, '_lacour', 25),
(109, '_lacour', 22),
(110, '_lacour', 20),
(111, '_lacour', 11),
(112, '_lacour', 9),
(113, '_lacour', 6),
(114, '_lacour', 4),
(115, '_lacour', 2),
(116, 'baptiste', 36),
(117, 'baptiste', 35),
(118, 'baptiste', 33),
(119, 'baptiste', 19),
(133, 'olivier', 36),
(134, 'olivier', 35),
(135, 'olivier', 33),
(136, 'olivier', 19),
(137, 'olivier', 27),
(138, 'olivier', 25),
(139, 'olivier', 23),
(140, 'olivier', 21);

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `from_id` varchar(128) NOT NULL COMMENT 'from',
  `to_id` varchar(128) NOT NULL COMMENT 'to',
  `tag` int(11) DEFAULT NULL COMMENT '1 for important and 0 for draft and 2 for normal messages',
  `title` tinytext NOT NULL,
  `core` text NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`id`, `from_id`, `to_id`, `tag`, `title`, `core`, `date`) VALUES
(8, 'olivier@qcm', 'bloom14@qcm', 1, 'message de bienvenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\nPlusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d\'humour.', '2019-02-17 20:11:02'),
(9, 'olivier@qcm', 'baptiste@qcm', 1, 'message de bienvenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\nPlusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d\'humour.', '2019-02-17 20:11:33'),
(10, 'olivier@qcm', 'hugo_vincenti@qcm', 1, 'message de bienvenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d\'humour.', '2019-02-17 20:12:12'),
(11, 'olivier@qcm', 'baptiste@qcm', 1, 'Rendez vous', 'Ex turba vero imae sortis et paupertinae in tabernis aliqui pernoctant vinariis, non nulli velariis umbraculorum theatralium latent, quae Campanam imitatus lasciviam Catulus in aedilitate sua suspendit omnium primus; aut pugnaciter aleis certant turpi sono fragosis naribus introrsum reducto spiritu concrepantes; aut quod est studiorum omnium maximum ab ortu lucis ad vesperam sole fatiscunt vel pluviis, per minutias aurigarum equorumque praecipua vel delicta scrutantes.\r\n\r\nRaptim igitur properantes ut motus sui rumores celeritate nimia praevenirent, vigore corporum ac levitate confisi per flexuosas semitas ad summitates collium tardius evadebant. et cum superatis difficultatibus arduis ad supercilia venissent fluvii Melanis alti et verticosi, qui pro muro tuetur accolas circumfusus, augente nocte adulta terrorem quievere paulisper lucem opperientes. arbitrabantur enim nullo inpediente transgressi inopino adcursu adposita quaeque vastare, sed in cassum labores pertulere gravissimos.\r\n\r\nPost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.\r\n\r\nNam quibusdam, quos audio sapientes habitos in Graecia, placuisse opinor mirabilia quaedam (sed nihil est quod illi non persequantur argutiis): partim fugiendas esse nimias amicitias, ne necesse sit unum sollicitum esse pro pluribus; satis superque esse sibi suarum cuique rerum, alienis nimis implicari molestum esse; commodissimum esse quam laxissimas habenas habere amicitiae, quas vel adducas, cum velis, vel remittas; caput enim esse ad beate vivendum securitatem, qua frui non possit animus, si tamquam parturiat unus pro pluribus.\r\n\r\nApud has gentes, quarum exordiens initium ab Assyriis ad Nili cataractas porrigitur et confinia Blemmyarum, omnes pari sorte sunt bellatores seminudi coloratis sagulis pube tenus amicti, equorum adiumento pernicium graciliumque camelorum per diversa se raptantes, in tranquillis vel turbidis rebus: nec eorum quisquam aliquando stivam adprehendit vel arborem colit aut arva subigendo quaeritat victum, sed errant semper per spatia longe lateque distenta sine lare sine sedibus fixis aut legibus: nec idem perferunt diutius caelum aut tractus unius soli illis umquam placet.\r\n\r\nHaec et huius modi quaedam innumerabilia ultrix facinorum impiorum bonorumque praemiatrix aliquotiens operatur Adrastia atque utinam semper quam vocabulo duplici etiam Nemesim appellamus: ius quoddam sublime numinis efficacis, humanarum mentium opinione lunari circulo superpositum, vel ut definiunt alii, substantialis tutela generali potentia partilibus praesidens fatis, quam theologi veteres fingentes Iustitiae filiam ex abdita quadam aeternitate tradunt omnia despectare terrena.\r\n\r\nRestabat ut Caesar post haec properaret accitus et abstergendae causa suspicionis sororem suam, eius uxorem, Constantius ad se tandem desideratam venire multis fictisque blanditiis hortabatur. quae licet ambigeret metuens saepe cruentum, spe tamen quod eum lenire poterit ut germanum profecta, cum Bithyniam introisset, in statione quae Caenos Gallicanos appellatur, absumpta est vi febrium repentina. cuius post obitum maritus contemplans cecidisse fiduciam qua se fultum existimabat, anxia cogitatione, quid moliretur haerebat.\r\n\r\nQuanta autem vis amicitiae sit, ex hoc intellegi maxime potest, quod ex infinita societate generis humani, quam conciliavit ipsa natura, ita contracta res est et adducta in angustum ut omnis caritas aut inter duos aut inter paucos iungeretur.\r\n\r\nQuibus ita sceleste patratis Paulus cruore perfusus reversusque ad principis castra multos coopertos paene catenis adduxit in squalorem deiectos atque maestitiam, quorum adventu intendebantur eculei uncosque parabat carnifex et tormenta. et ex is proscripti sunt plures actique in exilium alii, non nullos gladii consumpsere poenales. nec enim quisquam facile meminit sub Constantio, ubi susurro tenus haec movebantur, quemquam absolutum.\r\n\r\nAltera sententia est, quae definit amicitiam paribus officiis ac voluntatibus. Hoc quidem est nimis exigue et exiliter ad calculos vocare amicitiam, ut par sit ratio acceptorum et datorum. Divitior mihi et affluentior videtur esse vera amicitia nec observare restricte, ne plus reddat quam acceperit; neque enim verendum est, ne quid excidat, aut ne quid in terram defluat, aut ne plus aequo quid in amicitiam congeratur.', '2019-02-17 20:13:29'),
(12, 'olivier@qcm', 'baptiste@qcm', 1, 'projet', 'Ex turba vero imae sortis et paupertinae in tabernis aliqui pernoctant vinariis, non nulli velariis umbraculorum theatralium latent, quae Campanam imitatus lasciviam Catulus in aedilitate sua suspendit omnium primus; aut pugnaciter aleis certant turpi sono fragosis naribus introrsum reducto spiritu concrepantes; aut quod est studiorum omnium maximum ab ortu lucis ad vesperam sole fatiscunt vel pluviis, per minutias aurigarum equorumque praecipua vel delicta scrutantes.\r\n\r\nRaptim igitur properantes ut motus sui rumores celeritate nimia praevenirent, vigore corporum ac levitate confisi per flexuosas semitas ad summitates collium tardius evadebant. et cum superatis difficultatibus arduis ad supercilia venissent fluvii Melanis alti et verticosi, qui pro muro tuetur accolas circumfusus, augente nocte adulta terrorem quievere paulisper lucem opperientes. arbitrabantur enim nullo inpediente transgressi inopino adcursu adposita quaeque vastare, sed in cassum labores pertulere gravissimos.\r\n\r\nPost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.\r\n\r\nNam quibusdam, quos audio sapientes habitos in Graecia, placuisse opinor mirabilia quaedam (sed nihil est quod illi non persequantur argutiis): partim fugiendas esse nimias amicitias, ne necesse sit unum sollicitum esse pro pluribus; satis superque esse sibi suarum cuique rerum, alienis nimis implicari molestum esse; commodissimum esse quam laxissimas habenas habere amicitiae, quas vel adducas, cum velis, vel remittas; caput enim esse ad beate vivendum securitatem, qua frui non possit animus, si tamquam parturiat unus pro pluribus.\r\n\r\nApud has gentes, quarum exordiens initium ab Assyriis ad Nili cataractas porrigitur et confinia Blemmyarum, omnes pari sorte sunt bellatores seminudi coloratis sagulis pube tenus amicti, equorum adiumento pernicium graciliumque camelorum per diversa se raptantes, in tranquillis vel turbidis rebus: nec eorum quisquam aliquando stivam adprehendit vel arborem colit aut arva subigendo quaeritat victum, sed errant semper per spatia longe lateque distenta sine lare sine sedibus fixis aut legibus: nec idem perferunt diutius caelum aut tractus unius soli illis umquam placet.\r\n\r\nHaec et huius modi quaedam innumerabilia ultrix facinorum impiorum bonorumque praemiatrix aliquotiens operatur Adrastia atque utinam semper quam vocabulo duplici etiam Nemesim appellamus: ius quoddam sublime numinis efficacis, humanarum mentium opinione lunari circulo superpositum, vel ut definiunt alii, substantialis tutela generali potentia partilibus praesidens fatis, quam theologi veteres fingentes Iustitiae filiam ex abdita quadam aeternitate tradunt omnia despectare terrena.\r\n\r\nRestabat ut Caesar post haec properaret accitus et abstergendae causa suspicionis sororem suam, eius uxorem, Constantius ad se tandem desideratam venire multis fictisque blanditiis hortabatur. quae licet ambigeret metuens saepe cruentum, spe tamen quod eum lenire poterit ut germanum profecta, cum Bithyniam introisset, in statione quae Caenos Gallicanos appellatur, absumpta est vi febrium repentina. cuius post obitum maritus contemplans cecidisse fiduciam qua se fultum existimabat, anxia cogitatione, quid moliretur haerebat.\r\n\r\nQuanta autem vis amicitiae sit, ex hoc intellegi maxime potest, quod ex infinita societate generis humani, quam conciliavit ipsa natura, ita contracta res est et adducta in angustum ut omnis caritas aut inter duos aut inter paucos iungeretur.\r\n\r\nQuibus ita sceleste patratis Paulus cruore perfusus reversusque ad principis castra multos coopertos paene catenis adduxit in squalorem deiectos atque maestitiam, quorum adventu intendebantur eculei uncosque parabat carnifex et tormenta. et ex is proscripti sunt plures actique in exilium alii, non nullos gladii consumpsere poenales. nec enim quisquam facile meminit sub Constantio, ubi susurro tenus haec movebantur, quemquam absolutum.', '2019-02-17 20:13:54'),
(13, 'ayoub47@qcm', 'baptiste@qcm', 0, 'Question à propos du questionnaire &quot;minimum spanning trees&quot;', 'Chaque trajectoire d’une chaîne de Markov partant d’un état récurrent x se décompose en\r\nune suite infinie d’excursions autour de x. La propriété de Markov forte suggère que ces excursions sont indépendantes et équidistribuées. Cette observation conduit au théorème suivant.\r\nThéorème 0.7.1 (Nombre de passages et temps de retour). Soit (Xn) une chaîne de Markov sur, le nombre de passages en x avant le temps n. Si la\r\nchaîne est irréductible, alors pour tout x ∈ E, et quelque soit la loi initiale?\r\n\r\nCordialement', '2019-02-17 20:17:54'),
(14, 'ayoub47@qcm', 'olivier@qcm', 0, 'Probleme questionnaire &quot;dynamic programming&quot;', 'Eius populus ab incunabulis primis ad usque pueritiae tempus extremum, quod annis circumcluditur fere trecentis, circummurana pertulit bella, deinde aetatem ingressus adultam post multiplices bellorum aerumnas Alpes transcendit et fretum, in iuvenem erectus et virum ex omni plaga quam orbis ambit inmensus, reportavit laureas et triumphos, iamque vergens in senium et nomine solo aliquotiens vincens ad tranquilliora vitae discessit.\r\n\r\nHuic Arabia est conserta, ex alio latere Nabataeis contigua; opima varietate conmerciorum castrisque oppleta validis et castellis, quae ad repellendos gentium vicinarum excursus sollicitudo pervigil veterum per oportunos saltus erexit et cautos. haec quoque civitates habet inter oppida quaedam ingentes Bostram et Gerasam atque Philadelphiam murorum firmitate cautissimas. hanc provinciae inposito nomine rectoreque adtributo obtemperare legibus nostris Traianus conpulit imperator incolarum tumore saepe contunso cum glorioso marte Mediam urgeret et Parthos.\r\n\r\nSiquis enim militarium vel honoratorum aut nobilis inter suos rumore tenus esset insimulatus fovisse partes hostiles, iniecto onere catenarum in modum beluae trahebatur et inimico urgente vel nullo, quasi sufficiente hoc solo, quod nominatus esset aut delatus aut postulatus, capite vel multatione bonorum aut insulari solitudine damnabatur.\r\n\r\nQuaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.\r\n\r\nCum haec taliaque sollicitas eius aures everberarent expositas semper eius modi rumoribus et patentes, varia animo tum miscente consilia, tandem id ut optimum factu elegit: et Vrsicinum primum ad se venire summo cum honore mandavit ea specie ut pro rerum tunc urgentium captu disponeretur concordi consilio, quibus virium incrementis Parthicarum gentium a arma minantium impetus frangerentur.\r\n\r\nIllud tamen clausos vehementer angebat quod captis navigiis, quae frumenta vehebant per flumen, Isauri quidem alimentorum copiis adfluebant, ipsi vero solitarum rerum cibos iam consumendo inediae propinquantis aerumnas exitialis horrebant.\r\n\r\nOb haec et huius modi multa, quae cernebantur in paucis, omnibus timeri sunt coepta. et ne tot malis dissimulatis paulatimque serpentibus acervi crescerent aerumnarum, nobilitatis decreto legati mittuntur: Praetextatus ex urbi praefecto et ex vicario Venustus et ex consulari Minervius oraturi, ne delictis supplicia sint grandiora, neve senator quisquam inusitato et inlicito more tormentis exponeretur.\r\n\r\nAdolescebat autem obstinatum propositum erga haec et similia multa scrutanda, stimulos admovente regina, quae abrupte mariti fortunas trudebat in exitium praeceps, cum eum potius lenitate feminea ad veritatis humanitatisque viam reducere utilia suadendo deberet, ut in Gordianorum actibus factitasse Maximini truculenti illius imperatoris rettulimus coniugem.\r\n\r\nQuapropter a natura mihi videtur potius quam ab indigentia orta amicitia, applicatione magis animi cum quodam sensu amandi quam cogitatione quantum illa res utilitatis esset habitura. Quod quidem quale sit, etiam in bestiis quibusdam animadverti potest, quae ex se natos ita amant ad quoddam tempus et ab eis ita amantur ut facile earum sensus appareat. Quod in homine multo est evidentius, primum ex ea caritate quae est inter natos et parentes, quae dirimi nisi detestabili scelere non potest; deinde cum similis sensus exstitit amoris, si aliquem nacti sumus cuius cum moribus et natura congruamus, quod in eo quasi lumen aliquod probitatis et virtutis perspicere videamur.\r\n\r\nFuerit toto in consulatu sine provincia, cui fuerit, antequam designatus est, decreta provincia. Sortietur an non? Nam et non sortiri absurdum est, et, quod sortitus sis, non habere. Proficiscetur paludatus? Quo? Quo pervenire ante certam diem non licebit. ianuario, Februario, provinciam non habebit; Kalendis ei denique Martiis nascetur repente provincia.', '2019-02-17 20:18:56'),
(15, 'ahmed12@qcm', 'olivier@qcm', 0, 'Question &quot;minimum spanning trees&quot;', 'Eius populus ab incunabulis primis ad usque pueritiae tempus extremum, quod annis circumcluditur fere trecentis, circummurana pertulit bella, deinde aetatem ingressus adultam post multiplices bellorum aerumnas Alpes transcendit et fretum, in iuvenem erectus et virum ex omni plaga quam orbis ambit inmensus, reportavit laureas et triumphos, iamque vergens in senium et nomine solo aliquotiens vincens ad tranquilliora vitae discessit.\r\n\r\nHuic Arabia est conserta, ex alio latere Nabataeis contigua; opima varietate conmerciorum castrisque oppleta validis et castellis, quae ad repellendos gentium vicinarum excursus sollicitudo pervigil veterum per oportunos saltus erexit et cautos. haec quoque civitates habet inter oppida quaedam ingentes Bostram et Gerasam atque Philadelphiam murorum firmitate cautissimas. hanc provinciae inposito nomine rectoreque adtributo obtemperare legibus nostris Traianus conpulit imperator incolarum tumore saepe contunso cum glorioso marte Mediam urgeret et Parthos.\r\n\r\nSiquis enim militarium vel honoratorum aut nobilis inter suos rumore tenus esset insimulatus fovisse partes hostiles, iniecto onere catenarum in modum beluae trahebatur et inimico urgente vel nullo, quasi sufficiente hoc solo, quod nominatus esset aut delatus aut postulatus, capite vel multatione bonorum aut insulari solitudine damnabatur.\r\n\r\nQuaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.\r\n\r\nCum haec taliaque sollicitas eius aures everberarent expositas semper eius modi rumoribus et patentes, varia animo tum miscente consilia, tandem id ut optimum factu elegit: et Vrsicinum primum ad se venire summo cum honore mandavit ea specie ut pro rerum tunc urgentium captu disponeretur concordi consilio, quibus virium incrementis Parthicarum gentium a arma minantium impetus frangerentur.\r\n\r\nIllud tamen clausos vehementer angebat quod captis navigiis, quae frumenta vehebant per flumen, Isauri quidem alimentorum copiis adfluebant, ipsi vero solitarum rerum cibos iam consumendo inediae propinquantis aerumnas exitialis horrebant.\r\n\r\nOb haec et huius modi multa, quae cernebantur in paucis, omnibus timeri sunt coepta. et ne tot malis dissimulatis paulatimque serpentibus acervi crescerent aerumnarum, nobilitatis decreto legati mittuntur: Praetextatus ex urbi praefecto et ex vicario Venustus et ex consulari Minervius oraturi, ne delictis supplicia sint grandiora, neve senator quisquam inusitato et inlicito more tormentis exponeretur.\r\n\r\nAdolescebat autem obstinatum propositum erga haec et similia multa scrutanda, stimulos admovente regina, quae abrupte mariti fortunas trudebat in exitium praeceps, cum eum potius lenitate feminea ad veritatis humanitatisque viam reducere utilia suadendo deberet, ut in Gordianorum actibus factitasse Maximini truculenti illius imperatoris rettulimus coniugem.\r\n\r\nQuapropter a natura mihi videtur potius quam ab indigentia orta amicitia, applicatione magis animi cum quodam sensu amandi quam cogitatione quantum illa res utilitatis esset habitura. Quod quidem quale sit, etiam in bestiis quibusdam animadverti potest, quae ex se natos ita amant ad quoddam tempus et ab eis ita amantur ut facile earum sensus appareat. Quod in homine multo est evidentius, primum ex ea caritate quae est inter natos et parentes, quae dirimi nisi detestabili scelere non potest; deinde cum similis sensus exstitit amoris, si aliquem nacti sumus cuius cum moribus et natura congruamus, quod in eo quasi lumen aliquod probitatis et virtutis perspicere videamur.\r\n\r\nFuerit toto in consulatu sine provincia, cui fuerit, antequam designatus est, decreta provincia. Sortietur an non? Nam et non sortiri absurdum est, et, quod sortitus sis, non habere. Proficiscetur paludatus? Quo? Quo pervenire ante certam diem non licebit. ianuario, Februario, provinciam non habebit; Kalendis ei denique Martiis nascetur repente provincia.', '2019-02-17 20:20:07'),
(16, 'howard_s@qcm', 'olivier@qcm', 0, 'retour : message de bienvenue', 'Cum haec taliaque sollicitas eius aures everberarent expositas semper eius modi rumoribus et patentes, varia animo tum miscente consilia, tandem id ut optimum factu elegit: et Vrsicinum primum ad se venire summo cum honore mandavit ea specie ut pro rerum tunc urgentium captu disponeretur concordi consilio, quibus virium incrementis Parthicarum gentium a arma minantium impetus frangerentur.\r\n\r\nIllud tamen clausos vehementer angebat quod captis navigiis, quae frumenta vehebant per flumen, Isauri quidem alimentorum copiis adfluebant, ipsi vero solitarum rerum cibos iam consumendo inediae propinquantis aerumnas exitialis horrebant.\r\n\r\nOb haec et huius modi multa, quae cernebantur in paucis, omnibus timeri sunt coepta. et ne tot malis dissimulatis paulatimque serpentibus acervi crescerent aerumnarum, nobilitatis decreto legati mittuntur: Praetextatus ex urbi praefecto et ex vicario Venustus et ex consulari Minervius oraturi, ne delictis supplicia sint grandiora, neve senator quisquam inusitato et inlicito more tormentis exponeretur.\r\n\r\nAdolescebat autem obstinatum propositum erga haec et similia multa scrutanda, stimulos admovente regina, quae abrupte mariti fortunas trudebat in exitium praeceps, cum eum potius lenitate feminea ad veritatis humanitatisque viam reducere utilia suadendo deberet, ut in Gordianorum actibus factitasse Maximini truculenti illius imperatoris rettulimus coniugem.\r\n\r\nQuapropter a natura mihi videtur potius quam ab indigentia orta amicitia, applicatione magis animi cum quodam sensu amandi quam cogitatione quantum illa res utilitatis esset habitura. Quod quidem quale sit, etiam in bestiis quibusdam animadverti potest, quae ex se natos ita amant ad quoddam tempus et ab eis ita amantur ut facile earum sensus appareat. Quod in homine multo est evidentius, primum ex ea caritate quae est inter natos et parentes, quae dirimi nisi detestabili scelere non potest; deinde cum similis sensus exstitit amoris, si aliquem nacti sumus cuius cum moribus et natura congruamus, quod in eo quasi lumen aliquod probitatis et virtutis perspicere videamur.\r\n\r\nFuerit toto in consulatu sine provincia, cui fuerit, antequam designatus est, decreta provincia. Sortietur an non? Nam et non sortiri absurdum est, et, quod sortitus sis, non habere. Proficiscetur paludatus? Quo? Quo pervenire ante certam diem non licebit. ianuario, Februario, provinciam non habebit; Kalendis ei denique Martiis nascetur repente provincia.', '2019-02-17 20:21:03'),
(17, 'joshuaX4@qcm', 'olivier@qcm', 0, 'Message de test', 'Quaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.\r\n\r\nCum haec taliaque sollicitas eius aures everberarent expositas semper eius modi rumoribus et patentes, varia animo tum miscente consilia, tandem id ut optimum factu elegit: et Vrsicinum primum ad se venire summo cum honore mandavit ea specie ut pro rerum tunc urgentium captu disponeretur concordi consilio, quibus virium incrementis Parthicarum gentium a arma minantium impetus frangerentur.\r\n\r\nIllud tamen clausos vehementer angebat quod captis navigiis, quae frumenta vehebant per flumen, Isauri quidem alimentorum copiis adfluebant, ipsi vero solitarum rerum cibos iam consumendo inediae propinquantis aerumnas exitialis horrebant.\r\n\r\nOb haec et huius modi multa, quae cernebantur in paucis, omnibus timeri sunt coepta. et ne tot malis dissimulatis paulatimque serpentibus acervi crescerent aerumnarum, nobilitatis decreto legati mittuntur: Praetextatus ex urbi praefecto et ex vicario Venustus et ex consulari Minervius oraturi, ne delictis supplicia sint grandiora, neve senator quisquam inusitato et inlicito more tormentis exponeretur.\r\n\r\nAdolescebat autem obstinatum propositum erga haec et similia multa scrutanda, stimulos admovente regina, quae abrupte mariti fortunas trudebat in exitium praeceps, cum eum potius lenitate feminea ad veritatis humanitatisque viam reducere utilia suadendo deberet, ut in Gordianorum actibus factitasse Maximini truculenti illius imperatoris rettulimus coniugem.\r\n\r\nQuapropter a natura mihi videtur potius quam ab indigentia orta amicitia, applicatione magis animi cum quodam sensu amandi quam cogitatione quantum illa res utilitatis esset habitura. Quod quidem quale sit, etiam in bestiis quibusdam animadverti potest, quae ex se natos ita amant ad quoddam tempus et ab eis ita amantur ut facile earum sensus appareat. Quod in homine multo est evidentius, primum ex ea caritate quae est inter natos et parentes, quae dirimi nisi detestabili scelere non potest; deinde cum similis sensus exstitit amoris, si aliquem nacti sumus cuius cum moribus et natura congruamus, quod in eo quasi lumen aliquod probitatis et virtutis perspicere videamur.', '2019-02-17 20:21:45'),
(18, 'baptiste@qcm', 'olivier@qcm', 0, 'Objet aleatoire de test', 'Quaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.\r\n\r\nCum haec taliaque sollicitas eius aures everberarent expositas semper eius modi rumoribus et patentes, varia animo tum miscente consilia, tandem id ut optimum factu elegit: et Vrsicinum primum ad se venire summo cum honore mandavit ea specie ut pro rerum tunc urgentium captu disponeretur concordi consilio, quibus virium incrementis Parthicarum gentium a arma minantium impetus frangerentur.\r\n\r\nIllud tamen clausos vehementer angebat quod captis navigiis, quae frumenta vehebant per flumen, Isauri quidem alimentorum copiis adfluebant, ipsi vero solitarum rerum cibos iam consumendo inediae propinquantis aerumnas exitialis horrebant.\r\n\r\nOb haec et huius modi multa, quae cernebantur in paucis, omnibus timeri sunt coepta. et ne tot malis dissimulatis paulatimque serpentibus acervi crescerent aerumnarum, nobilitatis decreto legati mittuntur: Praetextatus ex urbi praefecto et ex vicario Venustus et ex consulari Minervius oraturi, ne delictis supplicia sint grandiora, neve senator quisquam inusitato et inlicito more tormentis exponeretur.\r\n\r\nAdolescebat autem obstinatum propositum erga haec et similia multa scrutanda, stimulos admovente regina, quae abrupte mariti fortunas trudebat in exitium praeceps, cum eum potius lenitate feminea ad veritatis humanitatisque viam reducere utilia suadendo deberet, ut in Gordianorum actibus factitasse Maximini truculenti illius imperatoris rettulimus coniugem.\r\n\r\nQuapropter a natura mihi videtur potius quam ab indigentia orta amicitia, applicatione magis animi cum quodam sensu amandi quam cogitatione quantum illa res utilitatis esset habitura. Quod quidem quale sit, etiam in bestiis quibusdam animadverti potest, quae ex se natos ita amant ad quoddam tempus et ab eis ita amantur ut facile earum sensus appareat. Quod in homine multo est evidentius, primum ex ea caritate quae est inter natos et parentes, quae dirimi nisi detestabili scelere non potest; deinde cum similis sensus exstitit amoris, si aliquem nacti sumus cuius cum moribus et natura congruamus, quod in eo quasi lumen aliquod probitatis et virtutis perspicere videamur.', '2019-02-17 20:22:26');

-- --------------------------------------------------------

--
-- Structure de la table `qcm`
--

CREATE TABLE `qcm` (
  `id` int(11) NOT NULL,
  `author_login` varchar(64) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration_seconds` int(11) DEFAULT NULL,
  `is_corrected` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(256) NOT NULL,
  `max_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `qcm`
--

INSERT INTO `qcm` (`id`, `author_login`, `start_time`, `duration_seconds`, `is_corrected`, `title`, `max_score`) VALUES
(1, 'olivier', '2019-02-17 17:27:38', 120, 0, 'Divide and conquer', 3),
(2, 'olivier', '2019-02-17 17:27:39', 60, 0, 'Dynamic Programming', 2),
(3, 'olivier', '2019-02-17 17:27:39', 180, 0, 'Greedy Algorithms', 2),
(4, 'olivier', '2019-02-17 17:27:40', 180, 0, 'Graph Theory 1', 4),
(5, 'olivier', '2019-02-17 17:27:40', 180, 0, 'Graph Theory 2', 8),
(6, 'olivier', '2019-02-17 17:27:40', 180, 0, 'Minimum spanning tree', 4),
(7, 'olivier', '2019-02-17 17:27:41', 180, 0, 'Arrays and sorting', 6);

-- --------------------------------------------------------

--
-- Structure de la table `qst`
--

CREATE TABLE `qst` (
  `id` int(11) NOT NULL,
  `id_qcm` int(11) NOT NULL,
  `body` varchar(1024) NOT NULL,
  `max_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `qst`
--

INSERT INTO `qst` (`id`, `id_qcm`, `body`, `max_score`) VALUES
(1, 1, '\nIn this quiz, we want to efficiently compute binomial coefficients. \nWe have the following assumptions and objectives. We want to use integer arithmetic with a fixed data type, say a 64-bit integer.\nWe assume that the basic arithmetic operations on these integers are all similarly fast, and hence, as performance measure we count these operations without distinguishing between them.\n We assume that the result we will get is small enough to fit into the data type.\nNote: we do not assume, e.g., that k! fits into our data type.\nGiven n and k, how do you compute the binomial coefficient of n and k (i.e. n choose k) ? What is the complexity ?\n', 1),
(2, 1, '\nLet a and b be two sorted arrays of length n each. Assume (though this is not necessary) that all elements in a and b are different.\nWe want to compute a median (that is, an element of rank n) of the union of the two arrays.\nFind an algorithm that does the job in O(n) time.\nFind a better algorithm, can you decrease the complexity ? if yes, what is the new complexity ?\n', 1),
(3, 1, '\nLet a[0. . n−1] be an array with entries from a totally ordered set (e.g., real numbers).\nAn element a[i] with 0<i<n-1 is called local minimum if a[i-1]≥a[i]≤a[i+1].\nAnalogously, a[0] is a local minimum if a[0]≤a[1] and a[n-1] is a local minimum if a[n-1]≤a[n-2].\nWhat is the optimal complexity of  computing a local minimum of the array a ? \n', 1),
(4, 2, '\nLet a1,...,an be integers such that their sum S:=∑ ai is even (=pair).\n\nWhat is the (best) time complexity of deciding whether one can partition the numbers into two (multi-)sets having equal sum, that is, whether there is an I⊆ 1,...,n such that : ∑ ai for i ∈ I is equal to ∑ ai for i ∉ I.\n', 1),
(5, 2, '\nThe following problem cannot be solved in polynomial time in n (unless P = NP) : Given a  number x ∈ [1..n(n+1)/2], find a subset S≤[1,..,n] such that x=∑s for s ∈ S.\n', 1),
(6, 3, '\nLet G=(V,E) be an undirected graph. For a vertex v∈V, we denote deg(v) its degree, that is the number of its neighbors. Let Δ be max{deg(v), for v∈ V}, the maximum degree of G.\n\nLet k ∈ N. A k-coloring of G is a function c : V → [1..k] such that for all {u,v}∈E, we have c(u)≠c(v).\n\nIs there a greedy algorithm that gives a Δ+1 coloring of G ?\n', 1),
(7, 3, '\nIs the greedy algorithm we designed in the previous section optimal ? (i.e: does it exist graphs of maximum degree Δ which do not admit k-coloring with k<Δ+1 ?)\n', 1),
(8, 4, '\nIn an undirected graph with integer edge weights in [1..1000] and with m edges, what is the optimal complexity of computing a minimum spanning tree ? \n', 4),
(9, 5, '\nIf G is a tree, then the distances from a vertex s to all other vertices can be computed easily in time O(m) (where m is the number of edges).\n', 2),
(10, 5, '\nThe diameter of a connected graph G is the smallest number d such that any two vertices are connected by a path of at most d edges. In the Bellman-Ford algorithm, it suffices to take the outer loop from 1 to d.\n', 2),
(11, 5, '\nIf there is a unique edge with minimal weight, then this is part of any shortest path tree encoding the shortest paths from s to any other vertex.\n', 2),
(12, 5, '\nIf all vertices of a graph except exactly two have even degree, then an Eulerian path exists, that is, a (not necessarily simple) path that uses each edge exactly once.\n', 2),
(13, 6, 'If the input graph is a tree, then Kruskal\'s algorithm has a runtime of O(n).', 2),
(14, 6, 'If the input graph is a tree, then Prim\'s algorithm has a runtime of O(n).', 2),
(15, 7, 'The optimal number of comparisons necessary to merge two sorted arrays of n elements is 2 n - 1.', 2),
(16, 7, 'A median of an array can be found in linear time.', 2),
(17, 7, 'A median of two sorted arrays can be found in linear time cannot be found in less than linear time.', 2);

-- --------------------------------------------------------

--
-- Structure de la table `stamps`
--

CREATE TABLE `stamps` (
  `id` int(11) NOT NULL,
  `id_qcm` int(11) NOT NULL,
  `user_login` varchar(64) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stamps`
--

INSERT INTO `stamps` (`id`, `id_qcm`, `user_login`, `stamp`) VALUES
(8, 7, 'ahmed12', '2019-02-17 17:46:59'),
(9, 4, 'ahmed12', '2019-02-17 17:46:59'),
(10, 5, 'ahmed12', '2019-02-17 17:47:00'),
(11, 6, 'ahmed12', '2019-02-17 17:47:01'),
(12, 2, 'ahmed12', '2019-02-17 17:47:02'),
(13, 3, 'ahmed12', '2019-02-17 17:47:02'),
(14, 1, 'ahmed12', '2019-02-17 17:47:03'),
(15, 7, 'ayoub47', '2019-02-17 17:48:07'),
(16, 4, 'ayoub47', '2019-02-17 17:48:08'),
(17, 5, 'ayoub47', '2019-02-17 17:48:08'),
(18, 6, 'ayoub47', '2019-02-17 17:48:09'),
(19, 2, 'ayoub47', '2019-02-17 17:48:10'),
(20, 3, 'ayoub47', '2019-02-17 17:48:11'),
(21, 1, 'ayoub47', '2019-02-17 17:48:11'),
(22, 7, 'jean_bouteiller', '2019-02-17 17:49:04'),
(23, 4, 'jean_bouteiller', '2019-02-17 17:49:05'),
(24, 5, 'jean_bouteiller', '2019-02-17 17:49:06'),
(25, 6, 'jean_bouteiller', '2019-02-17 17:49:06'),
(26, 2, 'jean_bouteiller', '2019-02-17 17:49:08'),
(27, 3, 'jean_bouteiller', '2019-02-17 17:49:08'),
(28, 1, 'jean_bouteiller', '2019-02-17 17:49:12'),
(29, 7, 'joshuaX4', '2019-02-17 17:50:03'),
(30, 4, 'joshuaX4', '2019-02-17 17:50:04'),
(31, 5, 'joshuaX4', '2019-02-17 17:50:04'),
(32, 6, 'joshuaX4', '2019-02-17 17:50:05'),
(33, 2, 'joshuaX4', '2019-02-17 17:50:06'),
(34, 3, 'joshuaX4', '2019-02-17 17:50:07'),
(35, 1, 'joshuaX4', '2019-02-17 17:50:08'),
(36, 5, 'hugo_vincenti', '2019-02-17 17:50:52'),
(37, 6, 'hugo_vincenti', '2019-02-17 17:50:53'),
(38, 3, 'hugo_vincenti', '2019-02-17 17:50:54'),
(39, 7, 'howard_s', '2019-02-17 17:51:22'),
(40, 4, 'howard_s', '2019-02-17 17:51:23'),
(41, 3, 'howard_s', '2019-02-17 17:51:24'),
(42, 1, 'howard_s', '2019-02-17 17:51:25'),
(43, 1, 'bloom14', '2019-02-17 17:52:01'),
(44, 3, 'bloom14', '2019-02-17 17:52:02'),
(45, 2, 'bloom14', '2019-02-17 17:52:02'),
(46, 6, 'bloom14', '2019-02-17 17:52:03'),
(47, 7, '_lacour', '2019-02-17 17:52:30'),
(48, 5, '_lacour', '2019-02-17 17:52:32'),
(49, 2, '_lacour', '2019-02-17 17:52:33'),
(50, 1, '_lacour', '2019-02-17 17:52:34'),
(51, 7, 'baptiste', '2019-02-17 19:10:26'),
(52, 4, 'baptiste', '2019-02-17 19:11:33'),
(58, 7, 'olivier', '2019-02-17 20:09:15'),
(59, 4, 'olivier', '2019-02-17 20:24:29'),
(60, 5, 'olivier', '2019-02-17 20:24:37');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `login` varchar(64) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `surname` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(128) NOT NULL,
  `signature` varchar(256) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `school` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `grade` varchar(256) DEFAULT NULL,
  `role` varchar(256) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`login`, `pwd`, `surname`, `name`, `birthday`, `email`, `signature`, `city`, `school`, `address`, `grade`, `role`) VALUES
('ahmed12', '$2y$10$pydWeqjFeJKG1p8r4RZ1mu64hnaUOBcZc0rnrNzZukqpW5amhNi6e', 'Ahmed', 'Alouane', '1997-08-09', 'ahmed12@qcm', NULL, NULL, NULL, NULL, NULL, 'user'),
('ayoub47', '$2y$10$1zb1TgQ8v4xUshEkqoDF4OqRiJUVD9zF3ovO6jqGXLtkr9sF03d8e', 'Ayoub', 'Foussoul', '2001-08-23', 'ayoub47@qcm', NULL, NULL, NULL, NULL, NULL, 'user'),
('baptiste', '$2y$10$WZqITggiZRp2BVcAkuWnjeSPxm8OZFDBM0rL201yZHlx7m8PCVCsu', 'Desprez', 'Baptiste', '1983-06-21', 'baptiste@qcm', NULL, '', '', '', '', 'user'),
('bloom14', '$2y$10$9PF2FWVh.9SgqiN35F4f5OKHsb4rILL3qfRT0jjjJEEm2H3QNlOzm', 'Michael', 'Bloomberg', '2003-01-18', 'bloom14@qcm', NULL, NULL, NULL, NULL, NULL, 'user'),
('cyprien477', '$2y$10$y5DaWP8RvPKvjm/Elmu6HuNANShBnu.OqLs35/EFCGSO56AOKOMA6', 'Cyprien', 'Drommi', '1998-11-02', 'cyprien477@qcm', NULL, NULL, NULL, NULL, NULL, 'user'),
('dark_knight', '$2y$10$fjA9oo9HG.x7OVM1gj4NFOQtsAmIIVSVUIaWT65OlHiNTgcNhDVwm', 'Christian', 'Bale', '1999-08-23', 'dark_knight@qcm', NULL, NULL, NULL, NULL, NULL, 'user'),
('howard_s', '$2y$10$o7PhUIn.UI3Mq1YHNt7MZuibVhQKng9Ny2m04ROEQXJr9bplG6pRe', 'Howard', 'Schultz', '2001-01-03', 'howard_s@qcm', NULL, NULL, NULL, NULL, NULL, 'user'),
('hugo_vincenti', '$2y$10$Nmr1RD0NfmYTLjOgA45A0.f35w6KAsrU46ItgMdebEEARw.Q9dtmy', 'Hugo', 'Vincenti', '2000-08-15', 'hugo_vincenti@qcm', NULL, NULL, NULL, NULL, NULL, 'user'),
('jean_bouteiller', '$2y$10$Jb3cC0skTqdpb/td0zxl2.251B82ORm6UNdYEOEOPAOGD/2qKfZEW', 'Jean', 'Bouteiller', '2002-01-07', 'jean_bouteiller@qcm', NULL, NULL, NULL, NULL, NULL, 'user'),
('joshuaX4', '$2y$10$7Dz2p2sXMVbs6kDv26PyRe8eyiJMCNHSDOBJWQZ/3y2Os/aaJ/KOe', 'Joshua', 'Akouz', '2000-08-07', 'joshuaX4@qcm', NULL, NULL, NULL, NULL, NULL, 'user'),
('olivier', '$2y$10$dLREvR8vXKPQo1xx7XCujeMrSd4YlaS8SroxrakSgybF33hUOlT1.', 'Serre', 'Olivier', '1981-12-20', 'olivier@qcm', NULL, 'Paris', 'Ecole Polytechnique', 'exemple adresse 7219 Essone France', 'bac+99', 'admin'),
('_lacour', '$2y$10$hw6ojGRObULCwtH5x/S2PeSu9FQrM8Xus5wiFX4ZqKwU89LPNu2m6', 'Antoine', 'Lacour', '1997-06-24', '_lacour@qcm', NULL, NULL, NULL, NULL, NULL, 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_qst` (`id_qst`);

--
-- Index pour la table `attempt`
--
ALTER TABLE `attempt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_id` (`answer_id`),
  ADD KEY `user_login` (`user_login`);

--
-- Index pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `to_id` (`to_id`);

--
-- Index pour la table `qcm`
--
ALTER TABLE `qcm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_login` (`author_login`);

--
-- Index pour la table `qst`
--
ALTER TABLE `qst`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_qcm` (`id_qcm`);

--
-- Index pour la table `stamps`
--
ALTER TABLE `stamps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_qcm` (`id_qcm`),
  ADD KEY `user_login` (`user_login`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`login`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `attempt`
--
ALTER TABLE `attempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT pour la table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `qcm`
--
ALTER TABLE `qcm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `qst`
--
ALTER TABLE `qst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `stamps`
--
ALTER TABLE `stamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`id_qst`) REFERENCES `qst` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `attempt`
--
ALTER TABLE `attempt`
  ADD CONSTRAINT `attempt_ibfk_2` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attempt_ibfk_3` FOREIGN KEY (`user_login`) REFERENCES `users` (`login`) ON DELETE CASCADE;

--
-- Contraintes pour la table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`from_id`) REFERENCES `users` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`to_id`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Contraintes pour la table `qcm`
--
ALTER TABLE `qcm`
  ADD CONSTRAINT `qcm_ibfk_1` FOREIGN KEY (`author_login`) REFERENCES `users` (`login`) ON DELETE CASCADE;

--
-- Contraintes pour la table `qst`
--
ALTER TABLE `qst`
  ADD CONSTRAINT `qst_ibfk_1` FOREIGN KEY (`id_qcm`) REFERENCES `qcm` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `stamps`
--
ALTER TABLE `stamps`
  ADD CONSTRAINT `stamps_ibfk_1` FOREIGN KEY (`id_qcm`) REFERENCES `qcm` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stamps_ibfk_2` FOREIGN KEY (`user_login`) REFERENCES `users` (`login`) ON DELETE CASCADE;
  