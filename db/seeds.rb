# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Host.delete_all

Host.create(
	name: 'dirtysock8',
	domain: 'tiburon.com',
	image_url: 'host01.jpg'
)

Host.create(
	name: 'panda',
	domain: 'online.ea.com',
	image_url: 'host01.jpg'
)

Host.create(
	name: 'sdevgos01',
	domain: 'online.ea.com',
	image_url: 'host01.jpg'
)

Host.create(
	name: '398619-gosprmdb370',
	domain: 'rspc-iad.ea.com',
	image_url: 'host02.jpg'
)

Host.create(
	name: 'dirtysock',
	domain: 'ea.com',
	image_url: 'host02.jpg'
)

Host.create(
	name: 'dirtysock2',
	domain: 'ea.com',
	image_url: 'host02.jpg'
)

Host.create(
	name: 'gosecmonitor01',
	domain: 'eao.abn-iad.ea.com',
	image_url: 'host02.jpg'
)

Host.create(
	name: 'gosprodbeapp0008',
	domain: 'abn-sjc.ea.com',
	image_url: 'host02.jpg'
)

Host.create(
	name: 'nis1',
	domain: 'ea-colo.ea.com',
	image_url: 'host02.jpg'
)
