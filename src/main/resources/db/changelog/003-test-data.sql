-- liquibase formatted sql

-- changeset sergeyshapovalov:1
INSERT INTO idrug.users (first_name, last_name, age, sex, email, password)
VALUES
('Jordain', 'Seiffert', 36, 'Женщина', 'jseiffert0@addthis.com', 'Nj6AEzjlSxci'),
('Lark', 'Aldins', 73, 'Мужчина', 'laldins1@gravatar.com', '5eVVSJGs'),
('Rosemary', 'Nolli', 19, 'Женщина', 'rnolli2@163.com', 'WyagFE'),
('Harvey', 'Manuele', 92, 'Мужчина', 'hmanuele4@miibeian.gov.cn', 'ZBYo3d'),
('Holly', 'Crichley', 21, 'Мужчина', 'hcrichley5@prlog.org', 'utzcrI1zNZw8'),
('Tally', 'Grevatt', 32, 'Женщина', 'tgrevatt6@vimeo.com', 'Wy6aQM'),
('Pierrette', 'Duffett', 87, 'Мужчина',	'pduffett7@delicious.com', 'YHQcIaDm'),
('Vina', 'Duckfield', 29, 'Женщина', 'vduckfield8@gizmodo.com', '3UHM6pPWBa'),
('Mimi', 'Doward', 90, 'Женщина', 'mdoward9@unicef.org', 'c0kuxIlrTn'),
('Cristionna', 'Lalonde', 94, 'Мужчина', 'clalondea@meetup.com', 'dgC703tF'),
('Petunia', 'Dudney', 67, 'Мужчина', 'pdudneyb@dagondesign.com', '607EcUtH'),
('Bondy', 'Sunners', 59, 'Мужчина', 'bsunnersc@wordpress.org', 'FiSK5TPJVP'),
('Michaeline', 'Wickwar', 92, 'Женщина', 'mwickward@umich.edu', 'VqszCSJfa4zq'),
('Corette', 'Klesse', 37, 'Мужчина', 'cklessee@usatoday.com', 'cOWFFAT'),
('Isaiah', 'Tootell', 15, 'Мужчина', 'itootell3@de.vu', 'qqqqqqq');

