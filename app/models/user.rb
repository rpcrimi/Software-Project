class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :hours, :exceptions, :website, :professors, :usertype, :room, :email, :password, :password_confirmation, :remember_me
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

  def myProfessors()
    if(professors)
      @myProfs = professors.split(',')
    end
  end

  def addProfToSchedule(name)
    if(professors)
	if(!professors.include?(name))
      	  self.update_attribute(:professors, professors + name + ",")
	end
    else
      self.update_attribute(:professors, name + ",")
    end
  end

  def removeProfFromSchedule(name)
    self.update_attribute(:professors, professors.sub(name + ",", ""))
  end

end
