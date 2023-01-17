class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :dev

end
