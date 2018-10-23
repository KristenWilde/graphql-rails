Types::ResultType = GraphQL::ObjectType.define do
  name 'Result'

  field :created_at, types.String
  field :speed, types.Int
end