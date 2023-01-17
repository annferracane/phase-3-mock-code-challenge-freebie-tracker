class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        Freebie.where(dev_id: self.id, item_name: item_name).size > 0 ? true : false
    end

    def give_away(dev, freebie)
        freebie.where(dev_id: self.id).size > 0 ? freebie.dev_id = dev.id
    end
end
