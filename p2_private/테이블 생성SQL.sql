
/*포지션 제안 테이블 생성*/
CREATE TABLE `P2_TBL_POSITION_PROPOSAL_M` (
                                              `pstn_prpsl_sq`	BIGINT	NOT NULL AUTO_INCREMENT,
                                              `jbp_sq`	INT	NOT NULL,
                                              `rsm_sq`	INT	NOT NULL,
                                              `prpsl_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                              `pstn_prpsl_cndtn`	INT	NOT NULL	DEFAULT 301,
                                              `insrt_mbr_sq`	INT	NOT NULL	DEFAULT 1,
                                              `insrt_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                              `updt_mbr_sq`	INT	NULL,
                                              `updt_dtm`	DATETIME	NULL,
                                              `dlt_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                              `use_yn`	CHAR(1)	NOT NULL	DEFAULT 'Y',
                                              PRIMARY KEY(pstn_prpsl_sq)
);

/*지역 코드 테이블 생성*/
CREATE TABLE `P2_TBL_AREA_CODE_S` (
                                      `area_sq`	INT	NOT NULL,
                                      `area_name`	VARCHAR(20)	NOT NULL,
                                      `prnt_area_sq`	INT	NULL,
                                      `insrt_mbr_sq`	INT	NOT NULL	DEFAULT 1,
                                      `insrt_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                      `updt_mbr_sq`	int	NULL,
                                      `updt_dtm`	DATETIME	NULL,
                                      `dlt_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                      `use_yn`	CHAR(1)	NOT NULL	DEFAULT 'Y',
                                      PRIMARY KEY(area_sq)
);

/*제안 내용 테이블 생성*/
CREATE TABLE `P2_TBL_PROPOSAL_CONTENT_S` (
                                             `jbp_sq`	INT	NOT NULL,
                                             `prpsl_cntnt`	TINYTEXT	NULL
);

/*지역-회원 관계 테이블 생성*/
CREATE TABLE `P2_TBL_AREA_MEMBER_R` (
                                        `mbr_sq`	INT	NOT NULL,
                                        `area_sq`	INT	NOT NULL
);

/*직업-회원 관계 테이블 생성*/
CREATE TABLE `P2_TBL_JOB_MEMBER_R` (
                                       `mbr_sq`	INT	NOT NULL,
                                       `job_sq`	INT	NOT NULL
);

/*일반_회원 관계 테이블 생성*/
CREATE TABLE `P2_TBL_MEMBER_M` (
                                   `mbr_sq`	INT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
                                   `scl_ctgry_cd`	INT	NULL,
                                   `gndr_ctgry_cd`	INT	NULL,
                                   `mbr_id`	VARCHAR(20)	NOT NULL,
                                   `mbr_name`	VARCHAR(20)	NOT NULL,
                                   `mbr_pswrd`	VARCHAR(60)	NOT NULL,
                                   `mbr_mp`	VARCHAR(20)	NOT NULL,
                                   `mbr_bd`	VARCHAR(20)	NOT NULL,
                                   `mbr_eml_adrs`	VARCHAR(50)	NOT NULL,
                                   `mbr_eml_rcv_yn`	CHAR(1)	NOT NULL,
                                   `mbr_prvcy_trms_yn`	CHAR(1)	NOT NULL,
                                   `pstn_prpsl_accept_yn`	CHAR(1)	NOT NULL	,
                                   `insrt_mbr_sq`	INT	NOT NULL	DEFAULT 1,
                                   `insrt_dtm`	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                   `updt_mbr_sq`	INT	NULL,
                                   `updt_dtm`	DATETIME	NULL DEFAULT CURRENT_TIMESTAMP,
                                   `dlt_chck`	CHAR(1)	NOT NULL	,
                                   `use_chck`	CHAR(1)	NOT NULL	,
                                   `del`	bit(1)	NULL,
                                   `social`	bit(1)	NULL
);

/*기업_회원 관계 테이블 생성*/
CREATE TABLE `P2_TBL_ENTERPRISE_MEMBER_M` (
                                              `entrprs_sq`	BIGINT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
                                              `scl_ctgry_cd`	INT	NULL,
                                              `gndr_ctgry_cd`	INT	NULL,
                                              `entrprs_id`	VARCHAR(20)	NOT NULL,
                                              `entrprs_pswrd`	VARCHAR(60)	NOT NULL,
                                              `entrprs_pic_name`	VARCHAR(20)	NOT NULL,
                                              `entrprs_pic_eml`	VARCHAR(50)	NOT NULL,
                                              `entrprs_pic_mp`	VARCHAR(20)	NOT NULL,
                                              `entrprs_name`	VARCHAR(20)	NULL,
                                              `entrprs_adrs`	VARCHAR(50)	NULL,
                                              `entrprs_ceo_name`	VARCHAR(20)	NULL,
                                              `cmn_rgtrrtn_nmbr`	BIGINT	NOT NULL,
                                              `entrprs_hp`	VARCHAR(50)	NULL,
                                              `cmn_rgtrtn_crtfctn_nmbr`	BIGINT	NULL,
                                              `logo_file_url`	VARCHAR(100)	NULL,
                                              `entrprs_eml_rcv_yn`	CHAR(1)	NOT NULL,
                                              `entrprs_prvcy_trms_yn`	CHAR(1)	NOT NULL,
                                              `insrt_entrprs_sq`	INT	NULL	DEFAULT 1,
                                              `insrt_entrprs_dtm`	DATETIME	NULL	DEFAULT CURRENT_TIMESTAMP,
                                              `updt_entrprs_sq`	INT	NULL,
                                              `updt_entrpts_dtm`	DATETIME	NULL	DEFAULT CURRENT_TIMESTAMP,
                                              `dlt_yn`	CHAR(1)	NULL,
                                              `use_yn`	CHAR(1)	NULL,
                                              `del`	bit(1)	NULL,
                                              `social`	bit(1)	NULL
);


CREATE TABLE `P2_TBL_RESUME_M` (
                                   `rsm_sq`	INT	NOT NULL PRIMARY KEY AUTO_INCREMENT,
                                   `mbr_sq`	INT	NOT NULL,
                                   `rsm_rprsntv_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                   `rsm_img_orgnl_fn`	varchar(50)	NULL,
                                   `rsm_img_file_url`	VARCHAR(100)	NULL,
                                   `rsm_fnl_edctn_cd`	int	NULL,
                                   `rsm_grd`	int	NULL,
                                   `rsm_es`	int	NULL,
                                   `rsm_tl`	varchar(30)	NULL,
                                   `rsm_name`	varchar(20)	NULL,
                                   `rsm_gndr_cd`	int	NULL,
                                   `rsm_bd`	varchar(15)	NULL,
                                   `rsm_mp`	varchar(20)	NULL,
                                   `rsm_adrs`	VARCHAR(50)	NULL,
                                   `rsm_eml`	VARCHAR(50)	NULL,
                                   `insrt_mbr_sq`	INT	NOT NULL	DEFAULT 1,
                                   `insrt_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                   `updt_mbr_sq`	INT	NULL,
                                   `updt_dtm`	DATETIME	NULL,
                                   `dlt_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                   `use_yn`	CHAR(1)	NOT NULL	DEFAULT 'Y'
);

