class User < ApplicationRecord
  has_one :freelancer_profile
  has_many :links
  has_many :portfolio_items
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    after_create :assign_role

    def assign_role
      self.add_role self.user_type.to_sym

    end

end
