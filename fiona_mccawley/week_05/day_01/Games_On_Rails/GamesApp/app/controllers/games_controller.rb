class GamesController < ApplicationController

  def secret

  end

  def secret_number
  # Secret Number
  #
  # Users click a number between 1 and 10. The controller validates the guess and renders the win or lose view.

    @number = params["number"].to_i
    array = (1..10).to_a
    @secret_number = array.sample()

    if @number == @secret_number
      @result = "Win"
    else
      @result = "Try again"
    end
  end

  def magic
    @shake = params["q"]
  end

  def magic_response
      # Magic 8 Ball
      #
      # Magic 8 ball takes user's questions from the the URL as params and returns a positive or negative answer.
      ball_response =
      ["It is certain",
      "It is decidedly so",
      "Without a doubt",
      "Yes definitely",
      "You may rely on it",
      "As I see it, yes",
      "Most likely",
      "Outlook good",
      "Yes",
      "Signs point to yes",
      "Reply hazy try again",
      "Ask again later",
      "Better not tell you now",
      "Cannot predict now",
      "Concentrate and ask again",
      "Don't count on it",
      "My reply is no",
      "My sources say no",
      "Outlook not so good",
      "Very doubtful"]
      @response = ball_response.sample()
      @shake = params["q"]
  end

  def rock_paper_scissors
  end

  def rock_paper_scissors_play
    @throw = params["throw"]
    array = ["Rock", "Scissors", "Paper"]
    @comp_go = array.sample()

    if @throw == @comp_go
      @result = "Its a tie"
    elsif @throw == "Rock" && @comp_go == "Scissors"
      @result = "You Win"
    elsif @throw == "Paper" && @comp_go == "Rock"
      @result = "You win"
    elsif @throw == "Scissors" && @comp_go == "Paper"
      @result = "You win"
    elsif @throw == "Rock" && @comp_go == "Paper"
      @result = "You lose"
    elsif @throw == "Paper" && @comp_go == "Scissors"
      @result = "You lose"
    elsif @throw == "Scissors" && @comp_go == "Rock"
      @result = "You lose"
    end
  end

end
