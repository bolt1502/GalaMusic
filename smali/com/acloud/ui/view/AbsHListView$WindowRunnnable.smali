.class Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbsHListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/acloud/ui/view/AbsHListView;


# direct methods
.method private constructor <init>(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 0

    .prologue
    .line 2481
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;)V
    .locals 0

    .prologue
    .line 2481
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;->this$0:Lcom/acloud/ui/view/AbsHListView;

    # invokes: Lcom/acloud/ui/view/AbsHListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/acloud/ui/view/AbsHListView;->access$2(Lcom/acloud/ui/view/AbsHListView;)I

    move-result v0

    iput v0, p0, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 2487
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;->this$0:Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;->this$0:Lcom/acloud/ui/view/AbsHListView;

    # invokes: Lcom/acloud/ui/view/AbsHListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/acloud/ui/view/AbsHListView;->access$2(Lcom/acloud/ui/view/AbsHListView;)I

    move-result v0

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
