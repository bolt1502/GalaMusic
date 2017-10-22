.class Lcom/acloud/stub/localmusic/QtActivity$11;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Lcom/acloud/stub/localmusic/QtActivity$ActivityCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/QtActivity;->initActivityCallBack()V
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
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eject(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1478
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "eject,path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 1479
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1481
    :try_start_0
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayInfoList(Ljava/util/List;)V

    .line 1482
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->stop()V

    .line 1483
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPlayOrPauseBtn:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$70(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f020072

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1486
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v0

    .line 1488
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v3, 0x0

    .line 1489
    .local v3, "isExistOtherDisk":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 1496
    :goto_1
    if-eqz v3, :cond_3

    .line 1497
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 1498
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const-string v5, "0-0"

    invoke-static {v4, v5}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 1506
    .end local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    .end local v2    # "i":I
    .end local v3    # "isExistOtherDisk":Z
    :cond_0
    :goto_2
    return-void

    .line 1490
    .restart local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    .restart local v2    # "i":I
    .restart local v3    # "isExistOtherDisk":Z
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1491
    const/4 v3, 0x1

    .line 1492
    goto :goto_1

    .line 1489
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1500
    :cond_3
    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J
    invoke-static {v6}, Lcom/acloud/stub/localmusic/QtActivity;->access$28(Lcom/acloud/stub/localmusic/QtActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J
    invoke-static {v6}, Lcom/acloud/stub/localmusic/QtActivity;->access$29(Lcom/acloud/stub/localmusic/QtActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1502
    .end local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    .end local v2    # "i":I
    .end local v3    # "isExistOtherDisk":Z
    :catch_0
    move-exception v1

    .line 1503
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public next()V
    .locals 6

    .prologue
    .line 1417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1418
    .local v0, "clickTime":J
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLastClickTime:J
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$67(Lcom/acloud/stub/localmusic/QtActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1421
    :cond_0
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v2, v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$68(Lcom/acloud/stub/localmusic/QtActivity;J)V

    .line 1423
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$1(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1424
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->onNextMusic()V
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$3(Lcom/acloud/stub/localmusic/QtActivity;)V

    goto :goto_0
.end method

.method public nextPage()V
    .locals 3

    .prologue
    .line 1536
    invoke-static {}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getInstance()Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1537
    invoke-static {}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getInstance()Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->onNextPage()V

    .line 1541
    :goto_0
    return-void

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$46(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$46(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public onContent(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 1545
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 1546
    const-string v3, "?@?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1547
    const-string v3, "\\?\\@\\?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1548
    .local v2, "paths":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 1549
    .local v0, "hasFile":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 1555
    :goto_1
    if-eqz v0, :cond_0

    .line 1556
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v3, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$43(Lcom/acloud/stub/localmusic/QtActivity;[Ljava/lang/String;)V

    .line 1557
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->disposeExternal([Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$72(Lcom/acloud/stub/localmusic/QtActivity;[Ljava/lang/String;)V

    .line 1565
    .end local v0    # "hasFile":Z
    .end local v1    # "i":I
    .end local v2    # "paths":[Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 1550
    .restart local v0    # "hasFile":Z
    .restart local v1    # "i":I
    .restart local v2    # "paths":[Ljava/lang/String;
    :cond_1
    aget-object v3, v2, v1

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1551
    :cond_2
    const/4 v0, 0x0

    .line 1552
    goto :goto_1

    .line 1549
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1560
    .end local v0    # "hasFile":Z
    .end local v1    # "i":I
    .end local v2    # "paths":[Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1561
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v3, p1}, Lcom/acloud/stub/localmusic/QtActivity;->access$42(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V

    .line 1562
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->disposeExternal([Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$72(Lcom/acloud/stub/localmusic/QtActivity;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1386
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$62(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1387
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->getState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$66(Lcom/acloud/stub/localmusic/QtActivity;I)V

    .line 1388
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->memmoryPlayState:I
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$61(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1389
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$0(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1391
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1355
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->isPause:Z
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$59(Lcom/acloud/stub/localmusic/QtActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->isStop:Z
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$60(Lcom/acloud/stub/localmusic/QtActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==================play========isPause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->isPause:Z
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$59(Lcom/acloud/stub/localmusic/QtActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->isStop:Z
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$60(Lcom/acloud/stub/localmusic/QtActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->memmoryPlayState:I
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$61(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 1360
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->isStop:Z
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$60(Lcom/acloud/stub/localmusic/QtActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1361
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$28(Lcom/acloud/stub/localmusic/QtActivity;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$37(Lcom/acloud/stub/localmusic/QtActivity;I)V

    .line 1362
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    invoke-static {v2, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$27(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 1363
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$50(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1364
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v1, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$58(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1373
    :cond_2
    :goto_1
    invoke-static {}, Lcom/acloud/utils/VolumeControlUtils;->getInstance()Lcom/acloud/utils/VolumeControlUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual {v1, v2}, Lcom/acloud/utils/VolumeControlUtils;->getVolume(Landroid/content/Context;)I

    move-result v0

    .line 1374
    .local v0, "volume":I
    if-eqz v0, :cond_0

    .line 1375
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMuteBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$63(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1376
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mVolumeBar:Lcom/acloud/stub/ui/view/VerticalSeekBar;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$64(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/ui/view/VerticalSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 1377
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mVolumeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$65(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1366
    .end local v0    # "volume":I
    :cond_3
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v1, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$62(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1367
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->memmoryPlayState:I
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$61(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1368
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V
    invoke-static {v1, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$0(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    goto :goto_1

    .line 1369
    :cond_4
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->memmoryPlayState:I
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$61(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 1370
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v2

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$27(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    goto :goto_1
.end method

.method public playAndPause()V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/QtActivity;->playOrPause()V

    .line 1401
    return-void
.end method

.method public prePage()V
    .locals 3

    .prologue
    .line 1527
    invoke-static {}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getInstance()Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-static {}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getInstance()Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->onPrevPage()V

    .line 1532
    :goto_0
    return-void

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$46(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$46(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public prev()V
    .locals 6

    .prologue
    .line 1405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1406
    .local v0, "clickTime":J
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLastClickTime:J
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$67(Lcom/acloud/stub/localmusic/QtActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1413
    :goto_0
    return-void

    .line 1409
    :cond_0
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v2, v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$68(Lcom/acloud/stub/localmusic/QtActivity;J)V

    .line 1411
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$1(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1412
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->onPreMusic()V
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$2(Lcom/acloud/stub/localmusic/QtActivity;)V

    goto :goto_0
.end method

.method public quitApp()V
    .locals 2

    .prologue
    .line 1457
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual {v0, v1}, Lcom/acloud/AppManager;->AppExit(Landroid/content/Context;)V

    .line 1458
    return-void
.end method

.method public scanFinish()V
    .locals 2

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->cancelToast()V
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$69(Lcom/acloud/stub/localmusic/QtActivity;)V

    .line 1470
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1471
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setBoolean(Z)V

    .line 1472
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getMusicList()V

    .line 1474
    :cond_0
    return-void
.end method

.method public scanStart()V
    .locals 0

    .prologue
    .line 1464
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->isNeedSeek:Z
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$73(Lcom/acloud/stub/localmusic/QtActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->seekTo()V
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$74(Lcom/acloud/stub/localmusic/QtActivity;)V

    .line 1571
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$50(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1573
    :cond_0
    return-void
.end method

.method public steeringWheelPause()V
    .locals 0

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity$11;->stop()V

    .line 1453
    return-void
.end method

.method public steeringWheelPlay()V
    .locals 0

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/QtActivity$11;->play()V

    .line 1439
    return-void
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 1336
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1343
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$58(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1344
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->stop()V

    .line 1345
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->changePlayState(Z)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$0(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1346
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurrectTime:J
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$28(Lcom/acloud/stub/localmusic/QtActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mTotalTime:J
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$29(Lcom/acloud/stub/localmusic/QtActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchFirst(I)V
    .locals 3
    .param p1, "nFew"    # I

    .prologue
    const/4 v0, 0x0

    .line 1510
    add-int/lit8 p1, p1, -0x1

    .line 1511
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    invoke-static {}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getInstance()Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1517
    invoke-static {}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getInstance()Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->onItemClickMusic(I)V

    goto :goto_0

    .line 1519
    :cond_2
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$1(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 1520
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->onClickMusic(IZ)V
    invoke-static {v1, p1, v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$71(Lcom/acloud/stub/localmusic/QtActivity;IZ)V

    .line 1521
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$11;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$46(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v2, p1, -0x2

    if-gez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p1, -0x2

    goto :goto_1
.end method
