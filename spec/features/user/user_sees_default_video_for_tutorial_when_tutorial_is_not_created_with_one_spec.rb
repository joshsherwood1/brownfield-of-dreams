# frozen_string_literal: true

require 'rails_helper'

describe 'A registered user' do
  it 'can see a default video on a tutorial show page when a tutorial was created without any videos' do
    tutorial = create(:tutorial, title: 'How to Tie Your Shoes', classroom: false)
    visit "/tutorials/#{tutorial.id}"

    expect(page).to have_content('TBD')
  end
end
