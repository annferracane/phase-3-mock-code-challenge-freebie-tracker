class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        result = false
        self.freebies.each do |f|
            item_name = f.item_name ? result = true : false
        end
        
    end

end
