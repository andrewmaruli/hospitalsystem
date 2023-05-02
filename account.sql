-- Insert this to your database

-- Insert System Roles
INSERT INTO `roles` (`role_id`, `role_name`, `created_at`, `updated_at`) VALUES
('R001', 'Administrator', '2023-04-19 07:48:09', '2023-04-19 07:48:09'),
('R002', 'Receptionist', '2023-04-19 00:50:12', '2023-04-19 00:50:12'),
('R003', 'Physician', '2023-04-19 00:50:18', '2023-04-19 00:50:18'),
('R004', 'Pharmacy', '2023-04-19 00:50:21', '2023-04-19 00:50:21'),
('R005', 'Finance', '2023-04-19 00:50:23', '2023-04-19 00:50:23');

--Insert Clinics Information
INSERT INTO `polyclinic` (`poly_id`, `poly_name`, `created_at`, `updated_at`) VALUES
('PL-001', 'System User', '2023-04-19 07:48:30', '2023-04-19 07:48:39'),
('PL-002', 'Poly Cardiologist', '2023-04-19 00:50:34', '2023-04-19 00:50:34'),
('PL-003', 'Poly Dentist', '2023-04-19 00:50:37', '2023-04-19 00:50:37'),
('PL-004', 'Poly Neurologist', '2023-04-19 00:50:40', '2023-04-19 00:50:40'),
('PL-005', 'Hellosss', '2023-04-28 04:11:47', '2023-04-28 04:16:10');

--Insert Users Information
INSERT INTO `users` (`userid`, `email`, `username`, `email_verified_at`, `password`, `level`, `user_pp`, `user_fname`, `user_mname`, `user_lname`, `user_gender`, `user_room`, `polyid`, `remember_token`, `created_at`, `updated_at`) VALUES
(20230001, 'nautjagar@gmail.com', 'admin', NULL, '$2y$10$r7r5ooX1mdoO46A4mOSVaeRRlzsq9JyaPcmdPLYnIDVYe.7lWOKCy', 'R001', '1682661390.jpg', 'Andrew', 'Maruli', 'Marpaung', 'Male', 'Rose 101', 'PL-001', NULL, '2023-04-19 00:49:08', '2023-04-27 22:56:30'),
(20230002, 'receptionist@bah.com', 'receptionist', NULL, '$2y$10$8A9ylQ5KGrPK3uRiQS5vku0o0LTQnA3aNpPBkErk4d.QkRMRFFKNu', 'R002', NULL, 'Larasati', 'Anggun', 'Pramesti', 'Female', 'Rose 101', 'PL-001', NULL, '2023-03-19 00:51:35', '2023-04-27 05:54:26'),
(20230003, 'physician@bah.com', 'physician', NULL, '$2y$10$MMgxU.jLw5OODW78xmgAfO8rcCmaZGakvw5F54ABA2cK7jPvgmZIK', 'R003', NULL, 'Anies', 'Baswedan', 'Smith', 'Male', 'Rose 103', 'PL-003', NULL, '2023-04-19 00:52:39', '2023-04-19 00:52:39'),
(20230004, 'finance@bah.com', 'finance', NULL, '$2y$10$2HJ.FyQfFM.53NyMBoa0nOEXXcGQJKP3jTbkIX1FMGojC6UOJePYK', 'R005', NULL, 'Yasmin', 'Su', 'Napper', 'Female', 'Rose 105', 'PL-001', NULL, '2023-04-19 00:54:36', '2023-04-19 00:54:36'),
(20230005, 'pharmacy@bah.com', 'pharmacy', NULL, '$2y$10$51Rm4gSvzgswtAWlEwADjeZClnTOx/ceoJoJyZ0kV/BsLLt.cGYEO', 'R004', NULL, 'Puan', 'Maharani', 'Putri', 'Female', 'Rose 104', 'PL-001', NULL, '2023-04-19 01:12:52', '2023-04-19 01:12:52');



-- Additional

