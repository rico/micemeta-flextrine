INSERT INTO `garden` (`id`,`name`) VALUES 
 (1,'Garden 0'),
 (2,'Garden 1'),
 (3,'Garden 2');

INSERT INTO `flower` (`id`,`garden_id`) VALUES 
 (1,1),
 (2,1),
 (3,1),
 (4,1),
 (5,1);

INSERT INTO `tree` (`id`,`garden_id`,`type`) VALUES 
 (1,1,'Tree 0 in garden 0'),
 (2,1,'Tree 1 in garden 0'),
 (3,1,'Tree 2 in garden 0'),
 (4,1,'Tree 3 in garden 0'),
 (5,1,'Tree 4 in garden 0'),
 (6,2,'Tree 0 in garden 1'),
 (7,2,'Tree 1 in garden 1'),
 (8,2,'Tree 2 in garden 1'),
 (9,2,'Tree 3 in garden 1'),
 (10,2,'Tree 4 in garden 1'),
 (11,3,'Tree 0 in garden 2'),
 (12,3,'Tree 1 in garden 2'),
 (13,3,'Tree 2 in garden 2'),
 (14,3,'Tree 3 in garden 2'),
 (15,3,'Tree 4 in garden 2');

INSERT INTO `branch` (`id`,`tree_id`,`length`) VALUES 
 (1,1,5000),
 (2,1,6000),
 (3,1,7000),
 (4,1,8000),
 (5,1,9000),
 (6,2,5000),
 (7,2,6000),
 (8,2,7000),
 (9,2,8000),
 (10,2,9000),
 (11,3,5000),
 (12,3,6000),
 (13,3,7000),
 (14,3,8000),
 (15,3,9000),
 (16,4,5000),
 (17,4,6000),
 (18,4,7000),
 (19,4,8000),
 (20,4,9000),
 (21,5,5000),
 (22,5,6000),
 (23,5,7000),
 (24,5,8000),
 (25,5,9000),
 (26,6,5000),
 (27,6,6000),
 (28,6,7000),
 (29,6,8000),
 (30,6,9000),
 (31,7,5000),
 (32,7,6000),
 (33,7,7000),
 (34,7,8000),
 (35,7,9000),
 (36,8,5000),
 (37,8,6000),
 (38,8,7000),
 (39,8,8000),
 (40,8,9000),
 (41,9,5000),
 (42,9,6000),
 (43,9,7000),
 (44,9,8000),
 (45,9,9000),
 (46,10,5000),
 (47,10,6000),
 (48,10,7000),
 (49,10,8000),
 (50,10,9000),
 (51,11,5000),
 (52,11,6000),
 (53,11,7000),
 (54,11,8000),
 (55,11,9000),
 (56,12,5000),
 (57,12,6000),
 (58,12,7000),
 (59,12,8000),
 (60,12,9000),
 (61,13,5000),
 (62,13,6000),
 (63,13,7000),
 (64,13,8000),
 (65,13,9000),
 (66,14,5000),
 (67,14,6000),
 (68,14,7000),
 (69,14,8000),
 (70,14,9000),
 (71,15,5000),
 (72,15,6000),
 (73,15,7000),
 (74,15,8000),
 (75,15,9000);

