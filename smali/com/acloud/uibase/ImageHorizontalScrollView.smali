.class public Lcom/acloud/uibase/ImageHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ImageHorizontalScrollView.java"


# instance fields
.field private mCoverFlowGroup:Lcom/acloud/uibase/HorizontalLinearLayout;

.field private mDetectionScrollTimer:Lcom/acloud/AndroidTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/uibase/ImageHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/acloud/uibase/ImageHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mCoverFlowGroup:Lcom/acloud/uibase/HorizontalLinearLayout;

    .line 19
    iput-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mDetectionScrollTimer:Lcom/acloud/AndroidTimer;

    .line 33
    new-instance v0, Lcom/acloud/AndroidTimer;

    new-instance v1, Lcom/acloud/uibase/ImageHorizontalScrollView$1;

    invoke-direct {v1, p0}, Lcom/acloud/uibase/ImageHorizontalScrollView$1;-><init>(Lcom/acloud/uibase/ImageHorizontalScrollView;)V

    invoke-direct {v0, v1}, Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;)V

    iput-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mDetectionScrollTimer:Lcom/acloud/AndroidTimer;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/uibase/ImageHorizontalScrollView;)Lcom/acloud/AndroidTimer;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mDetectionScrollTimer:Lcom/acloud/AndroidTimer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/uibase/ImageHorizontalScrollView;)Lcom/acloud/uibase/HorizontalLinearLayout;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mCoverFlowGroup:Lcom/acloud/uibase/HorizontalLinearLayout;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 47
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldx"    # I
    .param p4, "oldy"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mCoverFlowGroup:Lcom/acloud/uibase/HorizontalLinearLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/acloud/uibase/ImageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/acloud/uibase/HorizontalLinearLayout;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, v1}, Lcom/acloud/uibase/ImageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/acloud/uibase/HorizontalLinearLayout;

    iput-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mCoverFlowGroup:Lcom/acloud/uibase/HorizontalLinearLayout;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mCoverFlowGroup:Lcom/acloud/uibase/HorizontalLinearLayout;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mCoverFlowGroup:Lcom/acloud/uibase/HorizontalLinearLayout;

    invoke-virtual {p0}, Lcom/acloud/uibase/ImageHorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/acloud/uibase/ImageHorizontalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/acloud/uibase/HorizontalLinearLayout;->onScrollChanged(IIII)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/acloud/uibase/ImageHorizontalScrollView;->mDetectionScrollTimer:Lcom/acloud/AndroidTimer;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/acloud/AndroidTimer;->start(I)V

    .line 59
    return-void
.end method
