class Job < ApplicationRecord
	belongs_to :user
	validates_presence_of :description,
						  :origin,
						  :destination,
						  :quantity
	validates_numericality_of :quantity, greater_than_or_equal_to: 2
	def cost
		quantity * 500
	end

end
