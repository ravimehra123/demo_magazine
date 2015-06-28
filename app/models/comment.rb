class Comment < ActiveRecord::Base
		
	validates_presence_of :name,:email,:body
	validate :article_should_be_published
	belongs_to :article
	has_many :comments
	belongs_to :comment
	def article_should_be_published
		errors.add(:article_id, "is not published yet") if article && !article.published?
	end
end
