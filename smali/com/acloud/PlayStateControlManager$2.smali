.class Lcom/acloud/PlayStateControlManager$2;
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
    iput-object p1, p0, Lcom/acloud/PlayStateControlManager$2;->this$0:Lcom/acloud/PlayStateControlManager;

    .line 401
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 405
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$2;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mMountedStateInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$15(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/acloud/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    :cond_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 410
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 411
    .local v3, "uri":Landroid/net/Uri;
    const-string v2, ""

    .line 412
    .local v2, "path":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 413
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 415
    :cond_2
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$2;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mMountedStateInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$15(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$MountedStateInterface;

    .line 416
    .local v1, "callback":Lcom/acloud/PlayStateControlManager$MountedStateInterface;
    invoke-interface {v1, v2}, Lcom/acloud/PlayStateControlManager$MountedStateInterface;->mount(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    .end local v1    # "callback":Lcom/acloud/PlayStateControlManager$MountedStateInterface;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 419
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 420
    .restart local v3    # "uri":Landroid/net/Uri;
    const-string v2, ""

    .line 421
    .restart local v2    # "path":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 422
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 424
    :cond_4
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$2;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mMountedStateInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$15(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$MountedStateInterface;

    .line 425
    .restart local v1    # "callback":Lcom/acloud/PlayStateControlManager$MountedStateInterface;
    invoke-interface {v1, v2}, Lcom/acloud/PlayStateControlManager$MountedStateInterface;->eject(Ljava/lang/String;)V

    goto :goto_1

    .line 427
    .end local v1    # "callback":Lcom/acloud/PlayStateControlManager$MountedStateInterface;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v4, "xy.gala.scanstart"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 429
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$2;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mMountedStateInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$15(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$MountedStateInterface;

    .line 430
    .restart local v1    # "callback":Lcom/acloud/PlayStateControlManager$MountedStateInterface;
    invoke-interface {v1}, Lcom/acloud/PlayStateControlManager$MountedStateInterface;->scanStart()V

    goto :goto_2

    .line 432
    .end local v1    # "callback":Lcom/acloud/PlayStateControlManager$MountedStateInterface;
    :cond_6
    const-string v4, "xy.gala.scanfinished"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    iget-object v4, p0, Lcom/acloud/PlayStateControlManager$2;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mMountedStateInterfaces:Ljava/util/List;
    invoke-static {v4}, Lcom/acloud/PlayStateControlManager;->access$15(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/PlayStateControlManager$MountedStateInterface;

    .line 435
    .restart local v1    # "callback":Lcom/acloud/PlayStateControlManager$MountedStateInterface;
    invoke-interface {v1}, Lcom/acloud/PlayStateControlManager$MountedStateInterface;->scanFinish()V

    goto :goto_3
.end method
