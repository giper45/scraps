defmodule Euler002 do

# https://projecteuler.net/problem=2
#
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
#
# Answer: 4613732

  def foo( upto ) do
    total =
      fibseries( upto )
      |> Enum.filter( fn(n) -> rem(n,2) == 0 end )
      |> Enum.sum
    IO.puts total
  end

  defp fibseries( upto ) do
    fibseries( upto, [ 1, 1 ] )
  end

  defp fibseries( upto, fib ) do
    new = Enum.at(fib,-1) + Enum.at(fib,-2)
    if new < upto do
      fibseries( upto, fib ++ [new] )
    else
      fib
    end
  end

end
