.class Lcom/acloud/ui/view/AbsHListView$1;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/ui/view/AbsHListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/ui/view/AbsHListView;

.field private final synthetic val$child:Landroid/view/View;

.field private final synthetic val$performClick:Lcom/acloud/ui/view/AbsHListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/acloud/ui/view/AbsHListView;Landroid/view/View;Lcom/acloud/ui/view/AbsHListView$PerformClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$1;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iput-object p2, p0, Lcom/acloud/ui/view/AbsHListView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/acloud/ui/view/AbsHListView$1;->val$performClick:Lcom/acloud/ui/view/AbsHListView$PerformClick;

    .line 3194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3198
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$1;->this$0:Lcom/acloud/ui/view/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3199
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3200
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$1;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0, v2}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 3201
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$1;->this$0:Lcom/acloud/ui/view/AbsHListView;

    iget-boolean v0, v0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 3202
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$1;->val$performClick:Lcom/acloud/ui/view/AbsHListView$PerformClick;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView$PerformClick;->run()V

    .line 3204
    :cond_0
    return-void
.end method
