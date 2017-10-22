.class public Lcom/acloud/gps/SatelliteInfo;
.super Ljava/lang/Object;
.source "SatelliteInfo.java"


# instance fields
.field private locationManager:Landroid/location/LocationManager;

.field private satelliteListener:Lcom/acloud/gps/SatelliteInfoListener;

.field private statusListener:Landroid/location/GpsStatus$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/gps/SatelliteInfo;->satelliteListener:Lcom/acloud/gps/SatelliteInfoListener;

    .line 18
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/acloud/gps/SatelliteInfo;->locationManager:Landroid/location/LocationManager;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/gps/SatelliteInfo;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/acloud/gps/SatelliteInfo;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/gps/SatelliteInfo;ILandroid/location/GpsStatus;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/acloud/gps/SatelliteInfo;->updateGpsStatus(ILandroid/location/GpsStatus;)V

    return-void
.end method

.method private updateGpsStatus(ILandroid/location/GpsStatus;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 70
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "numSatelliteList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GpsSatellite;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 73
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    iget-object v2, p0, Lcom/acloud/gps/SatelliteInfo;->satelliteListener:Lcom/acloud/gps/SatelliteInfoListener;

    invoke-interface {v2, v1}, Lcom/acloud/gps/SatelliteInfoListener;->onSatalliteInfoChanged(Ljava/util/List;)V

    .line 82
    .end local v1    # "numSatelliteList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GpsSatellite;>;"
    :cond_0
    return-void

    .line 73
    .restart local v1    # "numSatelliteList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GpsSatellite;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 78
    .local v0, "it1":Landroid/location/GpsSatellite;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public removeUpdate()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/acloud/gps/SatelliteInfo;->statusListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/acloud/gps/SatelliteInfo;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/acloud/gps/SatelliteInfo;->statusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/gps/SatelliteInfo;->statusListener:Landroid/location/GpsStatus$Listener;

    .line 31
    :cond_0
    return-void
.end method

.method public requestUpdate()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/acloud/gps/SatelliteInfo$1;

    invoke-direct {v0, p0}, Lcom/acloud/gps/SatelliteInfo$1;-><init>(Lcom/acloud/gps/SatelliteInfo;)V

    iput-object v0, p0, Lcom/acloud/gps/SatelliteInfo;->statusListener:Landroid/location/GpsStatus$Listener;

    .line 41
    iget-object v0, p0, Lcom/acloud/gps/SatelliteInfo;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/acloud/gps/SatelliteInfo;->statusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 42
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public setSatelliteListener(Lcom/acloud/gps/SatelliteInfoListener;)V
    .locals 0
    .param p1, "s"    # Lcom/acloud/gps/SatelliteInfoListener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/acloud/gps/SatelliteInfo;->satelliteListener:Lcom/acloud/gps/SatelliteInfoListener;

    .line 24
    invoke-virtual {p0}, Lcom/acloud/gps/SatelliteInfo;->requestUpdate()V

    .line 25
    return-void
.end method
