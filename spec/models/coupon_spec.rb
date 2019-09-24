require 'rails_helper'

RSpec.describe Coupon, type: :model do
  it "is valid with no attributes" do
    expect(Coupon.new).to be_valid
  end
  it "is valid with valid attributes" do
    expect(Coupon.new(coupon_code: 'Anything', store:'Anything')).to be_valid
  end
end
