# db.execute(create_#{table}_table_cmd)

#LOOK INTO eval
# give method... takes a string.. evaluats string into ruby
# irb(main):001:0> a = 5
# => 5
# irb(main):002:0> eval("puts 5+#{a}")
# 10

# Goal 1: Track students and their teams
#original 
# Goal 2: Track grades for 3 Assignments

#SETUP DATABASE
require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("student_projects.db")
db.results_as_hash = true


#Create tables

create_teams_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS teams(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    project_name VARCHAR(255)
  )
SQL

create_assignments_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS assignments(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255)
  )
SQL

create_assignment_grades_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS assignments_grades(
    id INTEGER PRIMARY KEY,
    points INT,
    assignment_id INT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (assignment_id) REFERENCES assignments(id)
  )
SQL

create_students_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    student_points INT,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES teams(id)
  )
SQL

def clear_tables(db)
  puts "clear tables? (y/n)"
  response = gets.chomp
  if response == "y"
    db.execute("DROP TABLE teams")
    db.execute("DROP TABLE students")
    db.execute("DROP TABLE assignments")
    db.execute("DROP TABLE assignments_grades")
  end
end

clear_tables(db)

db.execute(create_teams_table_cmd)
db.execute(create_students_table_cmd)
db.execute(create_assignments_table_cmd)
db.execute(create_assignment_grades_table_cmd)

 # data for teams table
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


#Populate teams table with data
def populate_teams_table(current_teams,db)
  current_teams.each do |team|
      db.execute("INSERT INTO teams (name, project_name) VALUES (?, ?)",[team[:name], team[:project]])
  end
end

populate_teams_table(current_teams,db)


#Populate students table with random name & random points

def create_students(db, name, points)
  db.execute("INSERT INTO students (name,student_points) VALUES (?,?)", [name,points])
end

10.times do
  points = (70+rand(20)).floor
  create_students(db, Faker::Name.name,points)
end


# Assign students to a team
def assign_students (db)
  team_no = 0
  no_of_teams = db.execute("SELECT * FROM teams").length
  students = db.execute("SELECT * FROM students")
  students.each do |student|
  	if team_no <= no_of_teams - 1
  		team_no += 1
  	else
  		team_no = 1
  	end
  	db.execute("UPDATE students SET team_id = ? WHERE id = ?", [team_no, student["id"]])
  end
 db.execute("SELECT * FROM students")
 end

assign_students (db)

db.execute("SELECT students.name, teams.name, teams.project_name FROM students, teams WHERE students.team_id = teams.id;")


#Populate Assignment Table with 3 assignments
assignment_list = [
  {title: "Assignment 1"},
  {title: "Assignment 2"},
  {title: "Assignment 3"}]


 #Populate Assignment Table with data
def populate_assignment_table(db, assignment_list)
  assignment_list.each do |assignment|
      db.execute("INSERT INTO assignments (title) VALUES (?)",[assignment[:title]])
  end
end

populate_assignment_table(db, assignment_list)


#Populate Assignment Grades Table
def populate_assignment_grades_table(db)
	student_ids = db.execute("SELECT id FROM students")
	assignment_ids = db.execute("SELECT id FROM assignments")
  student_ids.each do |student|
  	puts "student #{student["id"]}"
  	assignment_ids.each do |assignment|
  		random_points = (60+rand(20)).floor
  		p assignment["id"].class
  		db.execute("UPDATE assignments_grades SET points = ? WHERE student_id = ? AND assignment_id = ?", [random_points,student["id"],assignment["id"]])
  		p db.execute("SELECT * FROM assignments_grades")
  	end
  end
end


populate_assignment_grades_table(db)

# ("UPDATE students SET team_id = ? WHERE id = ?", [team_no, student["id"]])
# assignments_grades
#       db.execute("INSERT INTO assignments (title) VALUES (?)",[assignment[:title]])
# populate_assignment_table(db, assignment_list)
