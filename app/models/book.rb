class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :genre
  has_many :comments
  has_many :opinions
  has_attached_file :image, :styles => { :medium => "238x238>", 
                                         :thumb => "100x100>",
                                         :large => "500x400>"
                                       }
  validates_attachment :image,
  content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  
  has_attached_file :video
	#validates_attachment_presence :video
	validates_attachment_content_type :video, :content_type => [ 'video/mp4', /\Avideo/]
	
	after_initialize :defaults
	def defaults
    self.likes = 0
    self.unlikes = 0
  end
  
end
