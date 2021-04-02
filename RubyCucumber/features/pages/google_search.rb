require 'yaml'

class GoogleSearch

  include PageObject

  # text_field(:search,class: 'a4bIc')
  # button(:search_button, :xpath => '/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]')
  # div(:search_bos, :xpath => '/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input')
  # div(:search_box, :class => 'a4bIc')
  def google_search(word)

    # self.search_box.set "#{word}"
    # self.button.click
    @browser.div(:class => 'a4bIc').input(:xpath => '/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input').send_keys("#{word}")
    @browser.div(:class => 'a4bIc').input(:xpath => '/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input').send_keys(:tab)
    @browser.div(:class => 'FPdoLc tfB0Bf').click
    # @browser.div(:class => 'badge-link__btn-wrap').when_present(15).visible?


  end

  def validate_result
    result = Hash.new("result")
    result["1"] = @browser.div(:class => 'mw-body').text
    puts "#{result}"
    File.open("results.yml", "w") { |file| file.write(result.to_yaml) }
    result_array = YAML.load(File.read("results.yml"))
    z    p result_array





  end
end