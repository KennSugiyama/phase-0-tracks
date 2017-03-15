# Goal 1: Track students and their teams

require 'sqlite3'
require 'faker'

#SETUP DATABASE
db = SQLite3::Database.new("student_projects.db")
db.results_as_hash = true


#Create team/project Table
create_team_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS teams(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    project_name VARCHAR(255)
  )
SQL


create_student_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    student_points INT,
    team_ID INT,
    FOREIGN KEY (team_ID) REFERENCES teams(id)
  )
SQL


db.execute(create_team_table_cmd)
#test: add team.
# db.execute("INSERT INTO teams (name, project_name) VALUES ('Innova', 'Cafe Park')")


db.execute(create_student_table_cmd)
#test: add student.
# db.execute("INSERT INTO students (name) VALUES ('Bob')")






# # Populate teams table with current teams
current_teams = [
	{name: "Innova",
	project: "Cafe Project: Busy Student"},
	{name: "The Jasons",
	project: "Cafe Project: New Student"},
	{name: "Team Red",
	project: "Cafe Project: Super Senior"},
	{name: "TBDz",
	project: "Cafe Project: Music Lover"},
	{name: "Profiteers",
	project: "Cafe Project: Hipster"},
	{name: "The Greens",
	project: "Cafe Project: The Athlete"},
	{name: "Gators",
	project: "Cafe Project: The Health Nut"},
	{name: "JAKAL",
	project: "Cafe Project: The Party Girl"},
	{name: "Spark",
	project: "Cafe Project: The Busy Body"}]

def populate_teams_table(current_teams,db)
	current_teams.each do |team|
			db.execute("INSERT INTO teams (name, project_name) VALUES (?, ?)",[team[:name], team[:project]])
	end
end

populate_teams_table(current_teams,db)


#Populate students table with random name and points
def create_students(db, name, points)
  db.execute("INSERT INTO students (name,student_points) VALUES (?,?)", [name,points])
end

47.times do
	points = (70+rand(20)).floor
  create_students(db, Faker::Name.name,points)
end




# current_teams.each do |index|
	# 	index.each do |team|
	# 		team_name = team['name']
	# 		project_title = team['project']
	# 		db.execute("INSERT INTO teams (name, project_name) VALUES (?, ?)",[team_name, project_title])
# populate_teams_table(current_teams,db)




#Create Milestone 1 Rubric Table

#Create Evaluator Table
