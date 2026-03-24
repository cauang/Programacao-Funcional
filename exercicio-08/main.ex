defmodule Exercicio08 do
  def run do
    dados = pega_dados(6, [])
    calc_a(dados)
    calc_b(dados)
    calc_c(dados)
    calc_d(dados)
  end

  def pega_dados(0, acc), do: acc
  def pega_dados(n, acc) do
    idade = IO.gets("") |> String.trim() |> String.to_integer()
    peso = IO.gets("") |> String.trim() |> String.to_float()
    altura = IO.gets("") |> String.trim() |> String.to_float()
    olho = IO.gets("") |> String.trim()
    cabelo = IO.gets("") |> String.trim()
    pega_dados(n - 1, [{idade, peso, altura, olho, cabelo} | acc])
  end

  def calc_a(dados) do
    res = Enum.count(dados, fn {id, p, _, _, _} -> id > 50 and p < 60 end)
    IO.puts(res)
  end

  def calc_b(dados) do
    filtrados = Enum.filter(dados, fn {_, _, a, _, _} -> a < 1.50 end)
    if length(filtrados) > 0 do
      soma = Enum.reduce(filtrados, 0, fn {id, _, _, _, _}, acc -> acc + id end)
      IO.puts(soma / length(filtrados))
    else
      IO.puts(0)
    end
  end

  def calc_c(dados) do
    azuis = Enum.count(dados, fn {_, _, _, o, _} -> o == "A" end)
    IO.puts((azuis / 6) * 100)
  end

  def calc_d(dados) do
    res = Enum.count(dados, fn {_, _, _, o, c} -> c == "R" and o != "A" end)
    IO.puts(res)
  end
end

Exercicio08.run()