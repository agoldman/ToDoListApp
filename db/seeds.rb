ActiveRecord::Base.transaction do
  proj1 = Project.create!(title: "House ToDo", description: "Things to take care of around the house.")
  proj1.items.create!(title: "Redo bathroom", description: "Buy tiles. Replace mirrors. New sink.", completed: false)
  proj1.items.create!(title: "Kitchen ToDo", description: "New Trash Can. Fix Fridge.", completed: false)

  proj2 = Project.create!(title: "School ToDo", description: "Things to do for class.")
  proj2.items.create!(title: "Books", description: "Buy chemistry, math, and biology books", completed: true)

end