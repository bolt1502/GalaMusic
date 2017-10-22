.class Lcom/acloud/PlayStateControlManager$3;
.super Landroid/content/BroadcastReceiver;
.source "PlayStateControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/PlayStateControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/PlayStateControlManager;


# direct methods
.method constructor <init>(Lcom/acloud/PlayStateControlManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/PlayStateControlManager$3;->this$0:Lcom/acloud/PlayStateControlManager;

    .line 441
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 445
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "action":Ljava/lang/String;
    const-string v4, "xy.voice.control"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    const-string v4, "command"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 450
    const-string v4, "command"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "command":Ljava/lang/String;
    const-string v4, "nextpage"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$3;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$16(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 488
    .end local v2    # "command":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 452
    .restart local v2    # "command":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;

    .line 453
    .local v1, "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    invoke-interface {v1}, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;->nextPage()V

    goto :goto_0

    .line 455
    .end local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    :cond_2
    const-string v4, "prepage"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 456
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$3;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$16(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;

    .line 457
    .restart local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    invoke-interface {v1}, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;->prePage()V

    goto :goto_2

    .line 459
    .end local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    :cond_3
    const-string v4, "sure"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 460
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$3;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$16(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;

    .line 461
    .restart local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;->sureOrCancel(Z)V

    goto :goto_3

    .line 463
    .end local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    :cond_4
    const-string v4, "cancel"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$3;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$16(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;

    .line 465
    .restart local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    invoke-interface {v1, v6}, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;->sureOrCancel(Z)V

    goto :goto_4

    .line 468
    .end local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    .end local v2    # "command":Ljava/lang/String;
    :cond_5
    const-string v4, "switch_first"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 470
    :try_start_0
    const-string v4, "switch_first"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 471
    .local v3, "nSwitch":I
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$3;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$16(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;

    .line 472
    .restart local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    invoke-interface {v1, v3}, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;->switchFirst(I)V

    .line 473
    const-string v5, "==============callback.switchFirst(nSwitch);============="

    invoke-static {v5}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 475
    .end local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    .end local v3    # "nSwitch":I
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 478
    :cond_6
    const-string v4, "input"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    const-string v4, "input"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 481
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$3;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$16(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;

    .line 482
    .restart local v1    # "callback":Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    const-string v5, "input"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/acloud/PlayStateControlManager$VoiceControlInterface;->onContent(Ljava/lang/String;)V

    goto :goto_6
.end method
