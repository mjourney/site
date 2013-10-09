CREATE TABLE `jmdaoju` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `desc` varchar(125) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '道具基础表';



CREATE TABLE `jmvisitevent` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT 'Primary Key: Unique user ID.',
  `message` varchar(100) NOT NULL DEFAULT '' COMMENT 'message of the invitation.',
  `time` datetime NOT NULL,
  `node` int(10) unsigned NOT NULL,
  `client` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`uid`),
  KEY `node_idx` (`node`),
  CONSTRAINT `visit_node` FOREIGN KEY (`node`) REFERENCES `jnode` (`nid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `jusers` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores invite event.' COMMENT='访问记录表';


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores invite event.' COMMENT='邀请事件';


CREATE TABLE `jmcharge` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL,
  `rmb` int(10) NOT NULL,
  `sjbi` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户充值记录表';


CREATE TABLE `jmtransaction` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `spent` int(10) NOT NULL,
  `daoju` int(10) unsigned NOT NULL,
  `count` int(10) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trans_uid_idx` (`uid`),
  CONSTRAINT `trans_uid` FOREIGN KEY (`uid`) REFERENCES `jusers` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户交易记录表';


CREATE TABLE `jmbiusage` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `hero` int(10) unsigned NOT NULL,
  `daoju` int(10) unsigned NOT NULL,
  `count` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usg_uid_idx` (`uid`),
  KEY `usg_hero_idx` (`hero`),
  CONSTRAINT `usg_hero` FOREIGN KEY (`hero`) REFERENCES `jnode` (`nid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usg_uid` FOREIGN KEY (`uid`) REFERENCES `jusers` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='思君币使用记录表';


CREATE TABLE `jmpriviledge` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `read` int(1) NOT NULL,
  `write` int(1) NOT NULL,
  `updater` int(10) unsigned NOT NULL,
  `hero` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx_privildge` (`uid`),
  KEY `updater_pri_idx` (`updater`),
  KEY `hero_pri_idx` (`hero`),
  CONSTRAINT `hero_pri` FOREIGN KEY (`hero`) REFERENCES `jnode` (`nid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `uid_pri` FOREIGN KEY (`uid`) REFERENCES `jusers` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `updater_pri` FOREIGN KEY (`updater`) REFERENCES `jusers` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户权限表';

CREATE TABLE `jmherodaoju` (
  `id` int(10) NOT NULL,
  `hero` int(10) unsigned NOT NULL,
  `daoju` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hero_idx` (`hero`),
  KEY `daoju_idx` (`daoju`),
  CONSTRAINT `daoju` FOREIGN KEY (`daoju`) REFERENCES `jmdaoju` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hero` FOREIGN KEY (`hero`) REFERENCES `jnode` (`nid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='道具状态表';
