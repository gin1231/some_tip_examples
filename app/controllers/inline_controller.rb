require 'inline'
class InlineController < ApplicationController
  inline :C do |test|
    test.c "
    int add(int a,int b) {
      int lhs = a;
      int rhs = b;
      return a+b;
    }"
  end
  def languages
    if params[:lhs] && params[:rhs]
      @res = add(params[:lhs].to_i,params[:rhs].to_i)
    end
    if params[:comment]
      @out, @err, @status = Open3.capture3(Rails.root.to_s+"/a.out", params[:comment])
    end
    if params[:comment]
      @res1 = %x('/Users/Jineok12/projects/rails_tips_example/a.out')
      @res2 = system('./a.out', params[:comment])
    end
  end
end
