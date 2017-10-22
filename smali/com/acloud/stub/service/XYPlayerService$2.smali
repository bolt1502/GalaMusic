.class Lcom/acloud/stub/service/XYPlayerService$2;
.super Landroid/os/Handler;
.source "XYPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/service/XYPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/service/XYPlayerService;


# direct methods
.method constructor <init>(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    const-string v0, "QQ"

    .line 240
    const-string v1, "handle message select mediaplayer ..."

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/acloud/stub/service/XYPlayerService;->access$5(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$3(Lcom/acloud/stub/service/XYPlayerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mPlayerMode:I
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$6(Lcom/acloud/stub/service/XYPlayerService;)I

    move-result v2

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->selectPlayer(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/acloud/stub/service/XYPlayerService;->access$7(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;I)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->initWave()V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/acloud/stub/service/XYPlayerService;->access$8(Lcom/acloud/stub/service/XYPlayerService;Z)V

    goto :goto_0

    .line 253
    :pswitch_3
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$9(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/player/XYMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$9(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/player/XYMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/acloud/stub/player/XYMediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 258
    :pswitch_4
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-static {v0}, Lcom/acloud/VerConfig;->isAc8217(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->stop()V

    .line 261
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->release()V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPause()V

    .line 265
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/acloud/stub/db/MusicWidgetManager;->savePlayInfo(I)V

    .line 266
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->unregisterMediaButtonEventReceiver()V

    .line 267
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-static {v0}, Lcom/acloud/VerConfig;->isAc8217(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$2;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->killSelf()V
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$11(Lcom/acloud/stub/service/XYPlayerService;)V

    goto/16 :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
