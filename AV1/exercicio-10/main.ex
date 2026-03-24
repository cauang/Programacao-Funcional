defmodule Exercicio10 do
  def run do
    calcula(0, 0)
  end

  def calcula(soma, qtd) do
    idade = IO.gets("") |> String.trim() |> String.to_integer()
    
    if idade == 0 do
      if qtd > 0 do
        IO.puts(soma / qtd)
      else
        IO.puts(0)
      end
    else
      calcula(soma + idade, qtd + 1)
    end
  end
end

Exercicio10.run()