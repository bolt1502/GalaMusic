.class public Lcom/acloud/uibase/BaseViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BaseViewPager.java"


# instance fields
.field private mFragmentPagerAdapter:Lcom/acloud/adapter/BaseFragmentPagerAdapter;

.field private mIsScrollable:Z

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/uibase/BaseViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v0, p0, Lcom/acloud/uibase/BaseViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 21
    iput-object v0, p0, Lcom/acloud/uibase/BaseViewPager;->mFragmentPagerAdapter:Lcom/acloud/adapter/BaseFragmentPagerAdapter;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/uibase/BaseViewPager;->mIsScrollable:Z

    .line 32
    new-instance v0, Lcom/acloud/uibase/BaseViewPager$1;

    invoke-direct {v0, p0}, Lcom/acloud/uibase/BaseViewPager$1;-><init>(Lcom/acloud/uibase/BaseViewPager;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/uibase/BaseViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/uibase/BaseViewPager;)Lcom/acloud/adapter/BaseFragmentPagerAdapter;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager;->mFragmentPagerAdapter:Lcom/acloud/adapter/BaseFragmentPagerAdapter;

    return-object v0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I

    .prologue
    .line 125
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    return v0
.end method

.method public getCurPager()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager;->mFragmentPagerAdapter:Lcom/acloud/adapter/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager;->mFragmentPagerAdapter:Lcom/acloud/adapter/BaseFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->getCurPager()I

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/acloud/uibase/BaseViewPager;->mIsScrollable:Z

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/acloud/uibase/BaseViewPager;->mIsScrollable:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Lcom/acloud/adapter/BaseFragmentPagerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/acloud/adapter/BaseFragmentPagerAdapter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/acloud/uibase/BaseViewPager;->mFragmentPagerAdapter:Lcom/acloud/adapter/BaseFragmentPagerAdapter;

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 69
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/acloud/uibase/BaseViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 76
    return-void
.end method

.method public setScroolable(Z)V
    .locals 0
    .param p1, "isScroolable"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/acloud/uibase/BaseViewPager;->mIsScrollable:Z

    .line 95
    return-void
.end method
