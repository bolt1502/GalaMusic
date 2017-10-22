.class public abstract Lcom/acloud/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mCurPager:I

.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/Object;

.field private mToast:Landroid/widget/Toast;

.field private mViewCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mTag:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mData:Ljava/lang/Object;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/fragment/BaseFragment;->mCurPager:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/fragment/BaseFragment;->mViewCreated:Z

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/fragment/BaseFragment;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/fragment/BaseFragment;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/acloud/fragment/BaseFragment;->mToast:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method protected final cancelToast()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mToast:Landroid/widget/Toast;

    .line 125
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getLayoutId()I
.end method

.method public getPager()I
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    iget v0, p0, Lcom/acloud/fragment/BaseFragment;->mCurPager:I

    return v0
.end method

.method public getTagObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract loadData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/fragment/BaseFragment;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragment;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0, v0, p3}, Lcom/acloud/fragment/BaseFragment;->onCreateView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    iget-object v1, p0, Lcom/acloud/fragment/BaseFragment;->mData:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/acloud/fragment/BaseFragment;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/acloud/fragment/BaseFragment;->loadData(Ljava/lang/Object;)V

    .line 61
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/acloud/fragment/BaseFragment;->mViewCreated:Z

    .line 63
    return-object v0
.end method

.method protected abstract onCreateView(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/acloud/fragment/BaseFragment;->mData:Ljava/lang/Object;

    .line 82
    iget-boolean v0, p0, Lcom/acloud/fragment/BaseFragment;->mViewCreated:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/acloud/fragment/BaseFragment;->loadData(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setPager(I)V
    .locals 0
    .param p1, "nPager"    # I

    .prologue
    .line 110
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    iput p1, p0, Lcom/acloud/fragment/BaseFragment;->mCurPager:I

    .line 111
    return-void
.end method

.method public setTagObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 98
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    iput-object p1, p0, Lcom/acloud/fragment/BaseFragment;->mTag:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method protected final showToast(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 128
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    invoke-virtual {p0, p1}, Lcom/acloud/fragment/BaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acloud/fragment/BaseFragment;->showToast(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method protected final showToast(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 136
    .local p0, "this":Lcom/acloud/fragment/BaseFragment;, "Lcom/acloud/fragment/BaseFragment<TT;>;"
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragment;->cancelToast()V

    .line 138
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/fragment/BaseFragment;->mToast:Landroid/widget/Toast;

    .line 139
    iget-object v1, p0, Lcom/acloud/fragment/BaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 141
    .local v0, "mhandler":Landroid/os/Handler;
    new-instance v1, Lcom/acloud/fragment/BaseFragment$1;

    invoke-direct {v1, p0}, Lcom/acloud/fragment/BaseFragment$1;-><init>(Lcom/acloud/fragment/BaseFragment;)V

    .line 148
    const-wide/16 v2, 0xbb8

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method
