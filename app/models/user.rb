class User < ActiveRecord::Base
  authenticates_with_sorcery!
   attr_accessible :email, :username, :password, :password_confirmation

  has_many :albums
  has_many :photos, :through => :albums
  validates_length_of :password, :minimum => 4, :message => "password must be at least 4 characters long.", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
end 
