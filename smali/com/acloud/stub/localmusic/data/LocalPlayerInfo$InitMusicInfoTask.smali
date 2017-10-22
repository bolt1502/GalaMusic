.class Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;
.super Landroid/os/AsyncTask;
.source "LocalPlayerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitMusicInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private curMusicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation
.end field

.field musicInfoDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;


# direct methods
.method private constructor <init>(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->curMusicInfoList:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->musicInfoDatas:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;-><init>(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)V

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;)Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    return-object v0
.end method

.method private queryMusicInfo()Ljava/util/List;
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    const/16 v15, -0x14

    invoke-static {v15}, Landroid/os/Process;->setThreadPriority(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    new-instance v16, Lcom/acloud/db/StorageSqlManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$3(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/acloud/db/StorageSqlManager;-><init>(Landroid/content/Context;)V

    invoke-static/range {v15 .. v16}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$4(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;Lcom/acloud/db/StorageSqlManager;)V

    .line 197
    const-string v15, "1"

    invoke-static {v15}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mSqlManager:Lcom/acloud/db/StorageSqlManager;
    invoke-static {v15}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$5(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Lcom/acloud/db/StorageSqlManager;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/acloud/db/StorageSqlManager;->query(I)Ljava/util/List;

    move-result-object v8

    .line 200
    .local v8, "musicInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v15

    .line 201
    const-string v16, "table_music_collect_playlist"

    invoke-virtual/range {v15 .. v16}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getCurrectMusicInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 203
    .local v10, "stCollectInfoDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const-string v15, "2"

    invoke-static {v15}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$3(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f060039

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 205
    .local v13, "unknown":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$3(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f060038

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, "totalTime":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-lt v4, v15, :cond_1

    .line 270
    const-string v15, "3"

    invoke-static {v15}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->musicInfoDatas:Ljava/util/List;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->musicInfoDatas:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_0

    .line 274
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v15

    .line 275
    const-string v16, "table_music_currect_playlist"

    invoke-virtual/range {v15 .. v16}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getCurrectMusicInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 274
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->curMusicInfoList:Ljava/util/List;

    .line 278
    :cond_0
    const-string v15, "4"

    invoke-static {v15}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 279
    new-instance v14, Lcom/acloud/utils/ListUtils;

    invoke-direct {v14}, Lcom/acloud/utils/ListUtils;-><init>()V

    .line 280
    .local v14, "utils":Lcom/acloud/utils/ListUtils;, "Lcom/acloud/utils/ListUtils<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->musicInfoDatas:Ljava/util/List;

    invoke-virtual {v14, v15}, Lcom/acloud/utils/ListUtils;->removeDuplicateWithOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->musicInfoDatas:Ljava/util/List;

    .line 282
    const-string v15, "5"

    invoke-static {v15}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->musicInfoDatas:Ljava/util/List;

    new-instance v16, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask$1;-><init>(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;)V

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 290
    const-string v15, "6"

    invoke-static {v15}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->musicInfoDatas:Ljava/util/List;

    return-object v15

    .line 207
    .end local v14    # "utils":Lcom/acloud/utils/ListUtils;, "Lcom/acloud/utils/ListUtils<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :cond_1
    new-instance v5, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-direct {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;-><init>()V

    .line 208
    .local v5, "info":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 209
    .local v9, "path":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "======================path="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 211
    const-string v15, "xy_cd"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 206
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 214
    :cond_3
    const-string v15, "//"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 215
    const-string v15, "//"

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 218
    :cond_4
    invoke-virtual {v5, v9}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setPath(Ljava/lang/String;)V

    .line 219
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 222
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/32 v18, 0x32000

    cmp-long v15, v16, v18

    if-ltz v15, :cond_2

    .line 226
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setName(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 228
    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setArtist(Ljava/lang/String;)V

    .line 232
    :goto_2
    invoke-virtual {v5, v13}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setAlbum(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v5, v11}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setTotalTime(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 235
    .local v12, "type":Ljava/lang/String;
    const-string v15, "ape"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "flac"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 236
    :cond_5
    const/4 v15, 0x2

    invoke-virtual {v5, v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setType(I)V

    .line 241
    :goto_3
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    .line 242
    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/acloud/hanzi/two/HanziToPinyinUtil;->getPinYinTwo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setPinyin(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPinyin()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 244
    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPinyin()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    const/16 v16, 0x0

    aget-char v6, v15, v16

    .line 245
    .local v6, "initial":C
    const/16 v15, 0x61

    if-lt v6, v15, :cond_8

    const/16 v15, 0x7a

    if-gt v6, v15, :cond_8

    .line 246
    invoke-virtual {v5, v6}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setInitial(C)V

    .line 256
    .end local v6    # "initial":C
    :goto_4
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-lt v7, v15, :cond_a

    .line 264
    :goto_6
    const/4 v15, 0x0

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "dirPath":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setDirPath(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->musicInfoDatas:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 230
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v12    # "type":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5, v13}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setArtist(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    .restart local v12    # "type":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setType(I)V

    goto :goto_3

    .line 248
    .restart local v6    # "initial":C
    :cond_8
    const/16 v15, 0x23

    invoke-virtual {v5, v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setInitial(C)V

    goto :goto_4

    .line 251
    .end local v6    # "initial":C
    :cond_9
    const/16 v15, 0x23

    invoke-virtual {v5, v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setInitial(C)V

    goto :goto_4

    .line 257
    .restart local v7    # "j":I
    :cond_a
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 259
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_6

    .line 256
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->queryMusicInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$0(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 170
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    invoke-static {v0, p1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$1(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->curMusicInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->curMusicInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$0(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayInfoList(Ljava/util/List;)V

    .line 180
    :cond_1
    :goto_0
    const-string v0, "----"

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mLocalPlayerCallback:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$2(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mLocalPlayerCallback:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$2(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;->updateMusicList()V

    .line 184
    :cond_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 185
    return-void

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$0(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayInfoList(Ljava/util/List;)V

    goto :goto_0
.end method
