.class Lcom/acloud/ui/view/AbsHListView$PositionScroller$1;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/ui/view/AbsHListView$PositionScroller;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/acloud/ui/view/AbsHListView$PositionScroller;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$1;->this$1:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    iput p2, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$1;->val$position:I

    .line 3936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3940
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$1;->this$1:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView$PositionScroller$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->start(I)V

    .line 3941
    return-void
.end method
