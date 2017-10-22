.class public Lcom/acloud/network/http/HttpDownloadServer;
.super Ljava/lang/Object;
.source "HttpDownloadServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    }
.end annotation


# static fields
.field private static final ERROR_ACTION:I = 0x3

.field private static final FINISH_ACTION:I = 0x2

.field private static final PROGRESS_ACTION:I = 0x1

.field private static final SPEED_ACTION:I

.field private static mDownloadDataCacheS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static pThis:Lcom/acloud/network/http/HttpDownloadServer;


# instance fields
.field private mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsInit:Z

.field private mSmallDownloadDataCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/acloud/network/http/HttpDownloadServer;->pThis:Lcom/acloud/network/http/HttpDownloadServer;

    .line 51
    sput-object v0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/acloud/network/http/HttpDownloadServer;->mLock:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    .line 55
    iput-boolean v1, p0, Lcom/acloud/network/http/HttpDownloadServer;->mIsInit:Z

    .line 63
    new-instance v0, Lcom/acloud/network/http/HttpDownloadServer$1;

    invoke-direct {v0, p0}, Lcom/acloud/network/http/HttpDownloadServer$1;-><init>(Lcom/acloud/network/http/HttpDownloadServer;)V

    iput-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/acloud/network/http/HttpDownloadServer$2;

    invoke-direct {v0, p0}, Lcom/acloud/network/http/HttpDownloadServer$2;-><init>(Lcom/acloud/network/http/HttpDownloadServer;)V

    iput-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    .line 159
    new-instance v0, Lcom/acloud/network/http/HttpDownloadServer$3;

    invoke-direct {v0, p0}, Lcom/acloud/network/http/HttpDownloadServer$3;-><init>(Lcom/acloud/network/http/HttpDownloadServer;)V

    iput-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    .line 182
    iput-boolean v1, p0, Lcom/acloud/network/http/HttpDownloadServer;->mIsInit:Z

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    .line 186
    invoke-static {}, Lcom/acloud/network/http/HttpUtils;->isJniDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/acloud/jni/HttpJni;->getInstance()Lcom/acloud/jni/HttpJni;

    move-result-object v0

    invoke-static {}, Lcom/acloud/GalaApplication;->getApplication()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/acloud/network/http/HttpDownloadServer$4;

    invoke-direct {v2, p0}, Lcom/acloud/network/http/HttpDownloadServer$4;-><init>(Lcom/acloud/network/http/HttpDownloadServer;)V

    invoke-virtual {v0, v1, v2}, Lcom/acloud/jni/HttpJni;->initHttpDownloadManager(Landroid/content/Context;Lcom/acloud/jni/HttpJniCallback;)V

    .line 246
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/network/http/HttpDownloadServer;Ljava/lang/String;)Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/acloud/network/http/HttpDownloadServer;->getCurDownloadTask(Ljava/lang/String;)Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/network/http/HttpDownloadServer;)Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/acloud/network/http/HttpDownloadServer;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/acloud/network/http/HttpDownloadServer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/acloud/network/http/HttpDownloadServer;Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/acloud/network/http/HttpDownloadServer;->downloadSmallFile(Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V

    return-void
.end method

.method static synthetic access$5()Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/acloud/network/http/HttpDownloadServer;Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/acloud/network/http/HttpDownloadServer;->download(Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V

    return-void
.end method

.method static synthetic access$7(Lcom/acloud/network/http/HttpDownloadServer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/acloud/network/http/HttpDownloadServer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/acloud/network/http/HttpDownloadServer;->onFinish(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/acloud/network/http/HttpDownloadServer;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/acloud/network/http/HttpDownloadServer;->mIsInit:Z

    return-void
.end method

.method private download(Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V
    .locals 7
    .param p1, "data"    # Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    .prologue
    const/4 v6, 0x1

    .line 467
    iput-boolean v6, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->isDownload:Z

    .line 468
    invoke-static {}, Lcom/acloud/network/http/HttpUtils;->isJniDownload()Z

    move-result v2

    if-nez v2, :cond_1

    .line 469
    iget-object v2, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->task:Lcom/acloud/network/http/HttpDownloadTask;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->url:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->filePath:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->md5:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->totalSize:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/acloud/network/http/HttpDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-boolean v2, p0, Lcom/acloud/network/http/HttpDownloadServer;->mIsInit:Z

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->totalSize:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 472
    const-string v2, ""

    iput-object v2, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->totalSize:Ljava/lang/String;

    .line 474
    :cond_2
    iget-object v2, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->totalSize:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->type:Ljava/lang/String;

    const-string v3, "3"

    if-eq v2, v3, :cond_3

    .line 477
    :try_start_0
    iget-object v2, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->totalSize:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 478
    .local v0, "totalSize":J
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileAbsolutePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 480
    iget-object v2, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileAbsolutePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/acloud/network/http/HttpDownloadServer;->onFinish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    .end local v0    # "totalSize":J
    :catch_0
    move-exception v2

    .line 487
    :cond_3
    invoke-static {}, Lcom/acloud/jni/HttpJni;->getInstance()Lcom/acloud/jni/HttpJni;

    move-result-object v2

    iget-object v3, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->url:Ljava/lang/String;

    iget-object v4, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileAbsolutePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->type:Ljava/lang/String;

    iget-object v6, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->totalSize:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/acloud/jni/HttpJni;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private downloadSmallFile(Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V
    .locals 5
    .param p1, "data"    # Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    .prologue
    const/4 v4, 0x1

    .line 496
    iput-boolean v4, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->isDownload:Z

    .line 497
    iget-object v0, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->task:Lcom/acloud/network/http/HttpDownloadTask;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->filePath:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->md5:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->totalSize:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/acloud/network/http/HttpDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 498
    return-void
.end method

.method private getCurDownloadTask(Ljava/lang/String;)Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 267
    sget-object v1, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 267
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    .line 268
    .local v0, "task":Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileAbsolutePath:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getDownloadDataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;ZZ)Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "totalSize"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
    .param p8, "isJniDownload"    # Z
    .param p9, "isSmallFile"    # Z

    .prologue
    .line 446
    new-instance v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;-><init>(Lcom/acloud/network/http/HttpDownloadServer;Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V

    .line 447
    .local v0, "data":Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    iput-object p1, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->url:Ljava/lang/String;

    .line 448
    iput-object p2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->filePath:Ljava/lang/String;

    .line 449
    iput-object p3, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileName:Ljava/lang/String;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileAbsolutePath:Ljava/lang/String;

    .line 451
    iput-object p4, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->md5:Ljava/lang/String;

    .line 452
    iput-object p5, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->totalSize:Ljava/lang/String;

    .line 453
    if-nez p8, :cond_1

    .line 454
    new-instance v2, Lcom/acloud/network/http/HttpDownloadTask;

    if-eqz p9, :cond_0

    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    :goto_0
    invoke-direct {v2, p7, v1}, Lcom/acloud/network/http/HttpDownloadTask;-><init>(Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;)V

    iput-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->task:Lcom/acloud/network/http/HttpDownloadTask;

    .line 458
    :goto_1
    iput-object p6, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->type:Ljava/lang/String;

    .line 459
    return-object v0

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    goto :goto_0

    .line 456
    :cond_1
    iput-object p7, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    goto :goto_1
.end method

.method public static getInstance()Lcom/acloud/network/http/HttpDownloadServer;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/acloud/network/http/HttpDownloadServer;->pThis:Lcom/acloud/network/http/HttpDownloadServer;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/acloud/network/http/HttpDownloadServer;

    invoke-direct {v0}, Lcom/acloud/network/http/HttpDownloadServer;-><init>()V

    sput-object v0, Lcom/acloud/network/http/HttpDownloadServer;->pThis:Lcom/acloud/network/http/HttpDownloadServer;

    .line 32
    :cond_0
    sget-object v0, Lcom/acloud/network/http/HttpDownloadServer;->pThis:Lcom/acloud/network/http/HttpDownloadServer;

    return-object v0
.end method

.method private onFinish(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 254
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 256
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "filePath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 258
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void
.end method


# virtual methods
.method public cancelAllTask()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v1, "smallTempList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;>;"
    monitor-enter p0

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 398
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 404
    iget-object v3, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 405
    sget-object v3, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 391
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 414
    invoke-static {}, Lcom/acloud/network/http/HttpUtils;->isJniDownload()Z

    move-result v3

    if-nez v3, :cond_7

    .line 415
    const/4 v0, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 422
    :cond_0
    :goto_4
    return-void

    .line 393
    :cond_1
    :try_start_1
    sget-object v3, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-boolean v3, v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->isDownload:Z

    if-eqz v3, :cond_2

    .line 394
    sget-object v3, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_3
    iget-object v3, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-boolean v3, v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->isDownload:Z

    if-eqz v3, :cond_4

    .line 400
    iget-object v3, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 410
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v3, v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->task:Lcom/acloud/network/http/HttpDownloadTask;

    invoke-virtual {v3, v4}, Lcom/acloud/network/http/HttpDownloadTask;->cancel(Z)Z

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 416
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v3, v3, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->task:Lcom/acloud/network/http/HttpDownloadTask;

    invoke-virtual {v3, v4}, Lcom/acloud/network/http/HttpDownloadTask;->cancel(Z)Z

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 419
    :cond_7
    iget-boolean v3, p0, Lcom/acloud/network/http/HttpDownloadServer;->mIsInit:Z

    if-eqz v3, :cond_0

    .line 420
    invoke-static {}, Lcom/acloud/jni/HttpJni;->getInstance()Lcom/acloud/jni/HttpJni;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acloud/jni/HttpJni;->clearMission()V

    goto :goto_4
.end method

.method public cancelTask(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "isFinid":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDownloadDataCacheS.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 365
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " mDownloadDataCacheS.size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 367
    if-nez v1, :cond_0

    .line 368
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 383
    :cond_0
    :goto_3
    return-void

    .line 347
    :cond_1
    sget-object v2, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v2, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->url:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    sget-object v2, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-boolean v2, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->isDownload:Z

    if-eqz v2, :cond_3

    .line 349
    invoke-static {}, Lcom/acloud/network/http/HttpUtils;->isJniDownload()Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    sget-object v2, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v2, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->task:Lcom/acloud/network/http/HttpDownloadTask;

    invoke-virtual {v2, v4}, Lcom/acloud/network/http/HttpDownloadTask;->cancel(Z)Z

    .line 361
    :goto_4
    const/4 v1, 0x1

    .line 362
    goto :goto_1

    .line 352
    :cond_2
    invoke-static {}, Lcom/acloud/jni/HttpJni;->getInstance()Lcom/acloud/jni/HttpJni;

    move-result-object v3

    sget-object v2, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v2, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileAbsolutePath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/acloud/jni/HttpJni;->pauseDownload(Ljava/lang/String;)V

    goto :goto_4

    .line 355
    :cond_3
    sget-object v2, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v3, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    sget-object v2, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v2, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileAbsolutePath:Ljava/lang/String;

    invoke-interface {v3, v6, v7, v2}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onCancel(JLjava/lang/String;)V

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    sget-object v2, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 346
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 369
    :cond_5
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v2, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->url:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 370
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-boolean v2, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->isDownload:Z

    if-eqz v2, :cond_6

    .line 371
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v2, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->task:Lcom/acloud/network/http/HttpDownloadTask;

    invoke-virtual {v2, v4}, Lcom/acloud/network/http/HttpDownloadTask;->cancel(Z)Z

    goto/16 :goto_3

    .line 374
    :cond_6
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v3, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    sget-object v2, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v2, v2, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->fileAbsolutePath:Ljava/lang/String;

    invoke-interface {v3, v6, v7, v2}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onCancel(JLjava/lang/String;)V

    .line 375
    monitor-enter p0

    .line 376
    :try_start_1
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 375
    monitor-exit p0

    goto/16 :goto_3

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 368
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public downloadApkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "totalSize"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    .prologue
    .line 307
    const-string v6, "2"

    .line 308
    invoke-static {}, Lcom/acloud/network/http/HttpUtils;->isJniDownload()Z

    move-result v8

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    .line 307
    invoke-direct/range {v0 .. v9}, Lcom/acloud/network/http/HttpDownloadServer;->getDownloadDataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;ZZ)Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    move-result-object v10

    .line 310
    .local v10, "data":Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    sget-object v0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    invoke-direct {p0, v10}, Lcom/acloud/network/http/HttpDownloadServer;->download(Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V

    .line 315
    :cond_0
    return-void
.end method

.method public downloadOggFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "totalSize"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    .prologue
    .line 328
    const-string v6, "3"

    .line 329
    invoke-static {}, Lcom/acloud/network/http/HttpUtils;->isJniDownload()Z

    move-result v8

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    .line 328
    invoke-direct/range {v0 .. v9}, Lcom/acloud/network/http/HttpDownloadServer;->getDownloadDataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;ZZ)Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    move-result-object v10

    .line 331
    .local v10, "data":Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    sget-object v0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDownloadDataCacheS.size():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 335
    invoke-direct {p0, v10}, Lcom/acloud/network/http/HttpDownloadServer;->download(Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V

    .line 337
    :cond_0
    return-void
.end method

.method public downloadSmallFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "totalSize"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    .prologue
    .line 286
    const-string v6, "2"

    .line 287
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    .line 286
    invoke-direct/range {v0 .. v9}, Lcom/acloud/network/http/HttpDownloadServer;->getDownloadDataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;ZZ)Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    move-result-object v10

    .line 288
    .local v10, "data":Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fileName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSmallDownloadDataCaches.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 292
    invoke-direct {p0, v10}, Lcom/acloud/network/http/HttpDownloadServer;->downloadSmallFile(Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V

    .line 294
    :cond_0
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Lcom/acloud/network/http/HttpUtils;->isJniDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lcom/acloud/jni/HttpJni;->getInstance()Lcom/acloud/jni/HttpJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/jni/HttpJni;->quit()V

    .line 431
    :cond_0
    return-void
.end method
