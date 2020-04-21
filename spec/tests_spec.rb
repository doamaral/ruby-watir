require 'watir'
require 'webdrivers'

describe 'linkedin tutorial' do
    it 'should open explore california website' do
        browser = Watir::Browser.new :firefox
        browser.goto "http://explorecalifornia.org/contact.htm"
        expect(browser.text_field(id: 'name').exists?).to equal(true)
        expect(browser.textarea(id: 'comments').exists?).to equal(true)

        #Input Text
        browser.text_field(id: 'name').set "Lucas Amaral"
        
        #Combobox
        browser.select_list(id: "state").select "Texas"

        #Check box
        backpack = browser.checkbox(id: "backpack")
        #browser.execute_script("arguments[0].scrollIntoView();", backpack)
        backpack.click()

        #Radio Button
        browser.radio(id: "newsletter_yes").set

        #Assertions
        expect(browser.text_field(id: 'name').value).to match("Lucas Amaral")
        expect(browser.select_list(id: "state").text).to match("Texas")
        expect(backpack.set?).to equal(true)
        expect(browser.radio(id: "newsletter_yes").set?).to equal(true)
    end
end