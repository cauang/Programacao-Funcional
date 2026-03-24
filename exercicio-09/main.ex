defmodule Exercicio09 do
  def run do
    calcula(10, 0, 0)
  end

  def calcula(0, pares, impares) do
    IO.puts(pares)
    IO.puts(impares)
  end

  def calcula(n, pares, impares) do
    num = IO.gets("") |> String.trim() |> String.to_integer()
    if rem(num, 2) == 0 do
      calcula(n - 1, pares + num, impares)
    else
      calcula(n - 1, pares, impares + num)
    end
  end
end

Exercicio09.run()