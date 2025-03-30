Rails.application.routes.draw do
  get "/", {controller: "calcultors", action: "square"}
  get "/square/new", { controller: "calcultors", action: "square" }
  get "/square_root/new", { controller: "calcultors", action: "square_root" }
  get "/square_root/results", { controller: "calcultors", action: "square_root_result" }

  
end
