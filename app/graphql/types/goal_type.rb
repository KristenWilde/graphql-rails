# defines a new GraphQL type
Types::GoalType = GraphQL::ObjectType.define do
  # this type is named 'Goal'
  name 'Goal'

  # it has the following fields
  field :goal_id, types.ID
  field :user_id, types.ID
  field :title, types.String
  field :target_speed, types.Int
end