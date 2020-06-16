class Employee < ApplicationRecord
	belongs_to :dog

	def to_s
		[first_name, ' ', last_name].join
	end
end
