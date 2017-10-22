.class public Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;
.super Ljava/lang/Object;
.source "LocalPlayerInfo.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;,
        Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;
    }
.end annotation


# static fields
.field private static pThis:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;


# instance fields
.field private extras:[Ljava/lang/String;

.field private initialList:[C

.field private isSameContext:Z

.field private mContext:Landroid/content/Context;

.field private mCurMusicIndex:I

.field private mCurMusicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPlayPath:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private mLocalPlayerCallback:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;

.field private mSqlManager:Lcom/acloud/db/StorageSqlManager;

.field private mTotalCount:I

.field private mTotalMusicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->pThis:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v3, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    .line 35
    iput-object v3, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    .line 36
    iput-object v3, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurPlayPath:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    .line 39
    iput-object v3, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mSqlManager:Lcom/acloud/db/StorageSqlManager;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mFrom:Ljava/lang/String;

    .line 42
    iput-boolean v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->isSameContext:Z

    .line 43
    const/16 v0, 0x1c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 44
    iput-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->initialList:[C

    .line 45
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "113"

    aput-object v1, v0, v4

    const-string v1, "4"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "0x00"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    .line 53
    iput-object v3, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mLocalPlayerCallback:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;

    .line 574
    iput v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalCount:I

    .line 575
    iput v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicIndex:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    .line 117
    return-void

    .line 43
    :array_0
    .array-data 2
        0x2as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x23s
    .end array-data
.end method

.method static synthetic access$0(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mLocalPlayerCallback:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;Lcom/acloud/db/StorageSqlManager;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mSqlManager:Lcom/acloud/db/StorageSqlManager;

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;)Lcom/acloud/db/StorageSqlManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mSqlManager:Lcom/acloud/db/StorageSqlManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->compareInitial(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private compareInitial(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 298
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 300
    .local v1, "lhsStrs":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 301
    .local v2, "rhsStrs":[C
    array-length v6, v1

    array-length v7, v2

    if-le v6, v7, :cond_2

    array-length v3, v2

    .line 302
    .local v3, "size":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_3

    .line 317
    .end local v0    # "i":I
    .end local v1    # "lhsStrs":[C
    .end local v2    # "rhsStrs":[C
    .end local v3    # "size":I
    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_2
    return v4

    .line 301
    .restart local v1    # "lhsStrs":[C
    .restart local v2    # "rhsStrs":[C
    :cond_2
    array-length v3, v1

    goto :goto_0

    .line 303
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_3
    aget-char v6, v1, v0

    aget-char v7, v2, v0

    if-gt v6, v7, :cond_1

    .line 305
    aget-char v6, v1, v0

    aget-char v7, v2, v0

    if-ge v6, v7, :cond_4

    move v4, v5

    .line 306
    goto :goto_2

    .line 308
    :cond_4
    if-ne v0, v3, :cond_5

    .line 309
    array-length v6, v1

    if-lt v3, v6, :cond_1

    .line 311
    array-length v6, v2

    if-ge v3, v6, :cond_5

    move v4, v5

    .line 312
    goto :goto_2

    .line 302
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getCurIndex(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 591
    if-eqz p1, :cond_0

    .line 592
    const-string v2, "music_canbus_info"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 593
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "musicIndex"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 595
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method public static getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->pThis:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    invoke-direct {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;-><init>()V

    sput-object v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->pThis:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    .line 63
    :cond_0
    sget-object v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->pThis:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    return-object v0
.end method

.method private getTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 679
    const-wide/16 v10, 0x3e8

    div-long v6, p1, v10

    .line 680
    .local v6, "nowTime":J
    const-wide/16 v10, 0x3c

    rem-long v8, v6, v10

    .line 681
    .local v8, "second":J
    const-wide/16 v10, 0x3c

    div-long v4, v6, v10

    .line 682
    .local v4, "minuteTime":J
    const-wide/16 v10, 0x3c

    div-long v0, v4, v10

    .line 683
    .local v0, "hour":J
    const-wide/16 v10, 0x3c

    rem-long v2, v4, v10

    .line 684
    .local v2, "minute":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private getTotalCount(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 604
    if-eqz p1, :cond_0

    .line 605
    const-string v2, "music_canbus_info"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 606
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "totalCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 608
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method private releasePlayerInfo()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->pThis:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->pThis:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    invoke-direct {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->releasePlayerInfo()V

    .line 73
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->pThis:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    .line 74
    return-void
.end method

.method private saveCurIndex(IILandroid/content/Context;)V
    .locals 3
    .param p1, "musicIndex"    # I
    .param p2, "totalCount"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    if-eqz p3, :cond_0

    .line 579
    const-string v1, "music_canbus_info"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 580
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "musicIndex"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 581
    const-string v2, "totalCount"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 583
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkMusicFileExits()V
    .locals 9

    .prologue
    .line 324
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "memmoryPath":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 326
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 327
    const/4 v3, 0x0

    .line 328
    .local v3, "notExistsFileCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 351
    .end local v0    # "i":I
    .end local v3    # "notExistsFileCount":I
    .end local v5    # "size":I
    :goto_1
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v6

    const-string v7, "table_music_currect_playlist"

    iget-object v8, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-virtual {v6, v7, v8}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    .line 352
    :goto_2
    return-void

    .line 329
    .restart local v0    # "i":I
    .restart local v3    # "notExistsFileCount":I
    .restart local v5    # "size":I
    :cond_0
    const/4 v6, 0x3

    if-le v3, v6, :cond_1

    .line 330
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 331
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    iget-object v7, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 334
    :cond_1
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v6}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v2, "musicFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 337
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    add-int/lit8 v5, v5, -0x1

    .line 339
    add-int/lit8 v0, v0, -0x1

    .line 340
    add-int/lit8 v3, v3, 0x1

    .line 328
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "i":I
    .end local v2    # "musicFile":Ljava/io/File;
    .end local v3    # "notExistsFileCount":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "size":I
    :cond_3
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 345
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    iget-object v7, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 348
    :cond_4
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 349
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    iget-object v7, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public clearAllCollect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 452
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, "isSetCurListCollect":Z
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 465
    if-eqz v1, :cond_2

    .line 466
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v2

    const-string v3, "table_music_currect_playlist"

    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    .line 468
    :cond_2
    return-void

    .line 452
    .end local v1    # "isSetCurListCollect":Z
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 453
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {v0, v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_0

    .line 459
    .end local v0    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .restart local v1    # "isSetCurListCollect":Z
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 460
    .restart local v0    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    const/4 v1, 0x1

    .line 462
    invoke-virtual {v0, v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_1
.end method

.method public clearCollects(Ljava/util/List;)V
    .locals 9
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
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v8, 0x0

    .line 475
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 484
    const/4 v3, 0x0

    .line 485
    .local v3, "isSetCurListCollect":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 497
    if-eqz v3, :cond_1

    .line 498
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v4

    const-string v5, "table_music_currect_playlist"

    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    .line 500
    :cond_1
    return-void

    .line 475
    .end local v2    # "i":I
    .end local v3    # "isSetCurListCollect":Z
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 476
    .local v1, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 477
    .local v0, "clearData":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 478
    invoke-virtual {v1, v8}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_0

    .line 486
    .end local v0    # "clearData":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .end local v1    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .restart local v2    # "i":I
    .restart local v3    # "isSetCurListCollect":Z
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 485
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 487
    .restart local v0    # "clearData":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 488
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 489
    const/4 v3, 0x1

    .line 490
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v4, v8}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_2
.end method

.method public getBoolean()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->isSameContext:Z

    return v0
.end method

.method public getCollectList()Ljava/util/List;
    .locals 4
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
    .line 536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 542
    return-object v1

    .line 537
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 538
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCurPlayInfoList()Ljava/util/List;
    .locals 1
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
    .line 93
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getCurPlayPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurPlayPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicList()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;-><init>(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;)V

    .line 143
    .local v0, "task":Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method

.method public getMusicListFromInitial(C)Ljava/util/List;
    .locals 4
    .param p1, "initial"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v1, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 414
    return-object v1

    .line 409
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 410
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getInitial()C

    move-result v3

    if-ne v3, p1, :cond_0

    .line 411
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 551
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 554
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalMusicInfoList()Ljava/util/List;
    .locals 1
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
    .line 111
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getWrongInitialList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v3, "wrongInitialList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->initialList:[C

    array-length v4, v4

    if-lt v1, v4, :cond_1

    .line 399
    .end local v1    # "i":I
    :cond_0
    return-object v3

    .line 386
    .restart local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 387
    .local v0, "hasInitial":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 393
    :goto_2
    if-nez v0, :cond_2

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "======================initialList="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->initialList:[C

    aget-char v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 395
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->initialList:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_3
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->initialList:[C

    aget-char v5, v4, v1

    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getInitial()C

    move-result v4

    if-ne v5, v4, :cond_4

    .line 389
    const/4 v0, 0x1

    .line 390
    goto :goto_2

    .line 387
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mLocalPlayerCallback:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;

    .line 128
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mFrom:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "activity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mFrom:Ljava/lang/String;

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->isSameContext:Z

    .line 135
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mFrom:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getMusicList()V

    .line 138
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->isSameContext:Z

    goto :goto_0
.end method

.method public resumeCheckFileExsits()V
    .locals 4

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "size":I
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 359
    :cond_0
    if-eqz v1, :cond_1

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 367
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 368
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_4

    .line 376
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 361
    .restart local v0    # "i":I
    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 362
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 363
    add-int/lit8 v1, v1, -0x1

    .line 364
    add-int/lit8 v0, v0, -0x1

    .line 360
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_4
    new-instance v3, Ljava/io/File;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 370
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 371
    add-int/lit8 v1, v1, -0x1

    .line 372
    add-int/lit8 v0, v0, -0x1

    .line 368
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V
    .locals 11
    .param p1, "isOpen"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "musicIndex"    # I
    .param p4, "totalCount"    # I
    .param p5, "time"    # J
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 620
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 621
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    .line 623
    :cond_0
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    if-nez v6, :cond_2

    .line 671
    :cond_1
    :goto_0
    return-void

    .line 627
    :cond_2
    if-eqz p2, :cond_1

    .line 630
    const-string v6, "sendDataToCanbus __________________________"

    invoke-static {v6}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 632
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    .line 633
    iget v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicIndex:I

    if-nez v6, :cond_3

    iget v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalCount:I

    if-nez v6, :cond_3

    .line 634
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurIndex(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicIndex:I

    .line 635
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalCount(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalCount:I

    .line 637
    :cond_3
    iget p3, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicIndex:I

    .line 638
    iget p4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalCount:I

    .line 640
    :cond_4
    iget v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicIndex:I

    if-ne v6, p3, :cond_5

    iget v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalCount:I

    if-eq v6, p4, :cond_6

    .line 641
    :cond_5
    move-object/from16 v0, p7

    invoke-direct {p0, p3, p4, v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->saveCurIndex(IILandroid/content/Context;)V

    .line 643
    iput p4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalCount:I

    .line 644
    iput p3, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicIndex:I

    .line 647
    :cond_6
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, "paths":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 649
    .local v3, "isSdcard":Z
    if-eqz v4, :cond_7

    array-length v6, v4

    const/4 v7, 0x2

    if-le v6, v7, :cond_7

    .line 650
    const/4 v6, 0x2

    aget-object v6, v4, v6

    const-string v7, "sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 653
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "musicIndex:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " totalCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 655
    iget-object v7, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    const/4 v8, 0x2

    if-eqz p1, :cond_8

    const-string v6, "1"

    :goto_1
    aput-object v6, v7, v8

    .line 656
    iget-object v7, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    const/4 v8, 0x3

    if-eqz v3, :cond_9

    const-string v6, "1"

    :goto_2
    aput-object v6, v7, v8

    .line 657
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 658
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    const/4 v7, 0x6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 659
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTime(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 660
    .local v5, "times":[Ljava/lang/String;
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    const/4 v7, 0x7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    aput-object v8, v6, v7

    .line 661
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    const/16 v7, 0x8

    const/4 v8, 0x1

    aget-object v8, v5, v8

    aput-object v8, v6, v7

    .line 662
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    const/16 v7, 0x9

    const/4 v8, 0x2

    aget-object v8, v5, v8

    aput-object v8, v6, v7

    .line 663
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.acloud.intent.android.XY.ANDROID.CANBUSDISPINFO3"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "extras"

    iget-object v7, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 668
    const-string v6, "extras"

    iget-object v7, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->extras:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v6, "com.acloud.intent.android.XY.ANDROID.CANBUSDISPINFO1"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    iget-object v6, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 655
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "times":[Ljava/lang/String;
    :cond_8
    const-string v6, "0"

    goto :goto_1

    .line 656
    :cond_9
    const-string v6, "2"

    goto :goto_2
.end method

.method public setBoolean(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->isSameContext:Z

    .line 82
    return-void
.end method

.method public setCurPlayInfoList(Ljava/util/List;)V
    .locals 3
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
    .line 101
    .local p1, "currectPlayList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v0

    const-string v1, "table_music_currect_playlist"

    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    return-void
.end method

.method public setCurPlayPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurPlayPath:Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public setMFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mFrom:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setMusicIsCollect(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isCollect"    # Z

    .prologue
    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 434
    :goto_1
    const/4 v1, 0x0

    .line 435
    .local v1, "isSetCurListCollect":Z
    iget-object v2, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 443
    :goto_2
    if-eqz v1, :cond_0

    .line 444
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v2

    const-string v3, "table_music_currect_playlist"

    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 427
    .end local v1    # "isSetCurListCollect":Z
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 428
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 429
    invoke-virtual {v0, p2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_1

    .line 435
    .end local v0    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .restart local v1    # "isSetCurListCollect":Z
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 436
    .restart local v0    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 437
    invoke-virtual {v0, p2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    .line 438
    const/4 v1, 0x1

    .line 439
    goto :goto_2
.end method

.method public setMusicIsCollect(Ljava/util/List;)V
    .locals 7
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
    .line 507
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v2, 0x0

    .line 508
    .local v2, "isSetCurListCollect":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 526
    if-eqz v2, :cond_1

    .line 527
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v3

    const-string v4, "table_music_currect_playlist"

    iget-object v5, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    .line 529
    :cond_1
    return-void

    .line 508
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 509
    .local v0, "collectData":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mTotalMusicInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 516
    :goto_1
    iget-object v4, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->mCurMusicInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 517
    .local v1, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 518
    if-nez v2, :cond_5

    .line 519
    const/4 v2, 0x1

    .line 521
    :cond_5
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_0

    .line 509
    .end local v1    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 510
    .restart local v1    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 511
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_1
.end method
