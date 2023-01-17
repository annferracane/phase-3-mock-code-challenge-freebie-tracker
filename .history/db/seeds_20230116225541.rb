puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "T-Shirt", value: 22, company_id: 1, dev_id: 1)
Freebie.create(item_name: "Coffee Tumbler", value: 16, company_id: 1, dev_id: 1)
Freebie.create(item_name: "Water Bottle", value: 18, company_id: 2, dev_id: 1)
Freebie.create(item_name: "Hoodie", value: 36, company_id: 3, dev_id: 1)

Freebie.create(item_name: "Coffee Tumbler", value: 16, company_id: 1, dev_id: 1)
Freebie.create(item_name: "Water Bottle", value: 18, company_id: 2, dev_id: 1)

puts "Seeding done!"
