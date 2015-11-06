class Babysitter
	def calc(start_time, bed_time, end_time)
		if start_time.integer? && bed_time.integer? && end_time.integer?
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
				if end_time < 24
					(bed_time - start_time)*12 + (end_time - bed_time)*8
				else
					(bed_time - start_time)*12 + (24 - bed_time)*8 + (end_time - 24)*16
				end
			end
		else
			'can only use whole hour values'
		end
	end
end