.class Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;
.super Ljava/lang/Object;
.source "ACT_MusicList.java"

# interfaces
.implements Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initOnClickListener()V
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
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;)Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    return-object v0
.end method


# virtual methods
.method public onClick(Lcom/acloud/stub/localmusic/data/MusicInfoData;I)V
    .locals 4
    .param p1, "data"    # Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .param p2, "position"    # I

    .prologue
    .line 341
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    iget-boolean v1, v1, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    const v2, 0x7f060049

    new-instance v3, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;-><init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;ILcom/acloud/stub/localmusic/data/MusicInfoData;)V

    # invokes: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->showMessageDialog(ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    invoke-static {v1, v2, v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$12(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    .line 367
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v0

    .line 359
    .local v0, "isClickItemFavorite":Z
    if-eqz v0, :cond_1

    .line 360
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    .line 364
    :goto_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$10(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->notifyDataSetChanged()V

    .line 365
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # invokes: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->refreshCollectMusicList(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    invoke-static {v1, p1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$11(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    goto :goto_0

    .line 362
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_1
.end method
