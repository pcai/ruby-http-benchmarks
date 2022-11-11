# Run with `rackup app.ru`

require "roda"

Roda.route do |r|
  r.post "upload" do
    "Success"
  end

  r.get "download" do
    "a" * 10*1024*1024 # 10 MB
  end
end

run Roda.app
