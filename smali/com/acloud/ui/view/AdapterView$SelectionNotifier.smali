.class Lcom/acloud/ui/view/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/ui/view/AdapterView;


# direct methods
.method private constructor <init>(Lcom/acloud/ui/view/AdapterView;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/acloud/ui/view/AdapterView$SelectionNotifier;->this$0:Lcom/acloud/ui/view/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/ui/view/AdapterView;Lcom/acloud/ui/view/AdapterView$SelectionNotifier;)V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AdapterView$SelectionNotifier;-><init>(Lcom/acloud/ui/view/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/acloud/ui/view/AdapterView$SelectionNotifier;->this$0:Lcom/acloud/ui/view/AdapterView;

    iget-boolean v0, v0, Lcom/acloud/ui/view/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/acloud/ui/view/AdapterView$SelectionNotifier;->this$0:Lcom/acloud/ui/view/AdapterView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/acloud/ui/view/AdapterView$SelectionNotifier;->this$0:Lcom/acloud/ui/view/AdapterView;

    invoke-virtual {v0, p0}, Lcom/acloud/ui/view/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/acloud/ui/view/AdapterView$SelectionNotifier;->this$0:Lcom/acloud/ui/view/AdapterView;

    # invokes: Lcom/acloud/ui/view/AdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/acloud/ui/view/AdapterView;->access$2(Lcom/acloud/ui/view/AdapterView;)V

    .line 891
    iget-object v0, p0, Lcom/acloud/ui/view/AdapterView$SelectionNotifier;->this$0:Lcom/acloud/ui/view/AdapterView;

    # invokes: Lcom/acloud/ui/view/AdapterView;->performAccessibilityActionsOnSelected()V
    invoke-static {v0}, Lcom/acloud/ui/view/AdapterView;->access$3(Lcom/acloud/ui/view/AdapterView;)V

    goto :goto_0
.end method
