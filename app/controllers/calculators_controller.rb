class CalcultorsController < ApplicationController
  
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

  def payment
    render(template: "templates/payment")

  end

  def payment_result
    @the_apr = params.fetch("apr").to_f/100/12
    @the_years = params.fetch("years").to_i * 12
    @the_principal = params.fetch("principal").to_f

    numerator = @the_apr *  @the_principal
    denominator = 1 - (1 + @the_apr) ** -@the_years
    @the_payment = (numerator / denominator).round(2)
    @interest_rate = (@the_apr *12 * 100).round(4)

    render(template: "templates/payment_result")

  end

end
