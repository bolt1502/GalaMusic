.class public Lcom/acloud/adapter/BaseFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "BaseFragmentPagerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurPager:I

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    iput-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mCurPager:I

    .line 30
    iput-object p2, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 32
    return-void
.end method


# virtual methods
.method public addFragment(Lcom/acloud/fragment/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/acloud/fragment/BaseFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->insertFragment(ILcom/acloud/fragment/BaseFragment;)V

    .line 62
    return-void
.end method

.method public addFragments(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/fragment/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/fragment/BaseFragment;>;"
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->insertFragments(ILjava/util/List;)V

    .line 73
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurPager()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mCurPager:I

    return v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/fragment/BaseFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 202
    const/4 v0, -0x2

    return v0
.end method

.method public insertFragment(ILcom/acloud/fragment/BaseFragment;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "fragment"    # Lcom/acloud/fragment/BaseFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    .line 84
    :cond_0
    if-eqz p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 88
    :cond_1
    return-void
.end method

.method public insertFragments(ILjava/util/List;)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/fragment/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/fragment/BaseFragment;>;"
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    .line 99
    :cond_0
    if-eqz p2, :cond_1

    .line 100
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 101
    invoke-virtual {p0}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 103
    :cond_1
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/fragment/BaseFragment;

    .line 208
    .local v0, "fragment":Lcom/acloud/fragment/BaseFragment;
    invoke-virtual {v0, p2}, Lcom/acloud/fragment/BaseFragment;->setPager(I)V

    .line 209
    return-object v0
.end method

.method public removeAllFragment()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    invoke-virtual {p0}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 138
    :cond_0
    return-void
.end method

.method public removeFragment(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 111
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/fragment/BaseFragment;

    invoke-virtual {p0, v0}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->removeFragment(Lcom/acloud/fragment/BaseFragment;)V

    .line 115
    :cond_0
    return-void
.end method

.method public removeFragment(Lcom/acloud/fragment/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/acloud/fragment/BaseFragment;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 128
    :cond_0
    return-void
.end method

.method public removeLastFragment()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/fragment/BaseFragment;

    invoke-virtual {p0, v0}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->removeFragment(Lcom/acloud/fragment/BaseFragment;)V

    .line 147
    :cond_0
    return-void
.end method

.method public removeLastFragmentCount(I)V
    .locals 3
    .param p1, "nPageCount"    # I

    .prologue
    .line 154
    iget-object v1, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v1, :cond_1

    if-lez p1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 164
    :cond_1
    return-void

    .line 158
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    iget-object v2, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCurPager(I)V
    .locals 0
    .param p1, "nPage"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mCurPager:I

    .line 219
    return-void
.end method

.method public setFragments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/fragment/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/fragment/BaseFragment;>;"
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-ne v0, p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    if-eqz p1, :cond_2

    .line 47
    iget-object v0, p0, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
