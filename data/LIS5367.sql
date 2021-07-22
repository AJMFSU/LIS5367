-- --------------------------------------------------------
-- Host:                         ocp-data.cggta8te9lhb.us-east-1.rds.amazonaws.com
-- Server version:               10.4.13-MariaDB-log - Source distribution
-- Server OS:                    Linux
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for OCPUbuntu
CREATE DATABASE IF NOT EXISTS `OCPUbuntu` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `OCPUbuntu`;

-- Dumping structure for table OCPUbuntu.assignments
CREATE TABLE IF NOT EXISTS `assignments` (
  `assignmentID` char(11) NOT NULL DEFAULT '0',
  `assignmentName` varchar(150) NOT NULL DEFAULT '',
  `standardID` char(8) NOT NULL DEFAULT '',
  `levelID` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`assignmentID`),
  KEY `FK_assignments_levels` (`levelID`),
  KEY `FK_assignments_Standards` (`standardID`),
  CONSTRAINT `FK_assignments_Standards` FOREIGN KEY (`standardID`) REFERENCES `Standards` (`standardID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_assignments_levels` FOREIGN KEY (`levelID`) REFERENCES `levels` (`levelID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.assignments: ~75 rows (approximately)
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` (`assignmentID`, `assignmentName`, `standardID`, `levelID`) VALUES
	('2178832', 'Lab 1.3.2 SAM Concepts Lab Exam Mobile Devices (2178832)', '69.04.00', '1'),
	('343173', '1.1.3 - Explore the Lab Interface (343173)', '69.17.00', '1'),
	('343174', '1.1.5 - Connect Internal Components (343174)', '69.07.00', '1'),
	('343176', 'Lab 1.4.2 - Use Shell Commands (343176)', '83.32.00', '1'),
	('343177', 'Lab 1.4.3 - Shut Down a Linux System (343177)', '84.39.00', '1'),
	('343183', 'Lab 1.5.3 - Manage Files (343183)', '84.48.00', '1'),
	('343244', 'Lab 1.1.B.21 - Connect a KVM Switch (20 minutes) (343244)', '84.43.00', '1'),
	('343248', 'Lab 1.6.5 - Manage Devices (343248)', '84.46.00', '1'),
	('343325', 'Computer Fundamentals Module 2 Review (343325)', '82.19.00', '1'),
	('343327', 'Computer Fundamentals Module 4 Review (343327)', '69.03.00', '2'),
	('343329', 'Computer Fundamentals Module 6 Review (343329)', '69.02.00', '1'),
	('343331', 'Computer Fundamentals Module 8 Review (343331)', '84.41.00', '1'),
	('343354', 'Hands-On Activity:  Web-filter (343354)', '69.05.00', '2'),
	('343404', 'Unit 1 Computing Fundamentals Review (343404)', '69.01.00', '3'),
	('393288', 'Lab 1.1.A1.1: Gather and Record System Information  (393288)', '69.15.00', '3'),
	('393292', 'Lab 1.1.A1.7: igate Computer Teardown Procedures  (393292)', '84.33.00', '1'),
	('393301', 'Lab 1.1.A1.10: Install Components Inside Case (30 minutes) (393301)', '69.10.00', '3'),
	('393313', 'Lab 1.1.A2.9: How to Select a Desktop Motherboard (40 minutes) (393313)', '69.13.00', '1'),
	('393332', 'Lab 1.1.A3.2: Reviewing Motherboard Documentation (15 minutes) (393332)', '69.08.00', '1'),
	('393347', 'Lab 1.6.3: Diagnose Simple Hardware Boot Problems (393347)', '82.24.00', '1'),
	('393348', 'Lab 1.6.2: Troubleshoot General Computer Problems (393348)', '69.14.00', '1'),
	('393349', 'Lab 1.6.4: Use Laptop Diagnostic Software (393349)', '83.31.00', '1'),
	('393352', 'Lab 1.1.A4.1: Identify Power Supply Connectors (30 minutes) (393352)', '69.09.00', '3'),
	('393354', 'Lab 1.6.1: Testing Mode: Use Good Troubleshooting Methodology (393354)', '82.25.00', '1'),
	('393370', 'Lab 1.1.C.15: Testing Mode: Install Hardware RAID (30 minutes) (393370)', '84.36.00', '1'),
	('393386', 'Lab 1.1.B.23: Plan a Customized System (45 minutes) (393386)', '69.12.00', '1'),
	('393387', 'Lab 1.1.B.17: Replace Failed Wireless Card in a Laptop (30 minutes) (393387)', '84.40.00', '1'),
	('393401', 'Lab 2.1.29: Set Up a Wireless Router (393401)', '83.29.00', '2'),
	('393409', 'Lab 2.1.24: Testing Mode: Connect a Computer to a Network (393409)', '83.30.00', '1'),
	('393410', 'Lab 2.1.25: Testing Mode: Install and Configure a SOHO Router (393410)', '82.21.00', '2'),
	('393412', 'Lab 2.1.11: Testing Mode: Identify Network Technologies (393412)', '83.28.00', '3'),
	('393413', 'Lab 2.1.35: Wi-Fi Security Protocols and Authentication Methods (393413)', '84.42.00', '1'),
	('393418', 'Lab 2.1.23: Compare Options for a Small Office or Home Office LAN (393418)', '83.27.00', '2'),
	('393423', 'Lab 2.1.1: Understand the OSI Model (393423)', '84.38.00', '1'),
	('393424', 'Lab 2.1.13: Convert Binary and Hexadecimal Numbers (393424)', '82.22.00', '2'),
	('393429', 'Lab 2.1.2: Testing Mode: Identify Cabling Standards and Technologies (393429)', '84.44.00', '1'),
	('393430', 'Lab 2.1.10: Testing Mode: Select and Install Network Hardware (393430)', '82.20.00', '1'),
	('393447', 'Lab 1.6.8: Testing Mode: Troubleshoot Mobile Devices (393447)', '82.26.00', '1'),
	('626694', 'Lab 1.4.4 - Operating Systems (626694)', '84.45.00', '1'),
	('626695', 'Lab 1.5.1 File Systems (626695)', '84.35.00', '1'),
	('626696', 'Lab 1.5.2 - File Management (626696)', '84.47.00', '1'),
	('626697', ' Lab 1.5.4 Training: Software (626697)', '84.49.00', '1'),
	('626698', 'Lab 1.5.7 Training Lesson - Software (626698)', '69.16.00', '1'),
	('626699', 'Lab 1.5.5 Training Lesson - Apps and applications (626699)', '84.50.00', '1'),
	('626700', 'Lab 1.5.6 Training Lesson - Apps and Applications (626700)', '82.23.00', '1'),
	('626701', 'Lab 1.7.1 - Cloud Computing (626701)', '84.37.00', '1'),
	('626702', 'Lab 1.8.2 Security (626702)', '84.34.00', '1'),
	('626703', 'Lab 1.8.1 Security (626703)', '69.06.00', '3'),
	('627045', 'Lab 1.3.1 Mobile Devices (627045)', '82.18.00', '1'),
	('627046', 'Lab 1.4.1 Operating Systems (627046)', '69.11.00', '1'),
	('8696567752', 'Replaced hard drive in laptop.', '69.01.00', '3');
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.earnedOCP
CREATE TABLE IF NOT EXISTS `earnedOCP` (
  `EarnID` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `date` date NOT NULL,
  `stuID` char(6) NOT NULL DEFAULT '',
  `assignmentID` varchar(11) NOT NULL DEFAULT '0',
  `Observation` longtext DEFAULT NULL,
  PRIMARY KEY (`EarnID`),
  KEY `FK_earnedOCP_students` (`stuID`),
  KEY `FK_earnedOCP_assignments` (`assignmentID`),
  CONSTRAINT `FK_earnedOCP_assignments` FOREIGN KEY (`assignmentID`) REFERENCES `assignments` (`assignmentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_earnedOCP_students` FOREIGN KEY (`stuID`) REFERENCES `students` (`stuID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.earnedOCP: ~37 rows (approximately)
/*!40000 ALTER TABLE `earnedOCP` DISABLE KEYS */;
INSERT INTO `earnedOCP` (`EarnID`, `date`, `stuID`, `assignmentID`, `Observation`) VALUES
	('1', '2021-07-01', '148834', '626697', NULL),
	('10', '2021-06-28', '460380', '393370', NULL),
	('13', '2021-06-28', '460380', '393387', NULL),
	('3', '2021-06-16', '460380', '343174', NULL),
	('4', '2021-06-18', '460380', '343244', NULL),
	('5', '2021-06-19', '460380', '393288', NULL),
	('6', '2021-06-28', '460380', '393301', NULL),
	('7', '2021-06-28', '460380', '393313', NULL),
	('8', '2021-06-28', '460380', '393332', NULL),
	('9', '2021-06-28', '460380', '393352', NULL),
	('968226223', '2021-07-21', '450738', '8696567752', 'Replaced hard drive in laptop.');
/*!40000 ALTER TABLE `earnedOCP` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.enrollment
CREATE TABLE IF NOT EXISTS `enrollment` (
  `enrollID` int(11) NOT NULL AUTO_INCREMENT,
  `termID` varchar(8) NOT NULL DEFAULT '',
  `stuID` varchar(6) NOT NULL DEFAULT '',
  `courseID` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollID`),
  UNIQUE KEY `stuID` (`stuID`),
  KEY `enrollID` (`enrollID`),
  KEY `FK_enrollment_terms` (`termID`),
  KEY `FK_enrollment_programs` (`courseID`),
  CONSTRAINT `FK_enrollment_programs` FOREIGN KEY (`courseID`) REFERENCES `programs` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_enrollment_students` FOREIGN KEY (`stuID`) REFERENCES `students` (`stuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_enrollment_terms` FOREIGN KEY (`termID`) REFERENCES `terms` (`termID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.enrollment: ~12 rows (approximately)
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` (`enrollID`, `termID`, `stuID`, `courseID`) VALUES
	(1, 'fal20-21', '146763', 'Y100200'),
	(2, 'fal20-21', '294655', 'y100200'),
	(3, 'fal20-21', '313788', 'y100200'),
	(4, 'sum21-22', '378320', 'y100200'),
	(5, 'fal20-21', '344124', 'y100200'),
	(6, 'fal20-21', '306883', 'y100200'),
	(7, 'sum21-22', '460380', 'y100200'),
	(8, 'fal20-21', '229921', 'y100200'),
	(9, 'sum21-22', '169064', 'y100200'),
	(10, 'sum21-22', '148834', 'Y100300'),
	(11, 'spr20-21', '349565', 'Y100300'),
	(12, 'spr20-21', '172717', 'Y100300');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.levels
CREATE TABLE IF NOT EXISTS `levels` (
  `levelID` char(1) NOT NULL DEFAULT '',
  `levelName` text NOT NULL,
  `levelDescription` text NOT NULL,
  PRIMARY KEY (`levelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.levels: ~5 rows (approximately)
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` (`levelID`, `levelName`, `levelDescription`) VALUES
	('1', 'One', 'Student can IDENTIFY and RECALL information about this Standard.'),
	('2', 'Two', 'Student UNDERSTANDS the concepts of this standard.'),
	('3', 'Three', 'Student can APPLY skills in this standard in a real-world scenario.'),
	('4', 'Four', 'Student can ANALYZE, EVALUATE, and CREATE solutions from this Standard.');
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.Observations
CREATE TABLE IF NOT EXISTS `Observations` (
  `observeID` timestamp NULL DEFAULT NULL,
  `stuID` char(6) DEFAULT NULL,
  `standardID` char(8) DEFAULT NULL,
  `levelID` char(1) DEFAULT NULL,
  `observationNotes` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table OCPUbuntu.Observations: ~4 rows (approximately)
/*!40000 ALTER TABLE `Observations` DISABLE KEYS */;
INSERT INTO `Observations` (`observeID`, `stuID`, `standardID`, `levelID`, `observationNotes`, `date`) VALUES
	(NULL, '344124', '69.01.11', '1', 'Installed printers for Mr williams', '2021-07-21'),
	(NULL, '344124', '69.01.11', '1', 'Installed printers for Mr williams', '2021-07-21'),
	(NULL, '344124', '69.01.01', '1', 'Installed PC for Mr williams', '2021-07-21'),
	(NULL, '344124', '69.01.02', '2', 'Witnessed Miles explain DNS to a classmate', '2021-07-21'),
	(NULL, '344124', '69.01.02', '2', 'Witnessed Miles explain DNS to a classmate', '2021-07-21');
/*!40000 ALTER TABLE `Observations` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.OCPs
CREATE TABLE IF NOT EXISTS `OCPs` (
  `ocpID` char(50) NOT NULL DEFAULT '',
  `ocpName` text DEFAULT NULL,
  `ocpDescription` text DEFAULT NULL,
  `courseID` char(7) NOT NULL,
  PRIMARY KEY (`ocpID`(7)),
  KEY `FK_OCPs_programs` (`courseID`),
  CONSTRAINT `FK_OCPs_programs` FOREIGN KEY (`courseID`) REFERENCES `programs` (`courseID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.OCPs: ~4 rows (approximately)
/*!40000 ALTER TABLE `OCPs` DISABLE KEYS */;
INSERT INTO `OCPs` (`ocpID`, `ocpName`, `ocpDescription`, `courseID`) VALUES
	('CTS0069', 'CSIT OCP D', 'Computer Security Technician', 'Y100200'),
	('CTS0082', 'CSIT OCP A', 'Computer Systems Technician', 'Y100200'),
	('CTS0083', 'CSIT OCP B', 'Computer Network Technician', 'Y100200'),
	('CTS0084', 'CSIT OCP C', 'Computer Networking Specialist', 'Y100200');
/*!40000 ALTER TABLE `OCPs` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.programs
CREATE TABLE IF NOT EXISTS `programs` (
  `courseID` char(7) NOT NULL,
  `courseName` varchar(50) DEFAULT NULL,
  `courseHours` int(11) DEFAULT NULL,
  PRIMARY KEY (`courseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.programs: ~2 rows (approximately)
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` (`courseID`, `courseName`, `courseHours`) VALUES
	('Y100200', 'Computer Systems and Information Technology', 900),
	('Y100300', 'Applied Cybersecurity', 750);
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.skills
CREATE TABLE IF NOT EXISTS `skills` (
  `skillID` text NOT NULL,
  `standardID` text NOT NULL,
  `skillDesc` text NOT NULL,
  PRIMARY KEY (`skillID`(8))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.skills: ~245 rows (approximately)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` (`skillID`, `standardID`, `skillDesc`) VALUES
	('69.01.01', '69.01.00', 'Categorize storage devices and backup media.'),
	('69.01.02', '69.01.00', 'Explain motherboard components types and features.'),
	('69.01.03', '69.01.00', 'Classify power supplies types and characteristics.'),
	('69.01.04', '69.01.00', 'Explain the purpose and characteristics of CPUs and their features.'),
	('69.01.05', '69.01.00', 'Explain cooling methods and devices.'),
	('69.01.06', '69.01.00', 'Compare and contrast memory types characteristics and their purpose.'),
	('69.01.07', '69.01.00', 'Distinguish between the different display devices and their characteristics.'),
	('69.01.08', '69.01.00', 'Install and configure peripherals and input devices.'),
	('69.01.09', '69.01.00', 'Summarize the function and types of adapter cards.'),
	('69.01.10', '69.01.00', 'Install configure and optimize laptop components and features.'),
	('69.01.11', '69.01.00', 'Install and configure printers.'),
	('69.01.12', '69.01.00', 'Explain advantages of using PCIe adapter cards.'),
	('69.01.13', '69.01.00', 'Configure tablets and mobile phones.'),
	('69.01.14', '69.01.00', 'Configure network printers using a static IP address.'),
	('69.02.01', '69.02.00', 'Explain the troubleshooting theory.'),
	('69.02.02', '69.02.00', 'Explain and interpret common hardware and operating system symptoms and their causes.'),
	('69.02.03', '69.02.00', 'Explain and interpret common operating system symptoms and their causes.'),
	('69.02.04', '69.02.00', 'Determine the troubleshooting methods and tools for printers.'),
	('69.02.05', '69.02.00', 'Explain and interpret common laptop issues and determine the appropriate basic troubleshooting method.'),
	('69.02.06', '69.02.00', 'Integrate common preventative maintenance techniques.'),
	('69.02.07', '69.02.00', 'Explain and interpret common software symptoms and their causes.'),
	('69.03.01', '69.03.00', 'Compare and contrast the different Windows Operating Systems from Windows 7 up and their features.'),
	('69.03.02', '69.03.00', 'Explain the difference in features of the various Windows versions from Windows 7 through Windows 10.'),
	('69.03.03', '69.03.00', 'Explain the process and steps to install and configure the Windows OS.'),
	('69.03.04', '69.03.00', 'Explain the basics of boot sequences methods and startup utilities including msconfig.'),
	('69.04.01', '69.04.00', 'Summarize the basics of networking fundamentals including technologies and devices.'),
	('69.04.02', '69.04.00', 'Summarize the basics of networking fundamentals including technologies and protocols.'),
	('69.04.03', '69.04.00', 'Categorize network cables and connectors and their implementations.'),
	('69.04.04', '69.04.00', 'Compare and contrast the different network types include SOHO networks.'),
	('69.05.01', '69.05.00', 'Explain the basic principles of security concepts and technologies (physical software social engineering).'),
	('69.05.02', '69.05.00', 'Explain and define security features.'),
	('69.06.01', '69.06.00', 'Explain the basic software security elements of a network including firewalls IDS and IPS.'),
	('69.06.02', '69.06.00', 'Explain how the human element plays a major role in network security including social engineering.'),
	('69.07.01', '69.07.00', 'Outline the purpose of appropriate safety and environmental procedures and given a scenario apply them.'),
	('69.07.02', '69.07.00', 'Given a problem demonstrate communication and technical skills to escalate the problem for a solution.'),
	('69.07.03', '69.07.00', 'Explain chain of custody for various scenarios.'),
	('69.08.01', '69.08.00', 'Locate comprehend and evaluate key elements of oral and written information.'),
	('69.08.02', '69.08.00', 'Draft revise and edit written documents using correct grammar punctuation and vocabulary.'),
	('69.08.03', '69.08.00', 'Present information formally and informally for specific purposes and audiences.'),
	('69.09.01', '69.09.00', 'Demonstrate knowledge of arithmetic operations.'),
	('69.09.02', '69.09.00', 'Analyze and apply data and measurements to solve problems and interpret documents.'),
	('69.09.03', '69.09.00', 'Construct charts/tables/graphs using functions and data.'),
	('69.10.01', '69.10.00', 'Install configure and maintain personal computer components.'),
	('69.10.02', '69.10.00', 'Detect problems troubleshoot and repair/replace personal computer components.'),
	('69.10.03', '69.10.00', 'Install configure detect problems troubleshoot and repair/replace laptop components.'),
	('69.10.04', '69.10.00', 'Explain and demonstrate the use of computer tools.'),
	('69.11.01', '69.11.00', 'Select the appropriate commands and options to troubleshoot and resolve problems.'),
	('69.11.02', '69.11.00', 'Differentiate between Operating System file structures.'),
	('69.11.03', '69.11.00', 'Given a scenario select and use system utilities/tools and evaluate the results.'),
	('69.11.04', '69.11.00', 'Evaluate and resolve common issues.'),
	('69.12.01', '69.12.00', 'Troubleshoot client-side connectivity issues using appropriate tools. '),
	('69.12.02', '69.12.00', 'Install and configure a small office home office (SOHO) network.'),
	('69.12.03', '69.12.00', 'Given a scenario prevent troubleshoot and remove viruses and malware. '),
	('69.12.04', '69.12.00', 'Implement security and troubleshoot common issues.'),
	('69.13.01', '69.13.00', 'Select and employ appropriate communication concepts and strategies to enhance oral and written communication in the workplace.'),
	('69.13.02', '69.13.00', 'Locate organize and reference written information from various sources.'),
	('69.13.03', '69.13.00', 'Design develop and deliver formal and informal presentations using appropriate media to engage and inform diverse audiences.'),
	('69.13.04', '69.13.00', 'Interpret verbal and nonverbal cues/behaviors that enhance communication.'),
	('69.13.05', '69.13.00', 'Apply active listening skills to obtain and clarify information.'),
	('69.13.06', '69.13.00', 'Develop and interpret tables and charts to support written and oral communications.'),
	('69.13.07', '69.13.00', 'Exhibit public relations skills that aid in achieving customer satisfaction.'),
	('69.14.01', '69.14.00', 'Employ critical thinking skills independently and in teams to solve problems and make decisions.'),
	('69.14.02', '69.14.00', 'Employ critical thinking and interpersonal skills to resolve conflicts.'),
	('69.14.03', '69.14.00', 'Identify and document workplace performance goals and monitor progress toward those goals. '),
	('69.14.04', '69.14.00', 'Conduct technical research to gather information necessary for decision-making.'),
	('69.15.01', '69.15.00', 'Use personal information management (PIM) applications to increase workplace efficiency.'),
	('69.15.02', '69.15.00', 'Employ technological tools to expedite workflow including word processing databases reports spreadsheets multimedia presentations electronic calendar contacts email and internet applications.'),
	('69.15.03', '69.15.00', 'Employ computer operations applications to access create manage integrate and store information.'),
	('69.15.04', '69.15.00', 'Employ collaborative/groupware applications to facilitate group work.'),
	('69.16.01', '69.16.00', 'Describe the nature and types of business organizations.'),
	('69.16.02', '69.16.00', 'Explain the effect of key organizational systems on performance and quality. '),
	('69.16.03', '69.16.00', 'List and describe quality control systems and/or practices common to the workplace.'),
	('69.16.04', '69.16.00', 'Explain the impact of the global economy on business organizations.'),
	('69.17.01', '69.17.00', 'Evaluate and justify decisions based on ethical reasoning.'),
	('69.17.02', '69.17.00', 'Evaluate alternative responses to workplace situations based on personal professional ethical legal responsibilities and employer policies.'),
	('69.17.03', '69.17.00', 'Identify and explain personal and long-term consequences of unethical or illegal behaviors in the workplace.'),
	('69.17.04', '69.17.00', 'Interpret and explain written organizational policies and procedures.'),
	('69.17.05', '69.17.00', 'Explain various types of software licensing.'),
	('82.18.01', '82.18.00', 'Explain how multiple networks are used in everyday life.'),
	('82.18.02', '82.18.00', 'Explain the topologies and devices used in a small-to-medium-sized business network.'),
	('82.18.03', '82.18.00', 'Explain the basic characteristics of a network that supports communication in a small-to-medium-sized business.'),
	('82.18.04', '82.18.00', 'Explain trends in networking that will affect the use of networks in small-to-medium-sized businesses.'),
	('82.18.05', '82.18.00', 'Explain the purpose of the IOS.'),
	('82.18.06', '82.18.00', 'Explain how to access and navigate the IOS to configure network devices.'),
	('82.18.07', '82.18.00', 'Describe the command structure of the IOS software.'),
	('82.18.08', '82.18.00', 'Configure hostnames on an IOS device using the CLI.'),
	('82.18.09', '82.18.00', 'Use IOS commands to limit access to device configurations.'),
	('82.18.10', '82.18.00', 'Use IOS commands to save the running configuration.'),
	('82.18.11', '82.18.00', 'Explain how devices communicate across network media.'),
	('82.18.12', '82.18.00', 'Configure a host device with an IP address.'),
	('82.19.01', '82.19.00', 'Explain how rules are used to facilitate communication.'),
	('82.19.02', '82.19.00', 'Explain the role of protocols and standards organizations in facilitating interoperability in network communications.'),
	('82.19.03', '82.19.00', 'Explain how devices on a LAN access resources in a small to medium-sized business network.'),
	('82.19.04', '82.19.00', 'Identify device connectivity options.'),
	('82.19.05', '82.19.00', 'Describe the purpose and functions of the physical layer in the network.'),
	('82.19.06', '82.19.00', 'Describe basic principles of the physical layer standards.'),
	('82.19.07', '82.19.00', 'Identify the basic characteristics of network cables and connector types.'),
	('82.19.08', '82.19.00', 'Build and terminate UTP cable used in Ethernet networks.'),
	('82.19.09', '82.19.00', 'Describe build and terminate fiber-optic cabling and its main advantages over other media.'),
	('82.19.10', '82.19.00', 'Describe wireless media.'),
	('82.19.11', '82.19.00', 'Select the appropriate media for a given requirement and connect devices.'),
	('82.19.12', '82.19.00', 'Describe the operation of the Ethernet sub layers.'),
	('82.19.13', '82.19.00', 'Identify the major fields of the Ethernet frame.'),
	('82.19.14', '82.19.00', 'Describe the purpose and characteristics of the Ethernet MAC address.'),
	('82.19.15', '82.19.00', 'Describe the purpose of ARP.'),
	('82.19.16', '82.19.00', 'Explain how ARP requests impact network and host performance.'),
	('82.19.17', '82.19.00', 'Explain basic switching concepts.'),
	('82.19.18', '82.19.00', 'Compare fixed configuration and modular switches.'),
	('82.20.01', '82.20.00', 'Explain how network layer protocols and services support communications across data networks.'),
	('82.20.02', '82.20.00', 'Explain how routers enable end-to-end connectivity in a small to medium-sized business network.'),
	('82.20.03', '82.20.00', 'Determine the appropriate device to route traffic in a small to medium-sized business network.'),
	('82.21.01', '82.21.00', 'Describe the purpose of the transport layer in managing the transportation of data in end-to-end communication.'),
	('82.21.02', '82.21.00', 'Describe characteristics of the TCP and UDP protocols including port numbers and their uses.'),
	('82.21.03', '82.21.00', 'Explain how TCP session establishment and termination processes facilitate reliable communication.'),
	('82.21.04', '82.21.00', 'Explain how TCP protocol data units are transmitted and acknowledged to guarantee delivery.'),
	('82.21.05', '82.21.00', 'Explain the UDP client processes to establish communication with a server.'),
	('82.21.06', '82.21.00', 'Determine whether high-reliability TCP transmissions or non-guaranteed UDP transmissions are best suited for common applications.'),
	('82.21.07', '82.21.00', 'Describe the structure of an IPv4 address.'),
	('82.21.08', '82.21.00', 'Describe the purpose of the subnet mask.'),
	('82.21.09', '82.21.00', 'Compare the characteristics and uses of the unicast broadcast and multicast IPv4 addresses.'),
	('82.21.10', '82.21.00', 'Compare the use of public address space and private address space.'),
	('82.21.11', '82.21.00', 'Explain the need for IPv6 addressing.'),
	('82.21.12', '82.21.00', 'Describe the representation of an IPv6 address.'),
	('82.21.13', '82.21.00', 'Describe types of IPv6 network addresses.'),
	('82.21.14', '82.21.00', 'Configure global unicast addresses.'),
	('82.21.15', '82.21.00', 'Describe multicast addresses.'),
	('82.21.16', '82.21.00', 'Describe the role of ICMP in an IP network. (Include IPv4 and IPv6).'),
	('82.21.17', '82.21.00', 'Use ping and trace route utilities to test network connectivity.'),
	('82.21.18', '82.21.00', 'Explain why routing is necessary for hosts on different networks to communicate.'),
	('82.21.19', '82.21.00', 'Describe IP as a communication protocol used to identify a single device on a network.'),
	('82.21.20', '82.21.00', 'Given a network and a subnet mask calculate the number of host addresses available.'),
	('82.21.21', '82.21.00', 'Calculate the necessary subnet mask in order to accommodate the requirements of a network.'),
	('82.21.22', '82.21.00', 'Describe the benefits of variable length subnet masking (VLSM).'),
	('82.22.01', '82.22.00', 'Explain how the functions of the application layer session layer and presentation layer work together to provide network services to end user applications.'),
	('82.22.02', '82.22.00', 'Describe how common application layer protocols interact with end user applications.'),
	('82.22.03', '82.22.00', 'Describe at a high level common application layer protocols that provide Internet services to end-users including WWW services and email.'),
	('82.22.04', '82.22.00', 'Describe application layer protocols that provide IP addressing services.'),
	('82.22.05', '82.22.00', 'Describe the features and operation of well-known application layer protocols that allow for file sharing services.'),
	('82.23.01', '82.23.00', 'Identify the devices and protocols used in a small network.'),
	('82.23.02', '82.23.00', 'Explain how a small network serves as the basis of larger networks.'),
	('82.23.03', '82.23.00', 'Describe the need for basic security measures on network devices.'),
	('82.23.04', '82.23.00', 'Identify security vulnerabilities and general mitigation techniques.'),
	('82.23.05', '82.23.00', 'Configure network devices with device hardening features to mitigate security threats.'),
	('82.23.06', '82.23.00', 'Use the output of ping and trace commands to establish relative network performance.'),
	('82.24.01', '82.24.00', 'Describe personal and jobsite safety rules and regulations that maintain safe and healthy work environments.'),
	('82.24.02', '82.24.00', 'Explain emergency procedures to follow in response to workplace accidents.'),
	('82.24.03', '82.24.00', 'Create a disaster and/or emergency response plan.'),
	('82.25.01', '82.25.00', 'Employ leadership skills to accomplish organizational goals and objectives.'),
	('82.25.02', '82.25.00', 'Establish and maintain effective working relationships with others in order to accomplish objectives and tasks.'),
	('82.25.03', '82.25.00', 'Conduct and participate in meetings to accomplish work tasks. '),
	('82.25.04', '82.25.00', 'Employ mentoring skills to inspire and teach others.'),
	('82.26.01', '82.26.00', 'Identify and demonstrate positive work behaviors needed to be employable.'),
	('82.26.02', '82.26.00', 'Develop personal career plan that includes goals objectives and strategies.'),
	('82.26.03', '82.26.00', 'Examine licensing certification and industry credentialing requirements.'),
	('82.26.04', '82.26.00', 'Maintain a career portfolio to document knowledge skills and experience.'),
	('82.26.05', '82.26.00', 'Evaluate and compare employment opportunities that match career goals.'),
	('82.26.06', '82.26.00', 'Identify and exhibit traits for retaining employment.'),
	('82.26.07', '82.26.00', 'Identify opportunities and research requirements for career advancement.'),
	('82.26.08', '82.26.00', 'Research the benefits of ongoing professional development.'),
	('82.26.09', '82.26.00', 'Examine and describe entrepreneurship opportunities as a career planning option.'),
	('83.27.01', '83.27.00', 'Describe convergence of data voice and video in the context of switched networks. '),
	('83.27.02', '83.27.00', 'Setup and configure a switched environment.'),
	('83.27.03', '83.27.00', 'Troubleshoot and diagnose a switched environment.'),
	('83.28.01', '83.28.00', 'Configure a router to route between multiple directly connected networks.'),
	('83.28.02', '83.28.00', ' Describe the primary functions and features of a router.'),
	('83.28.03', '83.28.00', 'Explain how routers use information in data packets to make forwarding decisions in a small-to medium-sized business network.'),
	('83.28.04', '83.28.00', 'Describe configure and troubleshoot VLAN routing environment.'),
	('83.29.01', '83.29.00', ' Explain the advantages and disadvantages of static routing.'),
	('83.29.02', '83.29.00', ' Configure switch ports and security.'),
	('83.29.03', '83.29.00', ' Describe security best practices in a switch environment.'),
	('83.29.04', '83.29.00', ' Explain configure and troubleshoot VLAN in a switch network.'),
	('83.30.01', '83.30.00', 'Explain the advantages and disadvantages of Layer 3 of static routing.'),
	('83.30.02', '83.30.00', 'Define  compare and configure the different categories of routing protocols'),
	('83.31.01', '83.31.00', 'Explain configure and modify ACL\'s'),
	('83.31.02', '83.31.00', 'Apply ACLs to filter traffic.'),
	('83.32.01', '83.32.00', 'Describe and configure protocols (i.e. SMTP TCP-IP MAC DNS FTP and DHCP).  '),
	('83.32.02', '83.32.00', 'Identify commonly used default network ports.'),
	('83.32.03', '83.32.00', 'Troubleshoot configure protocols within a switched network.'),
	('84.33.01', '84.33.00', 'Describe the history of cybersecurity including the evolution of a hacker culture.'),
	('84.33.02', '84.33.00', 'Discuss the trends and national initiatives related to cybersecurity.'),
	('84.33.03', '84.33.00', 'Distinguish between information assurance and cybersecurity.'),
	('84.33.04', '84.33.00', 'Describe the concepts of confidentiality as it relates to user and data impact.'),
	('84.33.05', '84.33.00', 'Explain authentication and the concept of non-repudiation.'),
	('84.34.01', '84.34.00', 'Recognize and define network susceptibilities and attacks. (i.e. DOS/DDOS (Denial of Service/Distributed Denial of Service)).'),
	('84.34.02', '84.34.00', 'Recognize and define Password Guessing (e.g. Brute Force Dictionary).'),
	('84.34.03', '84.34.00', 'Recognize and define Software Exploitation. '),
	('84.34.04', '84.34.00', 'Define email vulnerabilities apply appropriate security measures.'),
	('84.35.01', '84.35.00', 'Recognize and define MAC (Mandatory Access Control). '),
	('84.35.02', '84.35.00', 'Recognize and define DAC (Discretionary Access Control). '),
	('84.35.03', '84.35.00', 'Recognize and define RBAC (Role Based Access Control). '),
	('84.36.01', '84.36.00', 'Identify non-essential services and protocols running on hosts and network devices and know what actions to take to reduce the risks of those services and protocols. '),
	('84.36.02', '84.36.00', 'Understand the concept of and know how reduce the risks of social engineering.'),
	('84.36.03', '84.36.00', 'Understand the concept and significance of auditing logging and system scanning.'),
	('84.36.04', '84.36.00', 'Identify and be able to differentiate different cryptographic standards and protocols. '),
	('84.37.01', '84.37.00', 'Recognize and define 802.1x. '),
	('84.37.02', '84.37.00', 'Recognize and define RADIUS (Remote Authentication Dial-In User Service). '),
	('84.37.03', '84.37.00', 'Recognize and define TACACS (Terminal Access Controller Access Control System) and TACTCs+. '),
	('84.37.04', '84.37.00', 'Recognize and define L2TP/PPTP (Layer Two Tunneling Protocol/Point to Point Tunneling Protocol). '),
	('84.37.05', '84.37.00', 'Recognize and define SSH (Secure Shell). '),
	('84.37.06', '84.37.00', 'Recognize and define IPSEC (Internet Protocol Security). '),
	('84.38.01', '84.38.00', 'Recognize and define SSL/TLS (Secure Sockets Layer/Transport Layer Security). '),
	('84.38.02', '84.38.00', 'Recognize and define LDAP (Lightweight Directory Access Protocol). '),
	('84.39.01', '84.39.00', 'Identify the different types of application layer protocol (POP3 SMTP DNS and FTP).'),
	('84.39.02', '84.39.00', 'Recognize and define File Sharing. '),
	('84.39.03', '84.39.00', 'Recognize and define Vulnerabilities (i.e. packet sniffing naming conventions).'),
	('84.40.01', '84.40.00', 'Recognize and define WTLS (Wireless Transport Layer Security). '),
	('84.40.02', '84.40.00', 'Differentiate Wi-Fi threats.'),
	('84.40.03', '84.40.00', 'Apply encryption protocols for wireless networks.'),
	('84.41.01', '84.41.00', 'Compare and contrast Host and Network Based security techniques.'),
	('84.41.02', '84.41.00', 'Be able to identify and explain cryptographic algorithms'),
	('84.41.03', '84.41.00', 'Understand how cryptography and digital signatures address the following security concepts.'),
	('84.41.04', '84.41.00', 'Identify authentication tools (e.g. PKI Public Key Infrastructure Certificates Renocation and Trust Models).'),
	('84.42.01', '84.42.00', 'Identify various security CA requirements. '),
	('84.42.02', '84.42.00', 'Understand Hardware versus software key storage Private key storage Escrow Expiration Revocation Renewal Destruction Key Usage Multiple Key Pairs.'),
	('84.42.03', '84.42.00', 'Create key management and procedures.'),
	('84.43.01', '84.43.00', 'Define Access Control (e.g. physical barriers biometrics).'),
	('84.43.02', '84.43.00', 'Define Social Engineering. '),
	('84.43.03', '84.43.00', 'Defines issues related to Environment (e.g. wireless cells location shielding fire suppression).'),
	('84.44.01', '84.44.00', 'Recognize define and configure network hardware appliances and handheld devices.'),
	('84.44.02', '84.44.00', 'Define and configure Network Monitoring/Diagnostics tools. '),
	('84.44.03', '84.44.00', 'Understand the security concerns for the following types of media.'),
	('84.45.01', '84.45.00', 'Install and configure Updates (Firmware & Software). '),
	('84.45.02', '84.45.00', 'Install and configure Operating System and ACL\'s.'),
	('84.45.03', '84.45.00', 'Enable and Disable Services and Protocols. '),
	('84.45.04', '84.45.00', 'Setup and configure a server hardening within a computer network.'),
	('84.46.01', '84.46.00', 'Define and use Backups Secure Recovery Recovery Plan and Alternative sites. (On-site versus off-site storage).'),
	('84.46.02', '84.46.00', 'Recognize and define Backup Utilities and High Availability/Fault Tolerance.'),
	('84.47.01', '84.47.00', 'Demonstrate proficiency and understanding of Security Policy Acceptable Use Privacy Separation of Duties Need to Know Password Management and SLA\'s. '),
	('84.47.02', '84.47.00', 'Demonstrate proficiency and understanding of Disposal/Destruction. '),
	('84.47.03', '84.47.00', 'Demonstrate proficiency and understanding of HR policies related to passwords privileges and Code of Ethics in hiring and termination situations. '),
	('84.47.04', '84.47.00', 'Demonstrate proficiency and understanding of Incident Response Policy. '),
	('84.48.01', '84.48.00', 'Identify User/Group/Role Management and Single Sign-on. '),
	('84.48.02', '84.48.00', 'Define Centralized vs. Decentralized. '),
	('84.48.03', '84.48.00', 'Understand the importance of Auditing (Privilege Usage Escalation). '),
	('84.48.04', '84.48.00', 'Define MAC/DAC/RBAC (Mandatory Access Control/Discretionary Access Control/Role Based Access Control). '),
	('84.49.01', '84.49.00', 'Demonstrate an understanding of the concepts of forensics guidelines. '),
	('84.49.02', '84.49.00', 'Explain Systems Architecture and documentation. '),
	('84.49.03', '84.49.00', 'Explain Change Logs and Inventories.'),
	('84.49.04', '84.49.00', 'Explain Classification/Notification Schema Retention/Storage and Destruction.'),
	('84.49.05', '84.49.00', 'Understand and be able to explain the following concepts of risk identification.'),
	('84.49.06', '84.49.00', 'Explain Asset Identification and Risk Assessment. '),
	('84.49.07', '84.49.00', 'Define threat identification and vulnerabilities. '),
	('84.50.01', '84.50.00', 'Identify effective training strategies and education resources.'),
	('84.50.02', '84.50.00', 'Create appropriate methods of security Information awareness strategies.'),
	('84.50.03', '84.50.00', 'Understand importance of On-line Resources. ');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.Standards
CREATE TABLE IF NOT EXISTS `Standards` (
  `standardID` char(8) NOT NULL DEFAULT '',
  `ocpID` char(50) NOT NULL DEFAULT '',
  `standardDesc` mediumtext NOT NULL DEFAULT '',
  PRIMARY KEY (`standardID`),
  KEY `ocpID` (`ocpID`),
  KEY `standardID` (`standardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.Standards: ~50 rows (approximately)
/*!40000 ALTER TABLE `Standards` DISABLE KEYS */;
INSERT INTO `Standards` (`standardID`, `ocpID`, `standardDesc`) VALUES
	('69.01.00', 'CTS0069', '01.0_Demonstrate proficiency with personal computer hardware. '),
	('69.02.00', 'CTS0069', '02.0_Apply troubleshooting repairing and maintenance techniques'),
	('69.03.00', 'CTS0069', '03.0_Understand operating systems and software'),
	('69.04.00', 'CTS0069', '04.0_Identify and construct a basic network'),
	('69.05.00', 'CTS0069', '05.0_Analyze and react to various security threats and vulnerabilities'),
	('69.06.00', 'CTS0069', '06.0_Explain the basic physical security elements of a network.'),
	('69.07.00', 'CTS0069', '07.0_Demonstrate proficiency with operational procedure.'),
	('69.08.00', 'CTS0069', '08.0_Demonstrate language arts knowledge and skills.'),
	('69.09.00', 'CTS0069', '09.0_Demonstrate mathematics knowledge and skills'),
	('69.10.00', 'CTS0069', '10.0_Demonstrate proficiency with installing configuring and troubleshooting personal computer hardware'),
	('69.11.00', 'CTS0069', '11.0_Apply techniques to various operating systems'),
	('69.12.00', 'CTS0069', '12.0_Build secure and troubleshoot medium to large'),
	('69.13.00', 'CTS0069', '13.0_Use oral and written communication skills in creating expressing and interpreting information and ideas.'),
	('69.14.00', 'CTS0069', '14.0_Solve problems using critical thinking skills creating and innovation.'),
	('69.15.00', 'CTS0069', '15.0_Use information technology tools.'),
	('69.16.00', 'CTS0069', '16.0_Describe the roles within teams work units departments organizations interorganizational systems and the larger environment.'),
	('69.17.00', 'CTS0069', '17.0_Describe the importance of professional ethics and legal responsibilities.'),
	('82.18.00', 'CTS0082', '18.0_Describe the operation of data networks'),
	('82.19.00', 'CTS0082', '19.0_Verify connectivity between two end devices '),
	('82.20.00', 'CTS0082', '20.0_Configure a Layer 3 switch'),
	('82.21.00', 'CTS0082', '21.0_Program a router with basic configurations '),
	('82.22.00', 'CTS0082', '22.0_Explain how IPv6 address assignments are implemented in a business network'),
	('82.23.00', 'CTS0082', '23.0_Explain how data is moved across the network from opening an application to receiving data'),
	('82.24.00', 'CTS0082', '24.0_Demonstrate the importance of health safety and environmental management systems in organizations and their importance to organizational performance and regulatory compliance'),
	('82.25.00', 'CTS0082', '25.0_Demonstrate leadership and teamwork skills needed to accomplish team goals and objectives.'),
	('82.26.00', 'CTS0082', '26.0_Explain the importance of employability skill and entrepreneurship skills.'),
	('83.27.00', 'CTS0083', '27.0_Describe a switched network a small-to-medium-sized business'),
	('83.28.00', 'CTS0083', '28.0_Describe a routing environment.'),
	('83.29.00', 'CTS0083', '29.0_Explore the concept of switches and security'),
	('83.30.00', 'CTS0083', '30.0_Configure and troubleshoot a Layer 3 environment'),
	('83.31.00', 'CTS0083', '31.0_Configure troubleshoot and implement ACLs '),
	('83.32.00', 'CTS0083', '32.0_Demonstrate knowledge of how network services and protocols interact to provide network communication in order to securely implement and use common protocols.'),
	('84.33.00', 'CTS0084', '33.0_Demonstrate an understanding of cybersecurity concepts and research'),
	('84.34.00', 'CTS0084', '34.0_Recognize attacks and apply appropriate solutions'),
	('84.35.00', 'CTS0084', '35.0_Recognize and be able to differentiate and explain the following access control models'),
	('84.36.00', 'CTS0084', '36.0_Comprehend and develop an understanding of protocol security and associated risks'),
	('84.37.00', 'CTS0084', '37.0_Recognize and understand remote access technologies'),
	('84.38.00', 'CTS0084', '38.0_Identify and administer security fixes as defined by the appropriate OSI layers'),
	('84.39.00', 'CTS0084', '39.0_Recognize and understand the administration of the following directory security concepts'),
	('84.40.00', 'CTS0084', '40.0_Identify wireless technologies concepts and vulnerabilities'),
	('84.41.00', 'CTS0084', '41.0_Apply advanced principles of security techniques'),
	('84.42.00', 'CTS0084', '42.0_Define concepts of Key Management and Certificate Lifecycles'),
	('84.43.00', 'CTS0084', '43.0_Understand the application of the following concepts of physical security'),
	('84.44.00', 'CTS0084', '44.0_Understand security concerns for types of network topologies and media.'),
	('84.45.00', 'CTS0084', '45.0_Implement the process of network system hardening within a computer network'),
	('84.46.00', 'CTS0084', '46.0_Describe the security implications of the following topics of disaster recovery options'),
	('84.47.00', 'CTS0084', '47.0_Demonstrate proficiency in applying the concepts and uses of the following types of policies and procedures'),
	('84.48.00', 'CTS0084', '48.0_Understand different types of privilege management'),
	('84.49.00', 'CTS0084', '49.0_Understand the concepts of cybersecurity guidelines'),
	('84.50.00', 'CTS0084', '50.0_Understand training of end users executives and human resources in security vulnerabilities');
/*!40000 ALTER TABLE `Standards` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.students
CREATE TABLE IF NOT EXISTS `students` (
  `stuID` char(6) NOT NULL DEFAULT '',
  `stuNameFirst` text NOT NULL,
  `stuNameLast` text NOT NULL,
  `stuEmail` text NOT NULL,
  `PSAV` tinyint(1) NOT NULL,
  PRIMARY KEY (`stuID`) USING BTREE,
  UNIQUE KEY `stuID` (`stuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.students: ~19 rows (approximately)
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`stuID`, `stuNameFirst`, `stuNameLast`, `stuEmail`, `PSAV`) VALUES
	('146763', 'Francisco', 'Sanchez', '123@gmail.com', 1),
	('148834', 'Andrew', 'Trevino', '123@gmail.com', 1),
	('169064', 'Juan', 'Ledezma', '123@email.com', 1),
	('172717', 'Juan', 'Galvan-Garcia', '123@gmail.com', 1),
	('229921', 'Micheal', 'Souza', '123@email.com', 1),
	('294655', 'Jose', 'De La Cruz', '123@email.com', 1),
	('306883', 'Sebastian', 'Navarrete', '123@email.com', 1),
	('309490', 'Azael', 'Simon-Quirino ', '123@gmail.com', 0),
	('313788', 'Luis ', 'Felipe Sebastian', '123@email.com', 1),
	('318034', 'Tomas', 'Andres-Francisco', '123@gmail.com', 0),
	('324408', 'Barry', 'Louis', '123@gmail.com', 1),
	('337703', 'Pedro', 'Francisco', '123@gmail.com', 0),
	('344124', 'Miles', 'McMullin', '123@email.com', 0),
	('349565', 'Francisco', 'Galindo', '123@gmail.com', 0),
	('378320', 'Mary', 'McMullin', '123@email.com', 0),
	('379222', 'Jenny', 'Baptiste', '123@gmail.com', 0),
	('450738', 'Chavis', 'Cook', '123@gmail.com', 1),
	('451651', 'Sebastian', 'Niewald', '123@gmail.com', 0),
	('460380', 'Caleb', 'Roadcap', '123@email.com', 1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

-- Dumping structure for table OCPUbuntu.terms
CREATE TABLE IF NOT EXISTS `terms` (
  `termID` varchar(8) NOT NULL DEFAULT '',
  `termName` text NOT NULL,
  PRIMARY KEY (`termID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table OCPUbuntu.terms: ~9 rows (approximately)
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
INSERT INTO `terms` (`termID`, `termName`) VALUES
	('', ''),
	('fal16-17', 'Fall 2016/2017'),
	('fal20-21', 'Fall 2020/2021'),
	('fal21-22', 'Fall 2021/2022'),
	('spr18-19', 'Spring 2018/2019'),
	('spr19-20', 'Spring 2019/2020'),
	('spr20-21', 'Spring 2020/2021'),
	('spr21-22', 'Spring 2021/2022'),
	('sum21-22', 'Summer 2021/2022');
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
