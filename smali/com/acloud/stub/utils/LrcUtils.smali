.class public Lcom/acloud/stub/utils/LrcUtils;
.super Ljava/lang/Object;
.source "LrcUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static codeString(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/acloud/stub/utils/LrcUtils;->getFilecharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "code":Ljava/lang/String;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v0
.end method

.method private static getFilecharset(Ljava/io/File;)Ljava/lang/String;
    .locals 15
    .param p0, "sourceFile"    # Ljava/io/File;

    .prologue
    const/4 v14, -0x2

    const/4 v13, -0x1

    const/16 v12, 0x80

    .line 144
    const-string v1, "GBK"

    .line 145
    .local v1, "charset":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v4, v10, [B

    .line 147
    .local v4, "first3Bytes":[B
    const/4 v2, 0x0

    .line 148
    .local v2, "checked":Z
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 149
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 148
    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 150
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 151
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v0, v4, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 152
    .local v7, "read":I
    if-ne v7, v13, :cond_5

    .line 154
    const/4 v2, 0x1

    .line 171
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 172
    const/4 v6, 0x0

    .line 173
    .local v6, "i":I
    const/4 v8, 0x0

    .line 174
    .local v8, "size":I
    const/16 v10, 0x80

    new-array v5, v10, [B

    .line 175
    .local v5, "headInfos":[B
    invoke-virtual {v0, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    .line 176
    const/16 v10, 0x64

    if-le v8, v10, :cond_1

    .line 177
    const/16 v8, 0x64

    .line 180
    :cond_1
    :goto_1
    if-lt v6, v8, :cond_8

    .line 209
    :cond_2
    if-eq v6, v8, :cond_3

    add-int/lit8 v10, v8, -0x3

    if-lt v6, v10, :cond_4

    .line 210
    :cond_3
    const-string v1, "UTF-8"

    .line 212
    .end local v5    # "headInfos":[B
    .end local v6    # "i":I
    .end local v8    # "size":I
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 216
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "read":I
    :goto_2
    return-object v1

    .line 155
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "read":I
    :cond_5
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    if-ne v10, v13, :cond_6

    .line 156
    const/4 v10, 0x1

    aget-byte v10, v4, v10

    if-ne v10, v14, :cond_6

    .line 157
    const-string v1, "UTF-16LE"

    .line 158
    const/4 v2, 0x1

    .line 159
    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    if-ne v10, v14, :cond_7

    .line 160
    const/4 v10, 0x1

    aget-byte v10, v4, v10

    if-ne v10, v13, :cond_7

    .line 161
    const-string v1, "UTF-16BE"

    .line 162
    const/4 v2, 0x1

    .line 163
    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    const/16 v11, -0x11

    if-ne v10, v11, :cond_0

    .line 164
    const/4 v10, 0x1

    aget-byte v10, v4, v10

    const/16 v11, -0x45

    if-ne v10, v11, :cond_0

    .line 165
    const/4 v10, 0x2

    aget-byte v10, v4, v10

    const/16 v11, -0x41

    if-ne v10, v11, :cond_0

    .line 166
    const-string v1, "UTF-8"

    .line 167
    const/4 v2, 0x1

    goto :goto_0

    .line 181
    .restart local v5    # "headInfos":[B
    .restart local v6    # "i":I
    .restart local v8    # "size":I
    :cond_8
    const/4 v9, 0x0

    .line 182
    .local v9, "step":I
    aget-byte v10, v5, v6

    int-to-char v10, v10

    and-int/lit16 v10, v10, 0x80

    if-nez v10, :cond_9

    .line 183
    const/4 v9, 0x1

    .line 206
    :goto_3
    add-int/2addr v6, v9

    goto :goto_1

    .line 184
    :cond_9
    aget-byte v10, v5, v6

    int-to-char v10, v10

    and-int/lit16 v10, v10, 0xe0

    const/16 v11, 0xc0

    if-ne v10, v11, :cond_a

    .line 185
    add-int/lit8 v10, v6, 0x1

    if-ge v10, v8, :cond_2

    .line 188
    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v5, v10

    int-to-char v10, v10

    and-int/lit16 v10, v10, 0xc0

    if-ne v10, v12, :cond_2

    .line 191
    const/4 v9, 0x2

    .line 192
    goto :goto_3

    :cond_a
    aget-byte v10, v5, v6

    int-to-char v10, v10

    and-int/lit16 v10, v10, 0xf0

    const/16 v11, 0xe0

    if-ne v10, v11, :cond_2

    .line 193
    add-int/lit8 v10, v6, 0x2

    if-ge v10, v8, :cond_2

    .line 196
    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v5, v10

    int-to-char v10, v10

    and-int/lit16 v10, v10, 0xc0

    if-ne v10, v12, :cond_2

    .line 199
    add-int/lit8 v10, v6, 0x2

    aget-byte v10, v5, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v10, v10

    and-int/lit16 v10, v10, 0xc0

    if-ne v10, v12, :cond_2

    .line 202
    const/4 v9, 0x3

    goto :goto_3

    .line 213
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "headInfos":[B
    .end local v6    # "i":I
    .end local v7    # "read":I
    .end local v8    # "size":I
    .end local v9    # "step":I
    :catch_0
    move-exception v3

    .line 214
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getLrcData(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v9, "lrcs":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v9

    .line 34
    :cond_1
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 39
    :try_start_0
    invoke-static {v5}, Lcom/acloud/stub/utils/LrcUtils;->codeString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "code":Ljava/lang/String;
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .local v14, "stream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    .local v7, "in":Ljava/io/BufferedReader;
    const-string v13, ""

    .line 43
    .local v13, "result":Ljava/lang/String;
    const-string v12, "\\[\\d{2}:\\d{2}\\.\\d{2}\\]"

    .line 45
    .local v12, "regEx":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    .line 74
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 75
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 76
    new-instance v17, Lcom/acloud/stub/utils/LrcUtils$1;

    invoke-direct/range {v17 .. v17}, Lcom/acloud/stub/utils/LrcUtils$1;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 83
    .end local v2    # "code":Ljava/lang/String;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v12    # "regEx":Ljava/lang/String;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "code":Ljava/lang/String;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "regEx":Ljava/lang/String;
    .restart local v13    # "result":Ljava/lang/String;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :cond_3
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 48
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 51
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 52
    .local v11, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 54
    .local v10, "matcher":Ljava/util/regex/Matcher;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v16, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-nez v17, :cond_4

    .line 60
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "lrc":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    .line 63
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 67
    new-instance v3, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    invoke-direct {v3}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;-><init>()V

    .line 68
    .local v3, "data":Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->setTime(Ljava/lang/Long;)V

    .line 69
    invoke-virtual {v3, v8}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->setLrc(Ljava/lang/String;)V

    .line 71
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 56
    .end local v3    # "data":Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;
    .end local v6    # "i":I
    .end local v8    # "lrc":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    .line 57
    .local v15, "time":Ljava/lang/String;
    invoke-static {v15}, Lcom/acloud/stub/utils/LrcUtils;->timeToInt(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 85
    .end local v2    # "code":Ljava/lang/String;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    .end local v11    # "pattern":Ljava/util/regex/Pattern;
    .end local v12    # "regEx":Ljava/lang/String;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .end local v15    # "time":Ljava/lang/String;
    .end local v16    # "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_1
    move-exception v4

    .line 86
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 87
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 89
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static timeToInt(Ljava/lang/String;)J
    .locals 10
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 101
    const-wide/16 v2, 0x0

    .line 103
    .local v2, "nTime":J
    const-string v4, "\\d{2}(?=:)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 104
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 106
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    .line 110
    :cond_0
    const-string v4, "\\d{2}(?=\\.)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 111
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    .line 117
    :cond_1
    const-string v4, "\\d{2}(?=\\])"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 118
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 122
    :cond_2
    return-wide v2
.end method
