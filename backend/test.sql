/*
Navicat MySQL Data Transfer

Source Server         : test_localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-09-26 22:32:29
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
INSERT INTO `hitokoto` VALUES ('10', '我是一个经常笑的人，可我不是经常开心的人。', '未闻花名', '1537792236264');
INSERT INTO `hitokoto` VALUES ('22', '比任何人都要了解自己，比任何人都要关爱自己。喜欢上这样的人，并没有什么奇怪的呢。', '初音岛', '1537883954880');
INSERT INTO `hitokoto` VALUES ('44', '只要有想见面的人，自己就不再是孤单一人。', '夏目友人帐', '1537880027364');
INSERT INTO `hitokoto` VALUES ('54', '错的不是我， 错的是世界。', 'School Day', '1537880026069');
INSERT INTO `hitokoto` VALUES ('70', '我会跟她结婚，并不是因为她是计算机，而是因为她就是她。同样的，我会喜欢你，也是因为你就是你。', '人型电脑天使心', '1537715738152');
INSERT INTO `hitokoto` VALUES ('73', '我对普通的人类没有兴趣，你们只要是有外星人、未来人、异世界人、超能力者， 就尽管来找我吧！以上！', '凉宫春日的忧郁', '1537883728503');
INSERT INTO `hitokoto` VALUES ('89', '只是相谈就会开心起来，沉浸在温柔的眼神当中，竭尽全力的思念，悄悄地奉献。', 'School Days', '1537715444511');
INSERT INTO `hitokoto` VALUES ('100', '年华无多时，恋爱吧男子！', '源君物语', '1537715411096');
INSERT INTO `hitokoto` VALUES ('103', '我们都在命运之湖上荡舟划桨，波浪起伏着而我们无法逃脱孤航。但是假使我们迷失了方向，波浪将指引我们穿越另一天的曙光。', '死神', '1537881286562');
INSERT INTO `hitokoto` VALUES ('116', '呐，知道么，樱花飘落的速度，是每秒五厘米哦~', '秒速五厘米', '1537879786983');
INSERT INTO `hitokoto` VALUES ('141', '失去的东西虽然拿不回来，但是，忘记的事情是可以想起来的。', 'TOUCH', '1537883980378');
INSERT INTO `hitokoto` VALUES ('167', '不相信自己的人，连努力的价值都没有。', '火影忍者', '1537880514386');
INSERT INTO `hitokoto` VALUES ('170', '我除了投三分，就什么都没有了……', '灌篮高手', '1537881048108');
INSERT INTO `hitokoto` VALUES ('172', '我在人生的道路上迷失了。', '火影忍者', '1537714859479');
INSERT INTO `hitokoto` VALUES ('182', '要改变别人的心真是件很难办的事，不过改变自己要容易一点。', 'XXXHolic', '1537881191482');
INSERT INTO `hitokoto` VALUES ('185', '世界这么大，人生这么长，总会有那么一个人，让你想要温柔的对待。', '哈尔的移动城堡', '1537631632480');
INSERT INTO `hitokoto` VALUES ('194', '我们开始一起攀登，这长长的，长长的坡道。', 'Clannad', '1537879788514');
INSERT INTO `hitokoto` VALUES ('217', '没有期盼就不会出现奇迹。', '古城荆棘王', '1537970492933');
INSERT INTO `hitokoto` VALUES ('219', '如果你都不知道自己想去哪里，那去哪里都是一样的。', '柴郡猫', '1537715270558');
INSERT INTO `hitokoto` VALUES ('221', '明明只是活着，哀伤却无处不在……', '秒速五厘米', '1537715485032');
INSERT INTO `hitokoto` VALUES ('230', '人们只是用好人来称呼对自己有用的人而以，不存在对所有人都有用的人。', '进击的巨人', '1537879673886');
INSERT INTO `hitokoto` VALUES ('242', '嗯，一个人也要加油，我是坚强的孩子。', 'AIR', '1537970533232');
INSERT INTO `hitokoto` VALUES ('247', '无论在哪里遇到你，我都会喜欢上你。', 'AngleBeats!', '1537718029181');
INSERT INTO `hitokoto` VALUES ('253', '无法逃避的是自我，而无法挽回的是过去。', '机动战士高达', '1537883017923');
INSERT INTO `hitokoto` VALUES ('256', '有时语言就像把利刃，使用不当，就会成为凶器。', '名侦探柯南', '1537715812660');
INSERT INTO `hitokoto` VALUES ('262', '你再怎么称赞我，我也不会高兴的，你这个混蛋~', '海贼王', '1537791410838');
INSERT INTO `hitokoto` VALUES ('269', '不习惯的事越来越多，但我仍在前进……就算步伐很小，我也在一步一步的前进。', '夏目友人帐', '1537883981141');
INSERT INTO `hitokoto` VALUES ('280', '我爱的人也爱着我，对我来说这简直是个奇迹。', 'NANA', '1537715444470');
INSERT INTO `hitokoto` VALUES ('281', '你为了你的正义，我为了我的正义。', '火影忍者', '1537790006057');
INSERT INTO `hitokoto` VALUES ('283', '我的一生，无怨无悔！', '北斗神拳', '1537719348952');
INSERT INTO `hitokoto` VALUES ('284', '越是困难，越要抬起头，地上可找不到任何希望！', 'Zetman', '1537788575835');
INSERT INTO `hitokoto` VALUES ('288', '承君此诺，必守一生。', '仙剑奇侠传四', '1537631655148');
INSERT INTO `hitokoto` VALUES ('310', '阳光灼热，数不尽夏日繁华；蝉鸣幽幽，道不完苦辣酸甜。', '危险同居人', '1537878587653');
INSERT INTO `hitokoto` VALUES ('314', '会长和往常一样挺着小小的胸部一副自以为了不起的样子套用某本书的内容说道……', '学生会的一己之见', '1537715270644');
INSERT INTO `hitokoto` VALUES ('326', '生我何用？不能欢笑。灭我何用？不减狂骄。', '悟空传', '1537881192537');
INSERT INTO `hitokoto` VALUES ('339', '日子过的象流水一般。它静静的从我们身边缓缓流过，不带半分声响。那些我们当年执着的人，执着的事，执着之后，却变成一种负担。', '凑合活着', '1537714878135');
INSERT INTO `hitokoto` VALUES ('343', '就算你已经不在，就算你身边的人已经不再是我，我也会坚强的活下去，为了你。', '十六夜暁', '1537879787462');
INSERT INTO `hitokoto` VALUES ('356', '我愿意给你自己所有的快乐，你愿意分担我一半的难过吗？', 'getweb', '1537791004431');
INSERT INTO `hitokoto` VALUES ('368', '万书皆下品，唯有萌最高！', 'wy6510166', '1537970499426');
INSERT INTO `hitokoto` VALUES ('371', '为毛我的眼里常含泪水，因为我老是中枪。', '不管外表怎样强悍我都是受', '1537880027149');
INSERT INTO `hitokoto` VALUES ('372', '在回忆里留下微笑是为了不让你哭泣...', '原创', '1537790572897');
INSERT INTO `hitokoto` VALUES ('383', '我敬你是条汉子！', '论如何回答女友问题“你为什么对我这么好”', '1537882728459');
INSERT INTO `hitokoto` VALUES ('384', '记得当时年纪小，你爱卖萌我爱笑。', '网络', '1537881046242');
INSERT INTO `hitokoto` VALUES ('394', '天空本是一种风景，可是遇见你之后，它变成了一种心情。', '九ちのセカィ', '1537719381191');
INSERT INTO `hitokoto` VALUES ('408', '不忘初心，方得始终。', '网络', '1537971998231');
INSERT INTO `hitokoto` VALUES ('436', '那么，问题来了…', '中国山东找蓝翔', '1537969914716');
INSERT INTO `hitokoto` VALUES ('438', '空山新雨后，兵长一米六。', '百度贴吧', '1537715033432');
INSERT INTO `hitokoto` VALUES ('453', '找不到路，就自己走一条出来。', '网络', '1537971953302');
INSERT INTO `hitokoto` VALUES ('465', '要么忙着生存要么赶着去死，人总要做点什么。', '肖申克的救赎', '1537715550226');
INSERT INTO `hitokoto` VALUES ('474', '不要因为结束而哭泣，微笑吧，为你的曾经拥有。', '其他', '1537791504310');
INSERT INTO `hitokoto` VALUES ('476', '君生我未生，我生君已老。 君恨我生迟，我恨君生早。', '全唐诗续拾', '1537881415809');
INSERT INTO `hitokoto` VALUES ('477', '我从小就害怕虫子', '小小闲', '1537715943107');
INSERT INTO `hitokoto` VALUES ('478', '缘起，在人群中，我看见你。缘灭，我看见你，在人群中。', '其他', '1537792892633');
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
INSERT INTO `hitokoto` VALUES ('580', '人只有在害怕的时候才会变勇敢。', '冰与火之歌', '1537883209120');
INSERT INTO `hitokoto` VALUES ('582', '吾念所归，无惧无退！', '冰与火之歌', '1537972160704');
INSERT INTO `hitokoto` VALUES ('620', '龙儿是我的！谁都不准碰！', '逢坂大河', '1537881046542');
INSERT INTO `hitokoto` VALUES ('625', '你是笨蛋吗？', '小桐桐（きりりん）', '1537631671387');
INSERT INTO `hitokoto` VALUES ('631', '能够实现愿望的樱花树啊，为什么不能满足这些孩子们如此真诚的要求呢？', '芳乃樱', '1537971954410');
INSERT INTO `hitokoto` VALUES ('643', '我绝对会成为火影。我从来都是有话直说，这就是我的忍道！', '漩涡鸣人', '1537715155043');
INSERT INTO `hitokoto` VALUES ('647', '绝对要一起去吃拉面喵~', '星空凛', '1537884145386');
INSERT INTO `hitokoto` VALUES ('648', '世界上没有鸟黑，只有鸟厨和丧心病狂的鸟厨！', '树形图设计者', '1537791016205');
INSERT INTO `hitokoto` VALUES ('657', '假如我们相遇，肯定一眼就能认出彼此', '你的名字', '1537881414227');
INSERT INTO `hitokoto` VALUES ('659', '我，将某个人，唯一的某个人，试图锁定。我，', '你的名字', '1537880512894');
INSERT INTO `hitokoto` VALUES ('667', '我无处不在', '超体', '1537791005512');
INSERT INTO `hitokoto` VALUES ('686', '这就是好奇的代价！', '艾索雷葛斯', '1537879572218');
INSERT INTO `hitokoto` VALUES ('692', '我们是圣骑士，不能让复仇的情绪占据我们的意识。', '光明使者乌瑟尔', '1537791430415');
INSERT INTO `hitokoto` VALUES ('694', '颤抖吧,凡人！', '阿克蒙德', '1537970864191');
INSERT INTO `hitokoto` VALUES ('705', '可怜人意，薄于云水，佳会更难重。', '少年游·离多最是', '1537970634299');
INSERT INTO `hitokoto` VALUES ('706', '有些事情我不看透，不是我太笨，只是我太善良。', '樱桃小丸子', '1537970644628');
INSERT INTO `hitokoto` VALUES ('707', '值得获取的东西，就在风险的彼岸。', '网络', '1537631584137');
INSERT INTO `hitokoto` VALUES ('709', '会起反作用是吧……明明是想保护，却伤害了；明明想要哭泣， 却微笑着。', '吸血鬼骑士', '1537880644433');
INSERT INTO `hitokoto` VALUES ('720', '我不要你忘记他 , 我只要你记得我', '网络', '1537631668716');
INSERT INTO `hitokoto` VALUES ('750', '不逆 不耻 不憾', '舰队Collection', '1537791437486');
INSERT INTO `hitokoto` VALUES ('755', '如果政府不能解决问题, 那它本身就成为问题!', '里根', '1537884126492');
INSERT INTO `hitokoto` VALUES ('760', '衣带渐宽终不悔,为伊消得人憔悴.', '蝶恋花', '1537883173250');
INSERT INTO `hitokoto` VALUES ('761', '明明只是活着，哀伤却无处不在…', '秒速五厘米', '1537970573805');
INSERT INTO `hitokoto` VALUES ('771', '世间所有的相遇，都是久别重逢。', '一代宗师', '1537788747293');
INSERT INTO `hitokoto` VALUES ('775', '人能够在心里郁积那么多的事情，而他们又会忘记那么多的事情，真是不可思议…', '最终幻想', '1537792921837');
INSERT INTO `hitokoto` VALUES ('779', '要么忙着生存要么赶着去死，人总要做点什么', '肖申克的救赎', '1537881286271');
INSERT INTO `hitokoto` VALUES ('785', '相互间的抚慰根本没必要只要你还存在着就足够', '原创', '1537883918699');
INSERT INTO `hitokoto` VALUES ('787', '说时依旧,有泪如倾', '说时依旧', '1537715748970');
INSERT INTO `hitokoto` VALUES ('790', '无论做什么，记得为自己而做，那就毫无怨言。', '流金岁月', '1537883689424');
INSERT INTO `hitokoto` VALUES ('794', '在茫茫人海中，同样是高中生，同乘7点50分的电车，看着同一片海…那个瞬间不就是如奇迹般的邂逅吗。', '单恋电车', '1537789379820');
INSERT INTO `hitokoto` VALUES ('813', '要记住伟大的探知可逆定律:如果你能看到一个低墒世界,那个低嫡世界迟早也能看到你,只是时间问题。所以,什么事情都等别人做是危险的。', '三体III', '1537719342785');
INSERT INTO `hitokoto` VALUES ('814', '愿我的人民，永远，不要被那些无关紧要的差别，所迷惑。', '魔兽', '1537715484008');
INSERT INTO `hitokoto` VALUES ('823', '走路太骚必摔跤，得瑟过劲会闪腰。', '原创', '1537884615793');
INSERT INTO `hitokoto` VALUES ('860', '有一些情感，没办法辜负它。', '原创', '1537880644497');
INSERT INTO `hitokoto` VALUES ('871', '我觉得在这里干尽坏事的玩家，都是些在现实世界中也烂到骨子里的家伙。', '刀剑神域', '1537884447927');
INSERT INTO `hitokoto` VALUES ('880', '要是太勉强自己的话，总有一天会受伤的', '吸血鬼骑士', '1537712686562');
INSERT INTO `hitokoto` VALUES ('889', '休息对于生存而言，也是紧要问题', '虫师', '1537879537472');
INSERT INTO `hitokoto` VALUES ('890', '这世界是个好地方，值得为它奋斗。后半句我同意。', '海明威', '1537792611239');
INSERT INTO `hitokoto` VALUES ('911', '难过从来就不能解决任何问题', '网络', '1537965942562');
INSERT INTO `hitokoto` VALUES ('923', '我从远方赶来，恰巧你们也在。', '生如夏花', '1537715812702');
INSERT INTO `hitokoto` VALUES ('933', '人生充斥着谎言,我又岂能独善其身!', '网络', '1537880025730');
INSERT INTO `hitokoto` VALUES ('934', '让留下的人，笑着活下去', 'narcissu', '1537883688409');
INSERT INTO `hitokoto` VALUES ('936', '你的电脑，我的权限；你的命运，由我做主。', '原创', '1537967571016');
INSERT INTO `hitokoto` VALUES ('955', '最孤独的人最亲切，受过伤的人总是笑的最灿烂。', '素媛', '1537880520388');
INSERT INTO `hitokoto` VALUES ('960', '死亡不是失去了生命，只是走出了时间', '干嚼鹿肉', '1537715459942');
INSERT INTO `hitokoto` VALUES ('961', '别把耿直当理由。', '网络', '1537715283537');
INSERT INTO `hitokoto` VALUES ('963', '问:相信是什么意思? 答:觉得被人背叛也无所谓，就算被人背叛也不后悔。', '戏言系列', '1537791469708');
INSERT INTO `hitokoto` VALUES ('971', 'Write the code, Change the world.', 'Apple', '1537631649950');
INSERT INTO `hitokoto` VALUES ('981', '总有一天一定会……有站在你身边与你展望着同样的未来的伙伴出现。', '电波教师', '1537881347043');
INSERT INTO `hitokoto` VALUES ('989', '吟唱幸福的歌谣，令少女沉醉向往。童话堕入黑夜，是谎言还是幻梦，无声终结', '穿越西元3000后', '1537715068836');
INSERT INTO `hitokoto` VALUES ('990', '即使想放弃，也没法放弃最想要的东西，这就是人', '悠久之翼', '1537788541340');
INSERT INTO `hitokoto` VALUES ('998', '追逐梦想的人比抓住梦想的人更能发挥实力。', '银魂', '1537631656778');
INSERT INTO `hitokoto` VALUES ('1006', '只顾着追求新事物，却不回顾历史，怎么会有未来。', '虞美人盛开的山坡', '1537715738170');
INSERT INTO `hitokoto` VALUES ('1009', '人们要是没有回忆就活不下去，但是只有回忆的话也活不下去。梦总是有会醒来的时候，不会醒的梦总有一天会变成悲伤。', '原创', '1537879949261');
INSERT INTO `hitokoto` VALUES ('1012', '起风了,唯有努力生存。', '起风了', '1537714891772');
INSERT INTO `hitokoto` VALUES ('1016', '王冠会让戴上它的人高人一头，是地位的象征。但王冠真正的意义是：当灾难从天而降时，我会为你们抵挡一切，永远让你们只看到金色的希望。', '星游记', '1537631649863');
INSERT INTO `hitokoto` VALUES ('1037', '最近的烦恼是小小的离别带来的寂寞，一瞬间的邂逅与分别，这一个一个的刹那，我想好好珍惜起来。', '夏目友人帐', '1537878707818');
INSERT INTO `hitokoto` VALUES ('1044', '物转星移，花开花落，周而复始，生生不息，但今昔已非昨日，然今日花容依旧。', '虫师', '1537884643018');
INSERT INTO `hitokoto` VALUES ('1047', '从进入厨房的瞬间开始，你们就肩负着烹饪美食的责任。', '食戟之灵', '1537965944897');
INSERT INTO `hitokoto` VALUES ('1055', '我们是如此的担心着未来会发生的事情，因此忘记了慢下来享受现在。', '网络', '1537790841002');
INSERT INTO `hitokoto` VALUES ('1060', '人与人之间情断义绝，并不需要什么具体理由，就算表面上有，也很可能只是心已经离开的结果，事后才编造出的借口而已。', '解忧杂货铺', '1537715155043');
INSERT INTO `hitokoto` VALUES ('1070', '就算世上有着所谓的“好女人”，也不会有着“和我关系好的女人”。', '我的青春恋爱物语果然有问题', '1537631651829');
INSERT INTO `hitokoto` VALUES ('1071', '只要是亲生父母，除非你去犯罪，否则你干什么他们不支持你呢。', '解忧杂货店', '1537884644015');
INSERT INTO `hitokoto` VALUES ('1073', '我们嘴里的别人的事听起来就像是自己的事；我们说自己的事的时候，却又在像说一段不相干的故事', '网络', '1537791005490');
INSERT INTO `hitokoto` VALUES ('1076', '你什么时候放下，什么时候就没有烦恼', '网络', '1537972160081');
INSERT INTO `hitokoto` VALUES ('1083', '自由不是你想干什么就干什么，而是你想不干什么就不干什么。', '康德', '1537715064844');
INSERT INTO `hitokoto` VALUES ('1100', '人这种东西，除了为了永不满足的欲望追求新的刺激之外，也是重视稀少价值之物的奇怪生物。', 'gosick', '1537881414154');
INSERT INTO `hitokoto` VALUES ('1103', '那些坚定决心的人们，会展现出好脸色。', '闪电十一人', '1537884127372');
INSERT INTO `hitokoto` VALUES ('1110', '失望了吗？没错，世上或许有些东西别打开比较好，真正把心打开的人多么麻烦啊！', '绝望先生', '1537878645109');
INSERT INTO `hitokoto` VALUES ('1114', '因为等待的越久，重逢时就越幸福啊。', '名侦探柯南', '1537884234967');
INSERT INTO `hitokoto` VALUES ('1117', '天予不取，必遭天谴。', '易经', '1537884508612');
INSERT INTO `hitokoto` VALUES ('1118', '我宁可一开始就不认识那个人，也好过相识以后却要生死离别。', '仙剑4', '1537881284037');
INSERT INTO `hitokoto` VALUES ('1134', '奇迹，只不过是努力的另一个名字罢了。', '其他', '1537965640346');
INSERT INTO `hitokoto` VALUES ('1145', '当欲望失去了枷锁，向左是地狱，向右也是地狱。', '尘缘', '1537883902033');
INSERT INTO `hitokoto` VALUES ('1163', '我们都很执着,而且思念的越深,越是绝望。', '人渣的本愿', '1537972159715');
INSERT INTO `hitokoto` VALUES ('1164', '一个人觉得寂寞，和另一个人相互依偎又有什么错', '人渣的本愿', '1537715459887');
INSERT INTO `hitokoto` VALUES ('1175', '正因为有忘也忘不了的回忆，才会变得坚强，这就是所谓的成长吧！', '火影忍者', '1537884104996');
INSERT INTO `hitokoto` VALUES ('1185', '不是他，变成他。', '原创', '1537881283868');
INSERT INTO `hitokoto` VALUES ('1190', '你要乖，要长大，要不负众望。', '耽萌', '1537792686400');
INSERT INTO `hitokoto` VALUES ('1195', '一瓶250ml的吊水，一共是3111滴。', '网络', '1537712685790');
INSERT INTO `hitokoto` VALUES ('1206', '自杀是没有理由的，只是今天没有飞起来罢了。', '空之境界', '1537883919679');
INSERT INTO `hitokoto` VALUES ('1211', '对于虚伪而言，真实的光明或许过于耀眼了', '蔷薇少女', '1537790086644');
INSERT INTO `hitokoto` VALUES ('1217', '每个人都曾有一个梦。但最后我们都把它弄丢了，在追逐幻影的路上。', '西风', '1537970662954');
INSERT INTO `hitokoto` VALUES ('1224', '正因为生来什么都没有，因此我们能拥有一切。', '游戏人生', '1537790006054');
INSERT INTO `hitokoto` VALUES ('1225', '未来的事无人知晓，所以它才如同这重逢一般，拥有着无限的可能性。', '命运石之门', '1537712482939');
INSERT INTO `hitokoto` VALUES ('1227', '想说什么就说，想做什么就做，我们不就是这么一直过来的吗？', 'LoveLive!', '1537879625246');
INSERT INTO `hitokoto` VALUES ('1230', '虚伪的眼泪，会伤害别人，虚伪的笑容，会伤害自己。', '叛逆的鲁鲁修', '1537884315945');
INSERT INTO `hitokoto` VALUES ('1233', '目的虽有，却无路可循；我们称之为路的，无非是踌躇。', '误入世界', '1537971216434');
INSERT INTO `hitokoto` VALUES ('1239', '愿留在Minecraft，也不愿回到现实。', 'Lipww1234', '1537881191566');
INSERT INTO `hitokoto` VALUES ('1251', 'What about super-ultra-extreme-awesomazing?', 'My Little Pony: Friendship is Magic', '1537884665764');
INSERT INTO `hitokoto` VALUES ('1263', '渔舟唱晚，响穷彭蠡之滨；雁阵惊寒，声断衡阳之浦。', '滕王阁序', '1537715467470');
INSERT INTO `hitokoto` VALUES ('1264', '关山难越，谁悲失路之人？萍水相逢，尽是他乡之客。', '滕王阁序', '1537884146212');
INSERT INTO `hitokoto` VALUES ('1266', '腾蛟起凤，孟学士之词宗；紫电青霜，王将军之武库。', '滕王阁序', '1537883727502');
INSERT INTO `hitokoto` VALUES ('1282', '知识不求人。', '最终幻想XIV', '1537971217575');
INSERT INTO `hitokoto` VALUES ('1287', '你是清风上的明月，枫林间的鸟雀。', '白开', '1537880579156');
INSERT INTO `hitokoto` VALUES ('1294', '屠龙宝刀，点击就送。', '网络', '1537881045777');
INSERT INTO `hitokoto` VALUES ('1301', '你说一声，我也默认，我们在这月光下十指生根。', '芬芳一生', '1537880646161');
INSERT INTO `hitokoto` VALUES ('1310', '如果到了一个遥远陌生的国度，还不去改变或者推翻自己的曾经，那这远走高飞还有什么飞头？', '无出路咖啡馆', '1537792653938');
INSERT INTO `hitokoto` VALUES ('1316', '力所能及的帮助他人是我们做人的本分，刻意的那么做就超出了我们的能力范畴，说不定还会引来恶意的猜想。', '胡说八道', '1537716102084');
INSERT INTO `hitokoto` VALUES ('1326', '为什么要称赞他人？那是为了把对方捧到更高的地方更容易绊他的脚，为了把他从高处摔下来。这就叫做称赞杀人法。', '我的青春恋爱物语果然有问题', '1537883901030');
INSERT INTO `hitokoto` VALUES ('1342', '故人啊 已做了他人嫁', '一醉南柯', '1537881346590');
INSERT INTO `hitokoto` VALUES ('1349', '末将于禁，愿为曹家世代赴汤蹈火。', '镇魂街', '1537715447350');
INSERT INTO `hitokoto` VALUES ('1353', '遇到事情不能坐以待毙！', '捷德奥特曼', '1537882750710');
INSERT INTO `hitokoto` VALUES ('1358', '所有的漩涡与波浪都痛苦而急切地奔向自己的目标——许许多多不同的目标：奔向瀑布，奔向大海，奔向河流，直至百川汇集的大洋。', '悉达多', '1537879667910');
INSERT INTO `hitokoto` VALUES ('1360', '我纯净的笑容，我想一生珍藏', 'Bruce Jc', '1537883219629');
INSERT INTO `hitokoto` VALUES ('1363', '不需要逃避，也不必看轻自己，接受自己的不完美，更加努力，凡是打不倒你的都会让你变得更加坚强。', 'Bruce Jc', '1537884011037');
INSERT INTO `hitokoto` VALUES ('1365', '想和你重新认识一次 从你叫什么名字说起。', '你的名字', '1537631603763');
INSERT INTO `hitokoto` VALUES ('1373', '不怕万人阻挡，就怕自己投降，将来的你一定会感激现在拼命的自己，自己选择的路，再艰难，跪着也要走完。', 'Bruce Jc', '1537715467476');
INSERT INTO `hitokoto` VALUES ('1379', '万有引力可无法对坠入爱河的人负责。', '爱因斯坦', '1537714870381');
INSERT INTO `hitokoto` VALUES ('1388', '倘若只是为了驱赶心中的寂寞，找谁都可以的。', '秒速5厘米', '1537881345538');
INSERT INTO `hitokoto` VALUES ('1398', '(」・ω・)」うー！(／・ω・)／にゃー！', '潜行吧奈亚子', '1537713740506');
INSERT INTO `hitokoto` VALUES ('1405', '男人就应该保持冷静，沸腾的水只会被蒸发掉。', '假面骑士kabuto', '1537883006020');
INSERT INTO `hitokoto` VALUES ('3596', '每一天都可能会有刷新你世界观的事', '原创', '1537715946263');
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
INSERT INTO `hitokoto` VALUES ('3690', '生命的长度我是拓展不了了，但是我可以试着把它拉宽一点，这样子就能印出彩虹了。', '原创', '1537971216669');
INSERT INTO `hitokoto` VALUES ('3699', '“大圣此去欲何?”,“踏南天，碎凌霄！”“若一去不回....”“便一去不回！”', '影视', '1537881415792');
INSERT INTO `hitokoto` VALUES ('3709', '双马尾是最好的方向盘', '来自网络', '1537969909141');
INSERT INTO `hitokoto` VALUES ('3732', '把同班的可爱女同学娶回家就是我最大的梦想', '月色真美', '1537884448836');
INSERT INTO `hitokoto` VALUES ('3739', '        幸福是什么？幸福就像第一次我轻轻地牵住你的手，然后我们不约而同地调整手的位置都想要牢牢的抓紧对方。\r\n        这是我第二次写幸福。', '顾', '1537714891766');
INSERT INTO `hitokoto` VALUES ('3744', '韬光养晦，静待时机', '三国杀 神司马懿', '1537884105786');
INSERT INTO `hitokoto` VALUES ('3769', '我恨自己。我爱自己。', 'SCP基金会', '1537715748947');
INSERT INTO `hitokoto` VALUES ('3774', '世上无难事，只要肯放弃。', '嘉豪and佳一', '1537879949727');
INSERT INTO `hitokoto` VALUES ('3777', '我李某相貌堂堂，妻子花容月貌，岂会生出你这种山野莽夫呢？', '十万个冷笑话', '1537970456187');
INSERT INTO `hitokoto` VALUES ('3786', '只有用心灵才能看得清事物本质，真正重要的东西是肉眼无法看见的', '小王子', '1537878769043');
INSERT INTO `hitokoto` VALUES ('3804', 'My life for aiur!', '星际争霸2', '1537880647217');
INSERT INTO `hitokoto` VALUES ('3806', '漫漫人生路，相知有几人。', '安如星', '1537882728280');
INSERT INTO `hitokoto` VALUES ('3809', 'Something……for nothing！用什么珍贵的东西，换回了空白。', '龙族', '1537970864452');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'xypecho@163.com', '1536236518370', '1', 'http://localhost:8081/1537277573806.jpg', '1', '1537970104535');
INSERT INTO `users` VALUES ('13', '1', '呆呆', '14e1b600b1fd579f47433b88e8d85291', 'daiddo@163.com', '1536418778877', '0', 'null', '1', '1537429356650');
INSERT INTO `users` VALUES ('14', '1', '王呆呆', '214eb779415f22c31583e87b8278e05a', '760403480@qq.com', '1536582140983', '0', 'null', '0', '1536582192622');
INSERT INTO `users` VALUES ('15', '1', 'zhttty', '7fee3e4e9b0f73ed52e92c26128f7671', 'null', '1536675769839', '0', 'http://localhost:8081/1537432558650.jpg', '1', '1537446909806');
INSERT INTO `users` VALUES ('16', '1', '很青的青蛙丶', '7bbb61dce1c676091a35d161b03b6352', '', '1536756903814', '0', '', '1', '1536934466458');
INSERT INTO `users` VALUES ('17', '1', '呆呆阿噗:-D', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '1536975246833', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1536987053946&di=8efa075e4fdcb26303cca33bbe7f0031&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F96dda144ad3459823295344606f431adcaef84c3.jpg', '1', '1537431725971');
INSERT INTO `users` VALUES ('18', '1', '尊老爱幼尹志平', '0bb029d5cfe21c44bd1d42bdc407afda', null, '1537343645928', '1', 'http://localhost:8081/1537344369026.jpg', '1', '1537879565991');
INSERT INTO `users` VALUES ('19', '1', '深圳-001', 'fcea920f7412b5da7be0cf42b8c93759', null, '1537879625003', '1', null, '1', '1537879667719');
INSERT INTO `users` VALUES ('20', '1', '权利的呆呆', 'e10adc3949ba59abbe56e057f20f883e', null, '1537970455926', '1', null, '1', '1537970634114');
INSERT INTO `users` VALUES ('21', '1', '蕾姆', '9cbf8a4dcb8e30682b927f352d6559a0', null, '1537970491926', '1', null, '1', '1537970532954');
