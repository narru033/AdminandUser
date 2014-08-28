class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable
         
  def active_for_authentication?
		super && self.is_active # i.e. super && self.is_active
	end

	def inactive_message
		"Sorry, this account has been deactivated."
	end
	has_many :comments
	after_initialize :defaults
	def defaults
    self.is_active = true
  end
end
