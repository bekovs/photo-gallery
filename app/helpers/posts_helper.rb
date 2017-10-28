module PostsHelper
	def average_rating(post)
		array = []
		post.comments.each do |comment|
			 array << comment.rating.to_f
		end

		avg = array.inject(:+) / array.count
		return avg
	end
end
