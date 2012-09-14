#coding: utf-8
class ExamplesController < ApplicationController

  def locale
    @instance = Member.first
    @new_instance = Member.new
  end

  def search
    @members = Member.search params[:query], :star => true
  end

  def percent
    yeah = "yeah"
    @res = %w(this is
       array #{yeah})
    @res_1 = %W(this is
       array #{yeah})
    @res1 = %q!String #{yeah}!
    @res1_1 = %Q!String #{yeah}!
    a = "match 999999월 asdf 으아으아1 z22"
    @res2 = %r{\d+}
    @res2_1 = a.match(@res2)
    @res2_2 = a.gsub(@res2,'')
    @res2_3 = %r{a}
    @res2_4 = a.gsub(@res2_3,'')
    @res2_5 = /a/
  end

end
