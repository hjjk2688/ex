class HomeController < ApplicationController
  def index
   @result = Array.new(6)
    for i in 0..@result.length-1
      @result[i] = i
    end
  end
  
  def check
    @save = "확인"
    @save_number = Array.new(6)
    @save_number[0] = params[:number0].to_i
    @save_number[1] = params[:number1].to_i
    @save_number[2] = params[:number2].to_i
    @save_number[3] = params[:number3].to_i
    @save_number[4] = params[:number4].to_i
    @save_number[5] = params[:number5].to_i
    
    
    @save_n2 = Array.new(6)
    for i in 1..@save_n2.length-1
      @soso = ":number"+i.to_s
      @save_n2[i] = params[@soso]
    end
  
    @result=(1..45).to_a.sample(6)
    #@result = [1,2,3,4,5,6]
    @result_bonus = (1..45).to_a.sample(1)
    
    @match_number = @save_number& @result
    @match_bonus_number = @save_number & @result_bonus
  
  
  case @match_number.count
  when 3
    @save = "5등"
  when 4
    @save = "4등"
  when 5
    if @match_bonus_number.count == 1
      @save = "2등"
    else
      @save = "3등"
    end
    
  when 6
    @save = "1등"
  else 
    @save = "당첨안됨"
  end
   
       
         
       
  end
end
