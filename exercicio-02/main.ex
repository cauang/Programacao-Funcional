defmodule Exercicio02 do
  def run do
    salario = IO.gets("") |> String.trim() |> String.to_float()
    vendas = IO.gets("") |> String.trim() |> String.to_float()
    comissao = vendas * 0.04
    final = salario + comissao
    IO.puts(comissao)
    IO.puts(final)
  end
end

Exercicio02.run()