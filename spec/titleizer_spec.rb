require 'spec_helper'
require "titleizer"

describe Titleizer do
  it 'uppercases rvm' do
    expect(Titleizer.title_from_page_name('rvm_is_a_thing')).to eq('RVM Is A Thing')
  end

  it 'uppercases osx as OS X' do
    expect(Titleizer.title_from_page_name('osx_ive_never_heard_of_it')).to eq('OS X Ive Never Heard Of It')
  end

  it 'uppercases ssh' do
    expect(Titleizer.title_from_page_name('ssh_into_all_the_things')).to eq('SSH Into All The Things')
  end

  it 'upcases CRUD, even if it is already uppercase' do
    expect(Titleizer.title_from_page_name('CRUD_with_scaffolding')).to eq('CRUD With Scaffolding')
  end

  it 'uppercases dvd' do
    expect(Titleizer.title_from_page_name('why_cant_my_vhs_play_this_dvd')).to eq('Why Cant My Vhs Play This DVD')
  end

  it 'uppercases html' do
    expect(Titleizer.title_from_page_name('whats_the_deal_with_html')).to eq('Whats The Deal With HTML')
  end

  it 'uppercases argv' do
    expect(Titleizer.title_from_page_name('argv')).to eq('ARGV')
  end

  it 'keeps irb lowercase' do
    expect(Titleizer.title_from_page_name('irb_as_a_service')).to eq('irb As A Service')
  end

  it 'capitalizes sentences' do
    expect(Titleizer.title_from_page_name('sandwich_parade_on_tuesday')).to eq('Sandwich Parade On Tuesday')
  end
end
