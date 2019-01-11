class Mutations::CreateAuthor < GraphQL::Schema::Mutation
  null true

  argument :author, Types::AuthorInputType, required: true

  def resolve(author:)
    author_attrs = author.to_h
    Author.create(author_attrs)
  end
end