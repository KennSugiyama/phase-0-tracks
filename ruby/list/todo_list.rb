class TodoList
	
	def initialize(list_array)
		@todo_list = list_array
	end

	def get_items
		@todo_list
	end

	def add_item(added_item)
		@todo_list << added_item
	end

	def delete_item(item_to_delete)
		@todo_list.delete(item_to_delete)
	end

	def get_item(index)
		@todo_list[index	]
	end
end



