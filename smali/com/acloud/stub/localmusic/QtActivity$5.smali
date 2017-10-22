.class Lcom/acloud/stub/localmusic/QtActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "QtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/QtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/localmusic/QtActivity;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$5;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 1809
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1813
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_music_main_play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1814
    const-string v1, "music_click_path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1815
    .local v0, "clickCurrectPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$5;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->getCurPlayerMusicIndex(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$26(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V

    .line 1816
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$5;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1817
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$5;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/QtActivity;->playOrPause()V

    .line 1823
    .end local v0    # "clickCurrectPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1820
    .restart local v0    # "clickCurrectPath":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$5;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$5;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v2

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$27(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    goto :goto_0
.end method
