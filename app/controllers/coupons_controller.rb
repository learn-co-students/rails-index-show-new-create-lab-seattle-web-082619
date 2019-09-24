require 'pry'
class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all 
  end 

  def show
    @coupon = Coupon.find(params[:id])
  end 

  def new 
  end 

  def create 
    # binding.pry
    @coupon = Coupon.new 
    @coupon.store = params[:store]
    @coupon.coupon_code = params[:coupon_code]
    @coupon.save 
    redirect_to coupon_path(@coupon)
  end 



end
