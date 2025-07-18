class DiagnosesController < ApplicationController
    def index
    end

    def new
    end

    def create
        sleep 1.5

        year  = params["[birthday(1i)]"]
        month = params["[birthday(2i)]"]
        day   = params["[birthday(3i)]"]

        if year.blank? || month.blank? || day.blank?
            flash.now[:danger] = "誕生日を入力して下さい"
            render :new, status: :unprocessable_entity and return
        end

        birthday_str = "#{year}#{month.rjust(2, '0')}#{day.rjust(2, '0')}"
        sum = birthday_str.chars.map(&:to_i).sum
        @type = sum % 12

        if year == "1" && month == "1" && day =="1"
            headline = "あなたは始祖のパロットタイプ!!"
            description = "あなたのパートナーは「始祖のパロット」のようです。\nパロット界の創造主であり、絶対的な存在として君臨しているパロット。世界を8610日で創り、生命を爆誕させた。王家の血を継ぐパロットは始祖のパロットの遠い子孫であり、現在は地上に30人しかいない。"
            image = "party_parrots/parrot_13.png"
            render :result and return
        end

        case @type
        when 0
            headline = "あなたはやんちゃパロットタイプ!!"
            description = "あなたのパートナーは「やんちゃパロット」のようです。\n中高生までは真面目で堅いタイプでしたが、とある事件を境にイメチェンを決意したパロット。見た目や言葉遣いからは荒っぽい印象を受けるかもしれませんが、根は優しくて素直な子なので、温かい目で見守ってあげてください。バイクの話をすると好感度が上がります。あと、本人は自覚していないですが王家の血を継ぐ存在です。"
            image = "party_parrots/parrot_01.png"
        when 1
            headline = "あなたはパイレーツパロットタイプ!!"
            description = "あなたのパートナーは「パイレーツパロット」のようです。\n大陸から離れた孤島で生まれ、偶然島を立ち寄った大海賊との出会いをきっかけに海賊になったパロット。確かな実力と人望で、今では船員をまとめる存在になっています。好きなものは炒飯。あと、本人に自覚はないですが寿司職人の才能を持っています。"
            image = "party_parrots/parrot_02.png"
        when 2
            headline = "あなたは博士パロットタイプ!!"
            description = "あなたのパートナーは「博士パロット」のようです。\n寡黙な博士パロットは基本的には研究室に篭り、他のパロットたちと交流を図ろうとしませんが、一度「仲間」として認識されると非常に饒舌になります。研究のことについて話を聞いてあげると好感度が上がります。あと、本人は自覚がないですが砲丸投げの才能があります。"
            image = "party_parrots/parrot_03.png"
        when 3
            headline = "あなたは天使パロットタイプ!!"
            description = "あなたのパートナーは「天使パロット」のようです。\nきたる「審判の日」に備え、一人でも多くのパロットを救うために天界から地上に降りてきたパロット。ボランティアの著名活動とかにはとりあえずサインするようにしている。そうゆう小さい善行を一つ一つ積み上げていきたいタイプなのだ。"
            image = "party_parrots/parrot_04.png"
        when 4
            headline = "あなたは優等生パロットタイプ!!"
            description = "あなたのパートナーは「優等生パロット」のようです。\n学校では学級委員長とかを率先してやるタイプのパロット。基本的に学ぶことが好きなので、いつも本を持ち歩いています。勉強中にお菓子やコーヒーなどの差し入れをしてあげると好感度を上げやすいです。あと、パロット本人は気づいていないですが王家の血を継いでいます。"
            image = "party_parrots/parrot_05.png"
        when 5
            headline = "あなたはDJパロットタイプ!!"
            description = "あなたのパートナーは「DJパロット」のようです。\n毎週金曜の夜に放送される彼のラジオ番組は全国でNo.1の聴取率を記録し、労働に疲れたリーマンにひと時の安らぎを届けています。若い頃はフロアのDJを目指してましたが、今ではラジオDJの方が自分としてもしっくりくるらしいです。エンタメの話をすると好感度が上がります。あと、本人は気づいてないですが王家の血を継いでいます。"
            image = "party_parrots/parrot_06.png"
        when 6
            headline = "あなたは保安官パロットタイプ!!"
            description = "あなたのパートナーは「保安官パロット」のようです。\n「伝説のガンマン」と呼ばれた叔父に憧れるも、現在は町の保安官として勤めるパロット。クールな雰囲気とは裏腹に可愛いものが好きで、寝るときはお気に入りのぬいぐるみと一緒に寝ます。ゆるキャラの話をすると好感度が上がります。あと、本人には自覚がないですが裁縫の才能があります。"
            image = "party_parrots/parrot_07.png"
        when 7
            headline = "あなたは魔術師パロットタイプ!!"
            description = "あなたのパートナーは「魔術師パロット」のようです。\n現代においても「魔術」の存在を信じており、その証明を行おうとしているパロット。平日は公務員として役所勤めをしているので土日限定で魔術師パロットになります。一定数のファンが存在しており、魔術師パロットとして活動しているときは日常を忘れることができるので本人としては現状で満足しているらしいです。オカルト系の話をすると好感度が上がります。あと、本人は自覚していないですが王家の血を継ぐ存在です。"
            image = "party_parrots/parrot_08.png"
        when 8
            headline = "あなたは英国紳士パロットタイプ!!"
            description = "あなたのパートナーは「英国紳士パロット」のようです。\n英国紳士としての誇りを持っており、礼儀正しさのなかにさりげなくユーモアをしのばせることのできるインテリ派パロット。気高い雰囲気を纏っていますが、打ち解けるとかなり気さくに話してくれます。歴史や紅茶の話をすると好感度が上がります。あと、本人は自覚がないですがコーチングの才能があります。"
            image = "party_parrots/parrot_09.png"
        when 9
            headline = "あなたは百戦錬磨の王者パロットタイプ!!"
            description = "あなたのパートナーは「百戦錬磨の王者パロット」のようです。\n幼少期より自身の拳一つで成り上がってきたパロット。戦闘こそが人格を磨くと信じているので、手合わせをお願いするとその心意気に感動して、好感度が上がる。また、傷が多いことも格好いいと思っているので、適当なところに絆創膏を貼ってあげても喜ぶ。意外とチョロいやつなのだ。"
            image = "party_parrots/parrot_10.png"
        when 10
            headline = "あなたはネコ耳パロットタイプ!!"
            description = "あなたのパートナーは「ネコ耳パロット」のようです。\n小さい頃からめちゃくちゃに可愛がられて育てられたため、「可愛い」は正義であると信じているパロット。めちゃくちゃに愛嬌もあるので、基本的に敵はつくらないタイプだが、音楽はメタル好きでメタル系統のギターコピーが趣味。メタル系の音楽の話をすると好感度があがります。あと、本人は自覚がないですが王家の血を継いています。"
            image = "party_parrots/parrot_11.png"
        when 11
            headline = "あなたはスポーツ少年パロットタイプ!!"
            description = "あなたのパートナーは「スポーツ青年パロット」のようです。\n現在高校2年生でスポーツに励む青年パロット。性格は少々頑固な部分もあるが、誠実で実直な面も持ち合わせています。また、帰宅すると一番にVtuberの配信をチェックする日課を持ち、Vtuber関連の話をすると好感度が上がります。あと、本人は自覚がないですが歌舞伎の才能があります。"
            image = "party_parrots/parrot_12.png"
        end

        diagnosis = Diagnosis.create!(
            headline: headline,
            description: description,
            image: image,
        )

        redirect_to diagnosis_result_path(diagnosis.id)
    end

    def result
        @diagnosis = Diagnosis.find(params[:id])
        @headline = @diagnosis.headline
        @description = @diagnosis.description
        @image = @diagnosis.image
    end
end
