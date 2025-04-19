-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 06:34 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internetbanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `ib_acc_types`
--

CREATE TABLE `ib_acc_types` (
  `acctype_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_acc_types`
--

INSERT INTO `ib_acc_types` (`acctype_id`, `name`, `description`, `rate`, `code`) VALUES
(1, 'Savings', 'Savings accounts are typically the first official bank account anybody opens. Children may open an account with a parent to begin a pattern of saving. Teenagers open accounts to stash cash earned from a first job or household chores.Savings accounts are an excellent place to emergency cash. Opening a savings account also marks the beginning of your relationship with a financial institution. For example, when joining a credit union or savings account establishes your membership.', '3', 'ACC-CAT-4EZFO'),
(2, ' Retirement', 'Retirement accounts have tax advantages. In very general terms, you get to avoid paying income tax on interest & you earn from a savings account or CD each year. But you may have to pay taxes on those earnings at a later date. Still, keeping your money sheltered from taxes may help you over the long term. Most banks offer IRAs, and they may also provide retirement accounts for small businesses', '12', 'ACC-CAT-1QYDV'),
(4, 'Recurring deposit', 'Recurring deposit account or RD account is opened by those who want to save certain amount of money regularly for a certain period of time and earn a higher interest rate. In RD account a fixed amount is deposited & every month for a specified period and the total amount is repaid with interest at the end of the particular fixed period.The period of deposit is minimum six months and maximum ten years.The interest rates vary for different plans based on the amount one saves and the period of time and also on banks. No withdrawals are allowed from the RD account. However, the bank may allow to close the account before the maturity period. These accounts can be opened in single or joint names. Banks are also providing the Nomination facility to the RD account holders.', '4', 'ACC-CAT-VBQLE'),
(5, 'Fixed Deposit Account', 'In Fixed Deposit Account (also known as FD Account), a particular sum of money is deposited in a bank for specific period of time. Its one time deposit and one time take away (withdraw) account.The money deposited in this account can not be withdrawn before the expiry of period.However, in case of need the depositor can ask for closing the fixed deposit prematurely by paying a penalty. The penalty amount varies with banks.A high interest rate is paid on fixed deposits. The rate of interest paid for fixed deposit vary according to amount, period and also from bank to bank.', '4', 'ACC-CAT-A86GO'),
(6, 'Current account', 'Current account is mainly for business persons, firms, companies, public enterprises etc and are never used for the purpose of investment or savings.These deposits are the most liquid deposits and there are no limits for number of transactions or the amount of transactions in a day. While, there is no interest paid on amount held in the account, banks charges certain service charges, on such accounts. The current accounts do not have any fixed maturity as these are on continuous basis accounts.', '0', 'ACC-CAT-4O8QW');

-- --------------------------------------------------------

--
-- Table structure for table `ib_admin`
--

CREATE TABLE `ib_admin` (
  `admin_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_admin`
--

INSERT INTO `ib_admin` (`admin_id`, `name`, `email`, `number`, `password`, `profile_pic`) VALUES
(2, 'System Administrator', 'adminHDB@gmail.com', 'iBank-ADM-0516', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', 'admin-icn.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_bankaccounts`
--

CREATE TABLE `ib_bankaccounts` (
  `account_id` int(20) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_rates` varchar(200) NOT NULL,
  `acc_status` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  `client_email` varchar(200) NOT NULL,
  `client_adr` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_bankaccounts`
--

INSERT INTO `ib_bankaccounts` (`account_id`, `acc_name`, `account_number`, `acc_type`, `acc_rates`, `acc_status`, `acc_amount`, `client_id`, `client_name`, `client_national_id`, `client_phone`, `client_number`, `client_email`, `client_adr`, `created_at`) VALUES
(23, 'Omkar Jagtap', '216978345', 'Savings ', '3', 'Active', '0', '11', 'Omkar Jagtap', '989878766756', '9822217705', 'iBank-CLIENT-7932', 'omkar2991@gmail.com', 'Kasegaon', '2024-05-19 13:44:57.304459'),
(24, 'Aniket Patil', '618049253', 'Fixed Deposit Account ', '4', 'Active', '0', '5', 'Aniket Patil', '100014001000', '7412560000', 'iBank-CLIENT-7014', 'aniket123@gmail.com', 'solapur', '2024-05-19 13:46:33.397855'),
(25, 'Ketaki Jadhav', '893421605', 'Recurring deposit ', '4', 'Active', '0', '14', 'Ketaki Ram Jadhav', '412023322049', '9021044995', 'iBank-CLIENT-3469', 'ketaki9822@gmail.com', 'Satara', '2024-05-19 13:55:30.133449'),
(26, 'Sakshi Gore', '245306819', 'Recurring deposit ', '4', 'Active', '0', '15', 'Sakshi Sahil Gore', '908767545434', '8965687543', 'iBank-CLIENT-5342', 'Sakshigore556@gmail.com', 'Indapur', '2024-05-19 13:59:53.646971');

-- --------------------------------------------------------

--
-- Table structure for table `ib_clients`
--

CREATE TABLE `ib_clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `national_id` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_clients`
--

INSERT INTO `ib_clients` (`client_id`, `name`, `national_id`, `phone`, `address`, `email`, `password`, `profile_pic`, `client_number`) VALUES
(5, 'Aniket Patil', '100014001000', '7412560000', 'solapur', 'aniket123@gmail.com', '70edcb72256835d8c0c88dfa0bd84b1c9d6c26dd', '', 'iBank-CLIENT-7014'),
(11, 'Omkar Jagtap', '989878766756', '9822217705', 'Kasegaon', 'omkar2991@gmail.com', 'e4e9653b94f965cfd268a1b50bcc8152260c2483', '', 'iBank-CLIENT-7932'),
(12, 'Mansi Pawar', '412023322046', '8669212719', 'Pune', 'mansi1221@gmail.com', '4cd43711e1f1759cacc2f1cf4d4dd5787d2bce18', '', 'iBank-CLIENT-6852'),
(14, 'Ketaki Ram Jadhav', '412023322049', '9021044995', 'Satara', 'ketaki9822@gmail.com', '953b94ba3e15bc87527843d9bbc0b94f78a1a8ee', '', 'iBank-CLIENT-3469'),
(15, 'Sakshi Sahil Gore', '908767545434', '8965687543', 'Indapur', 'Sakshigore556@gmail.com', '0238ffaed09afaec4d212c6f5f5f7b28b9a7bde1', '', 'iBank-CLIENT-5342');

-- --------------------------------------------------------

--
-- Table structure for table `ib_notifications`
--

CREATE TABLE `ib_notifications` (
  `notification_id` int(20) NOT NULL,
  `notification_details` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_notifications`
--

INSERT INTO `ib_notifications` (`notification_id`, `notification_details`, `created_at`) VALUES
(52, 'Ketaki Ram Jadhav Has Transfered INR. 4050 From Bank Account 893421605 To Bank Account 618049253', '2024-05-19 14:52:21.915186');

-- --------------------------------------------------------

--
-- Table structure for table `ib_staff`
--

CREATE TABLE `ib_staff` (
  `staff_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_staff`
--

INSERT INTO `ib_staff` (`staff_id`, `name`, `staff_number`, `phone`, `email`, `password`, `sex`, `profile_pic`) VALUES
(3, 'Staff ', 'iBank-STAFF-6785', '0704975742', 'staff@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', 'Male', 'user-profile-min.png'),
(4, 'abs', 'iBank-STAFF-5142', '9021044995', 'rutujapawar434@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', 'Male', '');

-- --------------------------------------------------------

--
-- Table structure for table `ib_systemsettings`
--

CREATE TABLE `ib_systemsettings` (
  `id` int(20) NOT NULL,
  `sys_name` longtext NOT NULL,
  `sys_tagline` longtext NOT NULL,
  `sys_logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_systemsettings`
--

INSERT INTO `ib_systemsettings` (`id`, `sys_name`, `sys_tagline`, `sys_logo`) VALUES
(1, 'HDB FINANCIAL SERVICES', 'Financial success at every service we offer.', 'hdb1.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_transactions`
--

CREATE TABLE `ib_transactions` (
  `tr_id` int(20) NOT NULL,
  `tr_code` varchar(200) NOT NULL,
  `account_id` varchar(200) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `tr_type` varchar(200) NOT NULL,
  `tr_status` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `transaction_amt` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `receiving_acc_no` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `receiving_acc_name` varchar(200) NOT NULL,
  `receiving_acc_holder` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_transactions`
--

INSERT INTO `ib_transactions` (`tr_id`, `tr_code`, `account_id`, `acc_name`, `account_number`, `acc_type`, `acc_amount`, `tr_type`, `tr_status`, `client_id`, `client_name`, `client_national_id`, `transaction_amt`, `client_phone`, `receiving_acc_no`, `created_at`, `receiving_acc_name`, `receiving_acc_holder`) VALUES
(60, 'OV93bU2PEC7AjHtXn8iF', '22', 'Omkar Jagtap', '452897603', 'Savings ', '', 'Deposit', 'Success ', '11', 'Omkar Jagtap', '412023322334', '20000', '9822217705', '', '2024-05-19 13:24:51.321182', '', ''),
(61, 'xVoadnD1LYzt52gmC8OR', '22', 'Omkar Jagtap', '452897603', 'Savings ', '', 'Transfer', 'Success ', '11', 'Omkar Jagtap', '412023322334', '1000', '9822217705', '581927360', '2024-05-19 13:25:55.950558', 'Ketaki Ram Jadhav', 'Ketaki Ram Jadhav'),
(62, 'eEmYMXzLO2a5CSjqdcQR', '25', 'Ketaki Jadhav', '893421605', 'Recurring deposit ', '', 'Deposit', 'Success ', '14', 'Ketaki Ram Jadhav', '412023322049', '25000', '9021044995', '', '2024-05-19 13:55:44.689559', '', ''),
(63, '1Ad3zqbPEBr5v8jJFU4i', '25', 'Ketaki Jadhav', '893421605', 'Recurring deposit ', '', 'Transfer', 'Success ', '14', 'Ketaki Ram Jadhav', '412023322049', '10000', '9021044995', '216978345', '2024-05-19 13:56:14.391068', 'Omkar Jagtap', 'Omkar Jagtap'),
(64, 'xg0dzCTlAs637LknFrfv', '26', 'Sakshi Gore', '245306819', 'Recurring deposit ', '', 'Deposit', 'Success ', '15', 'Sakshi Sahil Gore', '908767545434', '900000', '8965687543', '', '2024-05-19 14:00:06.919998', '', ''),
(65, 'KJE3qa0Y4dSfnRw9Vu5P', '26', 'Sakshi Gore', '245306819', 'Recurring deposit ', '', 'Transfer', 'Success ', '15', 'Sakshi Sahil Gore', '908767545434', '20000', '8965687543', '893421605', '2024-05-19 14:00:25.465485', 'Ketaki Jadhav', 'Ketaki Ram Jadhav'),
(66, 'boTs8BMuEUHWXg5PRy7f', '26', 'Sakshi Gore', '245306819', 'Recurring deposit ', '', 'Withdrawal', 'Success ', '15', 'Sakshi Sahil Gore', '908767545434', '5000', '8965687543', '', '2024-05-19 14:00:38.773916', '', ''),
(67, 'rKh0yNaWu8CTjVdB9HDv', '26', 'Sakshi Gore', '245306819', 'Recurring deposit ', '', 'Transfer', 'Success ', '15', 'Sakshi Sahil Gore', '908767545434', '45000', '8965687543', '618049253', '2024-05-19 14:09:53.765079', 'Aniket Patil', 'Aniket Patil'),
(68, 'YeOnbMsNQ8xTFcE1JDpr', '26', 'Sakshi Gore', '245306819', 'Recurring deposit ', '', 'Transfer', 'Success ', '15', 'Sakshi Sahil Gore', '908767545434', '100', '8965687543', '618049253', '2024-05-19 14:28:38.944308', 'Aniket Patil', 'Aniket Patil'),
(69, 'SRueHoEsmhLIFJq1T975', '26', 'Sakshi Gore', '245306819', 'Recurring deposit ', '', 'Transfer', 'Success ', '15', 'Sakshi Sahil Gore', '908767545434', '2000', '8965687543', '893421605', '2024-05-19 14:29:42.344715', 'Ketaki Jadhav', 'Ketaki Ram Jadhav'),
(70, 'BpGs6DEMbqZNnT2JamoQ', '26', 'Sakshi Gore', '245306819', 'Recurring deposit ', '', 'Transfer', 'Success ', '15', 'Sakshi Sahil Gore', '908767545434', '3000', '8965687543', '216978345', '2024-05-19 14:31:15.532970', 'Omkar Jagtap', 'Omkar Jagtap'),
(71, 'sxX7q8poA6kQLBfgH5iN', '25', 'Ketaki Jadhav', '893421605', 'Recurring deposit ', '', 'Withdrawal', 'Success ', '14', 'Ketaki Ram Jadhav', '412023322049', '1000', '9021044995', '', '2024-05-19 14:32:39.117494', '', ''),
(72, '9XArCFwIYc2Q1MDlWxRn', '25', 'Ketaki Jadhav', '893421605', 'Recurring deposit ', '', 'Deposit', 'Success ', '14', 'Ketaki Ram Jadhav', '412023322049', '100', '9021044995', '', '2024-05-19 14:44:34.157572', '', ''),
(73, 'r2Dvqk3BEgL4GhZ56iOQ', '25', 'Ketaki Jadhav', '893421605', 'Recurring deposit ', '', 'Deposit', 'Success ', '14', 'Ketaki Ram Jadhav', '412023322049', '1000', '9021044995', '', '2024-05-19 14:46:03.020579', '', ''),
(74, 'r2Dvqk3BEgL4GhZ56iOQ', '25', 'Ketaki Jadhav', '893421605', 'Recurring deposit ', '', 'Deposit', 'Success ', '14', 'Ketaki Ram Jadhav', '412023322049', '1000', '9021044995', '', '2024-05-19 14:46:19.742207', '', ''),
(75, 'lG4MEQhv07I5XjqZt9b6', '25', 'Ketaki Jadhav', '893421605', 'Recurring deposit ', '', 'Transfer', 'Success ', '14', 'Ketaki Ram Jadhav', '412023322049', '4050', '9021044995', '618049253', '2024-05-19 14:52:21.912554', 'Aniket Patil', 'Aniket Patil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  ADD PRIMARY KEY (`acctype_id`);

--
-- Indexes for table `ib_admin`
--
ALTER TABLE `ib_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `ib_clients`
--
ALTER TABLE `ib_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `ib_staff`
--
ALTER TABLE `ib_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  ADD PRIMARY KEY (`tr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  MODIFY `acctype_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ib_admin`
--
ALTER TABLE `ib_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  MODIFY `account_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ib_clients`
--
ALTER TABLE `ib_clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  MODIFY `notification_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ib_staff`
--
ALTER TABLE `ib_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  MODIFY `tr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
