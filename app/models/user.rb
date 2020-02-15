class User < ActiveRecord::Base #why is it inheriting from this
    has_many :riders
    has_many :events, through: :riders

    validates :email, :password, :username, presence: true
    validates :email, uniqueness: true
end