CREATE TABLE `P2_TBL_SKILL_CODE_S` (
                                       `skl_cd_sq`	int	NOT NULL PRIMARY KEY AUTO_INCREMENT,
                                       `skl_lc_name`	VARCHAR(20)	NOT NULL,
                                       `skl_mc_name`	VARCHAR(20)	NOT NULL,
                                       `skl_sc_name`	VARCHAR(20)	NOT NULL,
                                       `insrt_mbr_sq`	int	NOT NULL	DEFAULT 1,
                                       `insrt_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                       `updt_mbr_sq`	int	NULL,
                                       `updt_dtm`	DATETIME	NULL,
                                       `dlt_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                       `use_yn`	CHAR(1)	NOT NULL	DEFAULT 'Y'
);

CREATE TABLE `P2_TBL_SKILL_CODE_RESUME_R` (
                                              `rsm_sq`	int	NOT NULL,
                                              `skl_cd_sq`	int	NOT NULL
);

CREATE TABLE `P2_TBL_RESUME_CAREER_S` (
                                          `cr_sq`	int	NOT NULL PRIMARY KEY AUTO_INCREMENT,
                                          `rsm_sq`	int	NOT NULL,
                                          `entrprs_name`	VARCHAR(20)	NOT NULL,
                                          `entrprs_pstn`	VARCHAR(20)	NULL,
                                          `entrprs_jac_date`	DATE	NULL,
                                          `entrprs_rsgntn_date`	DATE	NULL,
                                          `insrt_mbr_sq`	int	NOT NULL	DEFAULT 1,
                                          `insrt_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                          `updt_mbr_sq`	int	NULL,
                                          `updt_dtm`	DATETIME	NULL,
                                          `dlt_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                          `use_yn`	CHAR(1)	NOT NULL	DEFAULT 'Y'
);

