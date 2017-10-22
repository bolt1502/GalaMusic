.class Lorg/videolan/libvlc/media/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView$4;->this$0:Lorg/videolan/libvlc/media/VideoView;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lorg/videolan/libvlc/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Lorg/videolan/libvlc/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 293
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$4;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-static {v0, v1}, Lorg/videolan/libvlc/media/VideoView;->access$4(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 294
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$4;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-static {v0, v1}, Lorg/videolan/libvlc/media/VideoView;->access$5(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 295
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$4;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$19(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$4;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$19(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$4;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;->onCompletion(Lorg/videolan/libvlc/media/MediaPlayer;)V

    .line 297
    :cond_0
    return-void
.end method
