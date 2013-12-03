class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :hours, :usertype, :room, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false

  def self.search(search)
  	if search
  		find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
        find(:all)
    end
  end
end