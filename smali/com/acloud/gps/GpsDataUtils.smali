.class public Lcom/acloud/gps/GpsDataUtils;
.super Ljava/lang/Object;
.source "GpsDataUtils.java"


# static fields
.field private static DEFAULT_LATITUDE:D

.field private static DEFAULT_LONGITUDE:D

.field private static pThis:Lcom/acloud/gps/GpsDataUtils;


# instance fields
.field private mAltitude:D

.field private mContext:Landroid/content/Context;

.field private mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

.field private mLatitude:D

.field private mLock:Ljava/lang/Object;

.field private mLongitude:D

.field private mSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/gps/GpsDataUtils;->pThis:Lcom/acloud/gps/GpsDataUtils;

    .line 22
    const-wide v0, 0x40368d274e22a2c2L    # 22.551381

    sput-wide v0, Lcom/acloud/gps/GpsDataUtils;->DEFAULT_LATITUDE:D

    .line 23
    const-wide v0, 0x405c7aeddce7cd03L    # 113.920768

    sput-wide v0, Lcom/acloud/gps/GpsDataUtils;->DEFAULT_LONGITUDE:D

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v2, p0, Lcom/acloud/gps/GpsDataUtils;->mContext:Landroid/content/Context;

    .line 25
    sget-wide v0, Lcom/acloud/gps/GpsDataUtils;->DEFAULT_LATITUDE:D

    iput-wide v0, p0, Lcom/acloud/gps/GpsDataUtils;->mLatitude:D

    .line 26
    sget-wide v0, Lcom/acloud/gps/GpsDataUtils;->DEFAULT_LONGITUDE:D

    iput-wide v0, p0, Lcom/acloud/gps/GpsDataUtils;->mLongitude:D

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/acloud/gps/GpsDataUtils;->mAltitude:D

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/gps/GpsDataUtils;->mSpeed:F

    .line 30
    iput-object v2, p0, Lcom/acloud/gps/GpsDataUtils;->mLock:Ljava/lang/Object;

    .line 32
    iput-object v2, p0, Lcom/acloud/gps/GpsDataUtils;->mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    .line 123
    iput-object p1, p0, Lcom/acloud/gps/GpsDataUtils;->mContext:Landroid/content/Context;

    .line 125
    iput-object p0, p0, Lcom/acloud/gps/GpsDataUtils;->mLock:Ljava/lang/Object;

    .line 126
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/gps/GpsDataUtils;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils;->mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/gps/GpsDataUtils;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/gps/GpsDataUtils;D)V
    .locals 1

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/acloud/gps/GpsDataUtils;->mLatitude:D

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/gps/GpsDataUtils;D)V
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/acloud/gps/GpsDataUtils;->mLongitude:D

    return-void
.end method

.method static synthetic access$4(Lcom/acloud/gps/GpsDataUtils;D)V
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/acloud/gps/GpsDataUtils;->mAltitude:D

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/gps/GpsDataUtils;F)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/acloud/gps/GpsDataUtils;->mSpeed:F

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/acloud/gps/GpsDataUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v0, Lcom/acloud/gps/GpsDataUtils;->pThis:Lcom/acloud/gps/GpsDataUtils;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/acloud/gps/GpsDataUtils;

    invoke-direct {v0, p0}, Lcom/acloud/gps/GpsDataUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/acloud/gps/GpsDataUtils;->pThis:Lcom/acloud/gps/GpsDataUtils;

    .line 94
    :cond_0
    sget-object v0, Lcom/acloud/gps/GpsDataUtils;->pThis:Lcom/acloud/gps/GpsDataUtils;

    return-object v0
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/acloud/gps/GpsDataUtils;->pThis:Lcom/acloud/gps/GpsDataUtils;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/acloud/gps/GpsDataUtils;->pThis:Lcom/acloud/gps/GpsDataUtils;

    invoke-virtual {v0}, Lcom/acloud/gps/GpsDataUtils;->release()V

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/gps/GpsDataUtils;->pThis:Lcom/acloud/gps/GpsDataUtils;

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public getAltitude()D
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/acloud/gps/GpsDataUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-wide v2, p0, Lcom/acloud/gps/GpsDataUtils;->mAltitude:D

    monitor-exit v1

    return-wide v2

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLatitude()D
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/acloud/gps/GpsDataUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-wide v2, p0, Lcom/acloud/gps/GpsDataUtils;->mLatitude:D

    monitor-exit v1

    return-wide v2

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLongitude()D
    .locals 4

    .prologue
    .line 50
    iget-object v1, p0, Lcom/acloud/gps/GpsDataUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-wide v2, p0, Lcom/acloud/gps/GpsDataUtils;->mLongitude:D

    monitor-exit v1

    return-wide v2

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/acloud/gps/GpsDataUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget v0, p0, Lcom/acloud/gps/GpsDataUtils;->mSpeed:F

    monitor-exit v1

    return v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lcom/acloud/gps/GpsInfo;->getGpsInfo()Lcom/acloud/gps/GpsInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/gps/GpsDataUtils;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/acloud/gps/GpsDataUtils$1;

    invoke-direct {v2, p0}, Lcom/acloud/gps/GpsDataUtils$1;-><init>(Lcom/acloud/gps/GpsDataUtils;)V

    invoke-virtual {v0, v1, v2}, Lcom/acloud/gps/GpsInfo;->initGpsInfo(Landroid/content/Context;Lcom/acloud/gps/GpsInfo$GpsInfoCallback;)V

    .line 165
    return-void
.end method

.method public isInPosition()Z
    .locals 4

    .prologue
    .line 39
    sget-wide v0, Lcom/acloud/gps/GpsDataUtils;->DEFAULT_LATITUDE:D

    iget-wide v2, p0, Lcom/acloud/gps/GpsDataUtils;->mLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Lcom/acloud/gps/GpsDataUtils;->DEFAULT_LONGITUDE:D

    iget-wide v2, p0, Lcom/acloud/gps/GpsDataUtils;->mLongitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 119
    invoke-static {}, Lcom/acloud/gps/GpsInfo;->onDestroy()V

    .line 120
    return-void
.end method

.method public setGpsInfoCallback(Lcom/acloud/gps/GpsInfo$GpsInfoCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/acloud/gps/GpsDataUtils;->mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    .line 113
    return-void
.end method
