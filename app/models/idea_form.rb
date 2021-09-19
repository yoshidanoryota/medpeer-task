class IdeaForm

  include ActiveModel::Model

  attr_accessor :name,:body,:category_id

  validates :body, presence: true
  validates :name, presence: true
  validates :category_id, presence: true

  def save
    return if invalid?

    category = Category.find_or_create_by!(name: name)
    idea = Idea.new(body: body, category_id: category.id)
    idea.save
  end
end