class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        result = false
        self.freebies.each do |f|
            puts item_name
            if item_name = f.item_name
                result = true
            end
        end
        result
    end
end
