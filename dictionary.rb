class Dictionary

  def initialize
    @hash = {}
  end

  def add(hash)
    if hash.is_a?(Hash)
      @hash.merge!(hash)
    else
      @hash[hash] = nil
    end
  end



  def entries
    @hash
  end

  def keywords
    @hash.keys.sort
  end

  def include?(check)
    @hash.key?(check)
  end


  def find(pre)
    # binding.pry
    @hash.select { |key, value| key.start_with?(pre) }
  end


end
