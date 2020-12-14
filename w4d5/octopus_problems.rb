fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
  longest_fish = arr[0]
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      longer_fish = arr[i].length > arr[j].length ? arr[i] : arr[j]
      longest_fish = longer_fish if longer_fish.length > longest_fish.length
    end
  end
  longest_fish
end

def dominant_octopus(arr)
  arr.sort[-1]
end

def clever_octopus(arr)
  longest_fish = arr[0]
  (1...arr.length).each do |i|
    longest_fish = arr[i] if arr[i].length > longest_fish.length
  end
  longest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, arr)
  arr.index(dir)
end

tile_lookup_hash = {}
tiles_array.each_with_index {|tile, i| tile_lookup_hash[tile] = i}

def fast_dance(dir,hash)
  hash[dir]
end 

