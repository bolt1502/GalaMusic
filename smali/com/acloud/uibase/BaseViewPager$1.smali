.class Lcom/acloud/uibase/BaseViewPager$1;
.super Ljava/lang/Object;
.source "BaseViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/uibase/BaseViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/uibase/BaseViewPager;


# direct methods
.method constructor <init>(Lcom/acloud/uibase/BaseViewPager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/uibase/BaseViewPager$1;->this$0:Lcom/acloud/uibase/BaseViewPager;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager$1;->this$0:Lcom/acloud/uibase/BaseViewPager;

    # getter for: Lcom/acloud/uibase/BaseViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/acloud/uibase/BaseViewPager;->access$0(Lcom/acloud/uibase/BaseViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager$1;->this$0:Lcom/acloud/uibase/BaseViewPager;

    # getter for: Lcom/acloud/uibase/BaseViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/acloud/uibase/BaseViewPager;->access$0(Lcom/acloud/uibase/BaseViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager$1;->this$0:Lcom/acloud/uibase/BaseViewPager;

    # getter for: Lcom/acloud/uibase/BaseViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/acloud/uibase/BaseViewPager;->access$0(Lcom/acloud/uibase/BaseViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager$1;->this$0:Lcom/acloud/uibase/BaseViewPager;

    # getter for: Lcom/acloud/uibase/BaseViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/acloud/uibase/BaseViewPager;->access$0(Lcom/acloud/uibase/BaseViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 50
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager$1;->this$0:Lcom/acloud/uibase/BaseViewPager;

    # getter for: Lcom/acloud/uibase/BaseViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/acloud/uibase/BaseViewPager;->access$0(Lcom/acloud/uibase/BaseViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager$1;->this$0:Lcom/acloud/uibase/BaseViewPager;

    # getter for: Lcom/acloud/uibase/BaseViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/acloud/uibase/BaseViewPager;->access$0(Lcom/acloud/uibase/BaseViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager$1;->this$0:Lcom/acloud/uibase/BaseViewPager;

    # getter for: Lcom/acloud/uibase/BaseViewPager;->mFragmentPagerAdapter:Lcom/acloud/adapter/BaseFragmentPagerAdapter;
    invoke-static {v0}, Lcom/acloud/uibase/BaseViewPager;->access$1(Lcom/acloud/uibase/BaseViewPager;)Lcom/acloud/adapter/BaseFragmentPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/acloud/uibase/BaseViewPager$1;->this$0:Lcom/acloud/uibase/BaseViewPager;

    # getter for: Lcom/acloud/uibase/BaseViewPager;->mFragmentPagerAdapter:Lcom/acloud/adapter/BaseFragmentPagerAdapter;
    invoke-static {v0}, Lcom/acloud/uibase/BaseViewPager;->access$1(Lcom/acloud/uibase/BaseViewPager;)Lcom/acloud/adapter/BaseFragmentPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/acloud/adapter/BaseFragmentPagerAdapter;->setCurPager(I)V

    .line 43
    :cond_1
    return-void
.end method
