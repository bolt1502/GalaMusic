.class Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;
.super Ljava/lang/Object;
.source "AWindow.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow$SurfaceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 154
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    # getter for: Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->access$0(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "holders are different"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    # invokes: Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V
    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->access$1(Lorg/videolan/libvlc/AWindow$SurfaceHelper;Landroid/view/Surface;)V

    .line 150
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 158
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    # getter for: Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->access$5(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)Lorg/videolan/libvlc/AWindow;

    move-result-object v0

    # invokes: Lorg/videolan/libvlc/AWindow;->onSurfaceDestroyed()V
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$20(Lorg/videolan/libvlc/AWindow;)V

    .line 159
    return-void
.end method
