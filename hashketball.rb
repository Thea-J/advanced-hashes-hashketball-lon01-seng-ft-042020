# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

#Return an array of the team names
def team_names
  game_hash.map do |home_away, team_attribute|
    team_attribute[:team_name]
  end
end

#Take the team_name & Return an array of the team_colors
#Find a way to make this dynamic??
def team_colors(team_name)
 if team_name == team_names[0]  #"Brooklyn Nets"
  return game_hash[game_hash.keys[0]][:colors]
  end
  game_hash[game_hash.keys[1]][:colors]
end

#Takes a players' name & returns the number of points they scored
#|player| is a hash of each member of arrays players
def num_points_scored(athlete)
  game_hash.each do |home_away, team_attribute|
    team_attribute[:players].each do |player|
      if player[:player_name] == athlete
        return player[:points]
      end
    end
  end
end

#Takes a players' name & returns their shoe-size
def shoe_size(athlete)
  game_hash.each do |home_away, team_attribute|
    team_attribute[:players].each do |player|
      if player[:player_name] == athlete
        return player[:shoe]
      end
    end
  end
end

#Takes a players' name & returns their status
def player_stats(athlete)
  game_hash.each do |home_away, team_attribute|
    team_attribute[:players].each do |player|
      if player[:player_name] == athlete
        return player
      end
    end
  end
end

#Takes a team name & returns their jersey numbers
#Can you avoid a nested array being returned??
def player_numbers(team_name)
  numbers = game_hash.map do |home_away, team_attribute|
    if team_attribute[:team_name] == team_name 
    team_attribute[:players].map do |numb|
    numb[:number]
    end
   end
 end
 numbers.compact[0]
end


#Return the number of rebounds of the player that has the largest shoe size
def big_shoe_rebounds
  big_shoe = -1
  rebounds = -1
  game_hash.each do |home_away, teams_attriutes|
    teams_attriutes[:players].each do |player|
      if player[:shoe] > big_shoe
        big_shoe = player[:shoe]
        rebounds = player[:rebounds]
      end
  end
end
  return rebounds
end 








