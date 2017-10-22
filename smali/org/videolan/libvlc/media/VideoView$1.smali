.class Lorg/videolan/libvlc/media/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/media/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/media/VideoView;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/media/VideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView$1;->this$0:Lorg/videolan/libvlc/media/VideoView;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lorg/videolan/libvlc/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Lorg/videolan/libvlc/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$1;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {p1}, Lorg/videolan/libvlc/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/videolan/libvlc/media/VideoView;->access$0(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 143
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$1;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {p1}, Lorg/videolan/libvlc/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lorg/videolan/libvlc/media/VideoView;->access$1(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 144
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$1;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$2(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$1;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$3(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$1;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$1;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$3(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v1

    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView$1;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I
    invoke-static {v2}, Lorg/videolan/libvlc/media/VideoView;->access$2(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 147
    :cond_0
    return-void
.end method
