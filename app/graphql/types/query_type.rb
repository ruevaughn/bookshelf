module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator" do
        argument :name, String, required: true
      end
    def test_field(name:)
      Rails.logger.info context.inspect
      "Hello #{name}, it is #{context[:time]}"
    end

    field :author, Types::AuthorType, null: true, description: "One Author" do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find(id)
    end

    field :authors, [Types::AuthorType], null: false

    def authors
      Author.all
    end
  end
end
