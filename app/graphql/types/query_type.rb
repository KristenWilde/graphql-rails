Types::QueryType = GraphQL::ObjectType.define do
  # Add root-level fields here.
  # They will be entry points for queries on your schema.
  name 'Query'

  field :all_users, types[Types::UserType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { User.all }
  end

  field :user_goals do
    type types[Types::GoalType]
    description "Return a user's goals"
    resolve -> (obj, args, ctx) {
      user = User.find_by_id(args['user_id'])
      user.goals
    }
  end
end
