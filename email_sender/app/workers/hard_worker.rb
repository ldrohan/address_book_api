class HardWorker
	include Sidekiq::Worker 

	def perform
		#this is what your worker will be doing
	end	
end	