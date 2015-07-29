defmodule FinTex.Connection.HTTPBodyTest do
  alias FinTex.Connection.HTTPBody
  use ExUnit.Case

  test "read locked accounts from file" do
    response_body = File.read!(Path.join([System.cwd!, "test", "fixtures", "blocked_account.txt"]))
    HTTPBody.decode_body(response_body)
  end


  test "read accounts from file" do
    response_body = File.read!(Path.join([System.cwd!, "test", "fixtures", "accounts.txt"]))
    HTTPBody.decode_body(response_body)
  end

end
