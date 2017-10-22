.class public Lcom/acloud/stub/db/LocalMusicDBHelper;
.super Lcom/acloud/db/DBHelper;
.source "LocalMusicDBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "localmusic_cache.db"

.field private static final FAVORITE:Ljava/lang/String; = "favorite"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final SINGER:Ljava/lang/String; = "singer"

.field private static final SPECIAL:Ljava/lang/String; = "special"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static db:Lcom/acloud/stub/db/LocalMusicDBHelper;

.field private static final mCreateTableSqls:[Ljava/lang/String;


# instance fields
.field private dataList:Ljava/util/List;
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
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->mCreateTableSqls:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->db:Lcom/acloud/stub/db/LocalMusicDBHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->mCreateTableSqls:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/acloud/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/db/LocalMusicDBHelper;->dataList:Ljava/util/List;

    .line 62
    return-void
.end method

.method private static getCreateTableSqls(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create table "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Integer PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " varchar,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " varchar,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "singer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " varchar,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "special"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " varchar,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "favorite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Integer);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInsertProjection([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "projections"    # [Ljava/lang/String;

    .prologue
    .line 121
    const-string v1, "("

    .line 122
    .local v1, "projection":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 123
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->db:Lcom/acloud/stub/db/LocalMusicDBHelper;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->initCreateTableSqls()V

    .line 37
    new-instance v0, Lcom/acloud/stub/db/LocalMusicDBHelper;

    invoke-static {}, Lcom/acloud/GalaApplication;->getApplication()Landroid/content/Context;

    move-result-object v1

    const-string v2, "localmusic_cache.db"

    invoke-direct {v0, v1, v2}, Lcom/acloud/stub/db/LocalMusicDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->db:Lcom/acloud/stub/db/LocalMusicDBHelper;

    .line 39
    :cond_0
    sget-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->db:Lcom/acloud/stub/db/LocalMusicDBHelper;

    return-object v0
.end method

.method private static initCreateTableSqls()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->mCreateTableSqls:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "table_music_currect_playlist"

    invoke-static {v2}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getCreateTableSqls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    sget-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->mCreateTableSqls:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "table_music_collect_playlist"

    invoke-static {v2}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getCreateTableSqls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 52
    return-void
.end method

.method public static removeIntance()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->db:Lcom/acloud/stub/db/LocalMusicDBHelper;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->db:Lcom/acloud/stub/db/LocalMusicDBHelper;

    invoke-virtual {v0}, Lcom/acloud/stub/db/LocalMusicDBHelper;->closeDb()V

    .line 46
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/stub/db/LocalMusicDBHelper;->db:Lcom/acloud/stub/db/LocalMusicDBHelper;

    .line 47
    return-void
.end method


# virtual methods
.method protected bindData(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 6
    .param p1, "stat"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 102
    iget-object v2, p0, Lcom/acloud/stub/db/LocalMusicDBHelper;->dataList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/acloud/stub/db/LocalMusicDBHelper;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 104
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 105
    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    const/4 v3, 0x4

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 109
    const/4 v3, 0x6

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getType()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "favorite":I
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    const/4 v1, 0x1

    .line 114
    :cond_2
    const/4 v3, 0x7

    int-to-long v4, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 115
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0
.end method

.method public deleteAllData(Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0, v0}, Lcom/acloud/stub/db/LocalMusicDBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public deleteOneData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 97
    .local v0, "paths":[Ljava/lang/String;
    const-string v1, "path=?"

    invoke-virtual {p0, p1, v1, v0}, Lcom/acloud/stub/db/LocalMusicDBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public getCurrectMusicInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 132
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v9, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "*"

    aput-object v0, v2, v1

    .local v2, "projections":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcom/acloud/stub/db/LocalMusicDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 135
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 137
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/stub/db/LocalMusicDBHelper;->closeDb()V

    .line 160
    return-object v9

    .line 138
    :cond_1
    :try_start_1
    new-instance v8, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-direct {v8}, Lcom/acloud/stub/localmusic/data/MusicInfoData;-><init>()V

    .line 139
    .local v8, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setName(Ljava/lang/String;)V

    .line 140
    const-string v0, "path"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setPath(Ljava/lang/String;)V

    .line 141
    const-string v0, "singer"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setArtist(Ljava/lang/String;)V

    .line 142
    const-string v0, "special"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setAlbum(Ljava/lang/String;)V

    .line 143
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setType(I)V

    .line 144
    const-string v0, "favorite"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 145
    .local v10, "favorite":I
    if-ne v10, v11, :cond_3

    .line 146
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    .line 151
    :cond_2
    :goto_2
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v8    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .end local v10    # "favorite":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 147
    .restart local v8    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .restart local v10    # "favorite":I
    :cond_3
    if-nez v10, :cond_2

    .line 148
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public insertAllData(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    iget-object v3, p0, Lcom/acloud/stub/db/LocalMusicDBHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 66
    :try_start_0
    iput-object p2, p0, Lcom/acloud/stub/db/LocalMusicDBHelper;->dataList:Ljava/util/List;

    .line 65
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/acloud/stub/db/LocalMusicDBHelper;->deleteAllData(Ljava/lang/String;)V

    .line 71
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "path"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "singer"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "special"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "type"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "favorite"

    aput-object v3, v0, v2

    .line 72
    .local v0, "projections":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert into "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInsertProjection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values(?,?,?,?,?,?,?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertIntoTable(Ljava/lang/String;)V

    .line 74
    return-void

    .line 65
    .end local v0    # "projections":[Ljava/lang/String;
    .end local v1    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public insertOneData(Ljava/lang/String;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .prologue
    .line 77
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "path"

    invoke-virtual {p2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "singer"

    invoke-virtual {p2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "special"

    invoke-virtual {p2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "type"

    invoke-virtual {p2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "favorite":I
    invoke-virtual {p2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :cond_0
    const-string v2, "favorite"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {p0, p1, v1}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 89
    return-void
.end method
