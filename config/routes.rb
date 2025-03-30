Rails.application.routes.draw do
  get "/", { controller: "calculators", action: "square" }
  get "/square/new", { controller: "calculators", action: "square" }
  get "/square/results", { controller: "calculators", action: "square_result" }
  get "/square_root/new", { controller: "calculators", action: "square_root" }
  get "/square_root/results", { controller: "calculators", action: "square_root_result" }
  get "/payment/new", { controller: "calculators", action: "payment" }
  get "/payment/results", { controller: "calculators", action: "payment_result" }  
end
