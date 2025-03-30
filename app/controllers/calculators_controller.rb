class calcultorsController < applicationController
  
  def home
    render(template: "template/square")
  end

  def square_result
    @user_input = params.fetch("square_number").to_f
    @square = @user_input ** 2
    render(template: "templates/square_result")
  end
end
