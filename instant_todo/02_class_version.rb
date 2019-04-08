class Todo
    def initialize(id,name)
        
        @id = id
        @name =name
    end

    def format
        return "{id: #{@id}, name: #{@name}}"
    end
end

class TodoList
    def initialize
        @list = []
    end

    def append(todo_name)
        p "appendが引数にしているtodo_nameは？"
        p todo_name
        adding_todo = Todo.new(
            @list.length + 1,
            todo_name
        )
        @list.push(adding_todo)
    end

    def output
        p "listを出してみよう"
        p @list
        @list.each do |todo|
            p todo
            puts todo.format
        end
    end
end

first_todo = Todo.new(1, "お母さんに電話")
socond_todo = Todo.new(2, "お父さんにメール")

list = TodoList.new
loop do
    puts "タスクを入力"
    task_name = gets.chomp
    p "受けとったタスクの名前は？"
    puts task_name
    list.append(task_name)
    p "appen終了"
    p list
    list.output
end