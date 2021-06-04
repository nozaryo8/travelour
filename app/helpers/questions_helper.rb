module QuestionsHelper
  def remove_same_word(words , word)
    #rubyでは参照渡しになっていたのでreplaceでオブジェクトIDそのものを変更する
    # r = []
    # r.replace(words)
    # r.delete(word)
    # r.join(" ")
    # p r
    words = words.reject {|w| w == word}
    words.join(" ")
    
  end
  
end

