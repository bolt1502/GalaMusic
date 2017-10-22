.class Lorg/videolan/libvlc/media/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;


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
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lorg/videolan/libvlc/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Lorg/videolan/libvlc/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$23(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$23(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;->onInfo(Lorg/videolan/libvlc/media/MediaPlayer;II)Z

    .line 341
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_2

    .line 332
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->pause()V

    .line 333
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaBufferingIndicator:Landroid/view/View;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$24(Lorg/videolan/libvlc/media/VideoView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaBufferingIndicator:Landroid/view/View;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$24(Lorg/videolan/libvlc/media/VideoView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 335
    :cond_2
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 336
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->start()V

    .line 337
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaBufferingIndicator:Landroid/view/View;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$24(Lorg/videolan/libvlc/media/VideoView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$7;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaBufferingIndicator:Landroid/view/View;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$24(Lorg/videolan/libvlc/media/VideoView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
