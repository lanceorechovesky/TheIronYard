class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_many :user_locations
  has_many :locations, through: :user_locations

  def set_default_role
    self.role ||= :user
  end
end
