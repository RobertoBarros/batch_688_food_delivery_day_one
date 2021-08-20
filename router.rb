class Router

  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      break if action == 99

      dispatch(action)
    end
    puts "Goodbye..."
  end

  private

  def print_actions
    puts '-' * 50
    puts '1. Create a meal'
    puts '2. List all meals'
    puts '-' * 50
    puts '3. Create Customer'
    puts '4. List all customers'
    puts '-' * 50
    puts '99. Exit'
    puts '-' * 50
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    end
  end
end