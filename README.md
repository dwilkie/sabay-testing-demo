# Sabay Testing Demo

Demo of integration testing with Capybara and Selenium of [my.sabay.com](https://mysabay.com).

The test is written in [RSpec](http://rspec.info/) using [Capybara](https://github.com/teamcapybara/capybara) and [Selenium](http://www.seleniumhq.org/projects/webdriver/). The [headless gem](https://github.com/leonid-shevtsov/headless) is used to record the video.

## Test Script

View the integration test spec [here](https://github.com/dwilkie/sabay-testing-demo/blob/master/spec/features/my.sabay_spec.rb)

## Output Video

[Download here](https://github.com/dwilkie/sabay-testing-demo/blob/master/video/my.sabay_spec.rb%5B1:1:1%5D.mov?raw=true)

## Installation

After installing ruby and bundler run:

```
bundle install --path vendor
```

## Running the Tests

```
bundle exec rspec spec
```

