require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

get("/rock") do
  @player1 = "Rock"
  choices = ["Rock", "Paper", "Scissors"]
  @player2 = choices.sample
  if @player1 == "Rock" && @player2 == "Rock"
    @outcome = "We tied!"
  elsif @player1 == "Rock" && @player2 == "Paper"
    @outcome = "We lost!"
  else
    @outcome = "We won!"
  end
  erb(:rock)
end

get("/paper") do
  @player1 = "Paper"
  choices = ["Rock", "Paper", "Scissors"]
  @player2 = choices.sample
  if @player1 == "Paper" && @player2 == "Rock"
    @outcome = "We won!"
  elsif @player1 == "Paper" && @player2 == "Paper"
    @outcome = "We tied!"
  else
    @outcome = "We lost!"
  end
  erb(:paper)
end

get("/scissors") do
  @player1 = "Scissors"
  choices = ["Rock", "Paper", "Scissors"]
  @player2 = choices.sample
  if @player1 == "Scissors" && @player2 == "Rock"
    @outcome = "We lost!"
  elsif @player1 == "Scissors" && @player2 == "Paper"
    @outcome = "We won!"
  else
    @outcome = "We tied!"
  end
  erb(:scissors)
end
