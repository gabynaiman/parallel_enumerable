require 'spec_helper'

describe Enumerable do

  it 'should support parallelized each' do
    array = []
    10.times.parallel(in_threads: 2).each do |i|
      sleep((10-i)/100.0)
      array << i
    end

    array.should eq [1, 0, 3, 2, 5, 4, 7, 6, 9, 8]
  end

  it 'should support parallelized each_with_index' do
    hash = {}
    %w(a b c d e f).parallel(in_threads: 2).each_with_index do |letter, i|
      sleep((10-i)/100.0)
      hash[i] = letter
    end

    hash.should eq 1 => 'b', 0 => 'a', 3 => 'd', 2 => 'c', 5 => 'f', 4 => 'e'
  end

  it 'should support parallelized map' do
    array = 10.times.parallel(in_threads: 3).map do |i|
      sleep(0.001)
      Thread.current.hash
    end

    array.should have(10).items
    array.uniq.should have(3).items
  end

  it 'should support parallelized map_with_index' do
    array = %w(a b c d e f).parallel(in_threads: 3).map_with_index do |letter, i|
      sleep(0.001)
      {Thread.current.hash => "#{letter}_#{i}"}
    end

    array.map { |hash| hash.values.first }.should eq %w(a_0 b_1 c_2 d_3 e_4 f_5)
    array.map { |hash| hash.keys.first }.uniq.should have(3).items
  end

end