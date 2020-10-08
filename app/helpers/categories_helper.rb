module CategoriesHelper
  def list_ancestors(category)
    list_of_ancestors = ''
    if category.ancestors.present?
      category.ancestors.each do |ans|
        list_of_ancestors += "#{ans.name} -> "
      end
      list_of_ancestors =list_of_ancestors.delete_suffix(' -> ')
    end
    list_of_ancestors
  end

  def list_children(category)
    list_of_children = ''
    if category.children.present?
      category.children.each do |ans|
        list_of_children += "#{ans.name} -> "
      end
      list_of_children =list_of_children.delete_suffix(' -> ')
    end
    list_of_children
  end
end
