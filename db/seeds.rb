# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Coupon.create(coupon_code: '12233',store: 'downtown seattle' )
Coupon.create(coupon_code: '2334',store: 'uptown' )
Coupon.create(coupon_code: '1233233',store: 'aroundtown' )
Coupon.create(coupon_code: '1222343433',store: 'lefttown' )