CREATE TABLE `P2_TBL_RESUME_CERTIFICATE_S` (
                                               `crtfct_sq`	int	NOT NULL PRIMARY KEY AUTO_INCREMENT,
                                               `rsm_sq`	int	NOT NULL,
                                               `crtfct_name`	varchar(15)	NOT NULL,
                                               `crtfct_isr`	varchar(15)	NULL,
                                               `crtfct_ad`	DATE	NULL,
                                               `insrt_mbr_sq`	int	NOT NULL	DEFAULT 1,
                                               `insrt_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                               `updt_mbr_sq`	int	NULL,
                                               `updt_dtm`	DATETIME	NULL,
                                               `dlt_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                               `use_yn`	CHAR(1)	NOT NULL	DEFAULT 'Y'
);

CREATE TABLE `P2_TBL_RESUME_EDUCATION_S` (
                                             `edctn_sq`	int	NOT NULL PRIMARY KEY AUTO_INCREMENT,
                                             `rsm_sq`	int	NOT NULL,
                                             `schl_name`	varchar(25)	NOT NULL,
                                             `schl_cndtn_cd`	int	NOT NULL,
                                             `schl_dprtmnt`	varchar(10)	NULL,
                                             `schl_admsn_date`	DATE	NULL,
                                             `schl_grdtn_date`	DATE	NULL,
                                             `insrt_mbr_sq`	int	NOT NULL	DEFAULT 1,
                                             `insrt_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                             `updt_mbr_sq`	int	NULL,
                                             `updt_dtm`	DATETIME	NULL,
                                             `dlt_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                             `use_yn`	CHAR(1)	NOT NULL	DEFAULT 'Y'
);

CREATE TABLE `P2_TBL_RESUME_SELFINTRODUCTION_S` (
                                                    `si_sq`	int	NOT NULL PRIMARY KEY AUTO_INCREMENT,
                                                    `rsm_sq`	int	NOT NULL,
                                                    `si_tl`	varchar(30)	NOT NULL,
                                                    `si_cntnt`	varchar(1000)	NOT NULL,
                                                    `insrt_mbr_sq`	int	NOT NULL	DEFAULT 1,
                                                    `insrt_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                                    `updt_mbr_sq`	int	NULL,
                                                    `updt_dtm`	DATETIME	NULL,
                                                    `dlt_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                                    `use_yn`	CHAR(1)	NOT NULL	DEFAULT 'Y'
);

CREATE TABLE `P2_TBL_RESUME_ATTACHMENT_S` (
                                              `atchmnt_sq`	int	NOT NULL PRIMARY KEY AUTO_INCREMENT,
                                              `rsm_sq`	int	NOT NULL,
                                              `atchmnt_orgnl_fn`	varchar(50)	NOT NULL,
                                              `atchmnt_url`	VARCHAR(100)	NOT NULL,
                                              `insrt_mbr_sq`	int	NOT NULL	DEFAULT 1,
                                              `insrt_dtm`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
                                              `updt_mbr_sq`	int	NULL,
                                              `updt_dtm`	DATETIME	NULL,
                                              `dlt_yn`	CHAR(1)	NOT NULL	DEFAULT 'N',
                                              `use_yn`	CHAR(1)	NOT NULL	DEFAULT 'Y'
);


CREATE TABLE `P2_TBL_COMMON_CODE_CATEGORY_M` (
                                                 `code_ctgry_id`   INT   NOT NULL  PRIMARY KEY,
                                                 `code_ctgry_name`   VARCHAR(20)   NOT NULL,
                                                 `code_ctgry_eng_name`   VARCHAR(20)   NOT NULL,
                                                 `insrt_mbr_sq`   INT   NOT NULL,
                                                 `insrt_dtm`   DATETIME   NOT NULL   DEFAULT CURRENT_TIMESTAMP,
                                                 `updt_mbr_sq`   INT   NULL,
                                                 `updt_dtm`   DATETIME   NULL,
                                                 `dlt_yn`   CHAR(1)   NOT NULL   DEFAULT 'N'   COMMENT 'Y || N',
                                                 `use_yn`   CHAR(1)   NOT NULL   DEFAULT 'Y'   COMMENT 'Y || N'
);

