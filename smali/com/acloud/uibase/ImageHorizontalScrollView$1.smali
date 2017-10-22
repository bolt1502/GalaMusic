.class Lcom/acloud/uibase/ImageHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "ImageHorizontalScrollView.java"

# interfaces
.implements Lcom/acloud/AndroidTimer$TimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/uibase/ImageHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/uibase/ImageHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/acloud/uibase/ImageHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/uibase/ImageHorizontalScrollView$1;->this$0:Lcom/acloud/uibase/ImageHorizontalScrollView;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView$1;->this$0:Lcom/acloud/uibase/ImageHorizontalScrollView;

    # getter for: Lcom/acloud/uibase/ImageHorizontalScrollView;->mDetectionScrollTimer:Lcom/acloud/AndroidTimer;
    invoke-static {v0}, Lcom/acloud/uibase/ImageHorizontalScrollView;->access$0(Lcom/acloud/uibase/ImageHorizontalScrollView;)Lcom/acloud/AndroidTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 39
    iget-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView$1;->this$0:Lcom/acloud/uibase/ImageHorizontalScrollView;

    # getter for: Lcom/acloud/uibase/ImageHorizontalScrollView;->mCoverFlowGroup:Lcom/acloud/uibase/HorizontalLinearLayout;
    invoke-static {v0}, Lcom/acloud/uibase/ImageHorizontalScrollView;->access$1(Lcom/acloud/uibase/ImageHorizontalScrollView;)Lcom/acloud/uibase/HorizontalLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/uibase/ImageHorizontalScrollView$1;->this$0:Lcom/acloud/uibase/ImageHorizontalScrollView;

    invoke-virtual {v1}, Lcom/acloud/uibase/ImageHorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/acloud/uibase/ImageHorizontalScrollView$1;->this$0:Lcom/acloud/uibase/ImageHorizontalScrollView;

    invoke-virtual {v2}, Lcom/acloud/uibase/ImageHorizontalScrollView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/acloud/uibase/HorizontalLinearLayout;->onScrollStop(II)V

    .line 40
    return-void
.end method
