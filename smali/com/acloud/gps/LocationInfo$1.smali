.class Lcom/acloud/gps/LocationInfo$1;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/gps/LocationInfo;->requestLocationUpdates(JF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/gps/LocationInfo;


# direct methods
.method constructor <init>(Lcom/acloud/gps/LocationInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/gps/LocationInfo$1;->this$0:Lcom/acloud/gps/LocationInfo;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/acloud/gps/LocationInfo$1;->this$0:Lcom/acloud/gps/LocationInfo;

    # getter for: Lcom/acloud/gps/LocationInfo;->bFlag:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/acloud/gps/LocationInfo;->access$1(Lcom/acloud/gps/LocationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/acloud/gps/LocationInfo$1;->this$0:Lcom/acloud/gps/LocationInfo;

    # getter for: Lcom/acloud/gps/LocationInfo;->locationInfoListener:Lcom/acloud/gps/LocationInfoListener;
    invoke-static {v0}, Lcom/acloud/gps/LocationInfo;->access$0(Lcom/acloud/gps/LocationInfo;)Lcom/acloud/gps/LocationInfoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/acloud/gps/LocationInfoListener;->onLocationInfoChanged(Landroid/location/Location;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/acloud/gps/LocationInfo$1;->this$0:Lcom/acloud/gps/LocationInfo;

    # getter for: Lcom/acloud/gps/LocationInfo;->locationInfoListener:Lcom/acloud/gps/LocationInfoListener;
    invoke-static {v0}, Lcom/acloud/gps/LocationInfo;->access$0(Lcom/acloud/gps/LocationInfo;)Lcom/acloud/gps/LocationInfoListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/acloud/gps/LocationInfoListener;->onLocationInfoChanged(Landroid/location/Location;)V

    .line 70
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 61
    return-void
.end method
