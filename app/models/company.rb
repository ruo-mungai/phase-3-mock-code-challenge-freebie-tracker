class Company < ActiveRecord::Base
has_many :freebies
has_many :companies ,through: :freebies

def give_freebie(dev, item_name, value)
    @dev=dev
    @item_nam=item_name
    @value=value
    Freebie.create(dev,item_name,value)
end

def self.oldest_company
    Company.all.order(:founding_year).first
  end

end
