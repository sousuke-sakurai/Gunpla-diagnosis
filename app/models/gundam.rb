class Gundam < ApplicationRecord
    self.table_name = "gunplakits"

    def calculate_result
        # 1. 各項目の初期ポイント（0点）をハッシュで用意する
    grade_scores = { eg: 0, hg: 0, rg: 0, mg: 0 }
    style_scores = { photo: 0, sumiire: 0, paint: 0, sugumi: 0 } 
    
    case question1
    when '1'
      grade_scores[:mg] += 3
      grade_scores[:rg] += 1
    when '2'
      grade_scores[:rg] += 3
      grade_scores[:hg] += 1
    when '3'
      grade_scores[:eg] += 3
      grade_scores[:hg] += 2
    end

    case question2
    when '1'
      grade_scores[:hg] += 2
      grade_scores[:eg] += 3
    when '2'
      grade_scores[:rg] += 2
      grade_scores[:mg] += 2
    end

    case question3
    when '1'
      grade_scores[:rg] += 2
      grade_scores[:mg] += 2
    when '2'
      grade_scores[:eg] += 3
      grade_scores[:hg] += 2
    end

     case question4
    when '1'
      grade_scores[:mg] += 2
      grade_scores[:rg] += 3
    when '2'
      grade_scores[:rg] += 1
      grade_scores[:mg] += 1
      grade_scores[:hg] += 2
    end

     case question5
    when '1'
      grade_scores[:sugumi] += 3
      grade_scores[:sumiire] += 0
      grade_scores[:paint] += 0
      style_scores[:photo] += 1
    when '2'
      grade_scores[:sugimi] += 0
      grade_scores[:sumiire] += 3
      grade_scores[:paint] += 2
      style_scores[:photo] += 1  
    end

     case question6
    when '1'
      style_scores[:sumiire] += 2
      style_scores[:photo] += 0
      style_scores[:sugimi] += 0
      style_scores[:paint] += 3
    when '2'
      style_scores[:sumiire] += 3 
      style_scores[:phpto] += 0
      style_scores[:sugumi] += 0
      style_scores[:paint] += 2
    end

     case question7
     when '1'
      style_scores[:sumiire] += 3
      style_scores[:sugumi] += 2
      style_scores[:photo] += 2
      style_scores[:paint] += 0
     when '2'
      style_scores[:sumiire] += 1
      style_scores[:sugumi] += 3
      style_scores[:photo] += 3
      style_scores[:paint] += 0
     end
      
     case question8
    when '1'
      style_scores[:sugimi] += 3  
      style_scores[:sumiire] += 0
      style_scores[:photo] += 0
      style_scores[:paint] += 0
    when '2'
      style_scores[:sugumi] += 0 
      style_scores[:sumiire] += 2
      style_scores[:photo] += 1
      style_scores[:paint] += 2
    when '3'
      style_scores[:sugimi] += 0
      style_scores[:sumiire] += 2
      style_scores[:photo] += 3
      style_scores[:paint] += 3
    end

     case question9
    when '1'
      style_scores[:sugimi] += 2
      style_scores[:sumiire] += 0
      style_scores[:photo] += 0
      style_scores[:paint] += 0
    when '3'
      style_scores[:sugimi] += 0
      style_scores[:sumiire] += 0
      style_scores[:photo] += 3
      style_scores[:paint] += 2
    end

    best_grade = grade_scores.max_by { |key, score| score }.first
    best_style = style_scores.max_by { |key, score| score }.first

    return { grade: best_grade, style: best_style }
    end

    has_one_attached :image #追記
end

