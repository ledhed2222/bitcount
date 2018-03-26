#!/usr/bin/env elixir
defmodule Bitcount do
  use Bitwise

  defp bit_shifted_array(input) do
    0..31 |> Enum.map(fn(i) -> input >>> i end)
  end

  defp bitcount(input) do
    bit_shifted_array(input) |> Enum.map(fn(i) ->
      if (i &&& 1) == 1, do: 1, else: 0
    end) |> Enum.sum
  end

  defp parse_string_argument(input) do
    case input |> Integer.parse do
      {value, _} -> {:ok, value}
      :error -> {:error, "#{input} is not a number!"}
    end
  end

  defp fetch_command_line_input do
    case System.argv |> Enum.fetch(0) do
      {:ok, result} -> {:ok, result}
      :error -> {:error, "You must enter a number!"}
    end
  end

  def main do
    with {:ok, raw_input} <- fetch_command_line_input(),
      {:ok, parsed_input} <- parse_string_argument(raw_input) do
        IO.puts bitcount(parsed_input)
        exit :normal
    else
      {:error, reason} ->
        IO.puts reason
        exit 1
    end
  end
end

Bitcount.main

