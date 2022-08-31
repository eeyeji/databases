
CREATE TABLE City_me
(
  ID          INT          NULL     COMMENT '아이디',
  District    VARCHAR(200) NULL     COMMENT '구역',
  Name        VARCHAR(200) NOT NULL COMMENT '이름',
  Population  INT          NOT NULL COMMENT '인구',
  CountryCode VARCHAR(200) NOT NULL COMMENT '나라코드'
) COMMENT '도시';

CREATE TABLE Country_me
(
  Code           VARCHAR(200) NULL     COMMENT '코드',
  Name           VARCHAR(200) NOT NULL COMMENT '이름',
  Continent      ENUM         NULL     COMMENT '대륙',
  Region         VARCHAR(200) NULL     COMMENT '지역',
  SurfaceArea    DECIMAL      NULL     COMMENT '면적',
  IndepYear      SMALLINT     NULL     COMMENT '독립년도',
  Population     INT          NOT NULL COMMENT '인구',
  LifeExpectancy DECIMAL      NULL     COMMENT '기대수명',
  GNP            DECIMAL      NULL     COMMENT '국민총생산',
  GNPOld         DECIMAL      NULL     COMMENT '과거국민총생산',
  LocalName      VARCHAR(200) NULL     COMMENT '지방',
  GovernmentForm VARCHAR(200) NULL     COMMENT '지배형태',
  HeadOfState    VARCHAR(200) NULL     COMMENT '국가원수',
  Capital        INT          NULL     COMMENT '수도',
  Code2          VARCHAR(200) NULL     COMMENT '코드2',
  PRIMARY KEY (Name, Population)
) COMMENT '나라';

CREATE TABLE CountryLanguage_me
(
  CountryCode VARCHAR(200) NOT NULL COMMENT '나라코드',
  Language    VARCHAR(200) NULL     COMMENT '언어',
  IsOfficial  ENUM         NULL    ,
  Percentage  DECIMAL      NULL     COMMENT '비율',
  PRIMARY KEY (CountryCode)
);

ALTER TABLE City_me
  ADD CONSTRAINT FK_Country_me_TO_City_me
    FOREIGN KEY (Name, Population)
    REFERENCES Country_me (Name, Population);

ALTER TABLE City_me
  ADD CONSTRAINT FK_CountryLanguage_me_TO_City_me
    FOREIGN KEY (CountryCode)
    REFERENCES CountryLanguage_me (CountryCode);
