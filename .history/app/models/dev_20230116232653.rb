class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.each do |f|
            if item_name = f.item_name
                true
            end
        end
        
    end

end
