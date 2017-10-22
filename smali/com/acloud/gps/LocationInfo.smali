.class public Lcom/acloud/gps/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private bFlag:Ljava/lang/Boolean;

.field private locationInfoListener:Lcom/acloud/gps/LocationInfoListener;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;

.field private mProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "LocationInfo"

    sput-object v0, Lcom/acloud/gps/LocationInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/gps/LocationInfo;->bFlag:Ljava/lang/Boolean;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationInfoListener:Lcom/acloud/gps/LocationInfoListener;

    .line 29
    iput-object p1, p0, Lcom/acloud/gps/LocationInfo;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/gps/LocationInfo;->bFlag:Ljava/lang/Boolean;

    .line 31
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationManager:Landroid/location/LocationManager;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/gps/LocationInfo;)Lcom/acloud/gps/LocationInfoListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationInfoListener:Lcom/acloud/gps/LocationInfoListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/gps/LocationInfo;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/acloud/gps/LocationInfo;->bFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method private getProvider()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 98
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 99
    .local v0, "criteria":Landroid/location/Criteria;
    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 100
    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 101
    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 102
    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 103
    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 104
    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 106
    iget-object v5, p0, Lcom/acloud/gps/LocationInfo;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v0, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "provider":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "gps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 110
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/acloud/gps/LocationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    const-string v3, "gps"

    .line 135
    :cond_1
    iput-object v3, p0, Lcom/acloud/gps/LocationInfo;->mProvider:Ljava/lang/String;

    .line 136
    return-void

    .line 111
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "android.provider.Settings$Secure"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 115
    .local v4, "secureClass":Ljava/lang/Class;
    const-string v5, "isLocationProviderEnabled"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 116
    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/Boolean;

    aput-object v8, v6, v7

    .line 115
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 117
    .local v2, "isMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/acloud/gps/LocationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "gps"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 126
    .end local v2    # "isMethod":Ljava/lang/reflect/Method;
    .end local v4    # "secureClass":Ljava/lang/Class;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 124
    :catch_2
    move-exception v5

    goto :goto_0

    .line 122
    :catch_3
    move-exception v5

    goto :goto_0

    .line 120
    :catch_4
    move-exception v5

    goto :goto_0

    .line 118
    :catch_5
    move-exception v5

    goto :goto_0
.end method

.method private onSendCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 173
    iget-object v2, p0, Lcom/acloud/gps/LocationInfo;->locationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/acloud/gps/LocationInfo;->locationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationManager:Landroid/location/LocationManager;

    .line 178
    .local v0, "localLocationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/acloud/gps/LocationInfo;->mProvider:Ljava/lang/String;

    .line 179
    .local v1, "str2":Ljava/lang/String;
    invoke-virtual {v0, v1, p1, p2}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0
.end method


# virtual methods
.method public onSendColdStart()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "delete_aiding_data"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/acloud/gps/LocationInfo;->onSendCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public onSendWarmStart()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "localBundle":Landroid/os/Bundle;
    const-string v1, "ephemeris"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    const-string v1, "delete_aiding_data"

    invoke-direct {p0, v1, v0}, Lcom/acloud/gps/LocationInfo;->onSendCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public openGPSSettings()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 43
    return-void
.end method

.method public removeUpdates()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/gps/LocationInfo;->bFlag:Ljava/lang/Boolean;

    .line 84
    iget-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/acloud/gps/LocationInfo;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationListener:Landroid/location/LocationListener;

    .line 88
    :cond_0
    return-void
.end method

.method public requestLocationUpdates(JF)V
    .locals 7
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/gps/LocationInfo;->bFlag:Ljava/lang/Boolean;

    .line 57
    new-instance v0, Lcom/acloud/gps/LocationInfo$1;

    invoke-direct {v0, p0}, Lcom/acloud/gps/LocationInfo$1;-><init>(Lcom/acloud/gps/LocationInfo;)V

    iput-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationListener:Landroid/location/LocationListener;

    .line 79
    iget-object v0, p0, Lcom/acloud/gps/LocationInfo;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/acloud/gps/LocationInfo;->mProvider:Ljava/lang/String;

    iget-object v5, p0, Lcom/acloud/gps/LocationInfo;->locationListener:Landroid/location/LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 80
    return-void
.end method

.method public setLocationListener(Lcom/acloud/gps/LocationInfoListener;JF)V
    .locals 0
    .param p1, "l"    # Lcom/acloud/gps/LocationInfoListener;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F

    .prologue
    .line 46
    iput-object p1, p0, Lcom/acloud/gps/LocationInfo;->locationInfoListener:Lcom/acloud/gps/LocationInfoListener;

    .line 47
    invoke-direct {p0}, Lcom/acloud/gps/LocationInfo;->getProvider()V

    .line 52
    invoke-virtual {p0, p2, p3, p4}, Lcom/acloud/gps/LocationInfo;->requestLocationUpdates(JF)V

    .line 53
    return-void
.end method
