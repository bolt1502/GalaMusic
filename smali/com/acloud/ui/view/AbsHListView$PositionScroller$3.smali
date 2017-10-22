.class Lcom/acloud/ui/view/AbsHListView$PositionScroller$3;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/ui/view/AbsHListView$PositionScroller;->startWithOffset(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

.field private final synthetic val$duration:I

.field private final synthetic val$position:I

.field private final synthetic val$postOffset:I


# direct methods
.method constructor <init>(Lcom/acloud/ui/view/AbsHListView$PositionScroller;III)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$3;->this$1:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    iput p2, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$3;->val$position:I

    iput p3, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$3;->val$postOffset:I

    iput p4, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$3;->val$duration:I

    .line 4070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4074
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$3;->this$1:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$3;->val$position:I

    iget v2, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$3;->val$postOffset:I

    iget v3, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$3;->val$duration:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->startWithOffset(III)V

    .line 4075
    return-void
.end method
