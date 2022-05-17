CREATE TABLE players (
    player_id NUMBER(5),
    player_fname VARCHAR2(15),
    player_lname VARCHAR2(15),
    contact_email VARCHAR2(25),
    contact_number CHAR(13)
);

CREATE SEQUENCE seq_players
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999
NOCYCLE;

CREATE TABLE teams (
    team_id NUMBER(5),
    team_name VARCHAR2(15),
    date_created DATE DEFAULT SYSDATE
);

CREATE SEQUENCE seq_teams
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999
NOCYCLE;

CREATE TABLE team_players (
    team_player_id NUMBER(10),
    player_id NUMBER(5),
    team_id NUMBER(5),
    date_joined DATE DEFAULT SYSDATE
);

CREATE SEQUENCE seq_team_players
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999999999
NOCYCLE;

CREATE TABLE categories (
    genre_id NUMBER(5),
    genre_name VARCHAR2(15) DEFAULT SYSDATE,
    genre_description VARCHAR2(150)
    
);

CREATE SEQUENCE seq_categories
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999
NOCYCLE;

CREATE TABLE tournaments (
    tournament_id NUMBER(5),
    tournament_title VARCHAR2(15),
    tournament_start_date DATE DEFAULT SYSDATE,
    tournament_end_date DATE,
    tournament_region VARCHAR2(15),
    tournament_arena VARCHAR2(15),
    genre_id NUMBER(5)
);

CREATE SEQUENCE seq_tournaments
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999
NOCYCLE;

CREATE TABLE tournament_participants (
    tournament_participant_id NUMBER(10),
    tournament_id NUMBER(10),
    player_id NUMBER(5),
    team_id NUMBER(5)
);

CREATE SEQUENCE seq_tournament_participants
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999999999
NOCYCLE;

CREATE TABLE sponsors ( 
    sponsor_id NUMBER(5), 
    sponsor_name VARCHAR2(15), 
    sponsor_start_date DATE DEFAULT SYSDATE, 
    sponsor_end_date DATE,
    sponsor_amount NUMBER(5)
);

CREATE SEQUENCE seq_sponsors
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999
NOCYCLE;

CREATE TABLE prizes (
    prize_id NUMBER(10),
    sponsor_id NUMBER(5),
    tournament_id NUMBER(5),
    prize_money NUMBER(10),
    prize_name VARCHAR2(0),
    prize_description VARCHAR2(150) 
);

CREATE SEQUENCE seq_prizes
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999999999
NOCYCLE;

CREATE TABLE rounds (
    round_id NUMBER(10),
    round_name VARCHAR2(25),
    round_level VARCHAR2(25),
    round_description VARCHAR2(150)
);

CREATE SEQUENCE seq_rounds
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999999999
NOCYCLE;

CREATE TABLE games (
    game_id NUMBER(10),
    game_name VARCHAR2(15),
    round_id NUMBER(10)
);

CREATE SEQUENCE seq_games
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999999999
NOCYCLE;

CREATE TABLE statistics (
    game_result_id NUMBER(10),
    game_id NUMBER(5),
    game_duration NUMBER(10),
    game_coin NUMBER(5),
    game_distance NUMBER(5),
    game_kill NUMBER(5)
    
);

CREATE SEQUENCE seq_statistics
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999999999
NOCYCLE;

CREATE TABLE game_participants (
    game_participant_id NUMBER(20),
    game_id NUMBER(10),
    tournament_participant_id NUMBER(10)
);

CREATE SEQUENCE seq_game_participants
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 99999999999999999999
NOCYCLE;