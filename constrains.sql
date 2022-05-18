
ALTER TABLE players
MODIFY (player_fname NOT NULL)
MODIFY (player_lname NOT NULL)
MODIFY (contact_email NOT NULL)
MODIFY (contact_number NOT NULL);

ALTER TABLE team_players
MODIFY (date_joined NOT NULL);

ALTER TABLE teams
MODIFY (team_name NOT NULL)
MODIFY (date_created NOT NULL);

ALTER TABLE categories
MODIFY (genre_type NOT NULL)
MODIFY (genre_description NOT NULL);

ALTER TABLE tournaments
MODIFY (tournament_title NOT NULL)
MODIFY (tournament_start_date NOT NULL)
MODIFY (tournament_end_date NOT NULL)
MODIFY (tournament_region NOT NULL)
MODIFY (tournament_arena NOT NULL);

ALTER TABLE sponsors
MODIFY (sponsor_name NOT NULL)
MODIFY (sponsor_start_date NOT NULL)
MODIFY (sponsor_amount NOT NULL);

ALTER TABLE prizes
MODIFY (prize_money NOT NULL)
MODIFY (prize_name NOT NULL)
MODIFY (prize_description NOT NULL);

ALTER TABLE games
MODIFY (game_start_time NOT NULL);

ALTER TABLE statistics
MODIFY (game_duration NOT NULL)
MODIFY (game_coin NOT NULL)
MODIFY (game_distance NOT NULL)
MODIFY (game_kill NOT NULL);

ALTER TABLE rounds
MODIFY (round_name NOT NULL)
MODIFY (round_level NOT NULL)
MODIFY (round_description NOT NULL);

-- alter primary keys

ALTER TABLE players
ADD CONSTRAINT pk_players
PRIMARY KEY (player_id);

ALTER TABLE team_players
ADD CONSTRAINT pk_team_players
PRIMARY KEY (team_player_id);

ALTER TABLE teams
ADD CONSTRAINT pk_teams
PRIMARY KEY (team_id);

ALTER TABLE categories
ADD CONSTRAINT pk_categories
PRIMARY KEY (genre_id);

ALTER TABLE tournaments
ADD CONSTRAINT pk_tournaments
PRIMARY KEY (tournament_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT pk_tournament_participants
PRIMARY KEY (tournament_participant_id);

ALTER TABLE sponsors
ADD CONSTRAINT pk_sponsors
PRIMARY KEY (sponsor_id);

ALTER TABLE prizes
ADD CONSTRAINT pk_prizes
PRIMARY KEY (prize_id);

ALTER TABLE rounds
ADD CONSTRAINT pk_rounds
PRIMARY KEY (round_id);

ALTER TABLE games
ADD CONSTRAINT pk_games
PRIMARY KEY (game_id);

ALTER TABLE statistics
ADD CONSTRAINT pk_statistics
PRIMARY KEY (game_result_id);

ALTER TABLE game_participants
ADD CONSTRAINT pk_game_participants
PRIMARY KEY (game_participant_id);

-- alter unique

ALTER TABLE players
ADD CONSTRAINT uc_contact_email
UNIQUE (contact_email);

ALTER TABLE players
ADD CONSTRAINT uc_contact_number
UNIQUE (contact_number);

ALTER TABLE prizes
ADD CONSTRAINT uc_prize_name
UNIQUE (prize_name);

ALTER TABLE tournaments
ADD CONSTRAINT uc_tournament_title
UNIQUE (tournament_title);

-- alter foreign keys

ALTER TABLE team_players
ADD CONSTRAINT fk_team_players_player_id
FOREIGN KEY (player_id)
REFERENCES players(player_id);

ALTER TABLE team_players
ADD CONSTRAINT fk_team_players_team_id
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

ALTER TABLE tournaments
ADD CONSTRAINT fk_tournaments_genre_id
FOREIGN KEY (genre_id)
REFERENCES categories(genre_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT fk_tournament_participants_tournament_id
FOREIGN KEY (tournament_id)
REFERENCES tournaments(tournament_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT fk_tournament_participants_player_id
FOREIGN KEY (player_id)
REFERENCES players(player_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT fk_tournament_participants_team_id
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_prizes_sponsor_id
FOREIGN KEY (sponsor_id)
REFERENCES sponsors(sponsor_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_prizes_tournament_id
FOREIGN KEY (tournament_id)
REFERENCES tournaments(tournament_id);

ALTER TABLE games
ADD CONSTRAINT fk_games_round_id
FOREIGN KEY (round_id)
REFERENCES rounds(round_id);

ALTER TABLE statistics
ADD CONSTRAINT fk_statistics_game_id
FOREIGN KEY (game_id)
REFERENCES games(game_id);

ALTER TABLE game_participants
ADD CONSTRAINT fk_game_participants_game_id
FOREIGN KEY (game_id)
REFERENCES games(game_id);

ALTER TABLE game_participants
ADD CONSTRAINT fk_game_participants_tournament_participant_id
FOREIGN KEY (tournament_participant_id)
REFERENCES tournament_participants(tournament_participant_id);

-- CHECK

ALTER TABLE players
ADD CONSTRAINT ck_player_fname
CHECK (player_fname = UPPER(player_fname));

ALTER TABLE players
ADD CONSTRAINT ck_player_lname
CHECK (player_lname = UPPER(player_lname));

ALTER TABLE players
ADD CONSTRAINT ck_contact_email
CHECK (contact_email = UPPER(contact_email));

ALTER TABLE teams
ADD CONSTRAINT ck_team_name
CHECK (team_name = UPPER(team_name));

ALTER TABLE categories
ADD CONSTRAINT ck_genre_type
CHECK (genre_type = UPPER(genre_type));

ALTER TABLE categories
ADD CONSTRAINT ck_genre_description
CHECK (genre_description = UPPER(genre_description));

ALTER TABLE tournaments
ADD CONSTRAINT ck_tournament_title
CHECK (tournament_title = UPPER(tournament_title));

ALTER TABLE tournaments
ADD CONSTRAINT ck_tournament_region
CHECK (tournament_region = UPPER(tournament_region));

ALTER TABLE tournaments
ADD CONSTRAINT ck_tournament_arena
CHECK (tournament_arena = UPPER(tournament_arena));

ALTER TABLE prizes
ADD CONSTRAINT ck_prize_name
CHECK (prize_name = UPPER(prize_name));

ALTER TABLE prizes
ADD CONSTRAINT ck_prize_description
CHECK (prize_description = UPPER(prize_description));

ALTER TABLE sponsors
ADD CONSTRAINT ck_sponsor_name
CHECK (sponsor_name = UPPER(sponsor_name));

ALTER TABLE sponsors
ADD CONSTRAINT ck_sponsor_advert
CHECK (sponsor_advert = UPPER(sponsor_advert));


ALTER TABLE rounds
ADD CONSTRAINT ck_round_name
CHECK (round_name = UPPER(round_name));

ALTER TABLE rounds
ADD CONSTRAINT ck_round_description
CHECK (round_description = UPPER(round_description));

/*default value*/
ALTER TABLE rounds MODIFY(
    round_level VARCHAR2 DEFAULT 'EASY');
