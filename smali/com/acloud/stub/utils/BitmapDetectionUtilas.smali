.class public Lcom/acloud/stub/utils/BitmapDetectionUtilas;
.super Ljava/lang/Object;
.source "BitmapDetectionUtilas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;,
        Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;
    }
.end annotation


# instance fields
.field private mBitmapCallback:Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;

.field private mContext:Landroid/content/Context;

.field private mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsRelease:Z

.field private mLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 22
    iput-object v2, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mContext:Landroid/content/Context;

    .line 23
    iput-object v2, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mLock:Ljava/lang/Object;

    .line 33
    iput-object v2, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mBitmapCallback:Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mPath:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mTag:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mWidth:I

    .line 37
    iput v1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mHeight:I

    .line 39
    iput-object v2, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mHandler:Landroid/os/Handler;

    .line 40
    iput-boolean v1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mIsRelease:Z

    .line 48
    iput-boolean v1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mIsRelease:Z

    .line 49
    iput-object p1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mBitmapCallback:Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;

    .line 52
    iput-object p0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$1;

    invoke-direct {v0, p0}, Lcom/acloud/stub/utils/BitmapDetectionUtilas$1;-><init>(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)V

    iput-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mIsRelease:Z

    return v0
.end method

.method static synthetic access$1(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mBitmapCallback:Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mWidth:I

    return v0
.end method

.method static synthetic access$6(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mHeight:I

    return v0
.end method

.method static synthetic access$7(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getDetectionBitmap(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iput-object p1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mPath:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mTag:Ljava/lang/String;

    .line 88
    iput p2, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mWidth:I

    .line 89
    iput p3, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mHeight:I

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;

    invoke-direct {v1, p0}, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;-><init>(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mIsRelease:Z

    .line 75
    return-void
.end method
