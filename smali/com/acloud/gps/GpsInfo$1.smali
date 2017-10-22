.class Lcom/acloud/gps/GpsInfo$1;
.super Ljava/lang/Object;
.source "GpsInfo.java"

# interfaces
.implements Lcom/acloud/gps/LocationInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/gps/GpsInfo;->bindListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/gps/GpsInfo;


# direct methods
.method constructor <init>(Lcom/acloud/gps/GpsInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationInfoChanged(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x7

    .line 136
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "sLatitude":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 144
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    invoke-static {v0, v7}, Lcom/acloud/gps/GpsInfo;->access$0(Lcom/acloud/gps/GpsInfo;Ljava/lang/String;)V

    .line 149
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "sLongitude":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 152
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    invoke-static {v0, v8}, Lcom/acloud/gps/GpsInfo;->access$2(Lcom/acloud/gps/GpsInfo;Ljava/lang/String;)V

    .line 158
    :goto_2
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v0, v1}, Lcom/acloud/gps/GpsInfo;->access$3(Lcom/acloud/gps/GpsInfo;F)V

    .line 159
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/acloud/gps/GpsInfo;->access$4(Lcom/acloud/gps/GpsInfo;D)V

    .line 160
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v6

    .line 161
    .local v6, "fSpeed":F
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    # getter for: Lcom/acloud/gps/GpsInfo;->mCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v0}, Lcom/acloud/gps/GpsInfo;->access$5(Lcom/acloud/gps/GpsInfo;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    # getter for: Lcom/acloud/gps/GpsInfo;->mCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v0}, Lcom/acloud/gps/GpsInfo;->access$5(Lcom/acloud/gps/GpsInfo;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    # getter for: Lcom/acloud/gps/GpsInfo;->mLong:Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/gps/GpsInfo;->access$6(Lcom/acloud/gps/GpsInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    # getter for: Lcom/acloud/gps/GpsInfo;->mLati:Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/gps/GpsInfo;->access$7(Lcom/acloud/gps/GpsInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    # getter for: Lcom/acloud/gps/GpsInfo;->mAccuracy:F
    invoke-static {v3}, Lcom/acloud/gps/GpsInfo;->access$8(Lcom/acloud/gps/GpsInfo;)F

    move-result v3

    iget-object v4, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    # getter for: Lcom/acloud/gps/GpsInfo;->mAltitude:D
    invoke-static {v4}, Lcom/acloud/gps/GpsInfo;->access$9(Lcom/acloud/gps/GpsInfo;)D

    move-result-wide v4

    invoke-interface/range {v0 .. v6}, Lcom/acloud/gps/GpsInfo$GpsInfoCallback;->setGpsLocationInfo(Ljava/lang/String;Ljava/lang/String;FDF)V

    goto :goto_0

    .line 146
    .end local v6    # "fSpeed":F
    .end local v8    # "sLongitude":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    iget-object v1, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    # invokes: Lcom/acloud/gps/GpsInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v1, v7, v4}, Lcom/acloud/gps/GpsInfo;->access$1(Lcom/acloud/gps/GpsInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acloud/gps/GpsInfo;->access$0(Lcom/acloud/gps/GpsInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    .restart local v8    # "sLongitude":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    iget-object v1, p0, Lcom/acloud/gps/GpsInfo$1;->this$0:Lcom/acloud/gps/GpsInfo;

    # invokes: Lcom/acloud/gps/GpsInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v1, v8, v4}, Lcom/acloud/gps/GpsInfo;->access$1(Lcom/acloud/gps/GpsInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acloud/gps/GpsInfo;->access$2(Lcom/acloud/gps/GpsInfo;Ljava/lang/String;)V

    goto :goto_2
.end method
