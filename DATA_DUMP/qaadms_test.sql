-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2024 at 03:04 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qaadms_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_users`
--

CREATE TABLE `all_users` (
  `user_id` int(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `office` varchar(200) NOT NULL,
  `e_manual_viewing` varchar(200) NOT NULL,
  `email_add` varchar(200) NOT NULL,
  `e_signature` varchar(200) DEFAULT NULL,
  `type` enum('Super Admin','Administrator','Requester','Department Head','Director for QAIE','QAIE Management Officer','Document Controller','President') NOT NULL,
  `my_img` varchar(200) DEFAULT NULL,
  `validation_key` varchar(200) DEFAULT NULL,
  `vkey` varchar(200) NOT NULL,
  `verification_status` varchar(200) NOT NULL,
  `creation_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `all_users`
--

INSERT INTO `all_users` (`user_id`, `firstname`, `lastname`, `username`, `password`, `department`, `office`, `e_manual_viewing`, `email_add`, `e_signature`, `type`, `my_img`, `validation_key`, `vkey`, `verification_status`, `creation_date`) VALUES
(1, 'New', 'Test', 'testing1234', '7d886c03ab039c0b35f23ab6e5189edd', 'ASF', 'CESO', '', 'david.ichi4+1@gmail.com', NULL, 'Requester', 'a96a15785e5a56e0c084326b8a6b6969.jpg', NULL, '', 'UNVERIFIED', '2024-10-05 11:28:45.470738'),
(108, 'Elon', 'Musk', 'superadmin', '1a1dc91c907325c69271ddf0c944bc72', 'No Department', 'No Office', '', 'david.ichi4+1@gmail.com', NULL, 'Super Admin', '5701d51baafb4b5b62deee43df9e1358.PNG', '0', '635513364266ae3e0c871fdb3225a869', 'VERIFIED', '2024-05-31 21:47:40.840281'),
(212, 'Evan', 'Spiegel', 'admin2', '174a8e6aac21087124128111c36827d0', 'No Department', 'No Office', '', 'admin2@gmail.com', NULL, 'Administrator', '25b7fdd0075767dbabb55deb7d25d1f1.PNG', NULL, '91dbeb2ca37a2fc7fba12846f4a85927', 'VERIFIED', '2024-05-31 21:48:45.047057'),
(218, 'Steve', 'Rogers', 'requester', '1a1dc91c907325c69271ddf0c944bc72', 'Academics', 'SBCS', 'ENABLED', 'requester@gmail.com', '8be627bc543fd91be4d7f26ee86f5ee9.jpg', 'Requester', 'd7a834a8abad3a83ecc2b458aabe6b15.PNG', NULL, 'fab72a8af49b889f9e02b7cf1d58b234', 'VERIFIED', '2024-05-31 21:49:49.381224'),
(220, 'Donald', 'Trump', 'president', '1a1dc91c907325c69271ddf0c944bc72', 'Academics', 'SBCS', 'ENABLED', 'president@gmail.com', NULL, 'President', '121df3103833eec63cf18d5f393fe4a2.PNG', NULL, 'e6c8f28627b4a810dec6687369e74043', 'VERIFIED', '2024-05-31 22:03:01.829681'),
(221, 'James', 'Cameron', 'directorforqaie', '1a1dc91c907325c69271ddf0c944bc72', 'Academics', 'SBCS', 'ENABLED', 'directorforqaie@gmail.com', '2379e15867f17cc612c1b52a733f2de9.PNG', 'Director for QAIE', 'e4213749fc05120692f7133aef5aac35.PNG', NULL, 'fb1dec807baffe24f7d3faed0c1fce94', 'VERIFIED', '2024-05-31 21:55:27.248505'),
(222, 'Peter', 'Parker', 'qaiemgmtofficer', '1a1dc91c907325c69271ddf0c944bc72', 'Academics', 'SBCS', 'ENABLED', 'qaiemgmtofficer@gmail.com', NULL, 'QAIE Management Officer', 'a2867b7c8af46596fec5e7c145943dfc.PNG', NULL, 'f288539cca98a8484851c753e2b27409', 'VERIFIED', '2024-05-31 21:57:40.598509'),
(223, 'Simon', 'Cowell', 'departmenthead', '1a1dc91c907325c69271ddf0c944bc72', 'Academics', 'SBCS', 'ENABLED', 'departmenthead@gmail.com', 'bb132b9eef46797a4af8a7d875c29295.PNG', 'Department Head', '26be45b563a87652fbcb78769c5610c8.PNG', NULL, '7539b9f20395c656aeaf694f6d8566b0', 'VERIFIED', '2024-05-31 21:52:25.381402'),
(224, 'Harry', 'Potter', 'documentcontroller', '1a1dc91c907325c69271ddf0c944bc72', 'Academics', 'SBCS', 'ENABLED', 'documentcontroller@gmail.com', NULL, 'Document Controller', 'c558ce22fc359553e59dc747130ffb03.PNG', NULL, '8ec96e046051e90a23292fe75b40223d', 'VERIFIED', '2024-05-31 21:59:51.810216'),
(238, 'newuser', 'new', 'newuser', '1a1dc91c907325c69271ddf0c944bc72', 'Academics', 'BEd', '', 'david.ichi4+5@gmail.com', NULL, 'Requester', '6ba1085b788407963fe0e89c699a7396.jpg', NULL, '8855c769fc89ec5b808d8d0a37b69783', 'VERIFIED', '2024-10-05 17:13:17.782451'),
(239, 'rere', 'rere', 'rerererere', 'd04b7649ce41adf88b3c9d8411a11005', 'Academics', 'BEd', '', 'david.ichi4+5@gmail.com', NULL, 'Requester', NULL, NULL, '0bcb186a27eefd7c4a59902806aadc43', 'VERIFIED', '2024-10-06 03:31:17.883955'),
(240, 'gacha', 'fache', 'gacheasdasd', '1a1dc91c907325c69271ddf0c944bc72', 'ASF', 'CESO', '', 'david.ichi4+1@gmail.com', NULL, 'Requester', NULL, NULL, '5b993b17b661f067e8617fb63c5a41cc', 'UNVERIFIED', '2024-10-06 03:35:12.808414'),
(241, 'asda', 'asd', 'asdasdasd', 'a8f5f167f44f4964e6c998dee827110c', 'Academics', 'BEd', '', 'david.ichi4+5@gmail.com', NULL, 'Requester', NULL, NULL, '2de40d55c3766e2f4e74f981bac1696f', 'UNVERIFIED', '2024-10-06 03:39:07.369864'),
(242, 'asdas', 'as', 'asaaaaaaaaaaaaaaaaa', 'f970e2767d0cfe75876ea857f92e319b', 'Academics', 'BEd', '', 'david.ichi4+2@gmail.com', NULL, 'Requester', NULL, NULL, '0af809a3b35f5f9c8123ae989eb733ad', 'UNVERIFIED', '2024-10-06 03:39:49.416842'),
(243, 'asdas', 'as', 'asaaaaaaaaaaaaaaaaa', 'f970e2767d0cfe75876ea857f92e319b', 'Academics', 'BEd', '', 'david.ichi4+2@gmail.com', NULL, 'Requester', NULL, NULL, '447a4879cb7bac5a40bb496aa5c51779', 'UNVERIFIED', '2024-10-06 03:39:54.746020'),
(244, 'aaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaaaa', '88e42e96cc71151b6e1938a1699b0a27', 'Administrative', 'BAO', '', 'david.ichi4+5@gmail.com', NULL, 'Requester', NULL, NULL, '5388d6958d5d3ad7e75951f1c3576123', 'UNVERIFIED', '2024-10-06 03:41:12.630111'),
(245, 'asdasd', 'asdasdasdasd', 'asdasdasd', 'a3dcb4d229de6fde0db5686dee47145d', 'Academics', 'BEd', '', 'david.ichi4+2@gmail.com', NULL, 'Requester', NULL, NULL, '7c9ff9bd5d40ee53dca3ebf99fba2234', 'UNVERIFIED', '2024-10-06 03:42:21.266371'),
(246, 'YOHOOO', 'yoasdasd', 'testtest', '1a1dc91c907325c69271ddf0c944bc72', 'ASF', 'Linkages', '', 'david.ichi4+2@gmail.com', NULL, 'Requester', NULL, NULL, 'f4d5202fcaa0b00d580afddb7188c5c0', 'UNVERIFIED', '2024-10-20 08:47:37.034223'),
(247, 'YOHOOO', 'yoasdasd', 'testtestasdasd', '1a1dc91c907325c69271ddf0c944bc72', 'ASF', 'Linkages', '', 'david.ichi4+2@gmail.com', NULL, 'Requester', NULL, NULL, '370ff255e20c4bc2d5d52fddd7875df9', 'UNVERIFIED', '2024-10-20 08:48:13.504686'),
(248, 'Howard', 'Koch', 'Erick.Wisoky40', '8c1588e2a4c1078484093031cd70e99b', 'ASF', 'CESO', '', 'your.email+fakedata61294@gmail.com', NULL, 'QAIE Management Officer', NULL, NULL, 'c25b656b8c9a693ded22643596eacd71', 'UNVERIFIED', '2024-10-20 12:06:37.398430');

-- --------------------------------------------------------

--
-- Table structure for table `auditee_afsform`
--

