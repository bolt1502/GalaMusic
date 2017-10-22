.class Lorg/videolan/libvlc/media/VideoView$5;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView$5;->this$0:Lorg/videolan/libvlc/media/VideoView;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/videolan/libvlc/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Lorg/videolan/libvlc/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 304
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$5;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-static {v0, v1}, Lorg/videolan/libvlc/media/VideoView;->access$4(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 305
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$5;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-static {v0, v1}, Lorg/videolan/libvlc/media/VideoView;->access$5(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 306
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$5;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$20(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$5;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$20(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$5;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;->onError(Lorg/videolan/libvlc/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    :cond_0
    return v2
.end method