--Insert the available treatment list of the hospital (This optional, you can add the treatment list in the finance role dashboard)
INSERT INTO `treatmentlist` (`TREATMENT_ID`, `TREATMENT_NAME`, `TREATMENT_PRICE`, `created_at`, `updated_at`) VALUES
('TR_0001', 'Doctor Consultation', 150000.00, NULL, NULL),
('TR_0002', 'Medical Checkup', 200000.00, NULL, NULL),
('TR_0003', 'Doctor Service', 70000.00, NULL, NULL),
('TR_0004', 'Tooth Root Canal Preparation', 100000.00, NULL, NULL),
('TR_0005', 'Temporary Fillings', 225000.00, NULL, NULL),
('TR_0006', 'Tooth Extraction', 75000.00, NULL, NULL),
('TR_0007', 'Tooth Whitening', 500000.00, NULL, NULL),
('TR_0008', 'Blood Check', 150000.00, NULL, NULL),
('TR_0009', 'Simple Wound Care', 50000.00, NULL, NULL),
('TR_0010', 'Serious Wound Care', 75000.00, NULL, NULL),
('TR_0011', 'Stitches on The Wound', 50000.00, NULL, NULL),
('TR_0012', 'Sterile Needle Service', 50000.00, NULL, NULL),
('TR_0013', 'Ear Cleaning', 150000.00, NULL, NULL),
('TR_0014', 'Throat Scoping', 100000.00, NULL, NULL),
('TR_0015', 'Nasal Scoping', 150000.00, NULL, NULL),
('TR_0016', 'Comprehensive Hearing Test', 200000.00, NULL, NULL),
('TR_0017', 'Vestibular Evaluation', 75000.00, NULL, NULL),
('TR_0018', 'Nasopharyngoscopy', 150000.00, NULL, NULL),
('TR_0019', 'Eye Examination Children', 250000.00, NULL, NULL),
('TR_0020', 'Doctor Consultation', 150000.00, NULL, NULL),
('TR_0021', 'Medical Checkup', 200000.00, NULL, NULL),
('TR_0022', 'Doctor Service', 70000.00, NULL, NULL),
('TR_0023', 'Tooth Root Canal Preparation', 100000.00, NULL, NULL);

--Insert the Invoice Item. (This optional, you can add the treatment list in the finance role dashboard)
INSERT INTO `item` (`ITEM_ID`, `ITEM_NAME`, `ITEM_PRICE`, `created_at`, `updated_at`) VALUES
('ITM-00001', 'New Patient Fee', 75000.00, NULL, NULL),
('ITM-00002', 'Administration Fee', 15000.00, NULL, NULL);

