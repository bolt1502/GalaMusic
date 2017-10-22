.class Lcom/acloud/ui/view/AbsHListView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/acloud/ui/view/AbsHListView;


# direct methods
.method private constructor <init>(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 1

    .prologue
    .line 2494
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$PerformClick;->this$0:Lcom/acloud/ui/view/AbsHListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;-><init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$PerformClick;)V
    .locals 0

    .prologue
    .line 2494
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AbsHListView$PerformClick;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2502
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$PerformClick;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-boolean v3, v3, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    if-eqz v3, :cond_1

    .line 2516
    :cond_0
    :goto_0
    return-void

    .line 2504
    :cond_1
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$PerformClick;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v0, v3, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2505
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView$PerformClick;->mClickMotionPosition:I

    .line 2506
    .local v1, "motionPosition":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$PerformClick;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v3, v3, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    if-lez v3, :cond_0

    .line 2507
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2508
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView$PerformClick;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2509
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$PerformClick;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$PerformClick;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v4, v4, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2512
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2513
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$PerformClick;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/acloud/ui/view/AbsHListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
