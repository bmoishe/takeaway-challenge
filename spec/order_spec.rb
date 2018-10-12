require 'order'

#User story 2: I would like to be able to select some number of several available dishes

describe Order do
  it 'select some number of several available dishes' do
    subject.select_order(2, 'BBQ')
    subject.select_order(1, 'Pepperoni')
    expect(subject.review_order).to eq ["2. BBQ", "1. Pepperoni"]
  end
end
# # User story3: I would like to check that the total I have been given matches the sum of the various dishes in my order
#   it 'retrn the correct total' do
#     subject.select_order(2, 'BBQ')
#     subject.select_order(1, 'Pepperoni')
#     expect(subject.total_order).to eq '£39'
#   end
# end
