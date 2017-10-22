.class Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$5;
.super Ljava/lang/Object;
.source "ACT_MusicList.java"

# interfaces
.implements Lcom/acloud/uibase/PublicDialog$DialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->selectAll()V
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
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$5;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel()V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public onClickSure()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 712
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$5;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$10(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 713
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->clearCollects(Ljava/util/List;)V

    .line 715
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 718
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$5;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$10(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->setData(Ljava/util/List;)V

    .line 719
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$5;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mTotalCountText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$13(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$5;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v2

    const-string v3, "table_music_collect_playlist"

    .line 723
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCollectList()Ljava/util/List;

    move-result-object v4

    .line 722
    invoke-virtual {v2, v3, v4}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    .line 724
    return-void

    .line 716
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2, v6}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
