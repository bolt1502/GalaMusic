.class public Lcom/acloud/stub/db/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hasDB:Z

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/acloud/stub/db/DatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acloud/stub/db/DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->hasDB:Z

    .line 22
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/acloud/stub/db/DatabaseHelper;->mLock:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/acloud/stub/db/DatabaseHelper;->mPath:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/acloud/stub/db/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    iget-object v1, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->hasDB:Z

    .line 32
    return-void
.end method

.method private getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 40
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/acloud/stub/db/DatabaseHelper;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    :goto_0
    return-object v1

    .line 45
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/acloud/stub/db/DatabaseHelper;->mPath:Ljava/lang/String;

    const/4 v3, 0x0

    .line 46
    const/high16 v4, 0x10000000

    .line 45
    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/database/SQLException;
    sget-object v2, Lcom/acloud/stub/db/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed creating database"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public closeDB()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 152
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "table_______________"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/acloud/stub/db/DatabaseHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->hasDB:Z

    if-nez v0, :cond_0

    .line 114
    monitor-exit v2

    const-wide/16 v0, -0x1

    .line 120
    :goto_0
    return-wide v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/acloud/stub/db/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    int-to-long v0, v0

    monitor-exit v2

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public hasDataBase()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->hasDB:Z

    return v0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v0, -0x1

    .line 91
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "table_______________"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/acloud/stub/db/DatabaseHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-boolean v3, p0, Lcom/acloud/stub/db/DatabaseHelper;->hasDB:Z

    if-nez v3, :cond_0

    .line 94
    monitor-exit v2

    .line 98
    :goto_0
    return-wide v0

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/acloud/stub/db/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_2

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 98
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "table_______________"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v9, p0, Lcom/acloud/stub/db/DatabaseHelper;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->hasDB:Z

    if-nez v0, :cond_0

    monitor-exit v9

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/acloud/stub/db/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    :try_start_2
    monitor-exit v9

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 75
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v8

    .line 78
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 135
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "table_______________"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/acloud/stub/db/DatabaseHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-boolean v2, p0, Lcom/acloud/stub/db/DatabaseHelper;->hasDB:Z

    if-nez v2, :cond_0

    monitor-exit v1

    .line 142
    :goto_0
    return v0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/acloud/stub/db/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 142
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/acloud/stub/db/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1
.end method
