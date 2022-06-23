defmodule ElixirKafkaServiceTest do
  use ExUnit.Case
  doctest ElixirKafkaService

  test "greets the world" do
    assert ElixirKafkaService.hello() == :world
  end
end
