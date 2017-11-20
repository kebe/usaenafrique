class Container < ApplicationRecord
	def name
		self.container_number
	end
end
