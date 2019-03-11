require 'bank_account'


describe BankAccount do

  it 'initializes with a balance of 0' do
    expect(subject.balance).to eq(0)
  end

end


#
# require 'oystercard'
# require 'journey'
#
# describe Oystercard do
#
#   let(:station){ double :station }
#
#   before(:each) do
#     @card = Oystercard.new
#     @card.topup(20)
#     @amount = double("amount")
#     @entry_station = double("entry station")
#     @exit_station = double("exit station")
#   end
#
#   it "has a balance" do
#     expect(subject).to respond_to(:balance)
#   end
