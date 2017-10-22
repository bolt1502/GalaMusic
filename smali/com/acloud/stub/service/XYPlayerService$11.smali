.class Lcom/acloud/stub/service/XYPlayerService$11;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/service/XYPlayerService;->selectPlayer(Ljava/lang/String;I)V
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
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/acloud/stub/player/XYMediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Lcom/acloud/stub/player/XYMediaPlayer;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1027
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const-wide/16 v2, 0x1

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->progressRefresh(J)V
    invoke-static {v0, v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$1(Lcom/acloud/stub/service/XYPlayerService;J)V

    .line 1028
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/acloud/stub/service/XYPlayerService;->access$28(Lcom/acloud/stub/service/XYPlayerService;I)V

    .line 1029
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$29(Lcom/acloud/stub/service/XYPlayerService;J)V

    .line 1030
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mMediaPlayer:Lcom/acloud/stub/player/XYMediaPlayer;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$9(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/player/XYMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/acloud/stub/player/XYMediaPlayer;->setVolume(FF)V

    .line 1032
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService;->start()V

    .line 1034
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_0
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mActivityCallBack:Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$26(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;->seek()V

    .line 1043
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPrepared <>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mAction:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$30()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1044
    const-string v1, ", callback -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$19(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1045
    const-string v1, ", mWidgetManager -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCurrentState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$31(Lcom/acloud/stub/service/XYPlayerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$11;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    sget-object v1, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->DEFAULT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    invoke-static {v0, v1}, Lcom/acloud/stub/service/XYPlayerService;->access$32(Lcom/acloud/stub/service/XYPlayerService;Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;)V

    .line 1070
    return-void

    .line 1035
    :catch_0
    move-exception v0

    goto :goto_0
.end method
