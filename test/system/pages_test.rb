require 'application_system_test_case'

class PagesTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'label', text: 'Ask your coach anything'
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text "I don't care, get dressed and go to work!"
  end

  test 'asking a question yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Something?'
    take_screenshot
    click_on 'Ask'

    assert_text 'Silly question, get dressed and go to work!'
  end
end
