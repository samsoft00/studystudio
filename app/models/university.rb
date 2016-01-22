class University < ActiveRecord::Base
	after_create :create_tenant

	validates :subdomain, exclusion: { in: %w(www admin us ca jp), message: "%{value} is reserved." }
	validates :subdomain, length: { in: 6..20 }
	validates :subdomain, uniqueness: true
	validates :name, :site, :logo, :portal, :subdomain, presence: true

	has_many :faculty

	private

	def create_tenant
		Apartment::Tenant.create(subdomain)
	end

end
