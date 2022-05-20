
/*drop foregin key constraint*/

ALTER TABLE team_players
DROP CONSTRAINT fk_team_players_player_id;
ALTER TABLE team_players
DROP CONSTRAINT fk_team_players_team_id;


ALTER TABLE tournaments
DROP CONSTRAINT fk_tournaments_genre_id;

ALTER TABLE tournament_participants
DROP CONSTRAINT fk_tp_player_id;
ALTER TABLE tournament_participants
DROP CONSTRAINT fk_tp_team_id;
ALTER TABLE tournament_participants
DROP CONSTRAINT fk_tp_tournament_id;

ALTER TABLE prizes
DROP CONSTRAINT fk_prizes_sponsor_id;
ALTER TABLE prizes
DROP CONSTRAINT fk_prizes_tournament_id;


ALTER TABLE games
DROP CONSTRAINT fk_games_round_id;


ALTER TABLE game_participants
DROP CONSTRAINT fk_gp_game_id;
ALTER TABLE game_participants
DROP CONSTRAINT fk_gp_tp_id;

ALTER TABLE stats
DROP CONSTRAINT fk_stat_game_id;

/*drop primary key constraint*/
ALTER TABLE players
DROP CONSTRAINT pk_players;

ALTER TABLE team_players
DROP CONSTRAINT pk_team_players;

ALTER TABLE teams
DROP CONSTRAINT pk_teams;

ALTER TABLE categories
DROP CONSTRAINT pk_categories;

ALTER TABLE tournaments
DROP CONSTRAINT pk_tournaments;

ALTER TABLE tournament_participants
DROP CONSTRAINT pk_tournament_participants;

ALTER TABLE prizes
DROP CONSTRAINT pk_prizes;

ALTER TABLE sponsors
DROP CONSTRAINT pk_sponsors;

ALTER TABLE games
DROP CONSTRAINT pk_games;

ALTER TABLE game_participants
DROP CONSTRAINT pk_game_participants;

ALTER TABLE stats
DROP CONSTRAINT pk_stats;

ALTER TABLE rounds
DROP CONSTRAINT pk_rounds;


/*drop check constraint*/
ALTER TABLE players
DROP CONSTRAINT ck_player_fname;
ALTER TABLE players
DROP CONSTRAINT ck_player_lname;
ALTER TABLE players
DROP CONSTRAINT ck_contact_email;

ALTER TABLE teams
DROP CONSTRAINT ck_team_name;

ALTER TABLE categories
DROP CONSTRAINT ck_genre_type;
ALTER TABLE categories
DROP CONSTRAINT ck_genre_description;

ALTER TABLE tournaments
DROP CONSTRAINT ck_tournament_title;
ALTER TABLE tournaments
DROP CONSTRAINT ck_tournament_region;
ALTER TABLE tournaments
DROP CONSTRAINT ck_tournament_arena;

ALTER TABLE prizes
DROP CONSTRAINT ck_prize_name;
ALTER TABLE prizes
DROP CONSTRAINT ck_prize_description;

ALTER TABLE sponsors
DROP CONSTRAINT ck_sponsor_name;
ALTER TABLE sponsors
DROP CONSTRAINT ck_sponsor_advert;

ALTER TABLE rounds
DROP CONSTRAINT ck_round_name;
ALTER TABLE rounds
DROP CONSTRAINT ck_round_description;

/*drop unique constrains*/
ALTER TABLE players
DROP CONSTRAINT uc_contact_email;
ALTER TABLE players
DROP CONSTRAINT uc_contact_number;

ALTER TABLE prizes
DROP CONSTRAINT uc_prize_name;

ALTER TABLE tournaments
DROP CONSTRAINT uc_tournament_title;


/*drop sequence*/

DROP SEQUENCE seq_players;
DROP SEQUENCE seq_team_players;
DROP SEQUENCE seq_teams;
DROP SEQUENCE seq_categories;
DROP SEQUENCE seq_tournaments;
DROP SEQUENCE seq_tournament_participants;
DROP SEQUENCE seq_prizes;
DROP SEQUENCE seq_sponsors;
DROP SEQUENCE seq_rounds;
DROP SEQUENCE seq_games;
DROP SEQUENCE seq_game_participants;
DROP SEQUENCE seq_stats;

/*drop table*/

DROP TABLE players;

DROP TABLE team_players;

DROP TABLE teams;

DROP TABLE categories;

DROP TABLE tournaments;

DROP TABLE tournament_participants;

DROP TABLE prizes;

DROP TABLE sponsors;

DROP TABLE game_participants;

DROP TABLE games;

DROP TABLE stats;

DROP TABLE rounds;

PURGE RECYCLEBIN;
