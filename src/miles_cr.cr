require "./miles_cr/*"
require "kemal"
require "kilt/slang"
require "mysql"
require "crecto"
require "./models/*"

ENV["MYSQL_URL"] = "mysql://root@127.0.0.1:3306/miles_cr"

macro rend(filename)
  render "src/views/#{{{filename}}}.slang", "src/views/layout.slang"
end

get "/" do
  rend "index"

end

#to create a guest and test it against the db
get "/makeguest" do |env|
  guest = Guest.new
  guest.name = env.params.query["name"].to_s
  guest.guests = 1
  guest.coming = true
  changeset = Crecto::Repo.insert(guest)
  "Done! Yay!"
end

Kemal.run
