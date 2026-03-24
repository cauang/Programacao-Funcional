defmodule Exercicio03 do
  def run do
    salario = IO.gets("") |> String.trim() |> String.to_float()
    conta1 = IO.gets("") |> String.trim() |> String.to_float()
    conta2 = IO.gets("") |> String.trim() |> String.to_float()
    multa1 = conta1 * 0.02
    multa2 = conta2 * 0.02
    resto = salario - (conta1 + multa1 + conta2 + multa2)
    IO.puts(resto)
  end
end

Exercicio03.run()