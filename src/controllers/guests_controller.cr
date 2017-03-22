#to create a guest and test it against the db
get "/makeguest" do |env|
  guest = Guest.new
  guest.name = env.params.query["name"].to_s
  guest.guests = 1
  guest.coming = true
  changeset = Crecto::Repo.insert(guest)
  "Done! Yay!"
end
