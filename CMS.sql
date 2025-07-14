CREATE database CMS;

use CMS;

create table students(
student_id int(5) auto_increment,
student_name varchar(40) not null,
student_surname varchar(40) not null,
student_age int(2) not null check (student_age >= 18),
student_gender enum('M','F') not null,
student_emailAddress varchar(50) not null,
student_address varchar(50) not null,
student_phone_number varchar(20) not null,
primary key(student_id)
);

create table lecturers(
lecturer_id int(5) auto_increment,
lecturer_name varchar(40) not null,
lecturer_surname varchar(40) not null,
lecturer_gender enum('M','F') not null,
lecturer_role varchar(40) check(lecturer_role = 'associate lecturer' 
OR lecturer_role = 'senior lecturer' OR lecturer_role = 'professor' 
OR lecturer_role = 'programme manager'),
lecture_typeOfClasses varchar(500),
primary key(lecturer_id)
);

create table courses(
course_id int(3) auto_increment,
course_name varchar(100) not null,
lecturer_id int(5) not null,
course_program varchar(500) not null,
course_room varchar(500) not null,
primary key(course_id),
foreign key(lecturer_id) references lecturers(lecturer_id) ON DELETE CASCADE
);

create table enrollments(
enrollment_id int(5) auto_increment,
student_id int(5) not null,
course_id int(5) not null,
lecturer_id int(5) not null,
enrollment_due date not null,
enrollment_finish date not null,
foreign key(student_id) references students(student_id) ON DELETE CASCADE,
foreign key(course_id) references courses(course_id) ON DELETE CASCADE,
foreign key(lecturer_id) references lecturers(lecturer_id) ON DELETE CASCADE,
primary key(enrollment_id)
);


create table grades(
grades_id int(5) auto_increment,
enrollment_id int(5) not null,
grade int check (grade >= 0 and grade <= 100) not null,
foreign key(enrollment_id) references enrollments(enrollment_id) ON DELETE CASCADE,
primary key(grades_id)
);

create table feedback(
feedback_id int(5) auto_increment,
feedback_date date not null,
feedback varchar(500) not null,
feedback_rating int(1) check(feedback_rating >= 0 and feedback_rating <= 5),
student_id int(5) not null,
course_id int(5) not null,
foreign key(student_id) references students(student_id) ON DELETE CASCADE,
foreign key(course_id) references courses(course_id) ON DELETE CASCADE,
primary key(feedback_id)
);

insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Antonio', 'Giambra', 20, 'M', 'agiambra@ihg.com', '2 Chancery Junction', '9753591564');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Cristobal', 'Gray', 51, 'M', 'cgray0@ihg.com', '2 Macpherson Junction', '9753491564');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Neel', 'Emberson', 56, 'M', 'nemberson1@sitemeter.com', '827 Victoria Lane', '3111876116');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Hamnet', 'Leinweber', 48, 'M', 'hleinweber2@tripod.com', '6283 Vernon Junction', '3395874186');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Andonis', 'Aguirrezabal', 58, 'M', 'aaguirrezabal3@google.nl', '6849 Lakewood Parkway', '1271313720');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Izak', 'Archbell', 43, 'M', 'iarchbell4@theguardian.com', '99713 Maywood Street', '2575737312');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Lowrance', 'Riccione', 35, 'M', 'lriccione5@constantcontact.com', '093 Cody Plaza', '1753951920');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kasey', 'Keelinge', 50, 'F', 'kkeelinge6@yandex.ru', '076 Oriole Alley', '2784826429');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kendall', 'Bugg', 59, 'M', 'kbugg7@un.org', '10 Bluestem Terrace', '6233002714');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Axel', 'Stainton', 35, 'M', 'astainton8@shutterfly.com', '8 Kingsford Terrace', '5951326929');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Morganne', 'Abotson', 29, 'F', 'mabotson9@fotki.com', '7 Troy Plaza', '7018249886');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Karee', 'Grisenthwaite', 21, 'F', 'kgrisenthwaitea@digg.com', '31 Oriole Road', '9914122138');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Bryn', 'Graham', 22, 'F', 'bgrahamb@trellian.com', '05877 Fieldstone Street', '3554866623');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Hervey', 'Mellish', 33, 'M', 'hmellishc@dion.ne.jp', '06953 Utah Road', '8343666983');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Norris', 'Dumini', 48, 'M', 'nduminid@amazon.co.jp', '779 Summer Ridge Parkway', '1921185154');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Marissa', 'Carbry', 52, 'F', 'mcarbrye@dailymotion.com', '5568 Merry Place', '5984416325');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Dacia', 'Slark', 57, 'F', 'dslarkf@oakley.com', '499 Pond Crossing', '2982495451');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Torin', 'Merrison', 41, 'M', 'tmerrisong@oracle.com', '34216 Stone Corner Alley', '1379792301');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kath', 'Greensted', 32, 'F', 'kgreenstedh@techcrunch.com', '60 Weeping Birch Trail', '5141752033');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Minne', 'Levins', 49, 'F', 'mlevinsi@macromedia.com', '7130 High Crossing Trail', '5405121879');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Ruthy', 'De Lasci', 22, 'F', 'rdelascij@aol.com', '4 Barnett Park', '6695933504');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Raffaello', 'Tryme', 18, 'M', 'rtrymek@imdb.com', '5200 Carey Road', '6072041704');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Gawen', 'Pedler', 21, 'M', 'gpedlerl@cbc.ca', '31499 Golf Course Avenue', '3859230561');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Isa', 'McQuorkel', 20, 'F', 'imcquorkelm@census.gov', '65791 Lake View Place', '5555384836');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Enrico', 'Lettington', 38, 'M', 'elettingtonn@cisco.com', '039 Vernon Road', '3989662535');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Felicle', 'Petch', 49, 'F', 'fpetcho@archive.org', '7130 Hanover Alley', '6903569313');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Read', 'Quinnette', 58, 'M', 'rquinnettep@paginegialle.it', '2 Warbler Junction', '2778534689');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Sibel', 'Rafferty', 43, 'F', 'sraffertyq@mashable.com', '393 Towne Pass', '7945399699');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Sheffie', 'Wybron', 43, 'M', 'swybronr@eepurl.com', '0 Daystar Drive', '3063293963');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Tamiko', 'MacArthur', 49, 'F', 'tmacarthurs@free.fr', '01 Kingsford Place', '1693586683');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Umeko', 'Cosford', 49, 'F', 'ucosfordt@hubpages.com', '9 Morrow Park', '2198156188');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Inna', 'Fludder', 42, 'F', 'ifludderu@deviantart.com', '93 Dwight Junction', '9688850916');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Torey', 'Wasteney', 18, 'M', 'twasteneyv@pagesperso-orange.fr', '9 Granby Terrace', '5321542707');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Crichton', 'Pithcock', 23, 'M', 'cpithcockw@google.com.br', '1000 Schmedeman Way', '4168845157');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Barth', 'Casaroli', 46, 'M', 'bcasarolix@parallels.com', '8865 Bay Trail', '6616802003');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Catrina', 'Tinson', 44, 'F', 'ctinsony@ask.com', '29539 Miller Parkway', '5693057042');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Hally', 'McMyler', 39, 'F', 'hmcmylerz@rakuten.co.jp', '04640 Redwing Center', '8593359530');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Shandy', 'Levine', 33, 'F', 'slevine10@so-net.ne.jp', '38091 Pierstorff Trail', '9979558230');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Dyanna', 'Yashaev', 36, 'F', 'dyashaev11@indiatimes.com', '61077 Crescent Oaks Place', '6092206698');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Calley', 'Vokins', 30, 'F', 'cvokins12@imgur.com', '6863 Esch Junction', '6821404392');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Britta', 'Hender', 60, 'F', 'bhender13@friendfeed.com', '6 Hazelcrest Hill', '6006247544');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Dimitri', 'Wolters', 48, 'M', 'dwolters14@hostgator.com', '0 Waywood Street', '8228294456');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Toma', 'Tal', 53, 'F', 'ttal15@yolasite.com', '2 Hintze Junction', '4227026156');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Valene', 'Kellegher', 49, 'F', 'vkellegher16@hatena.ne.jp', '0355 Sachtjen Road', '5062221192');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Gery', 'Bouch', 51, 'M', 'gbouch17@adobe.com', '081 Sullivan Crossing', '8491401842');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Stan', 'De Carlo', 53, 'M', 'sdecarlo18@ucsd.edu', '40 Melody Street', '6892703796');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Jacquenette', 'Wellesley', 58, 'F', 'jwellesley19@ifeng.com', '7 Stone Corner Way', '3875683857');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Datha', 'Cohalan', 49, 'F', 'dcohalan1a@pcworld.com', '73 Barnett Trail', '4965534706');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Shea', 'Tureville', 43, 'F', 'stureville1b@discovery.com', '88 Sugar Parkway', '6386167419');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Shadow', 'Hallaways', 32, 'M', 'shallaways1c@istockphoto.com', '8 Fairfield Circle', '5693986330');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Ralf', 'Salsbury', 46, 'M', 'rsalsbury1d@examiner.com', '0968 Fulton Way', '4343830451');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Shaun', 'Normabell', 27, 'F', 'snormabell1e@china.com.cn', '88 Miller Plaza', '9606682720');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Lorne', 'MacGilmartin', 60, 'M', 'lmacgilmartin1f@multiply.com', '956 Doe Crossing Place', '6416619132');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Tawnya', 'Overstone', 22, 'F', 'toverstone1g@ow.ly', '16 Rigney Plaza', '1882580648');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Tabina', 'Dickenson', 33, 'F', 'tdickenson1h@google.ca', '6 Canary Avenue', '5761731623');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kathi', 'MacCallum', 55, 'F', 'kmaccallum1i@mozilla.org', '5651 School Drive', '4297749349');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Trever', 'Aickin', 43, 'M', 'taickin1j@cdbaby.com', '6 Pleasure Junction', '9002729787');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Walther', 'Donnelly', 31, 'M', 'wdonnelly1k@mediafire.com', '8532 Carpenter Center', '3134149121');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Remington', 'Foakes', 32, 'M', 'rfoakes1l@topsy.com', '94 La Follette Crossing', '3384590614');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Vanna', 'Gounel', 55, 'F', 'vgounel1m@oaic.gov.au', '30 Fairfield Circle', '3892313542');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Tobe', 'Simmons', 56, 'M', 'tsimmons1n@bravesites.com', '5 Leroy Place', '9304190978');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Clayborn', 'Brokenbrow', 52, 'M', 'cbrokenbrow1o@clickbank.net', '63678 Wayridge Circle', '3253696873');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Rodolph', 'Borland', 21, 'M', 'rborland1p@mail.ru', '710 Pankratz Road', '5207041517');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Brion', 'Imlacke', 34, 'M', 'bimlacke1q@plala.or.jp', '827 North Avenue', '9827567783');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Symon', 'Elton', 47, 'M', 'selton1r@bluehost.com', '8 Hallows Junction', '7004410610');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Merwin', 'Cowerd', 39, 'M', 'mcowerd1s@mit.edu', '877 Bowman Center', '2655369583');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Damiano', 'Faltin', 53, 'M', 'dfaltin1t@4shared.com', '07 Golf View Way', '3058024026');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Onofredo', 'Imlacke', 56, 'M', 'oimlacke1u@qq.com', '555 Logan Circle', '9905524048');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kennan', 'Clapison', 53, 'M', 'kclapison1v@behance.net', '0 Katie Place', '1078485519');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Vernor', 'Chittim', 43, 'M', 'vchittim1w@cam.ac.uk', '50 Spaight Court', '1755052527');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Winnifred', 'Presdee', 41, 'F', 'wpresdee1x@example.com', '24587 Debra Road', '1663502167');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Si', 'Brisse', 55, 'M', 'sbrisse1y@youtu.be', '36695 Commercial Drive', '9375567053');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Rosco', 'Calow', 53, 'M', 'rcalow1z@wp.com', '6 Elgar Circle', '2834474243');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Foss', 'Barrett', 20, 'M', 'fbarrett20@ow.ly', '09685 Pine View Road', '3702146558');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Chrissy', 'McCaskill', 41, 'M', 'cmccaskill21@telegraph.co.uk', '41258 Coleman Alley', '1997071372');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Codi', 'Kerford', 53, 'M', 'ckerford22@newyorker.com', '65230 Manitowish Alley', '3685188297');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Allissa', 'Tivnan', 22, 'F', 'ativnan23@intel.com', '5 Mayer Street', '8692760528');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Maryjane', 'Baulch', 24, 'F', 'mbaulch24@gnu.org', '8 Esch Center', '7257462412');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Allen', 'Sapp', 22, 'M', 'asapp25@blog.com', '8 Little Fleur Court', '4993921326');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Robers', 'Hawler', 58, 'M', 'rhawler26@berkeley.edu', '972 Drewry Trail', '8809132296');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Taylor', 'Jozefiak', 60, 'M', 'tjozefiak27@pbs.org', '99 Forest Run Alley', '4652574357');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Roddie', 'Plumm', 29, 'M', 'rplumm28@chronoengine.com', '8 Del Sol Drive', '6255405204');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Nefen', 'Stoyle', 47, 'M', 'nstoyle29@unc.edu', '5859 Lillian Park', '4071477668');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Sybila', 'Duham', 26, 'F', 'sduham2a@diigo.com', '64 Village Green Parkway', '9367776735');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Joey', 'Usmar', 56, 'F', 'jusmar2b@webnode.com', '3866 Tony Trail', '6011900413');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Karlene', 'Faustian', 51, 'F', 'kfaustian2c@yandex.ru', '1951 Transport Lane', '1063499500');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Sadie', 'Tidd', 37, 'F', 'stidd2d@ftc.gov', '7 Haas Trail', '1407146449');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Ingamar', 'Greasty', 32, 'M', 'igreasty2e@who.int', '92 Gerald Place', '5051749886');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Patin', 'Wilman', 22, 'M', 'pwilman2f@parallels.com', '213 Elmside Drive', '9053426280');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Alley', 'Brabant', 45, 'M', 'abrabant2g@jiathis.com', '65 Utah Hill', '4427922328');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Chen', 'Sammes', 58, 'M', 'csammes2h@wordpress.com', '2 Everett Plaza', '9899953110');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Gusty', 'Vearnals', 50, 'F', 'gvearnals2i@fastcompany.com', '39173 Birchwood Drive', '9599448432');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Myrtice', 'Leupoldt', 55, 'F', 'mleupoldt2j@cbc.ca', '57861 Merchant Center', '4146444723');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Saw', 'Bax', 27, 'M', 'sbax2k@sun.com', '4 Mallory Court', '5292700324');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Phillida', 'Bramich', 21, 'F', 'pbramich2l@jimdo.com', '73182 Pleasure Hill', '7008370357');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Caritta', 'Pharro', 27, 'F', 'cpharro2m@si.edu', '291 Miller Place', '7927639455');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Roch', 'Durling', 51, 'F', 'rdurling2n@google.cn', '002 Chinook Park', '9568344261');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kinnie', 'Sargison', 42, 'M', 'ksargison2o@github.io', '05250 Nancy Street', '3077702480');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kristian', 'Pester', 19, 'M', 'kpester2p@tripadvisor.com', '72 Shoshone Circle', '5499807310');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Slade', 'Wain', 39, 'M', 'swain2q@ucla.edu', '5928 Express Point', '1031482448');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Cynde', 'McIan', 18, 'F', 'cmcian2r@bandcamp.com', '4378 8th Park', '1352525572');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Marinna', 'Sheriff', 26, 'F', 'msheriff2s@flickr.com', '7 Clemons Park', '3723598700');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Theda', 'Tschirasche', 44, 'F', 'ttschirasche2t@tripod.com', '678 Commercial Court', '4193466916');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Alica', 'Morforth', 18, 'F', 'amorforth2u@yahoo.com', '10 Linden Place', '9435753331');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Rosalia', 'Giddins', 19, 'F', 'rgiddins2v@woothemes.com', '54685 Huxley Point', '8644930774');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Mohammed', 'Permain', 23, 'M', 'mpermain2w@indiegogo.com', '432 Hoffman Alley', '4056087368');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Dorrie', 'Feek', 37, 'F', 'dfeek2x@china.com.cn', '10 Armistice Pass', '2596928581');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Winslow', 'Mayte', 56, 'M', 'wmayte2y@harvard.edu', '2 Oxford Plaza', '6681328286');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Gustaf', 'Barwack', 48, 'M', 'gbarwack2z@issuu.com', '05519 Monterey Crossing', '7402117534');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Amii', 'Squibbs', 50, 'F', 'asquibbs30@cmu.edu', '96 Cody Circle', '4603773528');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Merline', 'Van Driel', 45, 'F', 'mvandriel31@behance.net', '6515 Forest Run Street', '9275534357');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Dev', 'Brooke', 43, 'M', 'dbrooke32@jalbum.net', '5 International Alley', '3019964059');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Carol', 'Arrault', 33, 'F', 'carrault33@yale.edu', '72193 Union Point', '2408201303');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Gustave', 'Ritelli', 38, 'M', 'gritelli34@ibm.com', '8922 Eagle Crest Street', '7068966411');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Byram', 'Boyles', 59, 'M', 'bboyles35@dagondesign.com', '90 Bunting Parkway', '9253007978');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Lucas', 'Greguoli', 28, 'M', 'lgreguoli36@cisco.com', '8220 Hintze Pass', '4968104342');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Car', 'Rontree', 54, 'M', 'crontree37@virginia.edu', '84611 Stuart Road', '1821678995');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Clotilda', 'Chin', 44, 'F', 'cchin38@bbb.org', '916 Memorial Way', '6942021104');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Tabby', 'Hysom', 24, 'M', 'thysom39@issuu.com', '5 Jenifer Drive', '1245099942');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Maurise', 'Kilgour', 36, 'M', 'mkilgour3a@pcworld.com', '19 Jackson Parkway', '7089088673');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Che', 'Rosa', 18, 'M', 'crosa3b@elegantthemes.com', '23114 Rusk Crossing', '4801124281');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Zandra', 'Woodham', 27, 'F', 'zwoodham3c@usatoday.com', '7577 Dryden Alley', '4047982119');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Betteann', 'Finn', 49, 'F', 'bfinn3d@bbc.co.uk', '82839 Merrick Circle', '1709161877');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Mathew', 'Jerred', 50, 'M', 'mjerred3e@weebly.com', '5 Katie Center', '2477445544');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Fancie', 'Kenwood', 59, 'F', 'fkenwood3f@google.com.au', '6095 Gerald Junction', '2253807428');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Elka', 'Ansley', 54, 'F', 'eansley3g@webmd.com', '602 Commercial Park', '7906540685');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Tristan', 'Allitt', 45, 'M', 'tallitt3h@ted.com', '60378 Darwin Place', '6055306930');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Roarke', 'Cubbon', 21, 'M', 'rcubbon3i@tuttocitta.it', '257 Mifflin Circle', '2446243813');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Demetria', 'Beney', 33, 'F', 'dbeney3j@indiegogo.com', '24581 Badeau Avenue', '1472807803');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Ximenez', 'Nekrews', 41, 'M', 'xnekrews3k@blogtalkradio.com', '61 Upham Parkway', '8872201407');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Marena', 'Leon', 53, 'F', 'mleon3l@bandcamp.com', '85 Red Cloud Way', '9601712825');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Humfrid', 'Perks', 55, 'M', 'hperks3m@sourceforge.net', '06223 Dakota Center', '6665198002');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Wendie', 'Goford', 37, 'F', 'wgoford3n@bbc.co.uk', '97118 Sugar Alley', '5352678508');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Leroi', 'Rizzone', 47, 'M', 'lrizzone3o@live.com', '36 Anzinger Center', '2255441938');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Brice', 'Gunston', 27, 'M', 'bgunston3p@patch.com', '8 Barby Road', '1766148258');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Cyrillus', 'Ranstead', 19, 'M', 'cranstead3q@g.co', '7095 Fremont Circle', '2982772609');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Britt', 'Baldin', 49, 'M', 'bbaldin3r@vimeo.com', '5 Briar Crest Circle', '9013087526');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Charmain', 'Cator', 24, 'F', 'ccator3s@economist.com', '45705 Granby Parkway', '2505256355');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Lesli', 'Adame', 40, 'F', 'ladame3t@friendfeed.com', '966 Center Point', '5613059823');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Gustave', 'Kirdsch', 40, 'M', 'gkirdsch3u@reuters.com', '265 Dixon Court', '8437087165');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Eula', 'Crack', 54, 'F', 'ecrack3v@freewebs.com', '89 Chinook Crossing', '9014375353');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Adara', 'Ripsher', 23, 'F', 'aripsher3w@chicagotribune.com', '1 Oakridge Parkway', '5171652503');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Scotti', 'Bolam', 29, 'M', 'sbolam3x@jigsy.com', '6194 Pleasure Junction', '5218971695');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Dorisa', 'Spooner', 28, 'F', 'dspooner3y@histats.com', '2611 Oxford Trail', '7146797943');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Casey', 'Cecely', 45, 'M', 'ccecely3z@samsung.com', '63165 Dovetail Circle', '8624794424');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Devi', 'Branch', 20, 'F', 'dbranch40@dell.com', '0222 Manitowish Place', '5549124341');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Dynah', 'Kindley', 41, 'F', 'dkindley41@vimeo.com', '737 Union Alley', '2383940389');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Retha', 'Wabersinke', 42, 'F', 'rwabersinke42@last.fm', '1305 Petterle Junction', '8728326155');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Boyd', 'Wanklyn', 55, 'M', 'bwanklyn43@disqus.com', '51535 Bay Center', '2977408838');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Vinita', 'Gianni', 22, 'F', 'vgianni44@bing.com', '2 Lakewood Gardens Place', '1272822452');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Ricard', 'Yeeles', 32, 'M', 'ryeeles45@free.fr', '88 Cascade Lane', '4968893582');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Edgar', 'Jellico', 48, 'M', 'ejellico46@tamu.edu', '43199 Rigney Terrace', '8618291972');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Katherine', 'Zoane', 40, 'F', 'kzoane47@wikispaces.com', '5 Oak Plaza', '2775627735');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Remy', 'Audus', 30, 'F', 'raudus48@archive.org', '89 Sheridan Lane', '3363825865');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Rosamond', 'Rabjohn', 34, 'F', 'rrabjohn49@ft.com', '47471 4th Court', '4898267886');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Barbee', 'Robak', 43, 'F', 'brobak4a@va.gov', '98857 Gulseth Lane', '9039149522');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kaja', 'Dorrity', 46, 'F', 'kdorrity4b@flickr.com', '588 Emmet Crossing', '7844196747');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Guenevere', 'Dradey', 42, 'F', 'gdradey4c@discovery.com', '20 Hudson Way', '5491032445');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Glenine', 'Utley', 56, 'F', 'gutley4d@eventbrite.com', '3 Luster Park', '4129189211');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Jana', 'Presser', 30, 'F', 'jpresser4e@zdnet.com', '699 Gale Park', '2052824025');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Viv', 'Claisse', 58, 'F', 'vclaisse4f@xrea.com', '9061 Russell Drive', '4861498811');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Alair', 'Jaqueminet', 46, 'M', 'ajaqueminet4g@diigo.com', '62550 Daystar Drive', '9638547824');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Tad', 'Frunks', 49, 'M', 'tfrunks4h@pen.io', '34 Springs Place', '5075736194');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Marya', 'Romme', 60, 'F', 'mromme4i@mayoclinic.com', '47721 5th Alley', '9054191106');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Britt', 'Anfosso', 59, 'F', 'banfosso4j@nbcnews.com', '6 Fisk Parkway', '7656007718');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Enrichetta', 'Siemons', 18, 'F', 'esiemons4k@state.gov', '4239 Miller Road', '9971388484');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Saunder', 'Barkley', 34, 'M', 'sbarkley4l@wiley.com', '2939 Texas Trail', '5796895218');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Minna', 'Stadding', 48, 'F', 'mstadding4m@timesonline.co.uk', '5 Delladonna Parkway', '5508983679');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Broderick', 'Fontelles', 39, 'M', 'bfontelles4n@weather.com', '1 Sunnyside Park', '6813966358');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Jacquelin', 'Twittey', 35, 'F', 'jtwittey4o@wordpress.org', '33 Myrtle Center', '6501201602');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Yolanthe', 'Poundsford', 29, 'F', 'ypoundsford4p@un.org', '304 Sommers Park', '6908004758');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Gabrielle', 'O''Keeffe', 52, 'F', 'gokeeffe4q@github.com', '6876 Fair Oaks Avenue', '4055760593');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Fransisco', 'Hankinson', 29, 'M', 'fhankinson4r@tumblr.com', '210 Dayton Court', '5735557004');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Meade', 'Ribou', 30, 'F', 'mribou4s@forbes.com', '94 Susan Trail', '7522589989');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Man', 'Cano', 58, 'M', 'mcano4t@europa.eu', '464 Grover Park', '4451398976');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Cassandra', 'Cruz', 39, 'F', 'ccruz4u@smh.com.au', '5 Crest Line Parkway', '2086136611');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Shelden', 'Brand', 57, 'M', 'sbrand4v@mysql.com', '8648 Eggendart Junction', '4119584158');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Mirabelle', 'Yarnell', 21, 'F', 'myarnell4w@patch.com', '0524 Towne Crossing', '3196462885');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Gill', 'Chadbourne', 60, 'M', 'gchadbourne4x@cnbc.com', '489 Helena Lane', '1344065063');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Dorothy', 'Knok', 44, 'F', 'dknok4y@amazon.com', '0 Susan Place', '1067436215');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Chucho', 'Caudle', 52, 'M', 'ccaudle4z@apple.com', '86177 Fisk Terrace', '7169161835');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Levey', 'Maes', 50, 'M', 'lmaes50@oakley.com', '63 Nelson Alley', '3395489682');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kathlin', 'Maycey', 23, 'F', 'kmaycey51@people.com.cn', '8066 Chive Place', '2179868573');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Brok', 'Pusill', 50, 'M', 'bpusill52@jalbum.net', '624 Debra Parkway', '4458406721');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kenon', 'Soal', 48, 'M', 'ksoal53@epa.gov', '22 Hanson Pass', '1613902939');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Woodie', 'Curgenven', 47, 'M', 'wcurgenven54@earthlink.net', '5915 Buena Vista Place', '2903547882');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Lenee', 'MacKey', 21, 'F', 'lmackey55@europa.eu', '20 Clove Circle', '5224500601');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Aylmer', 'Deville', 30, 'M', 'adeville56@about.me', '94161 Nova Park', '8298035102');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Caty', 'Bessant', 41, 'F', 'cbessant57@nih.gov', '5495 Harper Way', '6236221737');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Marielle', 'Howarth', 29, 'F', 'mhowarth58@wsj.com', '64 Ruskin Point', '6861706329');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Kendrick', 'Davidoff', 28, 'M', 'kdavidoff59@desdev.cn', '2384 Pennsylvania Trail', '1946447701');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Francesco', 'Darrell', 28, 'M', 'fdarrell5a@photobucket.com', '90 Waywood Crossing', '8473711634');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Rodger', 'Khomich', 23, 'M', 'rkhomich5b@fema.gov', '07087 Schmedeman Hill', '9403003254');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Tessy', 'Shalcras', 54, 'F', 'tshalcras5c@t.co', '9 Hoepker Trail', '1047472643');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Wainwright', 'Huckett', 23, 'M', 'whuckett5d@fda.gov', '80 New Castle Road', '7263751411');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Pall', 'Leask', 32, 'M', 'pleask5e@prweb.com', '595 Schiller Street', '5038944277');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Paige', 'Wavell', 38, 'F', 'pwavell5f@cyberchimps.com', '95 Hovde Road', '6289296560');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Stephanie', 'Smails', 58, 'F', 'ssmails5g@yandex.ru', '4295 Rockefeller Road', '7481590534');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Constantine', 'Blaine', 58, 'M', 'cblaine5h@pinterest.com', '442 Northridge Parkway', '4273036116');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Belva', 'Gawen', 32, 'F', 'bgawen5i@ihg.com', '54 Utah Drive', '4081808846');
insert into students (student_name, student_surname, student_age, student_gender, student_emailAddress, student_address, student_phone_number) values ('Shaina', 'Blance', 55, 'F', 'sblance5j@nbcnews.com', '43 Grayhawk Terrace', '3167687106');

