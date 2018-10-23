Types::QueryType = GraphQL::ObjectType.define do
  # Add root-level fields here.
  # They will be entry points for queries on your schema.
  name 'Query'

  field :all_users, types[Types::UserType] do
    resolve -> (obj, args, ctx) { User.all }
  end

  # field :user_goals do
  #   type types[Types::GoalType]
  #   argument :user_id, types.ID
  #   description "Return a user's goals"
  #   resolve -> (obj, args, ctx) {
  #     user = User.find_by_id(args['user_id'])
  #     user.goals
  #   }
  # end

  field :user do
    type Types::UserType
    argument :user_id, types.ID
    description "Return data about a user"
    resolve -> (obj, args, ctx) {
      user = User.find_by(id: args['user_id'])
    }
  end
end
