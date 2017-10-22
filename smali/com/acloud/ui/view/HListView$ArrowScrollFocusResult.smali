.class Lcom/acloud/ui/view/HListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "HListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/HListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/ui/view/HListView$ArrowScrollFocusResult;)V
    .locals 0

    .prologue
    .line 2772
    invoke-direct {p0}, Lcom/acloud/ui/view/HListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 2790
    iget v0, p0, Lcom/acloud/ui/view/HListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 2786
    iget v0, p0, Lcom/acloud/ui/view/HListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .prologue
    .line 2781
    iput p1, p0, Lcom/acloud/ui/view/HListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 2782
    iput p2, p0, Lcom/acloud/ui/view/HListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 2783
    return-void
.end method
