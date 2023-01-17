class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        Freebie.where(dev_id: self.id, item_name: item_name).size > 0 ? true : false

        # result = false
        # self.freebies.each do |f|
        #     puts item_name
        #     puts f.item_name
        #     if item_name == f.item_name
        #         result = true
        #     end
        # end
        # result
    end
end
