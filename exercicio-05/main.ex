defmodule Exercicio05 do
  def run do
    n1 = IO.gets("") |> String.trim() |> String.to_float()
    n2 = IO.gets("") |> String.trim() |> String.to_float()
    op = IO.gets("") |> String.trim() |> String.to_integer()

    cond do
      op == 1 -> 
        IO.puts((n1 + n2) / 2)
      op == 2 ->
        if n1 > n2 do
          IO.puts(n1 - n2)
        else
          IO.puts(n2 - n1)
        end
      op == 3 -> 
        IO.puts(n1 * n2)
      op == 4 -> 
        IO.puts(n1 / n2)
      true -> 
        IO.puts("Opcao Invalida")
    end
  end
end

Exercicio05.run()