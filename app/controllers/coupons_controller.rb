class CouponsController < ApplicationController

  def allowed_params
    params.require(:coupon).permit(:store, :coupon_code)
  end

  def index
    @coupons = Coupon.all
    
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new

  end

  def create
    @coupon = Coupon.create(allowed_params)

    redirect_to coupon_path(@coupon)
  end

end
