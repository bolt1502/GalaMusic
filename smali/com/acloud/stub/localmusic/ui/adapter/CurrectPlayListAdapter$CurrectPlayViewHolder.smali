.class Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;
.super Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
.source "CurrectPlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrectPlayViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/adapter/GalaBaseAdapter",
        "<",
        "Ljava/lang/String;",
        ">.ViewHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public mMainLayout:Landroid/widget/RelativeLayout;

.field public mNameText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;


# direct methods
.method private constructor <init>(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    invoke-direct {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;-><init>(Lcom/acloud/adapter/GalaBaseAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;-><init>(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;)V

    return-void
.end method


# virtual methods
.method public initHolder(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 65
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 66
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->mNameText:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method public bridge synthetic loadData(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->loadData(Ljava/lang/String;I)V

    return-void
.end method

.method public loadData(Ljava/lang/String;I)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->mNameText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mPlayPosition:I
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->access$0(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->mNameText:Landroid/widget/TextView;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->access$1(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectPosition:I
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->access$2(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 81
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 86
    :cond_0
    :goto_1
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->mNameText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
