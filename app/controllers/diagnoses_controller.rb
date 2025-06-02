class DiagnosesController < ApplicationController
    def index

    end

    def new

    end

    def result
        sleep 1.5

        year  = params["[birthday(1i)]"]
        month = params["[birthday(2i)]"]
        day   = params["[birthday(3i)]"]

        if year.present? && month.present? && day.present?
            birthday_str = "#{year}#{month.rjust(2, '0')}#{day.rjust(2, '0')}"
            sum = birthday_str.chars.map(&:to_i).sum
            @type = sum % 12 
            # ここで診断結果を@resultなどにセットしてビューで使う
            case @type
            when 0
                @headline = "あなたはやんちゃパロットタイプ!!"
                @description = "あなたのエネルギーは...."
                @image = "party_parrots/parrot_01.png"
            when 1
                @headline = "あなたはパイレーツパロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_02.png"
            when 2
                @headline = "あなたは博士パロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_03.png"
            when 3
                @headline = "あなたは天使パロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_04.png"
            when 4
                @headline = "あなたは優等生パロットタイプ!!"
                @description = "あなたは「優等生パロットタイプ」のようです。\n優等生パロットは学ぶことが好きなので、いつも本を持ち歩いています。また、パロットと関係を築くときには、勉強中に定期的にお菓子やコーヒーなどの差し入れをしてあげると好感度が上げやすいです。パロット本人は気づいていないですが、王家の血を継いでいます。"
                @image = "party_parrots/parrot_05.png"
            when 5
                @headline = "あなたはDJパロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_06.png"
            when 6
                @headline = "あなたはカウボーイパロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_07.png"
            when 7
                @headline = "あなたは魔術師パロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_07.png"
            when 8
                @headline = "あなたは英国紳士パロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_09.png"
            when 9
                @headline = "あなたは百戦錬磨の王者パロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_10.png"
            when 10
                @headline = "あなたはネコ耳パロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_11.png"
            when 11
                @headline = "あなたはスポーツ少年パロットタイプ!!"
                @description = "いいね"
                @image = "party_parrots/parrot_12.png"
            end
        render :result
        else
            flash.now[:danger] = "誕生日を入力してください"
            render :new , status: :unprocessable_entity
        end
    end

    private
    
    
end
