//
//  ContentView.swift
//  MyJankenApp
//
//  Created by 乾亮太朗 on 2022/05/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            
            //スペースの追加
            Spacer()
                
                if answerNumber == 0 {
                    // 初期画面の表示
                    Text("これからジャンケンをします")
                        .padding(.bottom)
            }else if answerNumber == 1 {
                //ジャンケンの数字が１であればグーを表示
                Image("gu")//グーの画像を設定このままだとフルサイズ
                    .resizable()//リサイズを設定
                    .aspectRatio(contentMode: .fit)//画面内に収まるように調整
                //スペースの追加
                Spacer()
                    
                //ジャンケンの種類を指定
                Text("グー")
                    .padding(.bottom)
                
            }else if answerNumber == 2 {
                //ジャンケンの数字が2であればチョキを表示
                Image("choki")//チョキの画像を設定このままだとフルサイズ
                    .resizable()//リサイズを設定
                    .aspectRatio(contentMode: .fit)//画面内に収まるように調整
                //スペースの追加
                Spacer()
                //ジャンケンの種類を指定
                Text("チョキ")
                    .padding(.bottom)
                
                
            }else {
                //ジャンケンの数字が３であればパーを表示
                Image("pa")//パーの画像を設定このままだとフルサイズ
                    .resizable()//リサイズを設定
                    .aspectRatio(contentMode: .fit)//画面内に収まるように調整
                //スペースの追加
                Spacer()
                //ジャンケンの種類を指定
                Text("パー")
                    .padding(.bottom)
                
                
            }
            //比較演算子
            //＝＝　等しい
            //！＝　等しくない
            
            
            Button(action: {
                
                var newAnswerNumber = 0
                //変数newAnswerNumberを定義して０を代入
                //新しいジャンケンの結果を一時的に格納する変数を設ける
                
                //リピートは繰り返しを意味する
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                    //1~3の数字をランダムに算出
                }while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
                //while：繰り返し文answerNumberとnewAnswerNumberが同じ場合。
                //新しいジャンケンの結果を格納
            }) {
              Text("ジャンケンをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

