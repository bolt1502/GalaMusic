.class public Lcom/acloud/db/StorageSqlManager;
.super Ljava/lang/Object;
.source "StorageSqlManager.java"


# static fields
.field public static final APK_TYPE:I = 0x5

.field public static final AUDIO_TYPE:I = 0x0

.field public static final BOOK_TYPE:I = 0x2

.field public static final IMAGE_TYPE:I = 0x3

.field public static final LOG_TYPE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "APP"

.field private static final URI_STRING:Ljava/lang/String; = "content://com.xygala.scan/scanmedia"

.field public static final VIDEO_TYPE:I = 0x1

.field private static final strMenuTypes:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\'audio\'"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\'video\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\'book\'"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 25
    const-string v2, "\'picture\'"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\'log\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\'apk\'"

    aput-object v2, v0, v1

    .line 24
    sput-object v0, Lcom/acloud/db/StorageSqlManager;->strMenuTypes:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/db/StorageSqlManager;->mContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/acloud/db/StorageSqlManager;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private checkValidProvider(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/acloud/db/StorageSqlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 50
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 54
    :goto_0
    return v1

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 54
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPhoneMusicList(I)Ljava/util/List;
    .locals 9
    .param p1, "nType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 189
    if-nez p1, :cond_3

    .line 190
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 191
    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 192
    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    .line 193
    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_size"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    .line 194
    const-string v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "album"

    aput-object v1, v2, v0

    .line 195
    .local v2, "audioColumns":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/acloud/db/StorageSqlManager;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 198
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v6, "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 201
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v4, 0x19000

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 208
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    .end local v8    # "filePath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 214
    .end local v2    # "audioColumns":[Ljava/lang/String;
    .end local v6    # "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v6

    .line 207
    .restart local v2    # "audioColumns":[Ljava/lang/String;
    .restart local v6    # "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "filePath":Ljava/lang/String;
    :cond_2
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v2    # "audioColumns":[Ljava/lang/String;
    .end local v6    # "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "filePath":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method private managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/acloud/db/StorageSqlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public insertIntoMediaSql(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 167
    const-string v2, "content://com.xygala.scan/scanmedia"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 168
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/acloud/db/StorageSqlManager;->checkValidProvider(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-object v2, Lcom/acloud/db/StorageSqlManager;->strMenuTypes:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_0

    if-ltz p3, :cond_0

    .line 176
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "type"

    sget-object v3, Lcom/acloud/db/StorageSqlManager;->strMenuTypes:[Ljava/lang/String;

    aget-object v3, v3, p3

    const-string v4, "\'"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/acloud/db/StorageSqlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public query(I)Ljava/util/List;
    .locals 10
    .param p1, "nType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 104
    const-string v0, "content://com.xygala.scan/scanmedia"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/acloud/db/StorageSqlManager;->checkValidProvider(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/acloud/db/StorageSqlManager;->getPhoneMusicList(I)Ljava/util/List;

    move-result-object v8

    .line 129
    :goto_0
    return-object v8

    .line 108
    :cond_0
    if-ltz p1, :cond_1

    sget-object v0, Lcom/acloud/db/StorageSqlManager;->strMenuTypes:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_2

    :cond_1
    move-object v8, v4

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "path"

    aput-object v0, v2, v9

    .line 113
    .local v2, "slSearchType":[Ljava/lang/String;
    iget-object v0, p0, Lcom/acloud/db/StorageSqlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "type="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/acloud/db/StorageSqlManager;->strMenuTypes:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 113
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 117
    invoke-direct {p0, p1}, Lcom/acloud/db/StorageSqlManager;->getPhoneMusicList(I)Ljava/util/List;

    move-result-object v8

    goto :goto_0

    .line 120
    :cond_3
    aget-object v0, v2, v9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 122
    .local v7, "nColumnIndex":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v8, "pathStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 125
    :cond_4
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public queryApkFile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/acloud/db/StorageSqlManager;->query(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAudioFile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/acloud/db/StorageSqlManager;->query(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBookFile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/acloud/db/StorageSqlManager;->query(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryDuration()I
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/acloud/db/StorageSqlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 137
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_1
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 142
    .local v10, "id":I
    const-string v0, "title"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "tilte":Ljava/lang/String;
    const-string v0, "album"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "album":Ljava/lang/String;
    const-string v0, "artist"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "artist":Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, "url":Ljava/lang/String;
    const-string v0, "duration"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 152
    .local v9, "duration":I
    const-string v0, "_size"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 153
    .local v11, "size":Ljava/lang/Long;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method public queryLogFile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/acloud/db/StorageSqlManager;->query(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryVideoFile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/acloud/db/StorageSqlManager;->query(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
