/*
Navicat MySQL Data Transfer

Source Server         : test_localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-09-24 20:47:16
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
INSERT INTO `hitokoto` VALUES ('70', '我会跟她结婚，并不是因为她是计算机，而是因为她就是她。同样的，我会喜欢你，也是因为你就是你。', '人型电脑天使心', '1537715738152');
INSERT INTO `hitokoto` VALUES ('89', '只是相谈就会开心起来，沉浸在温柔的眼神当中，竭尽全力的思念，悄悄地奉献。', 'School Days', '1537715444511');
INSERT INTO `hitokoto` VALUES ('100', '年华无多时，恋爱吧男子！', '源君物语', '1537715411096');
INSERT INTO `hitokoto` VALUES ('172', '我在人生的道路上迷失了。', '火影忍者', '1537714859479');
INSERT INTO `hitokoto` VALUES ('185', '世界这么大，人生这么长，总会有那么一个人，让你想要温柔的对待。', '哈尔的移动城堡', '1537631632480');
INSERT INTO `hitokoto` VALUES ('219', '如果你都不知道自己想去哪里，那去哪里都是一样的。', '柴郡猫', '1537715270558');
INSERT INTO `hitokoto` VALUES ('221', '明明只是活着，哀伤却无处不在……', '秒速五厘米', '1537715485032');
INSERT INTO `hitokoto` VALUES ('247', '无论在哪里遇到你，我都会喜欢上你。', 'AngleBeats!', '1537718029181');
INSERT INTO `hitokoto` VALUES ('256', '有时语言就像把利刃，使用不当，就会成为凶器。', '名侦探柯南', '1537715812660');
INSERT INTO `hitokoto` VALUES ('262', '你再怎么称赞我，我也不会高兴的，你这个混蛋~', '海贼王', '1537791410838');
INSERT INTO `hitokoto` VALUES ('280', '我爱的人也爱着我，对我来说这简直是个奇迹。', 'NANA', '1537715444470');
INSERT INTO `hitokoto` VALUES ('281', '你为了你的正义，我为了我的正义。', '火影忍者', '1537790006057');
INSERT INTO `hitokoto` VALUES ('283', '我的一生，无怨无悔！', '北斗神拳', '1537719348952');
INSERT INTO `hitokoto` VALUES ('284', '越是困难，越要抬起头，地上可找不到任何希望！', 'Zetman', '1537788575835');
INSERT INTO `hitokoto` VALUES ('288', '承君此诺，必守一生。', '仙剑奇侠传四', '1537631655148');
INSERT INTO `hitokoto` VALUES ('314', '会长和往常一样挺着小小的胸部一副自以为了不起的样子套用某本书的内容说道……', '学生会的一己之见', '1537715270644');
INSERT INTO `hitokoto` VALUES ('339', '日子过的象流水一般。它静静的从我们身边缓缓流过，不带半分声响。那些我们当年执着的人，执着的事，执着之后，却变成一种负担。', '凑合活着', '1537714878135');
INSERT INTO `hitokoto` VALUES ('356', '我愿意给你自己所有的快乐，你愿意分担我一半的难过吗？', 'getweb', '1537791004431');
INSERT INTO `hitokoto` VALUES ('372', '在回忆里留下微笑是为了不让你哭泣...', '原创', '1537790572897');
INSERT INTO `hitokoto` VALUES ('394', '天空本是一种风景，可是遇见你之后，它变成了一种心情。', '九ちのセカィ', '1537719381191');
INSERT INTO `hitokoto` VALUES ('438', '空山新雨后，兵长一米六。', '百度贴吧', '1537715033432');
INSERT INTO `hitokoto` VALUES ('465', '要么忙着生存要么赶着去死，人总要做点什么。', '肖申克的救赎', '1537715550226');
INSERT INTO `hitokoto` VALUES ('474', '不要因为结束而哭泣，微笑吧，为你的曾经拥有。', '其他', '1537791504310');
INSERT INTO `hitokoto` VALUES ('477', '我从小就害怕虫子', '小小闲', '1537715943107');
INSERT INTO `hitokoto` VALUES ('478', '缘起，在人群中，我看见你。缘灭，我看见你，在人群中。', '其他', '1537792892633');
INSERT INTO `hitokoto` VALUES ('494', '君子坦荡荡，小人长戚戚。', '论语', '1537631597666');
INSERT INTO `hitokoto` VALUES ('520', '与其想着怎么美丽地牺牲,倒不如想着怎么漂亮地活到最后一刻。', '银魂', '1537792855855');
INSERT INTO `hitokoto` VALUES ('522', '为了终止绝望的连锁，希望她能化为照亮正确道路的灯火。', 'Re：从零开始的异世界生活', '1537718029898');
INSERT INTO `hitokoto` VALUES ('533', '梦存高远，志在争霸，这股热情确实值得赞许。但所谓梦，终有一天是要醒来的。', 'fate/zero', '1537631653374');
INSERT INTO `hitokoto` VALUES ('534', '“把剑放下，成为本王的妻子吧。”', 'fate/zero', '1537790065166');
INSERT INTO `hitokoto` VALUES ('546', '春天是胖次的季节。', '电器街漫画店', '1537719473318');
INSERT INTO `hitokoto` VALUES ('557', '人生中有些事你不竭尽所能去做，你永远不知道自己有多出色！', '海贼王', '1537712394841');
INSERT INTO `hitokoto` VALUES ('625', '你是笨蛋吗？', '小桐桐（きりりん）', '1537631671387');
INSERT INTO `hitokoto` VALUES ('643', '我绝对会成为火影。我从来都是有话直说，这就是我的忍道！', '漩涡鸣人', '1537715155043');
INSERT INTO `hitokoto` VALUES ('648', '世界上没有鸟黑，只有鸟厨和丧心病狂的鸟厨！', '树形图设计者', '1537791016205');
INSERT INTO `hitokoto` VALUES ('667', '我无处不在', '超体', '1537791005512');
INSERT INTO `hitokoto` VALUES ('692', '我们是圣骑士，不能让复仇的情绪占据我们的意识。', '光明使者乌瑟尔', '1537791430415');
INSERT INTO `hitokoto` VALUES ('707', '值得获取的东西，就在风险的彼岸。', '网络', '1537631584137');
INSERT INTO `hitokoto` VALUES ('720', '我不要你忘记他 , 我只要你记得我', '网络', '1537631668716');
INSERT INTO `hitokoto` VALUES ('750', '不逆 不耻 不憾', '舰队Collection', '1537791437486');
INSERT INTO `hitokoto` VALUES ('771', '世间所有的相遇，都是久别重逢。', '一代宗师', '1537788747293');
INSERT INTO `hitokoto` VALUES ('775', '人能够在心里郁积那么多的事情，而他们又会忘记那么多的事情，真是不可思议…', '最终幻想', '1537792921837');
INSERT INTO `hitokoto` VALUES ('787', '说时依旧,有泪如倾', '说时依旧', '1537715748970');
INSERT INTO `hitokoto` VALUES ('794', '在茫茫人海中，同样是高中生，同乘7点50分的电车，看着同一片海…那个瞬间不就是如奇迹般的邂逅吗。', '单恋电车', '1537789379820');
INSERT INTO `hitokoto` VALUES ('813', '要记住伟大的探知可逆定律:如果你能看到一个低墒世界,那个低嫡世界迟早也能看到你,只是时间问题。所以,什么事情都等别人做是危险的。', '三体III', '1537719342785');
INSERT INTO `hitokoto` VALUES ('814', '愿我的人民，永远，不要被那些无关紧要的差别，所迷惑。', '魔兽', '1537715484008');
INSERT INTO `hitokoto` VALUES ('880', '要是太勉强自己的话，总有一天会受伤的', '吸血鬼骑士', '1537712686562');
INSERT INTO `hitokoto` VALUES ('890', '这世界是个好地方，值得为它奋斗。后半句我同意。', '海明威', '1537792611239');
INSERT INTO `hitokoto` VALUES ('923', '我从远方赶来，恰巧你们也在。', '生如夏花', '1537715812702');
INSERT INTO `hitokoto` VALUES ('960', '死亡不是失去了生命，只是走出了时间', '干嚼鹿肉', '1537715459942');
INSERT INTO `hitokoto` VALUES ('961', '别把耿直当理由。', '网络', '1537715283537');
INSERT INTO `hitokoto` VALUES ('963', '问:相信是什么意思? 答:觉得被人背叛也无所谓，就算被人背叛也不后悔。', '戏言系列', '1537791469708');
INSERT INTO `hitokoto` VALUES ('971', 'Write the code, Change the world.', 'Apple', '1537631649950');
INSERT INTO `hitokoto` VALUES ('989', '吟唱幸福的歌谣，令少女沉醉向往。童话堕入黑夜，是谎言还是幻梦，无声终结', '穿越西元3000后', '1537715068836');
INSERT INTO `hitokoto` VALUES ('990', '即使想放弃，也没法放弃最想要的东西，这就是人', '悠久之翼', '1537788541340');
INSERT INTO `hitokoto` VALUES ('998', '追逐梦想的人比抓住梦想的人更能发挥实力。', '银魂', '1537631656778');
INSERT INTO `hitokoto` VALUES ('1006', '只顾着追求新事物，却不回顾历史，怎么会有未来。', '虞美人盛开的山坡', '1537715738170');
INSERT INTO `hitokoto` VALUES ('1012', '起风了,唯有努力生存。', '起风了', '1537714891772');
INSERT INTO `hitokoto` VALUES ('1016', '王冠会让戴上它的人高人一头，是地位的象征。但王冠真正的意义是：当灾难从天而降时，我会为你们抵挡一切，永远让你们只看到金色的希望。', '星游记', '1537631649863');
INSERT INTO `hitokoto` VALUES ('1055', '我们是如此的担心着未来会发生的事情，因此忘记了慢下来享受现在。', '网络', '1537790841002');
INSERT INTO `hitokoto` VALUES ('1060', '人与人之间情断义绝，并不需要什么具体理由，就算表面上有，也很可能只是心已经离开的结果，事后才编造出的借口而已。', '解忧杂货铺', '1537715155043');
INSERT INTO `hitokoto` VALUES ('1070', '就算世上有着所谓的“好女人”，也不会有着“和我关系好的女人”。', '我的青春恋爱物语果然有问题', '1537631651829');
INSERT INTO `hitokoto` VALUES ('1073', '我们嘴里的别人的事听起来就像是自己的事；我们说自己的事的时候，却又在像说一段不相干的故事', '网络', '1537791005490');
INSERT INTO `hitokoto` VALUES ('1083', '自由不是你想干什么就干什么，而是你想不干什么就不干什么。', '康德', '1537715064844');
INSERT INTO `hitokoto` VALUES ('1164', '一个人觉得寂寞，和另一个人相互依偎又有什么错', '人渣的本愿', '1537715459887');
INSERT INTO `hitokoto` VALUES ('1190', '你要乖，要长大，要不负众望。', '耽萌', '1537792686400');
INSERT INTO `hitokoto` VALUES ('1195', '一瓶250ml的吊水，一共是3111滴。', '网络', '1537712685790');
INSERT INTO `hitokoto` VALUES ('1211', '对于虚伪而言，真实的光明或许过于耀眼了', '蔷薇少女', '1537790086644');
INSERT INTO `hitokoto` VALUES ('1224', '正因为生来什么都没有，因此我们能拥有一切。', '游戏人生', '1537790006054');
INSERT INTO `hitokoto` VALUES ('1225', '未来的事无人知晓，所以它才如同这重逢一般，拥有着无限的可能性。', '命运石之门', '1537712482939');
INSERT INTO `hitokoto` VALUES ('1263', '渔舟唱晚，响穷彭蠡之滨；雁阵惊寒，声断衡阳之浦。', '滕王阁序', '1537715467470');
INSERT INTO `hitokoto` VALUES ('1310', '如果到了一个遥远陌生的国度，还不去改变或者推翻自己的曾经，那这远走高飞还有什么飞头？', '无出路咖啡馆', '1537792653938');
INSERT INTO `hitokoto` VALUES ('1316', '力所能及的帮助他人是我们做人的本分，刻意的那么做就超出了我们的能力范畴，说不定还会引来恶意的猜想。', '胡说八道', '1537716102084');
INSERT INTO `hitokoto` VALUES ('1349', '末将于禁，愿为曹家世代赴汤蹈火。', '镇魂街', '1537715447350');
INSERT INTO `hitokoto` VALUES ('1365', '想和你重新认识一次 从你叫什么名字说起。', '你的名字', '1537631603763');
INSERT INTO `hitokoto` VALUES ('1373', '不怕万人阻挡，就怕自己投降，将来的你一定会感激现在拼命的自己，自己选择的路，再艰难，跪着也要走完。', 'Bruce Jc', '1537715467476');
INSERT INTO `hitokoto` VALUES ('1379', '万有引力可无法对坠入爱河的人负责。', '爱因斯坦', '1537714870381');
INSERT INTO `hitokoto` VALUES ('1398', '(」・ω・)」うー！(／・ω・)／にゃー！', '潜行吧奈亚子', '1537713740506');
INSERT INTO `hitokoto` VALUES ('3596', '每一天都可能会有刷新你世界观的事', '原创', '1537715946263');
INSERT INTO `hitokoto` VALUES ('3609', '菩提本无树，明镜亦非台，本来无一物，何处惹尘埃。', '慧能', '1537715037196');
INSERT INTO `hitokoto` VALUES ('3610', '身是菩提树，心如明镜台，时时勤拂拭，勿使惹尘埃。', '神秀', '1537631670102');
INSERT INTO `hitokoto` VALUES ('3642', 'gugugugugu', 'haoduor', '1537788731610');
INSERT INTO `hitokoto` VALUES ('3739', '        幸福是什么？幸福就像第一次我轻轻地牵住你的手，然后我们不约而同地调整手的位置都想要牢牢的抓紧对方。\r\n        这是我第二次写幸福。', '顾', '1537714891766');
INSERT INTO `hitokoto` VALUES ('3769', '我恨自己。我爱自己。', 'SCP基金会', '1537715748947');
INSERT INTO `hitokoto` VALUES ('3847', '你...真是本末倒置，罔顾人伦！', '魔道祖师', '1537718158246');
INSERT INTO `hitokoto` VALUES ('3852', '义城有三盲，真盲，假盲，心盲。', '魔道祖师', '1537715550206');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'xypecho@163.com', '1536236518370', '1', 'http://localhost:8081/1537277573806.jpg', '1', '1537792235118');
INSERT INTO `users` VALUES ('13', '1', '呆呆', '14e1b600b1fd579f47433b88e8d85291', 'daiddo@163.com', '1536418778877', '0', 'null', '1', '1537429356650');
INSERT INTO `users` VALUES ('14', '1', '王呆呆', '214eb779415f22c31583e87b8278e05a', '760403480@qq.com', '1536582140983', '0', 'null', '0', '1536582192622');
INSERT INTO `users` VALUES ('15', '1', 'zhttty', '7fee3e4e9b0f73ed52e92c26128f7671', 'null', '1536675769839', '0', 'http://localhost:8081/1537432558650.jpg', '1', '1537446909806');
INSERT INTO `users` VALUES ('16', '1', '很青的青蛙丶', '7bbb61dce1c676091a35d161b03b6352', '', '1536756903814', '0', '', '1', '1536934466458');
INSERT INTO `users` VALUES ('17', '1', '呆呆阿噗:-D', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '1536975246833', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1536987053946&di=8efa075e4fdcb26303cca33bbe7f0031&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F96dda144ad3459823295344606f431adcaef84c3.jpg', '1', '1537431725971');
INSERT INTO `users` VALUES ('18', '1', '尊老爱幼尹志平', '0bb029d5cfe21c44bd1d42bdc407afda', null, '1537343645928', '1', 'http://localhost:8081/1537344369026.jpg', '1', '1537628289292');
