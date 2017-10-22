.class Lcom/acloud/stub/service/XYPlayerService$12;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/acloud/stub/player/XYMediaPlayer;)V
    .locals 4
    .param p1, "arg0"    # Lcom/acloud/stub/player/XYMediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 1076
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCurrentState:I
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$31(Lcom/acloud/stub/service/XYPlayerService;)I

    move-result v0

    .line 1077
    .local v0, "nPreState":I
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/acloud/stub/service/XYPlayerService;->access$28(Lcom/acloud/stub/service/XYPlayerService;I)V

    .line 1078
    invoke-static {v3}, Lcom/acloud/stub/service/XYPlayerService;->access$33(I)V

    .line 1079
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    sget-object v2, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->DEFAULT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    invoke-static {v1, v2}, Lcom/acloud/stub/service/XYPlayerService;->access$32(Lcom/acloud/stub/service/XYPlayerService;Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;)V

    .line 1080
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$34(Lcom/acloud/stub/service/XYPlayerService;)Landroid/media/audiofx/Visualizer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1081
    # invokes: Lcom/acloud/stub/service/XYPlayerService;->isDefMediaPlayer(Ljava/lang/Object;)Z
    invoke-static {p1}, Lcom/acloud/stub/service/XYPlayerService;->access$35(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1082
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1mVisualizer.setEnabled(false);"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mVisualizer:Landroid/media/audiofx/Visualizer;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$34(Lcom/acloud/stub/service/XYPlayerService;)Landroid/media/audiofx/Visualizer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 1086
    :cond_0
    const-string v1, "QQ"

    const-string v2, "---------------Java print onCompletion--------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$19(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1097
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$36(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mMusicCallback:Lcom/acloud/stub/service/XYPlayerService$MusicCallback;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$36(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/XYPlayerService$MusicCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/acloud/stub/service/XYPlayerService$MusicCallback;->onCompletion()V

    .line 1108
    :cond_1
    :goto_0
    return-void

    .line 1100
    :cond_2
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1103
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$12;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const-string v2, "xy.cdwidget.next"

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->widgetControls(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/acloud/stub/service/XYPlayerService;->access$20(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1104
    :catch_0
    move-exception v1

    goto :goto_0
.end method
