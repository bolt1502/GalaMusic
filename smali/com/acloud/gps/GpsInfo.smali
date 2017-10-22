.class public Lcom/acloud/gps/GpsInfo;
.super Ljava/lang/Object;
.source "GpsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    }
.end annotation


# static fields
.field private static LOG_PRINT_FLAG:Z

.field private static TAG:Ljava/lang/String;

.field private static instanse:Lcom/acloud/gps/GpsInfo;


# instance fields
.field private isInited:Z

.field private mAccuracy:F

.field private mAltitude:D

.field private mCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

.field private mContext:Landroid/content/Context;

.field private mDevicecode:Ljava/lang/String;

.field private mLati:Ljava/lang/String;

.field private mLocationInfo:Lcom/acloud/gps/LocationInfo;

.field private mLocationInfoListener:Lcom/acloud/gps/LocationInfoListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLong:Ljava/lang/String;

.field private mMac:Ljava/lang/String;

.field private mSatelliteInfo:Lcom/acloud/gps/SatelliteInfo;

.field private mSatelliteListener:Lcom/acloud/gps/SatelliteInfoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "GpsInfo"

    sput-object v0, Lcom/acloud/gps/GpsInfo;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/acloud/gps/GpsInfo;->LOG_PRINT_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lcom/acloud/gps/GpsInfo;->mLocationInfo:Lcom/acloud/gps/LocationInfo;

    .line 23
    iput-object v2, p0, Lcom/acloud/gps/GpsInfo;->mSatelliteInfo:Lcom/acloud/gps/SatelliteInfo;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/gps/GpsInfo;->isInited:Z

    .line 29
    iput-object v2, p0, Lcom/acloud/gps/GpsInfo;->mLati:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/acloud/gps/GpsInfo;->mLong:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/gps/GpsInfo;->mAccuracy:F

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/acloud/gps/GpsInfo;->mAltitude:D

    .line 34
    iput-object v2, p0, Lcom/acloud/gps/GpsInfo;->mDevicecode:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/acloud/gps/GpsInfo;->mMac:Ljava/lang/String;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/gps/GpsInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/acloud/gps/GpsInfo;->mLati:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/acloud/gps/GpsInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/acloud/gps/GpsInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/gps/GpsInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/acloud/gps/GpsInfo;->mLong:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/gps/GpsInfo;F)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/acloud/gps/GpsInfo;->mAccuracy:F

    return-void
.end method

.method static synthetic access$4(Lcom/acloud/gps/GpsInfo;D)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/acloud/gps/GpsInfo;->mAltitude:D

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/gps/GpsInfo;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    return-object v0
.end method

.method static synthetic access$6(Lcom/acloud/gps/GpsInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mLong:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/acloud/gps/GpsInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mLati:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/acloud/gps/GpsInfo;)F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/acloud/gps/GpsInfo;->mAccuracy:F

    return v0
.end method

