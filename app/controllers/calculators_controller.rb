class calcultorsController < applicationController
  
  def home
    render(template: "template/square")
  end

  def square_result
    @user_input = params.fetch("square_number").to_f
    @square = @user_input ** 2
    render(template: "templates/square_result")
  end

  def square_root
    render(template: "templates/square_root")
  end

  def square_root_result
    @user_input_square = params.fetch("square_root_number")
    @square_root = Math.sqrt(@user_input_square.to_f)
    render(template: "templates/square_root_result")
  end
  
end
