class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates_presence_of :name       
         
  def first_name
    self.name.split[0]
  end
  
  def last_name
    self.name.split[1] ||= ""
  end
end
