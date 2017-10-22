.class Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;
.super Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/ui/view/AbsHListView;


# direct methods
.method private constructor <init>(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 1

    .prologue
    .line 2519
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;-><init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;)V
    .locals 0

    .prologue
    .line 2519
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2523
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v5, v6, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    .line 2524
    .local v5, "motionPosition":I
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v7, v7, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2525
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2526
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v4, v6, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    .line 2527
    .local v4, "longPressPosition":I
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v6, v6, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v7, v7, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2529
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 2530
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-boolean v6, v6, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    if-nez v6, :cond_0

    .line 2531
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Lcom/acloud/ui/view/AbsHListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 2533
    :cond_0
    if-eqz v1, :cond_2

    .line 2534
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    const/4 v7, -0x1

    iput v7, v6, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 2535
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v6, v8}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 2536
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 2541
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_1
    :goto_0
    return-void

    .line 2538
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_2
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    const/4 v7, 0x2

    iput v7, v6, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    goto :goto_0
.end method
