class ShopController < ApplicationController
    layout 'frontend'

    def index
        @mobiles = Mobile.all
    end
 
end
