.class Lorg/videolan/libvlc/media/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    iput-object p1, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    iget-object v4, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-static {v4, p3}, Lorg/videolan/libvlc/media/VideoView;->access$12(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 186
    iget-object v4, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-static {v4, p4}, Lorg/videolan/libvlc/media/VideoView;->access$13(Lorg/videolan/libvlc/media/VideoView;I)V

    .line 187
    iget-object v4, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mTargetState:I
    invoke-static {v4}, Lorg/videolan/libvlc/media/VideoView;->access$11(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 188
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoWidth:I
    invoke-static {v4}, Lorg/videolan/libvlc/media/VideoView;->access$3(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mVideoHeight:I
    invoke-static {v4}, Lorg/videolan/libvlc/media/VideoView;->access$2(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 189
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;
    invoke-static {v2}, Lorg/videolan/libvlc/media/VideoView;->access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 190
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lorg/videolan/libvlc/media/VideoView;->access$8(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    iget-object v3, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lorg/videolan/libvlc/media/VideoView;->access$8(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/media/VideoView;->seekTo(I)V

    .line 192
    :cond_0
    iget-object v2, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {v2}, Lorg/videolan/libvlc/media/VideoView;->start()V

    .line 193
    const-string v2, "=============surfaceChanged===="

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 200
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 187
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 188
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-static {v0, p1}, Lorg/videolan/libvlc/media/VideoView;->access$14(Lorg/videolan/libvlc/media/VideoView;Landroid/view/SurfaceHolder;)V

    .line 204
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$15(Lorg/videolan/libvlc/media/VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 205
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$16(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mTargetState:I
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$11(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mMediaPlayer:Lorg/videolan/libvlc/media/MediaPlayer;
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$7(Lorg/videolan/libvlc/media/VideoView;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lorg/videolan/libvlc/media/VideoView;->access$15(Lorg/videolan/libvlc/media/VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 207
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    invoke-virtual {v0}, Lorg/videolan/libvlc/media/VideoView;->resume()V

    .line 208
    const-string v0, "=============surfaceCreated===resume="

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # invokes: Lorg/videolan/libvlc/media/VideoView;->openVideo()V
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$17(Lorg/videolan/libvlc/media/VideoView;)V

    .line 211
    const-string v0, "=============surfaceCreated===openVideo="

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 216
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/libvlc/media/VideoView;->access$14(Lorg/videolan/libvlc/media/VideoView;Landroid/view/SurfaceHolder;)V

    .line 219
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    # getter for: Lorg/videolan/libvlc/media/VideoView;->mCurrentState:I
    invoke-static {v0}, Lorg/videolan/libvlc/media/VideoView;->access$16(Lorg/videolan/libvlc/media/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lorg/videolan/libvlc/media/VideoView$3;->this$0:Lorg/videolan/libvlc/media/VideoView;

    const/4 v1, 0x1

    # invokes: Lorg/videolan/libvlc/media/VideoView;->release(Z)V
    invoke-static {v0, v1}, Lorg/videolan/libvlc/media/VideoView;->access$18(Lorg/videolan/libvlc/media/VideoView;Z)V

    .line 221
    :cond_0
    const-string v0, "=============surfaceDestroyed===="

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 222
    return-void
.end method
