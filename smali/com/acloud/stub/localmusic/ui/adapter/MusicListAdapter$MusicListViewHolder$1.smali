.class Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder$1;
.super Ljava/lang/Object;
.source "MusicListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->initHolder(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder$1;->this$1:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder$1;->this$1:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIsCollectImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->access$1(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    .local v0, "position":I
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder$1;->this$1:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->access$2(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    move-result-object v1

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->mCollectOnClickListener:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->access$0(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

    move-result-object v2

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder$1;->this$1:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->access$2(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-interface {v2, v1, v0}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;->onClick(Lcom/acloud/stub/localmusic/data/MusicInfoData;I)V

    .line 70
    return-void
.end method
