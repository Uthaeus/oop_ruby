# teams = File.read("teams.txt")

# p teams.split(',')

teams_one = File.read("teams.txt")
teams_two = File.read("other_teams.txt")

teams_master = teams_one.split(', ') + teams_two.split(', ')

teams_master.each do |team|
    p team.upcase 
end