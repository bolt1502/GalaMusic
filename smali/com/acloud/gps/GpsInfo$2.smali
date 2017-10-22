.class Lcom/acloud/gps/GpsInfo$2;
.super Ljava/lang/Object;
.source "GpsInfo.java"

# interfaces
.implements Lcom/acloud/gps/SatelliteInfoListener;


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
    iput-object p1, p0, Lcom/acloud/gps/GpsInfo$2;->this$0:Lcom/acloud/gps/GpsInfo;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatalliteInfoChanged(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "gpsSatList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GpsSatellite;>;"
    const/16 v13, 0x41

    .line 171
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 176
    .local v7, "iSize":I
    const/4 v4, 0x0

    .line 177
    .local v4, "iGpsCount":I
    const/4 v2, 0x0

    .line 178
    .local v2, "iGlonassCount":I
    const/4 v5, 0x0

    .line 179
    .local v5, "iGpsCountUsed":I
    const/4 v3, 0x0

    .line 180
    .local v3, "iGlonassCountUsed":I
    new-array v10, v7, [Ljava/lang/String;

    .line 181
    .local v10, "satelliteInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v7, :cond_2

    .line 224
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "iGpsCount = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iGpsCountUsed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/acloud/gps/GpsInfo;->printMsg(Ljava/lang/String;)V

    .line 225
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "iGlonassCount = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iGlonassCountUsed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/acloud/gps/GpsInfo;->printMsg(Ljava/lang/String;)V

    .line 227
    iget-object v11, p0, Lcom/acloud/gps/GpsInfo$2;->this$0:Lcom/acloud/gps/GpsInfo;

    # getter for: Lcom/acloud/gps/GpsInfo;->mCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v11}, Lcom/acloud/gps/GpsInfo;->access$5(Lcom/acloud/gps/GpsInfo;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 228
    iget-object v11, p0, Lcom/acloud/gps/GpsInfo$2;->this$0:Lcom/acloud/gps/GpsInfo;

    # getter for: Lcom/acloud/gps/GpsInfo;->mCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v11}, Lcom/acloud/gps/GpsInfo;->access$5(Lcom/acloud/gps/GpsInfo;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v11

    invoke-interface {v11, v4, v5, v2, v3}, Lcom/acloud/gps/GpsInfo$GpsInfoCallback;->setGpsCount(IIII)V

    .line 229
    iget-object v11, p0, Lcom/acloud/gps/GpsInfo$2;->this$0:Lcom/acloud/gps/GpsInfo;

    # getter for: Lcom/acloud/gps/GpsInfo;->mCallback:Lcom/acloud/gps/GpsInfo$GpsInfoCallback;
    invoke-static {v11}, Lcom/acloud/gps/GpsInfo;->access$5(Lcom/acloud/gps/GpsInfo;)Lcom/acloud/gps/GpsInfo$GpsInfoCallback;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/acloud/gps/GpsInfo$GpsInfoCallback;->setGpsSatelliteInfo([Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/GpsSatellite;

    .line 184
    .local v9, "sat":Landroid/location/GpsSatellite;
    invoke-virtual {v9}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    .line 185
    .local v6, "iPrn":I
    if-ge v6, v13, :cond_4

    .line 186
    add-int/lit8 v4, v4, 0x1

    .line 187
    invoke-virtual {v9}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 188
    add-int/lit8 v5, v5, 0x1

    .line 197
    :cond_3
    :goto_2
    invoke-virtual {v9}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v11

    float-to-int v8, v11

    .line 200
    .local v8, "iSnr":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v9}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 203
    const-string v11, "0,"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :goto_3
    if-lez v6, :cond_6

    if-ge v6, v13, :cond_6

    .line 209
    const-string v11, "G"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 191
    .end local v0    # "buff":Ljava/lang/StringBuilder;
    .end local v8    # "iSnr":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 192
    invoke-virtual {v9}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 205
    .restart local v0    # "buff":Ljava/lang/StringBuilder;
    .restart local v8    # "iSnr":I
    :cond_5
    const-string v11, "1,"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 210
    :cond_6
    const/16 v11, 0x61

    if-ge v6, v11, :cond_7

    .line 211
    const-string v11, "R"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v6, -0x40

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 212
    :cond_7
    const/16 v11, 0xb7

    if-ge v6, v11, :cond_8

    .line 213
    const-string v11, "I"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit16 v12, v6, -0xac

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 214
    :cond_8
    const/16 v11, 0xc1

    if-ge v6, v11, :cond_9

    .line 215
    const-string v11, "Q"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit16 v12, v6, -0xb6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 216
    :cond_9
    const/16 v11, 0xcb

    if-ge v6, v11, :cond_a

    .line 217
    const-string v11, "J"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit16 v12, v6, -0xc0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 219
    :cond_a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4
.end method
