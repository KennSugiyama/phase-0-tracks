# Goal 1: Create students and assign to teams
# Goal 2: Choose a team and display all students who are in that team
# Goal 3: Track grades for 3 Assignments by assigning random student grades for each assinment.
# Goal 4: Display roster



#SETUP DATABASE
require 'sqlite3'
require 'faker'

DB = SQLite3::Database.new("student_projects.db")
DB.results_as_hash = true

TABLES_TITLE = ["teams", "assignments", "assignment_grades", "students"]

#CREATE TABLES
def create_tables
  DB.execute ("DROP TABLE IF EXISTS teams")
  DB.execute ("DROP TABLE IF EXISTS assignments")

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
    CREATE TABLE IF NOT EXISTS assignment_grades(
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

  TABLES_TITLE.each do |table|
    eval("DB.execute(create_#{table}_table_cmd)")
  end
end

def clear_tables
  puts "Clear tables? (y/n)"
  response = gets.chomp
  if response == "y"
    create_tables
    TABLES_TITLE.each do |table|
      cmd = "DROP TABLE #{table}"
      DB.execute(cmd)
    end
  end
end 

def populate_teams_table(current_teams)
  current_teams.each do |team|
      DB.execute("INSERT INTO teams (name, project_name) VALUES (?, ?)",[team[:name], team[:project]])
  end
end

def create_students(num)
  num.times do
    DB.execute("INSERT INTO students (name) VALUES (?)", [Faker::Name.name,])
  end
end

def assign_students_to_teams
  team_no = 0
  no_of_teams = DB.execute("SELECT * FROM teams").length
  students = DB.execute("SELECT * FROM students")
  students.each do |student|
    if team_no <= no_of_teams - 1
      team_no += 1
    else
      team_no = 1
    end
    DB.execute("UPDATE students SET team_id = ? WHERE id = ?", [team_no, student["id"]])
  end
  DB.execute("SELECT * FROM students")
end

def view_students_of_team
  team_data = DB.execute("SELECT name, project_name FROM teams")
  team_list = []
  puts "Which team would you like to view? (enter number)"
  num = 0
  team_data.each do |team|
    puts "#{num}: #{team["name"]}"
    team_list << team["name"]
    num += 1
  end
  p response = team_list[gets.chomp.to_i]
  puts "Students in Team: #{response}:"

  search_cmd = <<-SQL
    SELECT students.name AS student_name, teams.name AS team_name
    FROM students
    LEFT JOIN teams
    on students.team_id = teams.id
    WHERE teams.name = "#{response}";
  SQL
  
  search_result = DB.execute(search_cmd)
  num = 1
  search_result.each do |result|
    puts "#{num}) #{result["student_name"]}"
    num += 1
  end
end

def populate_assignment_table( assignment_list)
  assignment_list
  assignment_list.each do |assignment|
    assignment[:title]
    DB.execute("INSERT INTO assignments (title) VALUES (?)",[assignment[:title]])
  end
end

def populate_assignment_grades_table
student_ids = DB.execute("SELECT id FROM students")
assignment_ids = DB.execute("SELECT id FROM assignments")
  student_ids.each do |student|
    assignment_ids.each do |assignment|
      random_points = (60+rand(20)).floor
      DB.execute("INSERT INTO assignment_grades (points, assignment_id, student_id) VALUES (?, ?, ?)",[random_points,assignment["id"],student["id"]])
    end
  end
end

def generate_roster
  cmd = <<-SQL
    SELECT students.id, students.name AS student_name, teams.name AS team_name
    FROM students
    JOIN teams
    on students.team_id = teams.id
  SQL

  roster = DB.execute(cmd)

  roster.each do |assignment|
    puts "Student: #{assignment['student_name']}"
    puts "Student ID: #{assignment['id']}"
    puts "Team Name: #{assignment['team_name']}\n"
    puts ""
  end
end


def view_grades
  cmd = <<-SQL
    SELECT students.id, students.name, assignments.title, assignment_grades.points FROM assignment_grades 
    JOIN assignments
    ON assignment_grades.assignment_id = assignments.id
    JOIN students
    ON assignment_grades.student_id = students.id
  SQL

  student_assignments = DB.execute(cmd)
  student_assignments.each do |student|
    puts "#{student["name"]}"
    puts "\t #{student["title"]} : #{student["points"]}"
  end
end




#DATA
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


assignment_list = [
  {title: "Assignment 1"},
  {title: "Assignment 2"},
  {title: "Assignment 3"}]





#DRIVER CODE

#SetUp
clear_tables
create_tables

#Populate tables with data
populate_teams_table(current_teams)
puts "How many students do you want to create?"
create_students(gets.chomp.to_i)


assign_students_to_teams
populate_assignment_table(assignment_list)
populate_assignment_grades_table #with random grades




#Features


# View students in team"
# puts "Do you want to see all the students who are in a particular team? (y/n)"
# if gets.chomp == "y"
#   view_students_of_team
# end


# 
# 
quit = false
good_response = false

until quit
  until good_response  
    puts "What would you like to do?"
    puts "1) View students who are in a particular team"
    puts "2) View student roster"
    puts "3) View student grades"
    response = gets.chomp
    case response
    when "1" 
      view_students_of_team
      good_response = true
    when "2" 
      generate_roster
      good_response = true
    when "3" 
      view_grades
      good_response = true
    else
      puts "please select a number"
      good_response = false
    end
  end

puts "Type 'end' to quit or any key to continue"
response = gets.chomp

  if response == "end"
    quit = true
  else
    good_response = false
    quit = false
  end
end 











# ______



# #Populate Assignment Table with 3 assignments





# 





# populate_assignment_grades_table(db)

# ("UPDATE students SET team_id = ? WHERE id = ?", [team_no, student["id"]])
# assignment_grades
#       db.execute("INSERT INTO assignments (title) VALUES (?)",[assignment[:title]])
# populate_assignment_table(db, assignment_list)