INSERT INTO `leaf` (`id`,`branch_id`) VALUES 
 (1,1),
 (2,1),
 (3,1),
 (4,1),
 (5,1),
 (6,2),
 (7,2),
 (8,2),
 (9,2),
 (10,2),
 (11,3),
 (12,3),
 (13,3),
 (14,3),
 (15,3),
 (16,4),
 (17,4),
 (18,4),
 (19,4),
 (20,4),
 (21,5),
 (22,5),
 (23,5),
 (24,5),
 (25,5),
 (26,6),
 (27,6),
 (28,6),
 (29,6),
 (30,6),
 (31,7),
 (32,7),
 (33,7),
 (34,7),
 (35,7),
 (36,8),
 (37,8),
 (38,8),
 (39,8),
 (40,8),
 (41,9),
 (42,9),
 (43,9),
 (44,9),
 (45,9),
 (46,10),
 (47,10),
 (48,10),
 (49,10),
 (50,10),
 (51,11),
 (52,11),
 (53,11),
 (54,11),
 (55,11),
 (56,12),
 (57,12),
 (58,12),
 (59,12),
 (60,12),
 (61,13),
 (62,13),
 (63,13),
 (64,13),
 (65,13),
 (66,14),
 (67,14),
 (68,14),
 (69,14),
 (70,14),
 (71,15),
 (72,15),
 (73,15),
 (74,15),
 (75,15),
 (76,16),
 (77,16),
 (78,16),
 (79,16),
 (80,16),
 (81,17),
 (82,17),
 (83,17),
 (84,17),
 (85,17),
 (86,18),
 (87,18),
 (88,18),
 (89,18),
 (90,18),
 (91,19),
 (92,19),
 (93,19),
 (94,19),
 (95,19),
 (96,20),
 (97,20),
 (98,20),
 (99,20),
 (100,20),
 (101,21),
 (102,21),
 (103,21),
 (104,21),
 (105,21),
 (106,22),
 (107,22),
 (108,22),
 (109,22),
 (110,22),
 (111,23),
 (112,23),
 (113,23),
 (114,23),
 (115,23),
 (116,24),
 (117,24),
 (118,24),
 (119,24),
 (120,24),
 (121,25),
 (122,25),
 (123,25),
 (124,25),
 (125,25),
 (126,26),
 (127,26),
 (128,26),
 (129,26),
 (130,26),
 (131,27),
 (132,27),
 (133,27),
 (134,27),
 (135,27),
 (136,28),
 (137,28),
 (138,28),
 (139,28),
 (140,28),
 (141,29),
 (142,29),
 (143,29),
 (144,29),
 (145,29),
 (146,30),
 (147,30),
 (148,30),
 (149,30),
 (150,30),
 (151,31),
 (152,31),
 (153,31),
 (154,31),
 (155,31),
 (156,32),
 (157,32),
 (158,32),
 (159,32),
 (160,32),
 (161,33),
 (162,33),
 (163,33),
 (164,33),
 (165,33),
 (166,34),
 (167,34),
 (168,34),
 (169,34),
 (170,34),
 (171,35),
 (172,35),
 (173,35),
 (174,35),
 (175,35),
 (176,36),
 (177,36),
 (178,36),
 (179,36),
 (180,36),
 (181,37),
 (182,37),
 (183,37),
 (184,37),
 (185,37),
 (186,38),
 (187,38),
 (188,38),
 (189,38),
 (190,38),
 (191,39),
 (192,39),
 (193,39),
 (194,39),
 (195,39),
 (196,40),
 (197,40),
 (198,40),
 (199,40),
 (200,40),
 (201,41),
 (202,41),
 (203,41),
 (204,41),
 (205,41),
 (206,42),
 (207,42),
 (208,42),
 (209,42),
 (210,42),
 (211,43),
 (212,43),
 (213,43),
 (214,43),
 (215,43),
 (216,44),
 (217,44),
 (218,44),
 (219,44),
 (220,44),
 (221,45),
 (222,45),
 (223,45),
 (224,45),
 (225,45),
 (226,46),
 (227,46),
 (228,46),
 (229,46),
 (230,46),
 (231,47),
 (232,47),
 (233,47),
 (234,47),
 (235,47),
 (236,48),
 (237,48),
 (238,48),
 (239,48),
 (240,48),
 (241,49),
 (242,49),
 (243,49),
 (244,49),
 (245,49),
 (246,50),
 (247,50),
 (248,50),
 (249,50),
 (250,50),
 (251,51),
 (252,51),
 (253,51),
 (254,51),
 (255,51),
 (256,52),
 (257,52),
 (258,52),
 (259,52),
 (260,52),
 (261,53),
 (262,53),
 (263,53),
 (264,53),
 (265,53),
 (266,54),
 (267,54),
 (268,54),
 (269,54),
 (270,54),
 (271,55),
 (272,55),
 (273,55),
 (274,55),
 (275,55),
 (276,56),
 (277,56),
 (278,56),
 (279,56),
 (280,56),
 (281,57),
 (282,57),
 (283,57),
 (284,57),
 (285,57),
 (286,58),
 (287,58),
 (288,58),
 (289,58),
 (290,58),
 (291,59),
 (292,59),
 (293,59),
 (294,59),
 (295,59),
 (296,60),
 (297,60),
 (298,60),
 (299,60),
 (300,60),
 (301,61),
 (302,61),
 (303,61),
 (304,61),
 (305,61),
 (306,62),
 (307,62),
 (308,62),
 (309,62),
 (310,62),
 (311,63),
 (312,63),
 (313,63),
 (314,63),
 (315,63),
 (316,64),
 (317,64),
 (318,64),
 (319,64),
 (320,64),
 (321,65),
 (322,65),
 (323,65),
 (324,65),
 (325,65),
 (326,66),
 (327,66),
 (328,66),
 (329,66),
 (330,66),
 (331,67),
 (332,67),
 (333,67),
 (334,67),
 (335,67),
 (336,68),
 (337,68),
 (338,68),
 (339,68),
 (340,68),
 (341,69),
 (342,69),
 (343,69),
 (344,69),
 (345,69),
 (346,70),
 (347,70),
 (348,70),
 (349,70),
 (350,70),
 (351,71),
 (352,71),
 (353,71),
 (354,71),
 (355,71),
 (356,72),
 (357,72),
 (358,72),
 (359,72),
 (360,72),
 (361,73),
 (362,73),
 (363,73),
 (364,73),
 (365,73),
 (366,74),
 (367,74),
 (368,74),
 (369,74),
 (370,74),
 (371,75),
 (372,75),
 (373,75),
 (374,75),
 (375,75);