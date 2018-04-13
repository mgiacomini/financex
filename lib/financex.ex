defmodule Financex do
  @moduledoc """
  Documentation for Financex.
  """

  @doc """
  xirr will return the internal rate of return. The implementation considers 3 months to the customer start pay.

  ## Examples

      iex> Financex.xirr(5000, [1200, 1190, 1180, 1170, 1160])
      0.40234700113722915

  """
  def xirr(loan_value, installments) do
    path = [{:python_path, to_char_list(Path.expand("lib/financex"))}]
    {:ok, python} = :python.start(path)

    :python.call(python, :xirr, :compute, [loan_value, installments])
  end
end
