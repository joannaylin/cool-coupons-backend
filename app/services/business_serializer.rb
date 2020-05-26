class BusinessSerializer

    def initialize(business_object)
        @business = business_object
    end

    def to_serialized_json
        @business.to_json(include: {
            coupons: {
                only: [:id, :name, :code, :expiration_date],
                except: [:created_at, :updated_at]
            }
        }, except: [:created_at, :updated_at])
    end

end