.method static synthetic access$9(Lcom/acloud/gps/GpsInfo;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/acloud/gps/GpsInfo;->mAltitude:D

    return-wide v0
.end method

.method private bindListener()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "***************bindListener***************"

    invoke-static {v0}, Lcom/acloud/gps/GpsInfo;->printMsg(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/acloud/gps/GpsInfo$1;

    invoke-direct {v0, p0}, Lcom/acloud/gps/GpsInfo$1;-><init>(Lcom/acloud/gps/GpsInfo;)V

    iput-object v0, p0, Lcom/acloud/gps/GpsInfo;->mLocationInfoListener:Lcom/acloud/gps/LocationInfoListener;

    .line 167
    new-instance v0, Lcom/acloud/gps/GpsInfo$2;

    invoke-direct {v0, p0}, Lcom/acloud/gps/GpsInfo$2;-><init>(Lcom/acloud/gps/GpsInfo;)V

    iput-object v0, p0, Lcom/acloud/gps/GpsInfo;->mSatelliteListener:Lcom/acloud/gps/SatelliteInfoListener;

    .line 233
    return-void
.end method

.method public static getGpsInfo()Lcom/acloud/gps/GpsInfo;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/acloud/gps/GpsInfo;

    invoke-direct {v0}, Lcom/acloud/gps/GpsInfo;-><init>()V

    sput-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    .line 48
    :cond_0
    sget-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    return-object v0
.end method

.method public static onDestroy()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v0, "***************onDestroy***************"

    invoke-static {v0}, Lcom/acloud/gps/GpsInfo;->printMsg(Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    iget-object v0, v0, Lcom/acloud/gps/GpsInfo;->mLocationInfo:Lcom/acloud/gps/LocationInfo;

    if-eqz v0, :cond_1

    .line 252
    sget-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    iget-object v0, v0, Lcom/acloud/gps/GpsInfo;->mLocationInfo:Lcom/acloud/gps/LocationInfo;

    invoke-virtual {v0}, Lcom/acloud/gps/LocationInfo;->removeUpdates()V

    .line 254
    :cond_1
    sget-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    iget-object v0, v0, Lcom/acloud/gps/GpsInfo;->mSatelliteInfo:Lcom/acloud/gps/SatelliteInfo;

    if-eqz v0, :cond_2

    .line 255
    sget-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    iget-object v0, v0, Lcom/acloud/gps/GpsInfo;->mSatelliteInfo:Lcom/acloud/gps/SatelliteInfo;

    invoke-virtual {v0}, Lcom/acloud/gps/SatelliteInfo;->removeUpdate()V

    .line 257
    :cond_2
    sget-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/acloud/gps/GpsInfo;->isInited:Z

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/gps/GpsInfo;->instanse:Lcom/acloud/gps/GpsInfo;

    goto :goto_0
.end method

.method private openGpsSetting()V
    .locals 4

    .prologue
    .line 98
    iget-object v2, p0, Lcom/acloud/gps/GpsInfo;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/acloud/gps/GpsInfo;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/acloud/gps/GpsInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "android.settings.SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :try_start_1
    iget-object v2, p0, Lcom/acloud/gps/GpsInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 118
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static printMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-boolean v0, Lcom/acloud/gps/GpsInfo;->LOG_PRINT_FLAG:Z

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/acloud/gps/GpsInfo;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method private requestUpdate()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mLocationInfo:Lcom/acloud/gps/LocationInfo;

    invoke-virtual {v0}, Lcom/acloud/gps/LocationInfo;->removeUpdates()V

    .line 263
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mSatelliteInfo:Lcom/acloud/gps/SatelliteInfo;

    invoke-virtual {v0}, Lcom/acloud/gps/SatelliteInfo;->removeUpdate()V

    .line 264
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mLocationInfo:Lcom/acloud/gps/LocationInfo;

    const-wide/16 v2, 0x3e8

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v3, v1}, Lcom/acloud/gps/LocationInfo;->requestLocationUpdates(JF)V

    .line 265
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mSatelliteInfo:Lcom/acloud/gps/SatelliteInfo;

    invoke-virtual {v0}, Lcom/acloud/gps/SatelliteInfo;->requestUpdate()V

    .line 266
    return-void
.end method

.method private subString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iCount"    # I

    .prologue
    .line 236
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "is":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p2, :cond_0

    .line 240
    .end local p1    # "s":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    add-int v2, v0, p2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected getDevicecode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mDevicecode:Ljava/lang/String;

    return-object v0
.end method

.method protected getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized initGpsInfo(Landroid/content/Context;Lcom/acloud/gps/GpsInfo$GpsInfoCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    const-string v0, "initGpsInfo"

    invoke-static {v0}, Lcom/acloud/gps/GpsInfo;->printMsg(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/acloud/gps/GpsInfo;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/acloud/gps/GpsInfo;->mCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    .line 59
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/acloud/gps/GpsInfo;->mLocationManager:Landroid/location/LocationManager;

    .line 60
    new-instance v0, Lcom/acloud/gps/LocationInfo;

    iget-object v1, p0, Lcom/acloud/gps/GpsInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/acloud/gps/LocationInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/gps/GpsInfo;->mLocationInfo:Lcom/acloud/gps/LocationInfo;

    .line 61
    new-instance v0, Lcom/acloud/gps/SatelliteInfo;

    iget-object v1, p0, Lcom/acloud/gps/GpsInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/acloud/gps/SatelliteInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/gps/GpsInfo;->mSatelliteInfo:Lcom/acloud/gps/SatelliteInfo;

    .line 63
    invoke-direct {p0}, Lcom/acloud/gps/GpsInfo;->openGpsSetting()V

    .line 64
    invoke-direct {p0}, Lcom/acloud/gps/GpsInfo;->bindListener()V

    .line 66
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mLocationInfo:Lcom/acloud/gps/LocationInfo;

    iget-object v1, p0, Lcom/acloud/gps/GpsInfo;->mLocationInfoListener:Lcom/acloud/gps/LocationInfoListener;

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/acloud/gps/LocationInfo;->setLocationListener(Lcom/acloud/gps/LocationInfoListener;JF)V

    .line 67
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mSatelliteInfo:Lcom/acloud/gps/SatelliteInfo;

    iget-object v1, p0, Lcom/acloud/gps/GpsInfo;->mSatelliteListener:Lcom/acloud/gps/SatelliteInfoListener;

    invoke-virtual {v0, v1}, Lcom/acloud/gps/SatelliteInfo;->setSatelliteListener(Lcom/acloud/gps/SatelliteInfoListener;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/gps/GpsInfo;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/acloud/gps/GpsInfo;->isInited:Z

    return v0
.end method

.method public request()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/acloud/gps/GpsInfo;->isInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/gps/GpsInfo;->mCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/acloud/gps/GpsInfo;->requestUpdate()V

    .line 92
    :cond_0
    return-void
.end method

.method public resetGps()V
    .locals 4

    .prologue
    .line 273
    const-string v2, "***************resetGps***************"

    invoke-static {v2}, Lcom/acloud/gps/GpsInfo;->printMsg(Ljava/lang/String;)V

    .line 275
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "xy.android.GPS_COLDSTART"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/acloud/gps/GpsInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/acloud/gps/GpsInfo;->mLati:Ljava/lang/String;

    .line 279
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/acloud/gps/GpsInfo;->mLong:Ljava/lang/String;

    .line 281
    invoke-direct {p0}, Lcom/acloud/gps/GpsInfo;->requestUpdate()V

    .line 285
    iget-object v2, p0, Lcom/acloud/gps/GpsInfo;->mSatelliteInfo:Lcom/acloud/gps/SatelliteInfo;

    invoke-virtual {v2}, Lcom/acloud/gps/SatelliteInfo;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e1":Ljava/lang/Exception;
    sget-object v2, Lcom/acloud/gps/GpsInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setDevicecode(Ljava/lang/String;)V
    .locals 0
    .param p1, "devicecode"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/acloud/gps/GpsInfo;->mDevicecode:Ljava/lang/String;

    .line 355
    return-void
.end method

.method protected setmMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/acloud/gps/GpsInfo;->mMac:Ljava/lang/String;

    .line 365
    return-void
.end method
