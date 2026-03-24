defmodule Exercicio07 do
  def run do
    calcula(5.0, 120)
  end

  def calcula(preco, ingressos) when preco >= 1.0 do
    lucro = (preco * ingressos) - 200.0
    IO.puts("#{preco} - #{lucro} - #{ingressos}")
    calcula(preco - 0.50, ingressos + 26)
  end

  def calcula(_, _), do: :ok
end

Exercicio07.run()