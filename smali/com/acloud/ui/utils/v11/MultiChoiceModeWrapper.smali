.class public Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "MultiChoiceModeWrapper.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# instance fields
.field private mView:Lcom/acloud/ui/view/AbsHListView;

.field private mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;


# direct methods
.method public constructor <init>(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 0
    .param p1, "view"    # Lcom/acloud/ui/view/AbsHListView;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mView:Lcom/acloud/ui/view/AbsHListView;

    .line 19
    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mView:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v1, v0}, Lcom/acloud/ui/view/AbsHListView;->setLongClickable(Z)V

    .line 34
    const/4 v0, 0x1

    .line 36
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 54
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 55
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mView:Lcom/acloud/ui/view/AbsHListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mView:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView;->clearChoices()V

    .line 59
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mView:Lcom/acloud/ui/view/AbsHListView;

    iput-boolean v2, v0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    .line 60
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mView:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView;->rememberSyncState()V

    .line 61
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mView:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView;->requestLayout()V

    .line 62
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mView:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0, v2}, Lcom/acloud/ui/view/AbsHListView;->setLongClickable(Z)V

    .line 63
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 71
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mView:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 74
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 23
    return-void
.end method
