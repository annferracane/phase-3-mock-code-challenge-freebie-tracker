class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        Freebie.create(item_name: "T-Shirt", value: 22, company_id: 1, dev_id: dev.id)
    end

end
