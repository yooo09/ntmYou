require 'rails_helper'

describe User do
  describe '#create' do

    it "nameがない場合は登録できないこと" do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    # it "nameとemail、passwordとpassword_confirmationが存在すれば登録できること" do
    #   user = build(:user)
    #   expect(user).to be_valid
    # end

    # it "nameがない場合は登録できないこと" do
    #   user = build(:user, name: nil)
    #   user.valid?
    #   expect(user.errors[:name]).to include("can't be blank")
    # end

    # it "emailがない場合は登録できないこと" do
    #   user = build(:user, email: nil)
    #   user.valid?
    #   expect(user.errors[:email]).to include("can't be blank")
    # end

    # it "passwordがない場合は登録できないこと" do
    #   user = build(:user, password: nil)
    #   user.valid?
    #   expect(user.errors[:password]).to include("can't be blank")
    # end

    # it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
    #   user = build(:user, password_confirmation: "")
    #   user.valid?
    #   expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    # end

    # it " nicknameが7文字以上であれば登録できないこと" do
    #   user = build(:user, nickname: "aaaaaaa")
    #   user.valid?
    #   expect(user.errors[:nickname]).to include("is too long (maximum is 6 characters)")
    # end

    # it "nicknameが6文字以下では登録できること " do
    #   user = build(:user, nickname: "aaaaaa")
    #   expect(user).to be_valid
    # end

    # it " 重複したemailが存在する場合は登録できないこと " do
    #   user = create(:user)
    #   another_user = build(:user, email: user.email)
    #   another_user.valid?
    #   expect(another_user.errors[:email]).to include("has already been taken")
    # end

    # it " passwordが7文字以上であれば登録できること " do
    #   user = build(:user, encrypted_password: "000000", password_confirmation: "000000")
    #   expect(user).to be_valid
    # end

    # it " passwordが6文字以下であれば登録できないこと " do
    #   user = build(:user, encrypted_password: "000000", password_confirmation: "000000")
    #   user.valid?
    #   expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    # end

  end
end