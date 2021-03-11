-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2019 at 12:00 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `crime`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`UserName`, `Password`) VALUES
('admin', 'admin'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `UserName` varchar(255) NOT NULL,
  `ContactNumber` varchar(255) NOT NULL,
  `ContacPerson` varchar(255) NOT NULL,
  `Purpose` varchar(255) NOT NULL,
  `Detail` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`UserName`, `ContactNumber`, `ContacPerson`, `Purpose`, `Detail`) VALUES
('ram', '498463149468', 'mohan', 'some issue', 'ESBaerisu;hagm');

-- --------------------------------------------------------

--
-- Table structure for table `crimecomplain`
--

CREATE TABLE IF NOT EXISTS `crimecomplain` (
  `CrimeComplainId` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) NOT NULL,
  `ContactNo` varchar(255) NOT NULL,
  `PoliceStation` varchar(255) NOT NULL,
  `CrimeType` varchar(255) NOT NULL,
  `AnyProof` varchar(255) NOT NULL,
  `DateTime` varchar(255) NOT NULL,
  PRIMARY KEY (`CrimeComplainId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `crimecomplain`
--

INSERT INTO `crimecomplain` (`CrimeComplainId`, `UserName`, `ContactNo`, `PoliceStation`, `CrimeType`, `AnyProof`, `DateTime`) VALUES
(1, 'Ankit', '123456', '---Select---', 'Murder', 'no', '14/07/2014');

-- --------------------------------------------------------

--
-- Table structure for table `generalcomplain`
--

CREATE TABLE IF NOT EXISTS `generalcomplain` (
  `GeneralComplainId` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) NOT NULL,
  `ContactNo` varchar(255) NOT NULL,
  `PoliceStation` varchar(255) NOT NULL,
  `CrimeName` varchar(255) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `DateTime` varchar(255) NOT NULL,
  PRIMARY KEY (`GeneralComplainId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `generalcomplain`
--

INSERT INTO `generalcomplain` (`GeneralComplainId`, `UserName`, `ContactNo`, `PoliceStation`, `CrimeName`, `Detail`, `DateTime`) VALUES
(1, 'Ankit', '1234567890', '---Select---', 'xhjfhgu', 'cjhujkgv', ''),
(2, 'Anuj', '4578963215', '---Select---', 'Thief', 'jwallery', ''),
(3, 'shyam', '7896452136', '---Select---', 'murder', '', '25/01/2018'),
(4, 'Ankit', '1234567890', '---Select---', 'xhjfhgu', 'cjhujkgv', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserName`, `Password`) VALUES
('mohan', '123'),
('123', '145');

-- --------------------------------------------------------

--
-- Table structure for table `missingperson`
--

CREATE TABLE IF NOT EXISTS `missingperson` (
  `MissingPerasonId` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) NOT NULL,
  `MissingPersonName` varchar(255) NOT NULL,
  `MissingIdCategory` varchar(255) NOT NULL,
  `MissingIdNo` varchar(20) NOT NULL,
  `MissingFrom` varchar(255) NOT NULL,
  `LastVisionDate` varchar(20) NOT NULL,
  `AnyDistortion` varchar(255) NOT NULL,
  `PoliceStation` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `MissingPersonContactNo` varchar(20) NOT NULL,
  `AfterFindContactNo` varchar(20) NOT NULL,
  `MissingPersonPhoto` varchar(255) NOT NULL,
  `DateTime` varchar(255) NOT NULL,
  PRIMARY KEY (`MissingPerasonId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `missingperson`
--

INSERT INTO `missingperson` (`MissingPerasonId`, `UserName`, `MissingPersonName`, `MissingIdCategory`, `MissingIdNo`, `MissingFrom`, `LastVisionDate`, `AnyDistortion`, `PoliceStation`, `Address`, `MissingPersonContactNo`, `AfterFindContactNo`, `MissingPersonPhoto`, `DateTime`) VALUES
(1, 'mohan', 'sohan', 'adhar', '12345678905', 'lko', '10/10/2010', 'y', 'madiyawan', 'Mohibullapur', '7418529630', '0123', '', ''),
(12, '12', 'Aadhaar Card', '12', '12', '12', 'Yes', '12', '---Select---', '12', '12', '12', 'pic10.jpg', '12');

-- --------------------------------------------------------

--
-- Table structure for table `missingvaluable`
--

CREATE TABLE IF NOT EXISTS `missingvaluable` (
  `MissingValuableId` int(10) NOT NULL AUTO_INCREMENT,
  `PoliceStation` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `ValuableName` varchar(255) NOT NULL,
  `ValuableCost` varchar(255) NOT NULL,
  `Cost` varchar(255) NOT NULL,
  `MissingFrom` varchar(255) NOT NULL,
  `DoubtFullPersonName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `ContactNo` varchar(255) NOT NULL,
  `AnyReward` varchar(255) NOT NULL,
  `DateTime` varchar(255) NOT NULL,
  PRIMARY KEY (`MissingValuableId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `missingvaluable`
--

INSERT INTO `missingvaluable` (`MissingValuableId`, `PoliceStation`, `UserName`, `ValuableName`, `ValuableCost`, `Cost`, `MissingFrom`, `DoubtFullPersonName`, `Address`, `ContactNo`, `AnyReward`, `DateTime`) VALUES
(1, '---Select---', 'cukfi', 'cci', '---Select---', '15000', 'madiyawan', 'shyam', 'lucknow', '456879136', '50000', '5/01/2014');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE IF NOT EXISTS `police` (
  `PoliceStationId` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `ChowkiInchargeName` varchar(255) NOT NULL,
  `CircleInspectorName` varchar(255) NOT NULL,
  `SubInspectorName` varchar(255) NOT NULL,
  `Area` varchar(255) NOT NULL,
  `CogNumber` varchar(255) NOT NULL,
  `EmergencyNumber` varchar(255) NOT NULL,
  `District` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `CrimeRate` varchar(255) NOT NULL,
  `AgentName` varchar(255) NOT NULL,
  `PinCode` varchar(255) NOT NULL,
  `PolicfeStationPic` varchar(255) NOT NULL,
  PRIMARY KEY (`PoliceStationId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`PoliceStationId`, `Name`, `ChowkiInchargeName`, `CircleInspectorName`, `SubInspectorName`, `Area`, `CogNumber`, `EmergencyNumber`, `District`, `City`, `CrimeRate`, `AgentName`, `PinCode`, `PolicfeStationPic`) VALUES
(1, 'Madiyawan', 'Power', 'Super', 'Multi', 'Faizullaganj', '100', '108552', 'UP', 'Lucknow', '75%', 'Manohar', '226021', 'pic7.jpg'),
(2, 'Gosaiganj', 's n singh', 'k g sinha', 'm mehrotra', 'Kashimpur Biruha', '100', '108552', 'Lucknow', 'Lucknow', '38%', 'mohan', '226501', 'pic9.jpg'),
(3, 'Gudamba', 'ankit123', 'devw', 'vivo', 'oppo', '100', '100', 'Lucknow', 'Lucknow', '56%', 'bajaj', '226610', 'pic8.jpg'),
(4, 'telibagh', 'samsung', 'micromax', 'Multi', 'Kashimpur Biruha', '8943684535', '100', 'UP', 'Lucknow', '75%', 'Manohar', '226005', 'pic3.jpg'),
(5, 'alambagh', 'super', 'kamla', 'road', 'Lucknow', '8943684535', '100', 'Lucknow', '123456789012347896325356322', '38%', 'mohan', '226021', 'pic2.jpg'),
(6, 'Mandakini', 'Maksood', 'Indraprasad', 'Kedast Rastogi', 'Gudamba', '100', '1010', 'up', 'lko', '55%', 'Mohan', '226025', 'pic1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `MobileNo` varchar(255) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  `AadhaarNumber` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PoliceStation` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `District` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `PinCode` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Name`, `Password`, `MobileNo`, `EmailId`, `AadhaarNumber`, `Address`, `PoliceStation`, `City`, `District`, `State`, `PinCode`) VALUES
('Ankit', '123', '9554289372', 'abc@hotmail.com', '7896541232542', 'jaunpur', 'chakra', 'kerakat', 'jaunpur', 'up', 227809),
('ankit', '123', '9554289372', 'abc@hotmail.com', '897456471245', 'Lucknow', 'madiyawan', 'lko', 'lko', 'up', 226501),
('mohan', '123', '45689765', 'vyc@fijac.vfk', '596295658', 'hvhuaerijo', 'jbndfaesvm', 'bjndbjo', 'bvnjrsk', 'bnjbkr', 9559),
('123', '145', '8756942315', 'abc@gmail.com', '897546251423', 'sms', 'gosaiganj', 'lucknow', 'lucknow', 'uttar pradesh', 226501);

