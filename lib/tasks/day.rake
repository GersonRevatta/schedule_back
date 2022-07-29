namespace :day do
	# rake "day:set_hours"
	task :set_hours => :environment do |t, args|
		hours = ['07:00 AM', '08:00 AM', '09:00 AM', '10:00 AM', '11:00 AM', '12:00 PM', '01:00 PM', '02:00 PM', '03:00 PM', '04:00 PM', '05:00 PM', '06:00 PM', '07:00 PM', '08:00 PM', '09:00 PM', '10:00 PM', '11:00 PM', '12:00 AM']
		Day.all.each do |day|
			p "se van a agregar esto al dia...#{day.name}"
			hours.each do |hour|
				day.work_hours.find_or_create_by(name: hour)
			end
		end
		p 'finish'
	end

  # rake "day:set_days"
  task :set_days => :environment do |t, args|
    days = ['Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo']
    days.each do |day|
      Day.find_or_create_by(name: day) 
    end
    p 'finish'
  end
end
