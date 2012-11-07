class User < ActiveRecord::Base
	@@admin = 0

	def self.admin
		@@admin
	end

	def self.admin=(val)
		@@admin = val
	end
end