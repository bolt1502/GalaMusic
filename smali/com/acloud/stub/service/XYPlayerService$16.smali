.class Lcom/acloud/stub/service/XYPlayerService$16;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/service/XYPlayerService;->initWave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/service/XYPlayerService;


# direct methods
.method constructor <init>(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$16;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 1842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 11
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "ffft"    # [B
    .param p3, "samplingRate"    # I

    .prologue
    .line 1860
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->FFTING:Z
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$38()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1927
    :goto_0
    return-void

    .line 1874
    :cond_0
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/acloud/stub/service/XYPlayerService;->access$39(Z)V

    .line 1875
    move-object v0, p2

    .line 1877
    .local v0, "fft":[B
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mPlayerState:I
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$40()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 1878
    array-length v7, v0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_5

    .line 1880
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1881
    .local v4, "str":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    aget-byte v7, v0, v7

    const/4 v8, 0x0

    aget-byte v8, v0, v8

    mul-int/2addr v7, v8

    .line 1882
    const/4 v8, 0x1

    aget-byte v8, v0, v8

    const/4 v9, 0x1

    aget-byte v9, v0, v9

    mul-int/2addr v8, v9

    .line 1881
    add-int/2addr v7, v8

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v7, v8

    .line 1882
    const/high16 v8, 0x43000000    # 128.0f

    .line 1881
    div-float v6, v7, v8

    .line 1883
    .local v6, "tempFft":F
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "?@?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1885
    iget-object v7, p0, Lcom/acloud/stub/service/XYPlayerService$16;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-static {v7}, Lcom/acloud/VerConfig;->isAc8217(Landroid/content/Context;)Z

    move-result v2

    .line 1887
    .local v2, "isAc8217":Z
    const/4 v5, 0x0

    .line 1889
    .local v5, "sum":I
    const/4 v1, 0x2

    .local v1, "i":I
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    array-length v7, v0

    if-lt v1, v7, :cond_1

    .line 1907
    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    .line 1908
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/acloud/stub/service/XYPlayerService;->access$39(Z)V

    goto :goto_0

    .line 1890
    :cond_1
    if-eqz v2, :cond_3

    .line 1891
    aget-byte v7, v0, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "?@?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1892
    aget-byte v7, v0, v1

    if-eqz v7, :cond_2

    .line 1893
    aget-byte v5, v0, v1

    .line 1889
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1896
    :cond_3
    const/high16 v7, 0x40000000    # 2.0f

    aget-byte v8, v0, v1

    .line 1897
    aget-byte v9, v0, v1

    mul-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, v0, v9

    add-int/lit8 v10, v1, 0x1

    aget-byte v10, v0, v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    .line 1896
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    .line 1897
    const/high16 v8, 0x43000000    # 128.0f

    .line 1896
    div-float v6, v7, v8

    .line 1898
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "?@?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1899
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1912
    :cond_4
    iget-object v7, p0, Lcom/acloud/stub/service/XYPlayerService$16;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    invoke-static {v7}, Lcom/acloud/stub/service/XYPlayerService;->access$19(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1914
    :try_start_0
    iget-object v7, p0, Lcom/acloud/stub/service/XYPlayerService$16;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    invoke-static {v7}, Lcom/acloud/stub/service/XYPlayerService;->access$19(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 1915
    const-string v10, "audiovisualizer"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1914
    invoke-interface {v7, v8}, Lcom/acloud/stub/service/aidl/IPlayServiceCallback;->onCallback([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1926
    .end local v1    # "i":I
    .end local v2    # "isAc8217":Z
    .end local v3    # "j":I
    .end local v4    # "str":Ljava/lang/StringBuffer;
    .end local v5    # "sum":I
    .end local v6    # "tempFft":F
    :cond_5
    :goto_3
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/acloud/stub/service/XYPlayerService;->access$39(Z)V

    goto/16 :goto_0

    .line 1916
    .restart local v1    # "i":I
    .restart local v2    # "isAc8217":Z
    .restart local v3    # "j":I
    .restart local v4    # "str":Ljava/lang/StringBuffer;
    .restart local v5    # "sum":I
    .restart local v6    # "tempFft":F
    :catch_0
    move-exception v7

    goto :goto_3
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "waveform"    # [B
    .param p3, "samplingRate"    # I

    .prologue
    .line 1848
    return-void
.end method
