
def my_uniq(array)
    new_arr = []
    array.each do |ele|
        if !new_arr.include?(ele)
            new_arr << ele
        end
    end
    new_arr
end

class Array
    def two_sum
        new_arr = []
        self.each_with_index do |ele1, i|
            self.each_with_index  do |ele2, j|
            new_arr << [i,j] if j > i && ele1 + ele2 == 0
            end
        end
        new_arr
    end
end

def my_transpose(arr)
    col = arr.length
    new_arr = arr.map {|row| row.map {|ele| ele}}
    
    (0...col).each do |i|
        (0...col).each do |j|
            arr[i][j] = new_arr[j][i]
        end
    end

    arr
end