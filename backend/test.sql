/*
Navicat MySQL Data Transfer

Source Server         : test_localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-10-10 22:49:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hitokoto
-- ----------------------------
DROP TABLE IF EXISTS `hitokoto`;
CREATE TABLE `hitokoto` (
  `id` int(11) NOT NULL,
  `hitokoto` text COMMENT '一段话',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `insert_time` bigint(12) DEFAULT NULL COMMENT '插入数据库的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hitokoto
-- ----------------------------
INSERT INTO `hitokoto` VALUES ('5', '看似美好的东西，往往藏着陷阱。', '只有神知道的世界', '1538145004013');
INSERT INTO `hitokoto` VALUES ('10', '我是一个经常笑的人，可我不是经常开心的人。', '未闻花名', '1537792236264');
INSERT INTO `hitokoto` VALUES ('22', '比任何人都要了解自己，比任何人都要关爱自己。喜欢上这样的人，并没有什么奇怪的呢。', '初音岛', '1537883954880');
INSERT INTO `hitokoto` VALUES ('31', '就是因为你不好，才要留在你身边，给你幸福。', '哈尔的移动城堡', '1538061109463');
INSERT INTO `hitokoto` VALUES ('43', '那是，未满45秒的邂逅。', 'EF', '1539092698126');
INSERT INTO `hitokoto` VALUES ('44', '只要有想见面的人，自己就不再是孤单一人。', '夏目友人帐', '1537880027364');
INSERT INTO `hitokoto` VALUES ('45', '如果聚集负的感情，世界就会陷入负的洪流；反之聚集正的感情，世界就会循着正道而行。', '钢之炼金术师', '1538061046027');
INSERT INTO `hitokoto` VALUES ('54', '错的不是我， 错的是世界。', 'School Day', '1537880026069');
INSERT INTO `hitokoto` VALUES ('55', '和哥哥的便当比起来夜空的薯片就像大便一样！只会给我大便的大便夜空是笨蛋～笨蛋～', '我的朋友很少', '1539006298850');
INSERT INTO `hitokoto` VALUES ('70', '我会跟她结婚，并不是因为她是计算机，而是因为她就是她。同样的，我会喜欢你，也是因为你就是你。', '人型电脑天使心', '1537715738152');
INSERT INTO `hitokoto` VALUES ('73', '我对普通的人类没有兴趣，你们只要是有外星人、未来人、异世界人、超能力者， 就尽管来找我吧！以上！', '凉宫春日的忧郁', '1537883728503');
INSERT INTO `hitokoto` VALUES ('89', '只是相谈就会开心起来，沉浸在温柔的眼神当中，竭尽全力的思念，悄悄地奉献。', 'School Days', '1537715444511');
INSERT INTO `hitokoto` VALUES ('93', '我相信十年后的八月，我们还能再相遇。', '那朵花', '1538144813046');
INSERT INTO `hitokoto` VALUES ('97', '我们走过风走过雨，就是没能走进彼此的内心。', '自分', '1538232824801');
INSERT INTO `hitokoto` VALUES ('98', '烦恼这东西，是只有活着的人，才有的特权哦。', '我们的存在', '1539181497097');
INSERT INTO `hitokoto` VALUES ('100', '年华无多时，恋爱吧男子！', '源君物语', '1537715411096');
INSERT INTO `hitokoto` VALUES ('102', '如果你不能击败你的敌人，那么就加入他们。', '加菲猫', '1538144357585');
INSERT INTO `hitokoto` VALUES ('103', '我们都在命运之湖上荡舟划桨，波浪起伏着而我们无法逃脱孤航。但是假使我们迷失了方向，波浪将指引我们穿越另一天的曙光。', '死神', '1537881286562');
INSERT INTO `hitokoto` VALUES ('112', '我到底要以怎么样的速度生活才能与你再次相遇？', '秒速五厘米', '1538146340794');
INSERT INTO `hitokoto` VALUES ('116', '呐，知道么，樱花飘落的速度，是每秒五厘米哦~', '秒速五厘米', '1537879786983');
INSERT INTO `hitokoto` VALUES ('117', '知道活着的痛苦处的人就能对人温柔，这和软弱是不一样的。', 'eva', '1538232536504');
INSERT INTO `hitokoto` VALUES ('121', '你的那双手呢，是为了紧紧抓住什么而存在的哦。', '仰望半月的夜空', '1538146398750');
INSERT INTO `hitokoto` VALUES ('123', '世界は恋に落ちている。', '青春之旅OP（我的世界已坠入爱河）', '1538145801635');
INSERT INTO `hitokoto` VALUES ('127', '我不是萝莉控，是妹控啊！', '我的妹妹不可能那么可爱第二季', '1538143154098');
INSERT INTO `hitokoto` VALUES ('129', '一天吐槽太多次的话，梗也是会用完的。', '我的脑内恋爱选项', '1538232805201');
INSERT INTO `hitokoto` VALUES ('135', '爱，其实很简单，困难的是去接受它。', '通灵王', '1538144206360');
INSERT INTO `hitokoto` VALUES ('138', '因为我喜欢你，喜欢得想吃掉你啊！', '有顶天家族', '1539180645059');
INSERT INTO `hitokoto` VALUES ('141', '失去的东西虽然拿不回来，但是，忘记的事情是可以想起来的。', 'TOUCH', '1537883980378');
INSERT INTO `hitokoto` VALUES ('144', '正因为听不见和看不到，所以风子才会做这样的事情。', 'clannad', '1538145042222');
INSERT INTO `hitokoto` VALUES ('145', '什么都无所谓只想在你身边，什么都无所谓只想和你说话，什么都无所谓所以请你不要逃避。', '好想告诉你', '1538232702832');
INSERT INTO `hitokoto` VALUES ('167', '不相信自己的人，连努力的价值都没有。', '火影忍者', '1537880514386');
INSERT INTO `hitokoto` VALUES ('170', '我除了投三分，就什么都没有了……', '灌篮高手', '1537881048108');
INSERT INTO `hitokoto` VALUES ('172', '我在人生的道路上迷失了。', '火影忍者', '1537714859479');
INSERT INTO `hitokoto` VALUES ('182', '要改变别人的心真是件很难办的事，不过改变自己要容易一点。', 'XXXHolic', '1537881191482');
INSERT INTO `hitokoto` VALUES ('185', '世界这么大，人生这么长，总会有那么一个人，让你想要温柔的对待。', '哈尔的移动城堡', '1537631632480');
INSERT INTO `hitokoto` VALUES ('191', '代表月亮消灭你！', '美少女战士', '1538145932508');
INSERT INTO `hitokoto` VALUES ('194', '我们开始一起攀登，这长长的，长长的坡道。', 'Clannad', '1537879788514');
INSERT INTO `hitokoto` VALUES ('209', '我不渴望什么在别的城市迎来的春天，只要和你在一起的春天就好，只要和你在一起就好', 'CLANNAD', '1538146119965');
INSERT INTO `hitokoto` VALUES ('217', '没有期盼就不会出现奇迹。', '古城荆棘王', '1537970492933');
INSERT INTO `hitokoto` VALUES ('219', '如果你都不知道自己想去哪里，那去哪里都是一样的。', '柴郡猫', '1537715270558');
INSERT INTO `hitokoto` VALUES ('220', '明天，不是你想要就能有的。', '未闻花名', '1538060783232');
INSERT INTO `hitokoto` VALUES ('221', '明明只是活着，哀伤却无处不在……', '秒速五厘米', '1537715485032');
INSERT INTO `hitokoto` VALUES ('222', '错误可不是为了别人才改的过来的，要为了自己才能改正。', 'XXXHolic', '1538144783995');
INSERT INTO `hitokoto` VALUES ('230', '人们只是用好人来称呼对自己有用的人而以，不存在对所有人都有用的人。', '进击的巨人', '1537879673886');
INSERT INTO `hitokoto` VALUES ('239', '窃人者，自失其宝。', '假面骑士kabuto', '1538231154146');
INSERT INTO `hitokoto` VALUES ('241', '男人就应该保持冷静，沸腾的水只会被蒸发掉。', '假面骑士kabuto', '1538232536247');
INSERT INTO `hitokoto` VALUES ('242', '嗯，一个人也要加油，我是坚强的孩子。', 'AIR', '1537970533232');
INSERT INTO `hitokoto` VALUES ('247', '无论在哪里遇到你，我都会喜欢上你。', 'AngleBeats!', '1537718029181');
INSERT INTO `hitokoto` VALUES ('249', '如果你死了，那什么也改变不了，可如果你还活着，那就能改变一些事情。', '最游记', '1538061110996');
INSERT INTO `hitokoto` VALUES ('250', '我裤子都脱了你就给我看这个！！！', '2ch', '1538061082668');
INSERT INTO `hitokoto` VALUES ('251', '鲁鲁修，你知道雪花为什么是白色的吗？因为已经忘记自己本来是什么颜色啊。', '叛逆的鲁鲁修', '1539181841064');
INSERT INTO `hitokoto` VALUES ('253', '无法逃避的是自我，而无法挽回的是过去。', '机动战士高达', '1537883017923');
INSERT INTO `hitokoto` VALUES ('256', '有时语言就像把利刃，使用不当，就会成为凶器。', '名侦探柯南', '1537715812660');
INSERT INTO `hitokoto` VALUES ('262', '你再怎么称赞我，我也不会高兴的，你这个混蛋~', '海贼王', '1537791410838');
INSERT INTO `hitokoto` VALUES ('264', '败者死于绝望，胜者死于渴望。', '戏言系列', '1538143606359');
INSERT INTO `hitokoto` VALUES ('269', '不习惯的事越来越多，但我仍在前进……就算步伐很小，我也在一步一步的前进。', '夏目友人帐', '1537883981141');
INSERT INTO `hitokoto` VALUES ('274', '时间是伟大的作家，总会写下完美的结局。', '秋之回忆', '1538143153185');
INSERT INTO `hitokoto` VALUES ('278', '真正让我难受的，大概是因为让你看到如此狼狈的自己。', '元气少女缘结神', '1538053936127');
INSERT INTO `hitokoto` VALUES ('280', '我爱的人也爱着我，对我来说这简直是个奇迹。', 'NANA', '1537715444470');
INSERT INTO `hitokoto` VALUES ('281', '你为了你的正义，我为了我的正义。', '火影忍者', '1537790006057');
INSERT INTO `hitokoto` VALUES ('283', '我的一生，无怨无悔！', '北斗神拳', '1537719348952');
INSERT INTO `hitokoto` VALUES ('284', '越是困难，越要抬起头，地上可找不到任何希望！', 'Zetman', '1537788575835');
INSERT INTO `hitokoto` VALUES ('288', '承君此诺，必守一生。', '仙剑奇侠传四', '1537631655148');
INSERT INTO `hitokoto` VALUES ('293', '如果我会变成恶魔，那就随他吧。我会接受放逐，一切只为了保护她。', '鬼泣', '1538146394900');
INSERT INTO `hitokoto` VALUES ('306', '魔非魔，道非道，善恶在人心。欲非欲，情非情，姻缘由天定。', '仙剑奇侠传', '1539182238107');
INSERT INTO `hitokoto` VALUES ('310', '阳光灼热，数不尽夏日繁华；蝉鸣幽幽，道不完苦辣酸甜。', '危险同居人', '1537878587653');
INSERT INTO `hitokoto` VALUES ('314', '会长和往常一样挺着小小的胸部一副自以为了不起的样子套用某本书的内容说道……', '学生会的一己之见', '1537715270644');
INSERT INTO `hitokoto` VALUES ('321', '用我一生，换你十年天真无邪。', '盗墓笔记', '1538144218697');
INSERT INTO `hitokoto` VALUES ('326', '生我何用？不能欢笑。灭我何用？不减狂骄。', '悟空传', '1537881192537');
INSERT INTO `hitokoto` VALUES ('334', '我如朝露降人间，和风樱花随春谢。四十九年一朝梦，一期荣华一杯酒。', '上杉谦信', '1539182671876');
INSERT INTO `hitokoto` VALUES ('339', '日子过的象流水一般。它静静的从我们身边缓缓流过，不带半分声响。那些我们当年执着的人，执着的事，执着之后，却变成一种负担。', '凑合活着', '1537714878135');
INSERT INTO `hitokoto` VALUES ('343', '就算你已经不在，就算你身边的人已经不再是我，我也会坚强的活下去，为了你。', '十六夜暁', '1537879787462');
INSERT INTO `hitokoto` VALUES ('344', '今天的早餐是：早苗的面包、秋子的果酱和观铃的果汁~', 'Mion', '1538145451779');
INSERT INTO `hitokoto` VALUES ('354', '请不要忘记，那给你带来感动的，名为二次元的理想乡。', 'hsk', '1538232857728');
INSERT INTO `hitokoto` VALUES ('355', '此时此刻一切都是静寂的，只剩下我与你的世界，这就是爱？', 'DgBoo', '1539006092196');
INSERT INTO `hitokoto` VALUES ('356', '我愿意给你自己所有的快乐，你愿意分担我一半的难过吗？', 'getweb', '1537791004431');
INSERT INTO `hitokoto` VALUES ('360', '一句话，不足以讲述一个故事，却可以让我们回味那些个动人的瞬间。', 'Sai', '1539180537352');
INSERT INTO `hitokoto` VALUES ('363', '每个凉宫都会遇到属于她的John Smith。', 'gmouse', '1538144812042');
INSERT INTO `hitokoto` VALUES ('365', '姑娘们啊，要在该认真的地方全力认真，当你不想认真的时候不妨笑笑。', '凌诺影', '1538231255806');
INSERT INTO `hitokoto` VALUES ('368', '万书皆下品，唯有萌最高！', 'wy6510166', '1537970499426');
INSERT INTO `hitokoto` VALUES ('371', '为毛我的眼里常含泪水，因为我老是中枪。', '不管外表怎样强悍我都是受', '1537880027149');
INSERT INTO `hitokoto` VALUES ('372', '在回忆里留下微笑是为了不让你哭泣...', '原创', '1537790572897');
INSERT INTO `hitokoto` VALUES ('374', '每当对这个世界感到绝望的时候，买一包泡面，然后告诉自己：我们的泡面是有酱包的。', '以风之名', '1538145023898');
INSERT INTO `hitokoto` VALUES ('383', '我敬你是条汉子！', '论如何回答女友问题“你为什么对我这么好”', '1537882728459');
INSERT INTO `hitokoto` VALUES ('384', '记得当时年纪小，你爱卖萌我爱笑。', '网络', '1537881046242');
INSERT INTO `hitokoto` VALUES ('394', '天空本是一种风景，可是遇见你之后，它变成了一种心情。', '九ちのセカィ', '1537719381191');
INSERT INTO `hitokoto` VALUES ('408', '不忘初心，方得始终。', '网络', '1537971998231');
INSERT INTO `hitokoto` VALUES ('422', '低头不是认输，是要看清自己的路；昂头不是骄傲，是要看清自己的天空。', '科比·布莱恩特', '1538143626502');
INSERT INTO `hitokoto` VALUES ('436', '那么，问题来了…', '中国山东找蓝翔', '1537969914716');
INSERT INTO `hitokoto` VALUES ('437', '不要祈求生活公平，只需要适应它。', '网络', '1539181836339');
INSERT INTO `hitokoto` VALUES ('438', '空山新雨后，兵长一米六。', '百度贴吧', '1537715033432');
INSERT INTO `hitokoto` VALUES ('453', '找不到路，就自己走一条出来。', '网络', '1537971953302');
INSERT INTO `hitokoto` VALUES ('465', '要么忙着生存要么赶着去死，人总要做点什么。', '肖申克的救赎', '1537715550226');
INSERT INTO `hitokoto` VALUES ('474', '不要因为结束而哭泣，微笑吧，为你的曾经拥有。', '其他', '1537791504310');
INSERT INTO `hitokoto` VALUES ('476', '君生我未生，我生君已老。 君恨我生迟，我恨君生早。', '全唐诗续拾', '1537881415809');
INSERT INTO `hitokoto` VALUES ('477', '我从小就害怕虫子', '小小闲', '1537715943107');
INSERT INTO `hitokoto` VALUES ('478', '缘起，在人群中，我看见你。缘灭，我看见你，在人群中。', '其他', '1537792892633');
INSERT INTO `hitokoto` VALUES ('488', '淅淅沥沥的雨，即便能填满路上的水坑，也填不满心中的空洞。', '神圣之门', '1538053570276');
INSERT INTO `hitokoto` VALUES ('492', '学而不思则罔，思而不学则殆。', '论语', '1538145382259');
INSERT INTO `hitokoto` VALUES ('494', '君子坦荡荡，小人长戚戚。', '论语', '1537631597666');
INSERT INTO `hitokoto` VALUES ('512', '不管前方的路有多苦，只要走的方向正确，不管多么崎岖不平，都比站在原地更接近幸福。', '千与千寻', '1537880514364');
INSERT INTO `hitokoto` VALUES ('520', '与其想着怎么美丽地牺牲,倒不如想着怎么漂亮地活到最后一刻。', '银魂', '1537792855855');
INSERT INTO `hitokoto` VALUES ('522', '为了终止绝望的连锁，希望她能化为照亮正确道路的灯火。', 'Re：从零开始的异世界生活', '1537718029898');
INSERT INTO `hitokoto` VALUES ('526', '关于自己的生活，我和你都不是读者，而是作者。至少结局，还是能自己说了算的。', '银魂', '1537883895639');
INSERT INTO `hitokoto` VALUES ('531', '所谓的王，乃最贪婪，最豪爽，最易怒之人。且清且浊，追求极致人生。为臣者，因之而仰慕，追随其左右。因此，臣民才会有称王之志，追寻自己的理想。', 'fate/zero', '1537879566310');
INSERT INTO `hitokoto` VALUES ('533', '梦存高远，志在争霸，这股热情确实值得赞许。但所谓梦，终有一天是要醒来的。', 'fate/zero', '1537631653374');
INSERT INTO `hitokoto` VALUES ('534', '“把剑放下，成为本王的妻子吧。”', 'fate/zero', '1537790065166');
INSERT INTO `hitokoto` VALUES ('541', '我不是因为需要你们评论几句才去当英雄的，而是因为我想去当所以我才当的。', '一拳超人', '1537881192774');
INSERT INTO `hitokoto` VALUES ('546', '春天是胖次的季节。', '电器街漫画店', '1537719473318');
INSERT INTO `hitokoto` VALUES ('550', '不要为自己的努力道歉，这样太对不起自己了！', '火影忍者', '1537967616615');
INSERT INTO `hitokoto` VALUES ('556', '我不管这个世上的人怎么说我，我只想依照我的信念做事，绝不后悔，不管现在将来都一样。', '火影忍者', '1537879632942');
INSERT INTO `hitokoto` VALUES ('557', '人生中有些事你不竭尽所能去做，你永远不知道自己有多出色！', '海贼王', '1537712394841');
INSERT INTO `hitokoto` VALUES ('573', '我们都是阴沟里的虫子,但总还是得有人仰望星空。', '三体', '1537970105101');
INSERT INTO `hitokoto` VALUES ('574', '弱小和无知，都不是生存的障碍，傲慢才是。', '三体', '1538145366450');
INSERT INTO `hitokoto` VALUES ('578', 'Eloim Essaim Eloim Essaim 请聆听我的请求。', '四月是你的谎言', '1538053529416');
INSERT INTO `hitokoto` VALUES ('580', '人只有在害怕的时候才会变勇敢。', '冰与火之歌', '1537883209120');
INSERT INTO `hitokoto` VALUES ('582', '吾念所归，无惧无退！', '冰与火之歌', '1537972160704');
INSERT INTO `hitokoto` VALUES ('595', '只有用心才能看到本质，最重要的东西眼睛是无法看到的。', 'LE', '1538060814272');
INSERT INTO `hitokoto` VALUES ('599', '生命的本质就是在关系中寻找自己，并成为真正的自己;在关系中寻找爱，并成为爱。', 'le petit prince', '1539182790455');
INSERT INTO `hitokoto` VALUES ('602', '迎接我们的也许是漆黑一片的夜路，即便如此，也要相信自己，勇往直前。 星空会为我们在这条道路上点缀出淡淡星光。', '四月是你的谎言', '1539182798190');
INSERT INTO `hitokoto` VALUES ('614', '“我要诅咒！诅咒所有相爱的情侣！诅咒神圣的夜晚！诅咒这整个世界（世界：怪我咯？）！对所有的现充挥下破坏的铁锤！我会让你尝尝……我生涯最大的诅咒！”', '千叶の堕天圣黑猫', '1539181004045');
INSERT INTO `hitokoto` VALUES ('617', '哥哥也可以喜欢上我之外的女孩子，但只有音梦是不可以的！', '芳乃樱对朝仓纯', '1538060790287');
INSERT INTO `hitokoto` VALUES ('620', '龙儿是我的！谁都不准碰！', '逢坂大河', '1537881046542');
INSERT INTO `hitokoto` VALUES ('622', '请不要跟我搭话。我讨厌你！', '八九寺真宵', '1538231499842');
INSERT INTO `hitokoto` VALUES ('625', '你是笨蛋吗？', '小桐桐（きりりん）', '1537631671387');
INSERT INTO `hitokoto` VALUES ('631', '能够实现愿望的樱花树啊，为什么不能满足这些孩子们如此真诚的要求呢？', '芳乃樱', '1537971954410');
INSERT INTO `hitokoto` VALUES ('632', '我就是小偷，专门来偷走哥哥的心', '芳乃樱', '1538141698433');
INSERT INTO `hitokoto` VALUES ('637', '重新再说一次，至今为止，真的谢谢你。 然后，今后也请多指教了。', '楠田亞衣奈致东条希', '1538145692576');
INSERT INTO `hitokoto` VALUES ('640', '凡人、笨蛋！', '维多利加·德·布洛瓦', '1538144926715');
INSERT INTO `hitokoto` VALUES ('643', '我绝对会成为火影。我从来都是有话直说，这就是我的忍道！', '漩涡鸣人', '1537715155043');
INSERT INTO `hitokoto` VALUES ('647', '绝对要一起去吃拉面喵~', '星空凛', '1537884145386');
INSERT INTO `hitokoto` VALUES ('648', '世界上没有鸟黑，只有鸟厨和丧心病狂的鸟厨！', '树形图设计者', '1537791016205');
INSERT INTO `hitokoto` VALUES ('657', '假如我们相遇，肯定一眼就能认出彼此', '你的名字', '1537881414227');
INSERT INTO `hitokoto` VALUES ('659', '我，将某个人，唯一的某个人，试图锁定。我，', '你的名字', '1537880512894');
INSERT INTO `hitokoto` VALUES ('667', '我无处不在', '超体', '1537791005512');
INSERT INTO `hitokoto` VALUES ('681', '关门，放狗！', '训犬者洛克希', '1538145085045');
INSERT INTO `hitokoto` VALUES ('686', '这就是好奇的代价！', '艾索雷葛斯', '1537879572218');
INSERT INTO `hitokoto` VALUES ('692', '我们是圣骑士，不能让复仇的情绪占据我们的意识。', '光明使者乌瑟尔', '1537791430415');
INSERT INTO `hitokoto` VALUES ('694', '颤抖吧,凡人！', '阿克蒙德', '1537970864191');
INSERT INTO `hitokoto` VALUES ('705', '可怜人意，薄于云水，佳会更难重。', '少年游·离多最是', '1537970634299');
INSERT INTO `hitokoto` VALUES ('706', '有些事情我不看透，不是我太笨，只是我太善良。', '樱桃小丸子', '1537970644628');
INSERT INTO `hitokoto` VALUES ('707', '值得获取的东西，就在风险的彼岸。', '网络', '1537631584137');
INSERT INTO `hitokoto` VALUES ('709', '会起反作用是吧……明明是想保护，却伤害了；明明想要哭泣， 却微笑着。', '吸血鬼骑士', '1537880644433');
INSERT INTO `hitokoto` VALUES ('711', '不要停止奔跑，不要回顾来路，来路无可眷恋，值得期待的只有前方。', '马男波杰克', '1538144205281');
INSERT INTO `hitokoto` VALUES ('716', '多一分心力去注意别人，就少一分心力反省自己，你懂吗？', '佛教禅语', '1538146081761');
INSERT INTO `hitokoto` VALUES ('717', '荒诞也好，愚笨也好，总会过去的。', '一瞬的光和永远', '1538145085898');
INSERT INTO `hitokoto` VALUES ('720', '我不要你忘记他 , 我只要你记得我', '网络', '1537631668716');
INSERT INTO `hitokoto` VALUES ('722', '生生生生暗生始，死死死死冥死终。', '东方永夜抄', '1538232858383');
INSERT INTO `hitokoto` VALUES ('723', '你的胆小，就让它，见鬼去吧。', 'アシタハアタシノカゼガフク', '1538231811067');
INSERT INTO `hitokoto` VALUES ('730', '万法缘生，皆系缘分！', '佛教禅语', '1538146485519');
INSERT INTO `hitokoto` VALUES ('750', '不逆 不耻 不憾', '舰队Collection', '1537791437486');
INSERT INTO `hitokoto` VALUES ('755', '如果政府不能解决问题, 那它本身就成为问题!', '里根', '1537884126492');
INSERT INTO `hitokoto` VALUES ('757', '就连一直都无容身之地的我…也不是可以任意舍弃的生命。', '夏目友人帐', '1538145160593');
INSERT INTO `hitokoto` VALUES ('759', '那双紧握不放的手…抓住的是希望…亦或是绝望…', '原创', '1538145800779');
INSERT INTO `hitokoto` VALUES ('760', '衣带渐宽终不悔,为伊消得人憔悴.', '蝶恋花', '1537883173250');
INSERT INTO `hitokoto` VALUES ('761', '明明只是活着，哀伤却无处不在…', '秒速五厘米', '1537970573805');
INSERT INTO `hitokoto` VALUES ('767', '我们也许再也不会见面了吧，因此我绝对不会忘了你的声音，你的眼眸，与你一起看到过的所有的景色，以及，与你一起度过的那个耀眼的夏天。', '草莓100%', '1538144053396');
INSERT INTO `hitokoto` VALUES ('770', '你说过等我的······', 'Seek/追寻城堡色', '1538143992644');
INSERT INTO `hitokoto` VALUES ('771', '世间所有的相遇，都是久别重逢。', '一代宗师', '1537788747293');
INSERT INTO `hitokoto` VALUES ('775', '人能够在心里郁积那么多的事情，而他们又会忘记那么多的事情，真是不可思议…', '最终幻想', '1537792921837');
INSERT INTO `hitokoto` VALUES ('779', '要么忙着生存要么赶着去死，人总要做点什么', '肖申克的救赎', '1537881286271');
INSERT INTO `hitokoto` VALUES ('781', '时间就是一个饥饿的怪物，稍有不慎便会被它吃掉。', '原创', '1538145931478');
INSERT INTO `hitokoto` VALUES ('785', '相互间的抚慰根本没必要只要你还存在着就足够', '原创', '1537883918699');
INSERT INTO `hitokoto` VALUES ('787', '说时依旧,有泪如倾', '说时依旧', '1537715748970');
INSERT INTO `hitokoto` VALUES ('790', '无论做什么，记得为自己而做，那就毫无怨言。', '流金岁月', '1537883689424');
INSERT INTO `hitokoto` VALUES ('794', '在茫茫人海中，同样是高中生，同乘7点50分的电车，看着同一片海…那个瞬间不就是如奇迹般的邂逅吗。', '单恋电车', '1537789379820');
INSERT INTO `hitokoto` VALUES ('808', '遗憾的是我们生活在两条平行直线永远不会相交的世界里。', '刺青杀人事件', '1538144177789');
INSERT INTO `hitokoto` VALUES ('813', '要记住伟大的探知可逆定律:如果你能看到一个低墒世界,那个低嫡世界迟早也能看到你,只是时间问题。所以,什么事情都等别人做是危险的。', '三体III', '1537719342785');
INSERT INTO `hitokoto` VALUES ('814', '愿我的人民，永远，不要被那些无关紧要的差别，所迷惑。', '魔兽', '1537715484008');
INSERT INTO `hitokoto` VALUES ('823', '走路太骚必摔跤，得瑟过劲会闪腰。', '原创', '1537884615793');
INSERT INTO `hitokoto` VALUES ('830', '每一个人都应该明确自己的方向和位置。', '原创', '1538143409378');
INSERT INTO `hitokoto` VALUES ('843', '如果我贏了，你就是我的人了', '零之轨迹', '1538144217588');
INSERT INTO `hitokoto` VALUES ('860', '有一些情感，没办法辜负它。', '原创', '1537880644497');
INSERT INTO `hitokoto` VALUES ('864', '你骄傲的和别人说，嘿，我写了个能让Windows崩溃的程序，他们会面无表情地盯着你说“哥们，我装（Windows）系统的时候就免费带着了”', '李纳斯', '1538146082524');
INSERT INTO `hitokoto` VALUES ('871', '我觉得在这里干尽坏事的玩家，都是些在现实世界中也烂到骨子里的家伙。', '刀剑神域', '1537884447927');
INSERT INTO `hitokoto` VALUES ('880', '要是太勉强自己的话，总有一天会受伤的', '吸血鬼骑士', '1537712686562');
INSERT INTO `hitokoto` VALUES ('885', '应该可以了吧，我已经很努力了，应该可以抵达终点了…', 'AIR', '1538145578958');
INSERT INTO `hitokoto` VALUES ('889', '休息对于生存而言，也是紧要问题', '虫师', '1537879537472');
INSERT INTO `hitokoto` VALUES ('890', '这世界是个好地方，值得为它奋斗。后半句我同意。', '海明威', '1537792611239');
INSERT INTO `hitokoto` VALUES ('891', '成熟不是心变老,是泪在打转还能微笑', '天边', '1538061083888');
INSERT INTO `hitokoto` VALUES ('894', '比自己,比梦想更重要的东西永远都存在着...', '钢之炼金术师', '1538145849637');
INSERT INTO `hitokoto` VALUES ('901', '观察的实质是：“不赞美，不责难，甚至也不惋惜，但求了解认识而已。”', '柴静', '1538144052272');
INSERT INTO `hitokoto` VALUES ('911', '难过从来就不能解决任何问题', '网络', '1537965942562');
INSERT INTO `hitokoto` VALUES ('914', '若挥袖作别，流云万千，可有人千万流连。 若今昔一别，一别永年，苍山负雪，浮生尽歇。', '浮生未歇', '1538144927731');
INSERT INTO `hitokoto` VALUES ('916', '照我思索，可理解我，照我思索，可以得人。', '沈从文墓志铭', '1538140398010');
INSERT INTO `hitokoto` VALUES ('923', '我从远方赶来，恰巧你们也在。', '生如夏花', '1537715812702');
INSERT INTO `hitokoto` VALUES ('925', '我从来都不是什么天才，只是一个普通人，是一个连一个小女孩都保护不了的普通的、渺小的人类啊。', '钢之炼金术师', '1538146119025');
INSERT INTO `hitokoto` VALUES ('933', '人生充斥着谎言,我又岂能独善其身!', '网络', '1537880025730');
INSERT INTO `hitokoto` VALUES ('934', '让留下的人，笑着活下去', 'narcissu', '1537883688409');
INSERT INTO `hitokoto` VALUES ('936', '你的电脑，我的权限；你的命运，由我做主。', '原创', '1537967571016');
INSERT INTO `hitokoto` VALUES ('940', '风筝的线你随时可以放开，只是别盼望我会回来', '网络', '1539181315115');
INSERT INTO `hitokoto` VALUES ('952', '还能再见面吗? 一定能见面的', 'Fantastic Children', '1538146484173');
INSERT INTO `hitokoto` VALUES ('953', '生命中曾经有过的所有灿烂，终究都需要用寂寞来偿还。', '百年孤独', '1539180594677');
INSERT INTO `hitokoto` VALUES ('955', '最孤独的人最亲切，受过伤的人总是笑的最灿烂。', '素媛', '1537880520388');
INSERT INTO `hitokoto` VALUES ('960', '死亡不是失去了生命，只是走出了时间', '干嚼鹿肉', '1537715459942');
INSERT INTO `hitokoto` VALUES ('961', '别把耿直当理由。', '网络', '1537715283537');
INSERT INTO `hitokoto` VALUES ('963', '问:相信是什么意思? 答:觉得被人背叛也无所谓，就算被人背叛也不后悔。', '戏言系列', '1537791469708');
INSERT INTO `hitokoto` VALUES ('971', 'Write the code, Change the world.', 'Apple', '1537631649950');
INSERT INTO `hitokoto` VALUES ('974', '人是可以改变一切的，世上的一切。', '吹响！上低音号', '1538231385290');
INSERT INTO `hitokoto` VALUES ('981', '总有一天一定会……有站在你身边与你展望着同样的未来的伙伴出现。', '电波教师', '1537881347043');
INSERT INTO `hitokoto` VALUES ('982', '你喜欢的人已经心有所属不是正常的吗，因为你喜欢他，所以你的眼中就只有她。人啊，总是盲目地去爱。', '四月是你的谎言', '1538143627618');
INSERT INTO `hitokoto` VALUES ('989', '吟唱幸福的歌谣，令少女沉醉向往。童话堕入黑夜，是谎言还是幻梦，无声终结', '穿越西元3000后', '1537715068836');
INSERT INTO `hitokoto` VALUES ('990', '即使想放弃，也没法放弃最想要的东西，这就是人', '悠久之翼', '1537788541340');
INSERT INTO `hitokoto` VALUES ('993', '如果说怪盗是一个技艺精湛，盗取财宝的艺术家，那么侦探就只是跟在怪盗后面吹毛求疵，充其量不过是个评论家。', '名侦探柯南', '1539181194794');
INSERT INTO `hitokoto` VALUES ('998', '追逐梦想的人比抓住梦想的人更能发挥实力。', '银魂', '1537631656778');
INSERT INTO `hitokoto` VALUES ('1006', '只顾着追求新事物，却不回顾历史，怎么会有未来。', '虞美人盛开的山坡', '1537715738170');
INSERT INTO `hitokoto` VALUES ('1009', '人们要是没有回忆就活不下去，但是只有回忆的话也活不下去。梦总是有会醒来的时候，不会醒的梦总有一天会变成悲伤。', '原创', '1537879949261');
INSERT INTO `hitokoto` VALUES ('1010', '也许正义并非太阳，而是如同星星一般的东西，天空中有无数的星星，彼此不断抵消着其他星星的光芒。', '亚尔斯兰战纪', '1538143605349');
INSERT INTO `hitokoto` VALUES ('1012', '起风了,唯有努力生存。', '起风了', '1537714891772');
INSERT INTO `hitokoto` VALUES ('1016', '王冠会让戴上它的人高人一头，是地位的象征。但王冠真正的意义是：当灾难从天而降时，我会为你们抵挡一切，永远让你们只看到金色的希望。', '星游记', '1537631649863');
INSERT INTO `hitokoto` VALUES ('1023', '是不是现在踏出这一步，下决定的是他。', '电波教师', '1538060813278');
INSERT INTO `hitokoto` VALUES ('1027', '跌跌撞撞的成长，又美又疼才是本质。', '哥斯拉不说话', '1538146331024');
INSERT INTO `hitokoto` VALUES ('1032', '到底要被救多少次，才会甘心啊！？', '在地下城寻找邂逅是否搞错了什么', '1538146227072');
INSERT INTO `hitokoto` VALUES ('1034', '在未知的未来将要发生的事，一定有它的意义', '火影忍者', '1538145002749');
INSERT INTO `hitokoto` VALUES ('1037', '最近的烦恼是小小的离别带来的寂寞，一瞬间的邂逅与分别，这一个一个的刹那，我想好好珍惜起来。', '夏目友人帐', '1537878707818');
INSERT INTO `hitokoto` VALUES ('1044', '物转星移，花开花落，周而复始，生生不息，但今昔已非昨日，然今日花容依旧。', '虫师', '1537884643018');
INSERT INTO `hitokoto` VALUES ('1047', '从进入厨房的瞬间开始，你们就肩负着烹饪美食的责任。', '食戟之灵', '1537965944897');
INSERT INTO `hitokoto` VALUES ('1049', '生活坏到一定程度就会好起来，因为它无法更坏。', '龙猫', '1538061449080');
INSERT INTO `hitokoto` VALUES ('1055', '我们是如此的担心着未来会发生的事情，因此忘记了慢下来享受现在。', '网络', '1537790841002');
INSERT INTO `hitokoto` VALUES ('1060', '人与人之间情断义绝，并不需要什么具体理由，就算表面上有，也很可能只是心已经离开的结果，事后才编造出的借口而已。', '解忧杂货铺', '1537715155043');
INSERT INTO `hitokoto` VALUES ('1068', '友情其实和爱情一样，很多的时候，距离才可以让彼此更懂得彼此。', '左手倒影右手年华', '1538143408494');
INSERT INTO `hitokoto` VALUES ('1070', '就算世上有着所谓的“好女人”，也不会有着“和我关系好的女人”。', '我的青春恋爱物语果然有问题', '1537631651829');
INSERT INTO `hitokoto` VALUES ('1071', '只要是亲生父母，除非你去犯罪，否则你干什么他们不支持你呢。', '解忧杂货店', '1537884644015');
INSERT INTO `hitokoto` VALUES ('1073', '我们嘴里的别人的事听起来就像是自己的事；我们说自己的事的时候，却又在像说一段不相干的故事', '网络', '1537791005490');
INSERT INTO `hitokoto` VALUES ('1076', '你什么时候放下，什么时候就没有烦恼', '网络', '1537972160081');
INSERT INTO `hitokoto` VALUES ('1083', '自由不是你想干什么就干什么，而是你想不干什么就不干什么。', '康德', '1537715064844');
INSERT INTO `hitokoto` VALUES ('1091', '命运的红线一旦断了，就再也接不上了。', '犬夜叉', '1538231212670');
INSERT INTO `hitokoto` VALUES ('1092', '梦想不会逃跑，会逃跑的只有人', '网络', '1539181269757');
INSERT INTO `hitokoto` VALUES ('1098', '正因为生命有限，所以才显得更重要，正因为生命有限，所以才更应该努力不懈。', '名侦探柯南', '1539005958582');
INSERT INTO `hitokoto` VALUES ('1100', '人这种东西，除了为了永不满足的欲望追求新的刺激之外，也是重视稀少价值之物的奇怪生物。', 'gosick', '1537881414154');
INSERT INTO `hitokoto` VALUES ('1103', '那些坚定决心的人们，会展现出好脸色。', '闪电十一人', '1537884127372');
INSERT INTO `hitokoto` VALUES ('1105', '即使匍匐在地，也要持续前进，这才是你的作风。现在的你只靠一些漂亮话当借口，在高墙前使性子，不过是个小鬼罢了。', '银魂', '1538145488369');
INSERT INTO `hitokoto` VALUES ('1109', '我们都是好朋友吧，所以你的东西就是我的东西，我的东西还是我的东西。', '网络', '1538142232315');
INSERT INTO `hitokoto` VALUES ('1110', '失望了吗？没错，世上或许有些东西别打开比较好，真正把心打开的人多么麻烦啊！', '绝望先生', '1537878645109');
INSERT INTO `hitokoto` VALUES ('1111', '哭也不会改变什么，这个世界从来不会对任何人温柔。', '黑执事', '1538146393677');
INSERT INTO `hitokoto` VALUES ('1114', '因为等待的越久，重逢时就越幸福啊。', '名侦探柯南', '1537884234967');
INSERT INTO `hitokoto` VALUES ('1117', '天予不取，必遭天谴。', '易经', '1537884508612');
INSERT INTO `hitokoto` VALUES ('1118', '我宁可一开始就不认识那个人，也好过相识以后却要生死离别。', '仙剑4', '1537881284037');
INSERT INTO `hitokoto` VALUES ('1134', '奇迹，只不过是努力的另一个名字罢了。', '其他', '1537965640346');
INSERT INTO `hitokoto` VALUES ('1137', '代你见证世界的终结，来世再续梦之伊甸', 'Eden*/b站弹幕', '1538144377059');
INSERT INTO `hitokoto` VALUES ('1139', '父母是你的一把粗糙的伞，可是它为你遮风挡雨——而我们应该做的，是感激他们，并不是舍弃他们、捅破他们。', '龙猫 沧笙踏歌', '1538232827896');
INSERT INTO `hitokoto` VALUES ('1145', '当欲望失去了枷锁，向左是地狱，向右也是地狱。', '尘缘', '1537883902033');
INSERT INTO `hitokoto` VALUES ('1156', '不管明天会发生什么，请牢记住今天。', '根号菌SAMA', '1538145476641');
INSERT INTO `hitokoto` VALUES ('1163', '我们都很执着,而且思念的越深,越是绝望。', '人渣的本愿', '1537972159715');
INSERT INTO `hitokoto` VALUES ('1164', '一个人觉得寂寞，和另一个人相互依偎又有什么错', '人渣的本愿', '1537715459887');
INSERT INTO `hitokoto` VALUES ('1170', '我笑了，开怀的笑了，真的', '小C', '1538145367535');
INSERT INTO `hitokoto` VALUES ('1175', '正因为有忘也忘不了的回忆，才会变得坚强，这就是所谓的成长吧！', '火影忍者', '1537884104996');
INSERT INTO `hitokoto` VALUES ('1185', '不是他，变成他。', '原创', '1537881283868');
INSERT INTO `hitokoto` VALUES ('1186', '我不分白天或黑夜，因为我觉得我的人生就像在白夜中行走。', '不善', '1538145159608');
INSERT INTO `hitokoto` VALUES ('1187', '人总是害怕死亡，却殊不知有出生之时必有死亡之日。', '不善', '1538143111438');
INSERT INTO `hitokoto` VALUES ('1190', '你要乖，要长大，要不负众望。', '耽萌', '1537792686400');
INSERT INTO `hitokoto` VALUES ('1195', '一瓶250ml的吊水，一共是3111滴。', '网络', '1537712685790');
INSERT INTO `hitokoto` VALUES ('1206', '自杀是没有理由的，只是今天没有飞起来罢了。', '空之境界', '1537883919679');
INSERT INTO `hitokoto` VALUES ('1211', '对于虚伪而言，真实的光明或许过于耀眼了', '蔷薇少女', '1537790086644');
INSERT INTO `hitokoto` VALUES ('1217', '每个人都曾有一个梦。但最后我们都把它弄丢了，在追逐幻影的路上。', '西风', '1537970662954');
INSERT INTO `hitokoto` VALUES ('1224', '正因为生来什么都没有，因此我们能拥有一切。', '游戏人生', '1537790006054');
INSERT INTO `hitokoto` VALUES ('1225', '未来的事无人知晓，所以它才如同这重逢一般，拥有着无限的可能性。', '命运石之门', '1537712482939');
INSERT INTO `hitokoto` VALUES ('1227', '想说什么就说，想做什么就做，我们不就是这么一直过来的吗？', 'LoveLive!', '1537879625246');
INSERT INTO `hitokoto` VALUES ('1228', '也许一个人的快乐会建立在另一个人或者很多人的痛苦之上。但是，自己种下的祸根终有一天会报应在自己的身上的。', '地狱少女', '1539182857621');
INSERT INTO `hitokoto` VALUES ('1230', '虚伪的眼泪，会伤害别人，虚伪的笑容，会伤害自己。', '叛逆的鲁鲁修', '1537884315945');
INSERT INTO `hitokoto` VALUES ('1233', '目的虽有，却无路可循；我们称之为路的，无非是踌躇。', '误入世界', '1537971216434');
INSERT INTO `hitokoto` VALUES ('1239', '愿留在Minecraft，也不愿回到现实。', 'Lipww1234', '1537881191566');
INSERT INTO `hitokoto` VALUES ('1249', 'This is your dream! Anything you can do in your dreams, you can do now!', 'My Little Pony: Friendship is Magic', '1538141519983');
INSERT INTO `hitokoto` VALUES ('1251', 'What about super-ultra-extreme-awesomazing?', 'My Little Pony: Friendship is Magic', '1537884665764');
INSERT INTO `hitokoto` VALUES ('1263', '渔舟唱晚，响穷彭蠡之滨；雁阵惊寒，声断衡阳之浦。', '滕王阁序', '1537715467470');
INSERT INTO `hitokoto` VALUES ('1264', '关山难越，谁悲失路之人？萍水相逢，尽是他乡之客。', '滕王阁序', '1537884146212');
INSERT INTO `hitokoto` VALUES ('1266', '腾蛟起凤，孟学士之词宗；紫电青霜，王将军之武库。', '滕王阁序', '1537883727502');
INSERT INTO `hitokoto` VALUES ('1269', '不知横跨几度银河，才终于在尽头与你相遇', '前前前世', '1539181013183');
INSERT INTO `hitokoto` VALUES ('1279', '只有坦然接受命运的不公，才能安然享受生命的平等。', '站在两个世界的边缘', '1538144133271');
INSERT INTO `hitokoto` VALUES ('1280', '我们一路奋战，不是为了改变世界，而是为了不让世界改变我们。', '熔炉', '1538053539269');
INSERT INTO `hitokoto` VALUES ('1282', '知识不求人。', '最终幻想XIV', '1537971217575');
INSERT INTO `hitokoto` VALUES ('1287', '你是清风上的明月，枫林间的鸟雀。', '白开', '1537880579156');
INSERT INTO `hitokoto` VALUES ('1288', '梦里与现实的距离，仅仅是双眸的一合一闭。', '原创', '1538144784042');
INSERT INTO `hitokoto` VALUES ('1294', '屠龙宝刀，点击就送。', '网络', '1537881045777');
INSERT INTO `hitokoto` VALUES ('1295', '暴力出奇迹，骗分过样例。', 'OIer', '1538145043087');
INSERT INTO `hitokoto` VALUES ('1297', '为了正义', '网络', '1538232701823');
INSERT INTO `hitokoto` VALUES ('1301', '你说一声，我也默认，我们在这月光下十指生根。', '芬芳一生', '1537880646161');
INSERT INTO `hitokoto` VALUES ('1302', '得到了再失去，总是比从来就没有得到更伤人。', '追风筝的人', '1539006059508');
INSERT INTO `hitokoto` VALUES ('1307', '你还有好多未完成的梦，你有什么理由停下脚步', '网络', '1538144009016');
INSERT INTO `hitokoto` VALUES ('1310', '如果到了一个遥远陌生的国度，还不去改变或者推翻自己的曾经，那这远走高飞还有什么飞头？', '无出路咖啡馆', '1537792653938');
INSERT INTO `hitokoto` VALUES ('1311', '流浪汉最受不了的或许不是吃不饱喝不足，而是他们终日终年的沉默。人们会赏他们一两个角子，但从来不赏个面子站下脚，听他们说句话', '无出路咖啡馆', '1538061447906');
INSERT INTO `hitokoto` VALUES ('1313', '人总是健忘的，所以在行走一段人生旅途后，总要不自觉地停下来，整理一下前段时间的得与失，得大于失证明这段时间没有浪费，欣喜若狂的准备下一段旅途。', '唐砖', '1538144132002');
INSERT INTO `hitokoto` VALUES ('1316', '力所能及的帮助他人是我们做人的本分，刻意的那么做就超出了我们的能力范畴，说不定还会引来恶意的猜想。', '胡说八道', '1537716102084');
INSERT INTO `hitokoto` VALUES ('1326', '为什么要称赞他人？那是为了把对方捧到更高的地方更容易绊他的脚，为了把他从高处摔下来。这就叫做称赞杀人法。', '我的青春恋爱物语果然有问题', '1537883901030');
INSERT INTO `hitokoto` VALUES ('1328', '女生口中的「好人」首先百分之百是「怎样都好的人」的意思，再好也不过止于「方便好使的人」。也就是说，不管怎样都是没戏了', '我的青春恋爱物语果然有问题', '1538230994986');
INSERT INTO `hitokoto` VALUES ('1336', '世界上最令人激动的一件事就是：你原本以为没有机会靠近的人，竟然爱上了你...', 'Bruce Jc', '1538231208309');
INSERT INTO `hitokoto` VALUES ('1342', '故人啊 已做了他人嫁', '一醉南柯', '1537881346590');
INSERT INTO `hitokoto` VALUES ('1349', '末将于禁，愿为曹家世代赴汤蹈火。', '镇魂街', '1537715447350');
INSERT INTO `hitokoto` VALUES ('1353', '遇到事情不能坐以待毙！', '捷德奥特曼', '1537882750710');
INSERT INTO `hitokoto` VALUES ('1358', '所有的漩涡与波浪都痛苦而急切地奔向自己的目标——许许多多不同的目标：奔向瀑布，奔向大海，奔向河流，直至百川汇集的大洋。', '悉达多', '1537879667910');
INSERT INTO `hitokoto` VALUES ('1360', '我纯净的笑容，我想一生珍藏', 'Bruce Jc', '1537883219629');
INSERT INTO `hitokoto` VALUES ('1363', '不需要逃避，也不必看轻自己，接受自己的不完美，更加努力，凡是打不倒你的都会让你变得更加坚强。', 'Bruce Jc', '1537884011037');
INSERT INTO `hitokoto` VALUES ('1365', '想和你重新认识一次 从你叫什么名字说起。', '你的名字', '1537631603763');
INSERT INTO `hitokoto` VALUES ('1372', '和你们这些少爷不同，我们光是活着就竭尽全力了。', '银魂', '1538144358546');
INSERT INTO `hitokoto` VALUES ('1373', '不怕万人阻挡，就怕自己投降，将来的你一定会感激现在拼命的自己，自己选择的路，再艰难，跪着也要走完。', 'Bruce Jc', '1537715467476');
INSERT INTO `hitokoto` VALUES ('1378', '其实本来就没有什么大彻大悟，不过是找到一个够麻痹自己一生的理由。', '原创', '1538061047019');
INSERT INTO `hitokoto` VALUES ('1379', '万有引力可无法对坠入爱河的人负责。', '爱因斯坦', '1537714870381');
INSERT INTO `hitokoto` VALUES ('1388', '倘若只是为了驱赶心中的寂寞，找谁都可以的。', '秒速5厘米', '1537881345538');
INSERT INTO `hitokoto` VALUES ('1398', '(」・ω・)」うー！(／・ω・)／にゃー！', '潜行吧奈亚子', '1537713740506');
INSERT INTO `hitokoto` VALUES ('1405', '男人就应该保持冷静，沸腾的水只会被蒸发掉。', '假面骑士kabuto', '1537883006020');
INSERT INTO `hitokoto` VALUES ('3591', '那天她夸我很会笑,那十秒灵魂大概已卖掉.', 'Nice · 南先生', '1538145693707');
INSERT INTO `hitokoto` VALUES ('3592', '待至暮年归,挽手戏落日.', 'Nice · 南先生', '1538144059619');
INSERT INTO `hitokoto` VALUES ('3593', '所爱隔山海，山海皆可平。可是你不爱我啊，隔了座火焰山还拿不到芭蕉扇。我奋不顾身穿山越岭到了你身旁，你也只会来一句“卧槽你好666啊”', '网易云音乐热评', '1538061138663');
INSERT INTO `hitokoto` VALUES ('3596', '每一天都可能会有刷新你世界观的事', '原创', '1537715946263');
INSERT INTO `hitokoto` VALUES ('3598', '我要这天，再遮不住我眼，要这地，再埋不了我心，要这众生，都明白我意，要那诸佛，都烟消云散!', '悟空传', '1538145383511');
INSERT INTO `hitokoto` VALUES ('3601', '若天压我，劈开那天，若地拘我，踏碎那地，我等生来自由身，谁敢高高在上。', '悟空传', '1537884010757');
INSERT INTO `hitokoto` VALUES ('3608', '无能为力的同情比欺负本身更伤人。', '终极恶女', '1537880580702');
INSERT INTO `hitokoto` VALUES ('3609', '菩提本无树，明镜亦非台，本来无一物，何处惹尘埃。', '慧能', '1537715037196');
INSERT INTO `hitokoto` VALUES ('3610', '身是菩提树，心如明镜台，时时勤拂拭，勿使惹尘埃。', '神秀', '1537631670102');
INSERT INTO `hitokoto` VALUES ('3627', '让我们开始我们的约会（战争）吧', '约会大作战', '1537970545716');
INSERT INTO `hitokoto` VALUES ('3628', '千般荒凉，以此为梦；万里蹀躞，以此为归。', '文化苦旅', '1537880054259');
INSERT INTO `hitokoto` VALUES ('3632', '安静的心是最高的品质，它是没有分界的，完整的、纯洁的。他就是全神贯注、觉察力、爱和最高的智慧', 'Qihoo360', '1537880580913');
INSERT INTO `hitokoto` VALUES ('3636', '连我爸都没打过我', '高达0079', '1537883895052');
INSERT INTO `hitokoto` VALUES ('3642', 'gugugugugu', 'haoduor', '1537788731610');
INSERT INTO `hitokoto` VALUES ('3660', '以智者之名，为愚者代辩。', 'Gosick', '1537883016824');
INSERT INTO `hitokoto` VALUES ('3661', '清算，终将到来。', 'Stellaris', '1537880582239');
INSERT INTO `hitokoto` VALUES ('3683', '你要知道我所做出的决定都没改变过 无论如何也会达成', '原创', '1539180589558');
INSERT INTO `hitokoto` VALUES ('3690', '生命的长度我是拓展不了了，但是我可以试着把它拉宽一点，这样子就能印出彩虹了。', '原创', '1537971216669');
INSERT INTO `hitokoto` VALUES ('3698', '知我者谓我心忧', '佚名.', '1538144378227');
INSERT INTO `hitokoto` VALUES ('3699', '“大圣此去欲何?”,“踏南天，碎凌霄！”“若一去不回....”“便一去不回！”', '影视', '1537881415792');
INSERT INTO `hitokoto` VALUES ('3701', '我想拥有温柔，不仅仅止于表面的伪装。', '原创', '1538232807215');
INSERT INTO `hitokoto` VALUES ('3709', '双马尾是最好的方向盘', '来自网络', '1537969909141');
INSERT INTO `hitokoto` VALUES ('3720', '我们一直在离别中，比如和爱的人，和伤害，甚至和时光。', '萤火虫之墓', '1538053937192');
INSERT INTO `hitokoto` VALUES ('3731', '爱一定存在于世上 一定存在 无从寻觅的是爱的表现 是它的表达方式', '月色真美', '1539181067311');
INSERT INTO `hitokoto` VALUES ('3732', '把同班的可爱女同学娶回家就是我最大的梦想', '月色真美', '1537884448836');
INSERT INTO `hitokoto` VALUES ('3736', '“不管你我相距多远，我都想告诉你 我对你的心意不会变，给即将去到陌生城市的你 ，我永远喜欢你”', '月色真美', '1539006081521');
INSERT INTO `hitokoto` VALUES ('3739', '        幸福是什么？幸福就像第一次我轻轻地牵住你的手，然后我们不约而同地调整手的位置都想要牢牢的抓紧对方。\r\n        这是我第二次写幸福。', '顾', '1537714891766');
INSERT INTO `hitokoto` VALUES ('3741', '天要你走，我要你留', '一本蛮不错的电子书', '1539181289481');
INSERT INTO `hitokoto` VALUES ('3744', '韬光养晦，静待时机', '三国杀 神司马懿', '1537884105786');
INSERT INTO `hitokoto` VALUES ('3753', '大的目标，需要小的目标作铺垫，大的目标需要分割成几段一个一个去实现。', 'Qihoo360', '1538144106403');
INSERT INTO `hitokoto` VALUES ('3754', '你很好，我也很喜欢，但我不是追着别人跑的年纪了。', '相信你愿意相信的就好了', '1538146340952');
INSERT INTO `hitokoto` VALUES ('3766', '我为自己而死，并且，在最后的最后，为自己而活。', 'SCP基金会', '1538145025423');
INSERT INTO `hitokoto` VALUES ('3769', '我恨自己。我爱自己。', 'SCP基金会', '1537715748947');
INSERT INTO `hitokoto` VALUES ('3774', '世上无难事，只要肯放弃。', '嘉豪and佳一', '1537879949727');
INSERT INTO `hitokoto` VALUES ('3777', '我李某相貌堂堂，妻子花容月貌，岂会生出你这种山野莽夫呢？', '十万个冷笑话', '1537970456187');
INSERT INTO `hitokoto` VALUES ('3780', '人生在世不称意，不如自挂东南枝', '十万个冷笑话', '1538144105446');
INSERT INTO `hitokoto` VALUES ('3786', '只有用心灵才能看得清事物本质，真正重要的东西是肉眼无法看见的', '小王子', '1537878769043');
INSERT INTO `hitokoto` VALUES ('3790', '时间背着我悄悄捏碎从前', '消失', '1538145239289');
INSERT INTO `hitokoto` VALUES ('3804', 'My life for aiur!', '星际争霸2', '1537880647217');
INSERT INTO `hitokoto` VALUES ('3806', '漫漫人生路，相知有几人。', '安如星', '1537882728280');
INSERT INTO `hitokoto` VALUES ('3807', '别跟我谈感情，多伤钱啊！', '原创', '1538146227986');
INSERT INTO `hitokoto` VALUES ('3808', '我认为最深沉的爱；莫过于你离开以后；我活成了你的样子。', '这个杀手不太冷', '1538145284597');
INSERT INTO `hitokoto` VALUES ('3809', 'Something……for nothing！用什么珍贵的东西，换回了空白。', '龙族', '1537970864452');
INSERT INTO `hitokoto` VALUES ('3815', '凡心所向，素履可往，生如逆旅，一苇以航。', '尘曲', '1538144724122');
INSERT INTO `hitokoto` VALUES ('3820', '事实总是露骨地斥责我，有些痛苦是不能体尝的。', '听海听心', '1537882742842');
INSERT INTO `hitokoto` VALUES ('3844', '从你站在桥上看我的 那一刻起你就是我的世界。', '火影忍者', '1537879950609');
INSERT INTO `hitokoto` VALUES ('3847', '你...真是本末倒置，罔顾人伦！', '魔道祖师', '1537718158246');
INSERT INTO `hitokoto` VALUES ('3852', '义城有三盲，真盲，假盲，心盲。', '魔道祖师', '1537715550206');
INSERT INTO `hitokoto` VALUES ('3853', '愿来世，你晓天，晓地，晓星尘。', '魔道祖师', '1537883007154');
INSERT INTO `hitokoto` VALUES ('3858', '明月清风晓星尘，傲雪凌霜宋子琛', '魔道祖师', '1537719409686');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `utype` tinyint(1) unsigned DEFAULT '1' COMMENT '用户类型：0为管理员，1为普通用户',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` char(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `register_time` bigint(12) DEFAULT NULL COMMENT '注册时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态：0为禁用，1为启用',
  `avatar` char(255) DEFAULT NULL COMMENT '头像',
  `is_deleted` tinyint(1) DEFAULT '1' COMMENT '是否删除：0为已经删除，1为未删除',
  `last_login_time` bigint(12) DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'xypecho@163.com', '1536236518370', '1', 'http://localhost:8081/1537277573806.jpg', '1', '1539181835516');
INSERT INTO `users` VALUES ('13', '1', '呆呆', 'f4cc399f0effd13c888e310ea2cf5399', 'daiddo@163.com', '1536418778877', '1', 'null', '1', '1537429356650');
INSERT INTO `users` VALUES ('14', '1', '王呆呆', '7cc916b6486768fc306e1c7202bf13ed', '760403480@qq.com', '1536582140983', '1', 'null', '0', '1536582192622');
INSERT INTO `users` VALUES ('15', '1', 'zhttty', '5a21993b46b8ca56d3d5995cfcd5ed6a', 'null', '1536675769839', '1', 'http://localhost:8081/1537432558650.jpg', '1', '1537446909806');
INSERT INTO `users` VALUES ('16', '1', '很青的青蛙丶', '18482fc8ac2f89aa0f163a7751d5cc45', '', '1536756903814', '1', '', '1', '1536934466458');
INSERT INTO `users` VALUES ('17', '1', '呆呆阿噗:-D', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '1536975246833', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1536987053946&di=8efa075e4fdcb26303cca33bbe7f0031&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F96dda144ad3459823295344606f431adcaef84c3.jpg', '1', '1537431725971');
INSERT INTO `users` VALUES ('18', '1', '尊老爱幼尹志平', '0bb029d5cfe21c44bd1d42bdc407afda', null, '1537343645928', '1', 'http://localhost:8081/1537344369026.jpg', '1', '1537879565991');
INSERT INTO `users` VALUES ('19', '1', '深圳-001', 'fcea920f7412b5da7be0cf42b8c93759', null, '1537879625003', '1', null, '1', '1537879667719');
INSERT INTO `users` VALUES ('20', '1', '权利的呆呆', 'e10adc3949ba59abbe56e057f20f883e', null, '1537970455926', '1', null, '1', '1537970634114');
INSERT INTO `users` VALUES ('21', '1', '蕾姆', '9cbf8a4dcb8e30682b927f352d6559a0', null, '1537970491926', '1', null, '1', '1537970532954');
INSERT INTO `users` VALUES ('22', '1', '切图仔宣言', 'e807f1fcf82d132f9bb018ca6738a19f', null, '1539006058354', '1', null, '1', '1539006081162');
