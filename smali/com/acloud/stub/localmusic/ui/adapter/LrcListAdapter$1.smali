.class Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;
.super Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
.source "LrcListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->getNewHolder(I)Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/adapter/GalaBaseAdapter",
        "<",
        "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
        ">.ViewHolder<",
        "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
        ">;"
    }
.end annotation


# instance fields
.field public myTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;Lcom/acloud/adapter/GalaBaseAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    .line 85
    invoke-direct {p0, p2}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;-><init>(Lcom/acloud/adapter/GalaBaseAdapter;)V

    return-void
.end method


# virtual methods
.method public initHolder(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 103
    const v0, 0x7f0b0082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;->myTitleView:Landroid/widget/TextView;

    .line 104
    return-void
.end method

.method public loadData(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;I)V
    .locals 3
    .param p1, "data"    # Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;
    .param p2, "position"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;->myTitleView:Landroid/widget/TextView;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->lrc:Ljava/lang/String;
    invoke-static {p1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->access$0(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->m_nCurPostion:I
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->access$0(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;->myTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->access$1(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;->myTitleView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic loadData(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    invoke-virtual {p0, p1, p2}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;->loadData(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;I)V

    return-void
.end method
