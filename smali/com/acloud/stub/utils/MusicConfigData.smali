.class public Lcom/acloud/stub/utils/MusicConfigData;
.super Ljava/lang/Object;
.source "MusicConfigData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsFavorite(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 78
    const-string v2, "music_isfavorite"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 80
    :cond_0
    return v1
.end method

.method public static getMusicClassify(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 103
    const-string v2, "music_classify"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 105
    :cond_0
    return v1
.end method

.method public static getMusicFromChoose(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 229
    const-string v2, "music_from_choose"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 231
    :cond_0
    return v1
.end method

.method public static getMusicMemmoryData(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 154
    const-string v1, "music_memmory_data"

    const-string v2, "0-0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0-0"

    goto :goto_0
.end method

.method public static getMusicMemmoryDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 254
    const-string v1, "music_memmory_directory_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getMusicMemmoryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 129
    const-string v1, "music_memmory_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getMusicMemmorySearchText(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 204
    const-string v1, "music_memmory_search_text"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getMusicMemmorySinger(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 179
    const-string v1, "music_memmory_singer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getMusicType(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 53
    const-string v2, "music_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 55
    :cond_0
    return v1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    if-eqz p0, :cond_0

    .line 266
    const-string v0, "music_config_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSongPlayMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 28
    const-string v2, "music_playmode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 30
    :cond_0
    return v1
.end method

.method public static setIsFavorite(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFavorite"    # Z

    .prologue
    .line 64
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_isfavorite"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    :cond_0
    return-void
.end method

.method public static setMusicClassify(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "musicClassify"    # I

    .prologue
    .line 89
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_classify"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    :cond_0
    return-void
.end method

.method public static setMusicFromChoose(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # I

    .prologue
    .line 215
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_from_choose"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    :cond_0
    return-void
.end method

.method public static setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "memmoryData"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_memmory_data"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    :cond_0
    return-void
.end method

.method public static setMusicMemmoryDirPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "memmoryDirPath"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_memmory_directory_path"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    :cond_0
    return-void
.end method

.method public static setMusicMemmoryPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 116
    invoke-static {p1}, Lcom/acloud/stub/utils/PathUtils;->getSpecialSymbolsFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_memmory_path"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    :cond_0
    return-void
.end method

.method public static setMusicMemmorySearchText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_memmory_search_text"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    :cond_0
    return-void
.end method

.method public static setMusicMemmorySinger(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "singer"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_memmory_singer"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    :cond_0
    return-void
.end method

.method public static setMusicType(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "musicType"    # I

    .prologue
    .line 39
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_type"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    :cond_0
    return-void
.end method

.method public static setSongPlayMode(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "songPlayMode"    # I

    .prologue
    .line 14
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "music_playmode"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 18
    :cond_0
    return-void
.end method
