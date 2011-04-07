-- MySQL dump 8.22
--
-- Host: localhost    Database: recipes
---------------------------------------------------------
-- Server version	3.23.53

--
-- Table structure for table 'recipe_statuses'
--

CREATE TABLE recipe_statuses (
  status char(1) NOT NULL default '',
  description varchar(50) NOT NULL default '',
  PRIMARY KEY  (status)
) TYPE=MyISAM;

--
-- Table structure for table 'recipes'
--

CREATE TABLE recipes (
  id int(5) NOT NULL auto_increment,
  name varchar(255) default NULL,
  recipe blob,
  rating tinyint(2) default NULL,
  cat1 int(5) default '0',
  cat2 int(5) default '0',
  date date default NULL,
  status char(1) NOT NULL default 'A',
  PRIMARY KEY  (id),
  KEY catagory (cat1,cat2),
  KEY rating (rating),
  KEY name (name)
) TYPE=MyISAM;

--
-- Table structure for table 'recipes_cat1'
--

CREATE TABLE recipes_cat1 (
  cat1 int(5) NOT NULL auto_increment,
  title varchar(50) default NULL,
  ranking tinyint(3) default NULL,
  PRIMARY KEY  (cat1),
  KEY ranking (ranking)
) TYPE=MyISAM;

--
-- Table structure for table 'recipes_cat2'
--

CREATE TABLE recipes_cat2 (
  cat2 int(5) NOT NULL auto_increment,
  title varchar(50) default NULL,
  ranking tinyint(3) default NULL,
  cat1 int(5) default NULL,
  PRIMARY KEY  (cat2),
  KEY cat1 (cat1),
  KEY ranking (ranking)
) TYPE=MyISAM;

--
-- Table structure for table 'recipes_comments'
--

CREATE TABLE recipes_comments (
  id int(5) default NULL,
  comment_id int(5) NOT NULL auto_increment,
  comment varchar(255) default NULL,
  name varchar(50) default NULL,
  date timestamp(8) NOT NULL,
  PRIMARY KEY  (comment_id),
  KEY id (id),
  KEY name (name)
) TYPE=MyISAM;

--
-- Table structure for table 'recipes_keywords'
--

CREATE TABLE recipes_keywords (
  id int(5) default NULL,
  keyword_id int(5) NOT NULL auto_increment,
  keyword varchar(50) default NULL,
  PRIMARY KEY  (keyword_id),
  KEY keyword (keyword),
  KEY id (id)
) TYPE=MyISAM;

--
-- Table structure for table 'recipes_ratings'
--

CREATE TABLE recipes_ratings (
  id int(5) NOT NULL default '0',
  rating_id int(5) NOT NULL auto_increment,
  rating tinyint(2) NOT NULL default '0',
  ip varchar(20) default NULL,
  PRIMARY KEY  (rating_id),
  KEY id (id),
  KEY ip (ip)
) TYPE=MyISAM;

