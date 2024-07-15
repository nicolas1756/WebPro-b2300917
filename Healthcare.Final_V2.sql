SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `healthcare` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `healthcare`;

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `registered` datetime NOT NULL,
  `method` enum('facebook','google','linkedin') NOT NULL,
  `sex` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `accounts` (`id`, `name`, `email`, `picture`, `registered`, `method`, `sex`, `role`, `birthdate`) VALUES
(8, 'Admin', 'woohockyimm2005@gmail.com', '', '2024-06-17 19:42:46', 'google', 'male', '@%^198278ADm1n!@#$*', '2007-08-18'),
(9, 'Anya patel', 'nicolas88yeh@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocKflqemVqUh0yZK9LTJLb1Z-o57THVF-PPOO5Ydaz8cFiI2OvKj=s96-c', '2024-06-24 20:43:53', 'google', 'male', '@%^198278ADm1n!@#$*', '2007-08-08'),
(15, 'Admin', 'nicolasyeh880@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocKSMb-Yotb522S_Q7B_Q1fFSoHYFd6zyWjuYbFYf3UOfdcK6XN_=s96-c', '2024-07-03 03:15:56', 'google', 'male', '@%^198278ADm1n!@#$*', '2007-08-03'),
(18, 'nicolas yeh', 'nyjg08@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocKWjWvFkSR-RoZrMyOu_JFYFaWdFMsfBjux0tTzQ6cO6d60Ow=s96-c', '2024-07-06 20:55:45', 'google', 'male', 'Standard', '2024-07-03'),
(21, 'Nicolas ', 'newsletter.health.1@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocJXy2d6fPMmbx8Y2awQS1EF-FIizA9aHhdQAC_U4eJ9VaIpMQ=s96-c', '2024-07-11 16:33:53', 'google', 'male', 'Standard', '2024-07-10');

