class User < ActiveRecord::Base #why is it inheriting from this
    has_many :events
    has_secure_password #learn how secure password and bcrypt enable authentication

    validates :email, :password, :user_name, presence: true #whether these things exist
    validates :email, uniqueness: true #whether this is unique
end

#person creating acct with my app - user
