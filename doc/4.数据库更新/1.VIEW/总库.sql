CREATE TABLE `tb_guessevery_person` (
  `GUESS_PERSON_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PERSON_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PERSON_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GUESSEVERY_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `INTO_GOLD_NUM` int(11) NOT NULL COMMENT 'Ͷ��������',
  `CHOOSE_OPTION` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�û�ѡ���ѡ��,��ABCDE�Զ��Ÿ���',
  `CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`GUESS_PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `tb_guesseveryday` (
  `GUESSEVERYDAY_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ISSUE` int(11) NOT NULL COMMENT '����:�� ��20140708��',
  `QUESTION` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ANSWER_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`GUESSEVERYDAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tb_person` (
  `PERSON_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PERSON_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '��¼��',
  `PERSON_NICKNAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '�ǳ�',
  `PERSON_REALNAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '��ʵ����',
  `PERSON_PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GOLD` int(11) NOT NULL DEFAULT '0' COMMENT '���н��',
  `IMG_HEAD_PATH` varchar(280) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LAST_LOGIN_TIME` datetime DEFAULT NULL,
  `SEX` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HOME_ADDRESS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ts_manager` (
  `MANAGER_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MANAGER_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MANAGER_PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ROLE` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '����ԱȨ��',
  PRIMARY KEY (`MANAGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ts_menu` (
  `MENU_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_URL` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENT_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ts_role` (
  `ROLE_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MANAGER_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_MENU_ID` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '��˵�ID���Զ��Ÿ���',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