INSERT INTO lecturers (lecturer_name, lecturer_surname, lecturer_gender, lecturer_role, lecture_typeOfClasses) VALUES
('John', 'Doe', 'M', 'associate lecturer', 'Introduction to Computer Science, Data Structures'),
('Jane', 'Smith', 'F', 'senior lecturer', 'Database Management Systems, Software Engineering'),
('Michael', 'Johnson', 'M', 'professor', 'Artificial Intelligence, Machine Learning'),
('Emily', 'Williams', 'F', 'associate lecturer', 'Web Development, User Interface Design'),
('David', 'Brown', 'M', 'programme manager', 'Computer Science Fundamentals, Project Management'),
('Sarah', 'Taylor', 'F', 'associate lecturer', 'Algorithms, Operating Systems'),
('Christopher', 'Anderson', 'M', 'senior lecturer', 'Computer Networks, Cybersecurity'),
('Jessica', 'Martinez', 'F', 'professor', 'Data Mining, Big Data Analytics'),
('Matthew', 'Thomas', 'M', 'associate lecturer', 'Software Testing, Mobile App Development'),
('Laura', 'Hernandez', 'F', 'programme manager', 'Computer Engineering, Information Systems'),
('Daniel', 'Garcia', 'M', 'associate lecturer', 'Programming Languages, Compiler Design'),
('Ashley', 'Lopez', 'F', 'senior lecturer', 'Cloud Computing, Distributed Systems'),
('William', 'Wilson', 'M', 'professor', 'Computer Graphics, Virtual Reality'),
('Megan', 'Young', 'F', 'associate lecturer', 'Human-Computer Interaction, Usability Testing'),
('Joshua', 'Lee', 'M', 'programme manager', 'Software Development Lifecycle, Agile Methodologies'),
('Amanda', 'Scott', 'F', 'associate lecturer', 'Database Design, SQL Fundamentals'),
('James', 'King', 'M', 'senior lecturer', 'Computer Architecture, Embedded Systems'),
('Lauren', 'Perez', 'F', 'professor', 'Natural Language Processing, Information Retrieval'),
('Ryan', 'Gonzalez', 'M', 'associate lecturer', 'Network Security, Penetration Testing'),
('Stephanie', 'Rodriguez', 'F', 'programme manager', 'Software Project Management, Quality Assurance'),
('Brandon', 'Hill', 'M', 'associate lecturer', 'Web Security, Cryptography'),
('Kayla', 'Flores', 'F', 'senior lecturer', 'Data Warehousing, Business Intelligence'),
('Eric', 'Carter', 'M', 'professor', 'Computer Vision, Pattern Recognition'),
('Natalie', 'Morris', 'F', 'associate lecturer', 'Object-Oriented Programming, Design Patterns'),
('Tyler', 'Cook', 'M', 'programme manager', 'IT Governance, Risk Management'),
('Rebecca', 'Bailey', 'F', 'associate lecturer', 'Software Engineering Principles, Requirements Engineering'),
('Jacob', 'Rivera', 'M', 'senior lecturer', 'Parallel Computing, High-Performance Computing'),
('Olivia', 'Howard', 'F', 'professor', 'Information Security, Ethical Hacking'),
('Andrew', 'Long', 'M', 'associate lecturer', 'Computer Forensics, Incident Response'),
('Hannah', 'Bell', 'F', 'programme manager', 'IT Strategy, Enterprise Architecture'),
('Nicholas', 'Price', 'M', 'associate lecturer', 'Network Programming, Socket Programming'),
('Victoria', 'Green', 'F', 'senior lecturer', 'Computer Ethics, Social Implications of Technology'),
('Christopher', 'Evans', 'M', 'professor', 'Internet of Things, Cyber-Physical Systems'),
('Samantha', 'Phillips', 'F', 'associate lecturer', 'Software Maintenance, Legacy Systems'),
('Kevin', 'Sanders', 'M', 'programme manager', 'Information Assurance, Disaster Recovery'),
('Madison', 'Simmons', 'F', 'associate lecturer', 'Computer Organization, Assembly Language'),
('Robert', 'Russell', 'M', 'senior lecturer', 'Information Theory, Error Correction Codes'),
('Maria', 'Parker', 'F', 'professor', 'Robotics, Autonomous Systems'),
('Thomas', 'Bennett', 'M', 'associate lecturer', 'Computer Ethics, Privacy Policies'),
('Grace', 'Wood', 'F', 'programme manager', 'IT Service Management, ITIL Framework'),
('Timothy', 'James', 'M', 'associate lecturer', 'Software Metrics, Code Quality Analysis'),
('Christina', 'Adams', 'F', 'senior lecturer', 'Digital Signal Processing, Image Processing'),
('Zachary', 'Nelson', 'M', 'professor', 'Computational Biology, Bioinformatics'),
('Jennifer', 'Cooper', 'F', 'associate lecturer', 'Information Visualization, Data Storytelling'),
('Austin', 'Richardson', 'M', 'programme manager', 'Business Process Management, Workflow Automation'),
('Heather', 'Torres', 'F', 'associate lecturer', 'Computerized Accounting Systems, ERP Systems'),
('Steven', 'Hill', 'M', 'senior lecturer', 'Software Requirements Engineering, Software Architecture'),
('Brianna', 'Sanchez', 'F', 'professor', 'Computer Aided Design, Computer Graphics'),
('Mark', 'Ramirez', 'M', 'associate lecturer', 'Geographic Information Systems, Spatial Databases'),
('Lisa', 'Peterson', 'F', 'programme manager', 'IT Procurement, Vendor Management'),
('Kyle', 'Ward', 'M', 'associate lecturer', 'Data Structures and Algorithms, Algorithm Analysis'),
('Julia', 'Ross', 'F', 'senior lecturer', 'Information Systems Development, Systems Analysis'),
('Justin', 'Barnes', 'M', 'professor', 'Embedded Software, Real-Time Systems'),
('Chloe', 'Myers', 'F', 'associate lecturer', 'Agile Software Development, Scrum Methodology'),
('Patrick', 'Coleman', 'M', 'programme manager', 'IT Governance, Compliance Management'),
('Danielle', 'Jenkins', 'F', 'associate lecturer', 'Cloud Security, Identity and Access Management'),
('Aaron', 'Harrison', 'M', 'senior lecturer', 'Wireless Networks, Mobile Computing'),
('Katelyn', 'Wagner', 'F', 'professor', 'Human-Computer Interaction Design, Interaction Prototyping'),
('Keith', 'Gonzales', 'M', 'associate lecturer', 'Software Configuration Management, Version Control'),
('Tiffany', 'Ellis', 'F', 'programme manager', 'IT Service Desk Management, Incident Management'),
('Dylan', 'Fisher', 'M', 'associate lecturer', 'Digital Forensics, Network Analysis'),
('Alyssa', 'Ferguson', 'F', 'senior lecturer', 'Computer-Based Training, E-Learning Systems'),
('Shawn', 'Murray', 'M', 'professor', 'Computer Music, Sound Synthesis'),
('Sara', 'Hansen', 'F', 'associate lecturer', 'Software Product Management, Product Development Lifecycle'),
('Cody', 'Weaver', 'M', 'programme manager', 'IT Security Policy, Security Awareness Training'),
('Jamie', 'Burton', 'F', 'associate lecturer', 'Computer Animation, 3D Modeling'),
('Jordan', 'Gomez', 'M', 'senior lecturer', 'Web Accessibility, Inclusive Design'),
('Casey', 'Bishop', 'F', 'professor', 'Computer Vision, Image Recognition'),
('Logan', 'Knight', 'M', 'associate lecturer', 'Network Protocols, TCP/IP Stack'),
('Erin', 'Snyder', 'F', 'programme manager', 'IT Portfolio Management, Project Portfolio Management'),
('Evan', 'Howell', 'M', 'associate lecturer', 'Digital Signal Processing, Audio Processing'),
('Caroline', 'Olson', 'F', 'senior lecturer', 'Embedded Systems Design, Firmware Development'),
('Corey', 'Lawrence', 'M', 'professor', 'Computer Networks Security, Cryptography'),
('Melanie', 'Rose', 'F', 'associate lecturer', 'IT Risk Management, Cybersecurity Governance'),
('Scott', 'Barnett', 'M', 'programme manager', 'Enterprise Resource Planning, Business Intelligence'),
('Monica', 'Rice', 'F', 'associate lecturer', 'Software Quality Assurance, Test Automation'),
('Dustin', 'Hayes', 'M', 'senior lecturer', 'Digital Image Processing, Computer Vision Algorithms'),
('Katie', 'Fowler', 'F', 'professor', 'Computer Graphics Programming, Shader Development'),
('Phillip', 'Hudson', 'M', 'associate lecturer', 'Mobile Application Security, Secure Coding Practices'),
('Vanessa', 'Gardner', 'F', 'programme manager', 'IT Compliance, Audit Management'),
('Gregory', 'Matthews', 'M', 'associate lecturer', 'Software Reverse Engineering, Malware Analysis'),
('Breanna', 'Bates', 'F', 'senior lecturer', 'Database Administration, SQL Tuning'),
('Jeffrey', 'Lloyd', 'M', 'professor', 'Human-Robot Interaction, Social Robotics'),
('Kayleeya', 'Mendorzarews', 'F', 'associate lecturer', 'Network Security, Cryptography'),
('Alex', 'Gibson', 'M', 'senior lecturer', 'Data Analysis, Data Visualization'),
('Marissa', 'Grant', 'F', 'professor', 'Artificial Intelligence, Natural Language Processing'),
('Derek', 'Wells', 'M', 'associate lecturer', 'Software Development, Web Programming'),
('Cassandra', 'Harrison', 'F', 'programme manager', 'Information Systems Management, IT Governance'),
('Joel', 'Hawkins', 'M', 'associate lecturer', 'Computer Architecture, Microcontrollers'),
('Bethany', 'Ford', 'F', 'senior lecturer', 'Mobile App Development, iOS Development'),
('Erik', 'Bowman', 'M', 'professor', 'Computer Vision, Image Processing'),
('Michelle', 'Gordon', 'F', 'associate lecturer', 'Digital Marketing, Social Media Analytics'),
('Oscar', 'Greene', 'M', 'programme manager', 'Cybersecurity Strategy, Incident Response Planning'),
('Riley', 'Henderson', 'F', 'associate lecturer', 'Data Warehousing, Business Intelligence'),
('Blake', 'Carpenter', 'M', 'senior lecturer', 'Cloud Computing, DevOps Practices'),
('Paige', 'Hayes', 'F', 'professor', 'Database Management, SQL Programming'),
('Colton', 'Freeman', 'M', 'associate lecturer', 'Computer Graphics, Animation'),
('Miranda', 'Fletcher', 'F', 'programme manager', 'IT Risk Assessment, Business Continuity Planning'),
('Tristan', 'Schmidt', 'M', 'associate lecturer', 'Software Quality Assurance, Test Automation'),
('Rachael', 'Bowen', 'F', 'senior lecturer', 'User Experience Design, Usability Testing'),
('Greg', 'Ortega', 'M', 'professor', 'Machine Learning, Data Mining'),
('Adriana', 'Howell', 'F', 'associate lecturer', 'Software Engineering Principles, Agile Methodologies'),
('Hailey', 'Walters', 'F', 'associate lecturer', 'Network Administration, Server Management'),
('Dominic', 'Johnston', 'M', 'senior lecturer', 'Computer Forensics, Digital Investigations'),
('Gabriella', 'Adams', 'F', 'professor', 'Cybersecurity Management, Governance, and Compliance'),
('Ethan', 'Diaz', 'M', 'associate lecturer', 'Object-Oriented Programming, Java Development'),
('Autumn', 'Morrison', 'F', 'programme manager', 'Enterprise Architecture, IT Strategy'),
('Jaden', 'Harrison', 'M', 'associate lecturer', 'Web Development, Frontend Frameworks'),
('Isabelle', 'Ward', 'F', 'senior lecturer', 'Information Security, Ethical Hacking'),
('Gavin', 'Gregory', 'M', 'professor', 'Digital Forensics, Cybercrime Investigation'),
('Elena', 'Hudson', 'F', 'associate lecturer', 'Database Design, SQL Fundamentals'),
('Brady', 'Nichols', 'M', 'programme manager', 'IT Project Management, Project Planning'),
('Kaitlyn', 'Floyd', 'F', 'associate lecturer', 'Network Security, Penetration Testing'),
('Grant', 'Hubbard', 'M', 'senior lecturer', 'Data Analytics, Predictive Modeling'),
('Lila', 'Bishop', 'F', 'professor', 'Computer Science Fundamentals, Algorithms'),
('Aiden', 'Wells', 'M', 'associate lecturer', 'Software Engineering, Software Development Lifecycle'),
('Gabrielle', 'Carroll', 'F', 'programme manager', 'IT Governance, Risk Management'),
('Peyton', 'Conner', 'M', 'associate lecturer', 'Computer Networks, Network Administration'),
('Audrey', 'Stewart', 'F', 'senior lecturer', 'Web Design, User Interface Development'),
('Hayden', 'Bowman', 'M', 'professor', 'Artificial Intelligence, Machine Learning'),
('Madeline', 'Bowen', 'F', 'associate lecturer', 'Data Structures, Algorithms'),
('Ryder', 'Ray', 'M', 'programme manager', 'Cybersecurity Policy, Compliance Management'),
('Diana', 'McKinney', 'F', 'associate lecturer', 'Mobile App Development, iOS Programming'),
('Wesley', 'Wallace', 'M', 'senior lecturer', 'Software Testing, Quality Assurance'),
('Brooke', 'Mendez', 'F', 'professor', 'Cloud Computing, Distributed Systems'),
('Nolan', 'Frazier', 'M', 'associate lecturer', 'Computer Graphics, 3D Modeling'),
('Jocelyn', 'Higgins', 'F', 'programme manager', 'Information Security Management, Incident Response'),
('Tanner', 'Reid', 'M', 'associate lecturer', 'Network Security, Firewall Management'),
('Camila', 'Bryant', 'F', 'senior lecturer', 'Database Administration, SQL Tuning'),
('Jaxon', 'Bishop', 'M', 'professor', 'Data Science, Big Data Analytics'),
('Alaina', 'Newton', 'F', 'associate lecturer', 'Software Development, Web Programming'),
('Braxton', 'Luna', 'M', 'programme manager', 'Cybersecurity Risk Management, Threat Intelligence'),
('Caitlin', 'Parks', 'F', 'associate lecturer', 'Software Engineering, Agile Methodologies'),
('Trevor', 'Summers', 'M', 'senior lecturer', 'Computer Networks, Network Security'),
('Leah', 'Morrison', 'F', 'professor', 'Information Systems Management, IT Governance'),
('Parker', 'Ortega', 'M', 'associate lecturer', 'Database Management, SQL Programming'),
('Allison', 'Warren', 'F', 'programme manager', 'IT Service Management, ITIL Framework'),
('Roman', 'Gonzalez', 'M', 'associate lecturer', 'Computer Graphics, Animation'),
('Juliana', 'Sullivan', 'F', 'senior lecturer', 'Software Engineering, Software Architecture'),
('Jesse', 'Vaughn', 'M', 'professor', 'Machine Learning, Deep Learning'),
('Carly', 'Marsh', 'F', 'associate lecturer', 'Network Administration, Server Management'),
('Gage', 'Garza', 'M', 'programme manager', 'Enterprise Architecture, IT Strategy'),
('Julianna', 'French', 'F', 'associate lecturer', 'Web Development, Frontend Frameworks'),
('Braden', 'Ray', 'M', 'senior lecturer', 'Information Security, Cybersecurity Governance'),
('Lindsay', 'Hardy', 'F', 'professor', 'Digital Forensics, Cybercrime Investigation'),
('Brock', 'Osborne', 'M', 'associate lecturer', 'Object-Oriented Programming, Java Development'),
('Shelby', 'Hess', 'F', 'programme manager', 'IT Project Management, Project Planning'),
('Preston', 'Lambert', 'M', 'associate lecturer', 'Network Security, Penetration Testing'),
('Kylie', 'Goodman', 'F', 'senior lecturer', 'Data Analytics, Predictive Modeling'),
('Jared', 'Morgan', 'M', 'professor', 'Computer Science Fundamentals, Algorithms');

