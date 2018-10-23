# defines a new GraphQL type
Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  # it has the following fields
  field :id, types.ID
  field :first_name, types.String
  field :username, types.String
  field :email, types.String
  field :goals, types[Types::GoalType] do
    resolve -> (obj, args, ctx) {
      obj.goals
    }
  end
end