--Insert the medicine information (This optional, Pharmacy role can manage the inventory of medicine)
INSERT INTO `medicine` (`MEDICINE_ID`, `MEDICINE_NAME`, `MED_PACKTYPE`, `QTY_PERPACK`, `QTY_UNIT`, `MED_PRICE`, `MED_INSTOCK`, `created_at`, `updated_at`, `is_active`) VALUES
('MDC-00001', 'Aminofilin tablet 150 mg', 'Box', 10, 'Tablet', 12800.00, 499, NULL, '2023-04-28 00:17:53', 1),
('MDC-00002', 'Albendazol tablet 400 mg', 'Box', 6, 'Tablet', 16470.00, 498, NULL, '2023-04-19 08:18:27', 1),
('MDC-00003', 'Alopurinol tablet 100 mg', 'Box', 10, 'Tablet', 17820.00, 1, NULL, '2023-04-24 20:38:25', 1),
('MDC-00004', 'Alopurinol tablet 300 mg', 'Box', 10, 'Tablet', 9923.00, 500, NULL, '2023-04-21 01:29:51', 0),
('MDC-00005', 'Alprazolam tablet 0,25 mg', 'Box', 10, 'Tablet', 65340.00, 15, NULL, '2023-04-24 08:19:31', 1),
('MDC-00006', 'Alprazolam tablet 0,5 mg', 'Box', 10, 'Tablet', 78975.00, 500, NULL, NULL, 1),
('MDC-00007', 'Alprazolam tablet 1 mg', 'Box', 10, 'Tablet', 121500.00, 1, NULL, '2023-04-24 07:47:41', 1),
('MDC-00008', 'Ambroxol syrup 15 mg/ml', 'Bottle', 60, 'Milliliter', 26730.00, 1, NULL, '2023-04-28 00:17:58', 1),
('MDC-00009', 'Ambroxol tablet 30 mg', 'Box', 10, 'Tablet', 16884.00, 499, NULL, '2023-04-27 22:20:18', 1),
('MDC-00010', 'Aminofilin tablet 150 mg', 'Bottle', 15, 'Tablet', 58757.00, 0, NULL, '2023-04-24 20:38:47', 1),
('MDC-00011', 'Amoksisilin syrup 250 mg/ml', 'Bottle', 60, 'Milliliter', 39366.00, 499, NULL, '2023-04-27 23:08:01', 1),
('MDC-00012', 'Amlodipin tablet 10 mg', 'Box', 10, 'Tablet', 68580.00, 500, NULL, NULL, 1),
('MDC-00013', 'Benzatin Benzil Penisilin', 'Bottle', 30, 'Milliliter', 110700.00, 500, NULL, NULL, 1),
('MDC-00014', 'Besi (II) sulfat 7 H2O tablet salut 300 mg', 'Bottle', 15, 'Tablet', 35413.00, 500, NULL, NULL, 1),
('MDC-00015', 'Betahistin Mesilat tablet 6 mg', 'Box', 10, 'Tablet', 37422.00, 500, NULL, NULL, 1),
('MDC-00016', 'Betametason krim 0,1 % (sebagai Valerat)', 'Tube', 5, 'Gram', 2735.00, 499, NULL, '2023-04-27 22:01:27', 1),
('MDC-00017', 'Bisoprolol tablet 5 mg', 'Box', 10, 'Tablet', 31343.00, 497, NULL, '2023-04-24 21:55:02', 1),
('MDC-00018', 'Cetirizin sirup 5 mg/5 ml', 'Bottle', 60, 'Milliliter', 14108.00, 500, NULL, NULL, 1),
('MDC-00019', 'Cetirizine tablet 10 mg', 'Box', 10, 'Tablet', 13365.00, 499, NULL, '2023-04-24 05:37:19', 1),
('MDC-00020', 'Cisapride tablet 5 mg', 'Box', 10, 'Tablet', 105806.00, 500, NULL, NULL, 1),
('MDC-00021', 'Clobazam tablet 10 mg', 'Box', 10, 'Tablet', 128250.00, 500, NULL, NULL, 1),
('MDC-00022', 'Clobetasol krim 0,05 %', 'Tube', 10, 'Gram', 15800.00, 500, NULL, NULL, 1),
('MDC-00023', 'Dapson tablet 100 mg', 'Box', 10, 'Tablet', 5940.00, 500, NULL, NULL, 1),
('MDC-00024', 'Deksametason tablet 0,5 mg', 'Box', 10, 'Tablet', 11745.00, 500, NULL, NULL, 1),
('MDC-00025', 'Deksametason tablet 0,5 mg', 'Box', 10, 'Tablet', 75735.00, 500, NULL, NULL, 1),
('MDC-00026', 'Dietilkarbamazin Sitrat tablet 100 mg', 'Box', 10, 'Tablet', 13163.00, 500, NULL, NULL, 1),
('MDC-00027', 'Doksisiklin kapsul 100 mg', 'Box', 10, 'Capsule', 34155.00, 500, NULL, NULL, 1),
('MDC-00028', 'Diltiazem HCl tablet 30 mg', 'Box', 10, 'Tablet', 20470.00, 500, NULL, NULL, 1),
('MDC-00029', 'Digoksin tablet 0,25 mg', 'Box', 10, 'Tablet', 19305.00, 500, NULL, NULL, 1);