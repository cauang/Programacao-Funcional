defmodule Exercicio06 do
  def run do
    custo = IO.gets("") |> String.trim() |> String.to_float()
    
    cond do
      custo <= 12000 ->
        IO.puts(custo + (custo * 0.05))
      custo > 12000 and custo <= 25000 ->
        IO.puts(custo + (custo * 0.10) + (custo * 0.15))
      custo > 25000 ->
        IO.puts(custo + (custo * 0.15) + (custo * 0.20))
    end
  end
end

Exercicio06.run()