class Host < ActiveRecord::Base
	has_and_belongs_to_many :services
	
	attr_accessible :name, :domain, :ip, :description, :image_url

	validates :name, presence: true
	validates :domain, presence: true
	validates :ip, presence: true, format: { 
		with: %r{\A\d+\.\d+\.\d+\.\d+\Z}i,
		message: '(%{value}) must be an IP v4 with format: N.N.N.N'
	}
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be GIF, JPG or PNG image.'
	}
end
