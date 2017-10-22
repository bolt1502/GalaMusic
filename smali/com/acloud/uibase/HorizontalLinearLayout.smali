.class public Lcom/acloud/uibase/HorizontalLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HorizontalLinearLayout.java"

# interfaces
.implements Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

.field private mFristIndex:I

.field private mLoadChildCount:I

.field private mStartUpdateChild:I

.field private mUpdateCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v1, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mFristIndex:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    .line 23
    iput v1, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mStartUpdateChild:I

    .line 24
    iput v1, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mLoadChildCount:I

    .line 25
    iput v1, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mUpdateCount:I

    .line 33
    return-void
.end method

.method private restoreChildView(II)V
    .locals 5
    .param p1, "nStartChild"    # I
    .param p2, "nLoadChild"    # I

    .prologue
    const/16 v4, 0x8

    .line 121
    iget-object v3, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    if-nez v3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {v3}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getCount()I

    move-result v2

    .line 124
    .local v2, "nCount":I
    invoke-virtual {p0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildCount()I

    move-result v1

    .line 126
    .local v1, "nChildCount":I
    if-nez v2, :cond_2

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "i":I
    :cond_2
    if-ge v2, v1, :cond_6

    .line 135
    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 138
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v2, :cond_5

    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildCount()I

    move-result v1

    .line 164
    move v0, p1

    :goto_4
    if-lt v0, p2, :cond_9

    .line 170
    iput p1, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mStartUpdateChild:I

    .line 171
    iput p2, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mLoadChildCount:I

    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 139
    :cond_5
    iget-object v3, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v0, v4, p0}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 141
    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acloud/uibase/HorizontalLinearLayout;->showView(Landroid/view/View;)V

    .line 143
    iput v0, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mUpdateCount:I

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 146
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-lt v0, v1, :cond_7

    .line 150
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_3

    .line 151
    if-ge v0, v1, :cond_8

    .line 152
    iget-object v3, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v0, v4, p0}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acloud/uibase/HorizontalLinearLayout;->showView(Landroid/view/View;)V

    .line 159
    :goto_7
    iput v0, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mUpdateCount:I

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 147
    :cond_7
    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acloud/uibase/HorizontalLinearLayout;->showView(Landroid/view/View;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 156
    :cond_8
    iget-object v3, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v0, v4, p0}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/acloud/uibase/HorizontalLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 165
    :cond_9
    if-ge v0, v1, :cond_a

    .line 166
    iget-object v3, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->updateView(ILandroid/view/View;)V

    .line 164
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private showView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_0
    return-void
.end method

.method private updateCurChild(II)V
    .locals 6
    .param p1, "nStartChild"    # I
    .param p2, "nLoadChild"    # I

    .prologue
    .line 180
    iget-object v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    if-nez v4, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mStartUpdateChild:I

    if-ne v4, p1, :cond_2

    iget v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mLoadChildCount:I

    if-eq v4, p2, :cond_0

    .line 186
    :cond_2
    iget-object v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {v4}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getCount()I

    move-result v2

    .line 187
    .local v2, "nCount":I
    invoke-virtual {p0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildCount()I

    move-result v1

    .line 188
    .local v1, "nChildCount":I
    add-int v3, p1, p2

    .line 190
    .local v3, "nNeedLoadChild":I
    if-le v3, v2, :cond_3

    .line 192
    move v3, v2

    .line 195
    :cond_3
    if-ge v2, v1, :cond_8

    .line 197
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 200
    move v0, p1

    :goto_2
    if-lt v0, v3, :cond_6

    .line 225
    :cond_4
    iput p1, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mStartUpdateChild:I

    .line 226
    iput p2, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mLoadChildCount:I

    goto :goto_0

    .line 198
    :cond_5
    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 201
    :cond_6
    iget v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mUpdateCount:I

    if-ge v4, v0, :cond_7

    .line 202
    iget-object v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v0, v5, p0}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 203
    iput v0, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mUpdateCount:I

    .line 206
    :cond_7
    iget-object v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->updateView(ILandroid/view/View;)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/acloud/uibase/HorizontalLinearLayout;->showView(Landroid/view/View;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 210
    .end local v0    # "i":I
    :cond_8
    move v0, p1

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v3, :cond_4

    .line 211
    if-ge v0, v1, :cond_a

    .line 212
    iget v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mUpdateCount:I

    if-ge v4, v0, :cond_9

    .line 213
    iget-object v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v0, v5, p0}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 214
    iput v0, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mUpdateCount:I

    .line 216
    :cond_9
    iget-object v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->updateView(ILandroid/view/View;)V

    .line 221
    :goto_4
    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/acloud/uibase/HorizontalLinearLayout;->showView(Landroid/view/View;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 218
    :cond_a
    iget-object v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v0, v5, p0}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/acloud/uibase/HorizontalLinearLayout;->addView(Landroid/view/View;)V

    .line 219
    iget-object v4, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->updateView(ILandroid/view/View;)V

    goto :goto_4
.end method


# virtual methods
.method public getFirstIndex()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mFristIndex:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onScrollStop(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "width"    # I

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildCount()I

    move-result v1

    .line 89
    .local v1, "nChildCount":I
    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0, v4}, Lcom/acloud/uibase/HorizontalLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int v5, p2, v5

    add-int/lit8 v2, v5, 0x2

    .line 94
    .local v2, "nLoadCount":I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int v3, p1, v5

    .line 95
    .local v3, "nStartChild":I
    if-gez v3, :cond_0

    move v3, v4

    .line 96
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/acloud/uibase/HorizontalLinearLayout;->updateCurChild(II)V

    .line 102
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "nLoadCount":I
    .end local v3    # "nStartChild":I
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lcom/acloud/uibase/HorizontalLinearLayout;->updateCurChild(II)V

    goto :goto_0
.end method

.method public onUpdate(Z)V
    .locals 3
    .param p1, "isSeekToStartPos"    # Z

    .prologue
    const/4 v2, 0x0

    .line 67
    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/acloud/uibase/HorizontalLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 71
    .local v0, "scrollView":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 75
    .end local v0    # "scrollView":Landroid/widget/HorizontalScrollView;
    :cond_0
    iput v2, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mStartUpdateChild:I

    .line 76
    iput v2, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mLoadChildCount:I

    .line 79
    :cond_1
    const/4 v1, 0x5

    invoke-direct {p0, v2, v1}, Lcom/acloud/uibase/HorizontalLinearLayout;->restoreChildView(II)V

    .line 80
    return-void
.end method

.method public setAdapter(Lcom/acloud/adapter/HorizontalLayoutAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/acloud/adapter/HorizontalLayoutAdapter;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    .line 60
    iget-object v0, p0, Lcom/acloud/uibase/HorizontalLinearLayout;->mAdapter:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-virtual {v0, p0}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->setScrollViewLayoutCallback(Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;)V

    .line 62
    :cond_0
    return-void
.end method
