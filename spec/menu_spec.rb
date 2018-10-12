require 'menu'
#User story1: I would like to see a list of dishes with prices
describe Menu do
  it 'list of dishes with prices' do
    subject.see_dishes
    expect(subject.see_dishes).to eq '£12 BBQ
     £15 Pepperoni
     £10 Margarita
     £12 Ham and Pineapple
     £12 Vegetarian
     £15 Meat Feast'

   end

   it 'does the hash work' do
     expect(subject.menu_hash["BBQ"]).to eq 12
   end


end
