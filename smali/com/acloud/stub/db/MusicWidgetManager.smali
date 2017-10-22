.class public Lcom/acloud/stub/db/MusicWidgetManager;
.super Ljava/lang/Object;
.source "MusicWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;,
        Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;,
        Lcom/acloud/stub/db/MusicWidgetManager$QueryHandler;,
        Lcom/acloud/stub/db/MusicWidgetManager$QueryLocalHandler;
    }
.end annotation


# static fields
.field private static final FLAG_NEXT:Ljava/lang/String; = "flag_next"

.field private static final FLAG_PLAY:Ljava/lang/String; = "flag_play"

.field private static final FLAG_PREV:Ljava/lang/String; = "flag_prev"

.field private static PRE_FILE_NAME:Ljava/lang/String; = null

.field private static PRE_KEY_PATH:Ljava/lang/String; = null

.field private static PRE_KEY_PROGRESS:Ljava/lang/String; = null

.field private static final QUERY_PLAY_LIST:I = 0x0

.field private static final QUETY_THUMBNAIL:I = 0x1

.field public static final SCAN_NEXT:I = 0x1

.field public static final SCAN_PLAY:I = 0x0

.field public static final SCAN_PREV:I = 0x2

.field private static TABLE_COLUMN_ID:Ljava/lang/String; = null

.field private static TABLE_COLUMN_MUSICID:Ljava/lang/String; = null

.field private static TABLE_COLUMN_NAME:Ljava/lang/String; = null

.field private static TABLE_COLUMN_PATH:Ljava/lang/String; = null

.field private static TABLE_COLUMN_PROGRESS:Ljava/lang/String; = null

.field private static TABLE_CURPLAY_INFO:Ljava/lang/String; = null

.field private static TABLE_PLAY_LIST:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MusicWidgetManager"

.field private static final TOKEN_QUERY_ALL_LIST:I = 0x1

.field private static final TOKEN_QUERY_PLAY_INFO:I

.field private static mContext:Landroid/content/Context;

.field public static statues:I


# instance fields
.field private isEnable:Z

.field private mCurPlayIndex:I

.field private mCurPlayMusicPath:Ljava/lang/String;

.field private mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

.field private mEvent:I

.field private mHisPlayPath:Ljava/lang/String;

.field private mHisPlayProgress:I

.field private mOnQueryLisenter:Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;

.field private mPlayList:Lcom/acloud/stub/db/PlayList;

.field private mScanCount:I

.field private mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/acloud/stub/db/MusicWidgetManager;->statues:I

    .line 47
    const-string v0, "widget"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_FILE_NAME:Ljava/lang/String;

    .line 49
    const-string v0, "path"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PATH:Ljava/lang/String;

    .line 51
    const-string v0, "progress"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PROGRESS:Ljava/lang/String;

    .line 55
    const-string v0, "tbl_curplaymusic"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_CURPLAY_INFO:Ljava/lang/String;

    .line 57
    const-string v0, "tbl_musiclist"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_PLAY_LIST:Ljava/lang/String;

    .line 59
    const-string v0, "path"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_PATH:Ljava/lang/String;

    .line 61
    const-string v0, "name"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_NAME:Ljava/lang/String;

    .line 63
    const-string v0, "id"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_ID:Ljava/lang/String;

    .line 65
    const-string v0, "musicId"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_MUSICID:Ljava/lang/String;

    .line 67
    const-string v0, "progress"

    sput-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_PROGRESS:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lisenter"    # Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;
    .param p3, "widgetCallBack"    # Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mEvent:I

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayPath:Ljava/lang/String;

    .line 86
    iput v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayProgress:I

    .line 89
    iput-boolean v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->isEnable:Z

    .line 93
    iput v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    .line 94
    const-string v1, ""

    iput-object v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    .line 501
    iput v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mScanCount:I

    .line 107
    sput-object p1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    .line 108
    iput-object p3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    .line 110
    new-instance v1, Lcom/acloud/stub/db/PlayList;

    invoke-direct {v1}, Lcom/acloud/stub/db/PlayList;-><init>()V

    iput-object v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    .line 112
    iput-object p2, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mOnQueryLisenter:Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;

    .line 114
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    .line 115
    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_FILE_NAME:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "preferences":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PATH:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PROGRESS:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PATH:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayPath:Ljava/lang/String;

    .line 119
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PROGRESS:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayProgress:I

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/db/MusicWidgetManager;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mEvent:I

    return v0
.end method

