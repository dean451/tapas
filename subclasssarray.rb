class TagList < Array
  def <<(tag)
    tag.to_s.strip.split.each do |t|
      super(t)
    end
  end
end

tags = TagList.new
tags << "foo" << "bar" << "baz"
