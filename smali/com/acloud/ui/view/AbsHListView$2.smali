.class Lcom/acloud/ui/view/AbsHListView$2;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/ui/view/AbsHListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/ui/view/AbsHListView;


# direct methods
.method constructor <init>(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$2;->this$0:Lcom/acloud/ui/view/AbsHListView;

    .line 4525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4529
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$2;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-boolean v0, v0, Lcom/acloud/ui/view/AbsHListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 4530
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$2;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView$2;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iput-boolean v2, v1, Lcom/acloud/ui/view/AbsHListView;->mCachingActive:Z

    iput-boolean v2, v0, Lcom/acloud/ui/view/AbsHListView;->mCachingStarted:Z

    .line 4531
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$2;->this$0:Lcom/acloud/ui/view/AbsHListView;

    # invokes: Lcom/acloud/ui/view/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/acloud/ui/view/AbsHListView;->access$15(Lcom/acloud/ui/view/AbsHListView;Z)V

    .line 4532
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$2;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4533
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$2;->this$0:Lcom/acloud/ui/view/AbsHListView;

    # invokes: Lcom/acloud/ui/view/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/acloud/ui/view/AbsHListView;->access$16(Lcom/acloud/ui/view/AbsHListView;Z)V

    .line 4535
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$2;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4536
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$2;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 4539
    :cond_1
    return-void
.end method
