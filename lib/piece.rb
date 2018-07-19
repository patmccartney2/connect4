class Piece

  attr_reader :representation

  def initialize(owner)
    if owner == "user"
      @representation = "X"
    else
      @representation = "0"
    end
  end

end
