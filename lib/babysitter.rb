class Babysitter
	def calc(start_time, bed_time, end_time)
		if start_time < 17
			"cannot start before 5:00PM(1700)"
		elsif end_time > 4 && end_time < 17
			"cannot end after 4:00AM(0400)"
		else
			(end_time - start_time)*12
		end
	end
end