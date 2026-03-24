defmodule Exercicio04 do
  def run do
    n1 = IO.gets("") |> String.trim() |> String.to_float()
    n2 = IO.gets("") |> String.trim() |> String.to_float()
    
    if n1 < n2 do
      IO.puts(n1)
    else
      IO.puts(n2)
    end
  end
end

Exercicio04.run()