require_relative "test_helper"

class TestLightcore < Minitest::Test

  def test_count_by
    people = [
      {name: "Andrew"},
      {name: "Nick"},
      {name: "Nick"}
    ]
    expected = {
      "Andrew" => 1,
      "Nick" => 2
    }
    assert_equal expected, people.count_by{|p| p[:name] }
  end

  def test_hash_map
    people = [
      {id: 1, name: "Andrew"},
      {id: 2, name: "Nick"}
    ]
    expected = {
      1 => "Andrew",
      2 => "Nick"
    }
    assert_equal expected, people.hash_map{|p| [p[:id], p[:name]] }
  end

  def test_mapk
    hash = {
      "key1" => "value1",
      "key2" => "value2"
    }
    expected = {
      key1: "value1",
      key2: "value2"
    }
    assert_equal expected, hash.mapk{|k| k.to_sym }
  end

  def test_mapk!
    hash = {
      "key1" => "value1",
      "key2" => "value2"
    }
    expected = {
      key1: "value1",
      key2: "value2"
    }
    hash.mapk!{|k| k.to_sym }
    assert_equal expected, hash
  end

  def test_mapv
    hash = {
      "key1" => "value1",
      "key2" => "value2"
    }
    expected = {
      "key1" => "1",
      "key2" => "2"
    }
    assert_equal expected, hash.mapv{|v| v[-1] }
  end

  def test_mapv!
    hash = {
      "key1" => "value1",
      "key2" => "value2"
    }
    expected = {
      "key1" => "1",
      "key2" => "2"
    }
    hash.mapv!{|v| v[-1] }
    assert_equal expected, hash
  end

  def test_to_b
    assert "true".to_b
    assert "t".to_b
    assert "hi".to_b
    assert !"false".to_b
    assert !"f".to_b
    assert !nil.to_b
  end

end
