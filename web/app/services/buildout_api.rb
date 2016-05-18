class BuildoutApi
	def self.get_broker(id)
		req = HTTP.get("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/brokers/#{id}.json").body
		res = JSON.parse(req)['broker']
	end

	def self.get_brokers
		req = HTTP.get("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/brokers.json").body
		res = JSON.parse(req)['brokers']
	end

	def self.get_properties
		req = HTTP.get("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/properties.json?limit=20").body
		res = JSON.parse(req)['properties']
	end

	def self.get_property(id)
		req = HTTP.get("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/properties/#{id}.json").body
		res = JSON.parse(req)['property']
	end

	def self.get_lease_spaces
		req = HTTP.get("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/lease_spaces.json?limit=127").body
		res = JSON.parse(req)['lease_spaces']
	end

	def self.get_lease_space(id)
		req = HTTP.get("https://buildout.com/api/v1/543996f9d8bbdbe292c5bf74a414b277ace44313/lease_spaces/#{id}.json").body
		res = JSON.parse(req)['lease_space']
	end
end