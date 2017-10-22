.class public Lcom/acloud/utils/EnvironmentUtils;
.super Ljava/lang/Object;
.source "EnvironmentUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EnvironmentATC"

.field private static final SD_PATH_MARK:Ljava/lang/String; = "ext_sd"

.field private static final USB_PATH_MARK:Ljava/lang/String; = "udisk"


# instance fields
.field private sm:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/acloud/utils/EnvironmentUtils;->sm:Landroid/os/storage/StorageManager;

    .line 34
    return-void
.end method

.method public static getAvailableSize()J
    .locals 4

    .prologue
    .line 357
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 358
    .local v0, "path":Ljava/io/File;
    if-nez v0, :cond_0

    .line 359
    const-wide/16 v2, 0x0

    .line 361
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acloud/utils/EnvironmentUtils;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getAvailableSize(Ljava/lang/String;)J
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    const-wide/16 v6, 0x0

    .line 349
    :goto_0
    return-wide v6

    .line 346
    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 347
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 348
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 349
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    goto :goto_0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "sdDir":Ljava/io/File;
    invoke-static {}, Lcom/acloud/utils/EnvironmentUtils;->getSdcardState()Z

    move-result v0

    .line 329
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 331
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSdcardState()Z
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 318
    const-string v2, "mounted"

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 318
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 319
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 318
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTotalSize()J
    .locals 4

    .prologue
    .line 384
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 385
    .local v0, "path":Ljava/io/File;
    if-nez v0, :cond_0

    .line 386
    const-wide/16 v2, 0x0

    .line 388
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acloud/utils/EnvironmentUtils;->getTotalSize(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getTotalSize(Ljava/lang/String;)J
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 371
    const-wide/16 v6, 0x0

    .line 376
    :goto_0
    return-wide v6

    .line 373
    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 374
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 375
    .local v0, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v2, v5

    .line 376
    .local v2, "blocksCount":J
    mul-long v6, v2, v0

    goto :goto_0
.end method


# virtual methods
.method public ReportStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 285
    const/4 v2, 0x0

    .line 288
    .local v2, "strState":Ljava/lang/String;
    const-string v3, "/mnt/udisk2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/udisk2detect/usb_state"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "FILE_DIR":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 300
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 309
    .end local v0    # "FILE_DIR":Ljava/io/File;
    :goto_2
    return-object v3

    .line 291
    :cond_0
    const-string v3, "/mnt/udisk1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/udisk1detect/usb_state"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v0    # "FILE_DIR":Ljava/io/File;
    goto :goto_0

    .line 294
    .end local v0    # "FILE_DIR":Ljava/io/File;
    :cond_1
    const-string v3, "0"

    goto :goto_2

    .line 309
    .restart local v0    # "FILE_DIR":Ljava/io/File;
    :cond_2
    const-string v3, "0"

    goto :goto_2

    .line 302
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getSdAllPaths()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "arrayPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 70
    .local v5, "paths":[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/acloud/utils/EnvironmentUtils;->sm:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 71
    const-string v8, "getVolumePaths"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 72
    iget-object v8, p0, Lcom/acloud/utils/EnvironmentUtils;->sm:Landroid/os/storage/StorageManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 70
    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    if-nez v5, :cond_1

    .line 79
    const/4 v6, 0x0

    .line 92
    :cond_0
    return-object v6

    .line 73
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "EnvironmentATC"

    const-string v8, "Call getMethod of getVolumePaths Error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v5

    if-lt v4, v7, :cond_2

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 88
    .local v2, "count":I
    new-array v6, v2, [Ljava/lang/String;

    .line 89
    .local v6, "pathsReturn":[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_0

    .line 90
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v4

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 82
    .end local v2    # "count":I
    .end local v6    # "pathsReturn":[Ljava/lang/String;
    :cond_2
    const/4 v7, -0x1

    aget-object v8, v5, v4

    const-string v9, "ext_sd"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 83
    aget-object v7, v5, v4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getSdMountedPaths()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "arrayPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 181
    .local v3, "paths":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/acloud/utils/EnvironmentUtils;->getSdAllPaths()[Ljava/lang/String;

    move-result-object v3

    .line 183
    if-nez v3, :cond_1

    .line 184
    const/4 v4, 0x0

    .line 199
    :cond_0
    return-object v4

    .line 186
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-lt v2, v6, :cond_2

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 194
    .local v1, "count":I
    new-array v4, v1, [Ljava/lang/String;

    .line 195
    .local v4, "pathsReturn":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 196
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    .end local v1    # "count":I
    .end local v4    # "pathsReturn":[Ljava/lang/String;
    :cond_2
    aget-object v6, v3, v2

    invoke-virtual {p0, v6}, Lcom/acloud/utils/EnvironmentUtils;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "strState":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    aget-object v6, v3, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getStorageAllPaths()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 46
    .local v2, "paths":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/acloud/utils/EnvironmentUtils;->sm:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 47
    const-string v4, "getVolumePaths"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 48
    iget-object v4, p0, Lcom/acloud/utils/EnvironmentUtils;->sm:Landroid/os/storage/StorageManager;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-object v2

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnvironmentATC"

    const-string v4, "Call getMethod of getVolumePaths Error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getStorageMountedPaths(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 246
    .local v1, "paths":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 248
    invoke-virtual {p0}, Lcom/acloud/utils/EnvironmentUtils;->getStorageAllPaths()[Ljava/lang/String;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_0

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 258
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 252
    .restart local v0    # "i":I
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/acloud/utils/EnvironmentUtils;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "strState":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getStorageMountedPaths()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "arrayPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 148
    .local v3, "paths":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/acloud/utils/EnvironmentUtils;->getStorageAllPaths()[Ljava/lang/String;

    move-result-object v3

    .line 150
    if-nez v3, :cond_1

    .line 151
    const/4 v4, 0x0

    .line 166
    :cond_0
    return-object v4

    .line 153
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-lt v2, v6, :cond_2

    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 161
    .local v1, "count":I
    new-array v4, v1, [Ljava/lang/String;

    .line 162
    .local v4, "pathsReturn":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 163
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v2

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 154
    .end local v1    # "count":I
    .end local v4    # "pathsReturn":[Ljava/lang/String;
    :cond_2
    aget-object v6, v3, v2

    invoke-virtual {p0, v6}, Lcom/acloud/utils/EnvironmentUtils;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "strState":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    aget-object v6, v3, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 273
    .local v2, "strState":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/acloud/utils/EnvironmentUtils;->sm:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 274
    const-string v4, "getVolumeState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 275
    iget-object v4, p0, Lcom/acloud/utils/EnvironmentUtils;->sm:Landroid/os/storage/StorageManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 273
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-object v2

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnvironmentATC"

    const-string v4, "Call getMethod of getVolumeState Error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getUsbAllPaths()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "arrayPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 109
    .local v5, "paths":[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/acloud/utils/EnvironmentUtils;->sm:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 110
    const-string v8, "getVolumePaths"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 111
    iget-object v8, p0, Lcom/acloud/utils/EnvironmentUtils;->sm:Landroid/os/storage/StorageManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 109
    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    if-nez v5, :cond_1

    .line 118
    const/4 v6, 0x0

    .line 132
    :cond_0
    return-object v6

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "EnvironmentATC"

    const-string v8, "Call getMethod of getVolumePaths Error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v5

    if-lt v4, v7, :cond_2

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 128
    .local v2, "count":I
    new-array v6, v2, [Ljava/lang/String;

    .line 129
    .local v6, "pathsReturn":[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_0

    .line 130
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v4

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 121
    .end local v2    # "count":I
    .end local v6    # "pathsReturn":[Ljava/lang/String;
    :cond_2
    const/4 v7, -0x1

    aget-object v8, v5, v4

    const-string v9, "udisk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 122
    aget-object v7, v5, v4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getUsbMountedPaths()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "arrayPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 214
    .local v3, "paths":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/acloud/utils/EnvironmentUtils;->getUsbAllPaths()[Ljava/lang/String;

    move-result-object v3

    .line 216
    if-nez v3, :cond_1

    .line 217
    const/4 v4, 0x0

    .line 232
    :cond_0
    return-object v4

    .line 219
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-lt v2, v6, :cond_2

    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 227
    .local v1, "count":I
    new-array v4, v1, [Ljava/lang/String;

    .line 228
    .local v4, "pathsReturn":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 229
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    .end local v1    # "count":I
    .end local v4    # "pathsReturn":[Ljava/lang/String;
    :cond_2
    aget-object v6, v3, v2

    invoke-virtual {p0, v6}, Lcom/acloud/utils/EnvironmentUtils;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "strState":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 222
    aget-object v6, v3, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
