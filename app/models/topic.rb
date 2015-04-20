class Topic < ActiveRecord::Base
	has_many :votes, dependent: :destroy

	def tally_votes
		tally = 0
		votes.each do |vote|
			if vote.positive
				tally += 1
			else 
				tally -= 1

			end
		end
	tally
	end

	def self.sorted_by_votes
		all.sort_by {|topic| -topic.tally_votes}
	end
end

