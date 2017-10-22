.class Lcom/acloud/gps/GpsDataUtils$1;
.super Ljava/lang/Object;
.source "GpsDataUtils.java"

# interfaces
.implements Lcom/acloud/gps/GpsInfo$GpsInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/gps/GpsDataUtils;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/gps/GpsDataUtils;


# direct methods
.method constructor <init>(Lcom/acloud/gps/GpsDataUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setGpsCount(IIII)V
    .locals 1
    .param p1, "iGpsInView"    # I
    .param p2, "iGpsInUse"    # I
    .param p3, "iGlonassInView"    # I
    .param p4, "iGLonassInUse"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    # getter for: Lcom/acloud/gps/GpsDataUtils;->mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v0}, Lcom/acloud/gps/GpsDataUtils;->access$0(Lcom/acloud/gps/GpsDataUtils;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    # getter for: Lcom/acloud/gps/GpsDataUtils;->mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v0}, Lcom/acloud/gps/GpsDataUtils;->access$0(Lcom/acloud/gps/GpsDataUtils;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/acloud/gps/GpsInfo$GpsInfoCallback;->setGpsCount(IIII)V

    .line 163
    :cond_0
    return-void
.end method

.method public setGpsLocationInfo(Ljava/lang/String;Ljava/lang/String;FDF)V
    .locals 8
    .param p1, "longitude"    # Ljava/lang/String;
    .param p2, "latitude"    # Ljava/lang/String;
    .param p3, "accuracy"    # F
    .param p4, "altitude"    # D
    .param p6, "fSpeed"    # F

    .prologue
    .line 146
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    # getter for: Lcom/acloud/gps/GpsDataUtils;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/acloud/gps/GpsDataUtils;->access$1(Lcom/acloud/gps/GpsDataUtils;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/acloud/gps/GpsDataUtils;->access$2(Lcom/acloud/gps/GpsDataUtils;D)V

    .line 148
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/acloud/gps/GpsDataUtils;->access$3(Lcom/acloud/gps/GpsDataUtils;D)V

    .line 149
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    invoke-static {v0, p4, p5}, Lcom/acloud/gps/GpsDataUtils;->access$4(Lcom/acloud/gps/GpsDataUtils;D)V

    .line 150
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    invoke-static {v0, p6}, Lcom/acloud/gps/GpsDataUtils;->access$5(Lcom/acloud/gps/GpsDataUtils;F)V

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    # getter for: Lcom/acloud/gps/GpsDataUtils;->mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v0}, Lcom/acloud/gps/GpsDataUtils;->access$0(Lcom/acloud/gps/GpsDataUtils;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    # getter for: Lcom/acloud/gps/GpsDataUtils;->mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v0}, Lcom/acloud/gps/GpsDataUtils;->access$0(Lcom/acloud/gps/GpsDataUtils;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/acloud/gps/GpsInfo$GpsInfoCallback;->setGpsLocationInfo(Ljava/lang/String;Ljava/lang/String;FDF)V

    .line 155
    :cond_0
    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setGpsSatelliteInfo([Ljava/lang/String;)V
    .locals 1
    .param p1, "satelliteInfo"    # [Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    # getter for: Lcom/acloud/gps/GpsDataUtils;->mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v0}, Lcom/acloud/gps/GpsDataUtils;->access$0(Lcom/acloud/gps/GpsDataUtils;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/acloud/gps/GpsDataUtils$1;->this$0:Lcom/acloud/gps/GpsDataUtils;

    # getter for: Lcom/acloud/gps/GpsDataUtils;->mGpsInfoCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v0}, Lcom/acloud/gps/GpsDataUtils;->access$0(Lcom/acloud/gps/GpsDataUtils;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/acloud/gps/GpsInfo$GpsInfoCallback;->setGpsSatelliteInfo([Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method
