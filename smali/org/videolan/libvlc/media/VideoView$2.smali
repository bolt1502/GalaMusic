.class Lorg/videolan/libvlc/media/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lorg/videolan/libvlc/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Lorg/videolan/libvlc/media/MediaPlayer;

    .prologue
    const/4 v4, 0x3

    .line 153
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/videolan/libvlc/media/VideoView;->access$4(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 154
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-static {v1, v4}, Lorg/videolan/libvlc/media/VideoView;->access$5(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 155
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$6(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$6(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;
    invoke-static {v2}, Lorg/videolan/libvlc/media/VideoView;->access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;->onPrepared(Lorg/videolan/libvlc/media/MediaPlayer;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {p1}, Lorg/videolan/libvlc/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lorg/videolan/libvlc/media/VideoView;->access$0(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 160
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {p1}, Lorg/videolan/libvlc/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lorg/videolan/libvlc/media/VideoView;->access$1(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 162
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$8(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v0

    .line 164
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_1

    .line 165
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {v1, v0}, Lorg/videolan/libvlc/media/VideoView;->seekTo(I)V

    .line 166
    :cond_1
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$3(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$2(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {v1}, Lorg/videolan/libvlc/media/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I
    invoke-static {v2}, Lorg/videolan/libvlc/media/VideoView;->access$3(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v2

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I
    invoke-static {v3}, Lorg/videolan/libvlc/media/VideoView;->access$2(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 168
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mSurfaceWidth:I
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$9(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v1

    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I
    invoke-static {v2}, Lorg/videolan/libvlc/media/VideoView;->access$3(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mSurfaceHeight:I
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$10(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v1

    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I
    invoke-static {v2}, Lorg/videolan/libvlc/media/VideoView;->access$2(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 169
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mTargetState:I
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$11(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 170
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {v1}, Lorg/videolan/libvlc/media/VideoView;->start()V

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 173
    :cond_3
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {v1}, Lorg/videolan/libvlc/media/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {v1}, Lorg/videolan/libvlc/media/VideoView;->getCurrentPosition()I

    goto :goto_0

    .line 178
    :cond_4
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mTargetState:I
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$11(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 179
    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$2;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {v1}, Lorg/videolan/libvlc/media/VideoView;->start()V

    goto :goto_0
.end method
