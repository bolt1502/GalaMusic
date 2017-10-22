.class final Lcom/acloud/ui/view/AbsHListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/ui/view/AbsHListView;


# direct methods
.method constructor <init>(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 0

    .prologue
    .line 2723
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2727
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v4, v4, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    if-nez v4, :cond_2

    .line 2728
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iput v7, v4, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 2729
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v5, v5, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v6, v6, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2730
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2731
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 2733
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-boolean v4, v4, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    if-nez v4, :cond_5

    .line 2734
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2735
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v4, v7}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 2736
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v4}, Lcom/acloud/ui/view/AbsHListView;->layoutChildren()V

    .line 2737
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v5, v5, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Lcom/acloud/ui/view/AbsHListView;->positionSelector(ILandroid/view/View;)V

    .line 2738
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v4}, Lcom/acloud/ui/view/AbsHListView;->refreshDrawableState()V

    .line 2740
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 2741
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v4}, Lcom/acloud/ui/view/AbsHListView;->isLongClickable()Z

    move-result v2

    .line 2743
    .local v2, "longClickable":Z
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v4, v4, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 2744
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v4, v4, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2745
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 2746
    if-eqz v2, :cond_3

    .line 2747
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2754
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2755
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    # getter for: Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView;->access$3(Lcom/acloud/ui/view/AbsHListView;)Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2756
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    new-instance v5, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;-><init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;)V

    invoke-static {v4, v5}, Lcom/acloud/ui/view/AbsHListView;->access$4(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;)V

    .line 2758
    :cond_1
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    # getter for: Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView;->access$3(Lcom/acloud/ui/view/AbsHListView;)Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 2759
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    # getter for: Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;
    invoke-static {v5}, Lcom/acloud/ui/view/AbsHListView;->access$3(Lcom/acloud/ui/view/AbsHListView;)Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/acloud/ui/view/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2768
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_2
    :goto_1
    return-void

    .line 2749
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 2761
    :cond_4
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iput v8, v4, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    goto :goto_1

    .line 2764
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_5
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForTap;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iput v8, v4, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    goto :goto_1
.end method
