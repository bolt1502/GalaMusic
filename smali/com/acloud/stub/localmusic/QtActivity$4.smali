.class Lcom/acloud/stub/localmusic/QtActivity$4;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Lcom/acloud/stub/service/XYPlayerService$MusicCallback;


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
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 1685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    .line 1718
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v0

    .line 1719
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1722
    :cond_1
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$1(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1723
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->completionNextMusic()V
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$24(Lcom/acloud/stub/localmusic/QtActivity;)V

    .line 1725
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->onPause:Z
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$25(Lcom/acloud/stub/localmusic/QtActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1726
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_music_refresh_position"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1727
    .local v1, "refreshIntent":Landroid/content/Intent;
    const-string v2, "music_currect_play_path"

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1728
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual {v2, v1}, Lcom/acloud/stub/localmusic/QtActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 1713
    return-void
.end method

.method public onProgress(JJ)V
    .locals 17
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .prologue
    .line 1690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->setTimeText(JJ)V
    invoke-static {v4, v0, v1, v2, v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$15(Lcom/acloud/stub/localmusic/QtActivity;JJ)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/acloud/stub/localmusic/QtActivity;->access$16(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    move-wide/from16 v0, p3

    invoke-static {v4, v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$17(Lcom/acloud/stub/localmusic/QtActivity;J)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$18(Lcom/acloud/stub/localmusic/QtActivity;J)V

    .line 1694
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v7

    .line 1695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    move-wide/from16 v10, p1

    .line 1694
    invoke-virtual/range {v5 .. v12}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$5(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->setCurPlayTime(J)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$20(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1698
    const-wide/16 v4, 0x2

    mul-long v4, v4, p3

    const-wide/16 v6, 0x64

    div-long v14, v4, v6

    .line 1699
    .local v14, "minTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$21(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    move-wide/from16 v0, p3

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1700
    cmp-long v4, p1, v14

    if-gez v4, :cond_1

    .line 1701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$21(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    long-to-int v5, v14

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1705
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;
    invoke-static {v5}, Lcom/acloud/stub/localmusic/QtActivity;->access$5(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->getCurSelectedItem()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLrcListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/acloud/stub/localmusic/QtActivity;->access$22(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->gotoListviewLine(ILandroid/widget/ListView;Z)V
    invoke-static {v4, v5, v6, v7}, Lcom/acloud/stub/localmusic/QtActivity;->access$23(Lcom/acloud/stub/localmusic/QtActivity;ILandroid/widget/ListView;Z)V

    .line 1707
    .end local v14    # "minTime":J
    :cond_0
    return-void

    .line 1703
    .restart local v14    # "minTime":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/stub/localmusic/QtActivity$4;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mTimeBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$21(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    move-wide/from16 v0, p1

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
