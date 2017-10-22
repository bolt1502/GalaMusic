.class Lorg/videolan/libvlc/AWindow$1;
.super Lorg/videolan/libvlc/AWindowNativeHandler;
.source "AWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/AWindow;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/AWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    .line 440
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindowNativeHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/videolan/libvlc/AWindow$1;)Lorg/videolan/libvlc/AWindow;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    return-object v0
.end method


# virtual methods
.method public getSubtitlesSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    const/4 v1, 0x1

    # invokes: Lorg/videolan/libvlc/AWindow;->getNativeSurface(I)Landroid/view/Surface;
    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$0(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    const/4 v1, 0x0

    # invokes: Lorg/videolan/libvlc/AWindow;->getNativeSurface(I)Landroid/view/Surface;
    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$0(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method protected native nativeOnMouseEvent(JIIII)V
.end method

.method protected native nativeOnWindowSize(JII)V
.end method

.method public sendHardwareAccelerationError()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$17(Lorg/videolan/libvlc/AWindow;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/videolan/libvlc/AWindow$1$3;

    invoke-direct {v1, p0}, Lorg/videolan/libvlc/AWindow$1$3;-><init>(Lorg/videolan/libvlc/AWindow$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    return-void
.end method

.method public setBuffersGeometry(Landroid/view/Surface;III)Z
    .locals 9
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .prologue
    const/4 v7, 0x0

    .line 477
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 527
    :goto_0
    return v0

    .line 479
    :cond_0
    mul-int v0, p2, p3

    if-nez v0, :cond_1

    move v0, v7

    .line 480
    goto :goto_0

    .line 481
    :cond_1
    const-string v0, "AWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configureSurface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v1

    monitor-enter v1

    .line 484
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    # getter for: Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->configured:Z
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$1(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    # getter for: Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->abort:Z
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$2(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    :cond_2
    monitor-exit v1

    move v0, v7

    goto :goto_0

    .line 483
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$17(Lorg/videolan/libvlc/AWindow;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lorg/videolan/libvlc/AWindow$1$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/libvlc/AWindow$1$1;-><init>(Lorg/videolan/libvlc/AWindow$1;Landroid/view/Surface;III)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 519
    :try_start_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 520
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    # getter for: Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->configured:Z
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$1(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    # getter for: Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->abort:Z
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$2(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 522
    :cond_4
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$3(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)V

    .line 519
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 527
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 483
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 521
    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 519
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 524
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/InterruptedException;
    move v0, v7

    .line 525
    goto/16 :goto_0
.end method

.method public setCallback(J)Z
    .locals 11
    .param p1, "nativeHandle"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, -0x1

    .line 459
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1(Lorg/videolan/libvlc/AWindow;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 460
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2(Lorg/videolan/libvlc/AWindow;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 461
    monitor-exit v8

    const/4 v0, 0x0

    .line 472
    :goto_0
    return v0

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-static {v0, p1, p2}, Lorg/videolan/libvlc/AWindow;->access$3(Lorg/videolan/libvlc/AWindow;J)V

    .line 463
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2(Lorg/videolan/libvlc/AWindow;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mMouseAction:I
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$4(Lorg/videolan/libvlc/AWindow;)I

    move-result v0

    if-eq v0, v9, :cond_1

    .line 465
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2(Lorg/videolan/libvlc/AWindow;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mMouseAction:I
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$4(Lorg/videolan/libvlc/AWindow;)I

    move-result v4

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mMouseButton:I
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$5(Lorg/videolan/libvlc/AWindow;)I

    move-result v5

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mMouseX:I
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$6(Lorg/videolan/libvlc/AWindow;)I

    move-result v6

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mMouseY:I
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$7(Lorg/videolan/libvlc/AWindow;)I

    move-result v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/videolan/libvlc/AWindow$1;->nativeOnMouseEvent(JIIII)V

    .line 466
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mWindowWidth:I
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$8(Lorg/videolan/libvlc/AWindow;)I

    move-result v0

    if-eq v0, v9, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mWindowHeight:I
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$9(Lorg/videolan/libvlc/AWindow;)I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 467
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$2(Lorg/videolan/libvlc/AWindow;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mWindowWidth:I
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow;->access$8(Lorg/videolan/libvlc/AWindow;)I

    move-result v2

    iget-object v3, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mWindowHeight:I
    invoke-static {v3}, Lorg/videolan/libvlc/AWindow;->access$9(Lorg/videolan/libvlc/AWindow;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/videolan/libvlc/AWindow$1;->nativeOnWindowSize(JII)V

    .line 469
    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    iget-object v3, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/videolan/libvlc/AWindow;->access$10(Lorg/videolan/libvlc/AWindow;I)V

    invoke-static {v2, v4}, Lorg/videolan/libvlc/AWindow;->access$11(Lorg/videolan/libvlc/AWindow;I)V

    invoke-static {v1, v4}, Lorg/videolan/libvlc/AWindow;->access$12(Lorg/videolan/libvlc/AWindow;I)V

    invoke-static {v0, v4}, Lorg/videolan/libvlc/AWindow;->access$13(Lorg/videolan/libvlc/AWindow;I)V

    .line 470
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/videolan/libvlc/AWindow;->access$14(Lorg/videolan/libvlc/AWindow;I)V

    invoke-static {v0, v2}, Lorg/videolan/libvlc/AWindow;->access$15(Lorg/videolan/libvlc/AWindow;I)V

    .line 459
    monitor-exit v8

    .line 472
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWindowLayout(IIIIII)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "visibleWidth"    # I
    .param p4, "visibleHeight"    # I
    .param p5, "sarNum"    # I
    .param p6, "sarDen"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    # getter for: Lorg/videolan/libvlc/AWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$17(Lorg/videolan/libvlc/AWindow;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lorg/videolan/libvlc/AWindow$1$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/videolan/libvlc/AWindow$1$2;-><init>(Lorg/videolan/libvlc/AWindow$1;IIIIII)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void
.end method
