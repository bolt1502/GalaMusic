.class Lcom/acloud/gps/SatelliteInfo$1;
.super Ljava/lang/Object;
.source "SatelliteInfo.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/gps/SatelliteInfo;->requestUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/gps/SatelliteInfo;


# direct methods
.method constructor <init>(Lcom/acloud/gps/SatelliteInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/gps/SatelliteInfo$1;->this$0:Lcom/acloud/gps/SatelliteInfo;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lcom/acloud/gps/SatelliteInfo$1;->this$0:Lcom/acloud/gps/SatelliteInfo;

    # getter for: Lcom/acloud/gps/SatelliteInfo;->locationManager:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/acloud/gps/SatelliteInfo;->access$0(Lcom/acloud/gps/SatelliteInfo;)Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 38
    .local v0, "status":Landroid/location/GpsStatus;
    iget-object v1, p0, Lcom/acloud/gps/SatelliteInfo$1;->this$0:Lcom/acloud/gps/SatelliteInfo;

    # invokes: Lcom/acloud/gps/SatelliteInfo;->updateGpsStatus(ILandroid/location/GpsStatus;)V
    invoke-static {v1, p1, v0}, Lcom/acloud/gps/SatelliteInfo;->access$1(Lcom/acloud/gps/SatelliteInfo;ILandroid/location/GpsStatus;)V

    .line 39
    return-void
.end method
