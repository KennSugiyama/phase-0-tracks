job_app = {
	name: "kenn",
	address: "153 townsend",
	email: "grooviekenn@gmail.com",
	phone: "4159393333",
	shade_of_blue: "dark",
	wallpaper_preference: ["paisley", "Photorealistic", "Abstracty"],
	ombre: "Fierce"
}

p job_app.keys
p job_app.values

puts "Name?"
job_app[:name] = gets.chomp

p job_app.values

puts "Date Hired"
job_app[:date_hired] = gets.chomp
p job_app.keys
p job_app.values

p job_app[:name] + job_app[:address]
p job_app.keys
p job_app.values