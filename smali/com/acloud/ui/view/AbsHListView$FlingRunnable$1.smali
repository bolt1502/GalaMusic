.class Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/AbsHListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;


# direct methods
.method constructor <init>(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    .line 3685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 3689
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    # getter for: Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->this$0:Lcom/acloud/ui/view/AbsHListView;
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->access$1(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)Lcom/acloud/ui/view/AbsHListView;

    move-result-object v4

    # getter for: Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView;->access$5(Lcom/acloud/ui/view/AbsHListView;)I

    move-result v0

    .line 3690
    .local v0, "activeId":I
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    # getter for: Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->this$0:Lcom/acloud/ui/view/AbsHListView;
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->access$1(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)Lcom/acloud/ui/view/AbsHListView;

    move-result-object v4

    # getter for: Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView;->access$6(Lcom/acloud/ui/view/AbsHListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    .line 3691
    .local v2, "vt":Landroid/view/VelocityTracker;
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    # getter for: Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->mScroller:Lcom/acloud/ui/view/OverScroller;
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->access$0(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)Lcom/acloud/ui/view/OverScroller;

    move-result-object v1

    .line 3692
    .local v1, "scroller":Lcom/acloud/ui/view/OverScroller;
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 3707
    :cond_0
    :goto_0
    return-void

    .line 3696
    :cond_1
    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    # getter for: Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->this$0:Lcom/acloud/ui/view/AbsHListView;
    invoke-static {v5}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->access$1(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)Lcom/acloud/ui/view/AbsHListView;

    move-result-object v5

    # getter for: Lcom/acloud/ui/view/AbsHListView;->mMaximumVelocity:I
    invoke-static {v5}, Lcom/acloud/ui/view/AbsHListView;->access$7(Lcom/acloud/ui/view/AbsHListView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3697
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    neg-float v3, v4

    .line 3699
    .local v3, "xvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    # getter for: Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->this$0:Lcom/acloud/ui/view/AbsHListView;
    invoke-static {v5}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->access$1(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)Lcom/acloud/ui/view/AbsHListView;

    move-result-object v5

    # getter for: Lcom/acloud/ui/view/AbsHListView;->mMinimumVelocity:I
    invoke-static {v5}, Lcom/acloud/ui/view/AbsHListView;->access$8(Lcom/acloud/ui/view/AbsHListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/acloud/ui/view/OverScroller;->isScrollingInDirection(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3701
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    # getter for: Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->this$0:Lcom/acloud/ui/view/AbsHListView;
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->access$1(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)Lcom/acloud/ui/view/AbsHListView;

    move-result-object v4

    const-wide/16 v6, 0x28

    invoke-virtual {v4, p0, v6, v7}, Lcom/acloud/ui/view/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3703
    :cond_2
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->endFling()V

    .line 3704
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    # getter for: Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->this$0:Lcom/acloud/ui/view/AbsHListView;
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->access$1(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)Lcom/acloud/ui/view/AbsHListView;

    move-result-object v4

    const/4 v5, 0x3

    iput v5, v4, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3705
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable$1;->this$1:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    # getter for: Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->this$0:Lcom/acloud/ui/view/AbsHListView;
    invoke-static {v4}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->access$1(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)Lcom/acloud/ui/view/AbsHListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
