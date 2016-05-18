class PropertyController < ApplicationController
	def index
		@properties = BuildoutApi.get_properties
	end

	def show
		@property = BuildoutApi.get_property(params[:id])
		@brokers = [BuildoutApi.get_broker(@property['broker_id'])]
		
		if @property['second_broker_id']
			@brokers << BuildoutApi.get_broker(@property['second_broker_id'])
		end
		
		if @property['third_broker_id']
			@brokers << BuildoutApi.get_broker(@property['second_broker_id'])
		end
	end

	def search
		query = /#{params[:query]}/
		@properties = [];
		BuildoutApi.get_properties.each do |prop|
			if prop['name'].match(query) || prop['address'].match(query) || prop['city'].match(query) || prop['state'].match(query) || prop['zip'].match(query) || prop['sale_price_dollars'].to_s.match(query)
				@properties << prop
			end
		end
				
	end
end
