# defines a new GraphQL type
Types::GoalType = GraphQL::ObjectType.define do
  name 'Goal'

  field :id, types.ID
  field :user_id, types.ID
  field :title, types.String
  field :target_speed, types.Int
  field :results, types[Types::ResultType] do
    resolve -> (obj, args, ctx) {
      obj.results
    }
  end
  field :pitch_codes, types[types.String] do
    resolve -> (obj, args, ctx) {
      obj.pitches.map do |pitch|
        pitch.pitch_code
      end
    }
  end
end