.method static synthetic access$1(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/db/PlayList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    return-object v0
.end method

.method static synthetic access$10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_PLAY_LIST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    return-object v0
.end method

.method static synthetic access$12(Lcom/acloud/stub/db/MusicWidgetManager;I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    return-void
.end method

.method static synthetic access$13(Lcom/acloud/stub/db/MusicWidgetManager;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    return v0
.end method

.method static synthetic access$14(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/acloud/stub/db/MusicWidgetManager;->playCurMusic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15()Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$16(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/acloud/stub/db/MusicWidgetManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/acloud/stub/db/MusicWidgetManager;->getCurPlayerMusicIndex(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_MUSICID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_PROGRESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/acloud/stub/db/MusicWidgetManager;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/acloud/stub/db/MusicWidgetManager;->queryLocalePlayList()V

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/db/DatabaseHelper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_CURPLAY_INFO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getArtistImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "musicName"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->getSDPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/picture/artistpic/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "strArtistPicPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/picture/artistpic/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "strCacheArtistPicPath":Ljava/lang/String;
    const-string v0, ""

    .line 311
    .local v0, "artistPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    .line 312
    .local v3, "sdCardFileExists":Z
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    .line 313
    .local v2, "cacheFileExists":Z
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 314
    :cond_0
    const-string v7, "-"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 316
    const-string v7, "-"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "artists":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 318
    const/4 v7, 0x0

    aget-object v4, v1, v7

    .line 319
    .local v4, "strArtistName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 330
    const-string v0, ""

    .line 337
    .end local v1    # "artists":[Ljava/lang/String;
    .end local v4    # "strArtistName":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 322
    .restart local v1    # "artists":[Ljava/lang/String;
    .restart local v4    # "strArtistName":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurPlayerMusicIndex(Ljava/lang/String;)V
    .locals 5
    .param p1, "memmoryPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 226
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    iput v4, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 238
    :goto_2
    iget v2, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 239
    :cond_2
    iput v4, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    goto :goto_0

    .line 233
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    iput v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    goto :goto_2

    .line 232
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    .end local v1    # "i":I
    :cond_5
    iput v4, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    goto :goto_0
.end method

.method private static getSDPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "sdDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 347
    const-string v4, "mounted"

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 348
    .local v0, "sdCardExist":Z
    const-string v2, ""

    .line 349
    .local v2, "strSdPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    :cond_0
    return-object v2
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 730
    const-string v0, "mounted"

    .line 731
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private playCurMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "playPath"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    invoke-interface {v0, p1}, Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;->play(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method private queryLocalePlayList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 265
    new-instance v0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;

    invoke-direct {v0, p0}, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;-><init>(Lcom/acloud/stub/db/MusicWidgetManager;)V

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    return-void
.end method


# virtual methods
.method public asyncQueryPlayList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/acloud/stub/db/MusicWidgetManager$1;

    invoke-direct {v2, p0, p1}, Lcom/acloud/stub/db/MusicWidgetManager$1;-><init>(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->init(Landroid/content/Context;Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public clearPlayList()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v0}, Lcom/acloud/stub/db/PlayList;->clear()V

    .line 435
    return-void
.end method

.method public clearSavePlayInfo()V
    .locals 4

    .prologue
    .line 414
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    .line 415
    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_FILE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 414
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 418
    .local v0, "preferences":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PATH:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PROGRESS:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 419
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCurPlayIndex()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    return v0
.end method

.method public getCurPlayMusic(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setMFrom(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/acloud/stub/db/MusicWidgetManager;->getCurPlayerMusicIndex(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;

    .line 194
    :goto_0
    return-object v0

    .line 189
    :cond_0
    const-string v0, "init"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    const/4 v0, 0x0

    sput v0, Lcom/acloud/stub/db/MusicWidgetManager;->statues:I

    .line 191
    const-string v0, "flag_play"

    const-string v1, "service"

    invoke-virtual {p0, v0, v1}, Lcom/acloud/stub/db/MusicWidgetManager;->asyncQueryPlayList(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getPlayList()Lcom/acloud/stub/db/PlayList;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    return-object v0
.end method

.method public getSeek()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 253
    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmoryData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "memmoryTime":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 257
    :cond_0
    return v1
.end method

.method public getTotalCount()I
    .locals 2

    .prologue
    .line 747
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 748
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz v0, :cond_0

    .line 749
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 751
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->isEnable:Z

    return v0
.end method

.method public isHavePlayInfo()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nativeToWidget(Ljava/lang/String;)V
    .locals 0
    .param p1, "control"    # Ljava/lang/String;

    .prologue
    .line 492
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "MusicWidgetManager"

    const-string v1, "release mDatabaseHelper.closeDB:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/acloud/stub/db/DatabaseHelper;->closeDB()V

    .line 499
    :cond_0
    return-void
.end method

.method public savePlayInfo(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const/4 v5, 0x0

    .line 378
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v2}, Lcom/acloud/stub/db/PlayList;->getCurPlayEntry()Lcom/acloud/stub/db/PlayEntry;

    move-result-object v0

    .line 379
    .local v0, "entry":Lcom/acloud/stub/db/PlayEntry;
    if-eqz v0, :cond_0

    .line 380
    const-string v2, "MusicWidgetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "savePlayInfo mDatabaseHelper.hasDataBase():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    invoke-virtual {v4}, Lcom/acloud/stub/db/DatabaseHelper;->hasDataBase()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/acloud/stub/db/DatabaseHelper;->hasDataBase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    const-string v2, "MusicWidgetManager"

    const-string v3, "savePlayInfo mDatabaseHelper.delete:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    sget-object v3, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_CURPLAY_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v5}, Lcom/acloud/stub/db/DatabaseHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 388
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_MUSICID:Ljava/lang/String;

    iget v3, v0, Lcom/acloud/stub/db/PlayEntry;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_PROGRESS:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    sget-object v3, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_CURPLAY_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/acloud/stub/db/DatabaseHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 393
    const-string v2, "MusicWidgetManager"

    const-string v3, "savePlayInfo mDatabaseHelper.insert:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public savePlayInfoToSettings(Ljava/lang/String;I)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 404
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    .line 405
    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_FILE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    .line 404
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 406
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PATH:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 407
    sget-object v2, Lcom/acloud/stub/db/MusicWidgetManager;->PRE_KEY_PROGRESS:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    return-void
.end method

.method public selectNext()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 201
    const/4 v1, 0x0

    iput v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    .line 203
    :cond_0
    iget v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 207
    :goto_0
    return-object v1

    .line 205
    :cond_1
    const/4 v1, 0x1

    sput v1, Lcom/acloud/stub/db/MusicWidgetManager;->statues:I

    .line 206
    const-string v1, "flag_next"

    const-string v2, "service"

    invoke-virtual {p0, v1, v2}, Lcom/acloud/stub/db/MusicWidgetManager;->asyncQueryPlayList(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, ""

    goto :goto_0
.end method

.method public selectPre()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    const-string v1, "selectPre ____________1"

    invoke-static {v1}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 213
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    if-gez v1, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    .line 217
    :cond_0
    iget v1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 219
    :cond_1
    const-string v1, "selectPre ____________2"

    invoke-static {v1}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x2

    sput v1, Lcom/acloud/stub/db/MusicWidgetManager;->statues:I

    .line 221
    const-string v1, "flag_prev"

    const-string v2, "service"

    invoke-virtual {p0, v1, v2}, Lcom/acloud/stub/db/MusicWidgetManager;->asyncQueryPlayList(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, ""

    goto :goto_0
.end method

.method public sendToInit()V
    .locals 2

    .prologue
    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "update.widget.btnfun"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method public sendToPause()V
    .locals 3

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update.widget.playbtnstate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PlayState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    return-void
.end method

.method public sendToPlay(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update.widget.songname"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "curplaysong"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "PlayState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    const-string v1, "curplaysongpath"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "curMusicIndex"

    invoke-virtual {p0}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/db/PlayList;->getCurPlayIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v1, "totalMusicCount"

    invoke-virtual {p0}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/db/PlayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v1, "artistPicPath"

    invoke-static {p1}, Lcom/acloud/stub/db/MusicWidgetManager;->getArtistImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 289
    :try_start_0
    const-string v1, "TAG"

    const-string v2, "sendToPlay ____ widget"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendToPlayState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 480
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 481
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "update.widget.playbtnstate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v1, "PlayState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    return-void
.end method

.method public sendToProgress(IIJZLjava/lang/String;)V
    .locals 3
    .param p1, "max"    # I
    .param p2, "val"    # I
    .param p3, "time"    # J
    .param p5, "isExistMusicApp"    # Z
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update.widget.update_proBar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "proBarmax"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string v1, "proBarvalue"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    const-string v1, "curplaytime"

    invoke-static {p3, p4}, Lio/vov/utils/StringUtils;->generateTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v1, "isExistMusicApp"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 453
    const-string v1, "curplaysong"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v1, "artistPicPath"

    invoke-static {p6}, Lcom/acloud/stub/db/MusicWidgetManager;->getArtistImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    sget-object v1, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 460
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->isEnable:Z

    .line 104
    return-void
.end method

.method public setHisPlayPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayPath:Ljava/lang/String;

    .line 600
    return-void
.end method

.method protected updatePlayList(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x3

    .line 509
    const/4 v1, 0x0

    .line 510
    .local v1, "isChangeSdCard":Z
    if-eqz p1, :cond_1

    .line 511
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v3}, Lcom/acloud/stub/db/PlayList;->clearlist()V

    .line 513
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 561
    :cond_1
    const-string v3, "MusicWidgetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mPlayList.size():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v5}, Lcom/acloud/stub/db/PlayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v3}, Lcom/acloud/stub/db/PlayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 565
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->hasSDCard()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v4}, Lcom/acloud/stub/db/PlayList;->getCurPlayEntry()Lcom/acloud/stub/db/PlayEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 567
    const-string v3, "MusicWidgetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mPlayList.getCurPlayEntry().path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    iget-object v5, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v5}, Lcom/acloud/stub/db/PlayList;->getCurPlayEntry()Lcom/acloud/stub/db/PlayEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 567
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v3}, Lcom/acloud/stub/db/PlayList;->clear()V

    .line 573
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/acloud/stub/db/DatabaseHelper;->closeDB()V

    .line 574
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    .line 575
    const/4 v1, 0x1

    .line 579
    :cond_2
    const-string v3, "MusicWidgetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mDatabaseHelper:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isChangeSdCard:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScanCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mScanCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;

    if-nez v3, :cond_7

    if-eqz v1, :cond_7

    iget v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mScanCount:I

    if-ge v3, v6, :cond_7

    .line 581
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    const-string v5, "/data/Data/musiclist.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 581
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 584
    iget v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mScanCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mScanCount:I

    .line 586
    const-string v3, ""

    const-string v4, "init"

    invoke-virtual {p0, v3, v4}, Lcom/acloud/stub/db/MusicWidgetManager;->asyncQueryPlayList(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_1
    return-void

    .line 515
    :cond_3
    new-instance v0, Lcom/acloud/stub/db/PlayEntry;

    invoke-direct {v0}, Lcom/acloud/stub/db/PlayEntry;-><init>()V

    .line 517
    .local v0, "entry":Lcom/acloud/stub/db/PlayEntry;
    sget-object v3, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_PATH:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 516
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    .line 519
    sget-object v3, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_NAME:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 518
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/acloud/stub/db/PlayEntry;->name:Ljava/lang/String;

    .line 521
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 523
    sget-object v3, Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_ID:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 522
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/acloud/stub/db/PlayEntry;->id:I

    .line 543
    :cond_4
    :goto_2
    iget v3, v0, Lcom/acloud/stub/db/PlayEntry;->id:I

    iget-object v4, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v4}, Lcom/acloud/stub/db/PlayList;->currentPlayId()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 544
    iget-object v3, v0, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    iput-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayPath:Ljava/lang/String;

    .line 546
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v3}, Lcom/acloud/stub/db/PlayList;->getCurProgess()I

    move-result v3

    iput v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayProgress:I

    .line 548
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    iget-object v4, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v4}, Lcom/acloud/stub/db/PlayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/acloud/stub/db/PlayList;->setCurPlayIndex(I)V

    .line 549
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    iget v4, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mHisPlayProgress:I

    invoke-virtual {v3, v4}, Lcom/acloud/stub/db/PlayList;->setCurProgess(I)V

    .line 557
    :cond_5
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;

    invoke-virtual {v3, v0}, Lcom/acloud/stub/db/PlayList;->addEntry(Lcom/acloud/stub/db/PlayEntry;)V

    goto/16 :goto_0

    .line 527
    :cond_6
    :try_start_0
    iget-object v3, v0, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    const-string v4, "XY_CD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    const-string v4, "xy_cd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 533
    iget-object v3, v0, Lcom/acloud/stub/db/PlayEntry;->name:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 534
    .local v2, "point":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v3, v0, Lcom/acloud/stub/db/PlayEntry;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    .line 535
    iget-object v3, v0, Lcom/acloud/stub/db/PlayEntry;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/acloud/stub/db/PlayEntry;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 537
    .end local v2    # "point":I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 590
    .end local v0    # "entry":Lcom/acloud/stub/db/PlayEntry;
    :cond_7
    const-string v3, "MusicWidgetManager"

    const-string v4, "onQueryComplete()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager;->mOnQueryLisenter:Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;

    invoke-interface {v3}, Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;->onQueryComplete()V

    goto/16 :goto_1
.end method
