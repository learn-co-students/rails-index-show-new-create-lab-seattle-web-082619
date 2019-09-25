class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    #send new empty instance to form 
    def new
        @coupon = Coupon.new
    end

    #grab coupon attributes from the params hash that was returned by the form 
    def create
        @coupon = Coupon.new()
        @coupon.coupon_code = params[:coupon_code]
        @coupon.store = params[:store]
        @coupon.save()
        redirect_to coupon_path(@coupon)
    end

    def show
        @coupon = Coupon.find(params[:id])
    end


end
