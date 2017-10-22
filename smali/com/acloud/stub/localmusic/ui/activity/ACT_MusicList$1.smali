.class Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$1;
.super Landroid/content/BroadcastReceiver;
.source "ACT_MusicList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$1;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    .line 759
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 763
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "action":Ljava/lang/String;
    const-string v3, "action_music_refresh_position"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 765
    const-string v3, "music_currect_play_path"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 767
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$1;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # invokes: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setNowListSelectPosition(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$0(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Ljava/lang/String;)V

    .line 779
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const-string v3, "action_music_refresh_list"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v2

    .line 771
    .local v2, "totalList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 772
    :cond_2
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v3

    iget-object v4, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$1;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    invoke-virtual {v3, v4}, Lcom/acloud/AppManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 774
    :cond_3
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$1;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$1(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Z)V

    .line 775
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$1;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # invokes: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initDirList()V
    invoke-static {v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$2(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V

    .line 776
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$1;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # invokes: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectData()V
    invoke-static {v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$3(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V

    goto :goto_0
.end method
