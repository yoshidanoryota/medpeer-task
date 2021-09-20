require 'rails_helper'

RSpec.describe IdeaForm, type: :model do
  before do
    @idea_form = FactoryBot.build(:idea_form)
  end

  describe 'アイデア新規登録' do
    context '登録できる場合' do
      it '[body],[name],[category_id]が存在すれば登録できる' do
        expect(@idea_form).to be_valid
      end
    end

    context '登録できない場合' do
      it '[body]が空では登録できない' do
        @idea_form.body = ''
        @idea_form.valid?
        expect(@idea_form.errors.full_messages).to include("Body can't be blank")
      end

      it '[name]が空では登録できない' do
        @idea_form.name = ''
        @idea_form.valid?
        expect(@idea_form.errors.full_messages).to include("Name can't be blank")
      end

      it '[categoy]が紐付いていなければ登録できない' do
        @idea_form.category_id = ''
        @idea_form.valid?
        expect(@idea_form.errors.full_messages).to include("Category can't be blank")
      end
    end
  end
end
