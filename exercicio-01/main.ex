defmodule Exercicio01 do
  def run do
    n1 = IO.gets("") |> String.trim() |> String.to_integer()
    n2 = IO.gets("") |> String.trim() |> String.to_integer()
    n3 = IO.gets("") |> String.trim() |> String.to_integer()
    IO.puts(n1 * n2 * n3)
  end
end

Exercicio01.run()