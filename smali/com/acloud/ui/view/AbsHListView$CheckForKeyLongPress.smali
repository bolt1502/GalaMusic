.class Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/ui/view/AbsHListView;


# direct methods
.method private constructor <init>(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 1

    .prologue
    .line 2544
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;-><init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;)V
    .locals 0

    .prologue
    .line 2544
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2548
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v3}, Lcom/acloud/ui/view/AbsHListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v3, v3, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 2549
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v3, v3, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v4, v4, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 2550
    .local v1, "index":I
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v3, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2552
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-boolean v3, v3, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 2553
    const/4 v0, 0x0

    .line 2554
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2555
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget v4, v4, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-wide v6, v5, Lcom/acloud/ui/view/AbsHListView;->mSelectedColId:J

    invoke-virtual {v3, v2, v4, v6, v7}, Lcom/acloud/ui/view/AbsHListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 2557
    :cond_0
    if-eqz v0, :cond_1

    .line 2558
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v3, v8}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 2559
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 2566
    .end local v0    # "handled":Z
    .end local v1    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 2562
    .restart local v1    # "index":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v3, v8}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 2563
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
