.class public final Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;
.super Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
.source "MusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MusicListViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/adapter/GalaBaseAdapter",
        "<",
        "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
        ">.ViewHolder<",
        "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field private mIdText:Landroid/widget/TextView;

.field private mIsCollectImage:Landroid/widget/ImageView;

.field private mItemLayout:Landroid/widget/RelativeLayout;

.field private mNameText:Landroid/widget/TextView;

.field private mSpecialText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;


# direct methods
.method public constructor <init>(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-direct {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;-><init>(Lcom/acloud/adapter/GalaBaseAdapter;)V

    return-void
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIsCollectImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    return-object v0
.end method


# virtual methods
.method public initHolder(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 59
    const v0, 0x7f0b0085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIdText:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0b0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mNameText:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0b0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mSpecialText:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0b0088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIsCollectImage:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f0b0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mItemLayout:Landroid/widget/RelativeLayout;

    .line 64
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIsCollectImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder$1;

    invoke-direct {v1, p0}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder$1;-><init>(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public loadData(Lcom/acloud/stub/localmusic/data/MusicInfoData;I)V
    .locals 3
    .param p1, "data"    # Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .param p2, "position"    # I

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->access$1(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/acloud/stub/utils/MusicConfigData;->getIsFavorite(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->access$2(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;Z)V

    .line 78
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIdText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mNameText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mSpecialText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->isFavorite:Z
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->access$3(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIsCollectImage:Landroid/widget/ImageView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->selectPosition:I
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->access$4(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)I

    move-result v0

    if-ne v0, p2, :cond_3

    .line 91
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mItemLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIsCollectImage:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIsCollectImage:Landroid/widget/ImageView;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mIsCollectImage:Landroid/widget/ImageView;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->mItemLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic loadData(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {p0, p1, p2}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;->loadData(Lcom/acloud/stub/localmusic/data/MusicInfoData;I)V

    return-void
.end method
