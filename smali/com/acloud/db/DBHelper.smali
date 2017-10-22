.class public abstract Lcom/acloud/db/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DB_VERSION:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreateTableSql:Ljava/lang/String;

.field private mCreateTableSqls:[Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    iput-object v1, p0, Lcom/acloud/db/DBHelper;->mLock:Ljava/lang/Object;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/db/DBHelper;->mCreateTableSql:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/acloud/db/DBHelper;->mCreateTableSqls:[Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/acloud/db/DBHelper;->mContext:Landroid/content/Context;

    .line 45
    iput-object p0, p0, Lcom/acloud/db/DBHelper;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/acloud/db/DBHelper;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "createTableSql"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/acloud/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    iput-object p3, p0, Lcom/acloud/db/DBHelper;->mCreateTableSql:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "createTableSql"    # [Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/acloud/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    iput-object p3, p0, Lcom/acloud/db/DBHelper;->mCreateTableSqls:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method private closeDbHelp()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract bindData(Landroid/database/sqlite/SQLiteStatement;)V
.end method

.method public closeDb()V
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/acloud/db/DBHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/acloud/db/DBHelper;->closeDbHelp()V

    .line 218
    monitor-exit v1

    .line 221
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "Table_Name"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 149
    iget-object v3, p0, Lcom/acloud/db/DBHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/acloud/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    const/4 v1, -0x1

    .line 154
    .local v1, "length":I
    :try_start_1
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 159
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/acloud/db/DBHelper;->closeDbHelp()V

    .line 160
    monitor-exit v3

    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v1    # "length":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/acloud/db/DBHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getInsertProjectionParam([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "projections"    # [Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p1}, Lcom/acloud/utils/ListUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const/4 v2, 0x0

    .line 253
    :goto_0
    return-object v2

    .line 245
    :cond_0
    const-string v1, "("

    .line 247
    .local v1, "strProjection":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 248
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5
    .param p1, "Table_Name"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 95
    iget-object v4, p0, Lcom/acloud/db/DBHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/acloud/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    :try_start_2
    monitor-exit v4

    .line 103
    :goto_0
    return-wide v2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 103
    monitor-exit v4

    const-wide/16 v2, -0x1

    goto :goto_0

    .line 95
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public insertIntoTable(Ljava/lang/String;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v3, p0, Lcom/acloud/db/DBHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/acloud/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 117
    .local v1, "stat":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 119
    invoke-virtual {p0, v1}, Lcom/acloud/db/DBHelper;->bindData(Landroid/database/sqlite/SQLiteStatement;)V

    .line 121
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 122
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/acloud/db/DBHelper;->closeDbHelp()V

    .line 112
    monitor-exit v3

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v1    # "stat":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 68
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/acloud/db/DBHelper;->mCreateTableSql:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/acloud/db/DBHelper;->mCreateTableSql:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/acloud/db/DBHelper;->mCreateTableSql:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/acloud/db/DBHelper;->mCreateTableSqls:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/acloud/db/DBHelper;->mCreateTableSqls:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v3, p0, Lcom/acloud/db/DBHelper;->mCreateTableSqls:[Ljava/lang/String;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v4, :cond_2

    .line 68
    :cond_1
    monitor-exit v2

    .line 78
    return-void

    .line 73
    :cond_2
    aget-object v0, v3, v1

    .line 74
    .local v0, "createTableSql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "createTableSql":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 82
    if-ne p2, p3, :cond_0

    .line 86
    :cond_0
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "Table_Name"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v10, p0, Lcom/acloud/db/DBHelper;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/acloud/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v10

    .line 210
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v9

    .line 208
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 210
    monitor-exit v10

    const/4 v0, 0x0

    goto :goto_0

    .line 200
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected setCreateTableSql(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/acloud/db/DBHelper;->mCreateTableSql:Ljava/lang/String;

    .line 55
    return-void
.end method

.method protected setCreateTableSqlS([Ljava/lang/String;)V
    .locals 0
    .param p1, "sqls"    # [Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/acloud/db/DBHelper;->mCreateTableSqls:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "Table_Name"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "WhereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 173
    iget-object v3, p0, Lcom/acloud/db/DBHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/acloud/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    const/4 v1, -0x1

    .line 179
    .local v1, "length":I
    :try_start_1
    iget-object v2, p0, Lcom/acloud/db/DBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 183
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/acloud/db/DBHelper;->closeDbHelp()V

    .line 184
    monitor-exit v3

    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v1    # "length":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
