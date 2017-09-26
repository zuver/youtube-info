# YouTube video info tool
> A Ruby on Rails application that demonstrates how to use the yt gem (https://rubygems.org/gems/yt)

## Getting started

This application makes requests to the YouTube Data API, so you will need to obtain a developer API key. Here is where you can learn more about that: https://developers.google.com/youtube/v3/getting-started

Once you have obtained a key, look at `config/initializers/yt.rb` and set an appropriate environment variable on your system (recommended) or simply replace `ENV.fetch('API_KEY')` with `'YOUR_API_KEY'` (do this only when you are running the application locally)

Once the API key is configured, you should be able to run the project. In the top-level directory, run:

```shell
bundle install
rails s
```

Then navigate to `localhost:3000` in your browser

## Running tests

```shell
rails test
```
