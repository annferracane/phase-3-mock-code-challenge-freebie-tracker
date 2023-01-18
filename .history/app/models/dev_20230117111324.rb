class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        Freebie.where(dev_id: self.id, item_name: item_name).size > 0 ? true : false
    end

    def give_away(dev, freebie)
        if dev.class == Dev && freebie.class == Freebie
            if freebie.dev_id == self.id
                freebie.update(dev_id: dev.id)
            end
        else
            "You are trying to give a #{freebie.class"
        end
    end
end
