Company.delete_all
Dev.delete_all
Freebie.delete_all

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
Freebie.create(item_name: "web", value: 2, company_id: (Company.create(name: "Google", founding_year: 1998).id), dev_id: (Dev.create(name: "Rick")).id)
Freebie.create(item_name: "react app", value: 2, company_id: (Company.create(name: "Enron", founding_year: 1995)).id, dev_id: (Dev.create(name: "Gazorpazop").id))

puts "Seeding done!"
