


--display all data and colume from single table
SELECT* FROM teams;

SELECT* FROM team_players;


--projection of data in reverse alphabetical order

SELECT player_fname, player_lname, player_id
FROM players  
ORDER BY player_fname DESC;

--predictate - from sponsor table with sponsor amount less than 400 

SELECT sponsor_id, sponsor_advert, sponsor_amount
FROM sponsors  
WHERE sponsor_amount > 400
ORDER BY sponsor_amount DESC; 

--predictate with string value

SELECT  tournament_title, tournament_region
FROM tournaments
WHERE tournament_region = 'ASIA'
ORDER BY tournament_title DESC; 

--pattern- from

SELECT tournament_title,genre_type, tournament_start_date, tournament_arena
FROM categories, tournaments
WHERE categories.genre_id =  tournaments.genre_id
AND tournament_region = 'ASIA'
AND genre_type ='TPP'
ORDER BY genre_type DESC ;


--negative predictate

SELECT game_kill ,game_id FROM stats
WHERE game_coin >100
AND game_distance > 200;


--date range condition

SELECT tournament_title,genre_type, tournament_start_date, tournament_arena
FROM categories, tournaments
WHERE categories.genre_id =  tournaments.genre_id
AND tournaments.tournament_start_date BETWEEN 
TO_DATE('2018-JUN-01', 'YYYY-MON-DD') 
AND TO_DATE('2025-JUL-01', 'YYYY-MON-DD');


--three table join query

SELECT tournament_title,prize_name, sponsor_amount
FROM tournaments,prizes,sponsors
WHERE tournaments.tournament_id =  prizes.tournament_id
AND sponsors.sponsor_id = prizes.sponsor_id;

--two table join query

SELECT player_fname, team_id
FROM players, team_players
WHERE players.player_id = team_players.player_id;


--additional queries

SELECT  tournament_title, tournament_region, player_id, team_id, game_id
FROM tournaments, tournament_participants, game_participants
WHERE tournaments.tournament_id = tournament_participants.tournament_id
AND tournament_participants.tournament_participant_id = game_participants.tournament_participant_id
ORDER BY player_id DESC;



SELECT  player_fname, team_id, game_id
FROM players,tournament_participants,game_participants
WHERE players.player_id = tournament_participants.player_id
AND tournament_participants.tournament_participant_id = game_participants.tournament_participant_id
ORDER BY player_fname ASC;


--inner joint-joints and operations
--joining two different tables

SELECT players.player_id, players.player_fname, team_players.team_id
FROM players  
FULL OUTER JOIN team_players  
ON players.player_id = team_players.player_id;  


SELECT games.game_id, games.round_id, games.game_start_time,game_participants.tournament_participant_id
FROM games  
FULL OUTER JOIN game_participants  
ON games.game_id = game_participants.game_id;  

--delete data query
delete from prizes where prize_money<9988999;

