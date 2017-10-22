.class Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;
.super Ljava/lang/Object;
.source "ACT_MusicList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 824
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$4(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    sget-object v0, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initSetListFromDirectory(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$5(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Ljava/lang/String;)V

    .line 829
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    const/4 v1, 0x0

    # invokes: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectMusicList(Z)V
    invoke-static {v0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$7(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Z)V

    .line 830
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$8(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->setSelectionPosition(I)V

    .line 831
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$9(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 832
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    # getter for: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$4(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    sget-object v0, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initSetListFromSinger(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->access$6(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Ljava/lang/String;)V

    goto :goto_0
.end method
