# ruby-rspec-watir
Fast practice on [watir](http://watir.com/) (Web applications testing in Ruby, pronounced water) framework based on LinkedIn learning `Advanced Selenium: Automation Frameworks` course. Besides the mentioned frameworks we've also used `webdrivers` gem to download the latest drivers

## Basics steps
- `gem install bundler`
- `bundle init`
- put `watir`, `rspec` and `webdrivers` gem into your Gemfile
- `bundle install`
- `rspec --init`
- create `xyz_spec.rb` file
- write your test code:
```ruby
describe 'feature name' do
    it 'should do somethig right' do
    # code here
    end
end
```

Future work could be:
- Try watir-rspec
    - No need to use the @browser or $browser variables when executing browser methods.
    - No need to open the browser in your each test manually.
    - Easily test for asynchronous events by using #within matchers.
    - Easily test that something stays the same within some period by using #during matchers.
    - Get nice html reports with links to html, screenshots and other files generated during test.
- Try a page object gem
