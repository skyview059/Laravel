-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2015 at 06:23 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`id` int(3) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `admin_email_address` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `access_label` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `admin_name`, `admin_email_address`, `password`, `access_label`) VALUES
(1, 'Md. Shafiul Alam', 'shafiulalam@gmail.com', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE IF NOT EXISTS `tbl_blog` (
`id` int(5) NOT NULL,
  `category_id` int(5) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_short_description` text NOT NULL,
  `blog_long_description` text NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `blog_image` varchar(100) NOT NULL,
  `hit_count` int(5) NOT NULL COMMENT 'int_5',
  `publication_status` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `category_id`, `blog_title`, `blog_short_description`, `blog_long_description`, `author_name`, `blog_image`, `hit_count`, `publication_status`, `updated_at`, `created_at`) VALUES
(1, 1, 'অস্ট্রেলিয়াতে খোশ মেজাজে মামুনুলরা', 'অস্ট্রেলিয়াতে মামুনুল-জুয়েল-হেমন্তদের সময়টা ভালোই যাচ্ছে। ২০১৮ বিশ্বকাপের এশিয়া অঞ্চলের বাছাই পর্বে অস্ট্রেলিয়ার বিপক্ষে খেলতে নামার আগে খোশ মেজাজে রয়েছে বাংলাদেশ জাতীয় ফুটবল দল।\r\n\r\n', 'অস্ট্রেলিয়াতে মামুনুল-জুয়েল-হেমন্তদের সময়টা ভালোই যাচ্ছে। ২০১৮ বিশ্বকাপের এশিয়া অঞ্চলের বাছাই পর্বে অস্ট্রেলিয়ার বিপক্ষে খেলতে নামার আগে খোশ মেজাজে রয়েছে বাংলাদেশ জাতীয় ফুটবল দল।\r\n\r\nবাংলাদেশ ফুটবল ফেডারেশন মঙ্গলবার এক বিজ্ঞপ্তিতে দলের সার্বিক অবস্থা জানায়। এদিন স্থানীয় সময় সকাল সাড়ে ১০টায় মামুনুলরা হালকা অনুশীলন সেরেছেন; স্ট্রেচিং করেছেন।\r\n\r\nহালকা অনুশীলন সেরে মামুনুলরা পার্থের কিংস পার্কে দীর্ঘক্ষণ হাঁটেন। এরপর স্কারবোরো সমুদ্র সৈকতে বেড়াতে যান ফুটবলাররা। সেখানে হেমন্ত-মামুনুলরা ছবি তুলে, বল খেলে সময় কাটান। দলের সবাই শারীরিক ও মানসিকভাবে ভালো আছেন বলেও বিজ্ঞপ্তিতে জানানো হয়।\r\n\r\nআগামী বৃহস্পতিবার বাছাই পর্বে নিজেদের তৃতীয় ম্যাচ খেলতে শক্তিশালী অস্ট্রেলিয়ার মুখোমুখি হবে বাংলাদেশ।\r\n\r\nবাছাই পর্বের ‘বি’ গ্রুপে এর আগে দুটি ম্যাচ খেলেছে বাংলাদেশ। নিজেদের মাঠে কিরগিজস্তানের বিপক্ষে ৩-১ গোলে হারের পর তাজিকিস্তানের সঙ্গে ১-১ গোলে ড্র করে লোডভিক ডি ক্রুইফের দল।\r\n\r\n১ পয়েন্ট নিয়ে পঞ্চম স্থানে আছে বাংলাদেশ। সমান পয়েন্ট পেলেও গোল পার্থক্যে তাজিকিস্তান চতুর্থ স্থানে আছে।\r\n\r\n৩ পয়েন্ট নিয়ে বাংলাদেশের গ্রুপে সবার ওপরে আছে জর্ডান। সমান ৩ পয়েন্ট নিয়ে গোল পার্থক্যে দ্বিতীয় ও তৃতীয় স্থানে যথাক্রমে আছে কিরগিজস্তান ও অস্ট্রেলিয়া।', 'smoshajib', '', 10, 1, '2015-09-07 05:44:19', '2015-08-30 02:50:29'),
(2, 1, 'Garry Monk  Premier League', 'SWANSEA, Wales — In a quiet moment during the Premier League’s annual preseason meeting of head coaches a few weeks ago, Louis van Gaal of Manchester United shook hands with Garry Monk of Swansea City.\r\n\r\n“You always beat me,” van Gaal, the veteran Dutch manager, said as Monk smiled. At 36, Monk is the second-youngest manager in the Premier League (and the least experienced as a full-time coach), yet last season he became just the third manager in league history to beat Arsenal and Manchester United home and away in the same season.', 'SWANSEA, Wales — In a quiet moment during the Premier League’s annual preseason meeting of head coaches a few weeks ago, Louis van Gaal of Manchester United shook hands with Garry Monk of Swansea City.\r\n\r\n“You always beat me,” van Gaal, the veteran Dutch manager, said as Monk smiled. At 36, Monk is the second-youngest manager in the Premier League (and the least experienced as a full-time coach), yet last season he became just the third manager in league history to beat Arsenal and Manchester United home and away in the same season.\r\n\r\n“You always beat me,” van Gaal said again before adding: “I voted for you for Manager of the Season, you know. You didn’t win that one. But maybe you should have.”\r\n\r\nRecalling the exchange on Friday afternoon in his office here — two days before another match against van Gaal and Manchester United — Monk grinned. “Of all the things that have happened in this job,” he said, “that was pretty special.”\r\n\r\nContinue reading the main story\r\nRELATED COVERAGE\r\n\r\nManchester City’s Raheem Sterling after scoring his first Premier League goal in a 2-0 victory over Watford on Saturday.Roundup: Chelsea Falters at Home; Manchester City Breaks Club RecordAUG. 29, 2015\r\nIn European Soccer, Usual Suspects Are Expected to WinAUG. 4, 2015\r\nMonk conceded that he wouldn’t have minded the award, too, of course (though he couldn’t quibble with Chelsea’s José Mourinho winning), but the sequence was representative of how Monk’s overall perspective on soccer has changed since he went from being an old, grizzled player to being the new, interim manager at Swansea late in the 2013-14 season.', 'smoshajib', '', 2, 1, '2015-09-05 05:40:23', '2015-08-30 02:53:53'),
(3, 1, 'Williams Sisters Leave ', 'For a sizable portion of nearly two transformative decades, one family surname has competitively dominated tennis and continually inundated its news. Think about how an emerging generation of female players has never known a tour without the headlining Williams sisters, Venus and Serena.', 'For a sizable portion of nearly two transformative decades, one family surname has competitively dominated tennis and continually inundated its news. Think about how an emerging generation of female players has never known a tour without the headlining Williams sisters, Venus and Serena.\r\n\r\nSome telling perspective on the subject from Garbiñe Muguruza, 21, who grew up in Venezuela and Spain:\r\n\r\n“When I was 4 or 5, I turned on the TV, and they were playing,” said Muguruza, Serena’s victim in last month’s Wimbledon final. “Today, I turn the TV on, and they are still playing.\r\n\r\n“So I am saying, how is this possible?”\r\n\r\nWho could resist occasionally posing that question since the late 1990s, when the sisters — born 15 months apart, African-American outliers from gritty Compton, Calif. — began to lay siege to a sport historically and overwhelmingly trending wealthy and white?', 'smosayed', '', 1, 1, '2015-09-05 05:39:38', '2015-08-30 02:56:28'),
(4, 3, 'Flames Over Anacostia Flats', 'Patrick O’Brien stepped out of his slapped together shack on the Anacostia Flats. The July morning was already hot and steamy. The Flats, situated between Washington DC and the Anacostia River, muddy even in dry times, added to his misery. His denims and cotton shirt, loose on his wiry body, were soiled and sweat seeped through. He looked around the encampment as the 10,000 strong remnants of the Bonus Army in their make shift city called Camp Marks roused from an uneasy slumber.', 'Patrick O’Brien stepped out of his slapped together shack on the Anacostia Flats. The July morning was already hot and steamy. The Flats, situated between Washington DC and the Anacostia River, muddy even in dry times, added to his misery. His denims and cotton shirt, loose on his wiry body, were soiled and sweat seeped through. He looked around the encampment as the 10,000 strong remnants of the Bonus Army in their make shift city called Camp Marks roused from an uneasy slumber.</span><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);">O’Brien, like the rest, was a veteran of the Great War. They came to Washington DC a month ago from all over the country to pressure congress to give them the veteran bonus that was due to them. It was two years into the depression and people were desperate. They were out of work, out of their homes and out of hope, except for the promise of the bonus. The bonus though wasn’t payable until 1945, and now in 1932, many felt they would be dead from hunger if they waited much longer. They wanted the money now and the Bonus Army and its leaders came here to make sure they got it.</span><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);">“Hey Patrick, want some corn mush? It ain’t much but it is tasty. Might cheer you up some.”</span><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);">The voice was his friend Sean Ryan. They served and fought together with the 1st infantry in France and survived. Many of their comrades didn’t.</span><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);">“Thanks. Don’t give me too much. I don’t want to short you.”</span><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);">“When we get our bonus you can buy me a fine meal at a fancy restaurant,” said Sean.</span><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);">“You know Sean, this congress and this President Hoover ain’t going to give us anything. You have been out of work for a year and I’ve been looking for work for a year and a half. The “good citizens” of those towns we passed through on the way here called us tramps and bums. They didn’t call us tramps when we marched off to war in 1917.”</span><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><br style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 33, 111); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; text-align: justify; background-color: rgb(255, 255, 255);">“Patrick, when the Senate voted not to give us the money in June I thought it was all over. But look around you. Even though many have left there are still thousands here in our own “Hooverville” and more inside DC. How can they ignore us? How can they ignore veterans?”', 'smosayed', '', 2, 1, '2015-09-05 05:41:36', '2015-08-30 03:14:41'),
(5, 2, 'Politics of Bangladesh', 'Following Khondaker Mostaq Ahmad''s removal, jail killings of arrested members of Mujib''s cabinet, and assassination of Brigadier General Khaled Musharaf by a segment of army personnel, a very short lived revolution resulted in the emergence of arrested deputy Army Chief of Staff Major General&nbsp;<a href="https://en.wikipedia.org/wiki/Ziaur_Rahman" title="Ziaur Rahman" style="text-decoration: none; color: rgb(11, 0, 128); background: none;">Ziaur Rahman</a>&nbsp;("Zia"), who managed to take the lead and bring the whole nation out of a political quagmire. His first action was to communicate to the people through radio and television and bring order and calm to the nation. He pledged full support to the civilian government headed by President Chief Justice Sayem. Acting at Zia''s behest, Sayem dissolved Parliament, and instituted state of emergency under&nbsp;<a href="https://en.wikipedia.org/wiki/Martial_law" title="Martial law" style="text-decoration: none; color: rgb(11, 0, 128); background: none;">martial law</a>. Fresh elections were to be in 1977 under a multi party democracy with full freedom of the press.', 'Following Khondaker Mostaq Ahmad''s removal, jail killings of arrested members of Mujib''s cabinet, and assassination of Brigadier General Khaled Musharaf by a segment of army personnel, a very short lived revolution resulted in the emergence of arrested deputy Army Chief of Staff Major General&nbsp;<a href="https://en.wikipedia.org/wiki/Ziaur_Rahman" title="Ziaur Rahman" style="text-decoration: none; color: rgb(11, 0, 128); background: none;">Ziaur Rahman</a>&nbsp;("Zia"), who managed to take the lead and bring the whole nation out of a political quagmire. His first action was to communicate to the people through radio and television and bring order and calm to the nation. He pledged full support to the civilian government headed by President Chief Justice Sayem. Acting at Zia''s behest, Sayem dissolved Parliament, and instituted state of emergency under&nbsp;<a href="https://en.wikipedia.org/wiki/Martial_law" title="Martial law" style="text-decoration: none; color: rgb(11, 0, 128); background: none;">martial law</a>. Fresh elections were to be in 1977 under a multi party democracy with full freedom of the press.</p><p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Acting behind the scenes of the Martial Law Administration (MLA), Zia sought to invigorate government policy and administration. Lifting the ban on political parties from Mujib''s one party&nbsp;<a href="https://en.wikipedia.org/wiki/BAKSAL" title="BAKSAL" class="mw-redirect" style="text-decoration: none; color: rgb(11, 0, 128); background: none;">BAKSAL</a>&nbsp;rule, he sought to revitalize the demoralized bureaucracy, to begin new economic development programs, infrastructure buildup, a free press and to emphasize family planning. In November 1976, Zia became&nbsp;<a href="https://en.wikipedia.org/wiki/Chief_Martial_Law_Administrator" title="Chief Martial Law Administrator" style="text-decoration: none; color: rgb(11, 0, 128); background: none;">Chief Martial Law Administrator</a>&nbsp;(CMLA) and assumed the presidency upon Sayem''s retirement 5 months later, held national elections in 1978.</p><p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">As President, Zia announced a 19-point program of economic reform and began dismantling the MLA. Keeping his promise to hold elections, Zia won a 5-year term in June 1978 elections, with 76% of the vote. In November 1978, his government removed the remaining restrictions on political party activities in time for parliamentary elections in February 1979. These elections, which were contested by more than 30 parties, marked the culmination of Zia''s transformation of Bangladesh''s Government from the MLA to a democratically elected, constitutional one. The AL and the&nbsp;<a href="https://en.wikipedia.org/wiki/Bangladesh_Nationalist_Party" title="Bangladesh Nationalist Party" style="text-decoration: none; color: rgb(11, 0, 128); background: none;">Bangladesh Nationalist Party</a>&nbsp;(BNP), founded by Zia, emerged as the two major parties. The constitution was again amended to provide for an&nbsp;<a href="https://en.wikipedia.org/w/index.php?title=Executive_prime_minister&amp;action=edit&amp;redlink=1" class="new" title="Executive prime minister (page does not exist)" style="text-decoration: none; color: rgb(165, 88, 88); background: none;">executive prime minister</a>&nbsp;appointed by the president, and responsible to a parliamentary majority. Zia invigiorated a strong foreign policy based on sovereignty and economic independence. He initiated many social programs to uplift the poor through honest hard work and education. His greatest legacy on the people of Bangladesh was unity and self-dependence.', 'smosayed', '', 8, 1, '2015-09-07 04:13:13', '2015-08-30 03:18:53'),
(6, 2, 'বাংলাদেশে গরু ‘পাচার’ পুরোপুরি বন্ধের দাবি', 'বাংলাদেশে গরু ‘পাচার’ পুরোপুরি বন্ধের দাবি জানিয়েছে ভারতের কট্টর \r\nহিন্দুত্ববাদী সংগঠন রাষ্ট্রীয় স্বয়ং সেবক সংঘ (আরএসএস)। ভারতের রাজধানী \r\nনয়াদিল্লিতে সংঘের এক ‘চিন্তন-শিবিরে’ অংশ নিয়ে শীর্ষস্থানীয় নেতারা \r\nবলেছেন, গরু ‘পাচার’ নিয়ে সরকার কখনো আপস করতে পারে না। কীভাবে এ ক্ষেত্রে\r\n সরকার ‘জিরো টলারেন্স’ নীতি গ্রহণ করতে পারে, স্বরাষ্ট্রমন্ত্রী রাজনাথ \r\nসিংকে তা খতিয়ে দেখতে বলেছেন তাঁরা।', 'বাংলাদেশে গরু ‘পাচার’ পুরোপুরি বন্ধের দাবি জানিয়েছে ভারতের কট্টর \r\nহিন্দুত্ববাদী সংগঠন রাষ্ট্রীয় স্বয়ং সেবক সংঘ (আরএসএস)। ভারতের রাজধানী \r\nনয়াদিল্লিতে সংঘের এক ‘চিন্তন-শিবিরে’ অংশ নিয়ে শীর্ষস্থানীয় নেতারা \r\nবলেছেন, গরু ‘পাচার’ নিয়ে সরকার কখনো আপস করতে পারে না। কীভাবে এ ক্ষেত্রে\r\n সরকার ‘জিরো টলারেন্স’ নীতি গ্রহণ করতে পারে, স্বরাষ্ট্রমন্ত্রী রাজনাথ \r\nসিংকে তা খতিয়ে দেখতে বলেছেন তাঁরা।<br>বাংলাদেশের সঙ্গে সম্পর্কের উন্নতি জরুরি বলে মনে করলেও সংঘের পরামর্শ, ‘অনুপ্রবেশের’ মোকাবিলা কড়া হাতে করতে হবে।<br>সংঘের\r\n আদর্শ ও নীতি অনুযায়ী বিজেপির নেতৃত্বাধীন কেন্দ্রীয় সরকার কেমন কাজ করছে,\r\n তিন দিন ধরে শীর্ষস্থানীয় নেতারা তা খতিয়ে দেখেন। সংঘের আদর্শ মেনে চলা \r\nঅন্যান্য সংগঠনের নেতারাও এই চিন্তন-শিবিরে প্রতিদিন অংশ নেন এবং নীতিগত \r\nবিষয়ে মন্ত্রী ও দলীয় নেতাদের প্রশ্ন করেন। এই শিবিরে মন্ত্রণালয় ও \r\nমন্ত্রীদের কাজের খতিয়ান দেখা হয়। শেষ দিনে গতকাল শুক্রবার প্রধানমন্ত্রী \r\nনরেন্দ্র মোদি শিবিরে যোগ দেন।<br>সংঘ ও তার আদর্শ রূপায়ণকারী রাজনৈতিক \r\nদল বিজেপির মধ্যে সমন্বয় রক্ষার এই প্রচেষ্টা বছরে দুবার করা হয়ে থাকে। \r\nসংঘচালক মোহন ভাগবতের উপস্থিতি ও তদারকিতে চলা এই বৈঠকে প্রতিবেশী \r\nরাষ্ট্রগুলো নিয়ে সংঘ ও সরকারের নীতি বিশেষভাবে পর্যালোচিত হয়। এখানেই উঠে\r\n আসে অনুপ্রবেশ ও গরু পাচার প্রসঙ্গ।<br>বাংলাদেশে গরু পাচার বন্ধে রাজনাথ \r\nসিংয়ের উদ্যোগকে স্বাগত জানানো হলেও চিন্তন-শিবিরের অধিকাংশের অভিমত, গরু\r\n পাচার কমলেও তা মোটেই বন্ধ হয়নি। সংঘের প্রবীণ নেতা গোবিন্দাচার্য এ \r\nবিষয়ে একটি প্রতিবেদন তৈরি করেছেন। প্রধানত পশ্চিমবঙ্গের কোন কোন জেলার \r\nকোন কোন এলাকা দিয়ে বছরের কোন কোন সময় কত গরু বাংলাদেশে পাচার হয়, তার \r\nএকটা বিস্তারিত বিবরণ সেই প্রতিবেদনে রয়েছে। বৈঠকে সেই প্রতিবেদন আলোচিত \r\nহয় বলে বিভিন্ন সূত্রের খবর। সংঘের নেতারা বৈঠকে বলেন, গরু পাচার নিয়ে \r\nসরকার কখনো আপস করতে পারে না। কীভাবে এ ক্ষেত্রে সরকার ‘জিরো টলারেন্স’ \r\nনীতি গ্রহণ করতে পারে রাজনাথ সিংকে তা খতিয়ে দেখতে বলা হয়েছে।<br>সংঘ \r\nনেতাদের কেউ কেউ এই বিষয়ে বিজেপি-শাসিত দুটি রাজ্য সরকারকে সজাগ থাকতে \r\nবলেন। এই নেতাদের বক্তব্য, রাজস্থান ও হরিয়ানা থেকে লাখ লাখ গরু পশ্চিমবঙ্গ\r\n হয়ে বাংলাদেশে চলে যায়। রাজ্যগুলো সজাগ থাকলে পাচারকারীরা গরুর পাল নিয়ে \r\nপশ্চিমবঙ্গে পৌঁছাতে পারবে না। সীমান্ত নিরাপত্তারক্ষী বাহিনীও (বিএসএফ) \r\nবারবার এই বিষয়টি সরকারের নজরে এনেছে। তাদের বক্তব্য, রাজ্য সরকারের নানান \r\nগাফিলতি ও প্রশ্রয়ের কারণেই সীমান্তে গরু সমস্যা প্রকট হয়ে ওঠে। সংঘ নেতারা\r\n এ ক্ষেত্রে সরকারকে বিশেষ নির্দেশ দিয়েছেন।<br>প্রসঙ্গত, গত ২ ফেব্রুয়ারি \r\nরাজনাথ সিং বাংলাদেশ সীমান্তবর্তী এলাকা পরিদর্শনে এসে বাংলাদেশে গরু পাচার\r\n বন্ধ করতে বিএসএফ প্রধানকে নির্দেশ দেন। এরপরই গরু নিয়ে সীমান্তে কড়াকড়ি \r\nশুরু হয়। প্রায় সব সীমান্ত দিয়ে বন্ধ হয়ে যায় গরু ‘পাচার’।<br>চিন্তন-শিবিরে\r\n স্বরাষ্ট্রমন্ত্রী রাজনাথ সিংয়ের উপস্থিতিতেই জানানো হয়, বাংলাদেশের \r\nসঙ্গে সম্পর্কের চমৎকার উন্নতি হলেও অনুপ্রবেশ সমস্যা রয়েই গেছে। এই \r\nসমস্যার ফলে আসাম ও পশ্চিমবঙ্গের সীমান্তবর্তী এলাকার জনবিন্যাসে ব্যাপক \r\nপরিবর্তন এসেছে। সম্প্রতি প্রকাশিত ধর্মীয় জনগণনার ফলের উল্লেখ করে বিভিন্ন\r\n সংঘ নেতা বলেন, অনুপ্রবেশ কমেছে ঠিকই, কিন্তু তা পুরোপুরি বন্ধ করতে যতটা\r\n সক্রিয়তা প্রয়োজন, সরকার ততটা সক্রিয় হতে পারেনি। কেন পারেনি, কী কী \r\nকরণীয়, আরএসএসের পক্ষ থেকে সে বিষয়ে একটি নির্দেশনামা স্বরাষ্ট্রমন্ত্রীকে \r\nদেওয়া হয়।<br>আরএসএসের এই উদ্যোগ নিয়ে কংগ্রেস অবশ্য প্রশ্ন তুলেছে। দলের \r\nনেতা মনীশ তিওয়ারি বলেছেন, এই সরকারের রিমোট কন্ট্রোল যে আরএসএস, তা আবার\r\n প্রমাণিত। কেন্দ্রীয় সরকার সংসদ না সংঘ কার কাছে জবাবদিহিতে বাধ্য সেই \r\nপ্রশ্নও উঠে গেছে। প্রধানমন্ত্রীসহ বিজেপির সব মন্ত্রী, দলীয় সভাপতি অমিত \r\nশাহসহ শীর্ষ নেতারা পালা করে তিন দিনের এই বৈঠকে উপস্থিত ছিলেন।', 'Md. Shafiul Alam', '', 28, 1, '2015-09-07 05:45:33', '2015-09-04 22:39:55'),
(7, 4, 'এক যুগে ২৭১ কোটি টাকা ব্যয়, ফল শূন্য', 'বছরের পর বছর ধরে চট্টগ্রাম নগরের ‘আতঙ্ক’ হয়ে আছে জলাবদ্ধতা। গত এক যুগে \r\nএই সমস্যা দূর করতে চট্টগ্রাম সিটি করপোরেশন খরচ করেছে প্রায় ২৭১ কোটি \r\nটাকা। নগর পরিকল্পনাবিদেরা বলছেন, সিটি করপোরেশন খেয়ালখুশিমতো টাকা খরচ \r\nকরায় জলাবদ্ধতার সমস্যা আগের চেয়ে আরও প্রকট হয়েছে। আবার যে টাকা খরচ \r\nহয়েছে, তা মোটেও যথেষ্ট নয়।<br>গত চার মাসে অন্তত ১৫ দিন জলাবদ্ধতার কারণে\r\n কার্যত অচল ছিল চট্টগ্রাম। টানা এক ঘণ্টা ভারী বৃষ্টি হলেই নগরের নিচু \r\nএলাকার সড়ক, বাসাবাড়ি আর ব্যবসাপ্রতিষ্ঠানে পানি ঢুকছে।', 'বছরের পর বছর ধরে চট্টগ্রাম নগরের ‘আতঙ্ক’ হয়ে আছে জলাবদ্ধতা। গত এক যুগে \r\nএই সমস্যা দূর করতে চট্টগ্রাম সিটি করপোরেশন খরচ করেছে প্রায় ২৭১ কোটি \r\nটাকা। নগর পরিকল্পনাবিদেরা বলছেন, সিটি করপোরেশন খেয়ালখুশিমতো টাকা খরচ \r\nকরায় জলাবদ্ধতার সমস্যা আগের চেয়ে আরও প্রকট হয়েছে। আবার যে টাকা খরচ \r\nহয়েছে, তা মোটেও যথেষ্ট নয়।<br>গত চার মাসে অন্তত ১৫ দিন জলাবদ্ধতার কারণে\r\n কার্যত অচল ছিল চট্টগ্রাম। টানা এক ঘণ্টা ভারী বৃষ্টি হলেই নগরের নিচু \r\nএলাকার সড়ক, বাসাবাড়ি আর ব্যবসাপ্রতিষ্ঠানে পানি ঢুকছে।<br>সিটি করপোরেশনের\r\n বার্ষিক প্রতিবেদন ও বাজেট বই বিশ্লেষণ করে দেখা যায়, মহিউদ্দিন চৌধুরী \r\nমেয়র থাকাকালে ২০০৩-০৪ থেকে ২০০৮-০৯ অর্থবছর পর্যন্ত জলাবদ্ধতা নিরসনে ব্যয়\r\n হয়েছে ৬৬ কোটি ১১ লাখ টাকা। ২০১০ সালের ১৭ জুন মেয়র নির্বাচনে মহিউদ্দিন \r\nচৌধুরীকে পরাজিত করেন মোহাম্মদ মনজুর আলম। তাঁর প্রধান প্রতিশ্রুতি ছিল \r\nজলাবদ্ধতা নিরসন করা। মেয়র থাকাকালে তিনি জলাবদ্ধতা দূর করতে খরচ করেছেন \r\n২০৫ কোটি ৫২ লাখ টাকা।<br>জলাবদ্ধতা দূর করতে করপোরেশন যে টাকা খরচ করেছে,\r\n তার সঠিক ব্যবহার নিয়ে সংশয় প্রকাশ করেছেন ব্র্যাক বিশ্ববিদ্যালয়ের \r\nব্র্যাক ইনস্টিটিউট অব গভর্নেন্স অ্যান্ড ডেভেলপমেন্টের নির্বাহী পরিচালক \r\nসুলতান হাফিজ রহমান। মুঠোফোনে তিনি প্রথম আলোকে বলেন, প্রতিবছর চট্টগ্রাম\r\n নগরের জলাবদ্ধতার অবস্থা দেখে মনে হয় না, এই অর্থও ঠিকভাবে খরচ করা হয়েছে।\r\n চট্টগ্রাম নগরের জলাবদ্ধতা নিরসনে ১২ বছরে যদি ২৭১ কোটি টাকা খরচও হয়, \r\nতাহলে তা প্রয়োজনের তুলনায় একেবারে অপর্যাপ্ত।<br>ব্র্যাক বিশ্ববিদ্যালয়ের \r\nব্র্যাক ইনস্টিটিউট অব গভর্নেন্স অ্যান্ড ডেভেলপমেন্ট ‘নগর পরিস্থিতি: \r\nবাসযোগ্য চট্টগ্রামের জন্য শাসনব্যবস্থা’ শীর্ষক একটি গবেষণাপত্র গত বছরের\r\n সেপ্টেম্বরে প্রকাশ করে। এতে বলা হয়েছে, নগরের মহাপরিকল্পনায় \r\nঅগ্রাধিকারমূলক প্রকল্পগুলোকে উপেক্ষা করে রাজনৈতিক বিবেচনায় কম \r\nগুরুত্বপূর্ণ প্রকল্প বাস্তবায়ন করা হচ্ছে। চট্টগ্রাম শহরে কোনো ড্রেনেজ ও\r\n ঝড়-বৃষ্টিজনিত সৃষ্ট পানি নিষ্কাশনের ব্যবস্থা নেই। ফলে বর্ষা মৌসুমে \r\nঅল্পবৃষ্টিতেই নগরে জলাবদ্ধতার সৃষ্টি হয়। এ সমস্যা নিরসনে নগরের \r\nমহাপরিকল্পনা অগ্রাধিকার প্রকল্প এখনো বাস্তবায়িত হয়নি। এ জন্য সিটি \r\nকরপোরেশন, সিডিএ, চট্টগ্রাম ওয়াসা ও অন্যান্য সংশ্লিষ্ট প্রতিষ্ঠানের \r\nসমন্বয় ও অর্থের অভাব অনেকাংশেই দায়ী।<br>বাংলাদেশ ইঞ্জিনিয়ার্স \r\nইনস্টিটিউশন চট্টগ্রামের সাবেক সভাপতি প্রকৌশলী দেলোয়ার মজুমদার বলেন, \r\nজলাবদ্ধতা নিরসনে সিটি করপোরেশন যা করেছে, তা মূলত রুটিন কাজ করেছে। \r\nড্রেনেজ মহাপরিকল্পনা অনুযায়ী নতুন খাল খনন ও জলাধার নির্মাণের মতো মূল \r\nকাজগুলো করেনি। এখন জলাবদ্ধতার যে অবস্থা দাঁড়িয়েছে, তার থেকে মুক্তি পেতে \r\nহলে সামনের পাঁচ বছরে অন্তত আড়াই হাজার কোটি টাকা খরচ করতে হবে। এই অর্থ \r\nপরিকল্পিতভাবে খরচ করা হলে আগামী ৫০ বছর জলাবদ্ধতার সমস্যা থাকবে না।<br>বৃষ্টির\r\n জলাবদ্ধতার ভোগান্তির মধ্যেই কয়েক বছর ধরে নতুন বিপদ হয়ে এসেছে \r\nজোয়ারজনিত জলাবদ্ধতা। নগর পরিকল্পনাবিদেরা বলছেন, সমুদ্রের জোয়ার \r\nকর্ণফুলী নদীতে আসার পর তা উপচে খাল-নালা দিয়ে নগরের নিচু এলাকা প্লাবিত \r\nকরছে। এতে দেশের বৃহত্তম পাইকারি বাজার খাতুনগঞ্জ, চাক্তাইয়ের \r\nব্যবসাপ্রতিষ্ঠানসহ আগ্রাবাদ, বাকলিয়া, পাথরঘাটার মতো নিচু এলাকা জলাবদ্ধ \r\nহয়ে পড়ছে।<br>সিটি করপোরেশন সূত্র জানায়, মহিউদ্দিন চৌধুরী মেয়র থাকাকালে\r\n চাক্তাই খালের দুই পাশে প্রতিরোধ দেয়াল নির্মাণ এবং খালের তলা পাকা করার \r\nপ্রকল্প বাস্তবায়নে ব্যয় হয়েছে ২৬ কোটি ৪৩ লাখ টাকা। বহদ্দারহাটের খাজা \r\nসড়কের নালার উন্নয়নে খরচ হয়েছে ৩ কোটি টাকা। এ ছাড়া নালা-নর্দমা ও খাল থেকে\r\n মাটি উত্তোলন, নালা-নর্দমা ও প্রতিরোধ দেয়াল নির্মাণে ব্যয় হয়েছে ৩৪ কোটি \r\n২৬ লাখ টাকা। আর ২০০৮-০৯ সালে জলাবদ্ধতা নিরসনের জন্য ২ কোটি ৪২ লাখ টাকায় \r\nসাতটি খননযন্ত্র কেনা হয়।<br>করপোরেশনের প্রকৌশল বিভাগ সূত্র জানায়, \r\nজলাবদ্ধতা দূর করতে নগরের খাল ও নালা-নর্দমা সংস্কারেই বেশি গুরুত্ব দেওয়া \r\nহয়। চট্টগ্রাম নগরের খালগুলোর মোট দৈর্ঘ্য ১৪৪ কিলোমিটার। এর বাইরে \r\nনালা-নর্দমা রয়েছে ৪৮০ কিলোমিটার। করপোরেশনের নির্বাহী প্রকৌশলী \r\n(পরিকল্পনা ও উন্নয়ন) মুনিরুল হুদা মুঠোফোনে প্রথম আলোকে বলেন, প্রতিবছর\r\n খাল ও নালা-নর্দমার যেসব অংশে পানিপ্রবাহ বাধাগ্রস্ত হয়, সেখানেই খনন করা \r\nহয়।<br>সিটি করপোরেশনের তত্ত্বাবধায়ক প্রকৌশলী আনোয়ার হোছাইন প্রথম আলোকে \r\nবলেন, প্রতিবছর নালা-নর্দমা ও ১৪৪ কিলোমিটার দৈর্ঘ্যের ১৬টি খাল খনন করতে \r\n২০ কোটি টাকার বেশি প্রয়োজন হয়। কিন্তু তহবিল সংকটের কারণে ৮-১০ কোটি টাকার\r\n বেশি খরচ করা যায় না।<br>নগর পরিকল্পনাবিদ ও গবেষকদের মতে, সিটি করপোরেশন \r\nজলাবদ্ধতা নিরসনে ড্রেনেজ মহাপরিকল্পনা অনুযায়ী মূল কাজগুলো করেনি। শুধু \r\nরুটিন কাজই করেছে। এর বেশির ভাগই হয়েছে অপরিকল্পিতভাবে। ফলে জলাবদ্ধতার \r\nদুর্ভোগ থেকে নগরবাসীর মুক্তি মিলছে না।<br>পরিকল্পিত চট্টগ্রাম ফোরামের \r\nসাধারণ সম্পাদক জেরিনা হোসেন বলেন, সিটি করপোরেশন কোনো ধরনের পরিকল্পনা \r\nছাড়াই জলাবদ্ধতা নিরসনে টাকা ব্যয় করেছে। করপোরেশন খেয়ালখুশিমতো খরচ করে। \r\nএভাবে চললে জলাবদ্ধতা নিরসন হবে না।<br>এ বিষয়ে চট্টগ্রাম সিটি করপোরেশনের \r\nমেয়র আ জ ম নাছির উদ্দীন দেশে না থাকায় তাঁর বক্তব্য পাওয়া যায়নি। তবে \r\nভারপ্রাপ্ত মেয়র চৌধুরী হাসান মাহমুদ প্রথম আলোকে বলেন, আ জ ম নাছির উদ্দীন\r\n পরিকল্পিত উপায়ে জলাবদ্ধতা নিরসনের জন্য নগর পরিকল্পনাবিদ ও বিশেষজ্ঞদের \r\nসঙ্গে বৈঠক করেছেন। মেয়র বিভিন্ন মন্ত্রণালয়ের সঙ্গে যোগাযোগ করছেন। আগামী \r\nএক বছরের মধ্যে জোয়ারজনিত জলাবদ্ধতার সমস্যা দূর হবে বলে আশা প্রকাশ করেন \r\nভারপ্রাপ্ত মেয়র।<br>তবে বিদ্যমান যন্ত্রপাতি ও সুযোগ-সুবিধা দিয়ে সিটি \r\nকরপোরেশনের পক্ষে জলাবদ্ধতা নিরসন করা সম্ভব নয় বলে জানান সাবেক মেয়র \r\nমোহাম্মদ মনজুর আলম। জলাবদ্ধতা নিরসনের জন্য ১৯৯৫ সালে চট্টগ্রাম উন্নয়ন \r\nকর্তৃপক্ষের করা ড্রেনেজ মহাপরিকল্পনা দ্রুত বাস্তবায়নে সরকারের আন্তরিক \r\nভূমিকা প্রত্যাশা করেন তিনি। সাবেক মেয়র বলেন, বৃষ্টির সময় পাহাড়ের মাটি ও \r\nবালু এসে নালা-নর্দমা ও খালগুলো ভরাট হয়ে যায়। তাঁর সময়ে \r\nপানিনিষ্কাশন-ব্যবস্থা স্বাভাবিক রাখার জন্য খাল ও নালা-নর্দমাগুলো নিয়মিত \r\nপরিষ্কার ও খনন করা হতো বলে তিনি দাবি করেন।<br>সিটি করপোরেশন সূত্র জানায়,\r\n মনজুর আলমের সময় বহদ্দারহাটের এশিয়ান হাউজিং সোসাইটি থেকে বহদ্দারহাট \r\nমোড়ের ডোম খাল পর্যন্ত নালা নির্মাণ করা হয়। ২২০০ ফুট দীর্ঘ ও ১৪ ফুট \r\nপ্রশস্ত এই নালা নির্মাণে ব্যয় হয় ৮ কোটি ৬০ লাখ টাকা। মহেশখালের দুই পাড়ে ২\r\n দশমিক ৩ কিলোমিটার দৈর্ঘ্যের প্রতিরোধ দেয়াল দেওয়া হয়। চার বছরে ১৭০ দশমিক\r\n ৫৫ কিলোমিটার খাল ও নালা-নর্দমা থেকে মাটি উত্তোলন ও অপসারণ করা হয়। \r\nজলাবদ্ধতা নিরসন ও আবর্জনা অপসারণ কার্যক্রমের জন্য ২০১০ থেকে ২০১৪ সাল \r\nপর্যন্ত ৪৪টি ডাম্প ট্রাক, সাতটি খননযন্ত্র ও দুটি উভচর খননযন্ত্র কেনা হয়।<br>নগর পরিকল্পনাবিদেরা বলছেন, সিটি করপোরেশন জলাবদ্ধতা দূর করতে চার বছর ধরে বাজেটে বরাদ্দ বাড়ালেও নগরবাসী তার সুফল পায়নি।<br>দক্ষিণ\r\n বাকলিয়ার চর চাক্তাই সিটি করপোরেশন উচ্চবিদ্যালয়ের প্রধান শিক্ষক অরুণ \r\nচন্দ্র দাশ বলেন, যেদিন ভারী বৃষ্টি হয় সেদিন জলাবদ্ধতার কারণে নির্ধারিত \r\nসময়ের আগেই ছাত্রছাত্রীদের ছুটি দিতে হয়। জোয়ারের জলাবদ্ধতার কারণেও একই \r\nসমস্যা হয়।<br>শুলকবহর ওয়ার্ডের কাউন্সিলর মো. মোরশেদ আলম প্রথম আলোকে \r\nবলেন, পরিকল্পনা অনুযায়ী নগরের ড্রেনেজ ব্যবস্থা গড়ে ওঠেনি। ফলে মুষলধারে \r\nবৃষ্টি হলেই ওয়ার্ডের দুই-তৃতীয়াংশ এলাকা তলিয়ে যায়। অবশ্য এবার চাক্তাই \r\nখাল খনন করায় দুর্ভোগ কিছুটা কমেছে বলে দাবি করেন তিনি।<br>চাক্তাই খালের \r\nপাড়েই গড়ে উঠেছে দেশের বৃহত্তম পাইকারি পণ্যের বাজার খাতুনগঞ্জ ও চাক্তাই। \r\nখাতুনগঞ্জ ট্রেড অ্যান্ড ইন্ডাস্ট্রিজ অ্যাসোসিয়েশনের সাধারণ সম্পাদক ছৈয়দ \r\nছগীর আহমদ মুঠোফোনে প্রথম আলোকে বলেন, বৃষ্টি ও জোয়ারজনিত জলাবদ্ধতার \r\nকারণে চাক্তাই-খাতুনগঞ্জে গত তিন মাসে জলাবদ্ধতায় প্রায় ১৫০ কোটি টাকার \r\nপণ্য নষ্ট হয়েছে।<br>চট্টগ্রামের জলাবদ্ধতা সমস্যা নিয়ে প্রবীণ অর্থনীতিবিদ\r\n ও ইস্ট ডেল্টা বিশ্ববিদ্যালয়ের উপাচার্য মুহাম্মদ সিকান্দার খান \r\nমুঠোফোনে প্রথম আলোকে বলেন, নগরের খালগুলো পানিনিষ্কাশনের চেয়ে \r\nময়লা-আবর্জনার ভাগাড় হিসেবে বেশি ব্যবহৃত হয়। খাল খনন ও প্রশস্ত করার কাজ \r\nবিজ্ঞানসম্মতভাবে হয় না। ফলে জলাবদ্ধতার সমস্যা কাটছে না। তিনি বলেন, \r\nচট্টগ্রামের উন্নয়নের জন্য প্রণীত মহাপরিকল্পনার বিষয়টি মাথায় রেখে কখনো \r\nকোনো কাজ বাস্তবায়িত হয় না।', 'Md. Shafiul Alam', 'blog_images/NZuE28e00AROtGnit11Y.jpg', 0, 1, '2015-09-07 00:14:43', '2015-09-07 00:14:43');
INSERT INTO `tbl_blog` (`id`, `category_id`, `blog_title`, `blog_short_description`, `blog_long_description`, `author_name`, `blog_image`, `hit_count`, `publication_status`, `updated_at`, `created_at`) VALUES
(8, 1, 'দীঘিনালায় গুলি বিনিময়, পাঁচটি অস্ত্র উদ্ধার', 'খাগড়াছড়ির দীঘিনালার ছাতকছড়া এলাকায় আজ সোমবার ভোরে সেনাবাহিনীর সঙ্গে সন্ত্রাসীদের গুলি বিনিময়ের ঘটনা ঘটেছে।', '<article itemscope="" itemtype="http://schema.org/Article" class="jw_detail_content_holder content mb10 oh">\r\n<div itemprop="articleBody"><p>খাগড়াছড়ির দীঘিনালার ছাতকছড়া এলাকায় আজ সোমবার ভোরে সেনাবাহিনীর সঙ্গে সন্ত্রাসীদের গুলি বিনিময়ের ঘটনা ঘটেছে।</p>\r\n<p>এই অপারেশনে নেতৃত্বে দেন লে. কর্নেল মোহসীন রেজা। তিনি প্রথম আলোকে \r\nবলেন, সেনাবাহিনীর সদস্যরা ঘটনাস্থল থেকে গ্রেনেড, মেশিনগানসহ পাঁচটি \r\nঅস্ত্র উদ্ধার করেছে। এ ছাড়া ৪৫০টি গুলি উদ্ধার করা হয়। ঘটনাস্থল থেকে \r\nবড়শোভা চাকমা নামের একজনকে আটক করা হয়েছে।</p>\r\n<p>খাগড়াছড়ি ২০৩ পদাতিক ব্রিগেডের অধিনায়ক ব্রিগেডিয়ার জেনারেল মাহবুব ঘটনার সত্যতা নিশ্চিত করেছেন।</p></div>\r\n</article>', 'Md. Shafiul Alam', 'blog_images/cpy1Vqy9MIBLHWdCtqyb.avi', 16, 1, '2015-09-12 04:09:47', '2015-09-07 00:21:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
`id` int(3) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_description`, `publication_status`, `updated_at`, `created_at`) VALUES
(1, 'Sports', '----------------------', 1, '2015-08-30 04:58:45', '2015-08-29 22:46:15'),
(2, 'Politics', '------------------', 1, '2015-08-30 04:59:34', '2015-08-29 22:46:42'),
(3, 'Drama', '------------------------', 1, '2015-08-29 22:46:52', '2015-08-29 22:46:52'),
(4, 'Action', '--------------', 1, '2015-08-29 22:47:14', '2015-08-29 22:47:14'),
(5, 'Stories', '------------------', 1, '2015-08-30 04:59:25', '2015-08-29 22:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE IF NOT EXISTS `tbl_comments` (
`id` int(11) NOT NULL,
  `blog_id` int(5) NOT NULL,
  `user_author_name` varchar(50) NOT NULL,
  `blog_comments` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `blog_id`, `user_author_name`, `blog_comments`, `publication_status`, `updated_at`, `created_at`) VALUES
(1, 6, 'Shafana Alam', 'বাংলাদেশে গরু ‘পাচার’ পুরোপুরি বন্ধের দাবি জানিয়েছে ভারতের কট্টর হিন্দুত্ববাদী সংগঠন রাষ্ট্রীয় স্বয়ং সেবক সংঘ (আরএসএস)।', 1, '2015-09-07 05:27:00', '2015-09-06 23:17:36'),
(3, 6, 'Md. Shafiul Alam', 'প্রধানমন্ত্রীসহ বিজেপির সব মন্ত্রী, দলীয় সভাপতি অমিত শাহসহ শীর্ষ নেতারা পালা করে তিন দিনের এই বৈঠকে উপস্থিত ছিলেন।', 1, '2015-09-07 05:27:00', '2015-09-06 23:21:34'),
(4, 1, 'Md. Shafiul Alam', ' ১ পয়েন্ট নিয়ে পঞ্চম স্থানে আছে বাংলাদেশ।', 1, '2015-09-07 05:43:29', '2015-09-06 23:43:05'),
(5, 8, 'Shafana Alam', 'This is Test Comments', 1, '2015-09-09 06:18:33', '2015-09-09 00:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments_replay`
--

CREATE TABLE IF NOT EXISTS `tbl_comments_replay` (
`id` int(5) NOT NULL,
  `comments_id` int(3) NOT NULL,
  `user_id` int(3) NOT NULL,
  `replay_comments` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Shafana Alam', 'shafana@yahoo.com', '96e79218965eb72c92a549dd5a330112', '01712742217', 'Dhaka', '2015-09-05 06:40:54', '0000-00-00 00:00:00'),
(2, 'Md. Shafiul Alam', 'topu1826@gmail.com', '96e79218965eb72c92a549dd5a330112', '01914872766', 'Dhaka', '2015-09-05 06:41:15', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comments_replay`
--
ALTER TABLE `tbl_comments_replay`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_comments_replay`
--
ALTER TABLE `tbl_comments_replay`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
