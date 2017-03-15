#Goal 1: Track students and their teams

require 'sqlite3'
require 'faker'

#SETUP DATABASE
db = SQLite3::Database.new("student_projects.db")
db.results_as_hash = true

#Create students Table
create_student_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    student_points INT,
    team_ID INT
  )
SQL

db.execute(create_student_table_cmd)
#test: add student.
db.execute("INSERT INTO students (name) VALUES ('Bob')")

#Create team/project Table

#Create Milestone 1 Rubric Table

#Create Evaluator Table
