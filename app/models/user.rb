class User < ActiveRecord::Base #why is it inheriting from this
    has_many :riders
    has_many :events, through: :riders

    validates :email, :password, :username, presence: true #whether these things exist
    validates :email, uniqueness: true #whether this is unique
end

