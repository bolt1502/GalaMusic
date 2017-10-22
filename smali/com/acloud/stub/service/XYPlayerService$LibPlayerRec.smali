.class Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;
.super Landroid/content/BroadcastReceiver;
.source "XYPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/service/XYPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LibPlayerRec"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/service/XYPlayerService;


# direct methods
.method constructor <init>(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1662
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1663
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.acloud.intent.android.LOWER_VOLUME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1664
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$15(Lcom/acloud/stub/service/XYPlayerService;Z)V

    .line 1665
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->lowerVolume()V
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$16(Lcom/acloud/stub/service/XYPlayerService;)V

    .line 1764
    :cond_0
    :goto_0
    return-void

    .line 1666
    :cond_1
    const-string v2, "com.acloud.intent.android.RESTORE_VOLUME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1667
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-static {v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$15(Lcom/acloud/stub/service/XYPlayerService;Z)V

    .line 1668
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v2}, Lcom/acloud/stub/service/XYPlayerService;->restoreVolume()V

    goto :goto_0

    .line 1669
    :cond_2
    const-string v2, "com.acloud.intent.android.MAINUI_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1671
    const-string v2, "extras"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1672
    .local v1, "infos":[Ljava/lang/String;
    if-eqz v1, :cond_0

    aget-object v2, v1, v3

    const-string v3, "volume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1673
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->isLower:Z
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$17(Lcom/acloud/stub/service/XYPlayerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1674
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->lowerVolume()V
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$16(Lcom/acloud/stub/service/XYPlayerService;)V

    goto :goto_0

    .line 1676
    :cond_3
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v2}, Lcom/acloud/stub/service/XYPlayerService;->restoreVolume()V

    goto :goto_0

    .line 1680
    .end local v1    # "infos":[Ljava/lang/String;
    :cond_4
    const-string v2, "QQ"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LibPlayerRec action:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1691
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->isGalaVolumeAppRunning()Z
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$18(Lcom/acloud/stub/service/XYPlayerService;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1693
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isGalaVolumeAppRunning true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1697
    :cond_5
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/db/MusicWidgetManager;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1701
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$19(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1705
    const-string v2, "xy.android.acc.off"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1706
    const-string v2, "xy.android.lock.screen"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1707
    if-nez v2, :cond_6

    .line 1708
    const-string v2, "xy.android.avin.come"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1709
    if-eqz v2, :cond_7

    .line 1710
    :cond_6
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v2}, Lcom/acloud/stub/service/XYPlayerService;->pause()V

    goto/16 :goto_0

    .line 1711
    :cond_7
    const-string v2, "xy.android.acc.on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1712
    const-string v2, "xy.android.unlock.screen"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1713
    if-nez v2, :cond_8

    .line 1714
    const-string v2, "xy.android.avin.leave"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1715
    if-eqz v2, :cond_9

    .line 1716
    :cond_8
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v2}, Lcom/acloud/stub/service/XYPlayerService;->start()V

    goto/16 :goto_0

    .line 1717
    :cond_9
    const-string v2, "xy.android.previousmedia"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1718
    const-string v2, "xy.android.seek_prev"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1720
    :cond_a
    :try_start_0
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const-string v3, "xy.cdwidget.prev"

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->widgetControls(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$20(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1721
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 1727
    :cond_b
    const-string v2, "xy.android.nextmedia"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1728
    const-string v2, "xy.android.seek_next"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1730
    :cond_c
    :try_start_1
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const-string v3, "xy.cdwidget.next"

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->widgetControls(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$20(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1731
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 1734
    :cond_d
    const-string v2, "xy.android.forceplay"

    .line 1733
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1734
    if-eqz v2, :cond_e

    .line 1735
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v2}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1737
    :try_start_2
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const-string v3, "xy.cdwidget.play"

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->widgetControls(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$20(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1738
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 1742
    :cond_e
    const-string v2, "xy.android.forcepause"

    .line 1741
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1742
    if-eqz v2, :cond_f

    .line 1743
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v2}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1745
    :try_start_3
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const-string v3, "xy.cdwidget.pause"

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->widgetControls(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$20(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1746
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 1749
    :cond_f
    const-string v2, "xy.android.playpause"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1750
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v2}, Lcom/acloud/stub/service/XYPlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1752
    :try_start_4
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const-string v3, "xy.cdwidget.pause"

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->widgetControls(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$20(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1753
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .line 1757
    :cond_10
    :try_start_5
    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$LibPlayerRec;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const-string v3, "xy.cdwidget.play"

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->widgetControls(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/acloud/stub/service/XYPlayerService;->access$20(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1758
    :catch_5
    move-exception v2

    goto/16 :goto_0
.end method
