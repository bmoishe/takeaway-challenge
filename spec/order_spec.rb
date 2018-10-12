require 'order'

# User story 2: I would like to be able to select some number of several available dishes

describe Order do
  let(:menu_hash) { double :menu_hash, :bbq => 'BBQ'}
  let(:menu_hash) { double :menu_hash, :pepperoni => 'Pepperoni'}
  it 'select some number of several available dishes' do
    subject.select_order(2, 'BBQ')
    subject.select_order(1, 'Pepperoni')
    expect(subject.review_order).to eq ["2. BBQ", "1. Pepperoni"]
  end

# # User story3: I would like to check that the total I have been given matches the sum of the various dishes in my order

  it 'Check total order' do
    subject.select_order(2, 'BBQ')
    subject.select_order(1, 'Pepperoni')
    expect(subject.total_order).to eq "£39"
  end

  it 'Places an order' do
    subject.select_order(2, 'BBQ')
    subject.select_order(1, 'Pepperoni')
    expect(subject.place_order).to eq "Thank you! Your order was placed and will be delivered before 18:52"
  end
end