DROP TABLE IF EXISTS `appointments`;
CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `appointments` (`appointment_id`, `user_id`, `doctor_id`, `appointment_datetime`) VALUES
(22, 9, 25, '2024-07-12 12:00:00');

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_published` datetime NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `articles` (`article_id`, `user_id`, `date_published`, `content`) VALUES
(24, 9, '2024-07-02 20:08:29', 'Title,H1,body,H2,body,H2,body,H2,body,body!$$*$%%.$Breathe Deeply, De-Stress Fully: Techniques for Relaxation!!&&^#&&^^.!A guide to relaxation!!&&^#&&^^.!Feeling overwhelmed by the daily grind?  Stress is a common foe in our busy lives, but it doesn\'t have to control us.  Fortunately, there are a range of relaxation techniques that can help us de-stress and find inner calm.!!&&^#&&^^.!Why Relaxation Matters:!!&&^#&&^^.!Chronic stress can have a significant negative impact on our physical and mental health. It can lead to headaches, muscle tension, anxiety, and difficulty sleeping.  <br><br>Relaxation techniques can help to:<br><br>1. Lower blood pressure and heart rate<br><br>2. Reduce muscle tension<br><br>3. Improve sleep quality<br><br>4. Enhance focus and concentration<br><br>5. Boost mood and overall well-being!!&&^#&&^^.!Techniques for Inner Peace:!!&&^#&&^^.!1. Deep Breathing: This simple yet powerful technique involves slow, deep breaths from your diaphragm. Focus on inhaling for a count of four, holding for a count of four, and exhaling slowly for a count of eight.<br><br>2. Progressive Muscle Relaxation: Tense and relax different muscle groups throughout your body, one at a time. This helps to release physical tension and promote relaxation.<br><br>3. Mindfulness Meditation: Focus your attention on the present moment, without judgment. Meditation can help to quiet racing thoughts and promote inner peace.<br><br>4. Visualization: Imagine yourself in a peaceful and calming setting. Engage your senses to create a vivid mental image and let go of worries.<br>Yoga and Tai Chi: These mind-body practices combine gentle movement, breathing exercises, and meditation to promote relaxation and stress reduction.!!&&^#&&^^.!Finding What Works for You:!!&&^#&&^^.!Experiment with different relaxation techniques to find what works best for you.  Some people may find deep breathing most effective, while others may prefer guided meditations or yoga.  The key is to find a practice you can integrate into your daily routine, even if it\'s just for a few minutes each day. By incorporating relaxation techniques into your life, you can effectively manage stress, improve your overall health, and find greater peace of mind.!!&&^#&&^^.!(This article was AI generated: https://g.co/gemini/share/6c3526e483cf)'),
(25, 9, '2024-07-02 20:14:11', 'Title,body,H2,body,H2,body,H2,body,body!$$*$%%.$Nature\'s Embrace: How Spending Time Outdoors Benefits Your Health!!&&^#&&^^.!In our increasingly digital world, we often find ourselves glued to screens and confined indoors. However, there\'s a powerful antidote to the stresses of modern life waiting right outside our doors: nature. Spending time in green spaces offers a multitude of benefits for our physical and mental well-being.!!&&^#&&^^.!A Dose of Vitamin N:!!&&^#&&^^.!Research suggests that exposure to nature, often referred to as \"vitamin N,\" can significantly enhance our health in several ways:<br><br>1. Stress Reduction: Immersing ourselves in nature has a calming effect. Studies show that spending time in forests or parks can lower stress hormones, bringing down blood pressure and heart rate.<br><br>2. Improved Mood and Mental Well-being: Nature exposure can boost feelings of happiness and optimism.  Being outdoors can combat symptoms of anxiety and depression, promoting a more positive outlook.<br><br>3. Enhanced Cognitive Function: Spending time in nature can improve focus, memory, and creativity.  Nature\'s sights and sounds seem to have a restorative effect on the mind, allowing us to think more clearly.<br><br>4. Physical Health Benefits:  Studies have linked time outdoors to a stronger immune system, lower risk of chronic diseases like heart disease and diabetes, and even improved sleep quality.!!&&^#&&^^.!Finding Your Green Space:!!&&^#&&^^.!The beauty of nature\'s benefits is that they can be experienced in many ways. You don\'t need to embark on a wilderness expedition to reap the rewards. Here are some ways to incorporate nature into your life:<br><br>1. Take a walk in a park or nature reserve.<br><br>2. Hike or bike on a scenic trail.<br><br>3. Sit by a river or lake and listen to the calming sounds of water.<br><br>4. Garden in your backyard or on a balcony.<br><br>5. Simply sit on a park bench and observe the beauty of nature around you.!!&&^#&&^^.!Embrace the Outdoors:!!&&^#&&^^.!No matter your age or fitness level, there\'s a way to connect with nature and experience its restorative power. Make a conscious effort to spend time outdoors each day, even if it\'s just for a short while. You\'ll be surprised at how much your body and mind benefit from nature\'s embrace.!!&&^#&&^^.!(This article was AI generated: https://g.co/gemini/share/c93c55703750)'),
(26, 9, '2024-07-02 19:37:03', 'Title,H1,body,H2,body,H2,body,H2,body,H2,body,body!$$*$%%.$Beat the Afternoon Slump: Simple Strategies to Boost Your Energy Levels!!&&^#&&^^.!Understanding how motivation works!!&&^#&&^^.!The afternoon slump is a familiar foe – that dreaded dip in energy that hits sometime between lunch and dinner. It can zap your focus, productivity, and overall mood. But fear not, there are simple strategies you can employ to combat the afternoon slump and reclaim your energy.!!&&^#&&^^.!Identify Your Triggers:!!&&^#&&^^.!1.Diet: A heavy lunch high in carbohydrates or sugary foods can lead to a blood sugar crash later in the day.<br><br>2.Hydration: Dehydration is a major culprit behind fatigue. Aim to stay hydrated throughout the day.<br><br>3. Lack of Sleep: Being chronically sleep deprived will definitely impact your energy levels in the afternoon.<br><br>4.Inactivity: Sitting for extended periods can lead to sluggishness.!!&&^#&&^^.!Strategies to Reinvigorate:!!&&^#&&^^.!1. Move Your Body: Take a brisk walk, do some light stretches, or climb a few flights of stairs. Even a short burst of activity can improve blood flow and wake you up.<br><br>2. Hydrate: Feeling sluggish could be a sign of dehydration. Replenish your fluids with water or unsweetened tea.<br><br>3. Healthy Snacking: Opt for snacks that provide sustained energy, like fruits, nuts, or yogurt with granola.<br><br>4. Light Exposure: Get some natural sunlight, even if it\'s just for a few minutes. Light exposure helps regulate your sleep-wake cycle.<br><br>5. Power Nap: If possible, a 20-minute power nap can be incredibly effective in refreshing your mind and body.!!&&^#&&^^.!Long-Term Solutions:!!&&^#&&^^.!1. Regular Exercise: Aim for at least 30 minutes of moderate-intensity exercise most days of the week.<br><br>2. Prioritize Sleep: Getting 7-8 hours of quality sleep is essential for maintaining energy levels throughout the day.<br><br>3. Manage Stress: Chronic stress can drain your energy reserves. Practice relaxation techniques like deep breathing or meditation.!!&&^#&&^^.!Conclusion!!&&^#&&^^.!By incorporating these tips into your daily routine, you can overcome the afternoon slump and maintain optimal energy levels throughout the day. Remember, a little planning and effort can go a long way in keeping you feeling your best!!!&&^#&&^^.!(This article was AI generated: https://g.co/gemini/share/7b51889febc6)'),
(27, 9, '2024-07-02 19:31:08', 'Title,H1,body,H2,body,H2,body,H2,body,body!$$*$%%.$The Importance of Sleep for Overall Health!!&&^#&&^^.!Sleep!!&&^#&&^^.!Sleep is often placed on the backburner in our fast-paced world, but getting enough quality shut-eye is crucial for our overall health and well-being. Just like regular exercise and a balanced diet, sleep is a vital pillar of a healthy lifestyle.!!&&^#&&^^.!Here\'s why prioritizing sleep is essential:!!&&^#&&^^.!1. Boosts Physical Health: Sleep allows the body to repair and rebuild tissues. It also strengthens the immune system, making us less susceptible to illness.<br><br>2. Enhances Mental Well-being:  Sleep is essential for regulating mood and cognitive function.  Chronic sleep deprivation can lead to anxiety, depression, and difficulty concentrating.<br><br>3. Improves Safety: Drowsiness is a major risk factor for accidents behind the wheel and at work.  Getting enough sleep keeps you alert and focused throughout the day.!!&&^#&&^^.!How much sleep do we need?!!&&^#&&^^.!Sleep needs vary by age, but most adults require 7-8 hours of quality sleep per night.  Children and teenagers need even more sleep to support their growth and development.!!&&^#&&^^.!Tips for Better Sleep:!!&&^#&&^^.!1. Develop a Regular Sleep Schedule: Go to bed and wake up at consistent times each day, even on weekends. This helps regulate your body\'s natural sleep-wake cycle.<br><br>2. Create a Relaxing Bedtime Routine: Wind down before bed with calming activities like taking a warm bath, reading a book, or listening to soothing music.<br><br>3. Optimize Your Sleep Environment: Ensure your bedroom is cool, dark, and quiet. Invest in blackout curtains, earplugs, and a comfortable mattress.<br><br>4. Limit Screen Time Before Bed: The blue light emitted from electronic devices can disrupt sleep patterns. Avoid screens for at least an hour before bedtime.<br><br>5. Regular Exercise: Physical activity promotes better sleep, but avoid strenuous workouts close to bedtime.<br><br>By prioritizing sleep and incorporating these tips into your routine, you can improve your overall health and well-being. Remember, a good night\'s sleep is an investment in your physical and mental vitality.!!&&^#&&^^.!(This article was AI generated: https://g.co/gemini/share/2e2740c55fcc)'),
(31, 9, '2024-07-12 15:50:29', 'Title,body!$$*$%%.$New Study Links Gut Bacteria to Lower Risk of Heart Disease!!&&^#&&^^.!	Heart disease remains the leading cause of death globally, and researchers are constantly seeking new ways to prevent it. A recent study published in a top medical journal suggests a surprising link between the health of our gut bacteria and a reduced risk of heart disease.<br><br>	The study, which followed a large group of people over several years, found that individuals with a more diverse and balanced gut microbiome were less likely to develop heart disease. The gut microbiome is the complex community of trillions of bacteria that reside in our intestines and play a vital role in digestion, immunity, and overall health.<br><br>	Scientists believe these friendly gut bacteria may help protect against heart disease in several ways. They may aid in the regulation of cholesterol levels, reduce inflammation throughout the body, and even help produce beneficial compounds that contribute to heart health.<br><br>	This research is exciting because it opens doors for potential new preventative strategies for heart disease. By understanding how gut bacteria impacts heart health, researchers may be able to develop ways to manipulate the microbiome to reduce risk. This could involve encouraging the growth of beneficial bacteria through diet or probiotics, or even transplanting healthy gut bacteria from one person to another.<br><br>	It\'s important to note that this is a relatively new field of research, and more studies are needed to confirm these findings and determine the best ways to leverage gut health for heart disease prevention. However, this is a promising development that could lead to significant advancements in the fight against this global health burden.<br><br>	In the meantime, there are established ways to promote heart health. Maintaining a healthy weight, eating a balanced diet rich in fruits, vegetables, and whole grains, and getting regular exercise are all crucial for keeping your heart healthy. You can also talk to your doctor about your individual risk factors for heart disease and discuss strategies for prevention.<br><br>This article was AI generated: https://g.co/gemini/share/2a353f00e53a');
DROP TRIGGER IF EXISTS `insert_article_view`;
DELIMITER $$
CREATE TRIGGER `insert_article_view` AFTER INSERT ON `articles` FOR EACH ROW INSERT INTO article_views (article_id) VALUES (NEW.article_id)
$$
DELIMITER ;

DROP TABLE IF EXISTS `article_views`;
CREATE TABLE `article_views` (
  `article_id` int(11) NOT NULL,
  `view_counter` int(11) DEFAULT 0,
  `trending_counter` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `article_views` (`article_id`, `view_counter`, `trending_counter`) VALUES
(24, 14, 0),
(25, 58, 0),
(26, 9, 0),
(27, 29, 0),
(31, 13, 0);

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE `doctors` (
  `Doctor_id` int(11) NOT NULL,
  `Doctor_location` varchar(100) NOT NULL,
  `Doctor_specialization` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `doctors` (`Doctor_id`, `Doctor_location`, `Doctor_specialization`, `user_id`) VALUES
(25, '1.22', 'Cardiology', 9);

DROP TABLE IF EXISTS `last_trending_reset`;
CREATE TABLE `last_trending_reset` (
  `week_reset` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `last_trending_reset` (`week_reset`) VALUES
('2024-07-15');

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_published` datetime NOT NULL,
  `content` text NOT NULL,
  `view_counter` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `posts` (`post_id`, `user_id`, `date_published`, `content`, `view_counter`) VALUES
