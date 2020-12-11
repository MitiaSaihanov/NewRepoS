-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: plant
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brak`
--

DROP TABLE IF EXISTS `brak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brak` (
  `brak_id` int NOT NULL AUTO_INCREMENT,
  `guiltyincumbent_id` int NOT NULL,
  `exapmleProduct_id` int NOT NULL,
  `operationDefect_id` int NOT NULL DEFAULT '2',
  PRIMARY KEY (`brak_id`,`guiltyincumbent_id`,`exapmleProduct_id`,`operationDefect_id`),
  UNIQUE KEY `brak_id_UNIQUE` (`brak_id`),
  KEY `fk_defect_incumbent1_idx` (`guiltyincumbent_id`),
  KEY `fk_defect_instanceProduct1_idx` (`exapmleProduct_id`),
  KEY `fk_defect_operation_id2` (`operationDefect_id`),
  CONSTRAINT `fk_defect_incumbent1` FOREIGN KEY (`guiltyincumbent_id`) REFERENCES `incumbent` (`incumbent_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_defect_instanceProduct1` FOREIGN KEY (`exapmleProduct_id`) REFERENCES `exampleproduct` (`exampleProduct_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_defect_operation_id2` FOREIGN KEY (`operationDefect_id`) REFERENCES `operation` (`operation_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brak`
--

LOCK TABLES `brak` WRITE;
/*!40000 ALTER TABLE `brak` DISABLE KEYS */;
INSERT INTO `brak` VALUES (1,11,3,6),(2,41,17,10),(3,4,30,2),(4,20,37,50),(5,22,44,36),(6,21,52,49),(7,27,58,26),(8,51,73,12),(9,39,78,22),(10,37,83,26),(11,34,84,50),(12,51,1,45);
/*!40000 ALTER TABLE `brak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail` (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `detail_name` varchar(100) NOT NULL,
  `detail_agregat` varchar(100) NOT NULL,
  `detail_import` varchar(100) NOT NULL,
  `detail_image` blob,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  UNIQUE KEY `detail_id_UNIQUE` (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (1,'Ð”ÐµÑ‚Ð°Ð»ÑŒ1','Ykndei','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',1),(2,'Ð”ÐµÑ‚Ð°Ð»ÑŒ2','Lblekmfmxigxeho','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',2),(3,'Ð”ÐµÑ‚Ð°Ð»ÑŒ3','Qcftlkitqx','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',3),(4,'Ð”ÐµÑ‚Ð°Ð»ÑŒ4','Pldrydjshgelbdam','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',4),(5,'Ð”ÐµÑ‚Ð°Ð»ÑŒ5','Hlhqxmvbcdchpftwl','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',5),(6,'Ð”ÐµÑ‚Ð°Ð»ÑŒ6','Nfhksfnav','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',6),(7,'Ð”ÐµÑ‚Ð°Ð»ÑŒ7','Snpukobxcvgjnq','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',7),(8,'Ð”ÐµÑ‚Ð°Ð»ÑŒ8','Vpgmybygpw','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',8),(9,'Ð”ÐµÑ‚Ð°Ð»ÑŒ9','Fgixbolggixpixayhf','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',9),(10,'Ð”ÐµÑ‚Ð°Ð»ÑŒ10','Hvypqtnidbblm','Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ¾Ðµ',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0M\0\0\0d\0\0\0Ãª½N\0\0 \0IDATx^\Ý}”]E\Öõ¾þ\Ü\Ú%Ò±†¸’Hˆ\á\0\rlpŸÁ˜\É\àÁe@ð&8$,B\ÜÛ»Ÿ\Ëõ{ÿu*0‹\á\é~„Oò÷Z³`Í«÷nÕ¾UGöÙ§\àðÿ\áŸ\ëºe\í\í\r\ák6Wf\Ò\é}\Ú\Ú\Û¡H¤µ¦{Õ†\á\ÃG7\0h\ã8\Îý­K\ç~\ëÿ/}\Ïu]¾½½\Ý\×Ô°õ¢µ«×ž\Ø\Ø\Ò\Ü\'“M	\áP’\ä…j¨!A\àEÈ²\èt\ï\Þm\îA‡z1\Çq\êoY\Çnšëº½\ßzù¥‹¿^¾üY\Õ\àü^/,Ë\â‘\0\ÞE‰?Ç¶QR^‚œf‚\ç88pÁ90¦L\Þ\ïüº\Þýž\à8\Î,¼\Ý\Z´l6;\à\ÑGù`[cS…\ãò\0\ÏAEð<Ó±\áó†J\àxµ\å%(­(V\Ð\ÑØžE0ì…®šú”G§uôù\Çi]n·MUÕºû\çü\í\ë¦öd\Ô4ð‚.|~?xžC2•‡$\Ëú<ˆ\Å\Ê@ F}Ÿ:xƒa,[¹>¿ºª!›Î®:l\ÚcJJJ2]n·l\Øc?øõŠUë‡ºx^„k\ÐM¼â© ‰2Àq¨(Añzò\É=´$²m!^\à\á8\Òù6­[]˜u\ÚYûúýþo;n·\Íu]\î»Å‹ÿüW^¿Â\rY\0Dˆ g(+\n¶µ\Æù\ÉjŽ‹‚i ´¢¹‚‰²\Ò(Jý2JJC¨\ï\Õ/\"‘±a\Úp\à±zõšü±ÇŸ¸O ø~gÀ\ív \n…š»\ï¼s›©™´fðp\á÷û Hrù<Nñz°z}Z&o4\nÓ‘\×mÔ”…Q]‡\nJP|^\Ä\Êk@/À*\ä±~ý–¦SfŸ9‚ã¸–_n·mþ‹\Ï>ùý²\Õ\'+\àóy \n\"™‡\×\ãA.GSGù‚µa8®ŒöD©T\n¼\ä‡\åZ%?ø`»\ÇÐ³:\n—\ã\à‘e4…lß¬X\Ë0?=f\æqS~Í«\îV ¹®\ë¿\ë¶Û²®crŠ(BVdð¢,\ÂvLÀ\å¡išŽp4\nU- ¯\ZhijCem\â©’9¦+\"ö£ª¤\Ý+¼ðB\èÖ­b?t\Ã\Â\ÂÏ¿DmEÕ´¦M{cG»m·\í‹O?|ú³?;Iˆ2¿\ÇN\à\à¸\îv\' \Û\Ð\ÕÛ‚m’(¢ \êøýðPót$3\èÈ«l\ç2\Ê(‰DQUÀžýê ])ˆøø\ãEú\Ù\çž\×\×\çómû%p»\rh®\ë\nO?öð¦¶\æ\Ön>ŸQ\àU|p]@7tX–…B^‡i’µ¡\È³s^¯]\×¥þP\Ó4ñdÉŒŠœ\ÉÁð!\n!\èUxÁó¦0\Zñx«–­@\Öt_œ}\æY\Çs\çü¸\Ý´l6[þ\È}sZEžc;ŒW8Nð.\Ó2\Ëä¡›:l—CÈ«À¸ƒž4r\ß	K\Ø\ï½õ\Ö\í\ë\Ö,»s%Ä“I\Äs2ªo(‚pÀƒŠ\Ò­<Â½Ì©ørñ7˜¸ß„\ÑCGúr·m\é\â\Å|ôþ‚÷\èhBAˆ¢\0I`\èr9\r­\0\Ûvò{ú0fŸ	g\Ö<÷§\ÅR¨²j\Å÷\'~º`ÁS†ms\í)´$3°/E±²R„ý~\ì_H(Š¦m-hh¯9÷\ç\î±[‚ö\Îo|´f\åò	²\"2û\ÄxcGR\Í\çaXD‘G8\äƒ/üz\Æ	§î»£\Ôhù7K\Ïÿ\äƒs²ª†¶xYÍ„\ÃK„ýðJ$YDu8ˆúÁýÁY6.ú\ÇÎœ1¬_¿~\ßý\Üns<Ÿ{òñöŽ¶\æRÙ£@–(>?\\[ƒš7¡\Z\Zx‡ƒ\ßï¬H˜r\èaS*+k?Ø‘\ç£l\âýw\Þ~sÍªÉ¦3\ØFÀ\é.8QFÀ¯À\'\Ë,„>¸?<ŠŒ6£,Z|\ÂÉ³öþ‰N\Úm@{j\îƒ\ÙUk·J\"a””†¡(X¦Ë°aX6ÀYú‚%!5s\Öé±ñe®\ë–>ñ÷¿­\Íò\Ñ\æDm\É< ðx½°Me1\Ã~ô\éYUw°y\Í\n÷\ÂK.­\n­ô\"v\Ð¹ÿ^«£#)D\Ã1x|\n;F.\\±–i ¢¦[÷%\ã&0¶3’ñ‡\å\ß\îÿÁ»ÿúWN\ÓÐ‘. 5Y€ Hð} —l™:&N\Ø’\È\áû¯—\âˆÃ¦^2b\Ô\è{w+\Ð\î¹óvS\ä 6udX<E ™º	\Ã0A,1ŠW\Âà¡ƒŽ4tì‹%\ÝtL_x\â\Ñ\Í-mm\Ý\â\é<Z\Ó:¥ª)`\æ\\\Ø&‡~ý{£¢¤…\\œš\ÞrÆ¹\ç\r\ä8.÷»\î4šM¶­­­§¦e£+W®U£\Ñ`yi(–ŽUVzc±\Øb\0Œf\îl\'ür\Ñ÷\ßóg«#‘J¢øC!ˆ\"]7\à\Ú[¬¤ˆ Ïº\ï„ýö¬««_\Ýhôù\ê•\ßýÑ¿Þ›—)Xh\íH±Ø\ØI\×\å J{£F\rcNgÛª\ïq\Æ\Ù\ç\Ë\Ë\Ë\Ð\n…B\í\Çœ\ß\Ü\Ü2+™JVØ†Å\ã\n\Øbxð¼\ÈiºP”–ªÕ¯ô\ÛsÈœ²²²FŽ\ã\n]Y\àM\×\\£Š\âS¼}~8®Ë´!ˆ<Í†\Ç\'±<t\ê‘Ó»•””P \Ó?\×ukŸxð\ï“©œÔ–É£#[€ið\Ê\ÔqtÀ¤‰\áò6¬Xc§O»¢ÿawý\ææº®´yÃ†[¾ø\ì“S;:eªn¡º¢ƒ†\rFiIšnÂ«H%j!‡L2d&D\"…\\¶\0MU\n‡¶\r1òOõý½\Çq\\\Ç\ÎVyû\r7M\"þ¬®º’@ù¦\rË²Áq\"ü!?$I\Ä\ÔÃ§Eb±XºS\Ä~ðñ;o¿óý÷+jI&*\'\æ\Ù\ï…\"‹FŒ\Z†PÐ‡Ö¦Fô(\r,ž~Ü‰c‹ÀZ½z\å¤\Õ+–?\Ó\Ú\Ô\\\æš&&rD\Ï(\nlË€Gñ‚E¤\Óq!hZªª!‘Ê ¹¥\ÙL¹‚\n]\ÍCS-D\"þ­“\'M<¸{Ÿþ«™²ü´ø\'¼OWª\ìò”k\Ò1 \é\ZhNDIU$8\ì°i½\"‘È¦®‚\Ö\Ö\Ò2ó…§ž|¡`hH¤\r´e4< ™&dÅƒºº¨\ëY\rÓ°oÙ¦w\É%½‹X†/¿øø\Ù%‹¿>‚ŒemU%F	\Ã!S\à²]EF\Í\ãõ #ÞtVe	s^Õ·¯ÁÒÈª0¦Z€š\×\à¸\ZÔ¬J†r\çS¿Š\ã8û—‹žûÀ\Ù6n˜–‹ªX9]…,Hp8—Ù ^}zƒx\ì³\×È}ûö]\ÙU\Ð\\\×õÌó×¼aš¼j¹hKf‘\Ê\éŒ-%A¿{\í5ºe£q\Ý¸ð\â‹Jºš‡\Þø\à_K7on\è+K†\rˆ\ênµ°\\Ž\íB\àx¤²	Vù\éH\ç‘\ÊY°2\Ò}XFe‘\0–~·\Ý\êú€smvDM]E¾ Â¦·tô\é\Ûs\á‰\'6™\ã8\ã\çr\î\Ü-\Û\Z\Zº»œ—`[6t]…(H\Ð-\rCö\Z\r8@(L4}\Ú\ÛE€&>ûø#_\æ²ùay\ÕDV·\ÐOÁ´\rp\àZ.\Æ0‘½ÔË¾Á‘Ó§\î4\Ê\Ù\ÌBaø¼Ÿ]\ÐÖ–ˆR\ê2f\Ì^ðø<,YNe5˜¦	A,‡C{\"AQ \Û.`;\Ì\æ\Ð\çŽeÀ1t˜†ŠXE5‹±\Èn˜††t2	]Ó \æòp4Gq\ÐMCF½õ\çÀ½ü|oo™ø\í\Ú&T—EP\Ð\rdóyÃ¶M\ã¦L‚(\0‚a\Þx\Ì\Ì\é7t4\Z÷\Ï\×^»rÓ†µ\Îd5,‡1¼¹\\G1¯ŒÁC!‰`Óš:pé‚–\Ë\å*Ÿú‰\íñ´7\äW°×ˆ!0L:\ÇA\Ë\Ú\Èh*Ú“)t´%0l`_TW–`Í¦p¢ÂŠ\Ç\Ã5U¸ºŠ\Æm\ÛPYS\Å`Œ}î’‹\Ý0‘\êhE¡g™8cö\ì\á5={þ»È±\è\ã\æ¼ýþ\'ç—„ƒ\ì\Øg\n\Z::\âd‰}w\Â\äI()-C¶yÛª“O5 ˜fùÒ¥‡~öÙ‡o&‡d6Œj‚h$\n9h‡U\ÕÔ º¦\nMÛ¶`\ÏÞµ\í´†††’·_¿\"ŸS+-\Î\Â\àþý\á÷ù‘W54´\'Of(‚\â…Z\Ð\ÑÑ¸\î¿Zš›Yh\nð\È\\A@!g@U\rDB2d\È¹¡™¼^ŠL‘\É\è,°Œ\Ç; fS(\rR\ç^ti\ÉOŽañ\Ç\ï\íÿõ7\ßþ‹vCGZ…f\Ù\È\æ\nì»¶Œ\Ýgª««\Ð\Ñ\Òdœq\ÚÉžb@kÞºu\Ô\ë/¿ô¥ `X\Ðt‡yzªÈ»pPZVÊšJd“	ø$û_\Íu]ñW\ç}ý\í·«SUz\ÐÀ¾0-‰¬Csaò\\NFA\ÕøÁ¹\ìl‘p¾P\0V>‡3\á\ØLSG6\Û–\ã\Â\ïóÁ\ã÷³º¤e“MlŽ\Øj†á ­µjN\Å\Ô\']4zü„9@\ãÆõ¯\Îqµn\ØhjÏ¢`ºlWH‚Ã¶Ñ»wo<™T£õ;oØˆQ÷wõˆ¦R©^\Ï=þ\ÈN \ê&;ò\äM·\Ûj¦\í¢W}=\n™4D\'·v‡ Kºx\ágs\ß|ûýS\éM\Ö\ÔV±h›øK*‰\Å3*,‚†üðKD˜Ð²i\áh)f\ÃlÓ†c g¹6,“\ä2<’>¿\Âj•þH\'Àux9r\ÙT\Z’mi—_sU˜l‰Zž|\èo\r­i97Ñ–Ê£  7+‰<$IÆ¡Oa\Ï\åõügG{\Ü$Ž\ãhótúw\Ã\r7ðe¯M\ÏWuŽ\ÃÁ\å\\†\Å\è\'²½•U¬òe\æ;vZÃ†\r“~ü\é÷-‡‡?\àE0‚Q\Ð@\îL7\Ø.Qñ¢´$Œ€G€L\ê»€l\"‰‚Z@UuÅŠòª\îª\ï?ø\Û\Ò\ÒR\É\ãñ\Ä\ãñx\í\'\ïÿó‰µ+W¶6\' \àñ³ÀQR¼<tdXŽ\r\Õ4aYÍ˜6õ#†ó:­ü¹\Ç\ç~™ˆ\ÇGµ&2hM\å‘\Ó\\ð‚Ã¼³,*8pò>dm\ÍM\Æ9g\Îþ\Òÿ\ZzZ\Ô+\ÛT˜Q-¯¦e2gEÞ“’\Ã\Ê\ê*X–·\\ý_vš\ëº\áû\çÜ¿z[K[¥(RDï…¬\Ýp\É\å¡;‚(\ÊK¢(x 8L-L:X¤\â\Ó\ÃfÌ¸>~ük\\ô\Ù{\×,þø‹›ó\äMMþ€Þ€—l\éEq’ƒvtG%ae\Ã\ç\\PO±\Û\çŸ|p\Íw_/½¹=‘C{*´\î\ÂÏ„.\ä¨Ú³úv¯Bª bXÿ=\Ï\Üs\àÀ3·;\ÛnZXm‰¼¾\æ@ö{A§n\à]P\ÂAðŽ\rÁ5—þÐ¾Z²\èªy¯þóV2Ôž@¼k#“Ó˜N‚¢øHi‘HÕ¥!¶\nK\Í!•L8\ÃF\í}\êø‰_\è\ì\íRRÿ\á»oÿå›¥‹.&[\Æ	<™\Êh>H²‚L¶€`8p\"Ò¹,ò‰$.¹òŠ^¯wk<¾.ôòs¯§‰•hhK#¯¹ˆFü0lºÅ¡Wu“÷\Â2„\Õk\Ö-9ñ\Ô\Ó;¥ˆÌ•+W\Ê¼ùº@û®ÀL\n\å·Ä¯\ÑNóGýmo¿ø ‘\ÝøóÍ·4$4[&\æ€‘¦\Í$K™LU®c‘zõ¬‚‡f=‹B.mL›~Ä¤š{|Þ©ñøq€ëº\'~`m¼µ¥Ê¢C)(ð}ðW¯(0-YÃ…\èZH\':0z\Ô\è“>xž\ëº\Þg{py\"‘î½±)dV‡+Š¨*¢`\Ð\âDœ7\ë \àñ\í²e\è[_?`øð1?t6¯¦-[F\Ìé…¥$ÁR<~(«h‰<Xœi‚\Ñ0]GY\Ä÷À€öò\Ï\\¾\ä\Û5w’qUMTùq“¥AX£aô¬©Di\Ä[M#—N93f¶_yyù\Â\Î&ö\Ë\Ï[ZZ¦>óÈœ7^Í¹ðHx|^Æžª†&V\à­F:‘@Ei\éÇ§œq\æDú\Þy\íÈµ«\Ö\Ì\ßÔ”@<§\ÂKv1\Z@y$Œm­\ì¿\ï`Œ1\rM\Ûð\í²\â\'Íš½GgdÀ\'¼7iÙ·\ß\àó*\0/C(`¶·‹jˆ¬\ã\0‰L†®¡N\íûo\Ð\\\×õ\ÝzË©dÆ’l\ÇAVw`9.Ó€\ë\ÚðúØ³o/\Ä\"^ˆŽŽT[\ÆMštø{½Y,`4žBš\'˜ÓI§+\ÈcRN¡jEQfo•\'À¶¡e\ÒÙ‹ÿxU\è\Ç\ïI=p¯\Ö\Ïò\r-˜¢ˆšò(º—— ôc\éÊø\ÓÅ§\"\ÏbÕ¦õäœ®>\ê\Øoÿµ¸\Ì\Å\×ÿñ%06\Ý\ã%F\Ø\Ëb3¢™8‘”H\Â	8b‡kk«ý´¥KžýÒ¼·´\\\í9bC)>1Gƒ\ßfŠ›ºž\Ý\ál\è¹$i\'®;þ´3o)&ˆü%¸ó_|þ‚­›\ÖýÍµ9ˆ\Ä\Ä:b\á\ÆRZŽ\0N\áA\Ö!\Ý\Ò\è\\y\íõ29J\ë\æ?ÿôc\Í\ÍÍ§nnN «¹=>\é]h,„’¨\ËVo\Ã\Ð!ƒ`ii´u¤¬‰&M(¯®þbGs¥„ýú«¯L–DK=´›ü\ä”\íÙŒ ‰,\Ì\"°(O\ÔriL;dZ\Íu]y\î\ßÿúÍªMMt›CN§|‘Jûx˜(FÑ½®;*¢p¦Št*\Þv\Ú\ÙóûýM¿e—ýô¶\Æ\Æa\Ï?õø7”\Øó)9x½^ˆ¢‚‚a¢5žb rIœ\Ñ{†B!\Æ\È&“É¡/>=÷›T\Ú\àš“˜®Œ^•ô\é]Žª²*”UE±ð‹p„\íª\ÈL{G\Ç\è1£Ž5v\ìñ\ê¯\Íû\Ç\ìo—ý07ð®ˆ’\Òd\ÅA\àY\ZEöŒ\Â’8$;\Úôs.¾²–\Ö\Ö\Öx\è¾9™LÁ\â(þ±]Žc1}\Õ«kjÐ³{\rd\Î@.\Ç\Þ\ã÷;fø¨1/\ï\n`?¾¬š{ÿ|\ÓV˜\àS¹<‚¡ |A?À\ØºeÁð#ŸJb\Ö\é³{WTTlü\é™O?òÀ§™LvÜ–¦84G\0$ƒ\ëkP¡O]7C,üb1\ÖlKÀ\Ô\r² \Z’?›q\ØA\Ç\×ôL/[ø\æ›\ÏÇ¼>\ïõ\ÊJc‚^Ÿ—e¯¯\×\Çô¹¶k1.6P:\Ùþ\Þù—^u\í\Ë\Ï??gþ\ëo>`Q\n“\×Á»›°H2$¯‡\ËÚª2\Ù$,£\ÐpÖ…—÷\î,´\è* ÷\Ýy{\Æ0´ 	‘\Î$Ÿ\n\ÃÌžZ–	^‘a\ä²?ù€¾#FŒXÿ\Ó\ï.û\ê«^K/Ü+hX\×\ÐQöAöz1°O9|®^À¡C°tñ\×X±©\r†K¦†l•ã–„c\ë8¸r&›\í)\n<\ÊcF1y}~(~Doˆ’À\0¤°ƒTH¶i ²º\â\Ô=òI\Ú\Ã÷\Ïù~Ã†¦Á–£#£6±*%\Û\Ê\ÊKQ]]’P©ŽFŒ»Ï¬Qcöy¦« t6\îö®Iµx	¦¦\Ã\ë÷nÃ¼\0\É†\"q(Ä“8\äˆ\Ãú0\àß Qª÷Ì£>\Ï\'O¤U´&\n\Ìp—”–Ã§ð¨-õ¢­™Ê”&<¾0\ZZ\ã0Lši3:›wÁ\Ú\ê²|~ˆ¬0£À\ë÷±´\Ìq) ð²\é\Ù5w\âA\Óbuuu)\Îu\Ý\è·\ÜÒ’Le\å‚i¢ ;T®›ðû¨­-GEe%<œö\Æó\â?]E\éÉTlgtþù·Ü˜±m;H=\ÅI¢,Á\ÒLøü>\Êb\áJ³i3O8¥¢OŸ>m?ÿEM\Óúýã±‡W\è†)µvd\Ò,(>lH’£3µw\"›\ÏñP\Õ<\Ëfõ‹\ÒX>I‚\Ç\ïBQ‚\'\à@’*\ãY`d¤I$©\í,šuÖ¹û‘Ðkjj*}ôÁ\ÛM\ÃAZ5`SVo9,\èÝ³\n\Ñpˆ	\Ý/\nñöOÏ¾ôÊ‰¿\Æ\ãw\ÑŽ zÃW]™U$’V#L%ðŠ,#‘\×Ð§[	´\\\'ŸyN,‰$ùŒ,8~\ãªe\Ïi†ƒ\\NE[Î„M’RŸ®­ƒ“<0\ÔÓ„\í¸,\îò\Ê\n\">ü>…U\ËA¿‡\ËRGq{\Ú\èº´¼\Æƒ\Ã÷\Ú÷\ØAC‡²z*÷\êKÏX±b\ÕRB5©\Z\ÌsY¶	‰\çPZcL\ìÀõ\ÐrI”•D.=úØ“\î)œ_O\ç\Ý¾½9Ÿ/À–xS|d˜:\ÊHÁB8¤\ÚZœË®¾^\ÙkAñ\å?{ô5M\Ë\îŸ\Ìh,\'u²/Àx~¬°Œ(l]^EfõŒ0\Ò¢\ÌAR%\"G;ž\ÈŽ\ÙTS5 \êö’3\Ï;\ï\ß)÷\ÔÜ‡f666¿@\\™\é\Ðm‡•\åQ‚-)\èÝ½\ZùLF!‡£gÌœX×·\ï¯&\ãÅ‚¹dÉ’ºù/<¿‘\n3ºM\ÕQ•\Ñ’w†QZ^\n\Ø\n\é\íÒ«®÷þ\Ú\ï«\Éd\Ïgž}b5\çBiŽg¥“µx( úšƒO” \Ëd\Ã8ˆ\àHpm \nB`’-‰yW^”\Ø\Ñ\ä\\\no\ä\Õ<\\Óµ9rÆªªª§c\ÜS>òX[c\ãi€.\Ñ3`[\Ó\ïó¢¼<\Ýa\nPs8ý\ØY\Ñh]]ªXp~mü­\×]uqGV¿‡*V\ÄÏ‘\æŒhp¿OFYI\"\Ñ]E6\Þ\Üz\Å\r·V\î\ì¹s\ï»\ï+C/Œ¤c\ÝÐš\0\'P91‡œ\æ ô0\ãNŸ¹ôE‚Ÿv/‚\Ëþ\Îv\áŠ«kp\"\Ï\âTS\ÓP¿\çÀ\ÙûNœò\ØÏŸ\Í=þ\àƒs3©ølŠS4‹‡À»pˆ\áDøƒAø^\æuÚ¶5ºW\\{µø;\Ú3ù\ÊK/m\Ð,»,ž¦\";ÿ£€\' ª²µe°\Í²‰ŽW/½æ¦£v\Ú\Ã<´¡‰÷\ê\È\è(ú@\Ý®cÀ°ø<«–A$B‘g\ì1\ÈQý‚œ/m\×\î:cW\È\ãZP]Us\ÇÁÓŽ¢’\â\ÊGŸ|\ì\áW\Ó\íGD\Ä ñâ‚°]pA:Vª\'&\âI476\Úº\îZiWÒ¦Ÿ/ú«E‹ö\ÅW^§ˆ;™Ñ·K¥üÛ›&h)\Ô#\èQ`¨}ò~\'\Ì>\ïÓvßœ9mF>[¶¡)‰\ß\ÇH\0PóA\æ\n\Ã\Ã&\ëCtž¥Š¿]HbgÂ•2¢\ç\ËKk\ï>|\Æ\Ì\Ëw´^\î¡û\ç¼\è\êú\ÒÓ³|8òö,ŸŠ\á’2¨™š·l1¯¾ù&2Æ¿¹Oò§ES\Ñù–nh§4G&\Ý$Ã»†ü¨©®B4eÔkä“N?»*þG¸ñs\0)|\êÁ¿g;R±=£3	i<‘‚\Åñûd”\Ç(\Þ«L»\ÌüQ\â\Ø+\0Qº$P‚\ÎŠ(º\ÃF¾l\èÈ±¿\êð¸§{ø\Ö|&u/\ÈD 1—DÄ­mlÅ þ½hoC!›Á\é\çœÛ£ººz\ë®Ú´…Ÿ~zñ[\ï¼w«6´À\ã\ØÎ¦#\ã•%ô\ì\Ñ\r•Q¸†\×6—q\î\ÅCvöL\×u+ø\Ë]MY5\Ï7\'¨2®@tMdt›…\á Â¼fYIºª²xM\×-¸Ž\Í\ì¨ Q/‚\äö\ë\Ûû_£\ÆO9/\nmÜ™\ân½ñº‰e\ÑÐ‡\Äq,Á+$\Å\Ôu®\Ï;Ÿ†š\Ëa\ì~SŽ\ÞgŸ1¯\ì\nh¤Ò¾\í¶;6™|3mkM²\ìƒt±H\0!ŸÕµ5Fý?sŸ	vJ[\nñn\Îyx«\0Mm	\ä]½\Êýd?+\Å\Ñz\"?´P\í–1ºf\"—\ÍÀ\ïóŸyR\ïòòò_m\íùGðöüùý\Z6¯!°E†H^\Ç4¡j\é<jjªa[:’\é4Ü‚ó\ìe\×ÿq\Öo=¢\Ì>|ÿý\ï¦\Ú\â“,HL4¶¥(%¥%¥ý\èÙ­¢¥\Ã\Ð\nú9]\Z\é¬s\á‡\ïÿ\é\Â\ÅÏ™\Ôqaóð½LZ@1\Zú}Š‡Ù¸€OA\Ð\ëc¼\Åmù\\’±j.c]p\åõe\Çu)2\à\Ú\ÛÛ«_y\áñF‰—!I\Å0D\Õp¬6™38˜Z\ZzNCCCƒsõ7\Öúýþ\æbwñ`=8÷\êu[·\Üö{‘3LM•È¦\É±†²ŽÚªr„\n\\5E¢“\ÛþpÁeW\ï\ìYñx<ôÜ“oMdra\Õta\ÙLÃ„D¤f\Èž˜\r£#ô{\àUˆ!³ ×€e[\èhk\ÄÁû\ïÿ\×Á£\Ç_Ò•\rA¹§øÄƒ÷uØ–öø}(À‘—Y]‘\ç%\âmhhØ„ý?sü¬“N\îÊÿ|±óŸñ²M›\×\Þ\å“%¦¤V\r­\ékf%FƒJqÕ•5¨­ˆA²5˜VÞœr\ÈQ¡ºººvü.ÿö\Ë_š÷ö_\r\Ç\ÚÞ‰g:L¼L\àydŽ¸Bx;ž’\Ó+\n ’gY†@G·µyK¡.ýÓ•#e\Ùÿug‚±¯½ô\Â\ËmÓ½À!\ÇvÃ¬iDYfÿ#IÁ–MKg\Ü/9ÿˆš\î½v\Ølõ\Ë’\Úpþÿ8e\Û\Ö-7GB~\nx$\Ò´µ§‘Lk¬®JÇ³G·jd0T”U\Õ^{\È\áG\æW½5\í\Þ7_yaÃ—\ßþPGù21¸ž€ZAC2c¹#½$V0‘$”F‚\Ì\é¼™XYId´zª­9\ÍÀ¬\ã§_\ÐgÀÈ¿w	´m›\ÖMxÿŸo}DÚˆ²\ÊR–RdN[\×&ñ\'·=½J\'\Óhnh†\ß+X\\|\á1ÁH\É\ë;\áÞ…%Ÿ}V¿fÍŠò©Le8B\äU•‚nd\Z64$M„\áõ(,rmB5\'ž~\ÖA\Çm\îlÞ˜·z\é7«\êª^òBep®“\ä–\r×¶‘/\äP\rB8(²¿W\Ç\ã\â€sM4n\ÙN1q¿·Žw\Ð5=ó\'º\Û;ï©¹\é–\æf©¬¦\Z¢H\Å\rª\Äp04® Ã´-¨š‰¶–&dS)\"ú\Ü:\àžCFü9R\ï7\í\'•J\ã-\r³—~µø\ì-[›{<ôÛ£k– ,%Ï£#•FK<\æt£\0\0\ZIDAT‡Ž¬ŠX8ŒH$™³\á“9XjÞ™4aÿ\î\Ý\ê\ë;›<}¾\è\ão.^´hj:W@K<%f…c\nfIMd\Z6l\ËDY,\0¿\Ç\Ã4À”Bù\éŸ\á(\Ë\Ú\ZXÁù¨\éGž]\×oÀÃ=÷\'Ð¸O?|\ï\æMkV_M\ì§$KL\ÑLW5PqE=LF\ÕöT:…T{\ÄLøýŠ\âò_0M†eyL\Ó¼Š‚²\ÊzTW ²ªŠ©õ‚U\Ýü–\Ö8\ÚSc1\ÔB•eaø%À*¤1n\Âþ\ç\×õ\Ûã¡®\ê0R©Ž)\Ï?1w‰T6¬ßŠ\Ê\Ú\Z\ä4j\È\Ø^3RuÑ€–\ë ð®  0”ò\ë01¶\"‡DS3‚A¯}\Ê\Ù\çWp\ïh4\ÈuÝª§ú\ëzA}x\Ö\ÖÌ®j\Ð-p¼ÀªB‚\ìfHgrPSIÖ„ª(\"Ê¢!‚TTV€v\É8‰ƒ…©\éÔ…Â‹H\nH¤h\éH3\æ!Ù‘@EU)¼²¯\ä\Â,dQÛ£û3“öŸzJ±ù\íªï¿º\ê‹\Ï>»5žH3:§¤¼‚™Rý\Ø,Þ´\à!ù8fˆŒ f4B -d“8ø\Ð\ÃgUu¯{¶+\î\çuOn\ãš\ï.øôÃþ**\Û	9AY¢K\\¹n™¬J®•0\é$\í6²\ÈÁ#p…}ðúD„½!x}2\"±0“x’gL¦\nhO\ë9­™\Ým€xk+\êz\ÔBptÀ, ¦ªòó	‡9®+“Þ³\áòùü¤O¼y[[K\Ç(Û±9\Ç’FR<\ÆÀ\áV#`¢`¸L£¡QmÕµ\í©‡}R¨´”$]J)K\ßûå›¶5%	(yjy&·l[\\bˆg³-¦ŸP5K)¶©m—-”Fƒ¬ß’NG¦@%}‹ñS$”K\årˆD£p-\rºt&ü++¯Xrð´c¨k®KÒ¨_;>$[\Ð4­\âž[n\ØD/—\Ø[ŠËˆ+¤z.\ÃL’ r2YGu\èƒ}ý#€üŽ\ÄÑ¿öœ©†o¾ô\Ü\æD\"^BÇ’Ž(OjF\ßQn\ê\0bq Žj•\"[Ue\Ìy]ª’^•”Ž$ö#ú@\Ëg@ù­\n\é@TÀ±P^VöÚ\Óf]Ì¤wfs6¬ü\î\Ô{|\äñ(µ_.S7y½ÖL•+\n9Z\ÚS€¡\ãº?^18PY¹¼3ö\Ë\ÏEÔ§zå¹§—¤²9/“º‹\Äla\ÃA`l7Àô²’\ÇÏ‚D\â],“¼•™&IzZRD¯\Û\0Iñ Wu	3\Æ^‘ƒ\Ëú\èó\È\è½8§X¶³E\æ-ƒ\î¸\ëže\Ùty\Ý`\Ì,]©\ÃÁb¢c\êl	‡\Â\Èfó8n\Æ\Øk\ïw\ÐØ©WÕºw\ßy\í\Í\æ\æ\Ötg\Ñ6L\ÐÀÉ¬ôEL‚\Å\Ê`<\ÛòÄ‚º®É€tH\ÕH\Ý$¦T2‡p(À8¬ O†m\ä_¶\ï¸}þØ½Ï»~OÀXòÉ‡3ž{\é\Õ\éd»\è\Î:$·\çD\n9dy*÷	¸\á\ê+&£eE\Ó÷;*Oµ\ê›E·}¹\äË‹L\Ç\æHO\Æ\Ä\r´lŽG€*>\à˜\î–:V\Ñ\ÝnK)B\×l \ÞÞŠh0\Èj’T‡U®0\á\à)£*+û¬\ÝU¶£²n\åò>ù\ä‹d>@š©~	¼$ÀŒ±®:¢ˆÎ˜u\ÜYõ\ÃF<ò»\í´Ÿÿ¦eú}öá¿žß´~\Óp’w2WN¯Ï¡’%úDž‡\èÙž\ì¡gº`½F–j V\ZW\à¡\â8\àÀƒ\Î\è\Ùw\à£\ÅN´«\ã\×üðý±¿\ï\Ñ\ç©\"®:»WH\âh>»FQdf\ß\Â^f|\Ü	={÷ûGWû§qöü4$I\Ùlò\Þû\ç\Í\r[·\ru—\Åb\äA-›Z|xø<šPR$dr& (…\ÙDWS\áhYœv\îý<Ïºb\'\Ú\ÕñŸøþ%¯¼ù\Î\Ý/\åœ{ÁôR‰\Ê\æE²WB\ã¦m>´/=bÆ¡\å\åUÿ\ì\êo\r\Ú\ÏÀód³\ÙÀú¾;gù²\å\'n\Ù\ÚÜ\n^”\0‡Y!&ÀF\Öe\ÚE#Lnd’(\äS8n\æ\ÌÑ¥\ÝzýÇ•\r\ÅNzg\ã6¯Ÿø\ÐÃ~˜J¥™\á§|“Š¿\äùI\Z\êóùPSYt<£Ž>\ì˜=/Z\È\Óå¶£‰.]úQ\é\×¿j\'£J\ÍøœÈ)s\ïšŸ¬°\à6‹\ÂPóHt´`Ö¬SF•Uw§»2þ[þ>ø\ç½ú\æ»÷z%žÅŠd>(#1<9Ÿ‚˜\Â3%\ÔÁ‡q@¤¤dA±\Ù%Ðˆ‰]þÍ—}úñG§ü!Æ‚²\á@#o\é÷Á$ø‚!Xª†ú>Ýž;nb\Ñ\\\\1‹úö\ËE\'¼4þ³T#&\×\ålÈ¼Ä¤\n²\'€ÊŠñ\Â>?=\ì\à\Ëû\í9\è/\Åü>\Ý%\ÐXhâº±¿\Þqk;Y\rjÄ²À±f\ÕL^£K+Yõ\Ú%û—M`\ê\Ôý=\î€\Ù\ÅN²˜ñ\ëøþ\Ø{\ï{\äybT\\\æ\é8õ\Ó	L\áHD\ä¾c‡aõªµ˜y\ÌñGU÷\ìùj1¿ÿû€¶r¥|Ý³\Ï\èy\åBLG-\"\Íü\á0\åeTeƒ\r>o\ÜÄƒº\Ü~S\ìbhüWŸ}ö\ØS/¾xZI(\Ó#mØ¬]\Ç\å=ðú´65aHÿ>8r\æ\Ì}B¡’/Š}\Î.\ï´l69þº«nü\Ä\ëá¡›\èfúQ*‹)$˜«®@¼­{ô®Á¨Q\Ãg5ñ?Jü\ÅN¸³ñ\ë\Ö-?\à\ÉGŸ}ø5bP\È\\PK#e®À¡o]w<¬ß¼\'?}z\ï~ƒ\æwö›¿ü|—As]·Ç·Þ¼iý\Ö&Ž\ä¦QªE\ê\É\ëA¯žµ2 |´\Æ\ïó\Ð~ûrN±“,fü\âO\\öü+o\Ü%°“I\ÇR†\ÍSE\äY@\ß\ê2öbžq\Â~\ÑòòV\îwô\ì]-‘h?ôº\ëoz\Ë\È\Øp^Y`\Ü;	MˆBŠ–\Æ\à\åô\êU…‘#\Ç]\Ûk·B±c}úñù¯¾ùö’W04­\Ð%¥¶\ÌR¿Õ•Xµnj++q\â)§\ì_ZZñ~±\Ï\Øe\Ðr‰Ä ;\î¾\ç{MS9ê²³ƒeÔ–Hm;}úöDK[Ps;aÜœý&xa±“,fü\æ5Ë|ü\é\æg2)¦æ¤»‰(]§ªXb¥QŒ3\nK¾Z†SN<qjUÏž]n\Ýþi»Z6p\Ç_\îZ\ÑÖ–€®©,\ê¦\ÂõNRPK*\Ã}GÆº\r›1z\äˆûF\ßÿüb@(v\ì7‹>ÿ\Û\Ï<]_h\ÙD]\Ñ”\re“†TQ†Šµ•8õ”³F\Êþ\ÎKv¿»M\Ë\Ä[÷þÓµ·~¾fõ:x+6+’Â‚:ž‘XÛ¶nÁÄ½†¡{¯ºƒG\ì=±h*¦\àV³ø´W\Þ|ç±¶Ž4«ß’.…œ91ÐŽ(a@Ÿ\îH¥\éÊ‹fŸqÆ±\å•5^±ó»ƒ\æºnÏ¿\Þqû\ÆoW®\ã|¬¦H\â<¢‰8x|>ô\îUƒ55Xú\å÷˜8iÜƒûL>\èÅ€P\ì\Ø\ï>ÿ\è//\Ì÷R\ÝÈ±^j\ß%\á•#©ˆD\ÉûŽ\Ü77\á\Ô\Óg\ï]RR±¨\Øg\ìúñ\Ìfû\ßtý\r+›[\Ú\Ø½¤1£›Œóš†H$\nÈ‹U„ýa\ì9h\Ð]ý‡Œº¢\ØIvu<—~ñ\éó/\Ì{}&µ\ëÐ­4$G%…7\ãþD™õ´´µbP\ßZL;\æø	eeUŸtõ÷7›–\Ï\ç‡\ßxÝµ_›À‹\ëI§#AÿN\Å\rºù3žH [EÆ¿rà¨±w;\ÉbÆ¯ùa\é¯½üÖ«\ä|t\Ûdº48<Î†Ã‰\èVS=ú\Öaù\Ê5˜}úiVTwÿW1¿ÿûdMM¾;}$·nKG—‡“Ð—ú6©yÁ\ï#V\ÂþGc\áÂ¥\Øo\Âø—ö\Ú{\Â\Ìb\'Y\ÌøO¼}Ã«op=•©ö\É\Ó\Í{\×p ›&$¿±\0PY\Þ\r\Ç\Í8®\Þ\n­-\æ÷\Ð\Òñø˜k¯»~¥Q”2‘²jŽt;µZG\Ëb\Ðiª\ïA{:¹~øè§‹d1\ã—,üø\Öw\ß[p(\èN[Y\â™s¢þ¢\ê{÷¬Áúõp\îE\í\n…º\Ü\Üû»O\×uKn¿\é\æ\â¯Rj\ne?^r\éñ†Pß¯–u\ØmÝ²“Ç¿yÌ„)\×B±c\×}ÿ\Õ\éO<7\ïQºŒN3T¦»%1rN7\ÙAŸ‚½FÄ†\r\r8óô\Ù”TTü\ÏRC´ B¡°\×]·Ý¶dKC#4U‡\ì‘\Ù}\Älx\n\"\á\Æ\ï=[·4£_¯>—\î3\å\àß­ycG€~òÁ?_õõ‡S—0\ÝLE…»0šžWXó¾¦%Qß»\'\Î:\ãüaœ,ÿûVÑ®¾ ]öž™L¦þú«¯[\í\Ø: ’j‡Š+KkEI,€Æ†V\í\ß#F\ï{Výžƒ‹.dtu14nõŠ\ïn~þ…—¯\É\åò¬O“\Éb\Ù\í,^@m·ø$?2™$\Î=\ï\ì)‘H\åo)\Ý\Ù3w4\×u#w\ßqKûúÍ¢¥\ë$…u†Øœ\r¯\'Œúú\Ì[}ö\é\"rð¤§‡™tr1 3–\êK~t\ïK¯¼u:ðü\à†©AµVXÙ³W-l\Û\Ä\É\'6:\\ZZ4õ¾Ë \å‰Á\×\Ýzó÷­\íLr\Z\nGX½‘\êœt±H,RŠÚŠ0j*b\èV\ÛûœA£\Ç>TÅŽýê«…\ÏÌ›÷æ‰Š\È#[0 	óž¤ó²m\å%X·v\ê{Õ¸—\\t\ÙN–ÿ\çAÓ³Ù\×^ý2Ã°8Ý¥@’Ê´6\àþËAõ}±r\ÍjvQ\Ü\Ä\É\ãÿ2`\ÈÞ—D1\ã×­:\ìÑ§Ÿ{££=\Ç5Yó«\ál·m‡GmE	ü™\×.º¨\Î\ëõv*ü\åówy§Ÿv÷7mXñ\ÃfŽ€\Ï\ëcb’×“Ð¹¬,Œ©S\Æ\áqø!û/º×¸Š¡Ø±_}ú\áô§\ç½ò2\ãójx¥š,\ÑD&»\àœŠ\Ü>‘GMu©y\áÅ—zEÿ\í2hj*Uwõu7llim?f@\Éñi³\'ž@\0z.Ž‘ƒû¢\Ïƒ¦\ZºW\ÑLi1«r]·\Û\Ù\ç]¸^–$™nô)Jc×ŽØ­[”òU•†\í›n¾‰\ZŠþ\Ûe\Ð4M\ëõ—\Ûn]\ßOr9r=®Á¤mõû1`\Ï^\ì\nšLG¦L\Ùïž‘c\'\\Zô,‹øµiO?ù\ÙZ\átÛ²8E\âA…c\Ýr`ó\Êbô\ï\Ó=,©8ó\ä\ãf]óü]2‚|>_}÷\í·n[±f#¯\ë\ZJ\"Q–\Û\ìñ\ÈE\Â8h\Òl\ÛÚ„‘#G\Î2bÌ™E`ð›†Ò•ù|>zý\Ý\rÝ¸q\Ó\Ì|Á®0l\ç\ËPÈ¿æ¨©.?yúiŽ\ãºt\îŽ&°\Ë;\Í\È\çG\\vÅ•KU\Ò~ùü®+0•ñòee%hnØ†É£‡ \ÏÀ\r:ú½ß„\Ä.~‰®*;{\Ô.ƒF\ê\Ã{ÿ|[z\å\Æ&\É\Ð`•mË…\á‚Ý¦Ò§W7ô­\ïƒe_‡ƒ§L¼uÔ¸ÉJ\Î;›ôÿö\ç»Z2™Œ\Ü}×‰\r¶pt)p(\èe·º\Éô¹\å•e\è\Û=Š\ÊX	ªjº\Ï¹÷„yÿÛ‹\Þ\Õ\ç\ï2h…ÿñòKõLV©É–\ÚI«KM²\âCUi­\í	ô®a¿	S&1ú\Ã]ôÿö÷Ð¸ó/¿n^¢y\Ût\Û\ÖY–\Ý\É.‰•PQ\Ãa\ãG\â\ÃÏ¿\Â\åý¡G¬º÷.÷‹\îö \ÑÈ®M>dú‹\ÙD\ë\ÔnÝ»stQ[6¯Ã€„l6…ž\Ý*ŒC¦L¾ó¬3N½©\Øÿ–\æÿ6@ÿ-\Þó§¥ø¨¹¹¹ö\Ü\ë\î\î\ïH`s–oÛ¦\Æ\Ç=uÕµ\Í^ºÔ€ú¤_\Î\éÿ\å¾£\'_7\0\0\0\0IEND®B`‚',10),(11,'Ð”ÐµÑ‚Ð°Ð»ÑŒ11','ddd','dd',NULL,11);
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drawing`
--

DROP TABLE IF EXISTS `drawing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drawing` (
  `drawing_id` int NOT NULL AUTO_INCREMENT,
  `detail_id` int NOT NULL,
  `drawing_kod` varchar(100) NOT NULL,
  `chekincumbent_id` int NOT NULL,
  `createincumbent_id` int NOT NULL,
  PRIMARY KEY (`drawing_id`,`detail_id`,`chekincumbent_id`,`createincumbent_id`),
  UNIQUE KEY `drawing_id_UNIQUE` (`drawing_id`),
  KEY `fk_plan_detail1_idx` (`detail_id`),
  KEY `fk_plan_incumbent1_idx` (`chekincumbent_id`),
  KEY `fk_plan_incumbent2_idx` (`createincumbent_id`),
  CONSTRAINT `fk_plan_detail1` FOREIGN KEY (`detail_id`) REFERENCES `detail` (`detail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_plan_incumbent1` FOREIGN KEY (`chekincumbent_id`) REFERENCES `incumbent` (`incumbent_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_plan_incumbent2` FOREIGN KEY (`createincumbent_id`) REFERENCES `incumbent` (`incumbent_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drawing`
--

LOCK TABLES `drawing` WRITE;
/*!40000 ALTER TABLE `drawing` DISABLE KEYS */;
INSERT INTO `drawing` VALUES (1,1,'Wywyy',15,10),(2,1,'Uqkfpeifp',18,33),(3,2,'Piorbdassujbtisfi',41,10),(4,3,'Ftyhfdqrki',39,3),(5,3,'Fwpglbrtqmtyrwdkbj',24,20),(6,4,'Jiyfrfefcqf',23,5),(7,4,'Inhvdfjifh',41,22),(8,4,'Lbntduwppbtjlppm',8,36),(9,5,'Rykplrdefhdngy',36,25),(10,5,'Ltcaje',49,3),(11,6,'Ihsdgmbvoqcjesoof',14,20),(12,6,'Isxfqemmohiems',6,27),(13,6,'Kptmbqwnosve',2,41),(14,7,'Iaotjkw',6,50),(15,8,'Dofyqjrinjss',30,2),(16,8,'Viottinofsnqpw',7,27),(17,8,'Owjombffgwqxy',11,22),(18,9,'Vgpxv',43,6),(19,9,'Moktq',48,6),(20,10,'Vkquv',40,5),(21,10,'Plrwknucjlotj',29,20),(22,10,'Nffugdhtswlh',3,39);
/*!40000 ALTER TABLE `drawing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampleproduct`
--

DROP TABLE IF EXISTS `exampleproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exampleproduct` (
  `exampleProduct_id` int NOT NULL AUTO_INCREMENT,
  `detail_id` int NOT NULL,
  `checkedincumbent_id` int NOT NULL,
  PRIMARY KEY (`exampleProduct_id`,`detail_id`,`checkedincumbent_id`),
  UNIQUE KEY `exampleProduct_id_UNIQUE` (`exampleProduct_id`),
  KEY `fk_instanceProduct_detail_idx` (`detail_id`),
  KEY `fk_instanceProduct_incumbent1_idx` (`checkedincumbent_id`),
  CONSTRAINT `fk_instanceProduct_detail` FOREIGN KEY (`detail_id`) REFERENCES `detail` (`detail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_instanceProduct_incumbent1` FOREIGN KEY (`checkedincumbent_id`) REFERENCES `incumbent` (`incumbent_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampleproduct`
--

LOCK TABLES `exampleproduct` WRITE;
/*!40000 ALTER TABLE `exampleproduct` DISABLE KEYS */;
INSERT INTO `exampleproduct` VALUES (1,1,33),(3,4,1),(6,1,20),(7,1,22),(8,1,21),(9,1,29),(10,2,45),(11,2,47),(12,2,34),(13,2,10),(14,2,15),(15,2,29),(16,2,26),(17,2,40),(18,2,43),(19,2,50),(20,2,1),(21,2,9),(22,3,1),(23,3,33),(24,3,17),(25,3,48),(26,3,22),(27,3,37),(28,3,22),(29,4,49),(30,4,9),(31,4,35),(32,4,8),(33,4,45),(34,4,14),(35,5,7),(36,5,17),(37,5,15),(38,5,38),(39,5,32),(40,5,45),(41,6,48),(42,6,9),(43,6,16),(44,6,49),(45,6,7),(46,6,15),(47,6,27),(48,7,45),(49,7,51),(50,7,3),(51,7,6),(52,7,24),(53,7,36),(54,7,32),(55,7,6),(56,8,27),(57,8,2),(58,8,41),(59,8,17),(60,8,37),(61,8,46),(62,8,22),(63,9,20),(64,9,9),(65,9,14),(66,9,30),(67,9,41),(68,9,36),(69,9,49),(70,9,2),(71,9,19),(72,9,45),(73,9,51),(74,9,51),(75,10,24),(76,10,38),(77,10,27),(78,10,11),(79,10,13),(80,10,38),(81,10,22),(82,10,21),(83,10,20),(84,10,31),(85,10,26),(86,10,29),(87,10,15),(88,4,3),(89,2,4);
/*!40000 ALTER TABLE `exampleproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incumbent`
--

DROP TABLE IF EXISTS `incumbent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incumbent` (
  `incumbent_id` int NOT NULL AUTO_INCREMENT,
  `incumbent_familyName` varchar(100) NOT NULL,
  `incumbent_lastName` varchar(100) NOT NULL,
  `incumbent_surnName` varchar(100) NOT NULL,
  `incumbent_birthday` datetime NOT NULL,
  `incumbent_employment_date` datetime NOT NULL,
  `work_position_id` int NOT NULL,
  `workplace_id` int NOT NULL,
  PRIMARY KEY (`incumbent_id`,`work_position_id`,`workplace_id`),
  UNIQUE KEY `incumbent_id_UNIQUE` (`incumbent_id`),
  KEY `fk_incumbent_post1_idx` (`work_position_id`),
  KEY `fk_incumbent_ workshop1_idx` (`workplace_id`),
  CONSTRAINT `fk_incumbent_ workshop1` FOREIGN KEY (`workplace_id`) REFERENCES `workplace` (`workplace_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_incumbent_post1` FOREIGN KEY (`work_position_id`) REFERENCES `work_position` (`work_position_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incumbent`
--

LOCK TABLES `incumbent` WRITE;
/*!40000 ALTER TABLE `incumbent` DISABLE KEYS */;
INSERT INTO `incumbent` VALUES (1,'Avmkaobme','Txwtbjff','Muiekrfirnjakyflk','1981-05-02 00:00:00','2017-06-01 00:00:00',2,1),(2,'Yulexmthwljgv','Lmhjnhwma','Hbuhkj','1985-11-27 00:00:00','2011-11-12 00:00:00',2,1),(3,'Ijrtvowptofrgasp','Kpyjeqi','Csaukucxtilfpjpeuu','1994-06-10 00:00:00','2011-08-12 00:00:00',1,1),(4,'Yhiijvde','Ytawcsqatm','Hqhwmhmarelvtehivu','1994-06-20 00:00:00','2015-02-05 00:00:00',3,1),(5,'Npjfhtwlpbqchsfb','Relunv','Ehgxybpoxp','1991-09-12 00:00:00','2010-02-02 00:00:00',2,1),(6,'Expgumnxqqmfk','Ljiawtbhqcviy','Hbsbrpc','1977-10-18 00:00:00','2018-08-11 00:00:00',1,2),(7,'Cllihqfwtco','Xljahehbaadfbrglfc','Lgiyruxaccblbhepwa','1979-11-19 00:00:00','2013-01-26 00:00:00',2,2),(8,'Pigudbuuxqyjeexb','Kkfcky','Vxtitha','1996-02-02 00:00:00','2009-09-25 00:00:00',1,2),(9,'Xhxrbbij','Cmlxuf','Ionse','1989-07-02 00:00:00','2016-07-29 00:00:00',3,2),(10,'Wxarbqkvsjcysh','Auelqpccgqrgmgriyo','Mhuytutcsebmmlx','1983-09-24 00:00:00','2009-05-09 00:00:00',2,2),(11,'Rmhmiqxm','Avyhfttraojvuyr','Vxelbqdp','1994-03-29 00:00:00','2017-05-06 00:00:00',2,3),(12,'Kkqvgacjj','Eyajldti','Fnikvxd','1991-04-07 00:00:00','2009-02-07 00:00:00',1,3),(13,'Wyjvufioshu','Hislvgbogsaceef','Kmkattffjeow','1997-11-09 00:00:00','2009-01-28 00:00:00',1,3),(14,'Iastokcds','Tljupqpwokbnholcao','Jjllhltnoptfxmm','1989-11-06 00:00:00','2007-08-01 00:00:00',3,3),(15,'Ggoenrjkpypfhyud','Mneldug','Enmhtb','1991-08-13 00:00:00','2013-02-13 00:00:00',1,3),(16,'Ppioqskdltwsgkjv','Lmcartmg','Qhvxjjybuatowqbl','1983-07-21 00:00:00','2013-07-10 00:00:00',3,4),(17,'Dgpbs','Gkksbk','Uoypievuiymqtuw','1995-06-13 00:00:00','2009-03-10 00:00:00',2,4),(18,'Xtmesqtabqyyw','Otnbnpubflkdudvyks','Lrvyognd','1987-05-11 00:00:00','2014-10-04 00:00:00',3,4),(19,'Pervmewpdwt','Yhwuxrptpxprwr','Klabbyagqtpnsiqk','1979-01-21 00:00:00','2011-08-25 00:00:00',3,4),(20,'Hforr','Ecxpqpxleqq','Ijbgiqdknkrwxrfvrr','1991-04-28 00:00:00','2008-04-20 00:00:00',3,5),(21,'Xfkprvlgfanuqvja','Ojiuifipsxcybqc','Yqaxg','1995-03-24 00:00:00','2013-01-03 00:00:00',1,5),(22,'Absuphqx','Emudk','Mdpgfvhqnpqcwoqxb','1987-07-07 00:00:00','2018-05-14 00:00:00',2,5),(23,'Hktufdwjfjgtikuf','Efkknbddetyfeah','Ctondpasfqdr','1988-08-28 00:00:00','2009-06-27 00:00:00',1,5),(24,'Ueucfqvodxspdqtjjp','Vcfhjflkywsop','Bvgwohekih','1980-03-14 00:00:00','2007-02-12 00:00:00',1,6),(25,'Bucbhxubvpsng','Wbptj','Srpere','1986-06-06 00:00:00','2010-05-16 00:00:00',1,6),(26,'Yuadvuyddlntid','Qqccpfsxtnadrf','Msbogsgyqipbnijay','1978-06-21 00:00:00','2010-11-01 00:00:00',2,6),(27,'Trbpklcqxawa','Ooxftigjcyx','Rffoqrkgvqiiwquiib','1982-10-09 00:00:00','2008-03-18 00:00:00',2,6),(28,'Crwvvlfoogfjula','Kiubp','Beiawvlpeo','1986-06-09 00:00:00','2008-06-08 00:00:00',1,6),(29,'Wywvkem','Nalmbmdgaocxye','Ieamvd','1995-11-21 00:00:00','2009-01-05 00:00:00',3,7),(30,'Ksetll','Rlmixx','Yyjvepfi','1980-02-18 00:00:00','2011-04-17 00:00:00',1,7),(31,'Ovfbwed','Gusatbtik','Fmnmfu','1990-06-20 00:00:00','2015-05-18 00:00:00',1,7),(32,'Jhksv','Ejjfq','Qvyhvpuxidqaia','1979-01-25 00:00:00','2008-03-25 00:00:00',2,7),(33,'Qqoftuknaqyyc','Fjhbf','Brkxpr','1977-02-10 00:00:00','2016-09-28 00:00:00',2,8),(34,'Ebmkngfniexjk','Ffwxihfljxwacwywye','Uocyqrcqqcpe','1996-02-17 00:00:00','2013-02-15 00:00:00',1,8),(35,'Udsguecjlehvpbc','Cucfmcuwdrrlle','Jsaohsmeoyexgb','1978-04-25 00:00:00','2009-01-13 00:00:00',3,8),(36,'Rursudhhj','Xiufrjtuuxkkh','Odwgnwnv','1979-11-29 00:00:00','2014-07-14 00:00:00',3,8),(37,'Fuxvwancxjaxasagbn','Hcabpkdlxndb','Wxpkhl','1986-07-24 00:00:00','2008-07-09 00:00:00',2,9),(38,'Fgsmarx','Nsgvqpegvaqjsvj','Vipwpyuxjqcfwtrwhv','1990-11-25 00:00:00','2016-04-01 00:00:00',3,9),(39,'Xmbawtrxpkeyesb','Agonjbmgqfiyjyyl','Riquln','1980-05-07 00:00:00','2007-09-02 00:00:00',1,9),(40,'Jxskkqff','Mbcoapr','Bxfdkslp','1986-01-05 00:00:00','2008-03-02 00:00:00',1,9),(41,'Hvrhfptshuv','Wpfyygnhtpkcb','Oldsegyqluwsycalek','1988-06-16 00:00:00','2019-02-21 00:00:00',3,9),(42,'Lmskckrqjpbukrj','Lkfik','Qmsmbg','1991-06-25 00:00:00','2008-02-10 00:00:00',1,9),(43,'Xsmfhnxby','Lynata','Poscdoospinobrhj','1991-06-15 00:00:00','2014-03-28 00:00:00',3,10),(44,'Eqocm','Kyqbhaeuuchvwak','Dhcgwspawdnb','1998-10-11 00:00:00','2015-11-19 00:00:00',1,10),(45,'Xlxwmfhta','Xmagwth','Qrccwycvssmcd','1977-06-17 00:00:00','2010-05-12 00:00:00',3,10),(46,'Bjwufmwjxpd','Vdassuq','Ldmkunlpc','1981-11-06 00:00:00','2013-11-08 00:00:00',2,10),(47,'Awtubhaemsptwnne','Mixhrdxokytpgfya','Ghntnnejovs','1996-07-15 00:00:00','2014-02-11 00:00:00',1,10),(48,'Hfniexdrqoxwk','Yhemgihc','Xtxuj','1994-09-27 00:00:00','2009-02-21 00:00:00',2,11),(49,'Cjuwqnugougx','Rbemvearxo','Yaokpxvashkksjiv','1998-03-09 00:00:00','2018-03-17 00:00:00',2,11),(50,'Hqpxhmgqgwkhpe','Qfvqbmyked','Sqhxuo','1982-10-23 00:00:00','2007-08-08 00:00:00',2,11),(51,'Sjhjhfelgisqhr','Cygyfvqbf','Stsqx','1981-10-06 00:00:00','2014-04-02 00:00:00',2,11),(52,'Xquukktijbyrhvfxr','Wqdgwjg','Gyfhr','1995-02-24 00:00:00','2013-07-22 00:00:00',3,11),(53,'Sehtdmsgjuinheyqb','Tjyfaeewt','Adknqyvjg','1992-04-15 00:00:00','2013-05-17 00:00:00',2,11),(54,'ere','ee','ee','2020-12-05 00:00:00','2020-12-05 00:00:00',1,1);
/*!40000 ALTER TABLE `incumbent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--

DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machine` (
  `machine_id` int NOT NULL AUTO_INCREMENT,
  `machine_invNumber` int NOT NULL,
  `machine_model` varchar(100) NOT NULL,
  `workplace_id` int NOT NULL,
  `type_mashine_id` int NOT NULL,
  PRIMARY KEY (`machine_id`,`workplace_id`,`type_mashine_id`,`machine_invNumber`),
  UNIQUE KEY `machine_id_UNIQUE` (`machine_id`),
  KEY `fk_machine_ workshop1_idx` (`workplace_id`),
  KEY `fk_machine_type_mashine1_idx` (`type_mashine_id`),
  CONSTRAINT `fk_machine_ workshop1` FOREIGN KEY (`workplace_id`) REFERENCES `workplace` (`workplace_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_machine_type_mashine1` FOREIGN KEY (`type_mashine_id`) REFERENCES `type_mashine` (`type_mashine_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES (1,11,'Chqoxvtodqcfhkmna',1,8),(2,12,'Gnfjhlnv',1,5),(3,13,'Ggtxqtq',1,8),(4,21,'Buauanfecf',2,6),(5,22,'Oevkvsog',2,8),(6,23,'Hsnnntxgbpwynloj',2,4),(7,24,'Rgyau',2,5),(8,31,'Koymkrppinccgx',3,2),(9,32,'Ceamupogstbqokqgpm',3,3),(10,33,'Roslv',3,8),(11,41,'Cawkmapityp',4,6),(12,42,'Snapkpcywfuypls',4,1),(13,43,'Vcqgtbopd',4,7),(14,44,'Ohbbmudhh',4,7),(15,51,'Ghvehe',5,3),(16,52,'Whwwfdqrhsk',5,2),(17,53,'Monorqerecpg',5,8),(18,61,'Uideh',6,6),(19,62,'Aqqdmrvxwkrmbgapqn',6,5),(20,63,'Bwalpmnbfxnoex',6,7),(21,64,'Njwatgvcgvjjnmvope',6,1),(22,65,'Pyhoi',6,4),(23,71,'Jqppikeqnffeplg',7,4),(24,72,'Gcsptrpjawamp',7,1),(25,73,'Rqreuwbqkdysuuygfy',7,1),(26,81,'Hpxjetapmp',8,2),(27,82,'Rlkfwdlkulqfx',8,7),(28,83,'Mhrdjsuemm',8,1),(29,84,'Dnmoktimv',8,7),(30,91,'Gufyrjsiail',9,2),(31,92,'Qvyoxpamktqkoysk',9,3),(32,93,'Lurouiteeutjl',9,5),(33,101,'Liqkqfiokgikb',10,6),(34,102,'Taxpoy',10,7),(35,103,'Hcvdwmemxepbg',10,6),(36,104,'Reowvfcoydglotxd',10,1),(37,105,'Infqorvaqiyplbiq',10,2),(38,111,'Knrvcyqwpounwirfen',11,4),(39,112,'Oxixkspjmtjoyyrf',11,4),(40,113,'Mjhpsxqqxhf',11,5);
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation` (
  `operation_id` int NOT NULL AUTO_INCREMENT,
  `detail_id` int NOT NULL,
  `machine_id` int NOT NULL,
  `operation_name` varchar(100) NOT NULL,
  `operation_timeWork` int NOT NULL,
  `operation_number` int NOT NULL,
  PRIMARY KEY (`operation_id`,`detail_id`,`machine_id`),
  UNIQUE KEY `operation_id_UNIQUE` (`operation_id`),
  KEY `fk_operation_detail1_idx` (`detail_id`),
  KEY `fk_operation_machine1_idx` (`machine_id`),
  CONSTRAINT `fk_operation_detail1` FOREIGN KEY (`detail_id`) REFERENCES `detail` (`detail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_operation_machine1` FOREIGN KEY (`machine_id`) REFERENCES `machine` (`machine_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` VALUES (1,1,28,'Ywcecctenbvlupp',35,1),(2,1,15,'Riqvajelowg',28,2),(3,1,8,'Qmhugkttcnardmcqy',22,3),(4,1,18,'Pspoixrqjc',36,4),(5,1,31,'Lcmaiceovudwk',25,5),(6,2,30,'Xvnfa',31,1),(7,2,23,'Bjtxtvidmkg',30,2),(8,2,30,'Nksliddyjtccmpulj',21,3),(9,2,11,'Btjwrbpqtqh',33,4),(10,2,23,'Sdfcyqjmfndboo',28,5),(11,3,16,'Mpveue',37,1),(12,3,5,'Hcwou',34,2),(13,3,26,'Qldmnnrgndfh',25,3),(14,3,3,'Pqxia',22,4),(15,3,34,'Fltmoitcarwu',28,5),(16,4,1,'Eoebfvptodivnitk',33,1),(17,4,31,'Tuujxtunwahlgs',20,2),(18,4,1,'Kmnskomqrytsepc',24,3),(19,4,7,'Qgqhkoquobfpocch',24,4),(20,4,17,'Wpincfupryidsjsqxl',24,5),(21,5,8,'Faalfxlp',29,1),(22,5,15,'Peqdk',34,2),(23,5,3,'Slrlbodb',37,3),(24,5,22,'Lpejnovmjvbdiowpy',28,4),(25,5,3,'Pdqtonuybksvbbl',39,5),(26,6,34,'Eqykrmaouakrkvr',22,1),(27,6,4,'Hyefbgbah',33,2),(28,6,17,'Mrbsxvt',30,3),(29,6,13,'Xtcvtk',33,4),(30,6,13,'Lnoqfrvrgic',26,5),(31,7,17,'Ekfblmpshn',31,1),(32,7,7,'Scddlxwlmohk',27,2),(33,7,27,'Iillqjrwrnvramffqo',26,3),(34,7,4,'Elwwokeqsvaqcfj',34,4),(35,7,31,'Uliayhkx',36,5),(36,8,22,'Hvwfisfq',38,1),(37,8,11,'Leksbxoaixriocdyv',34,2),(38,8,17,'Swlyxnby',21,3),(39,8,11,'Skvpcnnngyksubpsj',23,4),(40,8,28,'Cembaqgxyk',28,5),(41,9,7,'Idviisgenkqxats',36,1),(42,9,5,'Fvoimngyitavjoqwn',35,2),(43,9,10,'Xcihwjxyyiybjdaru',39,3),(44,9,38,'Fbqtbfyydrcmu',24,4),(45,9,9,'Ndmugkearqeebvevs',21,5),(46,10,28,'Kwwyv',35,1),(47,10,31,'Hlunlt',32,2),(48,10,38,'Bonhu',33,3),(49,10,7,'Rsykubwswenyro',23,4),(50,10,20,'Ipkwp',20,5),(51,11,20,'dwsdw',22,1);
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `production_id` int NOT NULL AUTO_INCREMENT,
  `operation_id` int NOT NULL,
  `exampleProduct_id` int NOT NULL,
  `production_startDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `production_endDate` datetime NOT NULL,
  `createincumbent_id` int NOT NULL,
  PRIMARY KEY (`production_id`,`operation_id`,`exampleProduct_id`,`createincumbent_id`),
  UNIQUE KEY `production_id_UNIQUE` (`production_id`),
  KEY `fk_production_incumbent1_idx` (`createincumbent_id`),
  KEY `fk_production_operation1_idx` (`operation_id`),
  KEY `fk_production_instanceProduct1_idx` (`exampleProduct_id`),
  CONSTRAINT `fk_production_instanceProduct1` FOREIGN KEY (`exampleProduct_id`) REFERENCES `exampleproduct` (`exampleProduct_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_production_operation1` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`operation_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES (1,1,1,'2020-12-03 00:44:42','2020-12-03 01:19:42',34),(2,2,1,'2020-12-03 00:44:46','2020-12-03 01:12:46',20),(3,3,1,'2020-12-03 00:44:46','2020-12-03 01:06:46',13),(4,4,1,'2020-12-03 00:44:46','2020-12-03 01:20:46',27),(5,5,1,'2020-12-03 00:44:46','2020-12-03 01:09:46',39),(11,1,3,'2020-12-03 00:44:46','2020-12-03 02:29:42',33),(12,2,3,'2020-12-03 00:44:47','2020-12-03 02:08:46',21),(13,3,3,'2020-12-03 00:44:47','2020-12-03 01:50:46',11),(14,4,3,'2020-12-03 00:44:47','2020-12-03 02:32:46',25),(15,5,3,'2020-12-03 00:44:47','2020-12-03 01:59:46',37),(21,1,6,'2020-12-03 00:44:53','2020-12-03 04:14:42',34),(22,2,6,'2020-12-03 00:44:54','2020-12-03 03:32:46',22),(23,1,7,'2020-12-03 00:44:54','2020-12-03 04:49:42',33),(24,2,7,'2020-12-03 00:44:54','2020-12-03 04:00:46',21),(25,3,7,'2020-12-03 00:44:54','2020-12-03 02:34:46',14),(26,4,7,'2020-12-03 00:44:54','2020-12-03 03:08:46',24),(27,5,7,'2020-12-03 00:44:54','2020-12-03 02:24:46',40),(28,1,8,'2020-12-03 00:44:54','2020-12-03 05:24:42',34),(29,2,8,'2020-12-03 00:44:54','2020-12-03 04:28:46',21),(30,3,8,'2020-12-03 00:44:54','2020-12-03 02:56:46',12),(31,4,8,'2020-12-03 00:44:54','2020-12-03 03:44:46',27),(32,5,8,'2020-12-03 00:44:54','2020-12-03 02:49:46',41),(33,1,9,'2020-12-03 00:44:55','2020-12-03 05:59:42',35),(34,2,9,'2020-12-03 00:44:55','2020-12-03 04:56:46',21),(35,3,9,'2020-12-03 00:44:55','2020-12-03 03:18:46',12),(36,4,9,'2020-12-03 00:44:55','2020-12-03 04:20:46',24),(37,5,9,'2020-12-03 00:44:55','2020-12-03 03:14:46',37),(38,6,10,'2020-12-03 00:44:55','2020-12-03 03:20:46',41),(39,7,10,'2020-12-03 00:44:55','2020-12-03 01:14:55',30),(40,8,10,'2020-12-03 00:44:55','2020-12-03 03:41:46',40),(41,9,10,'2020-12-03 00:44:55','2020-12-03 01:17:55',17),(42,6,11,'2020-12-03 00:44:55','2020-12-03 04:12:46',39),(43,7,11,'2020-12-03 00:44:55','2020-12-03 01:44:55',29),(44,8,11,'2020-12-03 00:44:55','2020-12-03 04:33:46',41),(45,6,12,'2020-12-03 00:44:55','2020-12-03 05:04:46',41),(46,7,12,'2020-12-03 00:44:55','2020-12-03 02:14:55',31),(47,8,12,'2020-12-03 00:44:55','2020-12-03 05:25:46',41),(48,9,12,'2020-12-03 00:44:56','2020-12-03 01:50:55',18),(49,10,12,'2020-12-03 00:44:56','2020-12-03 02:42:55',29),(50,6,13,'2020-12-03 00:44:56','2020-12-03 05:56:46',40),(51,7,13,'2020-12-03 00:44:56','2020-12-03 03:12:55',29),(52,8,13,'2020-12-03 00:44:56','2020-12-03 06:17:46',40),(53,9,13,'2020-12-03 00:44:56','2020-12-03 02:23:55',18),(54,6,14,'2020-12-03 00:44:56','2020-12-03 06:48:46',38),(55,7,14,'2020-12-03 00:44:56','2020-12-03 03:42:55',29),(56,8,14,'2020-12-03 00:44:56','2020-12-03 07:09:46',40),(57,9,14,'2020-12-03 00:44:56','2020-12-03 02:56:55',16),(58,6,15,'2020-12-03 00:44:56','2020-12-03 07:40:46',38),(59,7,15,'2020-12-03 00:44:56','2020-12-03 04:12:55',30),(60,8,15,'2020-12-03 00:44:56','2020-12-03 08:01:46',40),(61,9,15,'2020-12-03 00:44:56','2020-12-03 03:29:55',16),(62,10,15,'2020-12-03 00:44:57','2020-12-03 04:40:55',30),(63,6,16,'2020-12-03 00:44:57','2020-12-03 08:32:46',40),(64,7,16,'2020-12-03 00:44:57','2020-12-03 05:10:55',29),(65,8,16,'2020-12-03 00:44:57','2020-12-03 08:53:46',37),(66,6,17,'2020-12-03 00:44:57','2020-12-03 09:24:46',39),(67,7,17,'2020-12-03 00:44:57','2020-12-03 05:40:55',30),(68,8,17,'2020-12-03 00:44:57','2020-12-03 09:45:46',41),(69,9,17,'2020-12-03 00:44:57','2020-12-03 04:02:55',16),(70,6,18,'2020-12-03 00:44:57','2020-12-03 10:16:46',38),(71,7,18,'2020-12-03 00:44:57','2020-12-03 06:10:55',29),(72,6,19,'2020-12-03 00:44:57','2020-12-03 10:47:46',37),(73,7,19,'2020-12-03 00:44:57','2020-12-03 06:40:55',30),(74,8,19,'2020-12-03 00:44:58','2020-12-03 11:08:46',37),(75,9,19,'2020-12-03 00:44:58','2020-12-03 04:35:55',18),(76,6,20,'2020-12-03 00:44:58','2020-12-03 11:39:46',40),(77,7,20,'2020-12-03 00:44:58','2020-12-03 07:10:55',30),(78,6,21,'2020-12-03 00:44:58','2020-12-03 12:10:46',37),(79,7,21,'2020-12-03 00:44:58','2020-12-03 07:40:55',29),(80,8,21,'2020-12-03 00:44:58','2020-12-03 12:31:46',38),(81,11,22,'2020-12-03 00:44:58','2020-12-03 05:33:46',21),(82,12,22,'2020-12-03 00:44:58','2020-12-03 01:18:58',9),(83,13,22,'2020-12-03 00:44:58','2020-12-03 05:14:42',33),(84,14,22,'2020-12-03 00:44:58','2020-12-03 01:06:58',3),(85,15,22,'2020-12-03 00:44:58','2020-12-03 01:12:58',44),(86,11,23,'2020-12-03 00:44:58','2020-12-03 06:10:46',21),(87,12,23,'2020-12-03 00:44:58','2020-12-03 01:52:58',7),(88,13,23,'2020-12-03 00:44:58','2020-12-03 05:39:42',33),(89,14,23,'2020-12-03 00:44:59','2020-12-03 01:28:58',2),(90,15,23,'2020-12-03 00:44:59','2020-12-03 01:40:58',44),(91,11,24,'2020-12-03 00:44:59','2020-12-03 06:47:46',20),(92,12,24,'2020-12-03 00:44:59','2020-12-03 02:26:58',7),(93,13,24,'2020-12-03 00:44:59','2020-12-03 06:24:42',35),(94,14,24,'2020-12-03 00:44:59','2020-12-03 01:50:58',3),(95,15,24,'2020-12-03 00:44:59','2020-12-03 02:08:58',44),(96,11,25,'2020-12-03 00:44:59','2020-12-03 07:24:46',21),(97,12,25,'2020-12-03 00:44:59','2020-12-03 03:00:58',7),(98,13,25,'2020-12-03 00:44:59','2020-12-03 06:49:42',35),(99,14,25,'2020-12-03 00:44:59','2020-12-03 02:12:58',3),(100,15,25,'2020-12-03 00:44:59','2020-12-03 02:36:58',44),(101,11,26,'2020-12-03 00:44:59','2020-12-03 08:01:46',20),(102,12,26,'2020-12-03 00:44:59','2020-12-03 03:34:58',7),(103,13,26,'2020-12-03 00:45:00','2020-12-03 07:14:42',34),(104,14,26,'2020-12-03 00:45:00','2020-12-03 02:34:58',3),(105,15,26,'2020-12-03 00:45:00','2020-12-03 03:04:58',46),(106,11,27,'2020-12-03 00:45:00','2020-12-03 08:38:46',20),(107,12,27,'2020-12-03 00:45:00','2020-12-03 04:08:58',6),(108,11,28,'2020-12-03 00:45:00','2020-12-03 09:15:46',21),(109,12,28,'2020-12-03 00:45:00','2020-12-03 04:42:58',6),(110,13,28,'2020-12-03 00:45:00','2020-12-03 07:39:42',33),(111,14,28,'2020-12-03 00:45:00','2020-12-03 02:56:58',4),(112,16,29,'2020-12-03 00:45:00','2020-12-03 03:29:58',4),(113,17,29,'2020-12-03 00:45:00','2020-12-03 12:51:46',38),(114,16,30,'2020-12-03 00:45:00','2020-12-03 04:02:58',4),(115,17,30,'2020-12-03 00:45:00','2020-12-03 13:11:46',39),(116,18,30,'2020-12-03 00:45:01','2020-12-03 04:26:58',3),(117,16,31,'2020-12-03 00:45:01','2020-12-03 04:59:58',2),(118,17,31,'2020-12-03 00:45:01','2020-12-03 13:31:46',39),(119,18,31,'2020-12-03 00:45:01','2020-12-03 05:23:58',2),(120,19,31,'2020-12-03 00:45:01','2020-12-03 01:42:58',9),(121,20,31,'2020-12-03 00:45:01','2020-12-03 03:56:46',22),(122,16,32,'2020-12-03 00:45:01','2020-12-03 05:56:58',2),(123,17,32,'2020-12-03 00:45:01','2020-12-03 13:51:46',41),(124,18,32,'2020-12-03 00:45:01','2020-12-03 06:20:58',3),(125,19,32,'2020-12-03 00:45:01','2020-12-03 02:06:58',8),(126,20,32,'2020-12-03 00:45:01','2020-12-03 09:02:46',20),(127,16,33,'2020-12-03 00:45:01','2020-12-03 06:53:58',4),(128,17,33,'2020-12-03 00:45:02','2020-12-03 14:11:46',38),(129,18,33,'2020-12-03 00:45:02','2020-12-03 07:17:58',2),(130,19,33,'2020-12-03 00:45:02','2020-12-03 03:58:58',7),(131,20,33,'2020-12-03 00:45:02','2020-12-03 09:26:46',22),(132,16,34,'2020-12-03 00:45:02','2020-12-03 07:50:58',3),(133,17,34,'2020-12-03 00:45:02','2020-12-03 14:31:46',39),(134,18,34,'2020-12-03 00:45:02','2020-12-03 08:14:58',3),(135,19,34,'2020-12-03 00:45:02','2020-12-03 04:22:58',9),(136,20,34,'2020-12-03 00:45:02','2020-12-03 09:50:46',20),(137,21,35,'2020-12-03 00:45:02','2020-12-03 03:47:46',11),(138,22,35,'2020-12-03 00:45:02','2020-12-03 10:00:46',22),(139,23,35,'2020-12-03 00:45:02','2020-12-03 07:30:58',4),(140,24,35,'2020-12-03 00:45:03','2020-12-03 04:12:46',27),(141,25,35,'2020-12-03 00:45:03','2020-12-03 08:53:58',3),(142,21,36,'2020-12-03 00:45:03','2020-12-03 04:16:46',13),(143,22,36,'2020-12-03 00:45:03','2020-12-03 10:34:46',22),(144,23,36,'2020-12-03 00:45:03','2020-12-03 09:30:58',3),(145,24,36,'2020-12-03 00:45:03','2020-12-03 04:40:46',26),(146,25,36,'2020-12-03 00:45:03','2020-12-03 10:09:58',1),(147,21,37,'2020-12-03 00:45:03','2020-12-03 04:45:46',14),(148,22,37,'2020-12-03 00:45:03','2020-12-03 11:08:46',20),(149,23,37,'2020-12-03 00:45:03','2020-12-03 10:46:58',2),(150,24,37,'2020-12-03 00:45:03','2020-12-03 05:08:46',25),(151,25,37,'2020-12-03 00:45:04','2020-12-03 11:25:58',2),(152,21,38,'2020-12-03 00:45:04','2020-12-03 05:14:46',11),(153,22,38,'2020-12-03 00:45:04','2020-12-03 11:42:46',20),(154,23,38,'2020-12-03 00:45:04','2020-12-03 12:02:58',1),(155,24,38,'2020-12-03 00:45:04','2020-12-03 05:36:46',27),(156,25,38,'2020-12-03 00:45:04','2020-12-03 12:41:58',2),(157,21,39,'2020-12-03 00:45:04','2020-12-03 05:43:46',14),(158,22,39,'2020-12-03 00:45:04','2020-12-03 12:16:46',20),(159,21,40,'2020-12-03 00:45:04','2020-12-03 06:12:46',11),(160,22,40,'2020-12-03 00:45:04','2020-12-03 12:50:46',20),(161,23,40,'2020-12-03 00:45:04','2020-12-03 13:18:58',4),(162,24,40,'2020-12-03 00:45:04','2020-12-03 06:04:46',27),(163,25,40,'2020-12-03 00:45:05','2020-12-03 13:57:58',4),(164,26,41,'2020-12-03 00:45:05','2020-12-03 03:26:58',43),(165,27,41,'2020-12-03 00:45:05','2020-12-03 05:15:58',6),(166,28,41,'2020-12-03 00:45:05','2020-12-03 10:20:46',21),(167,29,41,'2020-12-03 00:45:05','2020-12-03 01:50:55',17),(168,30,41,'2020-12-03 00:45:05','2020-12-03 05:01:55',18),(169,26,42,'2020-12-03 00:45:05','2020-12-03 03:48:58',45),(170,27,42,'2020-12-03 00:45:05','2020-12-03 05:48:58',8),(171,28,42,'2020-12-03 00:45:05','2020-12-03 10:50:46',21),(172,26,43,'2020-12-03 00:45:05','2020-12-03 04:10:58',46),(173,27,43,'2020-12-03 00:45:05','2020-12-03 06:21:58',9),(174,28,43,'2020-12-03 00:45:05','2020-12-03 13:20:46',20),(175,29,43,'2020-12-03 00:45:05','2020-12-03 05:34:55',17),(176,26,44,'2020-12-03 00:45:06','2020-12-03 04:32:58',45),(177,27,44,'2020-12-03 00:45:06','2020-12-03 06:54:58',8),(178,28,44,'2020-12-03 00:45:06','2020-12-03 13:50:46',22),(179,29,44,'2020-12-03 00:45:06','2020-12-03 06:07:55',16),(180,30,44,'2020-12-03 00:45:06','2020-12-03 06:33:55',18),(181,26,45,'2020-12-03 00:45:06','2020-12-03 04:54:58',45),(182,27,45,'2020-12-03 00:45:06','2020-12-03 07:27:58',6),(183,28,45,'2020-12-03 00:45:06','2020-12-03 14:20:46',22),(184,29,45,'2020-12-03 00:45:06','2020-12-03 07:06:55',18),(185,30,45,'2020-12-03 00:45:06','2020-12-03 07:32:55',16),(186,26,46,'2020-12-03 00:45:06','2020-12-03 05:16:58',44),(187,27,46,'2020-12-03 00:45:06','2020-12-03 08:00:58',9),(188,28,46,'2020-12-03 00:45:07','2020-12-03 14:50:46',21),(189,29,46,'2020-12-03 00:45:07','2020-12-03 08:05:55',16),(190,30,46,'2020-12-03 00:45:07','2020-12-03 08:31:55',17),(191,26,47,'2020-12-03 00:45:07','2020-12-03 05:38:58',45),(192,27,47,'2020-12-03 00:45:07','2020-12-03 08:33:58',9),(193,28,47,'2020-12-03 00:45:07','2020-12-03 15:20:46',20),(194,29,47,'2020-12-03 00:45:07','2020-12-03 09:04:55',17),(195,30,47,'2020-12-03 00:45:07','2020-12-03 09:30:55',17),(196,31,48,'2020-12-03 00:45:07','2020-12-03 15:51:46',21),(197,32,48,'2020-12-03 00:45:07','2020-12-03 09:00:58',9),(198,31,49,'2020-12-03 00:45:08','2020-12-03 16:22:46',20),(199,32,49,'2020-12-03 00:45:08','2020-12-03 09:27:58',7),(200,33,49,'2020-12-03 00:45:08','2020-12-03 08:05:42',33),(201,31,50,'2020-12-03 00:45:08','2020-12-03 16:53:46',20),(202,32,50,'2020-12-03 00:45:08','2020-12-03 09:54:58',8),(203,33,50,'2020-12-03 00:45:08','2020-12-03 08:31:42',33),(204,34,50,'2020-12-03 00:45:08','2020-12-03 09:34:58',9),(205,35,50,'2020-12-03 00:45:08','2020-12-03 15:07:46',40),(206,31,51,'2020-12-03 00:45:08','2020-12-03 17:24:46',22),(207,32,51,'2020-12-03 00:45:08','2020-12-03 10:21:58',6),(208,33,51,'2020-12-03 00:45:08','2020-12-03 08:57:42',35),(209,34,51,'2020-12-03 00:45:08','2020-12-03 10:28:58',8),(210,35,51,'2020-12-03 00:45:09','2020-12-03 15:43:46',38),(211,31,52,'2020-12-03 00:45:09','2020-12-03 17:55:46',21),(212,32,52,'2020-12-03 00:45:09','2020-12-03 10:48:58',6),(213,33,52,'2020-12-03 00:45:09','2020-12-03 09:23:42',33),(214,34,52,'2020-12-03 00:45:09','2020-12-03 11:02:58',9),(215,35,52,'2020-12-03 00:45:09','2020-12-03 16:19:46',41),(216,31,53,'2020-12-03 00:45:09','2020-12-03 18:26:46',20),(217,32,53,'2020-12-03 00:45:09','2020-12-03 11:29:58',9),(218,33,53,'2020-12-03 00:45:09','2020-12-03 09:49:42',35),(219,31,54,'2020-12-03 00:45:09','2020-12-03 18:57:46',21),(220,32,54,'2020-12-03 00:45:10','2020-12-03 11:56:58',8),(221,31,55,'2020-12-03 00:45:10','2020-12-03 19:28:46',21),(222,32,55,'2020-12-03 00:45:10','2020-12-03 12:23:58',6),(223,33,55,'2020-12-03 00:45:10','2020-12-03 10:15:42',35),(224,36,56,'2020-12-03 00:45:10','2020-12-03 06:42:46',25),(225,37,56,'2020-12-03 00:45:10','2020-12-03 10:04:55',17),(226,38,56,'2020-12-03 00:45:10','2020-12-03 19:49:46',22),(227,39,56,'2020-12-03 00:45:10','2020-12-03 10:27:55',17),(228,40,56,'2020-12-03 00:45:10','2020-12-03 09:51:42',33),(229,36,57,'2020-12-03 00:45:11','2020-12-03 07:20:46',27),(230,37,57,'2020-12-03 00:45:11','2020-12-03 11:01:55',18),(231,38,57,'2020-12-03 00:45:11','2020-12-03 20:10:46',22),(232,39,57,'2020-12-03 00:45:11','2020-12-03 11:24:55',17),(233,36,58,'2020-12-03 00:45:11','2020-12-03 07:58:46',27),(234,37,58,'2020-12-03 00:45:11','2020-12-03 11:58:55',16),(235,38,58,'2020-12-03 00:45:11','2020-12-03 20:31:46',21),(236,39,58,'2020-12-03 00:45:11','2020-12-03 12:21:55',16),(237,40,58,'2020-12-03 00:45:11','2020-12-03 10:19:42',33),(238,36,59,'2020-12-03 00:45:11','2020-12-03 08:36:46',24),(239,37,59,'2020-12-03 00:45:12','2020-12-03 12:55:55',16),(240,38,59,'2020-12-03 00:45:12','2020-12-03 20:52:46',22),(241,36,60,'2020-12-03 00:45:12','2020-12-03 09:14:46',24),(242,37,60,'2020-12-03 00:45:12','2020-12-03 13:29:55',16),(243,38,60,'2020-12-03 00:45:12','2020-12-03 21:13:46',21),(244,39,60,'2020-12-03 00:45:12','2020-12-03 13:52:55',16),(245,36,61,'2020-12-03 00:45:12','2020-12-03 09:52:46',27),(246,37,61,'2020-12-03 00:45:12','2020-12-03 14:26:55',16),(247,38,61,'2020-12-03 00:45:12','2020-12-03 21:34:46',22),(248,36,62,'2020-12-03 00:45:12','2020-12-03 10:30:46',25),(249,37,62,'2020-12-03 00:45:12','2020-12-03 15:00:55',18),(250,38,62,'2020-12-03 00:45:12','2020-12-03 21:55:46',22),(251,39,62,'2020-12-03 00:45:13','2020-12-03 15:23:55',18),(252,40,62,'2020-12-03 00:45:13','2020-12-03 10:47:42',34),(253,41,63,'2020-12-03 00:45:13','2020-12-03 12:59:58',8),(254,42,63,'2020-12-03 00:45:13','2020-12-03 12:58:58',6),(255,41,64,'2020-12-03 00:45:13','2020-12-03 13:35:58',9),(256,42,64,'2020-12-03 00:45:13','2020-12-03 14:10:58',9),(257,43,64,'2020-12-03 00:45:13','2020-12-03 03:57:46',12),(258,44,64,'2020-12-03 00:45:13','2020-12-03 01:09:13',52),(259,45,64,'2020-12-03 00:45:13','2020-12-03 06:33:46',11),(260,41,65,'2020-12-03 00:45:13','2020-12-03 14:11:58',7),(261,42,65,'2020-12-03 00:45:13','2020-12-03 14:46:58',7),(262,43,65,'2020-12-03 00:45:13','2020-12-03 07:12:46',11),(263,41,66,'2020-12-03 00:45:13','2020-12-03 15:22:58',7),(264,42,66,'2020-12-03 00:45:14','2020-12-03 15:21:58',6),(265,43,66,'2020-12-03 00:45:14','2020-12-03 07:51:46',12),(266,44,66,'2020-12-03 00:45:14','2020-12-03 01:33:13',52),(267,45,66,'2020-12-03 00:45:14','2020-12-03 06:54:46',13),(268,41,67,'2020-12-03 00:45:14','2020-12-03 15:58:58',9),(269,42,67,'2020-12-03 00:45:14','2020-12-03 15:56:58',6),(270,43,67,'2020-12-03 00:45:14','2020-12-03 08:30:46',13),(271,44,67,'2020-12-03 00:45:14','2020-12-03 01:57:13',50),(272,41,68,'2020-12-03 00:45:14','2020-12-03 16:34:58',6),(273,42,68,'2020-12-03 00:45:14','2020-12-03 17:09:58',6),(274,43,68,'2020-12-03 00:45:14','2020-12-03 09:09:46',14),(275,44,68,'2020-12-03 00:45:14','2020-12-03 02:21:13',48),(276,45,68,'2020-12-03 00:45:14','2020-12-03 07:33:46',11),(277,41,69,'2020-12-03 00:45:14','2020-12-03 17:10:58',9),(278,42,69,'2020-12-03 00:45:15','2020-12-03 17:44:58',7),(279,41,70,'2020-12-03 00:45:15','2020-12-03 17:46:58',8),(280,42,70,'2020-12-03 00:45:15','2020-12-03 18:19:58',6),(281,43,70,'2020-12-03 00:45:15','2020-12-03 09:48:46',11),(282,44,70,'2020-12-03 00:45:15','2020-12-03 02:45:13',51),(283,45,70,'2020-12-03 00:45:15','2020-12-03 09:30:46',14),(284,41,71,'2020-12-03 00:45:15','2020-12-03 18:22:58',9),(285,42,71,'2020-12-03 00:45:15','2020-12-03 18:57:58',9),(286,41,72,'2020-12-03 00:45:15','2020-12-03 18:58:58',8),(287,42,72,'2020-12-03 00:45:15','2020-12-03 19:32:58',9),(288,43,72,'2020-12-03 00:45:15','2020-12-03 10:27:46',11),(289,44,72,'2020-12-03 00:45:15','2020-12-03 03:09:13',50),(290,45,72,'2020-12-03 00:45:15','2020-12-03 09:51:46',12),(291,41,73,'2020-12-03 00:45:16','2020-12-03 19:34:58',8),(292,42,73,'2020-12-03 00:45:16','2020-12-03 20:07:58',7),(293,43,73,'2020-12-03 00:45:16','2020-12-03 11:06:46',12),(294,44,73,'2020-12-03 00:45:16','2020-12-03 03:33:13',51),(295,45,73,'2020-12-03 00:45:16','2020-12-03 10:12:46',13),(296,41,74,'2020-12-03 00:45:16','2020-12-03 20:43:58',7),(297,42,74,'2020-12-03 00:45:16','2020-12-03 20:42:58',6),(298,43,74,'2020-12-03 00:45:16','2020-12-03 11:45:46',11),(299,44,74,'2020-12-03 00:45:16','2020-12-03 03:57:13',50),(300,46,75,'2020-12-03 00:45:16','2020-12-03 11:22:42',33),(301,47,75,'2020-12-03 00:45:16','2020-12-03 16:51:46',40),(302,48,75,'2020-12-03 00:45:16','2020-12-03 04:30:13',48),(303,49,75,'2020-12-03 00:45:17','2020-12-03 21:06:58',7),(304,50,75,'2020-12-03 00:45:17','2020-12-03 09:34:46',24),(305,46,76,'2020-12-03 00:45:17','2020-12-03 11:57:42',35),(306,47,76,'2020-12-03 00:45:17','2020-12-03 17:23:46',40),(307,48,76,'2020-12-03 00:45:17','2020-12-03 05:03:13',51),(308,49,76,'2020-12-03 00:45:17','2020-12-03 21:29:58',8),(309,50,76,'2020-12-03 00:45:17','2020-12-03 10:50:46',25),(310,46,77,'2020-12-03 00:45:17','2020-12-03 12:32:42',35),(311,47,77,'2020-12-03 00:45:17','2020-12-03 17:55:46',41),(312,48,77,'2020-12-03 00:45:17','2020-12-03 05:36:13',51),(313,49,77,'2020-12-03 00:45:17','2020-12-03 21:52:58',9),(314,50,77,'2020-12-03 00:45:17','2020-12-03 11:10:46',25),(315,46,78,'2020-12-03 00:45:17','2020-12-03 13:07:42',35),(316,47,78,'2020-12-03 00:45:18','2020-12-03 18:27:46',39),(317,48,78,'2020-12-03 00:45:18','2020-12-03 06:09:13',52),(318,49,78,'2020-12-03 00:45:18','2020-12-03 22:15:58',8),(319,50,78,'2020-12-03 00:45:18','2020-12-03 11:30:46',25),(320,46,79,'2020-12-03 00:45:18','2020-12-03 13:42:42',35),(321,47,79,'2020-12-03 00:45:18','2020-12-03 18:59:46',40),(322,48,79,'2020-12-03 00:45:18','2020-12-03 06:42:13',50),(323,49,79,'2020-12-03 00:45:18','2020-12-03 22:38:58',7),(324,50,79,'2020-12-03 00:45:18','2020-12-03 11:50:46',25),(325,46,80,'2020-12-03 00:45:18','2020-12-03 14:17:42',35),(326,47,80,'2020-12-03 00:45:18','2020-12-03 19:31:46',41),(327,48,80,'2020-12-03 00:45:18','2020-12-03 07:15:13',49),(328,46,81,'2020-12-03 00:45:18','2020-12-03 14:52:42',34),(329,47,81,'2020-12-03 00:45:19','2020-12-03 20:03:46',40),(330,48,81,'2020-12-03 00:45:19','2020-12-03 07:48:13',50),(331,49,81,'2020-12-03 00:45:19','2020-12-03 23:01:58',9),(332,50,81,'2020-12-03 00:45:19','2020-12-03 12:10:46',24),(333,46,82,'2020-12-03 00:45:19','2020-12-03 15:27:42',34),(334,47,82,'2020-12-03 00:45:19','2020-12-03 20:35:46',40),(335,48,82,'2020-12-03 00:45:19','2020-12-03 08:21:13',50),(336,49,82,'2020-12-03 00:45:19','2020-12-03 23:24:58',7),(337,46,83,'2020-12-03 00:45:19','2020-12-03 16:02:42',33),(338,47,83,'2020-12-03 00:45:19','2020-12-03 21:07:46',37),(339,48,83,'2020-12-03 00:45:19','2020-12-03 08:54:13',49),(340,49,83,'2020-12-03 00:45:19','2020-12-03 23:47:58',6),(341,46,84,'2020-12-03 00:45:20','2020-12-03 16:37:42',34),(342,47,84,'2020-12-03 00:45:20','2020-12-03 21:39:46',37),(343,48,84,'2020-12-03 00:45:20','2020-12-03 09:27:13',51),(344,49,84,'2020-12-03 00:45:20','2020-12-04 00:10:58',6),(345,50,84,'2020-12-03 00:45:20','2020-12-03 12:30:46',24),(346,46,85,'2020-12-03 00:45:21','2020-12-03 17:12:42',34),(347,47,85,'2020-12-03 00:45:21','2020-12-03 22:11:46',41),(348,48,85,'2020-12-03 00:45:21','2020-12-03 10:00:13',51),(349,49,85,'2020-12-03 00:45:21','2020-12-04 00:33:58',8),(350,50,85,'2020-12-03 00:45:21','2020-12-03 12:50:46',24),(351,46,86,'2020-12-03 00:45:21','2020-12-03 17:47:42',33),(352,47,86,'2020-12-03 00:45:21','2020-12-03 22:43:46',41),(353,48,86,'2020-12-03 00:45:21','2020-12-03 10:33:13',48);
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_mashine`
--

DROP TABLE IF EXISTS `type_mashine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_mashine` (
  `type_mashine_id` int NOT NULL AUTO_INCREMENT,
  `type_mashine_name` varchar(100) NOT NULL,
  PRIMARY KEY (`type_mashine_id`),
  UNIQUE KEY `type_mashine_id_UNIQUE` (`type_mashine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_mashine`
--

LOCK TABLES `type_mashine` WRITE;
/*!40000 ALTER TABLE `type_mashine` DISABLE KEYS */;
INSERT INTO `type_mashine` VALUES (1,'Ð¢Ð¸Ð¿ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ 1'),(2,'Ð¢Ð¸Ð¿ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ 2'),(3,'Ð¢Ð¸Ð¿ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ 3'),(4,'Ð¢Ð¸Ð¿ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ 4'),(5,'Ð¢Ð¸Ð¿ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ 5'),(6,'Ð¢Ð¸Ð¿ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ 6'),(7,'Ð¢Ð¸Ð¿ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ 7'),(8,'Ð¢Ð¸Ð¿ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ 8'),(9,'Ð¢Ð¸Ð¿ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ 9');
/*!40000 ALTER TABLE `type_mashine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_position`
--

DROP TABLE IF EXISTS `work_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_position` (
  `work_position_id` int NOT NULL AUTO_INCREMENT,
  `work_position_name` varchar(100) NOT NULL,
  PRIMARY KEY (`work_position_id`),
  UNIQUE KEY `work_position_id_UNIQUE` (`work_position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_position`
--

LOCK TABLES `work_position` WRITE;
/*!40000 ALTER TABLE `work_position` DISABLE KEYS */;
INSERT INTO `work_position` VALUES (1,'Ð”Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ 1'),(2,'Ð”Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ 2'),(3,'Ð”Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ 3'),(4,'Ð”Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ 4');
/*!40000 ALTER TABLE `work_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workplace`
--

DROP TABLE IF EXISTS `workplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workplace` (
  `workplace_id` int NOT NULL AUTO_INCREMENT,
  `workplace_name` varchar(100) NOT NULL,
  PRIMARY KEY (`workplace_id`),
  UNIQUE KEY `workplace_id_UNIQUE` (`workplace_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workplace`
--

LOCK TABLES `workplace` WRITE;
/*!40000 ALTER TABLE `workplace` DISABLE KEYS */;
INSERT INTO `workplace` VALUES (1,'Ð¦ÐµÑ… 1'),(2,'Ð¦ÐµÑ… 2'),(3,'Ð¦ÐµÑ… 3'),(4,'Ð¦ÐµÑ… 4'),(5,'Ð¦ÐµÑ… 5'),(6,'Ð¦ÐµÑ… 6'),(7,'Ð¦ÐµÑ… 7'),(8,'Ð¦ÐµÑ… 8'),(9,'Ð¦ÐµÑ… 9'),(10,'Ð¦ÐµÑ… 10'),(11,'Ð¦ÐµÑ… 11');
/*!40000 ALTER TABLE `workplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'plant'
--

--
-- Dumping routines for database 'plant'
--
/*!50003 DROP FUNCTION IF EXISTS `checkdetail` */;
ALTER DATABASE `plant` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkdetail`(operationId int,exampleProductId int) RETURNS int
    DETERMINISTIC
BEGIN
declare operationDetailid int;
declare exapleDetailid int;
declare result int;

set operationDetailid:=(select detail_id from operation where operation_id=operationId);
set exapleDetailid:=(select detail_id from exampleproduct where exampleProduct_id=exampleProductId);

if(operationDetailid=exapleDetailid) then set result:=1; else set result:=0; end if; 

RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `plant` CHARACTER SET cp1251 COLLATE cp1251_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `checkincumbentmashime` */;
ALTER DATABASE `plant` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkincumbentmashime`(incId int,operationID int) RETURNS int
    DETERMINISTIC
BEGIN
declare idIncombent int;
declare idMasine int;

set idMasine:=(select machine_id from operation where operation_id=operationID);
set idIncombent:=(select incumbent_id
from incumbent
inner join machine on (incumbent.workplace_id=machine.workplace_id)
where incumbent_id=incId and machine_id=idMasine);
if(idIncombent is null) then set idIncombent:=0; else set idIncombent:=1;end if;

RETURN idIncombent;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `plant` CHARACTER SET cp1251 COLLATE cp1251_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `checkinsertoperation` */;
ALTER DATABASE `plant` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkinsertoperation`(detailId INT, opertionNumber INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE checkOper INT;

SET checkOper:=(SELECT operation_number 
FROM operation
WHERE detail_id = detailId
AND operation_number=opertionNumber);	
IF(checkOper IS NULL) THEN SET checkOper:=0; END IF;
RETURN checkOper;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `plant` CHARACTER SET cp1251 COLLATE cp1251_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `GetCountOper` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetCountOper`(ExpId int) RETURNS int
    DETERMINISTIC
BEGIN
set @CountOper=(select count(o.operation_id) as count
from operation as o
inner join exampleProduct as e on o.detail_id=e.detail_id
where e.exampleProduct_id=ExpId);
RETURN  @CountOper;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetCountRealOperation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetCountRealOperation`(ExpId int) RETURNS int
    DETERMINISTIC
BEGIN

set @CountOper=(select count(p.operation_id) as CountOper
From production as p
where p.exampleProduct_id=ExpId);
RETURN @CountOper;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `brakdelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `brakdelet`(in BrakId int)
BEGIN
delete from brak where brak_id=BrakId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `brakins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `brakins`(in guiltyincumbentId int, 
					 in exampleProductId int)
BEGIN
insert into brak (guiltyincumbent_id, 
					 exapmleProduct_id)
			 values (guiltyincumbentId, 
					 exampleProductId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `brakselect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `brakselect`()
BEGIN
SELECT 
b.brak_id as BrakNumber,
b.exapmleProduct_id as ExapmleProduct,
concat(inc.incumbent_familyName," ",inc.incumbent_lastName," ",inc.incumbent_surnName) as Quiltyincumbent
FROM brak as b
inner join incumbent as inc on b.guiltyincumbent_id=inc.incumbent_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `brakupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `brakupdate`(in BrakId int,in QuiltInc int,in exProd int)
BEGIN
update brak set guiltyincumbent_id=QuiltInc,exapmleProduct_id=exProd
where brak_id=BrakId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountDetail`()
BEGIN
SELECT 
     drawing.detail_id AS NumberDetail,
     count(drawing.drawing_id) as countDrawin
From drawing
group by NumberDetail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountExmplDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountExmplDetail`()
BEGIN
with t0 as(
SELECT 
     drawing.detail_id as a,
     detail.detail_name as dn,
     count(drawing.drawing_id) as b
From drawing
inner join detail on drawing.detail_id=detail.detail_id
group by a),t2 as(
select operation.detail_id as di,
  production.exampleProduct_id as exP,
  Count(production.operation_id) as CountOper
from production
inner join operation on production.operation_id=operation.operation_id
group by production.exampleProduct_id),
t3 as(
select t2.di as detID, count(t2.exP) as cExp from t2 
where t2.CountOper=(Select count(operation.operation_id) from operation
where operation.detail_id=t2.di)
group by detID)
select t0.dn as DetailName,
t0.b as DriwingCount,
t3.cExp as CountExemplDet
from t0 
inner join t3 on t0.a=t3.detID
order by DriwingCount;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountOperationsSortDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountOperationsSortDate`()
BEGIN
select  
	    production.exampleProduct_id as NumberExamlpe,
		Count(production.operation_id) as CountOperations,
                detail.detail_name as DetailName,
		Max(production.production_endDate) as EndDate
From production
inner join operation on (production.operation_id=operation.operation_id)
inner join detail on (operation.detail_id=detail.detail_id)
group by exampleProduct_id
order by EndDate,detail.sort_order; 
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountOperationsSortName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountOperationsSortName`()
BEGIN
select  
	    production.exampleProduct_id as NumberExamlpe,
		Count(production.operation_id) as CountOperations,
                detail.detail_name as DetailName
From production
inner join operation on (production.operation_id=operation.operation_id)
inner join detail on (operation.detail_id=detail.detail_id)
group by exampleProduct_id
order by detail.sort_order;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detaildelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detaildelet`(in DetailId int)
BEGIN
delete from detail where detail_id=DetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detailins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detailins`(in detailName varchar(100), 
					 in detailAgregat varchar(100),
					 in detailImport varchar(100), 
					 in detailImage blob)
BEGIN
insert into detail (detail_name, 
					 detail_agregat,
					 detail_import, 
					 detail_image)
			 values (detailName, 
					 detailAgregat,
					 detailImport, 
					 detailImage);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detailselect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detailselect`()
BEGIN
Select * from detail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detailupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detailupdate`(in DetailID int, in detailName varchar(100),
in detailAgregat varchar(100),in detailImport varchar(100),in detailImage blob )
BEGIN
update detail set detail_name=detailName,detail_agregat=detailAgregat,
detail_import=detailImport,detail_image=detailImage
where detail_id=BrakId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drawingdelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drawingdelet`(in DrawingId int)
BEGIN
delete from drawing where drawing.drawing_id=DrawingId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drawingins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drawingins`(in detailId int,
					 in drawingKod varchar(100),
					 in chekincumbentId int, 
					 in createincumbentId int)
BEGIN
insert into drawing (detail_id,
                     drawing_kod,
					 chekincumbent_id, 
					 createincumbent_id)
			 values (
             detailId,drawingKod,
					 chekincumbentId, 
					 createincumbentId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drawingselect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drawingselect`()
BEGIN
select drw.drawing_id as NumberDrawing,
d.detail_name as DetailName,
drw.drawing_kod as DrawingKod,
Concat(ci.incumbent_familyName," ",ci.incumbent_lastName," ",ci.incumbent_surnName) as FioCheck,
Concat(cri.incumbent_familyName," ",cri.incumbent_lastName," ",cri.incumbent_surnName) as FioCreate
from drawing drw
inner join incumbent as ci on drw.chekincumbent_id=ci.incumbent_id
inner join incumbent as cri on drw.createincumbent_id=cri.incumbent_id
inner join detail as d on drw.detail_id=d.detail_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drawingupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drawingupdate`(in drawingId int,
in detailId int,
in drawingKod varchar(100) ,
in chekincumbentId int  ,
in createincumbentId int)
BEGIN
UPDATE drawing 
SET `detail_id` = detailId, 
    `drawing_kod` =drawingKod, 
	`chekincumbent_id` = chekincumbentId, 
    `createincumbent_id` = createincumbentId
WHERE (`drawing_id` = drawingId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exampleproductins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exampleproductins`(in detailId int,
									in checkedincumbentId int)
BEGIN
insert into exampleproduct (detail_id,
							checkedincumbent_id)
			values (detailId,
					checkedincumbentId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exprodselect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exprodselect`()
BEGIN
select e.exampleProduct_id as ExpleProductNumber,
d.detail_name as DatailName,
concat(inc.incumbent_familyName," ",inc.incumbent_lastName," ",inc.incumbent_surnName) as CheckIncumbent
from exampleProduct e
left join detail as d on e.detail_id=d.detail_id
left join incumbent as inc on e.checkedincumbent_id=inc.incumbent_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exproductdelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exproductdelet`(in ExProdId int)
BEGIN
delete from exampleproduct where exampleProduct_id=ExProdId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exproductupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exproductupdate`(in DetailID int,in incumbent int,in exProdId int)
BEGIN
update exampleproduct set detail_id=DetailID,checkedincumbent_id=incumbent
where exampleProduct_id=exProdId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetIBrakProc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetIBrakProc`(in datebgn datetime, in dateend datetime)
BEGIN
select o.operation_id as operNumber,
count(distinct b.brak_id)/count(p.operation_id)*100 as proc
from operation as o
left join  brak as b on o.operation_id=b.operationDefect_id
inner join production as p on p.operation_id=o.operation_id
where p.production_startDate>datebgn and p.production_endDate<dateend
group by operNumber;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetIncumbentName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetIncumbentName`()
BEGIN
select concat(inc.incumbent_familyName," ",inc.incumbent_lastName," ",inc.incumbent_surnName) as name, 
inc.incumbent_id as id
from incumbent as inc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetIncumbetnOperBrak` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetIncumbetnOperBrak`()
BEGIN
select concat(i.incumbent_familyName," ",i.incumbent_lastName," ",i.incumbent_surnName) as name,
count(p.operation_id) as countoper,
count(distinct b.brak_id) as countBrak
from incumbent as i
left join production as p on p.createincumbent_id=i.incumbent_id
left join brak as b on i.incumbent_id=b.guiltyincumbent_id
group by name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMachineName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMachineName`()
BEGIN
select w.machine_model as name,
w.machine_id as id
from machine as w;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetOperationName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetOperationName`()
BEGIN
select w.operation_name as name,
w.operation_id as id
from operation as w;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetRealProcDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetRealProcDetail`()
BEGIN

with t0 as(
select p.exampleProduct_id as ExPrNumber,
		count(p.operation_id) as CountOper
From production as p
	group by ExPrNumber),
t1 as(
select count(o.operation_id) as count,
			e.exampleProduct_id as id
from operation as o
	inner join exampleProduct as e on o.detail_id=e.detail_id
	group by id
	order by id)                    
select t1.id as ExPrNumber,
t0.CountOper/t1.count *100 as proc
from t1
left join t0 on t1.id=t0.ExPrNumber;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetRealProizvDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetRealProizvDetail`()
BEGIN
with t0 as(
select p.exampleProduct_id as ExPrNumber,
		count(p.operation_id) as CountOper
From production as p
	group by ExPrNumber),
t1 as(
select count(o.operation_id) as count,
			e.exampleProduct_id as id
from operation as o
	inner join exampleProduct as e on o.detail_id=e.detail_id
	group by id
	order by id),
t2 as (
select count(t0.CountOper) as count
from t0 
	inner join t1  on t0.ExPrNumber=t1.id
	where t0.CountOper!=t1.count
),t3 as(
select count(t0.CountOper) as count
from t0 
	inner join t1  on t0.ExPrNumber=t1.id
	where t0.CountOper=t1.count)                     
select t3.Count as GotovDetail,
		t2.Count as NotGotovDetail 
from t2,t3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTypeName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTypeName`()
BEGIN
select w.type_mashine_name as name, 
w.type_mashine_id as id
from type_mashine as w;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetWorckplaceName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetWorckplaceName`()
BEGIN
select w.workplace_name as name, 
w.workplace_id as id
from workplace as w;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HallOfFame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `HallOfFame`()
BEGIN
select 
concat(i.incumbent_familyName," ",i.incumbent_lastName," ",i.incumbent_surnName) as FIO,
count(distinct p.exampleProduct_id) as CountExProdiction
From production as p
inner join incumbent as i on i.incumbent_id=p.createincumbent_id
left join brak as b on b.guiltyincumbent_id=i.incumbent_id
where b.guiltyincumbent_id is null
group by p.createincumbent_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `incumbentins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `incumbentins`(in incumbentFamilyName varchar(100), 
							  in incumbentLastName varchar(100), 
                              in incumbentSurnName varchar(100), 
							  in incumbentBirthday datetime ,
                              in incumbentEmploymentDate datetime ,
                              in work_positionId int,
                              in workplaceId int)
BEGIN
insert into incumbent(incumbent_familyName,
					incumbent_lastName,
					incumbent_surnName, 
					incumbent_birthday,
					incumbent_employment_date,
					work_position_id,
					workplace_id)
	         values (incumbentFamilyName,
					incumbentLastName,
					incumbentSurnName, 
					incumbentBirthday,
					incumbentEmploymentDate,
					work_positionId,
					workplaceId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `incumbentselect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `incumbentselect`()
BEGIN
select
i.incumbent_id as NumberIncumbent,
i.incumbent_familyName as FamilyName,
i.incumbent_lastName as LastName,
i.incumbent_surnName as SurnName,
i.incumbent_birthday as Birthday, 
i.incumbent_employment_date as EmploymentDate, 
wp.work_position_name as PositionName, 
w.workplace_name as WorkplaceName
from incumbent as i
inner join work_position as wp on i.work_position_id=wp.work_position_id
inner join workplace as w on i.workplace_id=w.workplace_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `incumbentupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `incumbentupdate`(in incumbentId int, 
in incumbentFamilyName varchar(100), 
in incumbentLastName varchar(100),
in incumbentSurnName varchar(100),
in incumbentBirthday datetime,
in incumbentEmployment_date datetime, 
in work_positionId int,
in workplaceId int)
BEGIN
update incumbent set incumbent_familyName=incumbentFamilyName,incumbent_lastName=incumbentLastName,
incumbent_surnName=incumbentSurnName,incumbent_birthday=incumbentBirthday,work_position_id=work_positionId,
workplace_id=workplaceId,
incumbent_employment_date=incumbentEmployment_date
where incumbent_id=incumbentId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `machinedelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `machinedelet`(in DetailId int)
BEGIN
delete from machine where machine_id=DetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `machineins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `machineins`(in machineInvNumber int,
							in machineModel varchar(100),
                            in workplaceId int,
                            in type_mashineId int)
BEGIN
insert into machine (machine_invNumber,
					 machine_model,
					 workplace_id,
					 type_mashine_id)
	         values (machineInvNumber,
					 machineModel,
					 workplaceId,
					 type_mashineId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Machineselect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Machineselect`()
BEGIN
SELECT
m.machine_id as machineNumber,
m.machine_invNumber as invNumber,
m.machine_model as model,
wor.workplace_name as workplace,
tp.type_mashine_name as type
FROM machine as m
inner join workplace as wor on m.workplace_id=wor.workplace_id
inner join type_mashine as tp on m.type_mashine_id=tp.type_mashine_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `operationdelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `operationdelet`(in DetailId int)
BEGIN
delete from operation where operation_id=DetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `operationins` */;
ALTER DATABASE `plant` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `operationins`(in detailId int, 
					 in machineId int,
                     in operationName varchar(100),
                     in operationTimeWork int,
                     in operationNumber int)
BEGIN
IF(checkinsertoperation(detailId,operationNumber)=0) THEN
INSERT INTO operation (detail_id, 
					 machine_id,
                     operation_name,
                     operation_timeWork,
                     operation_number)
VALUES 	(detailId, 
		machineId,
		operationName,
		operationTimeWork,
		operationNumber);
ELSE SELECT("ÐžÐ¿ÐµÑ€Ð°Ñ†Ð¸Ñ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚");
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `plant` CHARACTER SET cp1251 COLLATE cp1251_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `OperationSelect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OperationSelect`()
BEGIN
SELECT
o.operation_id as operationNumber,
o.operation_name as name,
o.operation_timeWork as TimeWork,
o.operation_number as number,
d.detail_name as DetName,
m.machine_model as MName
FROM operation as o
inner join detail as d on o.detail_id=d.detail_id
inner join machine as m on o.machine_id=m.machine_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `operationset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `operationset`(in detailId int, 
					 in machineId int,
                     in operationName varchar(100),
                     in operationTimeWork int,
                     in operationNumber int,
                     in opId int)
BEGIN
update operation set  detail_id=detailId,
						machine_id=machineId,
						operation_name=operationName,
						operation_timeWork=operationTimeWork,
						operation_number=operationNumber
where operation_id=opId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Productiondelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Productiondelet`(in DetailId int)
BEGIN
delete from production where production_id=DetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProductionForThePeriod` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProductionForThePeriod`(in DateBgn datetime,in DateEnd datetime)
BEGIN
select d.detail_name,
count(distinct exp.exampleproduct_id) as CountExpDetail
From detail as d
inner join exampleproduct as exp on d.detail_id=exp.detail_id
inner join production as p on exp.exampleproduct_id=p.exampleproduct_id
Where GetCountRealOperation(exp.exampleproduct_id)=GetCountOper(exp.exampleproduct_id)
and production_endDate>DateBgn and production_endDate<DateEnd
Group by d.detail_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `productionins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `productionins`(in operationId INT,
                                                        in createincumbentId INT,
                                                        in productionStartDate varchar(30),
                                                        in exampleProductId INT)
BEGIN
declare idMasnie int;
declare endMashine datetime;
declare endPerson datetime;
declare startDate datetime;
declare endDate datetime;
declare prodif int;

if(checkincumbentmashime(createincumbentId,operationId)=1 
	and checkdetail(operationId,exampleProductId)=1) then

if(productionStartDate ="") then set startDate=now();
else set startDate=productionStartDate;
end if;

set idMasnie:=(select machine_id from operation where operation_id=operationId);

set endMashine:=(select Max(production_endDate) from production 
	left join  operation on operation.operation_id=production.operation_id
    where machine_id=idMasnie);
set endPerson:=(select Max(production_endDate) from production 
    where createincumbent_id=createincumbentId);

if(endPerson is null and endMashine is null) then set endDate:=DATE_ADD(startDate,
												INTERVAL (select operation_timeWork 
														  from operation
														  where operation_id=operationId)minute);                                                  
ELSE
if(endPerson is null) then set endPerson:="1500.12.12";end if;
if(endMashine is null)then set endMashine:="1500.12.12";end if;
if(endMashine>endPerson) then 
set endDate:=DATE_ADD(endMashine,INTERVAL (select operation_timeWork 
											from operation
                                            where operation_id=operationId)minute);
else  set endDate:=DATE_ADD(endPerson,INTERVAL (select operation_timeWork 
											from operation
                                            where operation_id=operationId)minute);
end if;
end if;

set prodif= (Select production_id 
				from  production 
					where operation_id=operationId and exampleProduct_id=exampleProductId);
if(prodif is null) then
INSERT INTO production (operation_id, 
							exampleProduct_id, 
                            production_startDate, 
                            production_endDate, 
                            createincumbent_id) 
			VALUES (operationId,
					exampleProductId,
					startDate,
                    endDate,
                    createincumbentId);

end if;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `productionupd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `productionupd`(in operationId INT,
in createincumbentId INT,
in productionStartDate varchar(30),
in exampleProductId INT,
in id INT)
BEGIN
declare idMasnie int;
declare endMashine datetime;
declare endPerson datetime;
declare startDate datetime;
declare endDate datetime;
declare prodif int;

if(checkincumbentmashime(createincumbentId,operationId)=1
and checkdetail(operationId,exampleProductId)=1) then

if(productionStartDate ="") then set startDate=now();
else set startDate=productionStartDate;
end if;

set idMasnie:=(select machine_id from operation where operation_id=operationId);

set endMashine:=(select Max(production_endDate) from production
left join operation on operation.operation_id=production.operation_id
where machine_id=idMasnie);
set endPerson:=(select Max(production_endDate) from production
where createincumbent_id=createincumbentId);

if(endPerson is null and endMashine is null) then set endDate:=DATE_ADD(startDate,
INTERVAL (select operation_timeWork
from operation
where operation_id=operationId)minute);
ELSE
if(endPerson is null) then set endPerson:="1500.12.12";end if;
if(endMashine is null)then set endMashine:="1500.12.12";end if;
if(endMashine>endPerson) then
set endDate:=DATE_ADD(endMashine,INTERVAL (select operation_timeWork
from operation
where operation_id=operationId)minute);
else set endDate:=DATE_ADD(endPerson,INTERVAL (select operation_timeWork
from operation
where operation_id=operationId)minute);
end if;
end if;

set prodif= (Select production_id
from production
where operation_id=operationId and exampleProduct_id=exampleProductId);
if(prodif is null) then
update production set
operation_id=operationId,
exampleProduct_id=exampleProductId,
production_startDate=startDate,
production_endDate=endDate,
createincumbent_id=createincumbentId
where production_id=id;

end if;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProductSelect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProductSelect`()
BEGIN
SELECT
p.production_id as ProductNumber,
o.operation_name as number,
ex.exampleProduct_id as exampleProductId,
p.production_startDate as StartDate,
p.production_endDate as EndDate,
concat(inc.incumbent_familyName," ",inc.incumbent_lastName," ",inc.incumbent_surnName) as CreateIncumbent
FROM production as p
inner join operation as o on p.operation_id=o.operation_id
inner join exampleproduct as ex on p.exampleProduct_id=ex.exampleProduct_id
inner join incumbent as inc on p.createincumbent_id=inc.incumbent_id
order by ProductNumber;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShameBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShameBoard`()
BEGIN
select
concat(i.incumbent_familyName," ",i.incumbent_lastName," ",i.incumbent_surnName) as FIO,
count(distinct b.exapmleProduct_id) as CountExProdiction
From production as p
inner join incumbent as i on i.incumbent_id=p.createincumbent_id
left join brak as b on b.guiltyincumbent_id=i.incumbent_id
where b.guiltyincumbent_id is not null
group by p.createincumbent_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TotalTime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TotalTime`(in DetailId int)
BEGIN
SELECT round(sum(TIME_TO_SEC(timediff(production_endDate,production_startDate))/60/60)) AS TotalTimeDay
 from production
left join exampleProduct as ex on production.exampleProduct_id=ex.exampleProduct_id
where ex.detail_id=DetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `typedelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `typedelet`(in DetailId int)
BEGIN
delete from type_mashine where type_mashine_id=DetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `typeupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `typeupdate`(in id int,in name varchar(100))
BEGIN
update type_mashine set type_mashine_name=name
where type_mashine_id=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `type_mashineins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `type_mashineins`(in type_mashineName varchar(100))
BEGIN
insert into type_mashine (type_mashine_name) value(type_mashineName);  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UnfinishedProduction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UnfinishedProduction`()
BEGIN
select d.detail_name,
count(distinct exp.exampleproduct_id) as CountExpDetail
From detail as d
inner join exampleproduct as exp on d.detail_id=exp.detail_id
Where GetCountRealOperation(exp.exampleproduct_id)<>GetCountOper(exp.exampleproduct_id)
Group by d.detail_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `workplaceins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `workplaceins`(in workplaceName varchar(100))
BEGIN
insert into workplace (workplace_name) value(workplaceName);  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `workplaceupd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `workplaceupd`(in id int,in name varchar(100))
BEGIN
update workplace set workplace_name=name
where workplace_id=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `work_postionins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `work_postionins`(in work_positionName varchar(100))
BEGIN
Insert into work_position (work_position_name) value (work_positionName);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `wpldelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `wpldelet`(in DetailId int)
BEGIN
delete from workplace where workplace_id=DetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `wposdelet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `wposdelet`(in DetailId int)
BEGIN
delete from work_position where work_position_id=DetailId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `wpupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `wpupdate`(in id int,in name varchar(100)
)
BEGIN
update work_position set work_position_name=name
where work_position_id=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `WWWVspom1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WWWVspom1`(in operId int)
BEGIN
declare machineId int;
declare WorkPlaceID int;
set machineId:=(select machine_id from operation where operation_id=operId);
set WorkPlaceID:=(select workplace_id from machine where machine_id=machineId);
select incumbent_id from incumbent where workplace_id=WorkPlaceID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `WWWVspom2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WWWVspom2`(in examoleProd int)
BEGIN
declare detIdEx int;
set detIdEx:=(select detail_id from exampleproduct where exampleProduct_id=examoleProd);
select operation_id from operation where detail_id=detIdEx;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `WWWVspom3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WWWVspom3`(in exmplProd int)
BEGIN
select createincumbent_id from production where exampleProduct_id=exmplProd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `WWW_DropNewScheme` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WWW_DropNewScheme`()
BEGIN
DELETE FROM `brak`;
ALTER TABLE `brak` AUTO_INCREMENT = 1 ;
DELETE FROM detail;
ALTER TABLE detail AUTO_INCREMENT = 1 ;
DELETE FROM `drawing`;
ALTER TABLE `drawing` AUTO_INCREMENT = 1 ;
DELETE FROM `exampleproduct`;
ALTER TABLE `exampleproduct` AUTO_INCREMENT = 1 ;
DELETE FROM `incumbent`;
ALTER TABLE `incumbent` AUTO_INCREMENT = 1 ;
DELETE FROM `machine`;
ALTER TABLE `machine` AUTO_INCREMENT = 1 ;
DELETE FROM `operation`;
ALTER TABLE `operation` AUTO_INCREMENT = 1 ;
DELETE FROM `production`;
ALTER TABLE `production` AUTO_INCREMENT = 1 ;
DELETE FROM `type_mashine`;
ALTER TABLE `type_mashine` AUTO_INCREMENT = 1 ;
DELETE FROM `work_position`;
ALTER TABLE `work_position` AUTO_INCREMENT = 1 ;
DELETE FROM `workplace`;
ALTER TABLE `workplace` AUTO_INCREMENT = 1 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10  1:19:40
