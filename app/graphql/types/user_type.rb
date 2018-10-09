# defines a new GraphQL type
Types::UserType = GraphQL::ObjectType.define do
  # this type is named 'Goal'
  name 'User'

  # it has the following fields
  field :id, types.ID
  field :first_name, types.String
  field :username, types.String
  field :email, types.String 
end