(7, 9, '2024-07-06 13:35:38', 'Feeling Overwhelmed by Health Information - Help!!$$*$%%.$Hi everyone,\n\nI\'m posting because I\'m feeling a little lost lately. I\'ve been trying to learn more about [insert specific health topic, like \"healthy eating for weight loss\" or \"managing chronic pain\"], but there\'s just SO much information out there!  It\'s hard to know what\'s reliable and what\'s just someone\'s opinion.\n\nI\'ve tried searching online, but I end up with a million different websites with conflicting advice.  I\'m worried that I\'m going to make things worse by following the wrong information.\n\nHas anyone else struggled with this?  Do you have any tips for finding trustworthy health information online?  Maybe there are some websites or resources you recommend?\n\nI\'d also love to hear about your experiences with [insert specific health topic].\n\nThanks in advance for your help!', 0),
(8, 9, '2024-07-06 13:57:13', 'Debunking Health Myths - Share Your Experiences!!$$*$%%.$Hey everyone,\r\n\r\nWe\'ve all been there - scrolling through social media and coming across some crazy \"health hack\" or miracle cure.  It can be tempting to believe everything you read online, but let\'s be honest, a lot of it just sounds too good to be true!\r\n\r\nI\'m curious to hear about some of the most outrageous health myths you\'ve encountered.  Have you ever fallen for one yourself?  What made you realize it wasn\'t true?\r\n\r\nOn the flip side, maybe you\'ve come across some fantastic resources that helped you debunk a health myth.  Were there any specific websites, articles, or healthcare professionals who helped you sort fact from fiction?\r\n\r\nLet\'s use this thread to be a community of informed health seekers! Share your experiences, debunk some myths together, and point each other towards reliable sources.\r\n\r\nLooking forward to hearing from you all! \r\n\r\nGenerated by ai: https://g.co/gemini/share/f3ae5fa0f4c2', 0),
(9, 9, '2024-07-06 13:58:57', 'Taming the Tension: Any Tips for Managing Occasional Headaches with OTC Meds?!$$*$%%.$Hi everyone,\r\n\r\nAnyone else out there struggle with occasional tension headaches?  Lately, I\'ve been clenching my jaw like crazy, and it always seems to lead to a dull ache right behind my eyes.  Ugh!\r\n\r\nI usually just grab some over-the-counter pain relievers, but I\'m curious if anyone has any recommendations for specific brands or types that work best for tension headaches.  Are there any natural remedies folks have found helpful?\r\n\r\nAlso, any tips for preventing these headaches in the first place?  Maybe there are some stress-management techniques I should try?\r\n\r\nThanks in advance for sharing your experiences!', 0),
(11, 18, '2024-07-07 14:38:28', 'Sleepless Nights & Worried - Any Advice for Natural Sleep Aids?!$$*$%%.$Hi everyone,\r\n\r\nI\'m at my wit\'s end with sleepless nights! Lately, it\'s been taking me forever to fall asleep, and even when I do, I wake up feeling exhausted. I\'ve tried everything I can think of - establishing a sleep schedule, avoiding screens before bed, relaxing baths - but nothing seems to be working.\r\n\r\nI\'m hesitant to take sleeping pills because I\'ve heard they can be addictive and have side effects.  I\'d much rather explore natural options if possible.\r\n\r\nHas anyone found success with natural sleep aids?  I\'m open to anything - herbs, supplements, relaxation techniques, anything that might help me get a good night\'s rest.\r\n\r\nHere are some additional details:\r\n\r\n1. I tend to worry a lot, which I know probably doesn\'t help.\r\n\r\n2. I do drink coffee in the morning, but I try to avoid caffeine after lunch.\r\n\r\n3. My bedroom is dark and quiet, so I don\'t think the environment is the main issue.\r\n\r\n4. My goal is simply to get a full night\'s sleep (7-8 hours) and wake up feeling refreshed.\r\n\r\nAny advice or personal experiences you can share would be greatly appreciated!\r\n\r\nThanks so much,\r\n\r\nDavid\r\n\r\nP.S.  Does this website offer any resources on natural sleep aids or healthy sleep habits? I\'d love to learn more!', 0),
(12, 18, '2024-07-07 20:50:35', 'Running for Beginners - Tips & Encouragement Needed!!$$*$%%.$Hey everyone,\r\n\r\nI\'ve finally decided to take the plunge and start running!  I\'ve always wanted to improve my fitness and get outside more, and running seems like a great way to do both.  However, I\'m a complete beginner when it comes to running, and I\'m a little bit intimidated.\r\n\r\nI\'m hoping to get some advice from experienced runners here.  Things like:\r\n\r\n1. What are some good beginner training plans? Are there any resources online or apps that you recommend?\r\n\r\n2. What kind of gear do I really need? I don\'t want to spend a fortune starting out, but I also want to be comfortable.\r\n\r\n3. How do I avoid injuries? I\'ve heard running can be hard on your knees, so any tips on preventing that would be great.\r\n\r\n4. Here\'s a bit about my current fitness level:\r\n\r\nI\'m not super out of shape, but I wouldn\'t call myself athletic either.\r\nI\'m relatively healthy, but I know I could benefit from being more active.\r\nI\'m motivated and excited to start running, but I also know I need to take things slow.\r\nMy initial goal is simply to be able to run a 5k race without stopping.  Once I achieve that, I can set new goals for myself.\r\n\r\nAnyone else out there new to running? It would be great to connect and motivate each other on this journey!\r\n\r\nThanks in advance for any advice you can offer,\r\n\r\nLisa\r\n\r\nP.S.  Does this website have any information for beginner runners?  Training plans, injury prevention tips, anything would be helpful!', 0);
DROP TRIGGER IF EXISTS `insert_post_view`;
DELIMITER $$
CREATE TRIGGER `insert_post_view` AFTER INSERT ON `posts` FOR EACH ROW INSERT INTO post_views (post_id) VALUES (NEW.post_id)
$$
DELIMITER ;

DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE `post_comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date_published` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `post_comments` (`comment_id`, `post_id`, `user_id`, `content`, `date_published`) VALUES
(5, 9, 18, 'I feel your pain! Tension headaches are the worst.  Clenching your jaw is a super common trigger, and I totally understand the dull ache behind the eyes.\n\nFor meds,  over-the-counter pain relievers are a good first line of defense. Here\'s a breakdown of some popular options:\n\nAcetaminophen (Tylenol, others): This is a good choice if you\'re concerned about stomach upset, but it may not be as effective for inflammation.\nIbuprofen (Advil, Motrin IB, others): This is a common choice for tension headaches because it reduces inflammation along with pain.\nNaproxen (Aleve): This can be a longer-lasting option than ibuprofen, but it can also take longer to kick in.\nPro-tip:  Look for medications that combine pain reliever with caffeine. Caffeine can help constrict blood vessels and enhance the pain relief.\n\nAs for preventing headaches, there are definitely some things to try:\n\nStress management: This is key! Consider relaxation techniques like deep breathing, meditation, or yoga.\nGood posture: Slouching can contribute to tension headaches. Focus on sitting up straight and keeping your shoulders relaxed.\nStay hydrated: Dehydration can be a headache trigger. Aim to drink plenty of water throughout the day.\nIdentify your triggers: Are there certain foods, lack of sleep, or screen time that seem to bring on headaches? Try to avoid those triggers or limit them.\nNatural remedies can also be helpful for some people. Things like applying a cold compress to your forehead or temples, getting a massage, or trying aromatherapy with lavender oil might be worth a shot.\n\nIf you find OTC meds aren\'t working or your headaches are becoming frequent, it\'s always a good idea to talk to your doctor. They can help you identify any underlying causes and recommend the best course of treatment.\n\nHope this helps!', '2024-07-07 09:52:22'),
(46, 8, 9, 'Dr. Anya Patel here!  I see these health myths all the time, and it can be frustrating for patients.  One that pops up constantly is the idea that antibiotics can cure the common cold.  Antibiotics only fight bacteria, and the common cold is caused by viruses!\r\n\r\nWhen patients come in with a cold, I always explain the difference and focus on managing symptoms like rest, fluids, and over-the-counter pain relievers.  There are some great resources from the [Centers for Disease Control and Prevention (CDC)]( [Centers for Disease Control and Prevention (.gov) cdc.gov]) that explain this really well.  They even have a whole section on common cold myths!', '2024-08-07 12:48:38'),
(53, 8, 18, 'One myth I saw recently was that cracking your knuckles will give you arthritis. It seems like such a common belief, but there\'s no actual evidence to support it!\r\n\r\nYou know, I actually used to think that too! Then I did some research on the [Mayo Clinic website]( [Mayo Clinic healthy bones ON mayoclinic.org]) and learned that cracking your knuckles might be annoying, but it doesn\'t cause any damage to your joints.', '2024-07-07 20:48:25');

