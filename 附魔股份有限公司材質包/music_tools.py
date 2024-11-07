import os
from pydub import AudioSegment

def reduce_volume(input_folder, output_folder, reduction_ratio=0.5):
    # 確保輸出資料夾存在
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # 掃描所有 .ogg 檔案
    for filename in os.listdir(input_folder):
        if filename.endswith(".ogg"):
            file_path = os.path.join(input_folder, filename)
            output_path = os.path.join(output_folder, filename)
            
            # 讀取音頻檔案
            audio = AudioSegment.from_file(file_path, format="ogg")
            
            # 降低音量
            reduced_audio = audio - (20 * (1 - reduction_ratio))
            
            # 輸出新的音頻檔案
            reduced_audio.export(output_path, format="ogg")
            print(f"Processed file: {filename}")

def convert_mp3_to_ogg(input_folder, output_folder):
    # 確保輸出資料夾存在
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # 掃描所有 .mp3 檔案
    for filename in os.listdir(input_folder):
        if filename.endswith(".mp3"):
            file_path = os.path.join(input_folder, filename)
            output_path = os.path.join(output_folder, os.path.splitext(filename)[0] + ".ogg")
            
            # 讀取音頻檔案
            audio = AudioSegment.from_file(file_path, format="mp3")
            
            # 輸出新的音頻檔案
            audio.export(output_path, format="ogg")
            print(f"Converted file: {filename} to {output_path}")


input_folder = "./music_tool/input"  # 當前資料夾
output_folder = "./music_tool/output"  # 輸出資料夾

#調整音量
#reduce_volume(input_folder, output_folder)

#轉黨
convert_mp3_to_ogg(input_folder, output_folder)