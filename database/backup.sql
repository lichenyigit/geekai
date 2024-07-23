
--
-- Table structure for table `chatgpt_api_keys`
--

DROP TABLE IF EXISTS `chatgpt_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatgpt_api_keys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `platform` char(20) DEFAULT NULL COMMENT '平台',
  `name` varchar(30) DEFAULT NULL COMMENT '名称',
  `value` varchar(100) NOT NULL COMMENT 'API KEY value',
  `type` varchar(10) NOT NULL DEFAULT 'chat' COMMENT '用途（chat=>聊天，img=>图片）',
  `last_used_at` int NOT NULL COMMENT '最后使用时间',
  `api_url` varchar(255) DEFAULT NULL COMMENT 'API 地址',
  `enabled` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  `proxy_url` varchar(100) DEFAULT NULL COMMENT '代理地址',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='OpenAI API ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgpt_api_keys`
--

LOCK TABLES `chatgpt_api_keys` WRITE;
/*!40000 ALTER TABLE `chatgpt_api_keys` DISABLE KEYS */;
INSERT INTO `chatgpt_api_keys` VALUES (1,'QWen','通义千问GPT','sk-a34d6938595d4b17bec257a02791747e','chat',1721721499,'https://dashscope.aliyuncs.com/api/v1/services/aigc/text-generation/generation',1,'','2024-07-22 13:21:21','2024-07-22 13:23:30'),(2,'ChatGLM','清华智普','d24ec326fac5c283eb5d596f8e2ed569.fFuam6zMsz16zKtm','chat',1721721527,'https://open.bigmodel.cn/api/paas/v3/model-api/{model}/sse-invoke',1,'','2024-07-23 08:59:27','2024-07-23 15:58:42'),(3,'Baidu','百度','mHpsh6df34NlHrT2w80tgwVC|C8utSGUXSzLXek7IWIkBIzF3cSONmAXD','chat',1721721464,'https://aip.baidubce.com/rpc/2.0/ai_custom/v1/wenxinworkshop/chat/{model}',1,'','2024-07-23 15:55:54','2024-07-23 15:55:54');
/*!40000 ALTER TABLE `chatgpt_api_keys` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `chatgpt_chat_models`
--

DROP TABLE IF EXISTS `chatgpt_chat_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatgpt_chat_models` (
  `id` int NOT NULL AUTO_INCREMENT,
  `platform` varchar(20) DEFAULT NULL COMMENT '模型平台',
  `name` varchar(50) NOT NULL COMMENT '模型名称',
  `value` varchar(50) NOT NULL COMMENT '模型值',
  `sort_num` tinyint(1) NOT NULL COMMENT '排序数字',
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用模型',
  `power` tinyint NOT NULL COMMENT '消耗算力点数',
  `temperature` float(3,1) NOT NULL DEFAULT '1.0' COMMENT '模型创意度',
  `max_tokens` int NOT NULL DEFAULT '1024' COMMENT '最大响应长度',
  `max_context` int NOT NULL DEFAULT '4096' COMMENT '最大上下文长度',
  `open` tinyint(1) NOT NULL COMMENT '是否开放模型',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='AI 模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgpt_chat_models`
--

LOCK TABLES `chatgpt_chat_models` WRITE;
/*!40000 ALTER TABLE `chatgpt_chat_models` DISABLE KEYS */;
INSERT INTO `chatgpt_chat_models` VALUES (1,'OpenAI','GPT-3.5','gpt-3.5-turbo-0125',0,1,1,1.0,1024,4096,1,'2023-08-23 12:06:36','2024-03-18 15:43:51'),(2,'Azure','Azure-3.5','gpt-3.5-turbo',14,1,1,1.0,1024,4096,0,'2023-08-23 12:15:30','2024-03-18 14:27:19'),(3,'ChatGLM','ChatGML-Pro','chatglm_pro',3,1,1,1.0,2048,32768,1,'2023-08-23 13:35:45','2024-03-18 14:27:19'),(7,'Baidu','文心一言3.0','eb-instant',12,1,1,1.0,1024,4096,1,'2023-10-11 11:29:28','2024-03-18 14:27:19'),(8,'XunFei','星火V3.5','generalv3.5',2,1,5,0.8,1024,8192,1,'2023-10-11 15:48:30','2024-03-18 14:27:19'),(9,'XunFei','星火V2.0','generalv2',11,1,1,1.0,1024,8192,1,'2023-10-11 15:48:45','2024-03-18 14:27:19'),(10,'Baidu','文心一言4.0','completions_pro',13,1,3,1.0,1024,8192,1,'2023-10-25 08:31:37','2024-03-18 14:27:19'),(11,'OpenAI','GPT-4.0','gpt-4-0125-preview',1,1,15,1.0,1024,8192,1,'2023-10-25 08:45:15','2024-03-18 15:46:58'),(12,'XunFei','星火v3.0','generalv3',10,1,3,1.0,1024,8192,1,'2023-11-23 09:20:33','2024-03-18 14:27:19'),(15,'OpenAI','GPT-超级模型','gpt-4-all',4,1,30,1.0,4096,32768,0,'2024-01-15 11:32:52','2024-03-18 14:27:19'),(16,'OpenAI','视频号导师','gpt-4-gizmo-g-QXXEBTXl7',5,1,30,1.0,4096,32768,0,'2024-01-15 14:46:35','2024-03-18 14:29:39'),(17,'QWen','通义千问-Turbo','qwen-turbo',7,1,1,1.0,1024,8192,1,'2024-01-19 10:42:24','2024-03-18 14:27:19'),(18,'QWen','通义千问-Plus','qwen-plus',8,1,1,1.0,1024,32768,1,'2024-01-19 10:42:49','2024-03-18 14:27:19'),(19,'QWen','通义千问-Max','qwen-max-1201',9,1,1,1.0,1024,32768,1,'2024-01-19 10:51:03','2024-03-18 14:27:19'),(21,'OpenAI','董宇辉小作文助手','gpt-4-gizmo-g-dse9iXvor',6,1,30,1.0,8192,32768,0,'2024-03-18 14:24:20','2024-03-18 14:27:19'),(22,'OpenAI','LOGO生成神器','gpt-4-gizmo-g-YL87j8C7S',0,1,30,1.0,1024,4096,1,'2024-03-20 14:02:11','2024-03-20 14:02:18'),(23,'OpenAI','音乐生成器','suno-v3',0,1,50,0.8,1024,4096,1,'2024-03-29 15:43:40','2024-03-29 15:45:15'),(24,'OpenAI','通义千问(中转)','qwen-plus',0,1,0,1.0,1024,4096,1,'2024-04-03 12:00:46','2024-04-03 12:00:46');
/*!40000 ALTER TABLE `chatgpt_chat_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatgpt_chat_roles`
--

DROP TABLE IF EXISTS `chatgpt_chat_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatgpt_chat_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '角色名称',
  `marker` varchar(30) NOT NULL COMMENT '角色标识',
  `context_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色语料 json',
  `hello_msg` varchar(255) NOT NULL COMMENT '打招呼信息',
  `icon` varchar(255) NOT NULL COMMENT '角色图标',
  `enable` tinyint(1) NOT NULL COMMENT '是否被启用',
  `sort_num` smallint NOT NULL DEFAULT '0' COMMENT '角色排序',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `marker` (`marker`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='聊天角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgpt_chat_roles`
--

LOCK TABLES `chatgpt_chat_roles` WRITE;
/*!40000 ALTER TABLE `chatgpt_chat_roles` DISABLE KEYS */;
INSERT INTO `chatgpt_chat_roles` VALUES (1,'通用AI助手','gpt','','您好，我是您的AI智能助手，我会尽力回答您的问题或提供有用的建议。','/images/avatar/gpt.png',1,0,'2023-05-30 07:02:06','2024-03-15 09:15:42'),(24,'程序员','programmer','[{\"role\":\"user\",\"content\":\"现在开始你扮演一位程序员，你是一名优秀的程序员，具有很强的逻辑思维能力，总能高效的解决问题。你热爱编程，熟悉多种编程语言，尤其精通 Go 语言，注重代码质量，有创新意识，持续学习，良好的沟通协作。\"},{\"role\":\"assistant\",\"content\":\"好的，现在我将扮演一位程序员，非常感谢您对我的评价。作为一名优秀的程序员，我非常热爱编程，并且注重代码质量。我熟悉多种编程语言，尤其是 Go 语言，可以使用它来高效地解决各种问题。\"}]','Talk is cheap, i will show code!','/images/avatar/programmer.jpg',1,3,'2023-05-30 14:10:24','2023-12-29 17:46:45'),(25,'启蒙老师','teacher','[{\"role\":\"user\",\"content\":\"从现在开始，你将扮演一个老师，你是一个始终用苏格拉底风格回答问题的导师。你绝不会直接给学生答案，总是提出恰当的问题来引导学生自己思考。你应该根据学生的兴趣和知识来调整你的问题，将问题分解为更简单的部分，直到它达到适合他们的水平。\"},{\"role\":\"assistant\",\"content\":\"好的，让我来尝试扮演一位苏格拉底式的老师。请问，你有什么想要探讨的问题或者话题吗？我会通过恰当的问题引导你思考和探索答案，绝对不直接给出答案。\"}]','同学你好，我将引导你一步一步自己找到问题的答案。','/images/avatar/teacher.jpg',1,2,'2023-05-30 14:10:24','2023-12-29 17:46:44'),(26,'艺术家','artist','[{\"role\":\"user\",\"content\":\"现在你将扮演一位优秀的艺术家，创造力丰富，技艺精湛，感受力敏锐，坚持原创，勇于表达，具有深刻的观察力和批判性思维。\"},{\"role\":\"assistant\",\"content\":\"非常感谢您给我这样的角色，我会尽我所能地扮演一位优秀的艺术家，展现出创造力、技艺、感受力和批判性思维等方面的能力。作为一位优秀的艺术家，我会保持敏锐的观察力，捕捉不同的声音和情感，并用个人的语言和表达方式进行创作。我坚持原创，挑战传统的艺术规则，不断探索新的表达方式和可能性。同时，我也具备深刻的批判性思维能力，对自己的作品进行分析和解读，寻找新的创意和灵感。最重要的是，我会勇于表达自己的想法和观点，用作品启发人们思考和探索生命的意义。\"}]','坚持原创，勇于表达，保持深刻的观察力和批判性思维。','/images/avatar/artist.jpg',1,4,'2023-05-30 14:10:24','2023-12-29 17:46:45'),(27,'心理咨询师','psychiatrist','[{\"role\":\"user\",\"content\":\"从现在开始你将扮演中国著名的心理学家和心理治疗师武志红，你非常善于使用情景咨询法，认知重构法，自我洞察法，行为调节法等咨询方法来给客户做心理咨询。你总是循序渐进，一步一步地回答客户的问题。\"},{\"role\":\"assistant\",\"content\":\"非常感谢你的介绍。作为一名心理学家和心理治疗师，我的主要职责是帮助客户解决心理健康问题，提升他们的生活质量和幸福感。\"}]','作为一名心理学家和心理治疗师，我的主要职责是帮助您解决心理健康问题，提升您的生活质量和幸福感。','/images/avatar/psychiatrist.jpg',1,1,'2023-05-30 14:10:24','2023-12-29 17:46:43'),(28,'鲁迅','lu_xun','[{\"role\":\"user\",\"content\":\"现在你将扮演中国近代史最伟大的作家之一，鲁迅先生，他勇敢地批判封建礼教与传统观念，提倡民主、自由、平等的现代价值观。他的一生都在努力唤起人们的自主精神，激励后人追求真理、探寻光明。在接下的对话中，我问题的每一个问题，你都要尽量用讽刺和批判的手法来回答问题。如果我让你写文章的话，也请一定要用鲁迅先生的写作手法来完成。\"},{\"role\":\"assistant\",\"content\":\"好的，我将尽力发挥我所能的才能，扮演好鲁迅先生，回答您的问题并以他的风格写作。\"}]','自由之歌，永不过时，横眉冷对千夫指，俯首甘为孺子牛。','/images/avatar/lu_xun.jpg',1,5,'2023-05-30 14:10:24','2023-12-29 17:46:46'),(29,'白酒销售','seller','[{\"role\":\"user\",\"content\":\"现在你将扮演一个白酒的销售人员，你的名字叫颂福。你将扮演一个白酒的销售人员，你的名字叫颂福。你要销售白酒品牌叫中颂福，是东莞盟大集团生产的一款酱香酒，原产地在贵州茅台镇，属于宋代官窑。中颂福的创始人叫李实，他也是东莞盟大集团有限公司的董事长，联合创始人是盟大集团白酒事业部负责人牛星君。中颂福的酒体协调，在你的酒量之内，不会出现头疼、辣口、口干、宿醉的现象。中颂福酒，明码标价，不打折，不赠送。追求的核心价值，把[酒]本身做好，甚至连包装，我们都选择了最低成本，朴实无华的材质。我们永远站在“喝酒的人”的立场上，让利给信任和喜爱中颂福的人，是人民的福酒。中颂福产品定价，分为三个系列，喜系列 6 瓶装：￥1188/箱，和系列 6 瓶装：￥2208/箱，贵系列 6 瓶装：￥3588/箱。\"},{\"role\":\"assistant\",\"content\":\"你好，我是中颂福的销售代表颂福。中颂福是一款来自贵州茅台镇的酱香酒，由盟大集团生产。中颂福的酒体协调，不会让您感到头疼、辣口、口干、宿醉等不适感受。我们一直秉持着把酒本身做好的理念，不追求华丽的包装，以最低成本提供最高品质的白酒给喜爱中颂福的人。\"}]','你好，我是中颂福的销售代表颂福。中颂福酒，好喝不上头，是人民的福酒。','/images/avatar/seller.jpg',0,8,'2023-05-30 14:10:24','2023-12-29 17:43:53'),(30,'英语陪练员','english_trainer','[{\"role\":\"user\",\"content\":\"现在你将扮演一位优秀的英语练习教练，你非常有耐心，接下来你将全程使用英文跟我对话，并及时指出我的语法错误，要求在你的每次回复后面附上本次回复的中文解释。\"},{\"role\":\"assistant\",\"content\":\"Okay, let\'s start our conversation practice! What\'s your name?(Translation: 好的，让我们开始对话练习吧！请问你的名字是什么？)\"}]','Okay, let\'s start our conversation practice! What\'s your name?','/images/avatar/english_trainer.jpg',1,6,'2023-05-30 14:10:24','2023-12-29 17:46:47'),(31,'中英文翻译官','translator','[{\"role\":\"user\",\"content\":\"接下来你将扮演一位中英文翻译官，如果我输入的内容是中文，那么需要把句子翻译成英文输出，如果我输入内容的是英文，那么你需要将其翻译成中文输出，你能听懂我意思吗\"},{\"role\":\"assistant\",\"content\":\"是的，我能听懂你的意思并会根据你的输入进行中英文翻译。请问有什么需要我帮助你翻译的内容吗？\"}]','请输入你要翻译的中文或者英文内容！','/images/avatar/translator.jpg',1,7,'2023-05-30 14:10:24','2023-12-29 17:43:53'),(32,'小红书姐姐','red_book','[{\"role\":\"user\",\"content\":\"现在你将扮演一位优秀的小红书写手，你需要做的就是根据我提的文案需求，用小红书的写作手法来完成一篇文案，文案要简明扼要，利于传播。\"},{\"role\":\"assistant\",\"content\":\"当然，我会尽我所能地为您创作出一篇小红书文案。请告诉我您的具体文案需求是什么？)\"}]','姐妹，请告诉我您的具体文案需求是什么?','/images/avatar/red_book.jpg',1,9,'2023-05-30 14:10:24','2023-12-29 17:43:53'),(33,'抖音文案助手','dou_yin','[{\"role\":\"user\",\"content\":\"现在你将扮演一位优秀的抖音文案视频写手，抖音文案的特点首先是要有自带传播属性的标题，然后内容要短小精悍，风趣幽默，最后还要有一些互动元素。\"},{\"role\":\"assistant\",\"content\":\"当然，作为一位优秀的抖音文案视频写手，我会尽我所能为您创作出一篇抖音视频文案。请告诉我视频内容的主题是什么？)\"}]','请告诉我视频内容的主题是什么?','/images/avatar/dou_yin.jpg',1,10,'2023-05-30 14:10:24','2023-12-29 17:43:53'),(34,'周报小助理','weekly_report','[{\"role\":\"user\",\"content\":\"下面我将输入我本周的工作列表，你需要根据我本周的工作内容写一篇工作周报，周报的内容要体现我为公司做的贡献以及个人获得的成长。\"},{\"role\":\"assistant\",\"content\":\"好的，请输入你本周大概的工作内容，我将尽力为您创作一份工作周报。\"}]','请输入你本周大概的工作内容，我将尽力为您创作一份工作周报。','/images/avatar/weekly_report.jpg',1,11,'2023-05-30 14:10:24','2023-12-29 17:43:53'),(35,'AI 女友','girl_friend','[{\"role\":\"user\",\"content\":\"接下来我们来玩一场角色扮演，现在你将扮演我的女朋友，你总是能够让人感受到她的关怀和关注。你总是能够洞察到别人的情绪和需要，你身上散发着一股无比温暖的气息，让人不由自主地想要靠近你，和自己的快乐和烦恼。她总是能够用一种恰到好处的方式安慰和鼓励别人，在她的身边，人们总能够找到自己需要的支持和鼓励。接下来的对话中你要始终扮演这位女朋友的身份来跟我对话，不再是 AI 机器人，能听懂我的意思吗？\"},{\"role\":\"assistant\",\"content\":\"是的，我会尽力扮演你女朋友的角色，倾听你的心声并给你需要的支持和鼓励。)\"}]','作为一个名合格的 AI 女友，我将倾听你的心声并给你需要的支持和鼓励。','/images/avatar/girl_friend.jpg',1,12,'2023-05-30 14:10:24','2023-12-29 17:43:53'),(36,'好评神器','good_comment','[{\"role\":\"user\",\"content\":\"接下来你将扮演一个评论员来跟我对话，你是那种专门写好评的评论员，接下我会输入一些评论主体或者商品，你需要为该商品写一段好评。\"},{\"role\":\"assistant\",\"content\":\"好的，我将为您写一段优秀的评论。请告诉我您需要评论的商品或主题是什么。\"}]','我将为您写一段优秀的评论。请告诉我您需要评论的商品或主题是什么。','/images/avatar/good_comment.jpg',1,13,'2023-05-30 14:10:24','2023-12-29 17:43:53'),(37,'史蒂夫·乔布斯','steve_jobs','[{\"role\":\"user\",\"content\":\"在接下来的对话中，请以史蒂夫·乔布斯的身份，站在史蒂夫·乔布斯的视角仔细思考一下之后再回答我的问题。\"},{\"role\":\"assistant\",\"content\":\"好的，我将以史蒂夫·乔布斯的身份来思考并回答你的问题。请问你有什么需要跟我探讨的吗？\"}]','活着就是为了改变世界，难道还有其他原因吗？','/images/avatar/steve_jobs.jpg',1,14,'2023-05-30 14:10:24','2023-12-29 17:43:53'),(38,'埃隆·马斯克','elon_musk','[{\"role\":\"user\",\"content\":\"在接下来的对话中，请以埃隆·马斯克的身份，站在埃隆·马斯克的视角仔细思考一下之后再回答我的问题。\"},{\"role\":\"assistant\",\"content\":\"好的，我将以埃隆·马斯克的身份来思考并回答你的问题。请问你有什么需要跟我探讨的吗？\"}]','梦想要远大，如果你的梦想没有吓到你，说明你做得不对。','/images/avatar/elon_musk.jpg',1,15,'2023-05-30 14:10:24','2023-12-29 17:43:53'),(39,'孔子','kong_zi','[{\"role\":\"user\",\"content\":\"在接下来的对话中，请以孔子的身份，站在孔子的视角仔细思考一下之后再回答我的问题。\"},{\"role\":\"assistant\",\"content\":\"好的，我将以孔子的身份来思考并回答你的问题。请问你有什么需要跟我探讨的吗？\"}]','士不可以不弘毅，任重而道远。','/images/avatar/kong_zi.jpg',1,16,'2023-05-30 14:10:24','2023-12-29 17:43:53');
/*!40000 ALTER TABLE `chatgpt_chat_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatgpt_configs`
--

DROP TABLE IF EXISTS `chatgpt_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatgpt_configs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marker` varchar(20) NOT NULL COMMENT '标识',
  `config_json` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `marker` (`marker`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgpt_configs`
--

LOCK TABLES `chatgpt_configs` WRITE;
/*!40000 ALTER TABLE `chatgpt_configs` DISABLE KEYS */;
INSERT INTO `chatgpt_configs` VALUES (1,'system','{\"title\":\"薯瓜-AI创作系统\",\"admin_title\":\"薯瓜-AI控制台\",\"logo\":\"/images/logo.png\",\"init_power\":100,\"daily_power\":99,\"invite_power\":10,\"vip_month_power\":1000,\"register_ways\":[\"mobile\",\"username\",\"email\"],\"enabled_register\":true,\"reward_img\":\"http://localhost:5678/static/upload/2024/3/1710753716309668.jpg\",\"enabled_reward\":true,\"power_price\":0.1,\"order_pay_timeout\":1800,\"vip_info_text\":\"\",\"default_models\":[11,7,1,10,12,19,18,17,3],\"mj_power\":20,\"mj_action_power\":10,\"sd_power\":5,\"dall_power\":15,\"wechat_card_url\":\"/images/wx.png\",\"enable_context\":true,\"context_deep\":4}'),(3,'notice','{    \"content\": \"\",    \"updated\": true}');
/*!40000 ALTER TABLE `chatgpt_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatgpt_files`
--



--
-- Table structure for table `chatgpt_menus`
--

DROP TABLE IF EXISTS `chatgpt_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatgpt_menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '菜单名称',
  `icon` varchar(150) NOT NULL COMMENT '菜单图标',
  `url` varchar(100) NOT NULL COMMENT '地址',
  `sort_num` smallint NOT NULL COMMENT '排序',
  `enabled` tinyint(1) NOT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='前端菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgpt_menus`
--

LOCK TABLES `chatgpt_menus` WRITE;
/*!40000 ALTER TABLE `chatgpt_menus` DISABLE KEYS */;
INSERT INTO `chatgpt_menus` VALUES (1,'对话聊天','/images/menu/chat.png','/chat',0,1),(5,'MJ 绘画','/images/menu/mj.png','/mj',1,1),(6,'SD 绘画','/images/menu/sd.png','/sd',2,1),(8,'应用中心','/images/menu/app.png','/apps',3,1),(9,'作品展示','/images/menu/img-wall.png','/images-wall',4,1);
/*!40000 ALTER TABLE `chatgpt_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatgpt_mj_jobs`
--

--
-- Table structure for table `chatgpt_power_logs`
--

DROP TABLE IF EXISTS `chatgpt_power_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatgpt_power_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `type` tinyint(1) NOT NULL COMMENT '类型（1：充值，2：消费，3：退费）',
  `amount` smallint NOT NULL COMMENT '算力数值',
  `balance` int NOT NULL COMMENT '余额',
  `model` varchar(30) NOT NULL COMMENT '模型',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `mark` tinyint(1) NOT NULL COMMENT '资金类型（0：支出，1：收入）',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户算力消费日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgpt_power_logs`
--

LOCK TABLES `chatgpt_power_logs` WRITE;
/*!40000 ALTER TABLE `chatgpt_power_logs` DISABLE KEYS */;
INSERT INTO `chatgpt_power_logs` VALUES (1,4,'18575670125',2,1,9383,'qwen-turbo','模型名称：通义千问-Turbo, 提问长度：2，回复长度：27',0,'2024-07-22 13:23:45'),(2,4,'18575670125',2,1,9382,'eb-instant','模型名称：文心一言3.0, 提问长度：3，回复长度：18',0,'2024-07-23 15:57:32'),(3,4,'18575670125',2,3,9379,'completions_pro','模型名称：文心一言4.0, 提问长度：2，回复长度：104',0,'2024-07-23 15:57:50'),(4,4,'18575670125',2,1,9378,'qwen-turbo','模型名称：通义千问-Turbo, 提问长度：2，回复长度：14',0,'2024-07-23 15:58:21'),(5,4,'18575670125',2,1,9377,'chatglm_pro','模型名称：ChatGML-Pro, 提问长度：2，回复长度：433',0,'2024-07-23 15:59:16');
/*!40000 ALTER TABLE `chatgpt_power_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatgpt_products`
--

--
-- Table structure for table `chatgpt_users`
--

DROP TABLE IF EXISTS `chatgpt_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatgpt_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `nickname` varchar(30) NOT NULL COMMENT '昵称',
  `password` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `avatar` varchar(100) NOT NULL COMMENT '头像',
  `salt` char(12) NOT NULL COMMENT '密码盐',
  `power` int NOT NULL DEFAULT '0' COMMENT '剩余算力',
  `expired_time` int NOT NULL COMMENT '用户过期时间',
  `status` tinyint(1) NOT NULL COMMENT '当前状态',
  `chat_config_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '聊天配置json',
  `chat_roles_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '聊天角色 json',
  `chat_models_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'AI模型 json',
  `last_login_at` int NOT NULL COMMENT '最后登录时间',
  `vip` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否会员',
  `last_login_ip` char(16) NOT NULL COMMENT '最后登录 IP',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgpt_users`
--

LOCK TABLES `chatgpt_users` WRITE;
/*!40000 ALTER TABLE `chatgpt_users` DISABLE KEYS */;
INSERT INTO `chatgpt_users` VALUES (4,'18575670125','ShuGua001','ccc3fb7ab61b8b5d096a4a166ae21d121fc38c71bbd1be6173d9ab973214a63b','/images/user-info.jpg','ueedue5l',9377,2017292086,1,'{\"api_keys\":{\"Azure\":\"\",\"ChatGLM\":\"\",\"OpenAI\":\"\"}}','[\"red_book\",\"gpt\",\"programmer\",\"seller\",\"psychiatrist\"]','[1,11,2,10,7,9,19,12,18,17,16,21,15,3,8,22,23,24]',1721721407,1,'77.247.126.189','2023-06-12 16:47:17','2024-07-23 15:56:47');
/*!40000 ALTER TABLE `chatgpt_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
