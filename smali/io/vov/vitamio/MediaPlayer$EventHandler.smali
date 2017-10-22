.class Lio/vov/vitamio/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mData:Landroid/os/Bundle;

.field private mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

.field final synthetic this$0:Lio/vov/vitamio/MediaPlayer;


# direct methods
.method public constructor <init>(Lio/vov/vitamio/MediaPlayer;Lio/vov/vitamio/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 519
    iput-object p1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    .line 520
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 521
    iput-object p2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 522
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 526
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/vov/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 528
    :sswitch_1
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$0(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$0(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v1, v2}, Lio/vov/vitamio/MediaPlayer$OnPreparedListener;->onPrepared(Lio/vov/vitamio/MediaPlayer;)V

    goto :goto_0

    .line 532
    :sswitch_2
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$1(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$1(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v1, v2}, Lio/vov/vitamio/MediaPlayer$OnCompletionListener;->onCompletion(Lio/vov/vitamio/MediaPlayer;)V

    .line 534
    :cond_1
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # invokes: Lio/vov/vitamio/MediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v5}, Lio/vov/vitamio/MediaPlayer;->access$2(Lio/vov/vitamio/MediaPlayer;Z)V

    goto :goto_0

    .line 537
    :sswitch_3
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$3(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$3(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lio/vov/vitamio/MediaPlayer;I)V

    goto :goto_0

    .line 541
    :sswitch_4
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # invokes: Lio/vov/vitamio/MediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v4}, Lio/vov/vitamio/MediaPlayer;->access$2(Lio/vov/vitamio/MediaPlayer;Z)V

    .line 543
    :cond_2
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$4(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$4(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v1, v2}, Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lio/vov/vitamio/MediaPlayer;)V

    goto :goto_0

    .line 547
    :sswitch_5
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnVideoSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$5(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnVideoSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$5(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lio/vov/vitamio/MediaPlayer;II)V

    goto :goto_0

    .line 551
    :sswitch_6
    const-string v1, "Error (%d, %d)"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lio/vov/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "error_was_handled":Z
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$6(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 554
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$6(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnErrorListener;->onError(Lio/vov/vitamio/MediaPlayer;II)Z

    move-result v0

    .line 555
    :cond_3
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$1(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 556
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$1(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v1, v2}, Lio/vov/vitamio/MediaPlayer$OnCompletionListener;->onCompletion(Lio/vov/vitamio/MediaPlayer;)V

    .line 557
    :cond_4
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # invokes: Lio/vov/vitamio/MediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v5}, Lio/vov/vitamio/MediaPlayer;->access$2(Lio/vov/vitamio/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 560
    .end local v0    # "error_was_handled":Z
    :sswitch_7
    const-string v1, "Info (%d, %d)"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lio/vov/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$7(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$7(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnInfoListener;->onInfo(Lio/vov/vitamio/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 565
    :sswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    .line 566
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v2, "sub_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 567
    const-string v1, "Subtitle : %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v4, "sub_string"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lio/vov/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnSubtitleUpdateListener:Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$8(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnSubtitleUpdateListener:Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$8(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v3, "sub_string"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;->onSubtitleUpdate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 570
    :cond_5
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v2, "sub_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 571
    const-string v1, "Subtitle : bitmap"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/vov/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnSubtitleUpdateListener:Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$8(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    # getter for: Lio/vov/vitamio/MediaPlayer;->mOnSubtitleUpdateListener:Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;
    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$8(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v3, "sub_bytes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnSubtitleUpdateListener;->onSubtitleUpdate([BII)V

    goto/16 :goto_0

    .line 526
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
        0x3e8 -> :sswitch_8
    .end sparse-switch
.end method
