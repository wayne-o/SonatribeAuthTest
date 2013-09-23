
class Sonatribe
  include HTTParty
end


class TestLoginController < ApplicationController

  def get
    @cookie = cookies[:"ss-id"]

    @response =  Sonatribe.get("http://api.sonatribe.com/view/userprofile/wayne_douglas?format=json",
                               :cookies => { "ss-id" => @cookie})
  end
end
