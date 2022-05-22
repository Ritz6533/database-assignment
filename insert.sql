/*addding data to the database*/
INSERT INTO players (player_id, player_fname, player_lname, contact_email, contact_number)
VALUES (1, 'AAAAA', 'BBBBB', 'AABB@GMAIL.COM', 12345678923);  

INSERT INTO teams (team_id, team_name, date_created)
VALUES (2, 'GORKHALI', '10-JAN-2020');

INSERT INTO team_players (team_player_id, player_id, team_id, date_joined)
VALUES (5,1, 2, '10-JAN-2020'); 

INSERT INTO categories (genre_id, genre_type, genre_description) 
VALUES (7777, 'FPP', 'FIRST-PERSON PERSPECTIVE');

INSERT INTO rounds (round_id, round_name, round_level, round_description)
VALUES (12893, 'MADMARATHON','HARD','OUTCOME OF THE RACE');

INSERT INTO games (game_id, game_start_time, round_id,round_name)
VALUES (7, 001, 12893,'MADMARATHON');

INSERT INTO sponsors (sponsor_id, sponsor_name, sponsor_start_date, sponsor_end_date, sponsor_amount, sponsor_advert)
VALUES (58, 'GOOGLE', '01-JAN-2020','09-JAN-2020' ,1000,'DIGITAL ADVERT');

INSERT INTO tournaments (tournament_id, tournament_title, tournament_start_date, tournament_end_date, tournament_region, tournament_arena, genre_id)
VALUES (4, 'RUNNER CUP', '20-JAN-2020', '20-FEB-2021', 'EUROPE', 'ERANGLE', 7777);

INSERT INTO prizes ( prize_id,sponsor_id, tournament_id, prize_money, prize_name, prize_description) 
VALUES (556,58, 4, 150000, 'RUNNERSX', 'RUNNERS CHAMPIONS 2021');

INSERT INTO tournament_participants (tournament_participant_id, tournament_id, player_id, team_id) 
VALUES (98, 4, 1, 2);


INSERT INTO game_participants ( game_participant_id, game_id, tournament_participant_id) 
VALUES (599, 7, 98); 


INSERT INTO stats (game_result_id, game_id, game_duration, game_coin, game_distance, game_kill)
VALUES (121456784, 7, 50, 500, 15000, 15);

/**/
INSERT INTO players (player_id, player_fname, player_lname, contact_email, contact_number)
VALUES (2, 'CCCCC', 'DDDDD', 'CCDD@GMAIL.COM', 12345678924);  

INSERT INTO teams (team_id, team_name, date_created)
VALUES (3, 'GORKHALI', '30-JAN-2020');

INSERT INTO team_players (team_player_id, player_id, team_id, date_joined)
VALUES (6,2, 3, '20-JAN-2020'); 

INSERT INTO categories (genre_id, genre_type, genre_description) 
VALUES (55555, 'TPP', 'FIRST-PERSON PERSPECTIVE');

INSERT INTO rounds (round_id, round_name, round_level, round_description)
VALUES (33333, 'TENPIN','HARD','OUTCOME OF THE RACE');

INSERT INTO games (game_id, game_start_time, round_id,round_name)
VALUES (55, 002, 33333,'TENPIN');

INSERT INTO sponsors (sponsor_id, sponsor_name, sponsor_start_date, sponsor_end_date, sponsor_amount, sponsor_advert)
VALUES (8, 'GOOGLE', '02-JAN-2020','04-JAN-2020' ,5000,'DIGIT ADVERT');

INSERT INTO tournaments (tournament_id, tournament_title, tournament_start_date, tournament_end_date, tournament_region, tournament_arena, genre_id)
VALUES (15, 'GUNNERS CUP', '10-FEB-2020', '10-MAY-2021', 'ASIA', 'MIRAMAR', 55555);

INSERT INTO prizes ( prize_id,sponsor_id, tournament_id, prize_money, prize_name, prize_description) 
VALUES (444,8, 15, 150000, 'SECONDX', 'RUNNER-UP CHAMPIONS 2021');

INSERT INTO tournament_participants (tournament_participant_id, tournament_id, player_id, team_id) 
VALUES (45, 15, 2, 3);


INSERT INTO game_participants ( game_participant_id, game_id, tournament_participant_id) 
VALUES (66, 55, 45); 


INSERT INTO stats (game_result_id, game_id, game_duration, game_coin, game_distance, game_kill)
VALUES (89852, 55, 40, 5600, 99550, 10);


 
/*insert data in different way
adding game id data to team player id with condition */
INSERT INTO team_players
(team_player_id)
SELECT  game_id
FROM stats
WHERE game_kill < 50;

