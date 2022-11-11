# Run with `puma`

require "roda"

Roda.route do |r|
  r.get "download" do
    "a"
  end
end

run Roda.app
