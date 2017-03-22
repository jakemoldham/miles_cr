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
require "./controllers/*"


Kemal.run