-- changeset sergeyshapovalov:2
INSERT INTO idrug.users_info (description, user_id)
VALUES
('ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 1),
('mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis', 2),
('duis ac nibh fusce lacus purus aliquet at feugiat non', 3),
('eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', 4),
('tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', 5),
('ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est', 6),
('nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros', 7),
('et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis', 8),
('odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', 9),
('posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', 10),
('arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', 11),
('libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', 12),
('turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', 13),
('nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper', 14),
('mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse' ,15);

-- changeset sergeyshapovalov:3
INSERT INTO idrug.sick_leave (description, create_date, disease)
VALUES
('Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', '2022-12-24 00:00:00', 'Otitis'),
('Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '2022-05-19 00:00:00', 'Migraine'),
('Phasellus sit amet erat. Nulla tempus.', '2023-02-16 00:00:00', 'Dandruff'),
('Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022-10-19 00:00:00',	'Laryngitis'),
('Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', '2022-11-11 00:00:00', 'Malaria'),
('Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', '2022-11-02 00:00:00',	'Otosclerosis'),
('Duis consequat dui nec nisi volutpat eleifend.', '2022-05-08 00:00:00',	'Burn'),
('Nulla tellus. In sagittis dui vel nisl.', '2022-12-26 00:00:00', 'Leptospirosis'),
('Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', '2023-01-17 00:00:00', 'Laryngitis'),
('Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', '2022-11-14 00:00:00', 'Neuralgia'),
('Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '2022-12-23 00:00:00',	'Melanoma'),
('Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', '2022-05-15 00:00:00', 'Migraine'),
('Vivamus tortor.', '2022-08-26 00:00:00', 'Paraproctitis'),
('Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', '2022-12-11 00:00:00', 'Laryngitis'),
('Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2022-12-19 00:00:00', 'Neuralgia');

-- changeset sergeyshapovalov:4
INSERT INTO idrug.users_info_sick_leave (sick_leave_id,users_info_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15);

-- changeset sergeyshapovalov:5
INSERT INTO idrug.pharmacies (name, address)
VALUES
('Russian Railways Hospital', 'Russia, Volgograd, Avtotransportnaya St., 75'),
('VICC FMBA on Kim', 'Russia, Volgograd, Ul. Kim st. 24'),
('Regional Cardiology Center', 'Russia, Volgograd,  106 Universitetsky Ave. 106 Universitetsky Pr.'),
('VICC FMBA on Nikitin Ave.', '64 Nikitina St., Volgograd, Russia'),
('Regional Hospital №1 (OKB 1)', '13 Angarskaya St., Volgograd, Russia'),
('Regional Hospital No.3 (OKB 3)', 'Russia, Volgograd, ul. Tsiolkovsky, 1'),
('Hospital № 16', 'Russia, Volgograd, ul. Pyatimorskaya, 7'),
('City Emergency Medical Care Hospital № 25', 'Russia, Volgograd, 74 Zemlyachka St.'),
('Volgograd State Emergency Hospital #7', 'Russia, Volgograd, ul. Kazakhskaya, 1'),
('City Hospital ¹ 1', 'Russia, Volgograd, ul. Kirov, 10.'),
('Hospital № 4', 'Russia, Volgograd, ul. Opolchenskaya, 40'),
('Infectious Disease Hospital No.1', 'Russia, Volgograd, Per. Maple, 1'),
('Hospital № 22', 'Russia, Volgograd, 33A Dotsenko St.'),
('Hospital № 12', 'Russia, Volgograd, ul. Bazhov, 2A'),
('City Hospital ¹ 1 - Ophthalmology on Chekalina', 'Russia, Volgograd, ul. Sasha Chekalina St. 7');

-- changeset sergeyshapovalov:6
INSERT INTO idrug.drugs (name, price, prescription)
VALUES
('Stavudine', '$1,728.10', true),
('Metoprolol Succinate', '$1,230.79', true),
('Flector', '$840.14', false),
('Severe Allergy', '$3,492.08', true),
('Lidocaine Viscous', '$4,916.50', true),
('Renewal Anti-Wrinkle', '$1,757.97', false),
('Acetylcholine Chloride Phenolic', '$2,728.35', true),
('Propinirole hydrochloride', '$2,810.43', true),
('Oxygen Helium Mixture 30/70', '$843.13', false),
('Captopril', '$4,085.44', true),
('Instant Hand Sanitizer', '$2,601.14', false),
('Fenofibrate', '$2,823.77', false),
('Secret Outlast and Olay Smooth', '$437.22', false),
('THERAMAX ALLERGY RELIEF NASAL', '$2,178.58', true),
('Argentum Vesica urinaria 8/5 Special Order', '$2,947.27', false);

-- changeset sergeyshapovalov:7
INSERT INTO idrug.drugs_time (drug_id, "time", sick_leave_id)
VALUES
(7, '15:46:00', 3),
(13, '11:11:00', 11),
(1, '14:15:00', 7),
(15, '13:38:00', 5),
(4, '11:34:00', 14),
(4, '09:08:00', 15),
(6, '02:51:00', 5),
(13, '13:21:00', 15),
(1, '09:32:00', 11),
(8, '10:26:00', 11),
(10, '02:10:00', 15),
(4, '01:12:00', 7),
(4, '15:32:00', 4),
(5, '20:52:00', 4),
(2, '04:14:00', 14);

-- changeset sergeyshapovalov:8
INSERT INTO idrug.drugs_pharmacies (pharmacy_id, drug_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- changeset sergeyshapovalov:9
INSERT INTO idrug.diseases (title, description)
VALUES
('Measles', '“Measles begins acutely, with a rapid rise in temperature of 38-40 degrees and the development of catarrhal symptoms. Photophobia, persistent dry cough, aphonia, intoxication appear. After 3-4 days, small white rashes (Koplik spots) appear on the mucosa of the cheeks. Then the rash appears all over the body by descending type (ears, face, neck, body, extremities). The rash is small at first, then coalesces. After 4-5 years from the beginning of the rash develops back - the rash is darker, hyperpigmented, dries and forms crusts, which gradually disappear. This condition lasts about two weeks.”'),
('Hives', 'The blisters are bright pink in color and vary in shape and size. Local hyperemia may occur at the site of blister formation. Often there is some pallor in the center of the blister.\n\nAcute urticaria begins suddenly - with burning throughout the body, accompanied by intense itching, including on the mucous membranes of the tongue, gums, the inside of the lips. Young children may develop intoxication syndrome with fever and malaise.'),
('Laryngitis', 'The main symptom of laryngitis is a deterioration or disappearance of the voice. The acute form of the disease is often accompanied by a deterioration in the general condition of the patient, sometimes with fever, and the patient experiences pain and discomfort when swallowing. In some cases it may be difficult to breathe.\n\nIf acute laryngitis occurs, the patient feels the throat and nasopharynx with cooing, dryness and other unpleasant sensations, coughing (dry at first, then with sputum) bothers the patient. The voice becomes low and hoarse, and may disappear.'),
('Leucinosis', 'The symptomatology of the disease manifests itself a few days after birth. The baby refuses to be fed and cries monotonously. Attempts to feed the baby result in vomiting or regurgitation.\n\nThe main symptom of leucinosis is a specific smell of urine, which resembles the smell of burnt sugar or maple syrup.'),
('Leptospirosis', 'Leptospirosis is an acute zoonotic naturally occurring infectious disease with kidney and liver damage, nervous system, general intoxication and hemorrhagic syndrome, and jaundice. Synonyms are Vasiliev-Weil disease, infectious jaundice, Japanese fever, canine fever.'),
('Malaria', 'Malaria is an infectious disease caused by the invasion of human red blood cells by a single-celled plasmodium microorganism.'),
('Melanoma', 'Melanoma is a cancerous disease characterized by the development of malignant growths on the skin. Cancerous tumors originate from melanocyte cells, which contain the pigment melanin, responsible for skin coloration. Because of this, as a rule, melanomas are colored an intense brown-black color.  In rare cases, melanomas are nonpigmented, not melanin-related in any way.'),
('Migraine', 'Migraine is an attack of intense pain, most often in one half of the head (hemicrania), accompanied by nausea, sometimes vomiting, light and sound sensitivity. Women in their 20s and 30s are most often affected.'),
('Mycosis', 'Mycoses is the collective name for a variety of diseases caused by parasitic fungi. Mycoses can affect both the skin (dermatomycoses) and internal organs. ICD-10 lists mycoses under B35-B49.'),
('Neuralgia', 'Neuralgia is a shooting, burning pain in the area of innervation of the peripheral nerve, associated with its compression due to inflammatory changes in the adjacent tissues, degenerative diseases of the spine, a volumetric process near the passage of the nerve, as well as due to hypoxia of the nerve pathways.'),
('Burn', 'A burn is a violation of the anatomical integrity of tissues caused by the action of chemical or physical factors.'),
('Otitis', 'Otitis media is an inflammatory disease of the ear.\n\nThe terms otitis media, middle ear otitis, etc. are incorrect, since the word otitis comes from the word ōtos - ear (Greek) and obviously means inflammation of the ear. \n\nAnatomy distinguishes between the outer, middle, and inner ear, and this is the basis for classifying otitis by localization of the inflammatory process: outer, middle, and inner otitis media.'),
('Otosclerosis', 'Otosclerosis is an inner ear disorder characterized by dystrophic and sclerotic changes in a single area. Characteristically, the disease proceeds with a large-scale overgrowth of connective and bone tissue. The pathological process mainly takes place in the bone labyrinth. The disorder is terrible with the development of hearing loss.'),
('Paraproctitis', 'Paraproctitis is a purulent inflammatory lesion affecting the tissues around the rectum. There are two main types of paraproctitis. Acute paraproctitis is a disease that occurs for the first time. Chronic paraproctitis is a complication (consequence) of untreated acute paraproctitis.'),
('Dandruff', 'Dandruff is a condition in which there is a rapid detachment of the horny layer of the scalp. The syndrome lasts a very long time and accompanies the development of seborrhea.');

-- changeset sergeyshapovalov:10
INSERT INTO idrug.drugs_diseases(drug_id, disease_id)
VALUES
(1, 2),
(3, 5),
(5, 2),
(7, 8),
(2, 4),
(5, 1),
(7, 3),
(2, 11),
(6, 6),
(9, 9),
(3, 4),
(6, 14),
(2, 5),
(10, 10),
(12, 5);