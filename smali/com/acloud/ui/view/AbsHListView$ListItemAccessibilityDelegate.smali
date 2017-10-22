.class Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "AbsHListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/ui/view/AbsHListView;


# direct methods
.method constructor <init>(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 0

    .prologue
    .line 1994
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v3, 0x1

    .line 1998
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2000
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v2, p1}, Lcom/acloud/ui/view/AbsHListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 2001
    .local v1, "position":I
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v2}, Lcom/acloud/ui/view/AbsHListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2003
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 2028
    :cond_0
    :goto_0
    return-void

    .line 2007
    :cond_1
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v2}, Lcom/acloud/ui/view/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2011
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v2}, Lcom/acloud/ui/view/AbsHListView;->getSelectedItemPosition()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 2012
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 2013
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2018
    :goto_1
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v2}, Lcom/acloud/ui/view/AbsHListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2019
    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2020
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 2023
    :cond_2
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v2}, Lcom/acloud/ui/view/AbsHListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2024
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2025
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    goto :goto_0

    .line 2015
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2032
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2080
    :goto_0
    return v4

    .line 2036
    :cond_0
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v6, p1}, Lcom/acloud/ui/view/AbsHListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 2037
    .local v1, "position":I
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v6}, Lcom/acloud/ui/view/AbsHListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2039
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eq v1, v7, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v4, v5

    .line 2041
    goto :goto_0

    .line 2044
    :cond_2
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v6}, Lcom/acloud/ui/view/AbsHListView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v4, v5

    .line 2046
    goto :goto_0

    .line 2049
    :cond_4
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v6, v1}, Lcom/acloud/ui/view/AbsHListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 2051
    .local v2, "id":J
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 2080
    goto :goto_0

    .line 2053
    :sswitch_0
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v6}, Lcom/acloud/ui/view/AbsHListView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v1, :cond_5

    .line 2054
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v5, v7}, Lcom/acloud/ui/view/AbsHListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    .line 2058
    goto :goto_0

    .line 2060
    :sswitch_1
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v6}, Lcom/acloud/ui/view/AbsHListView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v1, :cond_6

    .line 2061
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v5, v1}, Lcom/acloud/ui/view/AbsHListView;->setSelection(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    .line 2065
    goto :goto_0

    .line 2067
    :sswitch_2
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v4}, Lcom/acloud/ui/view/AbsHListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2068
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/acloud/ui/view/AbsHListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 2071
    goto :goto_0

    .line 2073
    :sswitch_3
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v4}, Lcom/acloud/ui/view/AbsHListView;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2074
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/acloud/ui/view/AbsHListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_8
    move v4, v5

    .line 2077
    goto :goto_0

    .line 2051
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
