.class Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;
.super Ljava/lang/Object;
.source "ACT_MusicList.java"

# interfaces
.implements Lcom/acloud/uibase/PublicDialog$DialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->onClick(Lcom/acloud/stub/localmusic/data/MusicInfoData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;

.field private final synthetic val$data:Lcom/acloud/stub/localmusic/data/MusicInfoData;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;ILcom/acloud/stub/localmusic/data/MusicInfoData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;->this$1:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;

    iput p2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;->val$position:I

    iput-object p3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;->val$data:Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public onClickSure()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;->this$1:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->access$0(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;)Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    move-result-object v0

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$10(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->removeData(I)V

    .line 347
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;->val$data:Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setMusicIsCollect(Ljava/lang/String;Z)V

    .line 348
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;->this$1:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;->access$0(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;)Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4$1;->val$data:Lcom/acloud/stub/localmusic/data/MusicInfoData;

    # invokes: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->refreshCollectMusicList(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    invoke-static {v0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$11(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 349
    return-void
.end method
