class Guest < Crecto::Model
  schema "guests" do
    field :name, String
    field :guests, Int32
    field :coming, Bool
  end
end
