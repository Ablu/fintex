defmodule FinTex.Segment.HISYNTest do
  alias FinTex.Parser.Tokenizer
  alias FinTex.Parser.TypeConverter
  use ExUnit.Case
  use FinTex

  test "it should split the client system ID" do
    types = "HISYN:39:4:5+ck3x33LC?+FABAACHKOfmUAIKhAQA"
    |> Tokenizer.split
    |> TypeConverter.string_to_type

    assert "[[[\"HISYN\", 39, 4, 5], \"ck3x33LC\", \"FABAACHKOfmUAIKhAQA\"]]" == types |> inspect
  end
end