CREATE TABLE `P2_TBL_COMMON_CODE_DTL_S` (
                                            `code_id`   INT   NOT NULL PRIMARY KEY,
                                            `code_ctgry_id`   INT   NOT NULL,
                                            `code_name`   VARCHAR(20)   NOT NULL,
                                            `code_eng_name`   VARCHAR(20)   NOT NULL,
                                            `insrt_mbr_sq`   INT   NOT NULL,
                                            `insrt_dtm`   DATETIME   NOT NULL   DEFAULT CURRENT_TIMESTAMP,
                                            `updt_mbr_sq`   INT   NULL,
                                            `updt_dtm`   DATETIME   NULL,
                                            `dlt_yn`   CHAR(1)   NOT NULL   DEFAULT 'N'   COMMENT 'Y || N',
                                            `use_yn`   CHAR(1)   NOT NULL   DEFAULT  'Y'  COMMENT 'Y || N'
);


-- 테이블 생성

DROP TABLE IF EXISTS `P2_TBL_JOB_POSTING_M`;
-- 공고

CREATE TABLE `P2_TBL_JOB_POSTING_M` (
                                        `jbp_sq` INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '공고_순번',
                                        `entrprs_sq` BIGINT NOT NULL COMMENT '기업_순번',
                                        `jbp_tl` VARCHAR(30) NOT NULL COMMENT '공고_제목',
                                        `jbp_cntnt` VARCHAR(500) NOT NULL COMMENT '공고_내용',
                                        `hits` INT NOT NULL COMMENT '조회수',
                                        `cr` VARCHAR(20) NOT NULL COMMENT '경력',
                                        `skl_name` VARCHAR(30) NOT NULL COMMENT '스킬명',
                                        `job_name` VARCHAR(20) NOT NULL COMMENT '직업명',
                                        `edctn` VARCHAR(10) NOT NULL COMMENT '학력',
                                        `work_area` VARCHAR(50) NOT NULL COMMENT '근무_지역',
                                        `work_form` VARCHAR(10) NOT NULL COMMENT '근무_형태',
                                        `slry` VARCHAR(10) NOT NULL COMMENT '급여',
                                        `work_hour` VARCHAR(10) NOT NULL COMMENT '근무_시간',
                                        `regstr_strt_dtm` DATETIME NOT NULL COMMENT '접수_시작_일시',
                                        `regstr_dln_dtm` DATETIME NOT NULL COMMENT '접수_마감_일시',
                                        `pic_name` VARCHAR(10) NOT NULL COMMENT '담당자_이름',
                                        `pic_mp` INT NOT NULL COMMENT '담당자_연락처',
                                        `pic_eml` VARCHAR(50) NOT NULL COMMENT '담당자_이메일',
                                        `jbp_end_yn` ENUM('Y','N') NOT NULL COMMENT '공고_종료_여부',
                                        `jbp_cndtn` VARCHAR(10) NOT NULL COMMENT '공고_상태',
                                        `insrt_mbr_sq` INT NOT NULL,
                                        `insrt_dtm` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                        `updt_mbr_sq` INT NULL,
                                        `updt_dtm` DATETIME NULL,
                                        `dlt_yn` ENUM('Y','N') NOT NULL DEFAULT 'N',
                                        `use_yn` ENUM('Y','N') NOT NULL DEFAULT 'Y'
);


-- 스크랩

DROP TABLE IF EXISTS `P2_TBL_SCRAP_S`;

CREATE TABLE `P2_TBL_SCRAP_S` (
                                  `scrap_sq` INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '스크랩_순번',
                                  `mbr_sq` INT NOT NULL COMMENT '회원_순번',
                                  `jbp_sq` INT NOT NULL COMMENT '공고_순번',
                                  `scrap_dtm` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '스크랩 일시'
);

-- 지원

DROP TABLE IF EXISTS `P2_TBL_APPLY_H`;