DROP TABLE IF EXISTS `post_ratings`;
CREATE TABLE `post_ratings` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vote` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `post_ratings` (`post_id`, `user_id`, `vote`) VALUES
(9, 18, -1),
(9, 9, 1),
(8, 15, 1),
(9, 15, 1),
(8, 18, 1),
(7, 18, -1),
(8, 9, 1);

DROP TABLE IF EXISTS `post_views`;
CREATE TABLE `post_views` (
  `post_id` int(11) NOT NULL,
  `View_counter` int(11) DEFAULT 0,
  `trending_counter` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `post_views` (`post_id`, `View_counter`, `trending_counter`) VALUES
(7, 45, 0),
(8, 452, 0),
(9, 310, 0),
(11, 70, 0),
(12, 43, 1);


ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fk_appointments_doctor_id` (`doctor_id`);

ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `article_views`
  ADD PRIMARY KEY (`article_id`);

ALTER TABLE `doctors`
  ADD PRIMARY KEY (`Doctor_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `last_trending_reset`
  ADD PRIMARY KEY (`week_reset`);

ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `post_ratings`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `post_views`
  ADD PRIMARY KEY (`post_id`);


ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

ALTER TABLE `doctors`
  MODIFY `Doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `post_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;


ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `fk_appointments_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`Doctor_id`);

ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);

ALTER TABLE `article_views`
  ADD CONSTRAINT `article_views_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`);

ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);

ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);

ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  ADD CONSTRAINT `post_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);

ALTER TABLE `post_ratings`
  ADD CONSTRAINT `post_ratings_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  ADD CONSTRAINT `post_ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
