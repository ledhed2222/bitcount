#!/usr/bin/env elixir
defmodule Bitcount do
  use Bitwise

  defp bit_shifted_array(input) do
    0..31 |> Enum.map(fn(i) -> input >>> i end)
  end

  defp bitcount(input) do
    bit_shifted_array(input) |> Enum.map(fn(i) ->
      if Integer.mod(i, 2) == 0, do: 0, else: 1
    end) |> Enum.sum
  end

  defp parse_argument(input) do
    try do
      String.to_integer(input)
    rescue
      ArgumentError -> nil
    end
  end

  def main do
    raw_input = case System.argv |> Enum.fetch(0) do
      {:ok, result} -> result
      :error -> nil
    end

    if raw_input == nil do
      IO.puts "You must enter a number!"
      exit 1
    end

    input = raw_input |> parse_argument
    if input == nil do
      IO.puts "\"#{raw_input}\" is not a number!"
      exit 1
    end

    IO.puts bitcount(input)
    exit :normal
  end
end

Bitcount.main

