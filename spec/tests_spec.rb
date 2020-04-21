require 'watir'
require 'webdrivers'

describe 'linkedin tutorial' do
    it 'should open explore california website' do
        browser = Watir::Browser.new :firefox
        browser.goto "http://explorecalifornia.org"
    end
end