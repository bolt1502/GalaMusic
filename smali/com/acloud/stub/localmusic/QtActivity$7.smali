.class Lcom/acloud/stub/localmusic/QtActivity$7;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/QtActivity;->initMusicInfoData()V
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
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateMusicList()V
    .locals 15

    .prologue
    .line 615
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->onPause:Z
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$25(Lcom/acloud/stub/localmusic/QtActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    new-instance v14, Landroid/content/Intent;

    const-string v1, "action_music_refresh_list"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v14, "refreshListIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual {v1, v14}, Lcom/acloud/stub/localmusic/QtActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 619
    .end local v14    # "refreshListIntent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const v2, 0x7f06004c

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->showMessageDialog(IILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    invoke-static {v1, v2, v3, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$30(Lcom/acloud/stub/localmusic/QtActivity;IILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    .line 621
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->setViewEnable(Z)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$31(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 622
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$32(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 623
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V

    .line 746
    :goto_0
    return-void

    .line 628
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$32(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 629
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/QtActivity;->initWindowData()V

    .line 630
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->hideMessageDialog()V
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$33(Lcom/acloud/stub/localmusic/QtActivity;)V

    .line 631
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->setViewEnable(Z)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$31(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 632
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->initConfigData()V
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$34(Lcom/acloud/stub/localmusic/QtActivity;)V

    .line 633
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/QtActivity;->initMusicData()V

    .line 634
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->checkMusicFileExits()V

    .line 635
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->isClickBrowserFile:Z
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$35(Lcom/acloud/stub/localmusic/QtActivity;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 636
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$36(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 637
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$37(Lcom/acloud/stub/localmusic/QtActivity;I)V

    .line 638
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 639
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->whichDataInTotalList(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$39(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    .line 640
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 641
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->getClickData(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$40(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    .line 643
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v13, "receiveDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->fileInCurList([Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$41(Lcom/acloud/stub/localmusic/QtActivity;[Ljava/lang/String;)V

    .line 646
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 647
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayInfoList(Ljava/util/List;)V

    .line 648
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 649
    invoke-static {}, Lcom/acloud/PlayStateControlManager;->getInstance()Lcom/acloud/PlayStateControlManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 650
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    invoke-static {v1, v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$27(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 673
    .end local v0    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$44(Lcom/acloud/stub/localmusic/QtActivity;I)V

    .line 674
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$45(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$46(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setSelectPosition(Landroid/widget/ListView;I)V

    .line 675
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurrectPlayListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$45(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->setPlayPosition(I)V

    .line 676
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->updatePlayList(Z)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$47(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 678
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v3

    .line 679
    const/4 v4, 0x0

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 678
    invoke-virtual/range {v1 .. v8}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 742
    .end local v13    # "receiveDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :catch_0
    move-exception v10

    .line 744
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 654
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .restart local v13    # "receiveDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v11, v1, :cond_6

    .line 662
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$42(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->fileInCurList([Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$41(Lcom/acloud/stub/localmusic/QtActivity;[Ljava/lang/String;)V

    .line 664
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 665
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayInfoList(Ljava/util/List;)V

    .line 666
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 667
    invoke-static {}, Lcom/acloud/PlayStateControlManager;->getInstance()Lcom/acloud/PlayStateControlManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 668
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    invoke-static {v2, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$27(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 671
    :cond_5
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$43(Lcom/acloud/stub/localmusic/QtActivity;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 656
    :cond_6
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v11

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->whichDataInTotalList(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$39(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    .line 657
    .restart local v0    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v11

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v11

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 658
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPaths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$38(Lcom/acloud/stub/localmusic/QtActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v11

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->getClickData(Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$40(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v0

    .line 660
    :cond_7
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 681
    .end local v0    # "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .end local v11    # "i":I
    .end local v13    # "receiveDatas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :cond_8
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->updatePlayList(Z)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$47(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 682
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 683
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v1}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 684
    .local v12, "memmoryPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->getCurPlayerMusicIndex(Ljava/lang/String;)V
    invoke-static {v1, v12}, Lcom/acloud/stub/localmusic/QtActivity;->access$26(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v2

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->setCurectPlayListSelection(I)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$48(Lcom/acloud/stub/localmusic/QtActivity;I)V

    .line 686
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->setCurrectPlayList(Z)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$49(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 688
    :try_start_2
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 689
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$20(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v1

    if-eqz v1, :cond_9

    .line 690
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$37(Lcom/acloud/stub/localmusic/QtActivity;I)V

    .line 692
    :cond_9
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 693
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$44(Lcom/acloud/stub/localmusic/QtActivity;I)V

    .line 695
    :cond_a
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->updatePlayList(Z)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$47(Lcom/acloud/stub/localmusic/QtActivity;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 698
    :catch_1
    move-exception v10

    .line 699
    .restart local v10    # "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    .line 701
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_b
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    .line 702
    invoke-static {}, Lcom/acloud/PlayStateControlManager;->getInstance()Lcom/acloud/PlayStateControlManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 703
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getPlayMusicInfoData(I)Lcom/acloud/stub/localmusic/data/MusicInfoData;

    move-result-object v2

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$27(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 706
    :cond_c
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v3

    .line 707
    const/4 v4, 0x0

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I
    invoke-static {v6}, Lcom/acloud/stub/localmusic/QtActivity;->access$20(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 706
    invoke-virtual/range {v1 .. v8}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V

    .line 708
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$50(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 740
    .end local v12    # "memmoryPath":Ljava/lang/String;
    :cond_d
    :goto_3
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v3, -0x1

    if-le v1, v3, :cond_11

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_4
    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurectPlayListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$46(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->gotoListviewLine(ILandroid/widget/ListView;Z)V
    invoke-static {v2, v1, v3, v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$23(Lcom/acloud/stub/localmusic/QtActivity;ILandroid/widget/ListView;Z)V

    goto/16 :goto_0

    .line 710
    :cond_e
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$37(Lcom/acloud/stub/localmusic/QtActivity;I)V

    .line 711
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$42(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    .line 713
    sget v1, Lcom/acloud/stub/db/MusicWidgetManager;->statues:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    .line 714
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->updatePlayList(Z)V
    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$47(Lcom/acloud/stub/localmusic/QtActivity;Z)V

    .line 715
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v1}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 716
    .restart local v12    # "memmoryPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->getCurPlayerMusicIndex(Ljava/lang/String;)V
    invoke-static {v1, v12}, Lcom/acloud/stub/localmusic/QtActivity;->access$26(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V

    .line 717
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v9

    .line 718
    .local v9, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    sget v1, Lcom/acloud/stub/db/MusicWidgetManager;->statues:I

    packed-switch v1, :pswitch_data_0

    .line 732
    :cond_f
    :goto_5
    :pswitch_0
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->play(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    invoke-static {v2, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$27(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 733
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v3

    .line 734
    const/4 v4, 0x0

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mProgress:I
    invoke-static {v6}, Lcom/acloud/stub/localmusic/QtActivity;->access$20(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 733
    invoke-virtual/range {v1 .. v8}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->sendDataToCanbus(ZLjava/lang/String;IIJLandroid/content/Context;)V

    goto/16 :goto_3

    .line 722
    :pswitch_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$44(Lcom/acloud/stub/localmusic/QtActivity;I)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_f

    .line 723
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$44(Lcom/acloud/stub/localmusic/QtActivity;I)V

    goto :goto_5

    .line 727
    :pswitch_2
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurPlayerMusicIndex:I
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$19(Lcom/acloud/stub/localmusic/QtActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$44(Lcom/acloud/stub/localmusic/QtActivity;I)V

    if-gez v2, :cond_f

    .line 728
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$44(Lcom/acloud/stub/localmusic/QtActivity;I)V

    goto :goto_5

    .line 737
    .end local v9    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    .end local v12    # "memmoryPath":Ljava/lang/String;
    :cond_10
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$7;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->refreshView()V
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$51(Lcom/acloud/stub/localmusic/QtActivity;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 740
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
