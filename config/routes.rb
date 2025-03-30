Rails.application.routes.draw do
  get "/", {controller: "calcultors", action: "square"}
  get "/square/new", { controller: "calcultors", action: "square" }
  get "/square_root/new", { controller: "calcultors", action: "square_root" }
  get "/square_root/results", { controller: "calcultors", action: "square_root_result" }
  get "/payment/new", { controller: "calcultors", action: "payment" }
  get "/payment/results", { controller: "calcultors", action: "payment_result" }

  
end
