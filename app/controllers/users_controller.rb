class UsersController < ApplicationController
  def index
    users = User.all
    res = users.map do |u|
      {
        id: u.id,
        name: u.name,
        email: u.email,
        age: u.age
      }
    end

    render json: res
  end

  def greeting
    render json: { hello: 'world' }
  end
end
