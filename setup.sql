-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION postgres;

COMMENT ON SCHEMA public IS 'standard public schema';

-- Drop table

-- DROP TABLE public.course_name;

CREATE TABLE public.course_name (
	id smallserial NOT NULL,
	"Name" varchar NOT NULL
);


-- Drop table

-- DROP TABLE public.academic_degree;

CREATE TABLE public.academic_degree (
	id smallserial NOT NULL,
	"name" varchar NOT NULL
);


-- Drop table

-- DROP TABLE public.accommodation;

CREATE TABLE public.accommodation (
	id smallserial NOT NULL,
	description varchar NOT NULL
);


-- Drop table

-- DROP TABLE public.household_income;

CREATE TABLE public.household_income (
	id smallserial NOT NULL,
	description varchar NOT NULL
);


-- Inserts

INSERT INTO
	accommodation
VALUES
	(1, 'apartamento alugado com amiga'),
    (2, 'apartamento alugado com amigos.'),
    (3, 'com mãe e filha.'),
    (4, 'com namorado'),
    (5, 'com namorado e amigos'),
    (6, 'com os pais'),
    (7, 'com outros familiares que não os pais'),
    (8, 'com um amigo'),
    (9, 'durante os dias da semana vivo com minha avó e nos finais de semana com os meus pais.'),
    (10, 'moradia estudantil uff niteroí'),
    (11, 'moro com os meus pais no rio e durante a semana de aula com os meus tios em são gonçalo'),
    (12, 'mãe'),
    (13, 'mãe, madrasta e irmã'),
    (14, 'mãe,tia e avó'),
    (15, 'república'),
    (16, 'sozinho'),;

INSERT INTO
	course_name
VALUES
	(1, 'administração pública'),
    (2, 'antropologia'),
    (3, 'arquivologi'),
    (4, 'arquivologia'),
    (5, 'bacharel em sistemas de informação'),
    (6, 'bacharelado em administração pública'),
    (7, 'bacharelado em ciencida da computação'),
    (8, 'biblioteconomia'),
    (9, 'biblioteconomia e documentação'),
    (10, 'biomedicina'),
    (11, 'ciencia da computacao'),
    (12, 'ciencia da computação'),
    (13, 'cinema e audiovisual'),
    (14, 'ciência ambiental'),
    (15, 'ciência da computação'),
    (16, 'ciências biológicas'),
    (17, 'ciências da computação'),
    (18, 'ciências econômicas'),
    (19, 'computação'),
    (20, 'curso superior de tecnologia em hotelaria'),
    (21, 'direito'),
    (22, 'doutorado em ciência da computacao'),
    (23, 'doutorado em computação'),
    (24, 'doutorado em química'),
    (25, 'economia'),
    (26, 'eng de produção'),
    (27, 'engenharia de agronegócios'),
    (28, 'engenharia de biossistemas'),
    (29, 'engenharia de produçao'),
    (30, 'engenharia de produção'),
    (31, 'engenharia de recursos hidricos e do meio ambiente'),
    (32, 'engenharia de telecomunicaçoes'),
    (33, 'engenharia elétrica'),
    (34, 'engenharia mecânica'),
    (35, 'engenharia química'),
    (36, 'faculdade de turismo e hotelaria'),
    (37, 'farmacia'),
    (38, 'farmácia'),
    (39, 'filosofia'),
    (40, 'fonoaudiologia'),
    (41, 'física'),
    (42, 'física bacharel'),
    (43, 'física bacharelado'),
    (44, 'geofisica'),
    (45, 'geofísica'),
    (46, 'geografia'),
    (47, 'história'),
    (48, 'hotelaria'),
    (49, 'letras'),
    (50, 'letras - portuguê/alemão'),
    (51, 'licenciatura em física'),
    (52, 'maconha house'),
    (53, 'matemática licenciatura'),
    (54, 'mestrado em computação'),
    (55, 'mestrado em dinâmica do oceanos e da terra'),
    (56, 'odontologia'),
    (57, 'pedagogia'),
    (58, 'psicologia'),
    (59, 'segurança pública'),
    (60, 'serviço social'),
    (61, 'sistemas de informação'),
    (62, 'sociologia'),
    (63, 'tecnologia em hotelaria'),
    (64, 'tecnologia em sistemas de computação'),
    (65, 'tecnólogo em processos gerenciais'),
    (66, 'turismo');


INSERT INTO
	academic_degree
VALUES
	(1, 'graduação'),
    (2, 'mestrado'),
    (3, 'doutorado');


INSERT INTO
	household_income
VALUES
	(1, 'a'),
    (2, 'b'),
    (3, 'c')
    (4, 'd'),
    (5, 'e'),;
