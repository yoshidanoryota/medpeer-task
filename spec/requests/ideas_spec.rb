require 'rails_helper'

RSpec.describe 'IdeasController', type: :request do
  describe 'createアクション' do
    context 'createアクション成功' do
      it 'createアクションで成功時ステータスコード201が返ってくる' do
        post '/ideas?name=test&category_id=11&body=test'
        expect(response.status).to eq(201)
      end
    end

    context 'createアクション失敗' do
      it 'createアクションで失敗時ステータスコード422が返ってくる' do
        post '/ideas?name=&category_id=&body='
        expect(response.status).to eq(422)
      end
    end
  end
end
