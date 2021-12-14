extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var barbarian_text = "Высокий, закутанный в шкуры дикарь пробирается сквозь метель, сжимая в руке свой топор. Он со смехом бросается на морозного великана, который посмел убить лося в стаде его народа. Полуорк рычит на храбреца, осмелившегося посягнуть на его первенство в племени, готовый свернуть ему шею голыми руками, как он поступил с предыдущими шестью соперниками. С пеной у рта дварф швыряет свой шлем в лицо напавшему дроу, и резко разворачивается, впечатав бронированный локоть в живот второму. Несмотря на разнообразие, всех варваров объединяет одно — их ярость. Необузданный, неугасимый и бездумный гнев. Не просто эмоция, их ярость как свирепость загнанного в угол хищника, как безжалостный удар урагана, как штормовые валы океана. Ярость некоторых из них проистекает из общения со свирепыми духами животных. Другие черпают её из злости на полную боли и страдания действительность. Но для каждого варвара ярость — это источник не только боевого безумия, но и невероятных рефлексов, стойкости, а также непревзойдённой силы. ПЕРВОБЫТНЫЕ ИНСТИНКТЫ Жители посёлков и городов настолько гордятся своей цивилизованностью, отличающей их от животных, словно отрицание собственной природы подчёркивает их превосходство. Варвары же, напротив, считают цивилизованность проявлением слабости. Связь между их животными инстинктами, первобытной энергетикой и свирепой яростью очень сильна. Варвары чувствуют себя неуютно в окружении стен или в толпе, но раскрываются в родных диких просторах, в тундре, джунглях или степях, где их племена живут и охотятся. Лучше всего варвары проявляют себя посреди хаоса битвы. Они могут впасть в состояние берсерка, утратив контроль над собственной яростью, и получая взамен нечеловеческую силу и стойкость. Варвар может лишь несколько раз воспользоваться резервами собственного гнева, прежде чем ему потребуется отдых, но обычно этих нескольких раз хватает, чтобы справиться с любой угрозой, встреченной на пути."
var bard_text = "Напевая, и перебирая пальцами по старинному монументу, найденному в заброшенных руинах, полуэльфийка в обветшалом кожаном доспехе перебирает знания, мелькающие в её голове, вызывая силой магии, заключённой в песне, людей, которые построили этот монумент и загадочное предание, которое он изображает. Суровый человеческий воин ритмично ударяет своим мечом плашмя о доспех, задавая темп своего военного распева, вдохновляя спутников на отвагу и героизм. Магия его песни укрепляет и подбадривает их. Смеясь, и настраивая свою цитру, девушкагном накладывает тонкую магию на собравшихся дворян, гарантируя, что слова её спутников будут хорошо восприняты. Неважно, кем является бард: учёным, скальдом или проходимцем; он плетёт магию из слов и музыки, вдохновляя союзников, деморализуя противников, манипулируя сознанием, создавая иллюзии, и даже исцеляя раны. В мирах D&D слова и музыка это не просто колебания воздуха, тут они содержат в себе силу. И бард является мастером речей, песен, и волшебства, заложенного в них. Барды говорят, что вся мультивселенная была вызвана к существованию и сформирована словами, которые произнесли боги. И отражения этих первородных Слов Творения до сих пор звучат в космосе. Музыка бардов это попытка уловить эти отзвуки и тонко вплести их в свои заклинания. Наиболее сильной чертой бардов является их исключительная разносторонность. Многие барды предпочитают держаться не на передовой в бою, используя свою магию для вдохновения союзников и препятствования противникам на расстоянии. Но барды способны защищать себя и в ближнем бою, при необходимости используя магию для укрепления своих клинков и доспехов. Их заклинания чаще предназначены для очарования и создания иллюзий, а не для создания явных разрушений. Они обладают обширными знаниями во множестве тематик и естественные способности, которые позволяют им делать хорошо практически всё. Барды становятся мастерами в тех талантах, к которым стремятся их умы, оттачивая их до совершенства, от музыкальных выступлений до эзотерических знаний. "
var cleric_text = "Воздев руки и глаза к небу и запев молитву, эльф начинает сиять внутренним светом, который проливается на боевых товарищей и лечит их. Распевая песнь славы, дварф широко размахивает своим топором, прорубаясь через ряды орков, выступивших против него, крича хвалу богам с каждым павшим врагом. Посылая проклятье на силы нежити, женщина поднимает свой священный символ, из которого льётся свет, отбрасывающий зомби, толпящихся около её спутников. Жрецы являются посредниками между миром смертных и далёкими мирами богов. Настолько же разные, насколько боги, которым они служат, жрецы воплощают работу своих божеств. В отличие от обычного проповедника, жрец наделён божественной магией. ЦЕЛИТЕЛИ И ВОИТЕЛИ Божественная магия, как следует из названия, является силой богов, источающейся из них в мир. Жрецы являются проводниками этой энергии, проявляющейся в виде чудотворных эффектов. Боги не дают такую власть всем, кто обращается к ним, но только тем, кто избран выполнять высокое призвание. Использующие божественную магию не полагаются на обучение или тренировки. Жрец может разучить шаблонные молитвы и древние ритуалы, но способность читать заклинания зависит от преданности и интуитивного ощущения воли божества. Жрецы сочетают полезную магию исцеления и вдохновения союзников с заклинаниями, которые вредят и препятствуют врагам. Они могут вызвать страх и ужас, наложить проклятье или болезни, отравить, и даже призвать пламя с небес, чтобы уничтожить своих противников. Встретившись с грешниками, которым поможет только удар булавой по голове, жрецы полагаются на свою боевую подготовку, что позволяет им вступить в ближний бой с силами богов на своей стороне. "
var druid_text = "Вскидывая вверх сучковатый посох из остролиста, эльф вызывает буйство небесной стихии и обрушивает разряды молний на орков, посмевших угрожать его лесу огнём. Затаившись высоко в кроне дерева, человек в облике леопарда смотрит из джунглей на чужеродную архитектуру храма Злой Стихии Воздуха и пристально наблюдает за действиями культистов. Рубя клинком из чистого пламени, полуэльф бросается в гущу армии скелетов, чтобы уничтожить кощунственную магию, возвратившую им извращённое подобие жизни. Призывая стихии или подражая животным, друиды воплощают незыблемость, приспособляемость и гнев природы. Они ни в коем случае не владыки природы — вместо этого друиды ощущают себя частью её неодолимой воли. СИЛА ПРИРОДЫ Выше чего-либо другого друиды почитают природу. Именно она является источником всех их заклинаний и магических способностей, непсредственно или через природное божество. Многие предпочитают духовный путь конечного единения с природой, но есть и те, кто служат богам диких просторов, животных или стихий. Длящиеся испокон веков обычаи друидов также называют Старой Верой, противопоставляя их поклонению в храмах и у алтарей. Заклинания друидов воздействуют через животных и окружающую природу. Это сила клыка и когтя, солнца и луны, огня и бури. Также друиды учатся принимать облик животных, и некоторые настолько углубляются в это умение, что родному облику предпочитают звериный"
var monk_text = "Её кулаки превратились в марево, отражая обрушившийся град стрел. Полуэльфийка перескочила баррикаду и бросилась в плотные ряды хобгоблинов. Кружась среди них, она раздавала удары во все стороны, расшвыривая противников, пока не осталась единственной, стоящей на ногах. Глубоко вздохнув, покрытый татуировками человек принял боевую стойку. Когда первый из атакующих орков приблизился к нему, он выдохнул, и поток огня, с рёвом вырвавшись из его рта, поглотил противника. Двигаясь бесшумно, как сама ночь, одетый во всё чёрное полурослик вступил в пятно тени под аркой, и мгновенно появился из другой чернильной тени на балконе, на расстоянии броска камня. Он медленно высвободил клинок из укутанных тканью ножен, и сквозь открытое окно взглянул на деспотичного принца, столь уязвимого во сне. Вне зависимости от выбранной дисциплины, всех монахов объединяет одно — возможность управлять энергией, текущей в их телах. Вне зависимости от того, проявляется ли она выдающимися боевыми способностями, или чуть заметным усилением защиты и скорости, эта энергия влияет на всё, что делает монах. МАГИЯ ЦИ Монахи тщательно изучают магическую энергию, которая в большинстве монастырских традиций именуется ци. Эта энергия является составляющей частью магии, пронизывающей мультивселенную, а точнее, той её частью, которая протекает сквозь тела живущих. Монахи научились управлять энергией, протекающей сквозь их тела, повышая физические способности и нанося атаки, способные препятствовать течению ци в телах противников. Используя эту энергию, монахи наделяют удары своих голых рук и ног неестественной силой и скоростью. С приобретаемым опытом их боевые тренировки и тренировки владением ци дают им всё больше власти над собственными телами и над телами врагов"
var paladin_text = "Закованный в латы, сверкающие на солнце, несмотря на пыль и грязь долгого путешествия, человек складывает свой меч и щит и касается ладонями смертельно раненного мужчины. Божественное сияние исходит из его рук, и раны мужчины затягиваются, а глаза широко раскрываются в изумлении. Дварф пригнулся к земле за камнем. Его чёрный плащ делал его почти невидимым в ночи, и он смотрел, как шайка орков праздновала недавнюю победу. Он тихо крадётся к ним и шепчет свою присягу, и двое орков умирают ещё до того, как понимают, что он здесь был. Серебряные волосы сверкают в лучах света, которые, кажется, льются только на торжественно смеющегося эльфа. Его копьё вспыхивает, подобно его глазам, когда он снова и снова наносит удары уродливому великану, до тех пор, пока его свет не преодолевает отвратительную тьму. Вне зависимости от происхождения и миссии, паладинов объединяет их клятва противостоять силам зла. Принесённая ли перед алтарём бога и заверенная священником, или же на священной поляне перед духами природы и феями, или в момент отчаяния и горя смерти, присяга паладина — могущественный договор. Это источник силы, который превращает набожного воина в благословенного героя. ИСТОЧНИК ПРАВЕДНОСТИ Паладин клянётся защищать справедливость и праведность, отстаивать добродетели мира перед вторжениями тьмы, и охотиться на силы зла, где бы они ни скрывались. Разные паладины сосредотачиваются на различных аспектах праведности, но все они связаны клятвой, которая даёт им силы для совершения их священного дела. Многие паладины преданы богам добра, но сила паладина происходит скорее от собственного стремления к справедливости, чем от божества. Паладины тренируются годами, чтобы обучиться навыкам боя, осваивая владение различными видами оружия и доспехов. Тем не менее, их воинские навыки вторичны по сравнению с магической силой, которой они обладают: силой исцелять больных и раненых, карать нечестивцев и нежить, защищать невинных и тех, кто присоединился к ним в борьбе за справедливость. "
var ranger_text = "Грубо и дико выглядящий человек в одиночку следует в тенях деревьев за орками, которые, как он знает, планируют напасть на расположенную рядом ферму. Зажав по короткому мечу в каждой руке, он становится стальным вихрем, вырезающим одного врага за другим. Увернувшись от конуса морозного воздуха, эльфийка встаёт на ноги и натягивает тетиву лука, чтобы пустить стрелу в белого дракона. Невзирая на волну страха, которая исходит от дракона подобно холоду его дыхания, она посылает одну стрелу за другой, чтоб найти уязвимые места между толстыми чешуйками. Подняв высоко руку, полуэльф свистит ястребу, кружащему высоко над ним, призывая птицу к себе. Нашёптывая указания на эльфийском, он показывает на выслеженного совомед а и посылает ястреба, чтобы отвлечь существо, пока он готовит свой лук. Вдали от суеты городов и посёлков, за изгородями, которые защищают самые далёкие фермы от ужасов дикой природы, среди плотно стоящих деревьев, беспутья лесов и на просторах необъятных равнин следопыты несут свой бесконечный дозор. СМЕРТОНОСНЫЕ ОХОТНИКИ Бойцы диких земель, следопыты, специализируются на охоте на монстров, таких как неистовствующие звери, чудовищные создания, ужасающие великаны и смертоносные драконы, угрожающих нападением на цивилизованные земли гуманоидов. Они умеют выслеживать добычу подобно хищнику, скрытно передвигаясь через дебри, прячась среди кустов и камней. Тренируясь сражаться, следопыты делают упор боевой подготовки на сражениях с избранными врагами. Благодаря близости с дикой природой, следопыты приобретают способность творить заклинания, взывая к силам природы подобно друидам. Их заклинания, как и боевые навыки, делают акцент на скорость, скрытность и охоту. Таланты и способности следопыта оттачиваются с концентрацией на защите пограничных земель."
var rouge_text = "Дав спутникам сигнал ждать, полурослик крадётся по подземному залу. Он прижимает ухо к двери, потом вытаскивает набор инструментов и вскрывает замок в мгновение ока. Затем он исчезает в тени, пока его друг воин идёт вперёд, чтобы пинком открыть дверь. Человек скрывается в тени переулка, в то время как его сообщница готовит свою часть засады. Когда их цель — известный работорговец — проходит по переулку, сообщница издаёт крик, работорговец начинает выяснять, что произошло, и лезвие убийцы перерезает его горло прежде, чем он может издать звук. Подавив смешок, гномиха шевелит пальцами и с помощью магии снимает ключи с пояса охранника. Через миг ключи в её руке, дверь камеры открыта, она и её спутники могут спокойно совершать побег. Плуты полагаются на мастерство, скрытность и уязвимые места врагов, чтобы взять верх в любой ситуации. У них достаточно сноровки для нахождения решения в любой ситуации, демонстрируя находчивость и гибкость, которые являются краеугольным камнем любой успешной группы искателей приключений. НАВЫК И ТОЧНОСТЬ Плуты прилагают больше усилий для освоения различных навыков, а также совершенствуют свои боевые способности, дающие им большой набор приёмов, каким мало какие персонажи могут похвастаться. Многие плуты сосредотачиваются на скрытности и обмане, в то время как другие совершенствуют навыки, помогающие им в подземельях, такие как лазание, поиск и обезвреживание ловушек, и вскрытие замков. Когда дело доходит до боя, плуты отдают предпочтение хитрости, а не грубой силе. Плуту достаточно сделать один точный удар туда, где нападение наиболее повредит цели, а не одолевать врага шквалом атак. Плуты обладают почти сверхъестественной ловкостью для избегания опасностей, а некоторые обучились магическим трюкам в дополнение к своим способностям."
var sourcer_text = "Золотые глаза вспыхивают, человек протягивает вперёд руку и высвобождает всепоглощающее пламя, что горит в его жилах. Пока адское пламя бушует вокруг его врагов, кожистые крылья  раскрываются у него за спиной, и он взмывает в воздух. Длинные волосы развеваются от магического ветра, полуэльф широко разводит руки в стороны и запрокидывает голову. Моментально подняв его над землёй, волны магической энергии проходят сквозь него и выплёскиваются в окружающее пространство громадной вспышкой молний. Крадущийся за сталагмитом полурослик указывает пальцем на троглодита. Огненная струя устремляется из его пальца к существу. С усмешкой он прячется обратно за скалу, не подозревая, что дикая магия изменила цвет его кожи на ярко-синий. Чародеи являются носителями магии, дарованной им при рождении их экзотической родословной, неким потусторонним влиянием или воздействием неизвестных вселенских сил. Никто не может обучиться чародейству, как, например, выучить язык, так же как никто не может обучить, как прожить легендарную жизнь. Никто не может избрать путь чародейства, сила сама выбирает носителя. ГРУБАЯ МАГИЯ Магия является частью каждого чародея, наполняя тело, разум и дух скрытой силой, которая ждёт, когда её используют. Некоторые чародеи владеют магией, которая проистекает из древней родословной, связанной с магией драконов. Другие же несут в себе сырую, неконтролируемую силу, хаотичный шторм, который может выплеснуться самым неожиданным образом. Проявление сил чародея крайне непредсказуемо. Некоторые драконьи родословные получают ровно одного чародея в каждом поколении, в других же родословных каждый индивид может являться чародеем. В большинстве случаев способность к чародейству возникает случайно. Некоторые чародеи не могут назвать источник своей силы, в то время как другие связывают его со странными событиями в своей жизни. Прикосновение демона, благословление дриады при рождении, или вода из мистического источника — всё это может разжечь искру чародейского дара. Это может быть дар божества магии, воздействие стихийных. "
var warlock_text = "Молодой эльф в золотых одеждах, с псевдодраконом, свернувшимся у него на плече, тепло улыбается дворцовому стражу, вплетая магическое очарование в свои сладкие речи, чтобы подчинить его своей воле. Когда в руках морщинистой старухи оживает пламя, она шепчет тайное имя своего демонического покровителя, вливая в заклинание зловещую магию. Переведя взгляд с потрёпанного тома на необычное сочетание звёзд над головой, тифлинг с дикими глазами начинает мистический ритуал, который откроет проход в далёкий мир. Колдуны — искатели знаний, что скрываются в ткани мультивселенной. Через договор, заключённый с таинственными существами сверхъестественной силы, колдуны открывают для себя магические эффекты, как едва уловимые, так и впечатляющие воображение. Колдуны подпитывают свои силы древними знаниями таких существ как феи, демоны, дьяволы, карги и чужеродные сущности Дальнего Предела. КЛЯТВА И ДОЛГ Колдун заключает договор с потусторонней сущностью. Иногда отношения между колдуном и его покровителем похожи на отношения жреца и его божества, но сущности, выступающие в роли покровителей, вовсе не боги. Колдун может возглавить культ, посвящённый принцу демонов, архидьяволу или совершенно чужеродной сущности — созданиям, у которых обычно нет жрецов. Куда чаще их взаимоотношения похожи на отношения мастера и ученика. Знания колдуна и его сила растут по мере оказания услуг покровителю. Магия, которой наделён колдун, может вносить незначительные изменения в его сущность (например, способность видеть в темноте или читать на любом языке), а также дарует возможность пользоваться мощными заклинаниями. В отличие от начитанных волшебников, колдуны могут дополнять магию некоторыми элементами рукопашного боя. Они хорошо себя чувствуют в лёгком доспехе, и знают, как пользоваться простым оружием."
var wizard_text = "Одетая в серебряные одежды, обозначающие её статус, эльфийка закрывает глаза, приглушает в своём сознании суматоху боя и начинает свой тихий напев. Движениями рук она сплетает перед собой заклинание и запускает крошечный шарик огня во вражеские ряды, где он взрывается потоками пламени, которые охватывают солдат. Проверив и перепроверив свои наброски, человек рисует затейливый магический круг мелом на голом каменном полу, затем посыпает железным порошком все линии и изящные кривые. Когда круг готов, он начинает монотонно читать длинное заклинание. Внутри круга появляется проход, из которого тянет запахом серы из потустороннего мира. Припав к полу на перекрёстке в подземелье, гном бросает небольшие костяшки с мистическими символами, бормоча над ними слова силы. Закрыв глаза, чтобы прочитать видения более чётко, он медленно кивает, затем открывает глаза и указывает на проход слева от себя. Волшебники — адепты высшей маги, объединяющиеся по типу своих заклинаний. Опираясь на тонкие плетения магии, пронизывающей вселенную, волшебники способны создавать заклинания взрывного огня, искрящихся молний, тонкого обмана и грубого контроля над сознанием. Их магия вызывает чудовищ с других планов бытия, предсказывает будущее и обращает поверженных врагов в зомби. Их самые могущественные заклинания могут превращать одно вещество в другое, вызывать метеориты с небес и открывать порталы в другие миры. АДЕПТЫ МАГИИ Дикая и загадочная, разнообразная по форме и функциям, магия привлекает учеников, которые стремятся достичь мастерства в её тайнах. Некоторые хотят уподобиться богам, изменять саму реальность. И хотя для сотворения обычного заклинания требуется лишь произношение нескольких странных слов, совершение пары мимолётных жестов, а иногда щепотка или комок экзотических материалов, эти поверхностные проявления не могут показать опыт, достигнутый долгими часами ученичества и бессчётными часами исследований. Волшебники живут и умирают со своими заклинаниями. Всё остальное вторично. Они учат новые заклинания, экспериментируя и стано"
var warrior_text = "Женщина, прикрываясь щитом и лязгая доспехами, устремляется в толпу гоблинов. Из-за её спины одетый в клёпанную кожу эльф осыпает врагов стрелами, выпуская их из своего изящного лука. Невдалеке от них полуорк выкрикивает приказы, указывая лучшее направление для атаки. Дварф в кольчуге выставил свой щит перед компаньоном, отражая смертельный удар дубины огра. Его напарник, полуэльф в чешуйчатом доспехе, закрутил два своих скимитара в сверкающем вихре и двинулся в обход огра, отыскивая брешь в его защите. Опытный гладиатор сражается на арене и хорошо знает, как использовать свои трезубец и сеть, чтобы опрокинуть противника и обойти его, вызывая ликование публики и получая тактическое преимущество. Меч его противника вспыхивает голубым светом и испускает сверкающую молнию. Все эти герои — воины. Представители, возможно, самого разнообразного класса в мире D&D. Странствующие рыцари, военачальники-завоеватели, королевские чемпионы, элитная пехота, бронированные наёмники и короли разбоя — будучи воинами, все они мастерски владеют оружием, доспехами, и приёмами ведения боя. А ещё они хорошо знакомы со смертью — они несут её сами, и часто смотрят в её холодные глаза. РАЗНОСТОРОННИЕ СПЕЦИАЛИСТЫ Воины владеют основами всех боевых стилей. Каждый воин может рубить топором, фехтовать рапирой, владеет длинным и двуручным мечом, может стрелять из лука и даже при некоторой сноровке способен поймать противника сетью. Помимо этого, воины хорошо знакомы с использованием щита и любых доспехов. Помимо общих знаний, каждый воин специализируется на определённом стиле боя. Некоторые концентрируются на стрельбе из лука, другие на сражении с оружием в каждой руке, а есть те, кто свои воинские способности усиливает заклинаниями. Сочетание широких общих навыков и углублённой специализации делает воинов непревзойдёнными на поле боя."

