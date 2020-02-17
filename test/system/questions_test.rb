require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end
  test "asking a question returns a stupid quesiton response" do
    visit ask_url
    fill_in "ask", with: "what?"
    click_on "ask"
  end
end
