.class Lorg/videolan/libvlc/AWindow$1$1;
.super Ljava/lang/Object;
.source "AWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/AWindow$1;->setBuffersGeometry(Landroid/view/Surface;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/libvlc/AWindow$1;

.field private final synthetic val$format:I

.field private final synthetic val$height:I

.field private final synthetic val$surface:Landroid/view/Surface;

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/AWindow$1;Landroid/view/Surface;III)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$1$1;->this$1:Lorg/videolan/libvlc/AWindow$1;

    iput-object p2, p0, Lorg/videolan/libvlc/AWindow$1$1;->val$surface:Landroid/view/Surface;

    iput p3, p0, Lorg/videolan/libvlc/AWindow$1$1;->val$format:I

    iput p4, p0, Lorg/videolan/libvlc/AWindow$1$1;->val$width:I

    iput p5, p0, Lorg/videolan/libvlc/AWindow$1$1;->val$height:I

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSurfaceHelper(Landroid/view/Surface;)Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 490
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 495
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 491
    :cond_1
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1$1;->this$1:Lorg/videolan/libvlc/AWindow$1;

    # getter for: Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow$1;->access$0(Lorg/videolan/libvlc/AWindow$1;)Lorg/videolan/libvlc/AWindow;

    move-result-object v2

    # getter for: Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow;->access$18(Lorg/videolan/libvlc/AWindow;)[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    move-result-object v2

    aget-object v1, v2, v0

    .line 492
    .local v1, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 490
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 500
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1$1;->val$surface:Landroid/view/Surface;

    invoke-direct {p0, v2}, Lorg/videolan/libvlc/AWindow$1$1;->getSurfaceHelper(Landroid/view/Surface;)Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    move-result-object v0

    .line 501
    .local v0, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 503
    .local v1, "surfaceHolder":Landroid/view/SurfaceHolder;
    :goto_0
    if-eqz v1, :cond_1

    .line 504
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    iget v2, p0, Lorg/videolan/libvlc/AWindow$1$1;->val$format:I

    if-eqz v2, :cond_0

    .line 506
    iget v2, p0, Lorg/videolan/libvlc/AWindow$1$1;->val$format:I

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 507
    :cond_0
    iget v2, p0, Lorg/videolan/libvlc/AWindow$1$1;->val$width:I

    iget v3, p0, Lorg/videolan/libvlc/AWindow$1$1;->val$height:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 511
    :cond_1
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1$1;->this$1:Lorg/videolan/libvlc/AWindow$1;

    # getter for: Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow$1;->access$0(Lorg/videolan/libvlc/AWindow$1;)Lorg/videolan/libvlc/AWindow;

    move-result-object v2

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v3

    monitor-enter v3

    .line 512
    :try_start_0
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1$1;->this$1:Lorg/videolan/libvlc/AWindow$1;

    # getter for: Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow$1;->access$0(Lorg/videolan/libvlc/AWindow$1;)Lorg/videolan/libvlc/AWindow;

    move-result-object v2

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$3(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)V

    .line 513
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1$1;->this$1:Lorg/videolan/libvlc/AWindow$1;

    # getter for: Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow$1;->access$0(Lorg/videolan/libvlc/AWindow$1;)Lorg/videolan/libvlc/AWindow;

    move-result-object v2

    # getter for: Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    invoke-static {v2}, Lorg/videolan/libvlc/AWindow;->access$16(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 511
    monitor-exit v3

    .line 515
    return-void

    .line 501
    .end local v1    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 511
    .restart local v1    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
