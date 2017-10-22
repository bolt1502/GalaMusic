.class public Lcom/acloud/db/DBBaseHelper;
.super Lcom/acloud/db/DBHelper;
.source "DBBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/acloud/db/DBHelper;"
    }
.end annotation


# static fields
.field private static final TABLE_HEAD:Ljava/lang/String; = "tbl_"

.field private static final UPDATE_TIME:Ljava/lang/String; = "update_time"


# instance fields
.field private mInsertData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 72
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/acloud/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "createTableSql"    # Ljava/lang/String;

    .prologue
    .line 62
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/acloud/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    .line 63
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clasz"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    const-string v5, ""

    invoke-direct {p0, p1, p2, v5}, Lcom/acloud/db/DBBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    if-eqz p3, :cond_0

    .line 42
    array-length v5, p3

    new-array v4, v5, [Ljava/lang/String;

    .line 44
    .local v4, "sqls":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p3

    if-lt v2, v5, :cond_1

    .line 57
    invoke-virtual {p0, v4}, Lcom/acloud/db/DBBaseHelper;->setCreateTableSqlS([Ljava/lang/String;)V

    .line 59
    .end local v2    # "i":I
    .end local v4    # "sqls":[Ljava/lang/String;
    :cond_0
    return-void

    .line 45
    .restart local v2    # "i":I
    .restart local v4    # "sqls":[Ljava/lang/String;
    :cond_1
    aget-object v5, p3, v2

    invoke-static {v5}, Lcom/acloud/db/DBBaseHelper;->getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 46
    .local v1, "fields":[Ljava/lang/reflect/Field;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "create table tbl_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p3, v2

    invoke-direct {p0, v6}, Lcom/acloud/db/DBBaseHelper;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "createTableSql":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v1

    if-lt v3, v5, :cond_2

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "update_time varchar);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    aput-object v0, v4, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/acloud/db/DBBaseHelper;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " varchar,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "createTableSql"    # [Ljava/lang/String;

    .prologue
    .line 66
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/acloud/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    .line 68
    return-void
.end method

.method private static getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 268
    const/4 v0, 0x0

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 270
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 272
    .local v0, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/db/DBBaseHelper;->getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 274
    .local v1, "superFileds":[Ljava/lang/reflect/Field;
    invoke-static {v0, v1}, Lcom/acloud/utils/ListUtils;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    check-cast v0, [Ljava/lang/reflect/Field;

    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 286
    const-string v0, ""

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 288
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "className":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "names":[Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/utils/ListUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method private getProjections(Ljava/lang/Class;[Ljava/lang/reflect/Field;)[Ljava/lang/String;
    .locals 4
    .param p2, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 254
    .local v1, "projections":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    .line 257
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const-string v3, "update_time"

    aput-object v3, v1, v2

    .line 258
    return-object v1

    .line 255
    :cond_0
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/acloud/db/DBBaseHelper;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSystemTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bindData(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 12
    .param p1, "stat"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 90
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    iget-object v8, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    invoke-static {v8}, Lcom/acloud/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/acloud/db/DBBaseHelper;->getSystemTime()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "systemTime":Ljava/lang/String;
    iget-object v8, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/acloud/db/DBBaseHelper;->getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 93
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v8, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v5, v8, :cond_1

    .line 132
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    .end local v7    # "systemTime":Ljava/lang/String;
    :cond_0
    return-void

    .line 94
    .restart local v4    # "fields":[Ljava/lang/reflect/Field;
    .restart local v5    # "i":I
    .restart local v7    # "systemTime":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v8, v4

    if-lt v6, v8, :cond_2

    .line 128
    array-length v8, v4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v8, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 95
    :cond_2
    const-string v2, ""

    .line 96
    .local v2, "content":Ljava/lang/String;
    aget-object v8, v4, v6

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    :try_start_0
    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_4

    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v6

    iget-object v10, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 122
    :goto_2
    if-nez v2, :cond_3

    .line 123
    const-string v2, ""

    .line 125
    :cond_3
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 100
    :cond_4
    :try_start_1
    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_5

    .line 101
    aget-object v8, v4, v6

    iget-object v9, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 102
    goto :goto_2

    :cond_5
    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_6

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v6

    iget-object v10, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    goto :goto_2

    :cond_6
    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_7

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v6

    iget-object v10, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    goto :goto_2

    :cond_7
    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_8

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v6

    iget-object v10, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    goto/16 :goto_2

    :cond_8
    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_9

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v6

    iget-object v10, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 110
    goto/16 :goto_2

    .line 112
    :cond_9
    :try_start_2
    aget-object v8, v4, v6

    iget-object v9, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 117
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 119
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 120
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_2

    .line 113
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v8

    goto/16 :goto_2
.end method

.method public delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    .local p1, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tbl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/acloud/db/DBBaseHelper;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/acloud/db/DBBaseHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method protected getFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    const-string v0, "order"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getObjectFromTable(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/acloud/db/QuoteParam;)Ljava/util/List;
    .locals 17
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .param p4, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/acloud/db/QuoteParam",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    .local p5, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "isRequestServer":Lcom/acloud/db/QuoteParam;, "Lcom/acloud/db/QuoteParam<Ljava/lang/Boolean;>;"
    invoke-static/range {p5 .. p5}, Lcom/acloud/db/DBBaseHelper;->getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v15

    .line 174
    .local v15, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v15}, Lcom/acloud/db/DBBaseHelper;->getProjections(Ljava/lang/Class;[Ljava/lang/reflect/Field;)[Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "projections":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tbl_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/acloud/db/DBBaseHelper;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/acloud/db/DBBaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 177
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-direct/range {p0 .. p0}, Lcom/acloud/db/DBBaseHelper;->getSystemTime()Ljava/lang/String;

    move-result-object v16

    .line 178
    .local v16, "systemTime":Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 179
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/acloud/db/QuoteParam;->setData(Ljava/lang/Object;)V

    .line 181
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v12, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v10, :cond_1

    .line 183
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    :cond_1
    return-object v12

    .line 185
    :cond_2
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .line 187
    .local v11, "d":Ljava/lang/Object;, "TT;"
    array-length v3, v15

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_4

    .line 208
    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/acloud/db/QuoteParam;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    const-string v2, "update_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/acloud/db/QuoteParam;->setData(Ljava/lang/Object;)V

    .line 214
    :cond_3
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 215
    .end local v11    # "d":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v13

    .line 216
    .local v13, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v13}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v13    # "e":Ljava/lang/InstantiationException;
    .restart local v11    # "d":Ljava/lang/Object;, "TT;"
    :cond_4
    :try_start_1
    aget-object v14, v15, v2

    .line 188
    .local v14, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 189
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/acloud/db/DBBaseHelper;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "content":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_5

    .line 191
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v14, v11, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 187
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    :cond_5
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    .line 193
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v14, v11, v6, v7}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 217
    .end local v9    # "content":Ljava/lang/String;
    .end local v11    # "d":Ljava/lang/Object;, "TT;"
    .end local v14    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v13

    .line 218
    .local v13, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v13}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 194
    .end local v13    # "e":Ljava/lang/IllegalAccessException;
    .restart local v9    # "content":Ljava/lang/String;
    .restart local v11    # "d":Ljava/lang/Object;, "TT;"
    .restart local v14    # "field":Ljava/lang/reflect/Field;
    :cond_6
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_7

    .line 195
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v14, v11, v6, v7}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_2

    .line 196
    :cond_7
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_8

    .line 197
    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v14, v11, v5}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_2

    .line 198
    :cond_8
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_9

    .line 199
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v14, v11, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 202
    :cond_9
    :try_start_3
    invoke-virtual {v14, v11, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 203
    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public insertObjectIntoTable(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lcom/acloud/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v7, p0, Lcom/acloud/db/DBBaseHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 143
    :try_start_0
    iput-object p1, p0, Lcom/acloud/db/DBBaseHelper;->mInsertData:Ljava/util/List;

    .line 142
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 147
    .local v0, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/acloud/db/DBBaseHelper;->getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 148
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    .line 149
    .local v3, "projections":[Ljava/lang/String;
    const-string v4, ""

    .line 150
    .local v4, "questions":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-lt v2, v6, :cond_1

    .line 154
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    const-string v7, "update_time"

    aput-object v7, v3, v6

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "insert into tbl_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/acloud/db/DBBaseHelper;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/acloud/db/DBBaseHelper;->getInsertProjectionParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 158
    const-string v7, " values("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/acloud/db/DBBaseHelper;->insertIntoTable(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v0    # "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    .end local v3    # "projections":[Ljava/lang/String;
    .end local v4    # "questions":Ljava/lang/String;
    .end local v5    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 151
    .restart local v0    # "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "i":I
    .restart local v3    # "projections":[Ljava/lang/String;
    .restart local v4    # "questions":Ljava/lang/String;
    :cond_1
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/acloud/db/DBBaseHelper;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "WhereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/acloud/db/DBBaseHelper;, "Lcom/acloud/db/DBBaseHelper<TT;>;"
    .local p1, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tbl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/acloud/db/DBBaseHelper;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/acloud/db/DBBaseHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    return-void
.end method
