.class Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;
.super Ljava/lang/Object;
.source "AWindow.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
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
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    # invokes: Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V
    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->access$1(Lorg/videolan/libvlc/AWindow$SurfaceHelper;Landroid/view/Surface;)V

    .line 168
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;->this$1:Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    # getter for: Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->access$5(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)Lorg/videolan/libvlc/AWindow;

    move-result-object v0

    # invokes: Lorg/videolan/libvlc/AWindow;->onSurfaceDestroyed()V
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$20(Lorg/videolan/libvlc/AWindow;)V

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 173
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 183
    return-void
.end method
