.class Lorg/videolan/libvlc/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lorg/videolan/libvlc/MediaPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/media/MediaPlayer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/media/MediaPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V
    .locals 4
    .param p1, "event"    # Lorg/videolan/libvlc/MediaPlayer$Event;

    .prologue
    const/4 v2, -0x1

    .line 104
    iget v0, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 106
    :pswitch_1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$0(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$0(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-interface {v0, v1}, Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;->onPrepared(Lorg/videolan/libvlc/media/MediaPlayer;)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$1(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$1(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getBuffering()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lorg/videolan/libvlc/media/MediaPlayer;I)V

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$2(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$2(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    const/16 v2, 0x2bc

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;->onInfo(Lorg/videolan/libvlc/media/MediaPlayer;II)Z

    goto :goto_0

    .line 121
    :pswitch_4
    const-string v0, "MediaPlayer_vlc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mOnCompletionListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lorg/videolan/libvlc/media/MediaPlayer;->access$3(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mIsPlaying:Z
    invoke-static {v2}, Lorg/videolan/libvlc/media/MediaPlayer;->access$4(Lorg/videolan/libvlc/media/MediaPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$3(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mIsPlaying:Z
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$4(Lorg/videolan/libvlc/media/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$3(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-interface {v0, v1}, Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;->onCompletion(Lorg/videolan/libvlc/media/MediaPlayer;)V

    goto/16 :goto_0

    .line 127
    :pswitch_5
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$5(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    # getter for: Lorg/videolan/libvlc/media/MediaPlayer;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lorg/videolan/libvlc/media/MediaPlayer;->access$5(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-interface {v0, v1, v2, v2}, Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;->onError(Lorg/videolan/libvlc/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/media/MediaPlayer$1;->onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V

    return-void
.end method
