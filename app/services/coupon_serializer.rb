class CouponSerializer

    def initialize(coupon_object)
        @coupon = coupon_object
    end

    def to_serialized_json
        @coupon.to_json(include: {
            business: {
                only: [:name, :location, :business_type],
                except: [:created_at, :updated_at]
            },
            likes: {
                except: [:created_at, :updated_at]
            },
        }, except: [:created_at, :updated_at])
    end

end