CREATE TABLE `auditee_afsform` (
  `AFSForm_ID` int(100) NOT NULL,
  `Name_Of_Auditor` varchar(100) NOT NULL,
  `Name_Of_Auditee` varchar(100) NOT NULL,
  `Date_Accomplished` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Office` varchar(100) NOT NULL,
  `Question_1A` varchar(100) NOT NULL,
  `Remarks_1A` varchar(100) NOT NULL,
  `Question_2A` varchar(100) NOT NULL,
  `Remarks_2A` varchar(100) NOT NULL,
  `Question_3A` varchar(100) NOT NULL,
  `Remarks_3A` varchar(100) NOT NULL,
  `Question_4A` varchar(100) NOT NULL,
  `Remarks_4A` varchar(100) NOT NULL,
  `Question_5A` varchar(100) NOT NULL,
  `Remarks_5A` varchar(100) NOT NULL,
  `Question_1B` varchar(100) NOT NULL,
  `Remarks_1B` varchar(100) NOT NULL,
  `Question_2B` varchar(100) NOT NULL,
  `Remarks_2B` varchar(100) NOT NULL,
  `Question_3B` varchar(100) NOT NULL,
  `Remarks_3B` varchar(100) NOT NULL,
  `Question_4B` varchar(100) NOT NULL,
  `Remarks_4B` varchar(100) NOT NULL,
  `Question_5B` varchar(100) NOT NULL,
  `Remarks_5B` varchar(100) NOT NULL,
  `Question_1C` varchar(100) NOT NULL,
  `Remarks_1C` varchar(100) NOT NULL,
  `Question_2C` varchar(100) NOT NULL,
  `Remarks_2C` varchar(100) NOT NULL,
  `Question_3C` varchar(100) NOT NULL,
  `Remarks_3C` varchar(100) NOT NULL,
  `Question_4C` varchar(100) NOT NULL,
  `Remarks_4C` varchar(100) NOT NULL,
  `Question_5C` varchar(100) NOT NULL,
  `Remarks_5C` varchar(100) NOT NULL,
  `Question_1D` varchar(100) NOT NULL,
  `Remarks_1D` varchar(100) NOT NULL,
  `Question_2D` varchar(100) NOT NULL,
  `Remarks_2D` varchar(100) NOT NULL,
  `Question_3D` varchar(100) NOT NULL,
  `Remarks_3D` varchar(100) NOT NULL,
  `Question_4D` varchar(100) NOT NULL,
  `Remarks_4D` varchar(100) NOT NULL,
  `Question_5D` varchar(100) NOT NULL,
  `Remarks_5D` varchar(100) NOT NULL,
  `Comments_Suggestions` varchar(500) NOT NULL,
  `date_uploaded_dttbl` varchar(100) NOT NULL,
  `User_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auditee_afsform`
--

INSERT INTO `auditee_afsform` (`AFSForm_ID`, `Name_Of_Auditor`, `Name_Of_Auditee`, `Date_Accomplished`, `Department`, `Office`, `Question_1A`, `Remarks_1A`, `Question_2A`, `Remarks_2A`, `Question_3A`, `Remarks_3A`, `Question_4A`, `Remarks_4A`, `Question_5A`, `Remarks_5A`, `Question_1B`, `Remarks_1B`, `Question_2B`, `Remarks_2B`, `Question_3B`, `Remarks_3B`, `Question_4B`, `Remarks_4B`, `Question_5B`, `Remarks_5B`, `Question_1C`, `Remarks_1C`, `Question_2C`, `Remarks_2C`, `Question_3C`, `Remarks_3C`, `Question_4C`, `Remarks_4C`, `Question_5C`, `Remarks_5C`, `Question_1D`, `Remarks_1D`, `Question_2D`, `Remarks_2D`, `Question_3D`, `Remarks_3D`, `Question_4D`, `Remarks_4D`, `Question_5D`, `Remarks_5D`, `Comments_Suggestions`, `date_uploaded_dttbl`, `User_ID`) VALUES
(7, 'Alvin Jason A. Virata', 'John Doe', '07/12/2022', 'Academics', 'SBCS', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', 'Remarks Sample', 'Comments & Suggestions Sample', '2022-07-12, 23:01', 194),
(8, 'Alvin Jason A. Virata', 'Jane Doe', '07/12/2022', 'Finance', 'BDO', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', 'Remarks Sample', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'Comments & Suggestions Sample', '2022-07-12, 23:05', 194),
(9, 'Alvin Jason A. Virata', 'Ryan Medina', '07/12/2022', 'ASF', 'RDO', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', 'Remarks Sample', 'Comments & Suggestions Sample', '2022-07-12, 23:09', 194),
(10, 'Winterson C. Ambion', 'John Doe', '07/12/2022', 'Academics', 'SBCS', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', 'Remarks Sample', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'Comments & Suggestions Sample', '2022-07-12, 23:30', 194),
(11, 'Winterson C. Ambion', 'Jane Doe', '07/12/2022', 'Finance', 'BDO', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', 'Remarks Sample', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'Comments & Suggestions Sample', '2022-07-12, 23:32', 194),
(12, 'Winterson C. Ambion', 'Ryan Medina', '07/12/2022', 'ASF', 'RDO', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', 'Remarks Sample', 'NO', 'Remarks Sample', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'Comments & Suggestions Sample', '2022-07-12, 23:34', 194),
(13, 'Winterson C. Ambion', 'Chris Medina', '07/12/2022', 'DSAS', 'Student Development', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', 'Remarks Sample', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'Comments & Suggestions Sample', '2022-07-12, 23:36', 194);

-- --------------------------------------------------------

--
-- Table structure for table `auditee_afsform_2_desc`
--

CREATE TABLE `auditee_afsform_2_desc` (
  `ID` int(100) NOT NULL,
  `School_Address_DESC` varchar(150) NOT NULL,
  `Phone_No_1_DESC` varchar(100) NOT NULL,
  `Phone_No_2_DESC` varchar(100) NOT NULL,
  `Phone_No_3_DESC` varchar(100) NOT NULL,
  `Phone_No_4_DESC` varchar(100) NOT NULL,
  `School_Website_DESC` varchar(100) NOT NULL,
  `School_Facebook_DESC` varchar(100) NOT NULL,
  `School_Instagram_DESC` varchar(100) NOT NULL,
  `QAIE_Office_Title_DESC` varchar(100) NOT NULL,
  `AFS_Generated_Report_Title_DESC` varchar(100) NOT NULL,
  `Total_Of_DESC` varchar(100) NOT NULL,
  `AFS_Submitted_DESC` varchar(100) NOT NULL,
  `#_Table_I_DESC` varchar(100) NOT NULL,
  `Table_I_DESC` varchar(500) NOT NULL,
  `Table_I_Yes_Total_DESC` varchar(100) NOT NULL,
  `Table_I_%_Yes_DESC` varchar(100) NOT NULL,
  `Table_I_No_Total_DESC` varchar(100) NOT NULL,
  `Table_I_%_No_DESC` varchar(100) NOT NULL,
  `#_Question_1A_DESC` varchar(100) NOT NULL,
  `Question_1A_DESC` varchar(500) NOT NULL,
  `#_Question_2A_DESC` varchar(100) NOT NULL,
  `Question_2A_DESC` varchar(500) NOT NULL,
  `#_Question_3A_DESC` varchar(100) NOT NULL,
  `Question_3A_DESC` varchar(500) NOT NULL,
  `#_Question_4A_DESC` varchar(100) NOT NULL,
  `Question_4A_DESC` varchar(500) NOT NULL,
  `#_Question_5A_DESC` varchar(100) NOT NULL,
  `Question_5A_DESC` varchar(500) NOT NULL,
  `#_Table_II_DESC` varchar(100) NOT NULL,
  `Table_II_DESC` varchar(500) NOT NULL,
  `Table_II_Yes_Total_DESC` varchar(100) NOT NULL,
  `Table_II_%_Yes_DESC` varchar(100) NOT NULL,
  `Table_II_No_Total_DESC` varchar(100) NOT NULL,
  `Table_II_%_No_DESC` varchar(100) NOT NULL,
  `#_Question_1B_DESC` varchar(100) NOT NULL,
  `Question_1B_DESC` varchar(500) NOT NULL,
  `#_Question_2B_DESC` varchar(100) NOT NULL,
  `Question_2B_DESC` varchar(500) NOT NULL,
  `#_Question_3B_DESC` varchar(100) NOT NULL,
  `Question_3B_DESC` varchar(500) NOT NULL,
  `#_Question_4B_DESC` varchar(100) NOT NULL,
  `Question_4B_DESC` varchar(500) NOT NULL,
  `#_Question_5B_DESC` varchar(100) NOT NULL,
  `Question_5B_DESC` varchar(500) NOT NULL,
  `#_Table_III_DESC` varchar(100) NOT NULL,
  `Table_III_DESC` varchar(500) NOT NULL,
  `Table_III_Yes_Total_DESC` varchar(100) NOT NULL,
  `Table_III_%_Yes_DESC` varchar(100) NOT NULL,
  `Table_III_No_Total_DESC` varchar(100) NOT NULL,
  `Table_III_%_No_DESC` varchar(100) NOT NULL,
  `#_Question_1C_DESC` varchar(100) NOT NULL,
  `Question_1C_DESC` varchar(500) NOT NULL,
  `#_Question_2C_DESC` varchar(100) NOT NULL,
  `Question_2C_DESC` varchar(500) NOT NULL,
  `#_Question_3C_DESC` varchar(100) NOT NULL,
  `Question_3C_DESC` varchar(500) NOT NULL,
  `#_Question_4C_DESC` varchar(100) NOT NULL,
  `Question_4C_DESC` varchar(500) NOT NULL,
  `#_Question_5C_DESC` varchar(100) NOT NULL,
  `Question_5C_DESC` varchar(500) NOT NULL,
  `#_Table_IV_DESC` varchar(100) NOT NULL,
  `Table_IV_DESC` varchar(500) NOT NULL,
  `Table_IV_Yes_Total_DESC` varchar(100) NOT NULL,
  `Table_IV_%_Yes_DESC` varchar(100) NOT NULL,
  `Table_IV_No_Total_DESC` varchar(100) NOT NULL,
  `Table_IV_%_No_DESC` varchar(100) NOT NULL,
  `#_Question_1D_DESC` varchar(100) NOT NULL,
  `Question_1D_DESC` varchar(500) NOT NULL,
  `#_Question_2D_DESC` varchar(100) NOT NULL,
  `Question_2D_DESC` varchar(500) NOT NULL,
  `#_Question_3D_DESC` varchar(100) NOT NULL,
  `Question_3D_DESC` varchar(500) NOT NULL,
  `#_Question_4D_DESC` varchar(100) NOT NULL,
  `Question_4D_DESC` varchar(500) NOT NULL,
  `#_Question_5D_DESC` varchar(100) NOT NULL,
  `Question_5D_DESC` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auditee_afsform_2_desc`
--

INSERT INTO `auditee_afsform_2_desc` (`ID`, `School_Address_DESC`, `Phone_No_1_DESC`, `Phone_No_2_DESC`, `Phone_No_3_DESC`, `Phone_No_4_DESC`, `School_Website_DESC`, `School_Facebook_DESC`, `School_Instagram_DESC`, `QAIE_Office_Title_DESC`, `AFS_Generated_Report_Title_DESC`, `Total_Of_DESC`, `AFS_Submitted_DESC`, `#_Table_I_DESC`, `Table_I_DESC`, `Table_I_Yes_Total_DESC`, `Table_I_%_Yes_DESC`, `Table_I_No_Total_DESC`, `Table_I_%_No_DESC`, `#_Question_1A_DESC`, `Question_1A_DESC`, `#_Question_2A_DESC`, `Question_2A_DESC`, `#_Question_3A_DESC`, `Question_3A_DESC`, `#_Question_4A_DESC`, `Question_4A_DESC`, `#_Question_5A_DESC`, `Question_5A_DESC`, `#_Table_II_DESC`, `Table_II_DESC`, `Table_II_Yes_Total_DESC`, `Table_II_%_Yes_DESC`, `Table_II_No_Total_DESC`, `Table_II_%_No_DESC`, `#_Question_1B_DESC`, `Question_1B_DESC`, `#_Question_2B_DESC`, `Question_2B_DESC`, `#_Question_3B_DESC`, `Question_3B_DESC`, `#_Question_4B_DESC`, `Question_4B_DESC`, `#_Question_5B_DESC`, `Question_5B_DESC`, `#_Table_III_DESC`, `Table_III_DESC`, `Table_III_Yes_Total_DESC`, `Table_III_%_Yes_DESC`, `Table_III_No_Total_DESC`, `Table_III_%_No_DESC`, `#_Question_1C_DESC`, `Question_1C_DESC`, `#_Question_2C_DESC`, `Question_2C_DESC`, `#_Question_3C_DESC`, `Question_3C_DESC`, `#_Question_4C_DESC`, `Question_4C_DESC`, `#_Question_5C_DESC`, `Question_5C_DESC`, `#_Table_IV_DESC`, `Table_IV_DESC`, `Table_IV_Yes_Total_DESC`, `Table_IV_%_Yes_DESC`, `Table_IV_No_Total_DESC`, `Table_IV_%_No_DESC`, `#_Question_1D_DESC`, `Question_1D_DESC`, `#_Question_2D_DESC`, `Question_2D_DESC`, `#_Question_3D_DESC`, `Question_3D_DESC`, `#_Question_4D_DESC`, `Question_4D_DESC`, `#_Question_5D_DESC`, `Question_5D_DESC`) VALUES
(1, 'St. Dominic Complex, E. Aguinaldo Highway, Bacoor City, Cavite, Philippines 4102', '0917 625 8222', '0922 850 9200', '(046) 417 7322', '(046) 417 8161', 'www.stdominiccollege.edu.ph', 'stdominiccollege', '@sdcapikemen', 'QUALITY ASSURANCE & INSTITUTIONAL EFFECTIVENESS OFFICE', 'AUDITEE FEEDBACK SURVEY (GENERATED REPORT)', 'Total of', 'Auditee Feedback Survey(s) Submitted', 'I.', 'Auditor''s Conduct and Decorum', 'YES (TOTAL)', '% (YES)', 'NO (TOTAL)', '% (NO)', '1.', 'The auditor maintained a positive attitude.', '2.', 'The auditor dressed appropriately during the audit.', '3.', 'The auditor exhibited courtesy and professionalism.', '4.', 'The auditor demonstrated the ability to empathize with the auditee.', '5.', 'The auditor listened attentively to the auditee''s concerns.', 'II.', 'Competence', 'YES (TOTAL)', '% (YES)', 'NO (TOTAL)', '% (NO)', '1.', 'The auditor showed evidence of preparation.', '2.', 'The auditor demonstrated good communication skills.', '3.', 'The auditor provided the auditee an opportunity to ask questions.', '4.', 'The auditor demonstrated high level of objectivity and integrity.', '5.', 'The auditor demonstrated knowledge of the policies and procedures being audited.', 'III.', 'Auditing Process', 'YES (TOTAL)', '% (YES)', 'NO (TOTAL)', '% (NO)', '1.', 'A notice was given prior to the schedule of audit.', '2.', 'The audit was conducted on the agreed schedule.', '3.', 'The purpose and scope of audit were clearly communicated.', '4.', 'The audit was conducted systematically.', '5.', 'A timely and constructive wrap-up meeting was conducted and it provided enough opportunity to clarify the audit findings.', 'IV.', 'General Feedback', 'YES (TOTAL)', '% (YES)', 'NO (TOTAL)', '% (NO)', '1.', 'The recommendations are relevant and useful to address key issues on the existing policies and procedures.', '2.', 'The entire audit process has provided clarity in terms of carrying out the duties and responsibilities at work.', '3.', 'The audit was helpful in identifying areas of improvement of the current system.', '4.', 'Audit results were fairly and accurately reported using an objective perspective.', '5.', 'The audit added value and provided meaningful results.');

-- --------------------------------------------------------

--
-- Table structure for table `auditee_afsform_desc`
--

CREATE TABLE `auditee_afsform_desc` (
  `ID` int(100) NOT NULL,
  `School_Address_DESC` varchar(150) NOT NULL,
  `Phone_No_1_DESC` varchar(100) NOT NULL,
  `Phone_No_2_DESC` varchar(100) NOT NULL,
  `Phone_No_3_DESC` varchar(100) NOT NULL,
  `Phone_No_4_DESC` varchar(100) NOT NULL,
  `School_Website_DESC` varchar(100) NOT NULL,
  `School_Facebook_DESC` varchar(100) NOT NULL,
  `School_Instagram_DESC` varchar(100) NOT NULL,
  `QAIE_Office_Title_DESC` varchar(100) NOT NULL,
  `AFS_Title_DESC` varchar(100) NOT NULL,
  `Name_Of_Auditor_DESC` varchar(100) NOT NULL,
  `Date_Accomplished_DESC` varchar(100) NOT NULL,
  `Name_Of_Auditee_DESC` varchar(100) NOT NULL,
  `Department_Office_DESC` varchar(100) NOT NULL,
  `#_Table_I_DESC` varchar(100) NOT NULL,
  `Table_I_DESC` varchar(500) NOT NULL,
  `Table_I_Yes_Opt_DESC` varchar(100) NOT NULL,
  `Table_I_No_Opt_DESC` varchar(100) NOT NULL,
  `Table_I_Remarks_DESC` varchar(100) NOT NULL,
  `#_Question_1A_DESC` varchar(100) NOT NULL,
  `Question_1A_DESC` varchar(500) NOT NULL,
  `#_Question_2A_DESC` varchar(100) NOT NULL,
  `Question_2A_DESC` varchar(500) NOT NULL,
  `#_Question_3A_DESC` varchar(100) NOT NULL,
  `Question_3A_DESC` varchar(500) NOT NULL,
  `#_Question_4A_DESC` varchar(100) NOT NULL,
  `Question_4A_DESC` varchar(500) NOT NULL,
  `#_Question_5A_DESC` varchar(100) NOT NULL,
  `Question_5A_DESC` varchar(500) NOT NULL,
  `#_Table_II_DESC` varchar(100) NOT NULL,
  `Table_II_DESC` varchar(500) NOT NULL,
  `Table_II_Yes_Opt_DESC` varchar(100) NOT NULL,
  `Table_II_No_Opt_DESC` varchar(100) NOT NULL,
  `Table_II_Remarks_DESC` varchar(100) NOT NULL,
  `#_Question_1B_DESC` varchar(100) NOT NULL,
  `Question_1B_DESC` varchar(500) NOT NULL,
  `#_Question_2B_DESC` varchar(100) NOT NULL,
  `Question_2B_DESC` varchar(500) NOT NULL,
  `#_Question_3B_DESC` varchar(100) NOT NULL,
  `Question_3B_DESC` varchar(500) NOT NULL,
  `#_Question_4B_DESC` varchar(100) NOT NULL,
  `Question_4B_DESC` varchar(500) NOT NULL,
  `#_Question_5B_DESC` varchar(100) NOT NULL,
  `Question_5B_DESC` varchar(500) NOT NULL,
  `#_Table_III_DESC` varchar(100) NOT NULL,
  `Table_III_DESC` varchar(500) NOT NULL,
  `Table_III_Yes_Opt_DESC` varchar(100) NOT NULL,
  `Table_III_No_Opt_DESC` varchar(100) NOT NULL,
  `Table_III_Remarks_DESC` varchar(100) NOT NULL,
  `#_Question_1C_DESC` varchar(100) NOT NULL,
  `Question_1C_DESC` varchar(500) NOT NULL,
  `#_Question_2C_DESC` varchar(100) NOT NULL,
  `Question_2C_DESC` varchar(500) NOT NULL,
  `#_Question_3C_DESC` varchar(100) NOT NULL,
  `Question_3C_DESC` varchar(500) NOT NULL,
  `#_Question_4C_DESC` varchar(100) NOT NULL,
  `Question_4C_DESC` varchar(500) NOT NULL,
  `#_Question_5C_DESC` varchar(100) NOT NULL,
  `Question_5C_DESC` varchar(500) NOT NULL,
  `#_Table_IV_DESC` varchar(100) NOT NULL,
  `Table_IV_DESC` varchar(500) NOT NULL,
  `Table_IV_Yes_Opt_DESC` varchar(100) NOT NULL,
  `Table_IV_No_Opt_DESC` varchar(100) NOT NULL,
  `Table_IV_Remarks_DESC` varchar(100) NOT NULL,
  `#_Question_1D_DESC` varchar(100) NOT NULL,
  `Question_1D_DESC` varchar(500) NOT NULL,
  `#_Question_2D_DESC` varchar(100) NOT NULL,
  `Question_2D_DESC` varchar(500) NOT NULL,
  `#_Question_3D_DESC` varchar(100) NOT NULL,
  `Question_3D_DESC` varchar(500) NOT NULL,
  `#_Question_4D_DESC` varchar(100) NOT NULL,
  `Question_4D_DESC` varchar(500) NOT NULL,
  `#_Question_5D_DESC` varchar(100) NOT NULL,
  `Question_5D_DESC` varchar(500) NOT NULL,
  `#_Table_V_DESC` varchar(100) NOT NULL,
  `Table_V_DESC` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auditee_afsform_desc`
--

INSERT INTO `auditee_afsform_desc` (`ID`, `School_Address_DESC`, `Phone_No_1_DESC`, `Phone_No_2_DESC`, `Phone_No_3_DESC`, `Phone_No_4_DESC`, `School_Website_DESC`, `School_Facebook_DESC`, `School_Instagram_DESC`, `QAIE_Office_Title_DESC`, `AFS_Title_DESC`, `Name_Of_Auditor_DESC`, `Date_Accomplished_DESC`, `Name_Of_Auditee_DESC`, `Department_Office_DESC`, `#_Table_I_DESC`, `Table_I_DESC`, `Table_I_Yes_Opt_DESC`, `Table_I_No_Opt_DESC`, `Table_I_Remarks_DESC`, `#_Question_1A_DESC`, `Question_1A_DESC`, `#_Question_2A_DESC`, `Question_2A_DESC`, `#_Question_3A_DESC`, `Question_3A_DESC`, `#_Question_4A_DESC`, `Question_4A_DESC`, `#_Question_5A_DESC`, `Question_5A_DESC`, `#_Table_II_DESC`, `Table_II_DESC`, `Table_II_Yes_Opt_DESC`, `Table_II_No_Opt_DESC`, `Table_II_Remarks_DESC`, `#_Question_1B_DESC`, `Question_1B_DESC`, `#_Question_2B_DESC`, `Question_2B_DESC`, `#_Question_3B_DESC`, `Question_3B_DESC`, `#_Question_4B_DESC`, `Question_4B_DESC`, `#_Question_5B_DESC`, `Question_5B_DESC`, `#_Table_III_DESC`, `Table_III_DESC`, `Table_III_Yes_Opt_DESC`, `Table_III_No_Opt_DESC`, `Table_III_Remarks_DESC`, `#_Question_1C_DESC`, `Question_1C_DESC`, `#_Question_2C_DESC`, `Question_2C_DESC`, `#_Question_3C_DESC`, `Question_3C_DESC`, `#_Question_4C_DESC`, `Question_4C_DESC`, `#_Question_5C_DESC`, `Question_5C_DESC`, `#_Table_IV_DESC`, `Table_IV_DESC`, `Table_IV_Yes_Opt_DESC`, `Table_IV_No_Opt_DESC`, `Table_IV_Remarks_DESC`, `#_Question_1D_DESC`, `Question_1D_DESC`, `#_Question_2D_DESC`, `Question_2D_DESC`, `#_Question_3D_DESC`, `Question_3D_DESC`, `#_Question_4D_DESC`, `Question_4D_DESC`, `#_Question_5D_DESC`, `Question_5D_DESC`, `#_Table_V_DESC`, `Table_V_DESC`) VALUES
(1, 'St. Dominic Complex, E. Aguinaldo Highway, Bacoor City, Cavite, Philippines 4102', '0917 625 8222', '0922 850 9200', '(046) 417 7322', '(046) 417 8161', 'www.stdominiccollege.edu.ph', 'stdominiccollege', '@sdcapikemen', 'QUALITY ASSURANCE & INSTITUTIONAL EFFECTIVENESS OFFICE', 'AUDITEE FEEDBACK SURVEY', 'Name of Auditor:', 'Date Accomplished:', 'Name of Auditee:', 'Department/Office/Unit:', 'I.', 'Auditor''s Conduct and Decorum', 'YES', 'NO', 'REMARKS', '1.', 'The auditor maintained a positive attitude.', '2.', 'The auditor dressed appropriately during the audit.', '3.', 'The auditor exhibited courtesy and professionalism.', '4.', 'The auditor demonstrated the ability to empathize with the auditee.', '5.', 'The auditor listened attentively to the auditee''s concerns.', 'II.', 'Competence', 'YES', 'NO', 'REMARKS', '1.', 'The auditor showed evidence of preparation.', '2.', 'The auditor demonstrated good communication skills.', '3.', 'The auditor provided the auditee an opportunity to ask questions.', '4.', 'The auditor demonstrated high level of objectivity and integrity.', '5.', 'The auditor demonstrated knowledge of the policies and procedures being audited.', 'III.', 'Auditing Process', 'YES', 'NO', 'REMARKS', '1.', 'A notice was given prior to the schedule of audit.', '2.', 'The audit was conducted on the agreed schedule.', '3.', 'The purpose and scope of audit were clearly communicated.', '4.', 'The audit was conducted systematically.', '5.', 'A timely and constructive wrap-up meeting was conducted and it provided enough opportunity to clarify the audit findings.', 'IV.', 'General Feedback', 'YES', 'NO', 'REMARKS', '1.', 'The recommendations are relevant and useful to address key issues on the existing policies and procedures.', '2.', 'The entire audit process has provided clarity in terms of carrying out the duties and responsibilities at work.', '3.', 'The audit was helpful in identifying areas of improvement of the current system.', '4.', 'Audit results were fairly and accurately reported using an objective perspective.', '5.', 'The audit added value and provided meaningful results.', 'V.', 'Please write down your comments or suggestions to improve the auditing services of the office:');

-- --------------------------------------------------------

--
-- Table structure for table `emanual_types`
--

CREATE TABLE `emanual_types` (
  `ID_Emanual_Type` int(200) NOT NULL,
  `Name_of_Emanual_Type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emanual_types`
--

INSERT INTO `emanual_types` (`ID_Emanual_Type`, `Name_of_Emanual_Type`) VALUES
(1, 'Uncontrolled Copy Version'),
(2, 'Master Copy Version');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` varchar(200) NOT NULL,
  `end` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `color`, `start`, `end`) VALUES
(1, 'Test', '#004bfa', '2024-10-07 00:00:00', '2024-10-11 00:00:00'),
(2, 'Accreditation Event Sample', '#004bfa', '2022-08-16 00:00:00', '2022-08-17 00:00:00'),
(3, 'Audit/Assessment Event Sample', '#ffdd00', '2022-08-17 00:00:00', '2022-08-18 00:00:00'),
(4, 'Holiday Event Sample', '#ff0d00', '2022-08-18 00:00:00', '2022-08-19 00:00:00'),
(5, 'Seminar Event Sample', '#01fe0a', '2022-08-19 07:00:00', '2022-08-19 10:00:00'),
(6, 'Holiday Test', '#ff0d00', '2024-10-07 00:00:00', '2024-10-11 00:00:00'),
(7, 'Assesment', '#ffdd00', '2024-10-18 00:00:00', '2024-10-19 00:00:00'),
(8, 'as', '#ffdd00', '2024-10-13 00:00:00', '2024-10-14 00:00:00'),
(10, 'Holliday', '#ff0d00', '2024-10-25 00:00:00', '2024-10-26 00:00:00'),
(11, 'Test', '#004bfa', '2024-10-15 00:00:00', '2024-10-16 00:00:00'),
(12, 'National Holiday', '#ff0d00', '2024-10-31 00:00:00', '2024-11-02 00:00:00'),
(13, 'Christmas Holidays', '#ff0d00', '2024-12-30 00:00:00', '2025-01-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE `event_types` (
  `ID_Event_Type` int(200) NOT NULL,
  `Color_of_Event_Type` varchar(200) NOT NULL,
  `Name_of_Event_Type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`ID_Event_Type`, `Color_of_Event_Type`, `Name_of_Event_Type`) VALUES
(8, '#004bfa', 'Accreditation'),
(12, '#01fe0a', 'Seminar'),
(13, '#ff0d00', 'Holiday'),
(14, '#ffdd00', 'Audit/Assessment');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `name`, `parent_id`, `created_at`) VALUES
(0, 'YAYYYYA', NULL, '2024-11-02 12:12:25'),
(1, 'docu', NULL, '2024-09-21 03:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `folder_access`
--

CREATE TABLE `folder_access` (
  `folder_id` int(11) NOT NULL,
  `ID_Office` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folder_access`
--

INSERT INTO `folder_access` (`folder_id`, `ID_Office`) VALUES
(0, 5),
(0, 14),
(0, 23),
(0, 24),
(0, 26),
(0, 28),
(0, 30),
(1, 3),
(1, 4),
(1, 5),
(1, 7),
(1, 8),
(1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `folder_offices`
--

CREATE TABLE `folder_offices` (
  `folder_id` int(11) NOT NULL,
  `ID_Office` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_nea_datatable`
--

CREATE TABLE `home_nea_datatable` (
  `ID_NEA` int(100) NOT NULL,
  `NEA_Image` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `NEA_Title` varchar(100) NOT NULL,
  `NEA_Description` varchar(5000) NOT NULL,
  `Date_Uploaded` varchar(100) NOT NULL,
  `date_uploaded_nea` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_nea_datatable`
--

INSERT INTO `home_nea_datatable` (`ID_NEA`, `NEA_Image`, `Category`, `NEA_Title`, `NEA_Description`, `Date_Uploaded`, `date_uploaded_nea`) VALUES
(52, 'f58612308c7fc0e254d4c4cbaf060d94.png', 'News', 'News', 'News', '05/12/2024', '2024-05-12, 22:05:33'),
(53, '3807c979cbc5ca3818ffe9e8fe01a588.jpg', 'Event', 'Event', 'Event', '05/12/2024', '2024-05-12, 22:05:55'),
(54, '4355d6736d2c14d96cee4e1db7f652f8.jpg', 'Announcement', 'Announcement', 'Announcement', '05/12/2024', '2024-05-12, 22:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `qaiedirector_dcrform`
--

CREATE TABLE `qaiedirector_dcrform` (
  `Year_Generated` int(4) NOT NULL,
  `DCRForm_ID` int(11) NOT NULL,
  `Status_DocuController` varchar(100) DEFAULT NULL,
  `DocuController_Comments` varchar(100) DEFAULT NULL,
  `Status_DeptHead` varchar(100) DEFAULT NULL,
  `Status_Requester` varchar(100) NOT NULL,
  `QAIE_Directors_Comments` varchar(100) NOT NULL,
  `Request_Status` varchar(100) DEFAULT NULL,
  `ESignature_DoQ` varchar(200) DEFAULT NULL,
  `Name_Of_QAIE_Director` varchar(100) DEFAULT NULL,
  `Date_Of_QAIE_Director_Action` varchar(100) DEFAULT NULL,
  `ESignature_DeptHead` varchar(200) DEFAULT NULL,
  `Name_Of_Approving_Authority` varchar(100) DEFAULT NULL,
  `Date_Of_Approval` varchar(100) DEFAULT NULL,
  `Date_Of_Request` varchar(100) NOT NULL,
  `To_Who` varchar(100) NOT NULL,
  `From_Office` varchar(100) NOT NULL,
  `Type_Of_Request` varchar(100) NOT NULL,
  `Document_No` varchar(100) NOT NULL,
  `Document_Title` varchar(100) NOT NULL,
  `Revision_Status` varchar(100) NOT NULL,
  `Changes_Requested` varchar(500) NOT NULL,
  `Reason_For_The_Change` varchar(500) NOT NULL,
  `Requested_By` varchar(100) NOT NULL,
  `New_Document_No` varchar(100) NOT NULL,
  `New_Document_Version` varchar(100) NOT NULL,
  `New_Document_Revision` varchar(100) NOT NULL,
  `date_uploaded_dttbl` varchar(100) NOT NULL,
  `Random_Unique_Code` varchar(100) NOT NULL,
  `User_ID` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qaiedirector_dcrform`
--

INSERT INTO `qaiedirector_dcrform` (`Year_Generated`, `DCRForm_ID`, `Status_DocuController`, `DocuController_Comments`, `Status_DeptHead`, `Status_Requester`, `QAIE_Directors_Comments`, `Request_Status`, `ESignature_DoQ`, `Name_Of_QAIE_Director`, `Date_Of_QAIE_Director_Action`, `ESignature_DeptHead`, `Name_Of_Approving_Authority`, `Date_Of_Approval`, `Date_Of_Request`, `To_Who`, `From_Office`, `Type_Of_Request`, `Document_No`, `Document_Title`, `Revision_Status`, `Changes_Requested`, `Reason_For_The_Change`, `Requested_By`, `New_Document_No`, `New_Document_Version`, `New_Document_Revision`, `date_uploaded_dttbl`, `Random_Unique_Code`, `User_ID`) VALUES
(2024, 1, 'Already Sent to Director for QAIE', NULL, 'Already Sent to Document Controller', 'Already Sent to Department Head', '', NULL, NULL, NULL, NULL, 'bb132b9eef46797a4af8a7d875c29295.PNG', 'asdasd', '09/21/2024', '09/19/2024', 'Document Controller', 'SBCS', 'New Document', 'asasas', '1121', 'asas', 'asasasas', 'qwqqwqw', 'requester', '1212', '12121212', '1222222222222222222', '2024-09-19 15:42:01', 'ab2d293510ae2816026e65fb5093805c', 218),
(2024, 2, NULL, NULL, NULL, 'Already Sent to Department Head', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09/29/2024', 'Document Controller', 'BEd', 'New Document', '123123', 'awsasd', 'asdasd', 'asd', 'asd', 'superadmin', 'asd', '123123123123123123', '1231231231', '2024-09-29 12:49:22', '862f98feca04ae81d1803a050bc28b9f', 108),
(2024, 3, NULL, NULL, NULL, 'Already Sent to Department Head', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09/29/2024', 'Document Controller', 'ICT', 'Amend Document', '34234', 'YAY', 'aa', '222222222222', '222222222222222222222', 'superadmin', '211111111111111111111111111', '111111111111111111111111111111111', '123123', '2024-09-29 12:51:52', '8985926546c6f4d999bf6a3a1bfa59ee', 108),
(2024, 4, NULL, NULL, NULL, 'Already Sent to Department Head', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09/29/2024', 'Document Controller', 'Admission', 'New Document', 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa', 'superadmin', 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', 'a', '2024-09-29 12:53:47', '8c8be061a43f27ba5cb3209812bb07d4', 108),
(2024, 5, NULL, NULL, NULL, 'Already Sent to Department Head', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10/30/2024', 'Document Controller', 'asdasdasd', 'Delete Document', '50', 'Legacy Assurance Officer', 'Minnesota', 'Soluta molestiae aliquam ratione optio dignissimos esse.', 'Facere dolores et nisi.', 'requester', '237', 'Culpa dolorum facere provident corrupti.', 'Iure error nobis optio nam saepe ipsam praesentium quod.', '2024-10-30 15:11:50', '706c724882c540761ab2d9c8a2079343', 218),
(2024, 6, 'Already Sent to Director for QAIE', '', 'Already Sent to Document Controller', 'Already Sent to Department Head', '', NULL, NULL, NULL, NULL, NULL, 'Yes', '10/30/2024', '10/30/2024', 'Document Controller', 'SBCS', 'Amend Document', '378', 'Future Applications Specialist', 'Massachusetts', 'Reiciendis harum totam necessitatibus a cumque quae beatae.', 'A corporis dolorum eveniet saepe eos.', 'requester', '304', 'Tempore iusto nulla reprehenderit amet deleniti.', 'Fuga ad aliquid suscipit.', '2024-10-30 15:14:28', '2c0580f6680bb3ea54272802586caa81', 218),
(2024, 7, 'Revision needed, returned to Requester', '', 'Already Sent to Document Controller', 'Revisions Requested', '', NULL, NULL, NULL, NULL, NULL, 'yes', '10/30/2024', '10/30/2024', 'Document Controller', 'SBCS', 'New Document', '605', 'Human Security Coordinator', 'Louisiana', 'Doloremque repellendus necessitatibus veniam in perspiciatis animi quisquam similique ea.', 'Soluta cupiditate distinctio corporis excepturi.', 'requester', '294', 'Vero illo impedit possimus placeat ad reiciendis veritatis ex quos.', 'Numquam reiciendis fuga.', '2024-10-30 15:15:59', '05ca64f588b69bf87991de5cad591e6d', 218);

-- --------------------------------------------------------

--
-- Table structure for table `qaiedirector_dcrform_desc`
--

CREATE TABLE `qaiedirector_dcrform_desc` (
  `ID` int(100) NOT NULL,
  `School_DESC` varchar(100) NOT NULL,
  `DCR_DESC` varchar(100) NOT NULL,
  `Date_Of_Request_DESC` varchar(100) NOT NULL,
  `COLON_Date_Of_Request_DESC` varchar(100) NOT NULL,
  `DCR_No_DESC` varchar(100) NOT NULL,
  `To_Who_DESC` varchar(100) NOT NULL,
  `COLON_To_Who_DESC` varchar(100) NOT NULL,
  `From_Office_DESC` varchar(100) NOT NULL,
  `COLON_From_Office_DESC` varchar(100) NOT NULL,
  `Amend_Document_DESC` varchar(100) NOT NULL,
  `New_Document_DESC` varchar(100) NOT NULL,
  `Delete_Document_DESC` varchar(100) NOT NULL,
  `#_Details_Of_Document_DESC` varchar(100) NOT NULL,
  `Details_Of_Document_DESC` varchar(100) NOT NULL,
  `Document_Number_DESC` varchar(100) NOT NULL,
  `COLON_Document_Number_DESC` varchar(100) NOT NULL,
  `Document_Title_DESC` varchar(100) NOT NULL,
  `COLON_Document_Title_DESC` varchar(100) NOT NULL,
  `Revision_Status_DESC` varchar(100) NOT NULL,
  `COLON_Revision_Status_DESC` varchar(100) NOT NULL,
  `Note_Attach_DraftCopy_DESC` varchar(100) NOT NULL,
  `#_Changes_Requested_DESC` varchar(100) NOT NULL,
  `Changes_Requested_DESC` varchar(100) NOT NULL,
  `Reason_For_The_Change_DESC` varchar(100) NOT NULL,
  `Requested_By_DESC` varchar(100) NOT NULL,
  `#_QAIE_Director_Comments_DESC` varchar(100) NOT NULL,
  `QAIE_Director_Comments_DESC` varchar(100) NOT NULL,
  `Request_Denied_DESC` varchar(100) NOT NULL,
  `Request_Accepted_DESC` varchar(100) NOT NULL,
  `Signature/Date_DESC` varchar(100) NOT NULL,
  `#_Approving_Authority_DESC` varchar(100) NOT NULL,
  `Approving_Authority_DESC` varchar(100) NOT NULL,
  `Signature_Over_Printed_Name_DESC` varchar(100) NOT NULL,
  `Date_Of_Approval_DESC` varchar(100) NOT NULL,
  `#_Document_Status_DESC` varchar(100) NOT NULL,
  `Document_Status_DESC` varchar(100) NOT NULL,
  `New_Document_Status_DESC` varchar(100) NOT NULL,
  `New_Document_No_DESC` varchar(100) NOT NULL,
  `New_Document_Version_DESC` varchar(100) NOT NULL,
  `New_Document_Revision_DESC` varchar(100) NOT NULL,
  `Revision_Date_Version_DESC` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qaiedirector_dcrform_desc`
--

INSERT INTO `qaiedirector_dcrform_desc` (`ID`, `School_DESC`, `DCR_DESC`, `Date_Of_Request_DESC`, `COLON_Date_Of_Request_DESC`, `DCR_No_DESC`, `To_Who_DESC`, `COLON_To_Who_DESC`, `From_Office_DESC`, `COLON_From_Office_DESC`, `Amend_Document_DESC`, `New_Document_DESC`, `Delete_Document_DESC`, `#_Details_Of_Document_DESC`, `Details_Of_Document_DESC`, `Document_Number_DESC`, `COLON_Document_Number_DESC`, `Document_Title_DESC`, `COLON_Document_Title_DESC`, `Revision_Status_DESC`, `COLON_Revision_Status_DESC`, `Note_Attach_DraftCopy_DESC`, `#_Changes_Requested_DESC`, `Changes_Requested_DESC`, `Reason_For_The_Change_DESC`, `Requested_By_DESC`, `#_QAIE_Director_Comments_DESC`, `QAIE_Director_Comments_DESC`, `Request_Denied_DESC`, `Request_Accepted_DESC`, `Signature/Date_DESC`, `#_Approving_Authority_DESC`, `Approving_Authority_DESC`, `Signature_Over_Printed_Name_DESC`, `Date_Of_Approval_DESC`, `#_Document_Status_DESC`, `Document_Status_DESC`, `New_Document_Status_DESC`, `New_Document_No_DESC`, `New_Document_Version_DESC`, `New_Document_Revision_DESC`, `Revision_Date_Version_DESC`) VALUES
(1, 'ST DOMINIC COLLEGE OF ASIA', 'DOCUMENT CHANGE REQUESTasdasdas', 'DATEasd', ':', 'DCR No.', 'TOss', ':', 'FROMss', ':', 'Amend documentsss', 'New documentss', 'Delete documentsss', '1.ss', 'DETAILS OF DOCUMENTsssss', 'Document Numbers', ':', 'Document Titlessss', ':', 'Revision Statussssss', ':', 'Note: Please attach draft copy of the document.s', '2.ss', 'CHANGE(S) REQUESTEDs', 'REASON FOR THE CHANGEss', 'Requested Bys', '3.', 'QAIE DIRECTOR''s COMMENTSss', 'Request Denied', 'Request Accepted', 'Signature/Datessss', '4.', 'APPROVING AUTHORITYssss', 'Signature Over Printed Name', 'Date', '5.', 'DOCUMENT STATUSss', 'New Document Statuss', 'Nos.:', 'Versions:', 'Revisions:', 'F-QUA-001 Rev. 1 (03/01/19)ss');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id_storage` int(11) NOT NULL,
  `random_unique_code` varchar(200) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) NOT NULL,
  `date_uploaded` varchar(200) NOT NULL,
  `user_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id_storage`, `random_unique_code`, `file_name`, `file_type`, `date_uploaded`, `user_id`) VALUES
(1, 'ab2d293510ae2816026e65fb5093805c', 'GbzFYvsVm9cEinu.pdf', 'application/pdf', '2024-09-19 15:42:01', 218),
(7, 'e59f9c06ce3346a57b851ea27f14e90c', '6120d15555cf04.61814088.pdf', '', '2021-08-21, 18:11:33', 151),
(8, '778e00e42e107d2425c78255c96652c9', '6120d179bcda16.49461622.pdf', '', '2021-08-21, 18:12:09', 151),
(9, '7ca6f1189b1f263c8ecf63a2a9727ece', '6120d2ab5789d6.19721955.pdf', '', '2021-08-21, 18:17:15', 151),
(10, 'aa897a55ae5583c83b13458ef8ce1f74', '62580cc9381dd9.16233581.pdf', 'application/pdf', '2022-04-14, 20:00:09', 183),
(11, '342a578cafb917f600cc0f242d39d001', '62cd53de7c48d5.00974479.pdf', 'application/pdf', '2022-07-12, 18:58:38', 194),
(12, 'f35465d0eb347bb8c81a696c1333edee', '62d5c602ace702.88000205.pdf', 'application/pdf', '2022-07-19, 04:43:46', 194),
(13, 'c198ab601d9f8ca704200dc35fac43a5', '62e72db18b9031.09412943.pdf', 'application/pdf', '2022-08-01, 09:34:41', 194),
(14, '26fc04dc78f8edf9b5817b2782cfa221', '62e73064c59457.86687179.pdf', 'application/pdf', '2022-08-01, 09:46:12', 194),
(15, 'a5605b44d511776f476965614282eae0', '62ef587f5f3576.75268400.pdf', 'application/pdf', '2022-08-07, 14:15:27', 194),
(16, '1cc596d75556847e5fbeabe7577a3870', '62fdda4570efb5.71526670.pdf', 'application/pdf', '2022-08-18, 14:20:53', 194),
(17, 'dd7433128da5fcc4a53a289b005541c8', '65c0b0993e3c98.33950985.pdf', 'application/pdf', '2024-02-05, 17:55:37', 205),
(18, '63b2a0a3dc222d761a6b1e3738103a01', '661bb50c1feb56.32361712.pdf', 'application/pdf', '2024-04-14, 18:50:52', 205),
(19, '4e2ad27ca142251ff47f109cc790eb5f', '663273c8c50fe7.83598207.pdf', 'application/pdf', '2024-05-02, 00:54:32', 218),
(20, 'fb303ba928075f97d24740ceb45eff0f', '66328f45649cf6.35829697.pdf', 'application/pdf', '2024-05-02, 02:51:49', 218),
(21, '8b4be69612021fb05cdf2d02e8d73c08', '66329d669e5735.17999197.pdf', 'application/pdf', '2024-05-02, 03:52:06', 218),
(22, '5a76e8beb7ba721f160baf2a90a45bb7', '66339b277d7d12.17674279.pdf', 'application/pdf', '2024-05-02, 21:54:47', 218),
(23, '346ff841feafc5072d6ecb13ff25652a', '66339c5673db87.89633960.pdf', 'application/pdf', '2024-05-02, 21:59:50', 218),
(24, '30c8dd494dab87846d2ffcd02f9906be', '6634fb9c3e6399.86927215.pdf', 'application/pdf', '2024-05-03, 22:58:36', 218),
(25, '6af78ca7e0eaa0657e092ad4b72ea1e9', '6634fd0ca29033.59022746.pdf', 'application/pdf', '2024-05-03, 23:04:44', 218),
(26, 'd2896a0d8a70d3a774c4cbd503726b2d', '66350039e6df11.72488377.pdf', 'application/pdf', '2024-05-03, 23:18:17', 218),
(27, 'bc8e1ef4347158ea3b79879b0ddbaa22', '66350212b3b8d8.61886318.pdf', 'application/pdf', '2024-05-03, 23:26:10', 218),
(28, '676d53e36efc46b3b2b1bd2dfe9056de', '663505bceae035.96693059.pdf', 'application/pdf', '2024-05-03, 23:41:48', 218),
(29, '7ba7985a049d955935a4eac201046b54', '66350a76464490.66356897.pdf', 'application/pdf', '2024-05-04, 00:01:58', 218),
(30, 'd689b4b7581aa1b4005f112803b217bb', '663510064719a5.83021581.pdf', 'application/pdf', '2024-05-04, 00:25:42', 218),
(31, '3938c75d3246aaa382d22b0c575d9ec1', '66352a40105084.49356216.pdf', 'application/pdf', '2024-05-04, 02:17:36', 218),
(32, 'e59bf3bc94c9245c58acc5c8d07823ed', '6635474fa866b4.30567973.pdf', 'application/pdf', '2024-05-04, 04:21:35', 218),
(33, '5c78283a7fd23d41f512860d27cbea33', '6636662e9e45c2.41973711.pdf', 'application/pdf', '2024-05-05, 00:45:34', 218),
(34, '7008fbc2abcc3dc6576510093e7d031d', '66366e1e4279b2.49866918.pdf', 'application/pdf', '2024-05-05, 01:19:26', 218),
(35, '6ae6fd993f36eb8ae9388247a352a4f4', '663678f98242f4.34723137.pdf', 'application/pdf', '2024-05-05, 02:05:45', 218),
(36, '6d3dda47918080d6c3bb7737c5f7d213', '663a6c14299b51.33849664.pdf', 'application/pdf', '2024-05-08, 01:59:48', 218),
(37, '8985926546c6f4d999bf6a3a1bfa59ee', 'F2D8GlCAHp5ePYx.pdf', 'application/pdf', '2024-09-29 12:51:52', 108),
(38, '8c8be061a43f27ba5cb3209812bb07d4', 'bYX2yMuF0OPmc6e.pdf', 'application/pdf', '2024-09-29 12:53:47', 108),
(39, '706c724882c540761ab2d9c8a2079343', 'Ul4E8ONvrfkcR2A.pdf', 'application/pdf', '2024-10-30 15:11:50', 218),
(40, '2c0580f6680bb3ea54272802586caa81', 'XFzIJrC70oWcvRh.pdf', 'application/pdf', '2024-10-30 15:14:28', 218),
(41, '05ca64f588b69bf87991de5cad591e6d', 'z4dBhQHKabw8U0O.pdf', 'application/pdf', '2024-10-30 15:15:59', 218);

-- --------------------------------------------------------

--
-- Table structure for table `storage_asr`
--

CREATE TABLE `storage_asr` (
  `File_ID` int(200) NOT NULL,
  `Department` varchar(200) NOT NULL,
  `Office` varchar(200) NOT NULL,
  `Date_Uploaded` varchar(200) NOT NULL,
  `File_Type` varchar(200) NOT NULL,
  `File_Name` varchar(200) NOT NULL,
  `User_ID` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_asr`
--

INSERT INTO `storage_asr` (`File_ID`, `Department`, `Office`, `Date_Uploaded`, `File_Type`, `File_Name`, `User_ID`) VALUES
(1, 'Academics', 'BEd', '2022-01-16, 01:00:00', 'application/pdf', '6281ee237c78b3.43397163.pdf', 196),
(2, 'Academics', 'SBCS', '2022-02-16, 02:00:00', 'application/pdf', '6281ee50bfe199.23782627.pdf', 196),
(3, 'Administrative', 'BAO', '2022-03-16, 03:00:00', 'application/pdf', '6281efad481781.64860993.pdf', 196),
(4, 'ASF', 'RDO', '2022-04-16, 04:00:00', 'application/pdf', '6281efc159f326.08414633.pdf', 196),
(5, 'DSAS', 'Alumni', '2022-05-16, 05:00:00', 'application/pdf', '6281efd3cec2d7.41633667.pdf', 196),
(11, 'Finance', 'BDO', '2024-07-13, 21:34:11', 'application/pdf', '66928253cbfb30.57324763.pdf', 221);

-- --------------------------------------------------------

--
-- Table structure for table `storage_documentations`
--

CREATE TABLE `storage_documentations` (
  `File_ID` int(100) NOT NULL,
  `File_Title` varchar(100) NOT NULL,
  `File_Name` varchar(100) NOT NULL,
  `File_Type` varchar(100) NOT NULL,
  `Date_Uploaded` varchar(100) NOT NULL,
  `User_ID` int(100) NOT NULL,
  `folder_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_documentations`
--

INSERT INTO `storage_documentations` (`File_ID`, `File_Title`, `File_Name`, `File_Type`, `Date_Uploaded`, `User_ID`, `folder_id`) VALUES
(1, 'New', 'xWMXoduBlzPUSiZ1.pdf', 'application/pdf', '2024-09-21 03:23:22', 227, 1);

-- --------------------------------------------------------

--
-- Table structure for table `storage_emanuals`
--

CREATE TABLE `storage_emanuals` (
  `File_ID` int(100) NOT NULL,
  `File_Title` varchar(100) NOT NULL,
  `File_Name` varchar(100) NOT NULL,
  `File_Type` varchar(100) NOT NULL,
  `Date_Uploaded` varchar(100) NOT NULL,
  `Emanual_Type` varchar(200) NOT NULL,
  `User_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_emanuals`
--

INSERT INTO `storage_emanuals` (`File_ID`, `File_Title`, `File_Name`, `File_Type`, `Date_Uploaded`, `Emanual_Type`, `User_ID`) VALUES
(43, 'Academic Affairs Manual (AAM)', '66928332411cd0.15430145.pdf', 'application/pdf', '2024-07-13, 21:37', 'Uncontrolled Copy Version', 221),
(44, 'Administrative Affairs Manual (ADM)', '6692834f124e10.41939081.pdf', 'application/pdf', '2024-07-13, 21:38', 'Uncontrolled Copy Version', 221),
(45, 'Data Privacy Manual (DPM)', '66928366493551.64480853.pdf', 'application/pdf', '2024-07-13, 21:38', 'Uncontrolled Copy Version', 221),
(46, 'Financial Affairs Manual (FAM)', '6692837974e8e1.35305088.pdf', 'application/pdf', '2024-07-13, 21:39', 'Uncontrolled Copy Version', 221),
(47, 'Job Description Manual (JDM)', '66928396b3b183.43952608.pdf', 'application/pdf', '2024-07-13, 21:39', 'Uncontrolled Copy Version', 221),
(48, 'Quality System Manual (QSM)', '669283ae335ce6.67412635.pdf', 'application/pdf', '2024-07-13, 21:39', 'Uncontrolled Copy Version', 221);

-- --------------------------------------------------------

--
-- Table structure for table `whoweare`
--

CREATE TABLE `whoweare` (
  `user_id` int(200) NOT NULL,
  `WhoWeAre_Category` varchar(200) NOT NULL,
  `WhoWeAre_Category_Desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `whoweare`
--

INSERT INTO `whoweare` (`user_id`, `WhoWeAre_Category`, `WhoWeAre_Category_Desc`) VALUES
(1, 'Mission', 'To purposively link quality education, training, and research with community service in  			 pursuing the holistic development of individuals through innovative programs and productive  			 activities attuned to the needs of the global community.'),
(2, 'Vision', 'A community of dynamic and proactive scholars and learners within the Asia-Pacific region  			 upholding the high standards of excellence in education, research, and community service,  			 towards the attainment of a better quality of life.'),
(3, 'Goals', 'St.Dominic College of Asia aims to: 1. Prepare the students to become competent, productive and socially responsible professional. 2. Actively promote research and the utilization of new technology for the enhancement of individual competencies. 3. Assume leadership role in addressing the concerns of the academic community towards improving their quality of life.'),
(4, 'Core Values', 'St. Dominic College of Asia performs its various roles toward the achievement of its  			 Vision-Mission-Goals as it anchors itself on a four-point set of core values: S - service D - dynamism C - competence A - accountability'),
(5, 'Quality Policy', 'St. Dominic College of Asia commits to providing excellent academic and support  			 services that exceed the expectations of all stakeholders as the College continuously  			 develops and sustains the effectiveness of its quality management system.');

-- --------------------------------------------------------

--
-- Table structure for table `whoweare_new`
--

CREATE TABLE `whoweare_new` (
  `ID_WhoWeAre` int(100) NOT NULL,
  `Mission_Title` varchar(100) NOT NULL,
  `Mission_Description` varchar(1000) NOT NULL,
  `Vision_Title` varchar(100) NOT NULL,
  `Vision_Description` varchar(1000) NOT NULL,
  `Goals_Title` varchar(100) NOT NULL,
  `Goals_Description_0` varchar(1000) NOT NULL,
  `Goals_Description_1` varchar(1000) NOT NULL,
  `Goals_Description_2` varchar(1000) NOT NULL,
  `Goals_Description_3` varchar(1000) NOT NULL,
  `Core_Values_Title` varchar(100) NOT NULL,
  `Core_Values_Description_0` varchar(1000) NOT NULL,
  `Core_Values_Description_1` varchar(1000) NOT NULL,
  `Core_Values_Description_2` varchar(1000) NOT NULL,
  `Core_Values_Description_3` varchar(1000) NOT NULL,
  `Core_Values_Description_4` varchar(1000) NOT NULL,
  `Quality_Policy_Title` varchar(100) NOT NULL,
  `Quality_Policy_Description` varchar(1000) NOT NULL,
  `Quality_Objectives_Title` varchar(100) NOT NULL,
  `Quality_Objectives_Description_1` varchar(1000) NOT NULL,
  `Quality_Objectives_Description_2` varchar(1000) NOT NULL,
  `Quality_Objectives_Description_3` varchar(1000) NOT NULL,
  `Quality_Objectives_Description_4` varchar(1000) NOT NULL,
  `Quality_Objectives_Description_5` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `whoweare_new`
--

INSERT INTO `whoweare_new` (`ID_WhoWeAre`, `Mission_Title`, `Mission_Description`, `Vision_Title`, `Vision_Description`, `Goals_Title`, `Goals_Description_0`, `Goals_Description_1`, `Goals_Description_2`, `Goals_Description_3`, `Core_Values_Title`, `Core_Values_Description_0`, `Core_Values_Description_1`, `Core_Values_Description_2`, `Core_Values_Description_3`, `Core_Values_Description_4`, `Quality_Policy_Title`, `Quality_Policy_Description`, `Quality_Objectives_Title`, `Quality_Objectives_Description_1`, `Quality_Objectives_Description_2`, `Quality_Objectives_Description_3`, `Quality_Objectives_Description_4`, `Quality_Objectives_Description_5`) VALUES
(1, 'Mission', 'To purposively link quality education, training, and research with community service in pursuing the holistic development of individuals through innovative programs and productive activities attuned to the needs of the global community.', 'Vision', 'A community of dynamic and proactive scholars and learners within the Asia-Pacific region upholding the high standards of excellence in education, research, and community service, towards the attainment of a better quality of life.', 'Goals', 'St.Dominic College of Asia aims to:', '1. Prepare the students to become competent, productive and socially responsible professional.', '2. Actively promote research and the utilization of new technology for the enhancement of individual competencies.', '3. Assume leadership role in addressing the concerns of the academic community towards improving their quality of life.', 'Core Values', 'St. Dominic College of Asia performs its various roles toward the achievement of its Vision-Mission-Goals as it anchors itself on a four-point set of core values:', 'S - service', 'D - dynamism', 'C - competence', 'A - accountability', 'Quality Policy', 'St. Dominic College of Asia commits to providing excellent academic and support services that exceed the expectations of all stakeholders as the College continuously develops and sustains the effectiveness of its quality management system.', 'Quality Objectives', '1. To achieve excellence in academic programs and projects guided by the College Vision - Mission, and in compliance with CHED, DepEd, and TESDA requirements as well as those standards observed by duly accredited educational institutions.', '2. To establish, implement and maintain effective and efficient quality management system.', '3. To assume leadership role in improving the quality of life of the people by engaging SDCA stakeholders in meaningful community services.', '4. To focus on its task of revolutionizing education by instilling creativity and innovation among the faculty members, students, and administrative staff working collaboratively in enhancing the culture of research in the College.', '5. To identify, nurture and enhance human, physical and financial resources for productivity and sustainability.');

-- --------------------------------------------------------

--
-- Table structure for table `x_auditors`
--

CREATE TABLE `x_auditors` (
  `ID_Auditor` int(200) NOT NULL,
  `Name_Of_Auditor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `x_auditors`
--

INSERT INTO `x_auditors` (`ID_Auditor`, `Name_Of_Auditor`) VALUES
(1, 'Alvin Jason A. Virata'),
(2, 'Jonathan A. Kupahu'),
(3, 'Liezl E. Abad'),
(4, 'Winterson C. Ambion');

-- --------------------------------------------------------

--
-- Table structure for table `y1_user_logs`
--

CREATE TABLE `y1_user_logs` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL,
  `UR_Code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y1_user_logs`
--

INSERT INTO `y1_user_logs` (`ID`, `Date_and_Time_of_Action`, `Action_Made`, `Username`, `User_Type`, `UR_Code`) VALUES
(762, '2024-05-31, 07:30:05', 'Logged In', 'superadmin', 'Super Admin', '10c08bbe09d3f7badbd3cbd0d24ffe4d'),
(763, '2024-05-31, 07:30:38', 'Logged In', 'admin2', 'Administrator', '016b7c0943f05f82234609f41cb09bf9'),
(764, '2024-05-31, 07:31:06', 'Logged In', 'requester', 'Requester', '204b9ab1f0a1f76cd9573c9451ba2196'),
(765, '2024-05-31, 07:32:08', 'Logged In', 'departmenthead', 'Department Head', 'cf5674c385cd78d4ead31baeeda3ea37'),
(766, '2024-05-31, 07:33:12', 'Logged In', 'directorforqaie', 'Director for QAIE', '270f56568170b203fb19cef3fcffb927'),
(767, '2024-05-31, 07:34:10', 'Logged In', 'qaiemgmtofficer', 'QAIE Management Officer', 'bfa429db16c7a059a8fe8a671de44da8'),
(768, '2024-05-31, 07:35:13', 'Logged In', 'documentcontroller', 'Document Controller', '8f794181789c000523773f8f9744bedc'),
(769, '2024-05-31, 07:36:07', 'Logged In', 'president', 'President', '887bef2ff92dfcee98f2099e5227a1a6'),
(775, '2024-07-13, 21:19:57', 'Logged In', 'requester', 'Requester', '117853766d60202c897b23984134d0aa'),
(776, '2024-07-13, 21:20:12', 'Logged In', 'departmenthead', 'Department Head', 'de3fc490d5288c77b879124f43de3e82'),
(777, '2024-07-13, 21:20:21', 'Logged In', 'directorforqaie', 'Director for QAIE', '61bd5aae2c32d285222454a5d2fdaa6e'),
(778, '2024-07-13, 21:20:29', 'Logged In', 'qaiemgmtofficer', 'QAIE Management Officer', 'f080f6cdd1b0f3fcfa39c4cf33fb402d'),
(779, '2024-07-13, 21:20:37', 'Logged In', 'documentcontroller', 'Document Controller', '9f7acdca605b59b0e16a1b90947cd8fc'),
(780, '2024-07-13, 21:20:43', 'Logged In', 'president', 'President', '097041cded905a0b5e8b0cd36dfa3778'),
(781, '2024-07-13, 21:20:51', 'Logged In', 'superadmin', 'Super Admin', '1951e2208a9215c343b68416a4f714c9'),
(782, '2024-07-13, 21:20:59', 'Logged In', 'admin2', 'Administrator', 'b3c0a9e495f069eb5f1d4492fc5939ad'),
(783, '2024-07-13, 21:24:36', 'Logged In', 'directorforqaie', 'Director for QAIE', 'e1c8c806df85b4401e2e790cbe8ded64'),
(784, '2024-07-13, 22:05:47', 'Logged In', 'requester', 'Requester', 'c8283fec262bcde58aa7c2690991acff'),
(785, '2024-07-13, 22:06:58', 'Logged In', 'departmenthead', 'Department Head', 'e94a86c7c743a453c69349a9920e60bf'),
(786, '2024-07-13, 22:07:30', 'Logged In', 'directorforqaie', 'Director for QAIE', '43891e9c0d612cc830947182167227d4'),
(787, '2024-07-13, 22:23:16', 'Logged In', 'directorforqaie', 'Director for QAIE', '1b2cdcc729d9b530159b784c194b7c31'),
(788, '2024-07-13, 23:37:23', 'Logged In', 'requester', 'Requester', '2cdb3d2ae512ae8fa5367b7d62e13817'),
(789, '2024-07-13, 23:38:32', 'Logged In', 'directorforqaie', 'Director for QAIE', 'c254b217a06e8cc5d087f4ceba50399c'),
(790, '2024-07-13, 23:54:37', 'Logged In', 'admin2', 'Administrator', '9bdfb0f2ed56a417371fb6a611ab1ddf');

-- --------------------------------------------------------

--
-- Table structure for table `y2_auditcalendarevents_logs`
--

CREATE TABLE `y2_auditcalendarevents_logs` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL,
  `title_I` varchar(200) NOT NULL,
  `color_I` varchar(200) NOT NULL,
  `start_I` varchar(200) NOT NULL,
  `end_I` varchar(200) NOT NULL,
  `UR_Code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y2_auditcalendarevents_logs`
--

INSERT INTO `y2_auditcalendarevents_logs` (`ID`, `Date_and_Time_of_Action`, `Action_Made`, `Username`, `User_Type`, `title_I`, `color_I`, `start_I`, `end_I`, `UR_Code`) VALUES
(1, '2024-10-13, 15:14:45', 'Updated Audit Calendar Event', 'johny', 'Document Controller', 'YAAAYasdasd', '#01fe0a', '2024-10-17 00:00:00', '2024-10-25 00:00:00', 'ebc52fae5b1c9faec7827806ddaa9019'),
(3, '2024-03-07, 21:23:29', 'Added Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Title Sample', '#004bfa', '2024-03-07 00:00:00', '2024-03-08 00:00:00', 'ddb1c9d24b0688128829fe4f20aaf0fc'),
(4, '2024-03-08, 00:08:45', 'Deleted Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Title Sample', '#004bfa', 'Thu Mar 07 2024 00:00:00 GMT+0000', 'Fri Mar 08 2024 00:00:00 GMT+0000', 'a8cc2df0945dc9935a92475ab776af4f'),
(5, '2024-04-26, 21:48:17', 'Added Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Accreditation Event', '#004bfa', '2024-04-26 00:00:00', '2024-04-27 00:00:00', '8aac2481a081d1d16a06ad1c3750aa01'),
(6, '2024-04-26, 21:48:51', 'Added Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Audit Event', '#ffdd00', '2024-04-27 00:00:00', '2024-04-28 00:00:00', '85a933ff963193ee2ed5161facf5b43e'),
(7, '2024-04-26, 21:49:20', 'Added Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Holiday', '#ff0d00', '2024-04-28 00:00:00', '2024-04-29 00:00:00', '3e6b2bb545c9d62e52195baff82349f5'),
(8, '2024-04-26, 21:49:29', 'Added Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Seminar Event', '#01fe0a', '2024-04-29 00:00:00', '2024-04-30 00:00:00', 'b557971f660dac763ded98c2001469ef'),
(9, '2024-04-28, 22:25:51', 'Deleted Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Accreditation Event', '#004bfa', 'Fri Apr 26 2024 07:00:00 GMT+0000', 'Fri Apr 26 2024 10:00:00 GMT+0000', '1c054e4ffab692a044a1ee3082f4d1f6'),
(10, '2024-04-28, 22:25:55', 'Deleted Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Audit Event', '#ffdd00', 'Sat Apr 27 2024 08:00:00 GMT+0000', 'Sat Apr 27 2024 11:00:00 GMT+0000', 'd003274670f9c81f135105cbaea7b048'),
(11, '2024-04-28, 22:25:59', 'Deleted Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Seminar Event', '#01fe0a', 'Mon Apr 29 2024 09:00:00 GMT+0000', 'Mon Apr 29 2024 12:00:00 GMT+0000', 'b5e20717ac9abd7b304f8d47b5d92f38'),
(12, '2024-04-28, 22:26:03', 'Deleted Audit Calendar Event', 'directorforqaie', 'Director for QAIE', 'Holiday', '#ff0d00', 'Sun Apr 28 2024 00:00:00 GMT+0000', 'Mon Apr 29 2024 00:00:00 GMT+0000', '01f04cfecb42117bfab56087c437e64b'),
(13, '2024-10-13, 15:15:38', 'Updated Audit Calendar Event', 'johny', 'Document Controller', 'YAAAYasdasd', '#ffdd00', '2024-10-17 00:00:00', '2024-10-25 00:00:00', '9d73a0d33d0d0ac5ad156b227f612d8e'),
(14, '2024-10-13, 15:15:51', 'Updated Audit Calendar Event', 'johny', 'Document Controller', 'YAAAYasdasd', '#01fe0a', '2024-10-17 00:00:00', '2024-10-25 00:00:00', '9f5b41163d6feddcf359bbbd40b10162'),
(15, '2024-10-13, 15:16:27', 'Updated Audit Calendar Event', 'johny', 'Document Controller', 'National Holiday', '#ff0d00', '2024-10-31 00:00:00', '2024-11-02 00:00:00', '04b4995c3bbfca91e99ed654f2ea548d'),
(16, '2024-10-13, 15:32:50', 'Deleted Audit Calendar Event', 'johny', 'Document Controller', '', '#01fe0a', '2024-10-17 00:00:00', '2024-10-25 00:00:00', 'c1d53bb6b77bfab44dbf1ea87c5d498a'),
(17, '2024-10-20, 20:11:21', 'Deleted Audit Calendar Event', 'documentcontroller', 'Document Controller', '', '#004bfa', '2024-10-07 00:00:00', '2024-10-08 00:00:00', 'd9d2f648f44d3ee2c40ac3b091d0dd47');

-- --------------------------------------------------------

--
-- Table structure for table `y2_auditcalendarevents_logs_new`
--

CREATE TABLE `y2_auditcalendarevents_logs_new` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL,
  `title_II` varchar(200) NOT NULL,
  `color_II` varchar(200) NOT NULL,
  `start_II` varchar(200) NOT NULL,
  `end_II` varchar(200) NOT NULL,
  `UR_Code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y2_auditcalendarevents_logs_new`
--

INSERT INTO `y2_auditcalendarevents_logs_new` (`ID`, `Date_and_Time_of_Action`, `Action_Made`, `Username`, `User_Type`, `title_II`, `color_II`, `start_II`, `end_II`, `UR_Code`) VALUES
(1, '2024-10-13, 15:14:45', 'Updated Audit Calendar Event', 'johny', 'Document Controller', 'YAAAYasdasd', '#01fe0a', '2024-10-17 00:00:00', '2024-10-25 00:00:00', 'ebc52fae5b1c9faec7827806ddaa9019'),
(2, '2024-10-13, 15:15:38', 'Updated Audit Calendar Event', 'johny', 'Document Controller', 'YAAAYasdasd', '#ffdd00', '2024-10-17 00:00:00', '2024-10-25 00:00:00', '9d73a0d33d0d0ac5ad156b227f612d8e'),
(3, '2024-10-13, 15:15:51', 'Updated Audit Calendar Event', 'johny', 'Document Controller', 'YAAAYasdasd', '#01fe0a', '2024-10-17 00:00:00', '2024-10-25 00:00:00', '9f5b41163d6feddcf359bbbd40b10162'),
(4, '2024-10-13, 15:16:27', 'Updated Audit Calendar Event', 'johny', 'Document Controller', 'National Holiday', '#ff0d00', '2024-10-31 00:00:00', '2024-11-02 00:00:00', '04b4995c3bbfca91e99ed654f2ea548d');

-- --------------------------------------------------------

--
-- Table structure for table `y3_auditcalendareventtypes_logs`
--

CREATE TABLE `y3_auditcalendareventtypes_logs` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL,
  `Color_of_Event_Type_I` varchar(200) NOT NULL,
  `Name_of_Event_Type_I` varchar(200) NOT NULL,
  `UR_Code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y3_auditcalendareventtypes_logs`
--

INSERT INTO `y3_auditcalendareventtypes_logs` (`ID`, `Date_and_Time_of_Action`, `Action_Made`, `Username`, `User_Type`, `Color_of_Event_Type_I`, `Name_of_Event_Type_I`, `UR_Code`) VALUES
(3, '2024-03-07, 21:24:27', 'Added Audit Calendar Event Type', 'directorforqaie', 'Director for QAIE', '#000000', 'Name of Event Type Sample', 'e2beb10a74ba1baac8733197c395a90c'),
(4, '2024-03-08, 00:08:52', 'Deleted Audit Calendar Event Type', 'directorforqaie', 'Director for QAIE', '#000000', 'Name of Event Type Sample', '1ba0aad6b7004ae2bbbc7322c1504d66');

-- --------------------------------------------------------

--
-- Table structure for table `y3_auditcalendareventtypes_logs_new`
--

CREATE TABLE `y3_auditcalendareventtypes_logs_new` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL,
  `Color_of_Event_Type_II` varchar(200) NOT NULL,
  `Name_of_Event_Type_II` varchar(200) NOT NULL,
  `UR_Code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `y4_nea_logs`
--

CREATE TABLE `y4_nea_logs` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL,
  `Image_I` varchar(200) NOT NULL,
  `Category_I` varchar(200) NOT NULL,
  `Title_I` varchar(200) NOT NULL,
  `Description_I` varchar(5000) NOT NULL,
  `Date_Uploaded_I` varchar(200) NOT NULL,
  `UR_Code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y4_nea_logs`
--

INSERT INTO `y4_nea_logs` (`ID`, `Date_and_Time_of_Action`, `Action_Made`, `Username`, `User_Type`, `Image_I`, `Category_I`, `Title_I`, `Description_I`, `Date_Uploaded_I`, `UR_Code`) VALUES
(156, '2024-05-12, 22:05:33', 'Added News/Event/Announcement', 'directorforqaie', 'Director for QAIE', 'f58612308c7fc0e254d4c4cbaf060d94.png', 'News', 'News', 'News', '05/12/2024', '9c38bf6fee1127c65cdd64fcb88db6a5'),
(157, '2024-05-12, 22:05:55', 'Added News/Event/Announcement', 'directorforqaie', 'Director for QAIE', '3807c979cbc5ca3818ffe9e8fe01a588.jpg', 'Event', 'Event', 'Event', '05/12/2024', '4755e55ee6fcf8516ce3fb80d7cb4690'),
(158, '2024-05-12, 22:06:22', 'Added News/Event/Announcement', 'directorforqaie', 'Director for QAIE', '4355d6736d2c14d96cee4e1db7f652f8.jpg', 'Announcement', 'Announcement', 'Announcement', '05/12/2024', '7dcf2e9d9682131d84b5b611a7f525b5');

-- --------------------------------------------------------

--
-- Table structure for table `y4_nea_logs_new`
--

CREATE TABLE `y4_nea_logs_new` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL,
  `Image_II` varchar(200) NOT NULL,
  `Category_II` varchar(200) NOT NULL,
  `Title_II` varchar(200) NOT NULL,
  `Description_II` varchar(5000) NOT NULL,
  `Date_Uploaded_II` varchar(200) NOT NULL,
  `UR_Code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `y5_afsforms_logs`
--

CREATE TABLE `y5_afsforms_logs` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `y6_dcrforms_logs`
--

CREATE TABLE `y6_dcrforms_logs` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y6_dcrforms_logs`
--

INSERT INTO `y6_dcrforms_logs` (`ID`, `Date_and_Time_of_Action`, `Action_Made`, `Username`, `User_Type`) VALUES
(1, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(5, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(6, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(7, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(8, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(9, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(10, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(11, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(12, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(13, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(14, '', 'Deleted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(15, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(16, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(17, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(18, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(19, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(20, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(21, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(22, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(23, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(24, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(25, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(26, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(27, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(28, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(29, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(30, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(31, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(32, '', 'Deleted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(33, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(34, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(35, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(36, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(37, '', 'Deleted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(38, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(39, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(40, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(41, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(42, '', 'Deleted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(43, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(44, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(45, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(46, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(47, '', 'Deleted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(48, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(49, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(50, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(51, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(52, '', 'Deleted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(53, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(54, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(55, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(56, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(57, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(58, '', 'Deleted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(59, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(60, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(61, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(62, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(63, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(64, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(65, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(66, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(67, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(68, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(69, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(70, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(71, '', 'Deleted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(72, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(73, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(74, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(75, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(76, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(77, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(78, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(79, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(80, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(81, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(82, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(83, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(84, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(85, '', 'Submitted Document Change Request Form', 'departmenthead', 'Department Head'),
(86, '', 'Submitted Document Change Request Form', 'documentcontroller', 'Document Controller'),
(87, '', 'Submitted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(88, '', 'Deleted Document Change Request Form', 'directorforqaie', 'Director for QAIE'),
(89, '', 'Submitted Document Change Request Form', 'superadmin', 'Requester'),
(90, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(91, '', 'Submitted Document Change Request Form', 'requester', 'Requester'),
(92, '', 'Submitted Document Change Request Form', 'requester', 'Requester');

-- --------------------------------------------------------

--
-- Table structure for table `y7_asr_logs`
--

CREATE TABLE `y7_asr_logs` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL,
  `Department_I` varchar(200) NOT NULL,
  `Office_I` varchar(200) NOT NULL,
  `Date_Uploaded_I` varchar(200) NOT NULL,
  `UR_Code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y7_asr_logs`
--

INSERT INTO `y7_asr_logs` (`ID`, `Date_and_Time_of_Action`, `Action_Made`, `Username`, `User_Type`, `Department_I`, `Office_I`, `Date_Uploaded_I`, `UR_Code`) VALUES
(4, '2024-03-07, 21:26:21', 'Added Audit Summary Report', 'directorforqaie', 'Director for QAIE', 'Academics', 'SBCS', '2024-03-07, 21:26:21', 'c6b8bc870607fc12ebc413d6a4887f1f'),
(5, '2024-03-08, 00:09:09', 'Deleted Audit Summary Report', 'directorforqaie', 'Director for QAIE', 'Academics', 'SBCS', '2024-03-07, 21:26:21', '632d7ea3a517676f9a3b17598ec3d09c'),
(6, '2024-04-26, 20:38:58', 'Deleted Audit Summary Report', 'directorforqaie', 'Director for QAIE', 'Finance', 'BDO', '2022-06-16, 06:00:00', 'ca4abf3235015c5acd35cede63f45bb0'),
(7, '2024-04-26, 20:39:31', 'Added Audit Summary Report', 'directorforqaie', 'Director for QAIE', 'Academics', 'SBCS', '2024-04-26, 20:39:31', '9a7786001176f211814bffa8183a1e68'),
(8, '2024-07-13, 21:32:46', 'Deleted Audit Summary Report', 'directorforqaie', 'Director for QAIE', 'Academics', 'SBCS', '2024-04-26, 20:39:31', '59ba4e07d577ede0877077ca94d8e4d2'),
(9, '2024-07-13, 21:34:11', 'Added Audit Summary Report', 'directorforqaie', 'Director for QAIE', 'Finance', 'BDO', '2024-07-13, 21:34:11', '4ba3bd38f0df01ceb76816a9a3e0ff58');

-- --------------------------------------------------------

--
-- Table structure for table `y8_emanuals_logs`
--

CREATE TABLE `y8_emanuals_logs` (
  `ID` int(200) NOT NULL,
  `Date_and_Time_of_Action` varchar(200) NOT NULL,
  `Action_Made` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `User_Type` varchar(200) NOT NULL,
  `File_Title_I` varchar(200) NOT NULL,
  `Date_Uploaded_I` varchar(200) NOT NULL,
  `Emanual_Type_I` varchar(200) NOT NULL,
  `UR_Code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y8_emanuals_logs`
--

INSERT INTO `y8_emanuals_logs` (`ID`, `Date_and_Time_of_Action`, `Action_Made`, `Username`, `User_Type`, `File_Title_I`, `Date_Uploaded_I`, `Emanual_Type_I`, `UR_Code`) VALUES
(5, '2024-04-05, 18:56:38', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Data Privacy Manual (DPM)', '2024-04-05, 18:56', 'Master Copy Version', '55cc70f68fde43c9ad82b6dede56d3ea'),
(6, '2024-04-05, 21:35:56', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Test', '2024-04-05, 21:35', 'Ryan Version', '9a7d89ffb63d85eea31ccdfa7981ab66'),
(7, '2024-04-05, 23:43:25', 'Deleted E-Manual', 'directorforqaie', 'Director for QAIE', 'Test', '2024-04-05, 21:35', '', '0cd7376efcfe8c17279bb1218d5e705c'),
(8, '2024-04-08, 14:38:13', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Sample', '2024-04-08, 14:38', 'QD', '521654099040a779ea630077b687bfbd'),
(9, '2024-04-08, 14:39:58', 'Deleted E-Manual', 'directorforqaie', 'Director for QAIE', 'Sample', '2024-04-08, 14:38', '', '90352e40035eebedae114e72f0fe7549'),
(10, '2024-04-08, 14:45:54', 'Added E-Manual', 'qaiemgmtofficer', 'QAIE Management Officer', 'Sample', '2024-04-08, 14:45', '', 'c1d41c55cb3a3e45f2771db5531face2'),
(11, '2024-04-08, 14:46:18', 'Deleted E-Manual', 'qaiemgmtofficer', 'QAIE Management Officer', 'Sample', '2024-04-08, 14:45', '', '28bcdd14db0613998df2a26a60b74025'),
(12, '2024-04-08, 14:46:28', 'Added E-Manual', 'qaiemgmtofficer', 'QAIE Management Officer', 'Sample', '2024-04-08, 14:46', '', 'd088d046fa0f1324f3d5d78c9a37898f'),
(13, '2024-04-08, 14:51:42', 'Deleted E-Manual', 'qaiemgmtofficer', 'QAIE Management Officer', 'Sample', '2024-04-08, 14:46', '', 'e83da46508d4610912447c45b038f0ca'),
(14, '2024-04-08, 14:55:00', 'Deleted E-Manual', 'qaiemgmtofficer', 'QAIE Management Officer', 'Sample', '2024-04-08, 14:52', '', 'b4ee2c2c2ac43aedf0163cc26782a9db'),
(15, '2024-04-08, 15:03:11', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'Sample', '2024-04-08, 15:03', 'DC', '866fa5944d9843551ba36853ec95dba8'),
(16, '2024-04-08, 15:05:35', 'Deleted E-Manual', 'documentcontroller', 'Document Controller', 'Sample', '2024-04-08, 15:03', '', 'e17e7d0016a03d44498a6c87665d3e32'),
(17, '2024-04-08, 19:20:45', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'A QAIE Director E Manual 1', '2024-04-08, 19:20', 'QD', 'df6817aa718a0605956db76090964a88'),
(18, '2024-04-08, 19:21:41', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'A QAIE Director E Manual 2', '2024-04-08, 19:21', 'QD', 'c49b51fe21a7a39c47d4cdf712111f84'),
(19, '2024-04-08, 19:23:18', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'A QAIE Director E Manual 3', '2024-04-08, 19:23', 'QD', 'b2f199f22896c344733af103c4c80006'),
(20, '2024-04-08, 19:23:56', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'QAIE Director E Manual 1', '2024-04-08, 19:23', 'QD', 'a32c5025cc669754f95ce9cb1c9cf3f2'),
(21, '2024-04-08, 19:24:54', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'QAIE Director E Manual 2', '2024-04-08, 19:24', 'QD', 'eccde9fd3b7aef581354618291b081c7'),
(22, '2024-04-08, 19:25:40', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'QAIE Director E Manual 3', '2024-04-08, 19:25', 'QD', '77ac360cb9a3c75a117a0e97935ad674'),
(23, '2024-04-08, 19:26:21', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Z QAIE Director E Manual 1', '2024-04-08, 19:26', 'QD', 'c850de992828fbf7054cb60fcf35f785'),
(24, '2024-04-08, 19:27:04', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Z QAIE Director E Manual 2', '2024-04-08, 19:27', 'QD', '371e40d7b3f3fa2e9bd9a8277708ef01'),
(25, '2024-04-08, 19:27:54', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Z QAIE Director E Manual 3', '2024-04-08, 19:27', 'QD', 'b1f7bb4608f4d35c71b95667aa01d1cd'),
(26, '2024-04-08, 20:41:51', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'A Document Controller E Manual 1', '2024-04-08, 20:41', 'DC', '8b0ec9d2cfccc7b2a72a38d55d914e24'),
(27, '2024-04-08, 20:42:29', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'A Document Controller E Manual 2', '2024-04-08, 20:42', 'DC', 'ae1e7c1a805e0f01312ebc779aaff68a'),
(28, '2024-04-08, 20:43:51', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'A Document Controller E Manual 3', '2024-04-08, 20:43', 'DC', 'f50b407e436dd44907c978920070db45'),
(29, '2024-04-08, 20:44:27', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'Document Controller E Manual 1', '2024-04-08, 20:44', 'DC', '2414af53fe41ef095ecd39f59c8a30e9'),
(30, '2024-04-08, 20:45:03', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'Document Controller E Manual 2', '2024-04-08, 20:45', 'DC', 'f459dfd7e9b4e55b60c05c04d52e0a38'),
(31, '2024-04-08, 20:45:45', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'Document Controller E Manual 3', '2024-04-08, 20:45', 'DC', '0b87bcdd8cda5949a81ba0b452b186a2'),
(32, '2024-04-08, 20:46:36', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'Z Document Controller E Manual 1', '2024-04-08, 20:46', 'DC', 'fc78bd6c2ce42c25a49f6e6da36edda8'),
(33, '2024-04-08, 20:47:54', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'Z Document Controller E Manual 2', '2024-04-08, 20:47', 'DC', 'eba13591cc7112f35b8db259bf9147db'),
(34, '2024-04-08, 20:48:36', 'Added E-Manual', 'documentcontroller', 'Document Controller', 'Z Document Controller E Manual 3', '2024-04-08, 20:48', 'DC', 'e82dc9a59e1866fc92071251370a1560'),
(35, '2024-07-13, 21:37:09', 'Deleted E-Manual', 'directorforqaie', 'Director for QAIE', 'Academic Affairs Manual (AAM)', '2022-09-06, 22:10', '', '49f48efd5e247018f06c9f621e6d9b33'),
(36, '2024-07-13, 21:37:12', 'Deleted E-Manual', 'directorforqaie', 'Director for QAIE', 'Data Privacy Manual (DPM)', '2024-04-05, 18:56', '', '0a9180f690888592e0b15104759e1ed9'),
(37, '2024-07-13, 21:37:54', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Academic Affairs Manual (AAM)', '2024-07-13, 21:37', 'Uncontrolled Copy Version', '58d47e89843fbb7e2b9d38f442ecc023'),
(38, '2024-07-13, 21:38:23', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Administrative Affairs Manual (ADM)', '2024-07-13, 21:38', 'Uncontrolled Copy Version', 'bc10a85126f0eadec542c1f75943dcdf'),
(39, '2024-07-13, 21:38:46', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Data Privacy Manual (DPM)', '2024-07-13, 21:38', 'Uncontrolled Copy Version', '7d25501ce7288da85f2b563b9390959c'),
(40, '2024-07-13, 21:39:05', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Financial Affairs Manual (FAM)', '2024-07-13, 21:39', 'Uncontrolled Copy Version', '79666cce1a01a3060b6a5dce6d43a3be'),
(41, '2024-07-13, 21:39:34', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Job Description Manual (JDM)', '2024-07-13, 21:39', 'Uncontrolled Copy Version', '91ac44aa3aaf2f8971a29aa2a6d71ef4'),
(42, '2024-07-13, 21:39:58', 'Added E-Manual', 'directorforqaie', 'Director for QAIE', 'Quality System Manual (QSM)', '2024-07-13, 21:39', 'Uncontrolled Copy Version', 'a17e6695464e41a6221613526c66d340');

-- --------------------------------------------------------

--
-- Table structure for table `z_department`
--

CREATE TABLE `z_department` (
  `ID_Department` int(200) NOT NULL,
  `Department_Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_department`
--

INSERT INTO `z_department` (`ID_Department`, `Department_Name`) VALUES
(1, 'Energen'),
(3, 'Academics'),
(4, 'Administrative'),
(5, 'ASF'),
(6, 'DSAS'),
(7, 'Finance'),
(8, 'joey'),
(9, 'yoyoyoyoyo');

-- --------------------------------------------------------

--
-- Table structure for table `z_office`
--

CREATE TABLE `z_office` (
  `ID_Office` int(200) NOT NULL,
  `Office_Name` varchar(200) NOT NULL,
  `Department_Category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_office`
--

INSERT INTO `z_office` (`ID_Office`, `Office_Name`, `Department_Category`) VALUES
(0, 'asdasdasd', 'yoyoyoyoyo'),
(3, 'BEd', 'Academics'),
(4, 'SASE', 'Academics'),
(5, 'SBCS', 'Academics'),
(6, 'SHS', 'Academics'),
(7, 'SHSP', 'Academics'),
(8, 'SIHTM', 'Academics'),
(9, 'BAO', 'Administrative'),
(10, 'CorpComm', 'Administrative'),
(11, 'HRO', 'Administrative'),
(12, 'HSO', 'Administrative'),
(13, 'ICT', 'Administrative'),
(14, 'TAGS', 'Administrative'),
(15, 'CESO', 'ASF'),
(16, 'DLRC', 'ASF'),
(17, 'Linkages', 'ASF'),
(18, 'RDO', 'ASF'),
(19, 'Registrar', 'ASF'),
(20, 'Admission', 'DSAS'),
(21, 'Alumni', 'DSAS'),
(22, 'Campus Ministry', 'DSAS'),
(23, 'ISPAO', 'DSAS'),
(24, 'Student Development', 'DSAS'),
(25, 'Student Discipline', 'DSAS'),
(26, 'Student Wellness', 'DSAS'),
(27, 'Accounting', 'Finance'),
(28, 'BDO', 'Finance'),
(29, 'PMO', 'Finance'),
(30, 'Purchasing', 'Finance'),
(31, 'Treasury', 'Finance'),
(32, 'All', 'All');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auditee_afsform`
--
ALTER TABLE `auditee_afsform`
  ADD PRIMARY KEY (`AFSForm_ID`);

--
-- Indexes for table `auditee_afsform_2_desc`
--
ALTER TABLE `auditee_afsform_2_desc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `auditee_afsform_desc`
--
ALTER TABLE `auditee_afsform_desc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `emanual_types`
--
ALTER TABLE `emanual_types`
  ADD PRIMARY KEY (`ID_Emanual_Type`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`ID_Event_Type`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder_access`
--
ALTER TABLE `folder_access`
  ADD PRIMARY KEY (`folder_id`,`ID_Office`),
  ADD KEY `ID_Office` (`ID_Office`);

--
-- Indexes for table `folder_offices`
--
ALTER TABLE `folder_offices`
  ADD PRIMARY KEY (`folder_id`,`ID_Office`),
  ADD KEY `ID_Office` (`ID_Office`);

--
-- Indexes for table `home_nea_datatable`
--
ALTER TABLE `home_nea_datatable`
  ADD PRIMARY KEY (`ID_NEA`);

--
-- Indexes for table `qaiedirector_dcrform`
--
ALTER TABLE `qaiedirector_dcrform`
  ADD PRIMARY KEY (`Year_Generated`,`DCRForm_ID`);

--
-- Indexes for table `qaiedirector_dcrform_desc`
--
ALTER TABLE `qaiedirector_dcrform_desc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id_storage`);

--
-- Indexes for table `storage_asr`
--
ALTER TABLE `storage_asr`
  ADD PRIMARY KEY (`File_ID`);

--
-- Indexes for table `storage_documentations`
--
ALTER TABLE `storage_documentations`
  ADD PRIMARY KEY (`File_ID`);

--
-- Indexes for table `storage_emanuals`
--
ALTER TABLE `storage_emanuals`
  ADD PRIMARY KEY (`File_ID`);

--
-- Indexes for table `whoweare`
--
ALTER TABLE `whoweare`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `whoweare_new`
--
ALTER TABLE `whoweare_new`
  ADD PRIMARY KEY (`ID_WhoWeAre`);

--
-- Indexes for table `x_auditors`
--
ALTER TABLE `x_auditors`
  ADD PRIMARY KEY (`ID_Auditor`);

--
-- Indexes for table `y1_user_logs`
--
ALTER TABLE `y1_user_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y2_auditcalendarevents_logs`
--
ALTER TABLE `y2_auditcalendarevents_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y2_auditcalendarevents_logs_new`
--
ALTER TABLE `y2_auditcalendarevents_logs_new`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y3_auditcalendareventtypes_logs`
--
ALTER TABLE `y3_auditcalendareventtypes_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y3_auditcalendareventtypes_logs_new`
--
ALTER TABLE `y3_auditcalendareventtypes_logs_new`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y4_nea_logs`
--
ALTER TABLE `y4_nea_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y4_nea_logs_new`
--
ALTER TABLE `y4_nea_logs_new`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y5_afsforms_logs`
--
ALTER TABLE `y5_afsforms_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y6_dcrforms_logs`
--
ALTER TABLE `y6_dcrforms_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y7_asr_logs`
--
ALTER TABLE `y7_asr_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `y8_emanuals_logs`
--
ALTER TABLE `y8_emanuals_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `z_department`
--
ALTER TABLE `z_department`
  ADD PRIMARY KEY (`ID_Department`);

--
-- Indexes for table `z_office`
--
ALTER TABLE `z_office`
  ADD PRIMARY KEY (`ID_Office`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_users`
--
ALTER TABLE `all_users`
  MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `qaiedirector_dcrform`
--
ALTER TABLE `qaiedirector_dcrform`
  MODIFY `DCRForm_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id_storage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `y2_auditcalendarevents_logs`
--
ALTER TABLE `y2_auditcalendarevents_logs`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `y2_auditcalendarevents_logs_new`
--
ALTER TABLE `y2_auditcalendarevents_logs_new`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `y6_dcrforms_logs`
--
ALTER TABLE `y6_dcrforms_logs`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `z_department`
--
ALTER TABLE `z_department`
  MODIFY `ID_Department` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
