defmodule Workout do
  @moduledoc """
  `Workout` contains type specs and mostly incomplete functions. The goal is
  to fill in the function bodies, practicing many of elixir's features
  including:
    - defining a function multiple times to handle multiple cases
    - making frequent use of the |> (pipe) operator
    - making use of recursion or building on top of recursive functions

  Note: most of the comments below recommend defining functions in terms of
  other functions. This is to encourage functional thinking and practice
  elixir, not to say it's the best possible way to write these functions for
  every use case.

  Also note that dialyzer does not support type vars, so types a() and b() in
  the examples below can be exchanged freely to make all kinds of nonsense specs
  that will still pass the checks in `mix dialyzer`. Please pretend, however,
  that they are distinct type vars and not interchangeable.
  """

  @type a :: any
  @type b :: any

  # fold takes an accumulator of some type `b`, a list of values of
  # some type `a`, and a function of `a` -> `b` -> `b`. It returns a list
  # containing values of type `b`.
  # example: fold("", ["oh", "no"], fn(a, b) -> a <> b end) == "ohno"
  # see the tests for more examples
  @spec fold(b, list(a), (a, b -> b)) :: b
  def fold(accum, [], _func) do
    []
  end

  def fold(accum, [ fst | rst ], func) do
    accum
  end

  # some of the following functions benefit from having an easy way to
  # append an item to a list.
  @spec append(a, list(a)) :: list(a)
  def append(x, items) do
    []
  end

  # map should be defined in terms of fold!
  # map takes a list of items (e.g. [1, 2, 3]) and a function
  # (e..g fn a -> a + 1 end), and returns a new list with the function applied
  # to each element (e.g. [2, 3, 4])
  @spec map(list(a), (a -> b)) :: list(b)
  def map(items, func) do
    items
  end

  # filter should also be defined in terms of fold! it's a theme!
  # no I don't know why I'm still using exclamations!
  @spec filter(list(a), (a -> boolean)) :: list(a)
  def filter(items, pred) do
    items
  end

  # you can try defining `any` in terms of `filter` or `all`.
  # it should return true if `pred(item)` is true for at least one item in the
  # given `items` list, else false
  @spec any(list(a), (a -> boolean)) :: boolean
  def any(items, pred) do
    true
  end

  # there are also mutiple ways to define `all`. you can try defining it in
  # terms of `any`. returns true if `pred(item)` holds true for each
  # `item` in the given list `items`, else false
  @spec all(list(a), (a -> boolean)) :: boolean
  def all(items, pred) do
    true
  end


  # max should return the largest item (using the built-in > operator) in a
  # given list. this should be defined in terms of `fold`.
  @spec max(list(a)) :: a
  def max([]) do
    []
  end

  def max([fst | rst]) do
    fst
  end

  # min should return the smallest item (using the built-in < operator) in a
  # given list. this should be defined in terms of `fold`.
  @spec min(list(a)) :: a
  def min([]) do
    []
  end

  def min([fst | rst]) do
    fst
  end

  # `len` should count the number of items in the given list. this should be
  # defined in terms of `fold`.
  @spec len(list(a)) :: integer
  def len(items) do
    0
  end

  # splits one list into two. the first list contains all of the elements
  # where `pred(element)` is true, and the second list contains the rest
  @spec split_by(list(a), (a -> boolean)) :: { list(a), list(a) }
  def split_by(items, pred) do
    { [], [] }
  end

  # this should be defined in terms of either fold or filter. don't worry about
  # efficiency. to keep it simple, you can sort by < (e.g. if you have a list
  # [1, 3, 2], it should be sorted as [1, 2, 3])
  @spec insertion_sort(list(a)) :: list(a)
  def insertion_sort(items) do
    []
  end

end