CREATE TABLE `P2_TBL_APPLY_H` (
                                  `apy_sq` INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '지원_순번',
                                  `rsm_sq` INT NOT NULL COMMENT '이력서_순번',
                                  `jbp_sq` INT NOT NULL COMMENT '공고_순번',
                                  `apy_dtm` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '지원_일시',
                                  `apy_cndtn` VARCHAR(10) NOT NULL COMMENT '지원_상태',
                                  `entrprs_read_dtm` DATETIME NULL COMMENT '기업_열람_일시'
);

-- 직업코드

DROP TABLE IF EXISTS `P2_TBL_JOB_CODE_S`;

CREATE TABLE `P2_TBL_JOB_CODE_S` (
                                     `job_sq` INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '직업_코드_순번',
                                     `job_lc_name` VARCHAR(20) NOT NULL COMMENT '직업대분류명',
                                     `job_mc_name` VARCHAR(20) NOT NULL COMMENT '직업중분류명',
                                     `job_sc_name` VARCHAR(20) NULL COMMENT '직업소분류명',
                                     `insrt_mbr_sq` INT NOT NULL,
                                     `insrt_dtm` DATETIME NOT NULL,
                                     `updt_mbr_sq` INT NULL,
                                     `updt_dtm` DATETIME NULL,
                                     `dlt_yn` ENUM('Y','N') NOT NULL DEFAULT 'N',
                                     `use_yn` ENUM('Y','N') NOT NULL DEFAULT 'Y'
);

-- 직업코드 데이터 삽입

INSERT INTO `P2_TBL_JOB_CODE_S` (`job_lc_name`, `job_mc_name`, `job_sc_name`, `insrt_mbr_sq`, `insrt_dtm`)
VALUES
    ('IT데이터', '개발PM', NULL, 1, NOW()),
    ('IT데이터', '게임개발', NULL, 1, NOW()),
    ('IT데이터', '데이터분석가', NULL, 1, NOW()),
    ('IT데이터', '데이터엔지니어', NULL, 1, NOW()),
    ('IT데이터', '백엔드/서버개발', NULL, 1, NOW()),
    ('IT데이터', '보안컨설팅', NULL, 1, NOW()),
    ('IT데이터', '앱개발', NULL, 1, NOW()),
    ('IT데이터', '웹개발', NULL, 1, NOW()),
    ('IT데이터', '웹마스터', NULL, 1, NOW()),
    ('IT데이터', '퍼블리셔', NULL, 1, NOW()),
    ('IT데이터', '프론트엔드', NULL, 1, NOW()),
    ('IT데이터', 'BI 엔지니어', NULL, 1, NOW()),
    ('IT데이터', '시스템엔지니어', NULL, 1, NOW()),
    ('IT데이터', 'SI개발', NULL, 1, NOW()),
    ('IT데이터', 'SQA', NULL, 1, NOW()),
    ('IT데이터', '전문분야', NULL, 1, NOW()),
    ('IT데이터', '검색엔진', NULL, 1, NOW()),
    ('IT데이터', '네트워크', NULL, 1, NOW()),
    ('IT데이터', '딥러닝', NULL, 1, NOW()),
    ('IT데이터', '머신러닝', NULL, 1, NOW());


-- 직업_공고_관계

DROP TABLE IF EXISTS `P2_TBL_JOB_POSTING_R`;

CREATE TABLE `P2_TBL_JOB_POSTING_R` (
                                        `jbp_sq` INT NOT NULL,
                                        `job_sq` INT NOT NULL,
                                        PRIMARY KEY (`jbp_sq`, `job_sq`)
);



DROP TABLE IF EXISTS `P2_TBL_AREA_POSTING_R`;

CREATE TABLE `P2_TBL_AREA_POSTING_R` (
                                         `jbp_sq` INT NOT NULL,
                                         `area_sq` INT NOT NULL,
                                         PRIMARY KEY (`jbp_sq`, `area_sq`)
);



DROP TABLE IF EXISTS `P2_TBL_SKILL_CODE_POSTING_R`;

CREATE TABLE `P2_TBL_SKILL_CODE_POSTING_R` (
                                               `jbp_sq` INT NOT NULL,
                                               `skl_cd_sq` INT NOT NULL,
                                               PRIMARY KEY (`jbp_sq`, `skl_cd_sq`)
);



