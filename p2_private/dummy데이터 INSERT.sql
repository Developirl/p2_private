
/*회원 데이터 INSERT*/
INSERT INTO p2_tbl_member_m (
    scl_ctgry_cd,
    gndr_ctgry_cd,
    mbr_id,
    mbr_name,
    mbr_pswrd,
    mbr_mp,
    mbr_bd,
    mbr_eml_adrs,
    mbr_eml_rcv_yn,
    mbr_prvcy_trms_yn,
    pstn_prpsl_accept_yn,
    insrt_mbr_sq,
    insrt_dtm,
    updt_mbr_sq,
    updt_dtm,
    dlt_chck,
    use_chck,
    del,
    social
) VALUES (
    NULL,  -- scl_ctgry_cd (NULL 값을 원하면 이 값을 NULL로 변경)
    201,  -- gndr_ctgry_cd (NULL 값을 원하면 이 값을 NULL로 변경)
    'user1',  -- mbr_id
    '홍길동',  -- mbr_name
    'user1',  -- mbr_pswrd
    '010-1234-5678',  -- mbr_mp
    '1990-01-01',  -- mbr_bd
    'john.doe@example.com',  -- mbr_eml_adrs
    'Y',  -- mbr_eml_rcv_yn
    'Y',  -- mbr_prvcy_trms_yn
    'Y',  -- pstn_prpsl_accept_yn
    1,  -- insrt_mbr_sq
    CURRENT_TIMESTAMP,  -- insrt_dtm
    NULL,  -- updt_mbr_sq
    CURRENT_TIMESTAMP,  -- updt_dtm
    'N',  -- dlt_chck
    'Y',  -- use_chck
    b'0',  -- del
    b'1'  -- social
);

/*공고 INSERT*/
INSERT INTO p2_tbl_job_posting_m (`entrprs_sq`, `jbp_tl`, `jbp_cntnt`, `hits`, `cr`, `skl_name`, `job_name`, `edctn`, `work_area`, `work_form`, `slry`, `work_hour`,
`regstr_strt_dtm`, `regstr_dln_dtm`, `pic_name`, `pic_mp`, `pic_eml`, `jbp_end_yn`, `jbp_cndtn`, `insrt_mbr_sq`) 
VALUES (1, '공고입니다', '내용입니다', 1, '경력무관', 'JAVA', '백엔드개발자', '4년제 이상', '서울 전체', '정규직', '2800', '09:00', NOW(), NOW(),
'담당자', '01050506060', 'qls424366@gmail.com', 'Y', '진행중', 1);

/*기업 INSERT*/
INSERT INTO `P2_TBL_ENTERPRISE_MEMBER_M` (
    `scl_ctgry_cd`,
    `gndr_ctgry_cd`,
    `entrprs_id`,
    `entrprs_pswrd`,
    `entrprs_pic_name`,
    `entrprs_pic_eml`,
    `entrprs_pic_mp`,
    `entrprs_name`,
    `entrprs_adrs`,
    `entrprs_ceo_name`,
    `cmn_rgtrrtn_nmbr`,
    `entrprs_hp`,
    `cmn_rgtrtn_crtfctn_nmbr`,
    `logo_file_url`,
    `entrprs_eml_rcv_yn`,
    `entrprs_prvcy_trms_yn`,
    `insrt_entrprs_sq`,
    `insrt_entrprs_dtm`,
    `updt_entrprs_sq`,
    `updt_entrpts_dtm`,
    `dlt_yn`,
    `use_yn`,
    `del`,
    `social`
) VALUES (
    1, -- scl_ctgry_cd
    1, -- gndr_ctgry_cd
    'company123', -- entrprs_id
    'password123', -- entrprs_pswrd
    'John Doe', -- entrprs_pic_name
    'johndoe@example.com', -- entrprs_pic_eml
    '010-1234-5678', -- entrprs_pic_mp
    'Example Company', -- entrprs_name
    '123 Example Street', -- entrprs_adrs
    'Jane Doe', -- entrprs_ceo_name
    1234567890, -- cmn_rgtrrtn_nmbr
    '02-1234-5678', -- entrprs_hp
    9876543210, -- cmn_rgtrrtn_crtfctn_nmbr
    'http://example.com/logo.png', -- logo_file_url
    'Y', -- entrprs_eml_rcv_yn
    'Y', -- entrprs_prvcy_trms_yn
    1, -- insrt_entrprs_sq
    NOW(), -- insrt_entrprs_dtm
    2, -- updt_entrprs_sq
    NOW(), -- updt_entrpts_dtm
    'N', -- dlt_yn
    'Y', -- use_yn
    b'0', -- del
    b'0' -- social
);

/*이력서 더미데이터 삽입*/
INSERT INTO `P2_TBL_RESUME_M` (`mbr_sq`, `rsm_rprsntv_yn`, `rsm_img_orgnl_fn`, `rsm_img_file_url`, `rsm_fnl_edctn_cd`, `rsm_grd`, `rsm_es`, `rsm_tl`, `rsm_name`, `rsm_gndr_cd`, `rsm_bd`, `rsm_mp`, `rsm_adrs`, `rsm_eml`, `insrt_mbr_sq`, `updt_mbr_sq`, `updt_dtm`, `dlt_yn`, `use_yn`)
VALUES
(1, 'Y', 'img1.png', 'http://example.com/img1.png', 1, 90, 80, 'Resume Title 1', 'John Doe', 1, '1990-01-01', '010-1234-5678', '123 Main St', 'john.doe@example.com', 1, NULL, NULL, 'N', 'Y'),
(1, 'N', 'img2.png', 'http://example.com/img2.png', 2, 85, 75, 'Resume Title 2', 'Jane Smith', 2, '1992-02-02', '010-2345-6789', '456 Elm St', 'jane.smith@example.com', 1, NULL, NULL, 'N', 'Y'),
(1, 'N', 'img3.png', 'http://example.com/img3.png', 3, 95, 88, 'Resume Title 3', 'Alice Johnson', 1, '1988-03-03', '010-3456-7890', '789 Oak St', 'alice.johnson@example.com', 1, NULL, NULL, 'N', 'Y');


/*지원 테이블 데이터 삽입*/
INSERT INTO `P2_TBL_APPLY_H` (`rsm_sq`, `jbp_sq`, `apy_dtm`, `apy_cndtn`, `entrprs_read_dtm`)
VALUES
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL),
(1, 1, CURRENT_TIMESTAMP, LPAD(FLOOR(401 + (RAND() * 8)), 3, '0'), NULL);

/*스크랩 테이블에 데이터 삽입*/
INSERT INTO `P2_TBL_SCRAP_S` (`mbr_sq`, `jbp_sq`, `scrap_dtm`)
VALUES (1, 1, CURRENT_TIMESTAMP);

/*포지션 제안 데이터 삽입*/
INSERT INTO `P2_TBL_POSITION_PROPOSAL_M` (`jbp_sq`, `rsm_sq`, `prpsl_dtm`, `pstn_prpsl_cndtn`, `insrt_mbr_sq`, `insrt_dtm`, `updt_mbr_sq`, `updt_dtm`, `dlt_yn`, `use_yn`)
VALUES (1, 1, CURRENT_TIMESTAMP, 301, 1, CURRENT_TIMESTAMP, NULL, NULL, 'N', 'Y');

