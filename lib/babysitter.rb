class Babysitter
	def calc(start_time, bed_time, end_time)
		# input times are in military.  at midnight, the numbers get smaller.
		# to keep calculation simple, end_time hour values entered between 0 and 4 will have 24 added to them.
		if end_time >= 0 && end_time < 17
			end_time += 24
		end
		if start_time < 17
			"cannot start before 5:00PM(1700)"
		elsif end_time > 28
			"cannot end after 4:00AM(0400)"
		else
			(bed_time - start_time)*12 + (end_time - bed_time)*8
		end
	end
end