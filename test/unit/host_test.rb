require 'test_helper'

class HostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Host attributes must not be empty" do
  	host = Host.new
  	assert host.invalid?
  	assert host.errors[:name].any?
  	assert host.errors[:domain].any?
  	assert host.errors[:ip].any?
  end

  test "Host ip must be valid" do
  	host = Host.new(
  		name: 'testhost',
  		domain: 'test.com',
  		description: 'testing host'
  		)
  	host.ip = 'foo'
  	assert host.invalid?
  	assert_equal ["(foo) must be an IP v4 with format: N.N.N.N"], host.errors[:ip]

  	host.ip = 'A.23.8'
  	assert host.invalid?
  	assert_equal ["(A.23.8) must be an IP v4 with format: N.N.N.N"], host.errors[:ip]  

  	host.ip = '1.1.1.1'
  	assert host.valid?
  end

  def new_host(image_url)
  	Host.new(
  		name: 'testhost',
  		domain: 'test.com',
  		description: 'testing host',
  		ip: '1.1.1.1'
  		)
  end

  test "image_url" do
  	ok = %w{ foo.gif bla.jpg fake.png FOO.JPG BLA.Jpg http://some.place/foo.gif }
  	bad = %w{ foo.xml foo.doc bla.jpg/foo fake.gif.what }

  	ok.each do |image_name|
  		assert new_host(image_name).valid?, "#{image_name} should NOT be invalid"
  	end

  	bad.each do |image_name|
  		assert new_host(image_name).invalid?, "#{image_name} should NOT be valid"
  	end
  end
end
