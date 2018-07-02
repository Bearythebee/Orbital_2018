-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 08:29 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `mainpage_tvshow`
--

CREATE TABLE `mainpage_tvshow` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `date_released` varchar(100) NOT NULL,
  `actors` longtext NOT NULL,
  `summary` longtext NOT NULL,
  `display` longtext,
  `rating` decimal(11,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainpage_tvshow`
--

INSERT INTO `mainpage_tvshow` (`id`, `name`, `genre`, `date_released`, `actors`, `summary`, `display`, `rating`) VALUES
(1, 'Cobra Kai', 'Action', '2018-05-02', 'Ralph Macchio, William Zabka, Courtney Henggeler', 'Set thirty years after the events of the 1984 All Valley Karate Tournament, the series focuses on Johnny Lawrence reopening the Cobra Kai dojo, which causes his rivalry with Daniel LaRusso to be reignited.', 'img/show-pics/1.jpg', '9.0'),
(2, 'Krypton', 'Action', '2018-03-21', 'Cameron Cuffe, Georgina Campbell, Shaun Sipos ', 'The untold story of Superman\'s grandfather as he fights for justice on his home planet.', 'img/show-pics/2.jpg', '7.2'),
(3, 'Troy: Fall of a City', 'Action', '2018-02-17', 'Louis Hunter, Christiaan Schoombie, Jonas Armstrong', 'Retells the story of the 10 year siege of Troy, which occurred in the 12 or 13th century BC.', 'img/show-pics/3.jpg', '3.8'),
(4, 'Black Lightning', 'Action', '2018-01-16', ' Cress Williams, China Anne McClain, Nafessa Williams ', 'A crusading school principal gets back into action as the original African-American electrical superhero.', 'img/show-pics/4.jpg', '6.5'),
(5, '9-1-1', 'Action', '2018-01-03', 'Ryan Guzman, Jennifer Love Hewitt, Angela Bassett ', 'Explores the high-pressure experiences of police, paramedics and firefighters who are thrust into the most frightening, shocking and heart-stopping situations. They must try to balance saving people with solving problems in their own lives.', 'img/show-pics/5.jpg', '7.4'),
(6, 'Knightfall', 'Action', '2017-12-06', 'Tom Cullen, Jim Carter, Pádraic Delaney', 'A look at the final days of Knights Templar during the 14th century.', 'img/show-pics/6.jpg', '6.5'),
(7, 'Future Man', 'Action', '2017-11-14', 'Eliza Coupe, Josh Hutcherson, Derek Wilson', 'Josh Futturman, a janitor by day and a gamer by night, is recruited by mysterious visitors to travel through time to prevent the extinction of humanity.', 'img/show-pics/7.jpg', '7.9'),
(8, 'The Punisher', 'Action', '2017-11-17', 'Jon Bernthal, Amber Rose Revah, Ebon Moss-Bachrach', 'After the murder of his family, Marine veteran Frank Castle became a vigilante known as \"The Punisher\" with only one goal in mind, to avenge them.', 'img/show-pics/8.jpg', '8.7'),
(9, 'S.W.A.T.', 'Action', '2017-11-02', 'Shemar Moore, Stephanie Sigman, Alex Russell', 'Follows a locally born and bred S.W.A.T. lieutenant who is torn between loyalty to the streets and duty to his fellow officers when he\'s tasked to run a highly-trained unit that\'s the last stop for solving crimes in Los Angeles.', 'img/show-pics/9.jpg', '6.5'),
(10, 'Britannia', 'Action', '2018-01-26', 'David Morrissey, Kelly Reilly, Nikolaj Lie Kaas', 'In 43 AD, the Roman Army - determined and terrified in equal measure - returns to crush the Celtic heart of Britannia - a mysterious land ruled by warrior women and powerful druids who can channel the powerful forces of the underworld. Or so they say.', 'img/show-pics/10.jpg', '6.6'),
(11, 'Runaways', 'Action', '2017-11-21', 'Rhenzy Feliz, Lyrica Okano, Virginia Gardner', 'After discovering their parents are super-villains in disguise, a group of teenagers band together to run away from their homes in order to atone for their parents\' actions and to discover the secrets of their origins.', 'img/show-pics/11.jpg', '7.3'),
(12, 'The Gifted', 'Action', '2017-10-02', 'Stephen Moyer, Amy Acker, Sean Teale', 'In a world where mutated humans are treated with distrust and fear, an institute for mutants battles to achieve peaceful co-existence with humanity.', 'img/show-pics/12.jpg', '7.7'),
(13, 'SEAL Team', 'Action', '2017-09-27', 'David Boreanaz, Max Thieriot, Jessica Paré ', 'The lives of the elite Navy S.E.A.L.s as they train, plan and execute the most dangerous, high-stakes missions our country can ask.', 'img/show-pics/13.jpg', '6.9'),
(14, 'The Brave', 'Action', '2017-09-25', 'Anne Heche, Mike Vogel, Tate Ellington', 'The complex world of our bravest military heroes who make personal sacrifices while executing the most challenging and dangerous missions behind enemy lines.', 'img/show-pics/14.jpg', '7.5'),
(15, 'Star Trek: Discovery', 'Action', '2017-09-24', 'Sonequa Martin-Green, Doug Jones, Shazad Lati', 'Ten years before Kirk, Spock and the Enterprise, the USS Discovery discovers new worlds and lifeforms as one Starfleet officer learns to understand all things alien.', 'img/show-pics/15.jpg', '7.4'),
(16, 'Inhumans', 'Action', '2017-09-29', 'Anson Mount, Serinda Swan, Ken Leung', 'An isolated community of superhumans fight to protect themselves.', 'img/show-pics/16.jpg', '5.1'),
(17, 'The Tick', 'Action', '2017-08-25', 'Peter Serafinowicz, Griffin Newman, Valorie Curry', 'In a world where superheroes have been real for decades, an accountant with no superpowers comes to realize his city is owned by a super villain. As he struggles to uncover this conspiracy, he falls in league with a strange blue superhero.', 'img/show-pics/17.jpg', '7.4'),
(18, 'The Defenders', 'Action', '2017-08-18', 'Charlie Cox, Krysten Ritter, Mike Colter', 'Set a few months after the events of the second season of Daredevil, and a month after the events of Iron Fist, the vigilantes Daredevil, Jessica Jones, Luke Cage, and Iron Fist team up in New York City to fight a common enemy: The Hand.', 'img/show-pics/18.jpg', '7.5'),
(19, 'Castlevania', 'Action', '2017-07-07', 'Richard Armitage, James Callis, Alejandra Reynoso', 'A vampire hunter fights to save a besieged city from an army of otherworldly creatures controlled by Dracula.', 'img/show-pics/19.jpg', '8.0'),
(20, 'Money Heist', 'Action', '2017-05-02', 'Úrsula Corberó, Itziar Ituño, Álvaro Morte', 'Eight thieves take hostages and lock themselves in the Royal Mint of Spain as a criminal mastermind manipulates the police to carry out his plan.', 'img/show-pics/20.jpg', '8.7'),
(21, 'Brooklyn Nine-Nine', 'Comedy', '2013-09-17', 'Andre Braugher, Andy Samberg, Stephanie Beatriz ', 'Jake Peralta, an immature but talented NYPD detective in Brooklyn\'s 99th Precinct, comes into immediate conflict with his new commanding officer, the serious and stern Captain Ray Holt.', 'img/show-pics/21.jpg', '8.3'),
(22, 'Suits', 'Comedy', '2011-06-23', 'Gabriel Macht, Patrick J. Adams, Meghan Markle ', 'On the run from a drug deal gone bad, Mike Ross, a brilliant college dropout, finds himself a job working with Harvey Specter, one of New York City\'s best lawyers.', 'img/show-pics/22.jpg', '8.6'),
(23, 'Roseanne', 'Comedy', '1988-10-18', 'Roseanne Barr, John Goodman, Laurie Metcalf', 'The story of a working-class family struggling with life\'s essential problems: marriage, children, money and parents-in-law.', 'img/show-pics/23.jpg', '7.0'),
(24, 'Arrested Development', 'Comedy', '2003-11-02', 'Jason Bateman, Michael Cera, Portia de Rossi', 'Level-headed son Michael Bluth takes over family affairs after his father is imprisoned. But the rest of his spoiled, dysfunctional family are making his job unbearable.', 'img/show-pics/24.jpg', '8.9'),
(25, 'The Office', 'Comedy', '2005-03-24', 'Steve Carell, Jenna Fischer, John Krasinski', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 'img/show-pics/25.jpg', '8.8'),
(26, 'Modern Family', 'Comedy', '2009-09-22', 'Ed O\'Neill, Sofía Vergara, Julie Bowen', 'Three different, but related families face trials and tribulations in their own uniquely comedic ways.', 'img/show-pics/26.jpg', '8.5'),
(27, 'Friends', 'Comedy', '1994-09-22', 'Jennifer Aniston, Courteney Cox, Lisa Kudrow', 'Follows the personal and professional lives of six 20 to 30-something-year-old friends living in Manhattan.', 'img/show-pics/27.jpg', '8.9'),
(28, 'Shameless', 'Comedy', '2011-01-09', 'Emmy Rossum, William H. Macy, Ethan Cutkosky', 'An alcoholic man lives in a perpetual stupor while his six children cope as best they can.', 'img/show-pics/28.jpg', '8.7'),
(29, 'The Big Bang Theory', 'Comedy', '2006-05-01', 'Johnny Galecki, Jim Parsons, Kaley Cuoco', 'A woman who moves into an apartment across the hall from two brilliant but socially awkward physicists shows them how little they know about life outside of the laboratory.', 'img/show-pics/29.jpg', '8.3'),
(30, 'Silicon Valley', 'Comedy', '2014-04-06', 'Thomas Middleditch, T.J. Miller, Josh Brener', 'Follows the struggle of Richard Hendricks, a Silicon Valley engineer trying to build his own company called Pied Piper.', 'img/show-pics/30.jpg', '8.6'),
(31, 'New Girl', 'Comedy', '2011-09-20', 'Zooey Deschanel, Jake Johnson, Max Greenfield', 'After a bad break-up, Jess, an offbeat young woman, moves into an apartment loft with three single men. Although they find her behavior very unusual, the men support her - most of the time.', 'img/show-pics/31.jpg', '7.7'),
(32, 'Unbreakable Kimmy Schmidt', 'Comedy', '2015-03-06', 'Ellie Kemper, Jane Krakowski, Tituss Burgess', 'A woman is rescued from a doomsday cult and starts life over again in New York City.', 'img/show-pics/32.jpg', '7.8'),
(33, 'Orange Is the New Black', 'Comedy', '2013-07-11', 'Taylor Schilling, Danielle Brooks, Taryn Manning', 'Convicted of a decade old crime of transporting drug money to an ex-girlfriend, normally law abiding Piper Chapman is sentenced to a year and a half behind bars to face the reality of how life changing prison can really be.', 'img/show-pics/33.jpg', '8.2'),
(34, 'Atlanta', 'Comedy', '2016-09-06', 'Donald Glover, Brian Tyree Henry, Lakeith Stanfield', 'Based in Atlanta, Earn and his cousin Alfred are trying to make their way up in the world through the rap scene. Along the way they come face to face with social and economic issues touching on race, relationships, poverty, status and parenthood.', 'img/show-pics/34.jpg', '8.6'),
(35, 'How I Met Your Mother', 'Comedy', '2005-09-19', 'Josh Radnor, Jason Segel, Cobie Smulders', 'A father recounts to his children, through a series of flashbacks, the journey he and his four best friends took leading up to him meeting their mother.', 'img/show-pics/35.jpg', '8.4'),
(36, 'Jane the Virgin', 'Comedy', '2014-10-13', 'Gina Rodriguez, Andrea Navedo, Yael Grobglas ', 'A young, devout Catholic woman discovers that she was accidentally artificially inseminated.', 'img/show-pics/36.jpg', '7.8'),
(37, 'Parks and Recreation', 'Comedy', '2009-04-09', 'Amy Poehler, Jim O\'Heir, Nick Offerman', 'The absurd antics of an Indiana town\'s public officials as they pursue sundry projects to make their city a better place.', 'img/show-pics/37.jpg', '8.6'),
(38, 'Mom', 'Comedy', '2013-09-23', 'Anna Faris, Allison Janney, Mimi Kennedy', 'A newly sober single mom tries to pull her life together in Napa Valley while dealing with her wayward mother.', 'img/show-pics/38.jpg', '7.2'),
(39, 'The Middle', 'Comedy', '2009-09-30', 'Patricia Heaton, Neil Flynn, Charlie McDermott', 'The daily mishaps of a married woman and her semi-dysfunctional family and their attempts to survive life in general in the town of Orson, Indiana.', 'img/show-pics/39.jpg', '7.5'),
(40, 'Two and a Half Men', 'Comedy', '2003-09-22', 'Jon Cryer, Ashton Kutcher, Angus T. Jones ', 'A hedonistic jingle writer\'s free-wheeling life comes to an abrupt halt when his brother and 10-year-old nephew move into his beach-front house.', 'img/show-pics/40.jpg', '7.1'),
(41, 'Riverdale', 'Crime', '2017-01-26', 'K.J. Apa, Lili Reinhart, Camila Mendes', 'A subversive take on Archie and his friends, exploring small town life, the darkness and weirdness bubbling beneath Riverdale\'s wholesome facade.', 'img/show-pics/41.jpg', '7.6'),
(42, 'Animal Kingdom', 'Crime', '2016-06-14', 'Molly Gordon, Shawn Hatosy, Ben Robson', 'Animal Kingdom is an adrenaline-charged drama starring Ellen Barkin as the matriarch of a Southern California family whose excessive lifestyle is fueled by their criminal activities.', 'img/show-pics/42.jpg', '8.1'),
(43, 'Lucifer', 'Crime', '2016-01-25', 'Tom Ellis, Lauren German, Kevin Alejandro', 'Lucifer Morningstar has decided he\'s had enough of being the dutiful servant in Hell and decides to spend some time on Earth to better understand humanity. He settles in Los Angeles - the City of Angels.', 'img/show-pics/43.jpg', '8.2'),
(44, 'Law & Order: Special Victims Unit', 'Crime', '1999-09-20', 'Mariska Hargitay, Christopher Meloni, Ice-T', 'The Special Victims Unit, a specially trained squad of detectives in the NYPD, investigate sexually related crimes.', 'img/show-pics/44.jpg', '8.0'),
(45, 'The Americans', 'Crime', '2013-01-30', 'Keri Russell, Matthew Rhys, Keidrich Sellati', 'At the height of the Cold War two Russian agents pose as your average American couple, complete with family.', 'img/show-pics/45.jpg', '8.3'),
(46, 'Criminal Minds', 'Crime', '2005-09-22', 'Matthew Gray Gubler, Kirsten Vangsness, A.J. Cook', 'The cases of the F.B.I. Behavioral Analysis Unit (B.A.U.), an elite group of profilers who analyze the nation\'s most dangerous serial killers and individual heinous crimes in an effort to anticipate their next moves before they strike again.', 'img/show-pics/46.jpg', '8.1'),
(47, 'Gotham', 'Crime', '2014-09-22', 'Ben McKenzie, Jada Pinkett Smith, Donal Logue', 'The story behind Detective James Gordon\'s rise to prominence in Gotham City in the years before Batman\'s arrival.', 'img/show-pics/47.jpg', '7.9'),
(48, 'NCIS', 'Crime', '2003-09-23', 'Mark Harmon, David McCallum, Pauley Perrette', 'The cases of the Naval Criminal Investigative Service\'s Washington DC Major Case Response Team, led by Special Agent Leroy Jethro Gibbs.', 'img/show-pics/48.jpg', '7.9'),
(49, 'The Blacklist', 'Crime', '2013-09-23', 'James Spader, Megan Boone, Diego Klattenhoff ', 'A new FBI profiler, Elizabeth Keen, has her entire life uprooted when a mysterious criminal, Raymond Reddington, who has eluded capture for decades, turns himself in and insists on speaking only to her.', 'img/show-pics/49.jpg', '8.1'),
(50, 'Peaky Blinders', 'Crime', '2014-09-30', 'Cillian Murphy, Paul Anderson, Helen McCrory', 'A gangster family epic set in 1919 Birmingham, England and centered on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby, who means to move up in the world.', 'img/show-pics/50.jpg', '8.8'),
(51, 'Elementary', 'Crime', '2012-09-27', 'Jonny Lee Miller, Lucy Liu, Jon Michael Hill', 'A modern take on the cases of Sherlock Holmes, with the detective now living in New York City.', 'img/show-pics/51.jpg', '7.9'),
(52, 'Sons of Anarchy', 'Crime', '2008-09-03', 'Charlie Hunnam, Katey Sagal, Mark Boone Junior', 'A man in his early 30s struggles to find a balance in his life between being a new dad and his involvement in a motorcycle club.', 'img/show-pics/52.jpg', '8.6'),
(53, 'Homeland', 'Crime', '2011-10-02', 'Claire Danes, Mandy Patinkin, Damian Lewis ', 'A bipolar CIA operative becomes convinced a prisoner of war has been turned by al-Qaeda and is planning to carry out a terrorist attack on American soil.', 'img/show-pics/53.jpg', '8.4'),
(54, 'Breaking Bad', 'Crime', '2008-01-20', 'Bryan Cranston, Aaron Paul, Anna Gunn', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', 'img/show-pics/54.jpg', '9.5'),
(55, 'Sherlock', 'Crime', '2010-10-24', 'Benedict Cumberbatch, Martin Freeman, Una Stubbs', 'A modern update finds the famous sleuth and his doctor partner solving crime in 21st century London.', 'img/show-pics/55.jpg', '9.2'),
(56, 'Quantico', 'Crime', '2015-09-27', 'Priyanka Chopra, Jake McLaughlin, Johanna Braddy', 'A look at the lives of young FBI recruits training at the Quantico base in Virginia when one of them is suspected of being a sleeper terrorist.', 'img/show-pics/56.jpg', '6.8'),
(57, 'Dexter', 'Crime', '2006-10-01', 'Michael C. Hall, Jennifer Carpenter, David Zayas', 'By day, mild-mannered Dexter is a blood-spatter analyst for the Miami police. But at night, he is a serial killer who only targets other murderers.', 'img/show-pics/57.jpg', '8.7'),
(58, 'Narcos', 'Crime', '2015-08-28', 'Pedro Pascal, Wagner Moura, Boyd Holbrook', 'A chronicled look at the criminal exploits of Colombian drug lord Pablo Escobar, as well as the many other drug kingpins who plagued the country through the years.', 'img/show-pics/58.jpg', '8.9'),
(59, 'Prison Break', 'Crime', '2005-08-25', 'Dominic Purcell, Wentworth Miller, Amaury Nolasco', 'Due to a political conspiracy, an innocent man is sent to death row and his only hope is his brother, who makes it his mission to deliberately get himself sent to the same prison in order to break the both of them out, from the inside.', 'img/show-pics/59.jpg', '8.4'),
(60, 'Blue Bloods', 'Crime', '2010-09-24', 'Donnie Wahlberg, Bridget Moynahan, Will Estes', 'Revolves around a family of New York cops.', 'img/show-pics/60.jpg', '7.5'),
(61, 'Supernatural', 'Thriller', '2005-09-13', 'Jared Padalecki, Jensen Ackles, Jim Beaver ', 'Two brothers follow their father\'s footsteps as \"hunters\", fighting evil supernatural beings of many kinds, including monsters, demons, and gods that roam the earth.', 'img/show-pics/61.jpg', '8.5'),
(62, 'Fear the Walking Dead', 'Thriller', '2015-08-23', 'Kim Dickens, Frank Dillane, Cliff Curtis ', 'A Walking Dead spin-off, set in Los Angeles, following two families who must band together to survive the undead apocalypse.', 'img/show-pics/62.jpg', '7.0'),
(63, 'The Walking Dead', 'Thriller', '2010-10-31', 'Andrew Lincoln, Norman Reedus, Melissa McBride', 'Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.', 'img/show-pics/63.jpg', '8.4'),
(64, 'Stranger Things', 'Thriller', '2106-07-15', 'Millie Bobby Brown, Finn Wolfhard, Winona Ryder ', 'When a young boy disappears, his mother, a police chief, and his friends, must confront terrifying forces in order to get him back.', 'img/show-pics/64.jpg', '8.9'),
(65, 'The Originals', 'Thriller', '2013-10-03', 'Joseph Morgan, Daniel Gillies, Claire Holt', 'A family of power-hungry thousand year old vampires look to take back the city that they built and dominate all those who have done them wrong.', 'img/show-pics/65.jpg', '8.3'),
(66, 'American Horror Story', 'Thriller', '2011-10-05', 'Lady Gaga, Kathy Bates, Angela Bassett', 'An anthology series centering on different characters and locations, including a house with a murderous past, an insane asylum, a witch coven, a freak show, a hotel, a possessed farmhouse, and a cult.', 'img/show-pics/66.jpg', '8.1'),
(67, 'iZombie', 'Thriller', '2015-03-17', 'Rose McIver, Malcolm Goodwin, Rahul Kohli', 'A medical resident finds that being a zombie has its perks, which she uses to assist the police.', 'img/show-pics/67.jpg', '8.0'),
(68, 'The Vampire Diaries', 'Thriller', '2009-09-10', 'Nina Dobrev, Paul Wesley, Ian Somerhalder', 'A young teen struggles to make a decision between two vampire brothers and their supernatural lives. Soon after she discovers the truth her whole world turns upside down.', 'img/show-pics/68.jpg', '7.8'),
(69, 'Teen Wolf', 'Thriller', '2011-06-05', 'Tyler Posey, Holland Roden, Dylan O\'Brien', 'A somewhat awkward teen is attacked by a werewolf and inherits the curse himself, as well as the enemies that come with it.', 'img/show-pics/69.jpg', '7.7'),
(70, 'The Terror', 'Thriller', '2018-03-25', 'Jared Harris, Tobias Menzies, Paul Ready', 'In 1848, two real life warships, HMS Terror and HMS Erebus, sent on a Royal Naval expedition to find the treacherous Northwest Passage become trapped in ice near Arctic and face starvation, mutiny, cannibalism and a demonic polar bear.', 'img/show-pics/70.jpg', '8.2'),
(71, 'Grimm', 'Thriller', '2011-10-28', 'David Giuntoli, Russell Hornsby, Silas Weir Mitchell', 'A homicide detective discovers he is a descendant of hunters who fight supernatural forces.', 'img/show-pics/71.jpg', '7.8'),
(72, 'Bates Motel', 'Thriller', '2013-03-18', 'Vera Farmiga, Freddie Highmore, Max Thieriot', 'A contemporary prequel to Psycho, giving a portrayal of how Norman Bates\' psyche unravels through his teenage years, and how deeply intricate his relationship with his mother, Norma, truly is.', 'img/show-pics/72.jpg', '8.2'),
(73, 'It', 'Thriller', '1990-10-18', 'Richard Thomas, Tim Reid, Annette O\'Toole', 'In 1960, seven pre-teen outcasts fight an evil demon who poses as a child-killing clown. Thirty years later, they reunite to stop the demon once and for all when it returns to their hometown.', 'img/show-pics/73.jpg', '6.9'),
(74, 'Hannibal', 'Thriller', '2013-04-04', 'Hugh Dancy, Mads Mikkelsen, Caroline Dhavernas', 'Explores the early relationship between the renowned psychiatrist and his patient, a young FBI criminal profiler, who is haunted by his ability to empathize with serial killers.', 'img/show-pics/74.jpg', '8.6'),
(75, 'The Strain', 'Thriller', '2014-07-23', 'Corey Stoll, David Bradley, Kevin Durand', 'A mysterious viral outbreak with hallmarks of an ancient and evil strain of vampirism ravages the city of New York.', 'img/show-pics/75.jpg', '7.4'),
(76, 'Z Nation', 'Thriller', '2014-09-12', 'Russell Hodgkinson, Nat Zang, Keith Allan', 'Three years after the zombie virus has gutted the United States of America a team of everyday heroes must transport the only known survivor of the plague from New York to California, where the last functioning viral lab waits for his blood.', 'img/show-pics/76.jpg', '6.7'),
(77, 'Penny Dreadful', 'Thriller', '2014-04-28', 'Josh Hartnett, Timothy Dalton, Eva Green', 'Explorer Sir Malcolm Murray, American gunslinger Ethan Chandler, scientist Victor Frankenstein, and medium Vanessa Ives unite to combat supernatural threats in Victorian London.', 'img/show-pics/77.jpg', '8.2'),
(78, 'Ash vs Evil Dead', 'Thriller', '2015-10-31', 'Bruce Campbell, Ray Santiago, Dana DeLorenzo', 'Ash has spent the last thirty years avoiding responsibility, maturity, and the terrors of the Evil Dead until a Deadite plague threatens to destroy all of mankind and Ash becomes mankind\'s only hope.', 'img/show-pics/78.jpg', '8.5'),
(79, 'Scream', 'Thriller', '2015-06-30', 'Willa Fitzgerald, Bex Taylor-Klaus, John Karna', 'A serialized/anthology series that follows a group of teenagers being targeted by a masked serial killer.', 'img/show-pics/79.jpg', '7.3'),
(80, 'Slasher', 'Thriller', '2016-03-04', 'Christopher Jacot, Jim Watson, Paula Brancati', 'A young woman returns to the small town where her parents were murdered, only to find the past re-emerging as a new series of murders begins.', 'img/show-pics/80.jpg', '6.6'),
(81, 'Haters Back Off!', 'Romance', '2016-10-14', 'Colleen Ballinger, Angela Kinsey, Francesca Reale', 'The odd ball family life of Miranda Sings, an incredibly confident, totally untalented star on the rise who continues to fail upward by the power of her belief that she was born famous, it\'s just no one knows it yet.', 'img/show-pics/81.jpg', '6.1'),
(82, 'The Good Place', 'Romance', '2016-09-19', 'Kristen Bell, Jameela Jamil, Manny Jacinto ', 'A woman struggles to define what it means to be good.', 'img/show-pics/82.jpg', '8.1'),
(83, 'You Me Her', 'Romance', '2016-03-22', 'Greg Poehler, Rachel Blanchard, Priscilla Faia', 'Centers around a three-way romantic relationship involving a suburban married couple.', 'img/show-pics/83.jpg', '7.1'),
(84, 'Love', 'Romance', '2016-02-19', 'Gillian Jacobs, Paul Rust, Claudia O\'Doherty', 'A program that follows a couple who must navigate the exhilarations and humiliations of intimacy, commitment and other things they were hoping to avoid.', 'img/show-pics/84.jpg', '7.7'),
(85, 'Poldark', 'Romance', '2015-06-21', 'Aidan Turner, Eleanor Tomlinson, Jack Farthing', 'Ross Poldark returns home after American Revolutionary War and rebuilds his life with a new business venture, making new enemies and finding a new love where he least expects it.', 'img/show-pics/85.jpg', '8.4'),
(86, 'Younger', 'Romance', '2015-02-24', 'Sutton Foster, Miriam Shor, Hilary Duff', 'After being mistaken for younger than she really is, a single mother decides to take the chance to reboot her career and her love life as a 26-year old.', 'img/show-pics/86.jpg', '7.8'),
(87, 'Man Seeking Woman', 'Romance', '2015-01-14', 'Jay Baruchel, Eric André, Britt Lower', 'A naive romantic goes on a desperate quest for love when his longtime girlfriend dumps him.', 'img/show-pics/87.jpg', '7.7'),
(88, 'Togetherness', 'Romance', '2015-01-11', 'Mark Duplass, Melanie Lynskey, Amanda Peet', 'Follows two couples living under the same roof who struggle to keep their relationships alive while pursuing their individual dreams.', 'img/show-pics/88.jpg', '7.5'),
(89, 'Queer as Folk', 'Romance', '2014-10-29', 'Nidhi Singh, Sumeet Vyas, Deepak Kumar Mishra', 'A couple, who were in a long distance relationship for 3 years, face the prospect of getting married.', 'img/show-pics/89.jpg', '8.3'),
(90, 'A to Z', 'Romance', '2014-10-02', 'Ben Feldman, Cristin Milioti, Henry Zebrowski', 'A chronicle of Andrew and Zelda\'s relationship, which lasts for eight months, three weeks, five days, and one hour.', 'img/show-pics/90.jpg', '6.8'),
(91, 'You\'re the Worst', 'Romance', '2014-07-17', 'Chris Geere, Aya Cash, Desmin Borges ', 'Centers on two toxic, self-destructive people who fall in love and attempt a relationship.', 'img/show-pics/91.jpg', '8.2'),
(92, 'Young & Hungry', 'Romance', '2014-07-25', 'Emily Osment, Jonathan Sadowski, Aimee Carrero', 'A well-off young tech entrepreneur hires a feisty young food blogger to be his personal chef.', 'img/show-pics/92.jpg', '7.5'),
(93, 'Chasing Life', 'Romance', '2014-06-10', 'Italia Ricci, Mary Page Keller, Richard Brancatisano', 'April Carver, whose world has just started to look up, is diagnosed with leukemia. With the support of her family and best friend, she might just be able to fight it.', 'img/show-pics/93.jpg', '7.9'),
(94, 'Faking It', 'Romance', '2014-04-22', 'Rita Volk, Katie Stevens, Gregg Sulkin', 'After numerous attempts of trying to be popular two best friends decide to come out as lesbians, which launches them to instant celebrity status. Seduced by their newfound fame, Karma and Amy decide to keep up their romantic ruse.', 'img/show-pics/94.jpg', '7.5'),
(95, 'About a Boy', 'Romance', '2014-02-22', 'Stars: David Walton, Benjamin Stockham, Al Madrigal', 'Will Freeman lives a charmed existence. After writing a hit song, he was granted a life of free time, free love and freedom from financial woes. He\'s single, unemployed and loving it. So imagine his surprise when Fiona, a needy single mom and her oddly charming 11-year-old son, Marcus, move in next door and disrupt his perfect world. When Marcus begins dropping by his home unannounced, Will\'s not so sure about being a kid\'s new best friend, until, of course, Will discovers that women find single dads irresistible. That changes everything and a deal is struck: Marcus will pretend to be Will\'s son and, in return, Marcus is allowed to chill at Will\'s house, play ping-pong and gorge on steaks, something his very vegan mom would never allow. Before he realizes it, Will starts to enjoy the visits and even finds himself looking out for the kid. In fact, this newfound friendship may very well teach him a thing or two that he never imagined possible - about himself and caring for others.', 'img/show-pics/95.jpg', '7.5'),
(96, 'Mistresses', 'Romance', '2013-06-30', 'Alyssa Milano, Jes Macallan, Rochelle Aytes ', 'Follows the scandalous lives of a group of four girlfriends, each on her own path to self-discovery as they brave the turbulent journey together.', 'img/show-pics/96.jpg', '7.1'),
(97, 'Please Like Me', 'Romance', '2013-02-28', 'Josh Thomas, Thomas Ward', 'After breaking up with his girlfriend, Josh comes to the realization that he is homosexual. With the support of his now ex girlfriend Claire, and his best friend and house mate Tom, Josh must help his mother with her battle with depression and the rest of his family embrace his new found orientation. All of this becomes a little more complicated when he explores his sexuality with a young and handsome Geoffrey.', 'img/show-pics/97.jpg', '8.4'),
(98, 'The Carrie Diaries', 'Romance', '2013-01-14', 'AnnaSophia Robb, Austin Butler, Ellen Wong', 'Carrie Bradshaw is in her junior year of high school in the early 1980s. She asks her first questions about love, sex, friendship and family while navigating the worlds of high school and Manhattan.', 'img/show-pics/98.jpg', '7.0'),
(99, 'Beauty and the Beast', 'Romance', '2012-10-11', 'Kristin Kreuk, Jay Ryan, Nina Lisandrello', 'A beautiful detective falls in love with an ex-soldier who goes into hiding from the secret government organization that turned him into a mechanically charged beast.', 'img/show-pics/99.jpg', '7.2'),
(100, 'Nashville', 'Romance', '2012-10-10', 'Hayden Panettiere, Clare Bowen, Charles Esten', 'Follows the lives and tragedies of rising and fading country music stars in Nashville, Tennessee.', 'img/show-pics/100.jpg', '7.7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mainpage_tvshow`
--
ALTER TABLE `mainpage_tvshow`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mainpage_tvshow`
--
ALTER TABLE `mainpage_tvshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
