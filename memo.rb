require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.to_i

 
#続きを書いていきましょう！！(ifで条件分岐)
if memo_type == 1
    
    puts "拡張子を除いたファイル名を入力してください"
    
    newfile_name = gets.chomp
    
    p "メモしたい内容を記入してください"
    p "完了したら「Ctrl + D」を押してください"
    
    memo_content = $stdin.readlines
    
    CSV.open("@{newfile_name}.csv", "w") do |newfile_name|
        newfile_name << ["@{memo_content}"]
    end
    
else
    
    puts "拡張子を除いた編集を実行するファイル名を入力してください"
    
    updatefile_name = gets.chomp
    
    p "追記・修正したい内容を記入してください"
    p "完了したら「Ctrl + D」を押してください"
    
    memo_content = $stdin.readlines
    
    f = CSV.open(updatefile_name.csv)
    s = f.read
    f.close
    p s
    
    CSV.open("@{updatefile_name}.csv", "w") do |updatefile_name|
        updatefile_name << ["@{memo_content}"]
    end
end