.class Lcom/acloud/utils/VolumeControlUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumeControlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/utils/VolumeControlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/utils/VolumeControlUtils;


# direct methods
.method constructor <init>(Lcom/acloud/utils/VolumeControlUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 33
    const-string v3, "xy.android.mute"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    const-string v3, "McuMuteState"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 36
    .local v1, "muteState":I
    iget-object v3, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    # getter for: Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    invoke-static {v3}, Lcom/acloud/utils/VolumeControlUtils;->access$0(Lcom/acloud/utils/VolumeControlUtils;)Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "=======================onMute2=="

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v1, v4, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 38
    iget-object v3, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    # getter for: Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    invoke-static {v3}, Lcom/acloud/utils/VolumeControlUtils;->access$0(Lcom/acloud/utils/VolumeControlUtils;)Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    move-result-object v3

    if-ne v1, v4, :cond_0

    move v5, v4

    :cond_0
    invoke-interface {v3, v5}, Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;->onMute(Z)V

    .line 39
    if-eq v4, v1, :cond_1

    .line 40
    iget-object v3, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    # getter for: Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    invoke-static {v3}, Lcom/acloud/utils/VolumeControlUtils;->access$0(Lcom/acloud/utils/VolumeControlUtils;)Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    invoke-virtual {v4, p1}, Lcom/acloud/utils/VolumeControlUtils;->getVolume(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;->onVolume(I)V

    .line 58
    .end local v1    # "muteState":I
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "muteState":I
    :cond_2
    move v3, v5

    .line 37
    goto :goto_0

    .line 43
    .end local v1    # "muteState":I
    :cond_3
    const-string v3, "xy.android.main.volume.changed"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 44
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    :cond_4
    const-string v3, "McuMainVolume"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    const-string v3, "McuMainVolume"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 48
    .local v2, "volume":I
    iget-object v3, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    # getter for: Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    invoke-static {v3}, Lcom/acloud/utils/VolumeControlUtils;->access$0(Lcom/acloud/utils/VolumeControlUtils;)Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 49
    iget-object v3, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    # getter for: Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    invoke-static {v3}, Lcom/acloud/utils/VolumeControlUtils;->access$0(Lcom/acloud/utils/VolumeControlUtils;)Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;->onVolume(I)V

    goto :goto_1

    .line 52
    .end local v2    # "volume":I
    :cond_5
    iget-object v3, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    # getter for: Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    invoke-static {v3}, Lcom/acloud/utils/VolumeControlUtils;->access$0(Lcom/acloud/utils/VolumeControlUtils;)Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    # getter for: Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    invoke-static {v3}, Lcom/acloud/utils/VolumeControlUtils;->access$0(Lcom/acloud/utils/VolumeControlUtils;)Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/acloud/utils/VolumeControlUtils$1;->this$0:Lcom/acloud/utils/VolumeControlUtils;

    invoke-virtual {v4, p1}, Lcom/acloud/utils/VolumeControlUtils;->getVolume(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;->onVolume(I)V

    goto :goto_1
.end method