# Called when the node enters the scene tree for the first time.

func setup_barbarian():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Варвар"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = barbarian_text

func setup_warrior():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Воин"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = warrior_text

func setup_bard():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Бард"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = bard_text
	
func setup_cleric():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Жрец"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = cleric_text
	
func setup_druid():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Друид"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = druid_text
	
func setup_monk():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Монах"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = monk_text
	
func setup_paladin():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Паладин"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = paladin_text

func setup_ranger():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Рейнджер"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = ranger_text
	
func setup_rouge():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Плут"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = rouge_text
	
func setup_sourcer():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Чародей"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = sourcer_text
	
func setup_warlock():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Колдун"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = warlock_text
	
func setup_wizard():
	$MarginContainer/VBoxContainer/HBoxContainer/Label.text = "Вы - Волшебник"
	$MarginContainer/VBoxContainer/PanelContainer/ScrollContainer/Description.text = wizard_text
	
	
	
var dnd_class = ""

func common_setup(name):
	dnd_class = name
	if name == "barbarian":
		setup_barbarian()
	if name == "warrior":
		setup_warrior()
	elif name == "bard":
		setup_bard()
	elif name == "cleric":
		setup_cleric()
	elif name == "druid":
		setup_druid()
	elif name == "monk":
		setup_monk()
	elif name == "paladin":
		setup_paladin()
	elif name == "ranger":
		setup_ranger()
	elif name == "rouge":
		setup_rouge()
	elif name == "sourcer":
		setup_sourcer()
	elif name == "warlock":
		setup_warlock()
	elif name == "wizard":
		setup_wizard()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _ready():
	pass