INSERT INTO courses (course_name, lecturer_id, course_program, course_room) VALUES
('Introduction to Computer Science', 23, 'Introduction to programming concepts and basic algorithms.', 'Room 101'),
('Data Structures and Algorithms', 78, 'Advanced data structures and algorithm design techniques.', 'Online'),
('Database Management Systems', 112, 'Design, implementation, and management of database systems.', 'Online'),
('Artificial Intelligence', 45, 'Fundamental concepts and techniques in artificial intelligence.', 'Room 104'),
('Web Development', 87, 'Frontend and backend web development technologies.', 'Room 105'),
('Software Engineering', 5, 'Software development methodologies and best practices.', 'Room 106'),
('Machine Learning', 32, 'Statistical and algorithmic methods for machine learning.', 'Online'),
('Cybersecurity Fundamentals', 99, 'Basic principles and practices in cybersecurity.', 'Room 108'),
('Network Administration', 71, 'Fundamental concepts and tools for network administration.', 'Room 109'),
('Computer Graphics', 54, 'Principles and techniques of computer graphics rendering.', 'Room 110'),
('Mobile App Development', 18, 'Development of mobile applications for various platforms.', 'Online'),
('Data Mining', 85, 'Methods and tools for discovering patterns in large datasets.', 'Room 112'),
('Software Testing and Quality Assurance', 63, 'Testing methodologies and quality assurance processes.', 'Room 113'),
('Operating Systems', 127, 'Design, implementation, and management of operating systems.', 'Room 114'),
('Cloud Computing', 41, 'Concepts and technologies for cloud-based applications and services.', 'Online'),
('Digital Marketing', 9, 'Strategies and techniques for marketing in the digital age.', 'Room 116'),
('Human-Computer Interaction', 74, 'Design principles and usability testing in HCI.', 'Room 117'),
('Computer Networks', 35, 'Fundamental concepts and protocols in computer networking.', 'Room 118'),
('Information Security Management', 138, 'Management strategies for information security in organizations.', 'Room 119'),
('Software Architecture', 121, 'Principles and patterns for designing software architectures.', 'Room 120'),
('Internet of Things', 59, 'Concepts and applications of IoT technologies.', 'Room 121'),
('Data Visualization', 142, 'Visualization techniques for presenting data and information.', 'Room 122'),
('Embedded Systems', 82, 'Design and programming of embedded systems.', 'Room 123'),
('Computer Ethics', 47, 'Ethical issues and dilemmas in computing and technology.', 'Room 124'),
('Game Development', 24, 'Design and development of video games.', 'Room 125'),
('Big Data Analytics', 129, 'Methods and tools for analyzing large and complex datasets.', 'Room 126'),
('Computer Vision', 68, 'Techniques for enabling computers to interpret and understand visual information.', 'Online'),
('IT Project Management', 106, 'Principles and practices for managing IT projects.', 'Room 128'),
('Blockchain Technology', 80, 'Concepts and applications of blockchain technology.', 'Online'),
('Computer Forensics', 57, 'Investigation and analysis of digital evidence for legal purposes.', 'Room 130'),
('Ethical Hacking', 17, 'Methods and techniques for testing and securing computer systems.', 'Room 131'),
('Digital Forensics', 133, 'Forensic analysis of digital devices and data.', 'Room 132'),
('Computer Animation', 97, 'Techniques for creating animated graphics and visual effects.', 'Room 133'),
('Software Development Lifecycle', 39, 'Phases and processes involved in software development.', 'Room 134'),
('Quantum Computing', 128, 'Principles and applications of quantum computing.', 'Room 135'),
('Information Retrieval', 73, 'Techniques for searching and retrieving information from large datasets.', 'Room 136'),
('Computer Music', 126, 'Creation and manipulation of music using computers and software.', 'Room 137'),
('Geographic Information Systems', 64, 'Applications of GIS technology in mapping and spatial analysis.', 'Online'),
('Programming Languages', 107, 'Syntax, semantics, and usage of programming languages.', 'Room 139'),
('Cyber-Physical Systems', 19, 'Integration of physical processes with computing and communication.', 'Online'),
('Data Science', 144, 'Methods and techniques for analyzing and interpreting complex datasets.', 'Room 141'),
('Robotics', 70, 'Design, construction, and operation of robots.', 'Room 142'),
('Computer-Aided Design', 145, 'Use of computer software to aid in the design and drafting process.', 'Room 143'),
('Information Theory', 25, 'Mathematical study of information and communication.', 'Room 144'),
('Social Media Analytics', 122, 'Analysis of social media data for insights and trends.', 'Room 145'),
('Compiler Design', 67, 'Principles and techniques for designing compilers.', 'Room 146'),
('Digital Signal Processing', 148, 'Analysis and manipulation of digital signals.', 'Room 147'),
('Network Security', 51, 'Methods and technologies for securing computer networks.', 'Online'),
('Software Maintenance', 114, 'Processes and techniques for maintaining and updating software.', 'Room 149'),
('Computer Vision Algorithms', 13, 'Algorithms for computer vision tasks such as image recognition and object detection.', 'Room 150'),
('Introduction to Python Programming', 91, 'Basic concepts and syntax of Python programming language.', 'Room 101'),
('Java Programming', 50, 'Introduction to Java programming language and object-oriented programming concepts.', 'Room 102'),
('Web Design and Development', 104, 'Fundamentals of web design and development using HTML, CSS, and JavaScript.', 'Room 103'),
('Database Design and Management', 79, 'Design and management of relational databases using SQL.', 'Online'),
('Introduction to Data Science', 112, 'Fundamental concepts and techniques in data science.', 'Online'),
('Computer Networking', 66, 'Fundamentals of computer networking and network protocols.', 'Room 106'),
('Introduction to Cybersecurity', 18, 'Basic principles and practices in cybersecurity.', 'Room 107'),
('Object-Oriented Programming', 142, 'Fundamentals of object-oriented programming using Java.', 'Room 108'),
('Software Engineering Principles', 35, 'Principles and methodologies of software engineering.', 'Room 109'),
('Algorithms and Data Structures', 93, 'Fundamental algorithms and data structures for problem-solving.', 'Online'),
('Introduction to Machine Learning', 29, 'Basic concepts and algorithms in machine learning.', 'Room 111'),
('Cloud Computing Fundamentals', 131, 'Basic concepts and technologies of cloud computing.', 'Room 112'),
('Digital Marketing Strategies', 56, 'Strategies for marketing products and services in the digital age.', 'Room 113'),
('Human-Computer Interaction Design', 73, 'Design principles and methods for human-computer interaction.', 'Online'),
('Software Development Methodologies', 45, 'Agile and traditional software development methodologies.', 'Online'),
('Introduction to Internet of Things', 102, 'Concepts and applications of Internet of Things (IoT).', 'Room 116'),
('Data Visualization Techniques', 79, 'Techniques for visualizing and analyzing data.', 'Room 117'),
('Embedded Systems Design', 37, 'Design and development of embedded systems.', 'Room 118'),
('Computer Ethics and Privacy', 132, 'Ethical and privacy issues in computing and technology.', 'Online'),
('Game Development Fundamentals', 17, 'Fundamental concepts and techniques in game development.', 'Room 120'),
('Big Data Analytics Techniques', 66, 'Techniques for analyzing large-scale datasets.', 'Room 121'),
('Computer Vision Applications', 101, 'Applications of computer vision in various domains.', 'Online'),
('IT Project Management Practices', 83, 'Practices and methodologies for managing IT projects.', 'Room 123'),
('Blockchain Technology Applications', 25, 'Applications of blockchain technology beyond cryptocurrencies.', 'Online'),
('Computer Forensics Investigation', 98, 'Investigation and analysis of digital evidence for legal purposes.', 'Room 125'),
('Ethical Hacking Techniques', 69, 'Techniques for identifying and addressing security vulnerabilities.', 'Room 126'),
('Digital Forensics Analysis', 88, 'Analysis of digital evidence for forensic purposes.', 'Room 127'),
('Computer Animation Principles', 47, 'Principles and techniques of computer animation.', 'Room 128'),
('Software Development Lifecycle Models', 132, 'Different models and methodologies in software development lifecycle.', 'Online'),
('Quantum Computing Concepts', 101, 'Concepts and principles of quantum computing.', 'Room 130'),
('Information Retrieval Methods', 59, 'Methods for retrieving information from large datasets.', 'Room 131'),
('Computer Music Composition', 83, 'Composition and production of music using computer technology.', 'Room 132'),
('Geographic Information Systems Applications', 22, 'Applications of GIS technology in various fields.', 'Room 133'),
('Programming Languages Concepts', 77, 'Concepts and features of programming languages.', 'Room 134'),
('Cyber-Physical Systems Design', 143, 'Design and implementation of cyber-physical systems.', 'Room 135'),
('Data Science Techniques', 12, 'Techniques and tools for data analysis and interpretation.', 'Room 136'),
('Robotics Engineering', 144, 'Engineering principles and practices in robotics.', 'Room 137'),
('Computer-Aided Design Applications', 115, 'Applications of CAD software in design and engineering.', 'Room 138'),
('Information Theory Fundamentals', 62, 'Fundamental concepts in information theory.', 'Online'),
('Social Media Analytics Methods', 147, 'Methods for analyzing and interpreting social media data.', 'Online'),
('Compiler Design Principles', 76, 'Principles and techniques of compiler design.', 'Room 141'),
('Digital Signal Processing Techniques', 128, 'Techniques for processing digital signals.', 'Online'),
('Network Security Technologies', 93, 'Technologies and tools for network security.', 'Room 143'),
('Software Maintenance Practices', 79, 'Practices and strategies for software maintenance.', 'Room 144'),
('Computer Vision Algorithms Implementation', 40, 'Implementation of computer vision algorithms.', 'Room 145'),
('Introduction to Python Programming', 91, 'Basic concepts and syntax of Python programming language.', 'Room 101'),
('Java Programming', 50, 'Introduction to Java programming language and object-oriented programming concepts.', 'Room 102'),
('Web Design and Development', 104, 'Fundamentals of web design and development using HTML, CSS, and JavaScript.', 'Room 103'),
('Database Design and Management', 79, 'Design and management of relational databases using SQL.', 'Online'),
('Introduction to Data Science', 112, 'Fundamental concepts and techniques in data science.', 'Room 105'),
('Computer Networking', 66, 'Fundamentals of computer networking and network protocols.', 'Room 106');

INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (189, 85, 43, '2023-03-09', '2024-07-12');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (78, 70, 55, '2023-03-16', '2024-02-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (168, 61, 27, '2023-03-01', '2023-07-31');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (130, 22, 92, '2023-08-02', '2026-08-01');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (110, 71, 89, '2023-12-29', '2026-07-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (144, 28, 52, '2023-01-25', '2024-12-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (116, 12, 95, '2023-05-04', '2026-02-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (159, 37, 85, '2023-08-22', '2024-04-25');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (139, 86, 23, '2024-01-05', '2026-10-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (56, 86, 77, '2023-11-26', '2026-07-13');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (102, 70, 110, '2023-07-13', '2024-02-12');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (35, 83, 80, '2023-09-04', '2026-06-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (167, 29, 140, '2023-09-04', '2025-04-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (128, 50, 42, '2023-01-20', '2023-04-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (33, 39, 132, '2023-02-17', '2024-07-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (173, 15, 42, '2023-12-05', '2025-12-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (9, 14, 31, '2023-10-29', '2025-09-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (138, 101, 73, '2023-03-14', '2025-04-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (165, 59, 44, '2023-04-18', '2025-06-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (188, 20, 11, '2023-06-20', '2026-01-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (104, 12, 127, '2023-02-04', '2025-05-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (33, 45, 101, '2023-03-05', '2023-04-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (72, 15, 114, '2023-02-02', '2023-07-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (164, 101, 43, '2023-09-05', '2024-05-31');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (116, 73, 145, '2023-02-26', '2024-10-14');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (77, 100, 91, '2023-03-18', '2024-05-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (94, 35, 68, '2023-07-13', '2023-08-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (51, 5, 128, '2024-02-17', '2026-07-17');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (119, 26, 98, '2023-06-02', '2025-06-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (3, 21, 81, '2023-05-04', '2024-10-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (63, 16, 114, '2023-08-04', '2025-05-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (169, 72, 143, '2023-08-15', '2023-10-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (81, 40, 113, '2023-08-19', '2025-08-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (78, 45, 73, '2024-02-05', '2026-06-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (151, 63, 62, '2023-07-31', '2024-03-25');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (131, 93, 36, '2023-11-01', '2024-11-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (2, 69, 128, '2023-02-10', '2024-02-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (160, 6, 50, '2024-03-14', '2026-05-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (175, 57, 131, '2023-05-18', '2025-07-05');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (83, 78, 81, '2023-09-28', '2026-08-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (22, 100, 8, '2023-04-10', '2023-05-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (195, 23, 42, '2023-03-21', '2025-09-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (175, 17, 82, '2023-10-15', '2025-03-12');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (42, 18, 47, '2024-03-13', '2025-09-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (43, 14, 41, '2023-10-03', '2024-01-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (157, 64, 48, '2023-11-08', '2024-06-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (197, 15, 52, '2023-08-26', '2024-07-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (153, 39, 111, '2023-12-16', '2024-07-16');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (112, 27, 25, '2024-02-23', '2026-06-20');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (10, 73, 148, '2023-07-25', '2025-09-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (187, 93, 43, '2024-03-11', '2027-01-12');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (84, 33, 79, '2023-03-04', '2025-07-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (93, 96, 88, '2024-03-10', '2025-06-22');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (94, 79, 126, '2023-04-21', '2023-08-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (136, 32, 128, '2023-10-22', '2025-05-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (158, 93, 95, '2023-07-15', '2025-08-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (49, 27, 126, '2024-01-09', '2026-01-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (193, 15, 139, '2023-07-14', '2026-02-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (116, 13, 79, '2023-09-30', '2025-04-02');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (112, 76, 23, '2023-08-18', '2025-05-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (55, 66, 12, '2023-05-05', '2024-10-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (80, 65, 30, '2024-01-02', '2026-08-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (199, 56, 84, '2023-02-02', '2024-09-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (122, 48, 134, '2023-05-01', '2024-02-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (166, 70, 19, '2024-01-13', '2026-08-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (146, 52, 40, '2023-11-27', '2026-06-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (133, 62, 144, '2023-06-28', '2024-03-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (157, 44, 84, '2023-03-31', '2025-10-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (91, 52, 9, '2023-01-19', '2024-07-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (127, 45, 75, '2023-10-16', '2024-08-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (97, 75, 3, '2023-11-15', '2025-10-01');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (15, 91, 14, '2023-02-09', '2025-12-31');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (72, 55, 109, '2023-01-10', '2023-02-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (179, 27, 121, '2024-02-26', '2025-03-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (57, 72, 127, '2023-11-01', '2024-02-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (80, 16, 135, '2023-03-22', '2023-12-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (108, 33, 141, '2023-05-19', '2025-12-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (89, 72, 67, '2023-07-16', '2026-02-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (50, 26, 131, '2023-05-10', '2024-11-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (54, 75, 125, '2023-05-13', '2025-06-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (20, 39, 115, '2023-06-10', '2026-04-05');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (97, 24, 57, '2023-01-15', '2024-07-28');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (165, 2, 108, '2023-02-12', '2023-06-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (69, 19, 111, '2023-08-29', '2026-04-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (144, 51, 26, '2023-12-05', '2025-04-30');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (51, 58, 122, '2024-03-05', '2025-07-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (35, 81, 45, '2023-06-21', '2024-12-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (63, 77, 149, '2023-10-03', '2026-05-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (111, 15, 134, '2023-11-05', '2025-06-13');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (156, 23, 39, '2023-02-07', '2025-07-22');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (117, 20, 141, '2023-06-30', '2023-10-17');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (92, 48, 91, '2023-10-13', '2025-06-17');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (121, 46, 144, '2023-04-13', '2025-01-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (66, 34, 58, '2023-06-11', '2023-09-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (153, 72, 17, '2023-03-21', '2023-09-13');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (33, 55, 105, '2023-02-05', '2024-06-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (70, 2, 114, '2023-10-04', '2025-05-31');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (59, 73, 121, '2023-01-25', '2024-04-30');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (187, 36, 87, '2023-10-05', '2024-06-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (94, 95, 100, '2024-01-22', '2025-05-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (179, 68, 64, '2024-01-20', '2026-06-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (63, 19, 9, '2023-05-01', '2025-01-15');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (8, 70, 8, '2023-01-02', '2025-03-01');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (148, 48, 17, '2023-01-25', '2025-12-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (45, 75, 148, '2024-03-03', '2027-01-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (38, 5, 123, '2023-06-21', '2024-11-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (77, 66, 114, '2023-08-12', '2023-10-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (175, 49, 83, '2023-06-14', '2025-02-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (161, 58, 71, '2023-12-26', '2026-04-17');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (25, 86, 24, '2023-10-16', '2026-09-01');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (157, 23, 49, '2023-03-16', '2025-07-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (56, 86, 141, '2024-02-02', '2025-12-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (46, 69, 12, '2023-01-20', '2024-01-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (143, 85, 56, '2023-05-29', '2025-11-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (17, 65, 40, '2023-10-25', '2025-11-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (1, 63, 98, '2023-10-09', '2024-02-20');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (129, 30, 105, '2023-02-21', '2025-11-17');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (67, 50, 31, '2023-04-05', '2024-06-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (18, 24, 25, '2023-01-06', '2023-07-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (51, 34, 122, '2024-02-04', '2025-05-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (66, 47, 72, '2024-01-04', '2025-09-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (96, 101, 24, '2023-08-26', '2024-08-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (56, 70, 83, '2024-03-07', '2025-02-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (55, 73, 107, '2023-08-10', '2025-06-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (138, 49, 54, '2023-07-03', '2026-02-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (134, 70, 17, '2023-11-30', '2024-12-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (108, 74, 116, '2023-04-09', '2024-05-20');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (132, 14, 40, '2023-07-09', '2026-06-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (123, 101, 81, '2023-02-23', '2025-08-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (34, 52, 60, '2023-09-06', '2025-08-16');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (22, 62, 60, '2023-05-14', '2024-05-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (180, 15, 20, '2023-07-09', '2025-10-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (141, 88, 122, '2024-02-21', '2025-10-17');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (151, 5, 32, '2023-10-24', '2026-09-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (118, 6, 131, '2023-04-16', '2023-10-17');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (165, 62, 116, '2024-01-12', '2024-06-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (28, 75, 139, '2023-07-27', '2025-01-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (177, 6, 129, '2023-12-22', '2024-01-12');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (108, 31, 59, '2023-09-01', '2024-04-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (46, 76, 58, '2023-07-27', '2025-02-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (66, 1, 119, '2024-02-08', '2026-04-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (64, 59, 119, '2024-02-07', '2026-12-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (106, 41, 100, '2023-01-14', '2025-10-14');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (113, 23, 143, '2023-05-31', '2023-06-05');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (150, 53, 24, '2023-06-18', '2025-05-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (58, 80, 107, '2023-11-07', '2026-01-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (150, 93, 53, '2023-09-07', '2024-02-01');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (120, 36, 47, '2023-10-03', '2024-04-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (111, 64, 79, '2023-03-06', '2025-06-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (117, 85, 91, '2023-09-06', '2025-03-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (125, 70, 42, '2023-04-01', '2024-03-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (81, 49, 32, '2023-10-11', '2024-06-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (148, 20, 12, '2023-04-17', '2023-08-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (116, 92, 27, '2023-08-10', '2024-09-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (133, 83, 97, '2023-02-15', '2025-09-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (9, 65, 132, '2023-01-03', '2025-08-31');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (155, 13, 118, '2023-07-06', '2023-11-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (6, 45, 9, '2023-12-14', '2024-01-15');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (182, 72, 61, '2024-02-03', '2025-03-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (20, 99, 7, '2023-12-23', '2026-08-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (158, 69, 143, '2023-07-20', '2023-08-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (1, 94, 93, '2023-12-10', '2025-01-05');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (48, 34, 89, '2023-08-02', '2024-01-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (146, 8, 147, '2023-03-22', '2025-02-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (148, 33, 118, '2023-05-02', '2023-11-16');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (176, 11, 111, '2023-08-02', '2026-03-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (1, 57, 13, '2023-11-26', '2024-01-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (83, 22, 6, '2024-02-19', '2026-08-22');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (151, 65, 37, '2023-03-13', '2024-08-25');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (117, 29, 22, '2023-09-26', '2025-04-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (43, 70, 30, '2023-12-15', '2024-02-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (136, 1, 113, '2023-11-07', '2025-06-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (49, 22, 94, '2023-03-03', '2024-04-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (115, 94, 21, '2023-07-30', '2026-03-25');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (175, 60, 38, '2024-02-18', '2025-11-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (47, 13, 129, '2023-08-21', '2025-11-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (75, 27, 5, '2023-10-03', '2025-11-30');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (19, 92, 7, '2023-07-04', '2026-02-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (75, 80, 148, '2023-05-28', '2025-03-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (2, 89, 135, '2023-09-29', '2025-08-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (165, 66, 81, '2023-12-01', '2025-07-30');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (146, 36, 121, '2023-12-15', '2026-12-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (80, 78, 61, '2023-03-09', '2025-11-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (149, 77, 19, '2024-02-25', '2027-02-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (132, 68, 137, '2023-07-29', '2025-01-15');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (107, 73, 8, '2023-02-23', '2024-04-16');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (43, 56, 143, '2023-01-09', '2025-05-13');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (86, 14, 11, '2023-01-06', '2025-01-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (3, 98, 59, '2023-12-29', '2026-12-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (186, 58, 13, '2023-06-30', '2024-11-25');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (122, 50, 29, '2023-01-15', '2025-11-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (2, 95, 41, '2023-08-12', '2025-06-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (48, 66, 23, '2023-09-20', '2025-03-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (188, 17, 54, '2023-06-23', '2025-03-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (135, 30, 37, '2023-02-20', '2023-11-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (27, 4, 88, '2023-10-18', '2024-07-12');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (114, 50, 104, '2024-02-16', '2026-01-31');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (190, 30, 33, '2023-03-24', '2023-11-12');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (135, 68, 37, '2023-06-07', '2026-05-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (165, 73, 27, '2023-11-08', '2024-01-12');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (63, 2, 93, '2023-09-10', '2025-01-20');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (174, 77, 51, '2023-11-30', '2025-06-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (96, 42, 86, '2024-01-27', '2024-02-22');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (194, 49, 52, '2023-05-25', '2024-10-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (20, 65, 149, '2023-09-20', '2025-05-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (197, 42, 57, '2023-01-22', '2023-10-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (177, 20, 145, '2024-02-18', '2024-09-05');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (189, 48, 57, '2023-05-13', '2024-04-20');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (66, 63, 37, '2023-12-23', '2026-06-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (170, 35, 63, '2024-02-26', '2026-03-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (168, 91, 129, '2024-01-30', '2025-04-01');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (122, 99, 8, '2023-07-01', '2026-05-05');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (163, 1, 34, '2023-01-03', '2023-12-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (43, 88, 98, '2023-03-01', '2023-08-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (133, 82, 116, '2024-01-12', '2025-11-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (131, 76, 115, '2023-09-24', '2023-12-16');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (199, 3, 55, '2023-03-24', '2025-07-15');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (83, 82, 105, '2024-02-21', '2025-02-01');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (77, 28, 23, '2023-04-14', '2023-12-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (186, 75, 35, '2023-10-14', '2025-07-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (92, 47, 91, '2023-08-31', '2026-02-14');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (136, 34, 87, '2024-02-15', '2024-07-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (161, 29, 97, '2023-05-08', '2024-12-31');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (6, 78, 23, '2023-12-21', '2024-02-15');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (88, 79, 51, '2024-02-25', '2026-01-28');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (163, 8, 141, '2023-05-18', '2025-10-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (176, 19, 38, '2024-02-28', '2026-04-30');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (91, 59, 131, '2023-04-23', '2024-09-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (78, 56, 97, '2024-01-31', '2026-08-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (176, 80, 76, '2023-03-22', '2025-12-12');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (4, 53, 33, '2023-07-25', '2025-10-25');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (138, 43, 108, '2023-04-30', '2025-07-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (157, 21, 6, '2023-08-11', '2025-08-31');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (142, 32, 101, '2023-08-26', '2024-10-25');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (48, 30, 93, '2023-06-17', '2023-12-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (8, 63, 124, '2023-05-14', '2026-05-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (26, 85, 16, '2023-07-02', '2025-09-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (150, 47, 149, '2023-01-18', '2024-04-14');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (127, 36, 143, '2023-04-07', '2025-08-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (49, 23, 142, '2024-02-21', '2026-05-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (36, 9, 150, '2023-07-05', '2024-04-22');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (114, 100, 143, '2024-02-13', '2026-05-29');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (199, 40, 107, '2023-01-27', '2025-10-13');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (108, 52, 142, '2023-10-06', '2024-06-13');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (185, 11, 72, '2023-02-04', '2024-01-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (125, 94, 8, '2023-05-15', '2024-01-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (22, 84, 46, '2023-03-14', '2026-01-20');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (174, 74, 63, '2023-10-31', '2026-10-16');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (8, 24, 15, '2023-11-18', '2025-12-17');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (134, 64, 87, '2024-01-11', '2025-09-07');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (63, 29, 11, '2023-02-16', '2024-11-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (31, 57, 112, '2024-02-19', '2025-09-27');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (43, 3, 128, '2023-01-05', '2024-01-25');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (15, 33, 132, '2023-09-04', '2025-06-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (137, 90, 62, '2023-09-29', '2026-06-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (139, 99, 87, '2023-02-16', '2026-02-04');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (111, 27, 70, '2023-05-11', '2025-11-05');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (155, 100, 46, '2023-04-13', '2023-06-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (195, 50, 149, '2023-04-06', '2025-10-02');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (160, 41, 48, '2023-09-01', '2024-03-15');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (55, 64, 74, '2023-07-13', '2025-07-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (149, 34, 79, '2023-01-20', '2024-02-25');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (176, 15, 118, '2023-02-17', '2024-01-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (148, 92, 50, '2023-01-12', '2025-12-20');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (52, 56, 13, '2023-09-25', '2024-03-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (197, 12, 36, '2023-10-06', '2025-05-09');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (105, 53, 145, '2023-03-02', '2025-01-15');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (72, 98, 125, '2023-02-25', '2024-12-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (148, 40, 100, '2024-01-13', '2025-11-15');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (68, 55, 114, '2023-05-24', '2026-04-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (81, 55, 44, '2023-01-30', '2024-11-28');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (119, 76, 4, '2024-01-20', '2026-11-21');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (188, 4, 26, '2023-09-19', '2024-11-11');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (189, 60, 133, '2023-07-15', '2024-01-31');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (179, 87, 114, '2023-04-03', '2024-07-05');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (194, 46, 127, '2024-03-02', '2026-10-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (53, 49, 65, '2023-09-22', '2026-03-20');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (82, 37, 53, '2023-03-28', '2024-07-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (33, 98, 92, '2023-09-19', '2026-04-30');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (168, 33, 25, '2023-01-07', '2023-01-15');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (150, 34, 44, '2024-01-23', '2027-01-03');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (63, 96, 135, '2023-11-16', '2024-06-14');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (90, 49, 61, '2023-07-06', '2025-11-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (121, 62, 4, '2023-05-28', '2025-07-24');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (169, 58, 148, '2024-02-27', '2025-12-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (182, 67, 11, '2023-12-07', '2026-02-02');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (47, 65, 110, '2023-03-24', '2025-07-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (82, 45, 22, '2023-02-25', '2024-10-06');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (16, 55, 28, '2023-03-05', '2025-05-18');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (125, 55, 38, '2023-11-22', '2025-01-14');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (7, 65, 119, '2023-10-20', '2023-11-19');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (97, 42, 20, '2023-12-21', '2024-08-26');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (147, 26, 147, '2023-06-03', '2026-02-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (38, 21, 136, '2023-12-08', '2026-01-10');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (50, 30, 12, '2023-07-12', '2024-01-23');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (49, 99, 73, '2023-04-09', '2025-09-08');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (23, 33, 111, '2023-03-14', '2026-01-28');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (194, 66, 134, '2023-01-28', '2024-07-01');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (72, 31, 137, '2023-04-07', '2025-12-20');
INSERT INTO enrollments (student_id, course_id, lecturer_id, enrollment_due, enrollment_finish) VALUES (108, 25, 62, '2024-03-03', '2024-05-04');

INSERT INTO grades (enrollment_id, grade) VALUES
(1, 82),
(2, 74),
(3, 95),
(4, 68),
(5, 88),
(6, 43),
(7, 77),
(8, 91),
(9, 56),
(10, 80),
(11, 62),
(12, 85),
(13, 73),
(14, 90),
(15, 67),
(16, 78),
(17, 84),
(18, 72),
(19, 96),
(20, 50),
(21, 79),
(22, 89),
(23, 65),
(24, 81),
(25, 60),
(26, 87),
(27, 69),
(28, 94),
(29, 54),
(30, 83),
(31, 71),
(32, 75),
(33, 93),
(34, 58),
(35, 86),
(36, 66),
(37, 92),
(38, 64),
(39, 76),
(40, 59),
(41, 97),
(42, 61),
(43, 70),
(44, 98),
(45, 63),
(46, 67),
(47, 99),
(48, 53),
(49, 74),
(50, 100),
(51, 55),
(52, 78),
(53, 98),
(54, 51),
(55, 81),
(56, 97),
(57, 52),
(58, 79),
(59, 96),
(60, 49),
(61, 85),
(62, 95),
(63, 48),
(64, 82),
(65, 94),
(66, 47),
(67, 83),
(68, 93),
(69, 46),
(70, 80),
(71, 92),
(72, 45),
(73, 84),
(74, 91),
(75, 44),
(76, 86),
(77, 90),
(78, 43),
(79, 87),
(80, 89),
(81, 42),
(82, 88),
(83, 88),
(84, 41),
(85, 88),
(86, 88),
(87, 40),
(88, 88),
(89, 88),
(90, 39),
(91, 88),
(92, 88),
(93, 38),
(94, 88),
(95, 88),
(96, 37),
(97, 88),
(98, 88),
(99, 36),
(100, 88),
(101, 88),
(102, 35),
(103, 88),
(104, 88),
(105, 34),
(106, 88),
(107, 88),
(108, 33),
(109, 88),
(110, 88),
(111, 32),
(112, 88),
(113, 88),
(114, 31),
(115, 88),
(116, 88),
(117, 30),
(118, 88),
(119, 88),
(120, 29),
(121, 88),
(122, 88),
(123, 28),
(124, 88),
(125, 88),
(126, 27),
(127, 88),
(128, 88),
(129, 26),
(130, 88),
(131, 88),
(132, 25),
(133, 88),
(134, 88),
(135, 24),
(136, 88),
(137, 88),
(138, 23),
(139, 88),
(140, 88),
(141, 22),
(142, 88),
(143, 88),
(144, 21),
(145, 88),
(146, 88),
(147, 20),
(148, 88),
(149, 88),
(150, 19),
(151, 88),
(152, 88),
(153, 18),
(154, 88),
(155, 88),
(156, 17),
(157, 88),
(158, 88),
(159, 16),
(160, 88),
(161, 88),
(162, 15),
(163, 88),
(164, 88),
(165, 14),
(166, 88),
(167, 88),
(168, 13),
(169, 88),
(170, 88),
(171, 12),
(172, 88),
(173, 88),
(174, 11),
(175, 88),
(176, 88),
(177, 10),
(178, 88),
(179, 88),
(180, 9),
(181, 88),
(182, 88),
(183, 8),
(184, 88),
(185, 88),
(186, 7),
(187, 88),
(188, 88),
(189, 6),
(190, 88),
(191, 88),
(192, 5),
(193, 88),
(194, 88),
(195, 4),
(196, 88),
(197, 88),
(198, 3),
(199, 88),
(200, 88),
(201, 2),
(202, 88),
(203, 88),
(204, 1),
(205, 88),
(206, 88),
(207, 0),
(208, 88),
(209, 87),
(210, 74),
(211, 95),
(212, 68),
(213, 88),
(214, 43),
(215, 77),
(216, 91),
(217, 78),
(218, 92),
(219, 65),
(220, 70),
(221, 88),
(222, 95),
(223, 73),
(224, 82),
(225, 91),
(226, 79),
(227, 84),
(228, 90),
(229, 68),
(230, 87),
(231, 75),
(232, 81),
(233, 93),
(234, 77),
(235, 89),
(236, 72),
(237, 86),
(238, 94),
(239, 76),
(240, 83),
(241, 80),
(242, 96),
(243, 74),
(244, 97),
(245, 71),
(246, 98),
(247, 69),
(248, 99),
(249, 67),
(250, 100),
(251, 66),
(252, 95),
(253, 85),
(254, 78),
(255, 92),
(256, 65),
(257, 70),
(258, 88),
(259, 95),
(260, 73),
(261, 82),
(262, 91),
(263, 79),
(264, 84),
(265, 90),
(266, 68),
(267, 87),
(268, 75),
(269, 81),
(270, 93),
(271, 77),
(272, 89),
(273, 72),
(274, 86),
(275, 94),
(276, 76),
(277, 83),
(278, 80),
(279, 96),
(280, 74),
(281, 97),
(282, 71),
(283, 98),
(284, 69),
(285, 99),
(286, 67),
(287, 100),
(288, 66),
(289, 95),
(290, 85),
(291, 78),
(292, 92),
(293, 65),
(294, 70),
(295, 88),
(296, 95),
(297, 73),
(298, 82),
(299, 91),
(300, 79);

INSERT INTO feedback (feedback_date, feedback, feedback_rating, student_id, course_id) VALUES
('2020-01-15', 'Great course, learned a lot.', 5, 23, 45),
('2020-02-25', 'The content was not very clear.', 3, 76, 12),
('2020-03-10', 'Really enjoyed the interactive sessions.', 4, 102, 78),
('2020-04-03', 'Could have been more challenging.', 3, 55, 30),
('2020-05-12', 'Excellent instructor!', 5, 167, 94),
('2020-06-08', 'The course material was outdated.', 2, 88, 20),
('2020-07-21', 'Very informative.', 4, 112, 55),
('2020-08-05', 'Helped me advance in my career.', 5, 19, 67),
('2020-09-17', 'Would have liked more hands-on exercises.', 4, 125, 89),
('2020-10-02', 'The instructor was very engaging.', 5, 72, 15),
('2020-11-09', 'The course project was too difficult.', 3, 33, 73),
('2020-12-14', 'Enjoyed the guest lectures.', 4, 198, 100),
('2021-01-20', 'The course was well-structured.', 5, 47, 42),
('2021-02-08', 'Highly recommend this course.', 5, 150, 3),
('2021-03-11', 'Too many assignments.', 2, 91, 86),
('2021-04-26', 'Good balance between theory and practice.', 4, 14, 28),
('2021-05-30', 'The course content was relevant.', 5, 176, 64),
('2021-06-04', 'Instructor was very knowledgeable.', 5, 61, 39),
('2021-07-18', 'Could have provided more resources.', 3, 105, 90),
('2021-08-26', 'Lacked sufficient explanation on some topics.', 3, 27, 21),
('2021-09-02', 'Helped me gain new skills.', 4, 133, 50),
('2021-10-16', 'Great community interaction.', 5, 68, 1),
('2021-11-19', 'Would have liked more real-world examples.', 3, 172, 81),
('2021-12-25', 'Easy to follow along.', 4, 83, 17),
('2022-01-30', 'The course was too fast-paced.', 2, 38, 59),
('2022-02-05', 'The instructor was very responsive to questions.', 5, 199, 98),
('2022-03-19', 'The course improved my problem-solving skills.', 4, 57, 35),
('2022-04-23', 'Could have been more interactive.', 3, 122, 75),
('2022-05-27', 'The course materials were comprehensive.', 5, 75, 8),
('2022-06-02', 'Great value for the price.', 5, 10, 47),
('2022-07-16', 'Could have had more quizzes.', 3, 185, 83),
('2022-08-24', 'Enjoyed the practical exercises.', 4, 43, 27),
('2022-09-30', 'Would have liked more challenging assignments.', 3, 143, 68),
('2022-10-07', 'Could have provided more examples.', 4, 66, 10),
('2022-11-21', 'Improved my understanding of the subject.', 5, 7, 54),
('2022-12-27', 'Highly recommend this course to others.', 5, 155, 97),
('2023-01-04', 'Instructor was very engaging.', 4, 79, 33),
('2023-02-17', 'The course content was too basic.', 3, 28, 76),
('2023-03-24', 'Could have provided more practical exercises.', 4, 137, 14),
('2023-04-28', 'The course material was outdated.', 2, 92, 56),
('2023-05-02', 'Excellent course overall.', 5, 21, 95),
('2023-06-16', 'The course was well-organized.', 4, 149, 85),
('2023-07-23', 'The instructor was very knowledgeable.', 5, 4, 31),
('2023-08-28', 'Helped me land a new job.', 5, 165, 74),
('2023-09-05', 'Would have liked more hands-on activities.', 4, 87, 9),
('2023-10-19', 'Improved my critical thinking skills.', 5, 32, 48),
('2023-11-26', 'Great support from the course instructors.', 4, 187, 82),
('2023-12-31', 'Could have had more assignments.', 3, 67, 18),
('2024-02-04', 'Enjoyed the networking opportunities.', 5, 22, 99),
('2024-03-11', 'Could have been more challenging.', 3, 139, 36),
('2024-04-25', 'The instructor was very responsive.', 4, 101, 77),
('2024-05-30', 'Great course for beginners.', 5, 48, 29),
('2024-06-03', 'Could have provided more practical examples.', 4, 169, 69),
('2024-07-17', 'Improved my understanding of the topic.', 5, 81, 4),
('2024-08-25', 'The course was too short.', 3, 34, 43),
('2024-09-29', 'The instructor was very supportive.', 4, 153, 88),
('2024-10-07', 'Would have liked more interactive sessions.', 5, 77, 16),
('2024-11-20', 'Highly recommend this course to others.', 5, 16, 60),
('2024-12-28', 'Improved my problem-solving abilities.', 4, 193, 32),
('2020-01-15', 'Great course, learned a lot.', 5, 23, 45),
('2020-02-25', 'The material was too easy for me.', 3, 76, 12),
('2020-03-10', 'Really enjoyed the practical exercises.', 4, 102, 78),
('2020-04-03', 'Could use more challenging assignments.', 4, 55, 30),
('2020-05-12', 'Instructor was very knowledgeable.', 5, 167, 94),
('2020-06-08', 'Good course overall.', 4, 88, 20),
('2020-07-21', 'The pace of the course was too fast.', 3, 112, 55),
('2020-08-05', 'Enjoyed the group discussions.', 4, 19, 67),
('2020-09-17', 'The content was outdated.', 2, 125, 89),
('2020-10-02', 'Would like more real-world examples.', 4, 72, 15),
('2020-11-09', 'The instructor was hard to understand at times.', 3, 33, 73),
('2020-12-14', 'Loved the guest lectures.', 5, 198, 100),
('2021-01-20', 'The course materials were not well-organized.', 2, 47, 42),
('2021-02-08', 'Too much theory, not enough practical applications.', 3, 150, 3),
('2021-03-11', 'The course covered exactly what I needed.', 5, 91, 86),
('2021-04-26', 'Would recommend this course to others.', 5, 14, 28),
('2021-05-30', 'The course duration was too short.', 3, 176, 64),
('2021-06-04', 'The course exceeded my expectations.', 5, 61, 39),
('2021-07-18', 'Could use more interactive quizzes.', 4, 105, 90),
('2021-08-26', 'The instructor was not responsive to questions.', 2, 27, 21),
('2021-09-02', 'Enjoyed the hands-on labs.', 4, 133, 50),
('2021-10-16', 'Difficult to follow along with the lectures.', 3, 68, 1),
('2021-11-19', 'Would have liked more detailed explanations.', 4, 172, 81),
('2021-12-25', 'The course was a bit too basic for my level.', 3, 83, 17),
('2022-01-30', 'The course website was user-friendly.', 5, 38, 59),
('2022-02-05', 'Great instructor, very engaging.', 5, 199, 98),
('2022-03-19', 'Didn\'t cover all the topics listed in the syllabus.', 3, 57, 35),
('2022-04-23', 'The course content was up-to-date.', 5, 122, 75),
('2022-05-27', 'Would have liked more group projects.', 4, 75, 8),
('2022-06-02', 'The course materials were easy to understand.', 5, 10, 47),
('2022-07-16', 'Challenging but rewarding course.', 4, 185, 83),
('2022-08-24', 'Would have preferred more video lectures.', 3, 43, 27),
('2022-09-30', 'The instructor provided excellent support.', 5, 143, 68),
('2022-10-07', 'The course helped me advance my career.', 5, 66, 10),
('2022-11-21', 'Great community atmosphere.', 4, 7, 54),
('2022-12-27', 'The course assignments were too difficult.', 2, 155, 97),
('2023-01-04', 'Instructor was not knowledgeable about the subject.', 2, 79, 33),
('2023-02-17', 'Course was well-structured.', 5, 28, 76),
('2023-03-24', 'The course was too expensive for the content.', 2, 137, 14),
('2023-04-28', 'I would take another course from this instructor.', 5, 92, 56),
('2023-05-02', 'Excellent course, highly recommend.', 5, 21, 95),
('2023-06-16', 'The course website was difficult to navigate.', 3, 149, 85),
('2023-07-23', 'Didn\'t receive enough feedback on assignments.', 3, 4, 31),
('2023-08-28', 'The instructor was engaging and enthusiastic.', 5, 165, 74),
('2023-09-05', 'The course was too theoretical.', 2, 87, 9),
('2023-10-19', 'Overall, a disappointing experience.', 2, 32, 48),
('2023-11-26', 'The course was exactly what I needed.', 5, 187, 82),
('2023-12-31', 'The course was too fast-paced.', 3, 67, 18),
('2024-02-04', 'The instructor was very responsive to questions.', 5, 22, 99),
('2024-03-11', 'Course was poorly organized.', 2, 139, 36),
('2024-04-25', 'The course content was too broad.', 4, 101, 77),
('2024-05-30', 'I learned a lot in this course.', 5, 48, 29),
('2024-06-03', 'The course was a good value for the price.', 4, 169, 69),
('2024-07-17', 'The instructor was knowledgeable and approachable.', 5, 81, 4);

SELECT * from courses where course_room = 'Online';

SELECT c.course_name AS Module,
c.course_id AS id,
AVG(g.grade) AS Grade
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
RIGHT JOIN grades g ON e.enrollment_id = g.enrollment_id
GROUP BY c.course_name, c.course_id
ORDER BY c.course_name;

SELECT c.course_name AS Module,
c.course_program AS Program,
COUNT(e.student_id) AS Students,
CONCAT(l.lecturer_name, ' ', l.lecturer_surname) AS Lecturer, 
c.course_room AS Room 
FROM courses c 
INNER JOIN enrollments e ON c.course_id = e.course_id 
INNER JOIN lecturers l ON c.lecturer_id = l.lecturer_id 
GROUP BY c.course_name, c.course_program, l.lecturer_name, l.lecturer_surname, c.course_room;

SELECT CONCAT(s.student_name, ' ', s.student_surname) AS Student,
s.student_id AS StudentNumber,c.course_program AS Program,
GROUP_CONCAT(DISTINCT c.course_name) AS CurrentModule,
GROUP_CONCAT(DISTINCT CONCAT(c.course_name, ': ', g.grade) ORDER BY c.course_name) AS ModuleCompleted,
GROUP_CONCAT(DISTINCT CASE WHEN g.grade < 40 THEN c.course_name END) AS ModuleToRepeat 
FROM students s LEFT JOIN enrollments e ON s.student_id = e.student_id 
LEFT JOIN courses c ON e.course_id = c.course_id 
LEFT JOIN grades g ON e.enrollment_id = g.enrollment_id 
GROUP BY s.student_id, s.student_name, s.student_surname, c.course_program;

SELECT CONCAT(l.lecturer_name, ' ', l.lecturer_surname) AS Lecturer,
l.lecturer_role AS LecturerRole,
GROUP_CONCAT(DISTINCT c.course_name) AS Modules,
COUNT(DISTINCT e.student_id) AS StudentsQuantity,
l.lecture_typeOfClasses AS TypeOfClasses 
FROM lecturers l 
INNER JOIN courses co ON l.lecturer_id = co.lecturer_id 
INNER JOIN enrollments e ON co.course_id = e.course_id 
LEFT JOIN students s ON e.student_id = s.student_id 
LEFT JOIN grades g ON e.enrollment_id = g.enrollment_id 
LEFT JOIN courses c ON e.course_id = c.course_id 
GROUP BY l.lecturer_id, l.lecturer_name, l.lecturer_surname, l.lecturer_role, l.lecture_typeOfClasses;

START TRANSACTION;
LOCK TABLES grades WRITE;
UPDATE grades SET grade = 80 where grades_id = 2;
UNLOCK TABLES;
COMMIT;
