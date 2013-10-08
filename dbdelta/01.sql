CREATE TABLE `journey`.`jmdaoju` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `desc` VARCHAR(125) NULL,
  `pic` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '���߻�����';



CREATE TABLE `jmvisitevent` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT 'Primary Key: Unique user ID.',
  `message` varchar(100) NOT NULL DEFAULT '' COMMENT 'message of the invitation.',
  `time` datetime NOT NULL,
  `node` int(10) NOT NULL,
  `client` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`uid`),
  KEY `node_idx` (`node`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `jusers` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���ʼ�¼��';


CREATE TABLE `jminviteevent` (
  `id` int(10) NOT NULL,
  `senderid` int(10) unsigned NOT NULL COMMENT 'Primary Key: Unique user ID.',
  `receiverid` int(10) unsigned NOT NULL COMMENT 'Primary Key: Unique user ID.',
  `message` varchar(100) NOT NULL DEFAULT '' COMMENT 'message of the invitation.',
  `time` datetime NOT NULL,
  `hero` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `senderid_idx` (`senderid`),
  KEY `receiverid_idx` (`receiverid`),
  KEY `hero_idx` (`hero`),
  CONSTRAINT `receiverid` FOREIGN KEY (`receiverid`) REFERENCES `jusers` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `senderid` FOREIGN KEY (`senderid`) REFERENCES `jusers` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�����¼�';


CREATE TABLE `jmcharge` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL,
  `rmb` int(10) NOT NULL,
  `sjbi` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û���ֵ��¼��';


CREATE TABLE `jmtransaction` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `spent` int(10) NOT NULL,
  `daoju` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û����׼�¼��';


CREATE TABLE `jmbiusage` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `hero` int(10) NOT NULL,
  `daoju` int(10) NOT NULL,
  `count` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='˼����ʹ�ü�¼��';


CREATE TABLE `jmpriviledge` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `read` int(1) NOT NULL,
  `write` int(1) NOT NULL,
  `updater` int(10) unsigned NOT NULL,
  `hero` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û�Ȩ�ޱ�';


CREATE TABLE `jmherodaoju` (
  `id` int(10) NOT NULL,
  `hero` int(10) NOT NULL,
  `daoju` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COMMENT='����״̬��';
