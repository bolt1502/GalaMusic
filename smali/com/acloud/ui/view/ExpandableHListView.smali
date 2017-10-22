.class public Lcom/acloud/ui/view/ExpandableHListView;
.super Lcom/acloud/ui/view/HListView;
.source "ExpandableHListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/ui/view/ExpandableHListView$ExpandableListContextMenuInfo;,
        Lcom/acloud/ui/view/ExpandableHListView$OnChildClickListener;,
        Lcom/acloud/ui/view/ExpandableHListView$OnGroupClickListener;,
        Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;,
        Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;,
        Lcom/acloud/ui/view/ExpandableHListView$SavedState;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorGravity:I

.field private mChildIndicatorHeight:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorTop:I

.field private mChildIndicatorWidth:I

.field private mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mGroupIndicatorHeight:I

.field private mGroupIndicatorWidth:I

.field private mIndicatorGravity:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorTop:I

.field private mOnChildClickListener:Lcom/acloud/ui/view/ExpandableHListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    new-array v0, v3, [I

    sput-object v0, Lcom/acloud/ui/view/ExpandableHListView;->EMPTY_STATE_SET:[I

    .line 175
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Lcom/acloud/ui/view/ExpandableHListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 178
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Lcom/acloud/ui/view/ExpandableHListView;->GROUP_EMPTY_STATE_SET:[I

    .line 181
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/acloud/ui/view/ExpandableHListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/acloud/ui/view/ExpandableHListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    .line 185
    sget-object v1, Lcom/acloud/ui/view/ExpandableHListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    .line 186
    sget-object v1, Lcom/acloud/ui/view/ExpandableHListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 187
    sget-object v2, Lcom/acloud/ui/view/ExpandableHListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    .line 184
    sput-object v0, Lcom/acloud/ui/view/ExpandableHListView;->GROUP_STATE_SETS:[[I

    .line 191
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lcom/acloud/ui/view/ExpandableHListView;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 181
    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/ui/view/ExpandableHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 211
    sget v0, Lcom/acloud/uibase/R$attr;->hlv_expandableListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/acloud/ui/view/ExpandableHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/acloud/ui/view/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 199
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mTempRect:Landroid/graphics/Rect;

    .line 217
    sget-object v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView_hlv_groupIndicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/ExpandableHListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 220
    sget v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView_hlv_childIndicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/ExpandableHListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 222
    sget v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView_hlv_indicatorPaddingLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorLeft:I

    .line 223
    sget v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView_hlv_indicatorPaddingTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorTop:I

    .line 225
    sget v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView_hlv_indicatorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorGravity:I

    .line 226
    sget v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView_hlv_childIndicatorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorGravity:I

    .line 228
    sget v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView_hlv_childIndicatorPaddingLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorLeft:I

    .line 229
    sget v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView_hlv_childIndicatorPaddingTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorTop:I

    .line 231
    sget v1, Lcom/acloud/uibase/R$styleable;->ExpandableHListView_hlv_childDivider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/acloud/ui/view/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/acloud/ui/view/ExpandableHListPosition;)J
    .locals 3
    .param p1, "position"    # Lcom/acloud/ui/view/ExpandableHListPosition;

    .prologue
    .line 1033
    iget v0, p1, Lcom/acloud/ui/view/ExpandableHListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/acloud/ui/view/ExpandableHListPosition;->groupPos:I

    iget v2, p1, Lcom/acloud/ui/view/ExpandableHListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1037
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/acloud/ui/view/ExpandableHListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/acloud/ui/view/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "pos"    # Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 381
    iget-object v7, p1, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v7, v7, Lcom/acloud/ui/view/ExpandableHListPosition;->type:I

    if-ne v7, v6, :cond_4

    .line 382
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 384
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    iget-object v7, p1, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->groupMetadata:Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->groupMetadata:Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;

    iget v7, v7, Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->groupMetadata:Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;

    iget v8, v8, Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;->flPos:I

    if-eq v7, v8, :cond_2

    move v1, v4

    .line 390
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 391
    :goto_1
    if-eqz v1, :cond_0

    move v4, v6

    .line 390
    :cond_0
    or-int v3, v5, v4

    .line 392
    .local v3, "stateSetIndex":I
    sget-object v4, Lcom/acloud/ui/view/ExpandableHListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 405
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_1
    :goto_2
    return-object v0

    :cond_2
    move v1, v5

    .line 388
    goto :goto_0

    .restart local v1    # "isEmpty":Z
    :cond_3
    move v5, v4

    .line 390
    goto :goto_1

    .line 396
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_4
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 398
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    iget-object v4, p1, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v4, v4, Lcom/acloud/ui/view/ExpandableHListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->groupMetadata:Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;

    iget v5, v5, Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_5

    sget-object v2, Lcom/acloud/ui/view/ExpandableHListView;->CHILD_LAST_STATE_SET:[I

    .line 401
    .local v2, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 400
    .end local v2    # "stateSet":[I
    :cond_5
    sget-object v2, Lcom/acloud/ui/view/ExpandableHListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, -0x1

    .line 964
    cmp-long v1, p0, v6

    if-nez v1, :cond_1

    .line 969
    :cond_0
    :goto_0
    return v0

    .line 967
    :cond_1
    and-long v2, p0, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 969
    and-long v0, p0, v6

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 989
    const-wide/high16 v0, -0x8000000000000000L

    .line 990
    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 989
    or-long/2addr v0, v2

    .line 990
    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    .line 989
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .prologue
    .line 1002
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    .line 945
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 947
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 927
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x2

    .line 931
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 516
    iget v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/acloud/ui/view/ExpandableHListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 517
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/ExpandableHListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private resolveChildIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorWidth:I

    .line 262
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorHeight:I

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorWidth:I

    .line 266
    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorHeight:I

    goto :goto_0
.end method

.method private resolveIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicatorWidth:I

    .line 247
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicatorHeight:I

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicatorWidth:I

    .line 251
    iput v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicatorHeight:I

    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .prologue
    .line 672
    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v1, p1}, Lcom/acloud/ui/view/ExpandableHListConnector;->collapseGroup(I)Z

    move-result v0

    .line 674
    .local v0, "retValue":Z
    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupCollapseListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupCollapseListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 678
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 1007
    invoke-direct {p0, p2}, Lcom/acloud/ui/view/ExpandableHListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    new-instance v0, Lcom/acloud/ui/view/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/acloud/ui/view/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1021
    :goto_0
    return-object v0

    .line 1012
    :cond_0
    invoke-direct {p0, p2}, Lcom/acloud/ui/view/ExpandableHListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1013
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v0, v6}, Lcom/acloud/ui/view/ExpandableHListConnector;->getUnflattenedPos(I)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v7

    .line 1014
    .local v7, "pm":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    iget-object v8, v7, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    .line 1016
    .local v8, "pos":Lcom/acloud/ui/view/ExpandableHListPosition;
    invoke-direct {p0, v8}, Lcom/acloud/ui/view/ExpandableHListView;->getChildOrGroupId(Lcom/acloud/ui/view/ExpandableHListPosition;)J

    move-result-wide p3

    .line 1017
    invoke-virtual {v8}, Lcom/acloud/ui/view/ExpandableHListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1019
    .local v2, "packedPosition":J
    invoke-virtual {v7}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    .line 1021
    new-instance v0, Lcom/acloud/ui/view/ExpandableHListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/acloud/ui/view/ExpandableHListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 274
    invoke-super/range {p0 .. p1}, Lcom/acloud/ui/view/HListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 368
    :cond_0
    return-void

    .line 281
    :cond_1
    const/16 v17, 0x0

    .line 283
    .local v17, "saveCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/ExpandableHListView;->getHeaderViewsCount()I

    move-result v6

    .line 285
    .local v6, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mItemCount:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/ExpandableHListView;->getFooterViewsCount()I

    move-result v19

    sub-int v18, v18, v19

    sub-int v18, v18, v6

    add-int/lit8 v11, v18, -0x1

    .line 287
    .local v11, "lastChildFlPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/ExpandableHListView;->getRight()I

    move-result v14

    .line 295
    .local v14, "myRight":I
    const/4 v12, -0x4

    .line 297
    .local v12, "lastItemType":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 302
    .local v9, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/ExpandableHListView;->getChildCount()I

    move-result v4

    .line 303
    .local v4, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v5, v18, v6

    .local v5, "childFlPos":I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 305
    if-gez v5, :cond_3

    .line 303
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 309
    :cond_3
    if-gt v5, v11, :cond_0

    .line 314
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/acloud/ui/view/ExpandableHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 315
    .local v10, "item":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 316
    .local v13, "left":I
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v16

    .line 319
    .local v16, "right":I
    if-ltz v16, :cond_2

    if-gt v13, v14, :cond_2

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/acloud/ui/view/ExpandableHListConnector;->getUnflattenedPos(I)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v15

    .line 326
    .local v15, "pos":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    iget-object v0, v15, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->type:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v12, :cond_4

    .line 327
    iget-object v0, v15, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 328
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorTop:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 329
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorTop:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 336
    :goto_2
    iget-object v0, v15, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->type:I

    .line 339
    :cond_4
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 340
    iget-object v0, v15, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorLeft:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move/from16 v0, v18

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorLeft:I

    move/from16 v18, v0

    add-int v18, v18, v16

    move/from16 v0, v18

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 351
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/acloud/ui/view/ExpandableHListView;->getIndicator(Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 352
    .local v8, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_5

    .line 354
    iget-object v0, v15, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorGravity:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicatorHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v9, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 362
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 363
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    .end local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v15}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_1

    .line 332
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorTop:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 333
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorTop:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 345
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorLeft:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move/from16 v0, v18

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorLeft:I

    move/from16 v18, v0

    add-int v18, v18, v16

    move/from16 v0, v18

    iput v0, v9, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .line 358
    .restart local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mIndicatorGravity:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicatorWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicatorHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/ExpandableHListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v9, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 421
    iget v4, p0, Lcom/acloud/ui/view/ExpandableHListView;->mFirstPosition:I

    add-int v2, p3, v4

    .line 425
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_2

    .line 426
    invoke-direct {p0, v2}, Lcom/acloud/ui/view/ExpandableHListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 427
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v4, v0}, Lcom/acloud/ui/view/ExpandableHListConnector;->getUnflattenedPos(I)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v3

    .line 429
    .local v3, "pos":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v4, v4, Lcom/acloud/ui/view/ExpandableHListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->groupMetadata:Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;

    iget v4, v4, Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->groupMetadata:Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;

    iget v5, v5, Lcom/acloud/ui/view/ExpandableHListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_1

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 432
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 433
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    invoke-virtual {v3}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    .line 442
    .end local v0    # "adjustedPosition":I
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pos":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    :goto_0
    return-void

    .line 437
    .restart local v0    # "adjustedPosition":I
    .restart local v3    # "pos":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v3}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    .line 441
    .end local v0    # "adjustedPosition":I
    .end local v3    # "pos":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Lcom/acloud/ui/view/HListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/acloud/ui/view/ExpandableHListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 644
    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Lcom/acloud/ui/view/ExpandableHListPosition;->obtain(IIII)Lcom/acloud/ui/view/ExpandableHListPosition;

    move-result-object v0

    .line 645
    .local v0, "elGroupPos":Lcom/acloud/ui/view/ExpandableHListPosition;
    iget-object v5, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v5, v0}, Lcom/acloud/ui/view/ExpandableHListConnector;->getFlattenedPos(Lcom/acloud/ui/view/ExpandableHListPosition;)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v2

    .line 646
    .local v2, "pm":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    invoke-virtual {v0}, Lcom/acloud/ui/view/ExpandableHListPosition;->recycle()V

    .line 647
    iget-object v5, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v5, v2}, Lcom/acloud/ui/view/ExpandableHListConnector;->expandGroup(Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;)Z

    move-result v3

    .line 649
    .local v3, "retValue":Z
    iget-object v5, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupExpandListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;

    if-eqz v5, :cond_0

    .line 650
    iget-object v5, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupExpandListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 653
    :cond_0
    if-eqz p2, :cond_1

    .line 654
    iget-object v5, v2, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v1, v5, Lcom/acloud/ui/view/ExpandableHListPosition;->flatListPos:I

    .line 656
    .local v1, "groupFlatPos":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/ExpandableHListView;->getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    .line 657
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Lcom/acloud/ui/view/ExpandableHListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Lcom/acloud/ui/view/ExpandableHListView;->smoothScrollToPosition(II)V

    .line 659
    .end local v1    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v2}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    .line 661
    return v3
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 465
    invoke-super {p0}, Lcom/acloud/ui/view/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .param p1, "flatListPosition"    # I

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/ExpandableHListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 785
    const-wide v2, 0xffffffffL

    .line 792
    :goto_0
    return-wide v2

    .line 788
    :cond_0
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/ExpandableHListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 789
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v4, v0}, Lcom/acloud/ui/view/ExpandableHListConnector;->getUnflattenedPos(I)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v1

    .line 790
    .local v1, "pm":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    iget-object v4, v1, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    invoke-virtual {v4}, Lcom/acloud/ui/view/ExpandableHListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 791
    .local v2, "packedPos":J
    invoke-virtual {v1}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 5
    .param p1, "packedPosition"    # J

    .prologue
    .line 807
    invoke-static {p1, p2}, Lcom/acloud/ui/view/ExpandableHListPosition;->obtainPosition(J)Lcom/acloud/ui/view/ExpandableHListPosition;

    move-result-object v0

    .line 808
    .local v0, "elPackedPos":Lcom/acloud/ui/view/ExpandableHListPosition;
    iget-object v3, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v3, v0}, Lcom/acloud/ui/view/ExpandableHListConnector;->getFlattenedPos(Lcom/acloud/ui/view/ExpandableHListPosition;)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v2

    .line 809
    .local v2, "pm":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    invoke-virtual {v0}, Lcom/acloud/ui/view/ExpandableHListPosition;->recycle()V

    .line 810
    iget-object v3, v2, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v1, v3, Lcom/acloud/ui/view/ExpandableHListPosition;->flatListPos:I

    .line 811
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    .line 812
    invoke-direct {p0, v1}, Lcom/acloud/ui/view/ExpandableHListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .locals 6

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/acloud/ui/view/ExpandableHListView;->getSelectedPosition()J

    move-result-wide v2

    .line 839
    .local v2, "packedPos":J
    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v4, -0x1

    .line 849
    :goto_0
    return-wide v4

    .line 841
    :cond_0
    invoke-static {v2, v3}, Lcom/acloud/ui/view/ExpandableHListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 843
    .local v0, "groupPos":I
    invoke-static {v2, v3}, Lcom/acloud/ui/view/ExpandableHListView;->getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    goto :goto_0

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, Lcom/acloud/ui/view/ExpandableHListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 4

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/acloud/ui/view/ExpandableHListView;->getSelectedItemPosition()I

    move-result v0

    .line 827
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/ExpandableHListView;->getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 564
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v0, p2}, Lcom/acloud/ui/view/ExpandableHListConnector;->getUnflattenedPos(I)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v10

    .line 566
    .local v10, "posMetadata":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    iget-object v0, v10, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    invoke-direct {p0, v0}, Lcom/acloud/ui/view/ExpandableHListView;->getChildOrGroupId(Lcom/acloud/ui/view/ExpandableHListPosition;)J

    move-result-wide p3

    .line 569
    iget-object v0, v10, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v0, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 573
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupClickListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupClickListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupClickListener;

    iget-object v1, v10, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v3, v1, Lcom/acloud/ui/view/ExpandableHListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/acloud/ui/view/ExpandableHListView$OnGroupClickListener;->onGroupClick(Lcom/acloud/ui/view/ExpandableHListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v10}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    .line 576
    const/4 v11, 0x1

    .line 621
    :goto_0
    return v11

    .line 580
    :cond_0
    invoke-virtual {v10}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v0, v10}, Lcom/acloud/ui/view/ExpandableHListConnector;->collapseGroup(Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;)Z

    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/ExpandableHListView;->playSoundEffect(I)V

    .line 586
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupCollapseListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupCollapseListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;

    iget-object v1, v10, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v1, v1, Lcom/acloud/ui/view/ExpandableHListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 607
    :cond_1
    :goto_1
    const/4 v11, 0x1

    .line 619
    .local v11, "returnValue":Z
    :goto_2
    invoke-virtual {v10}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 592
    .end local v11    # "returnValue":Z
    :cond_2
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v0, v10}, Lcom/acloud/ui/view/ExpandableHListConnector;->expandGroup(Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;)Z

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/ExpandableHListView;->playSoundEffect(I)V

    .line 596
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupExpandListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupExpandListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;

    iget-object v1, v10, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v1, v1, Lcom/acloud/ui/view/ExpandableHListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 600
    :cond_3
    iget-object v0, v10, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v9, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->groupPos:I

    .line 601
    .local v9, "groupPos":I
    iget-object v0, v10, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v8, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->flatListPos:I

    .line 603
    .local v8, "groupFlatPos":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    add-int v12, v8, v0

    .line 604
    .local v12, "shiftedGroupPosition":I
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v9}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p0, v0, v12}, Lcom/acloud/ui/view/ExpandableHListView;->smoothScrollToPosition(II)V

    goto :goto_1

    .line 611
    .end local v8    # "groupFlatPos":I
    .end local v9    # "groupPos":I
    .end local v12    # "shiftedGroupPosition":I
    :cond_4
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnChildClickListener:Lcom/acloud/ui/view/ExpandableHListView$OnChildClickListener;

    if-eqz v0, :cond_5

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/ExpandableHListView;->playSoundEffect(I)V

    .line 613
    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnChildClickListener:Lcom/acloud/ui/view/ExpandableHListView$OnChildClickListener;

    iget-object v0, v10, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v4, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->groupPos:I

    iget-object v0, v10, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v5, v0, Lcom/acloud/ui/view/ExpandableHListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/acloud/ui/view/ExpandableHListView$OnChildClickListener;->onChildClick(Lcom/acloud/ui/view/ExpandableHListView;Landroid/view/View;IIJ)Z

    move-result v11

    goto :goto_0

    .line 616
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "returnValue":Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 914
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v0, p1}, Lcom/acloud/ui/view/ExpandableHListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1163
    invoke-super {p0, p1}, Lcom/acloud/ui/view/HListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1164
    const-class v0, Lcom/acloud/ui/view/ExpandableHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1165
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1170
    invoke-super {p0, p1}, Lcom/acloud/ui/view/HListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1171
    const-class v0, Lcom/acloud/ui/view/ExpandableHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1172
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1148
    instance-of v1, p1, Lcom/acloud/ui/view/ExpandableHListView$SavedState;

    if-nez v1, :cond_1

    .line 1149
    invoke-super {p0, p1}, Lcom/acloud/ui/view/HListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1159
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1153
    check-cast v0, Lcom/acloud/ui/view/ExpandableHListView$SavedState;

    .line 1154
    .local v0, "ss":Lcom/acloud/ui/view/ExpandableHListView$SavedState;
    invoke-virtual {v0}, Lcom/acloud/ui/view/ExpandableHListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/acloud/ui/view/HListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1156
    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/acloud/ui/view/ExpandableHListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    iget-object v2, v0, Lcom/acloud/ui/view/ExpandableHListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/acloud/ui/view/ExpandableHListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/acloud/ui/view/ExpandableHListView;->resolveIndicator()V

    .line 237
    invoke-direct {p0}, Lcom/acloud/ui/view/ExpandableHListView;->resolveChildIndicator()V

    .line 238
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1142
    invoke-super {p0}, Lcom/acloud/ui/view/HListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1143
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Lcom/acloud/ui/view/ExpandableHListView$SavedState;

    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v1}, Lcom/acloud/ui/view/ExpandableHListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/acloud/ui/view/ExpandableHListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 545
    invoke-direct {p0, p2}, Lcom/acloud/ui/view/ExpandableHListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Lcom/acloud/ui/view/HListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 552
    :goto_0
    return v1

    .line 551
    :cond_0
    invoke-direct {p0, p2}, Lcom/acloud/ui/view/ExpandableHListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 552
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/acloud/ui/view/ExpandableHListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 490
    if-eqz p1, :cond_0

    .line 492
    new-instance v0, Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-direct {v0, p1}, Lcom/acloud/ui/view/ExpandableHListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-super {p0, v0}, Lcom/acloud/ui/view/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    return-void

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 452
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 417
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1050
    invoke-direct {p0}, Lcom/acloud/ui/view/ExpandableHListView;->resolveChildIndicator()V

    .line 1051
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1063
    invoke-direct {p0}, Lcom/acloud/ui/view/ExpandableHListView;->resolveIndicator()V

    .line 1064
    return-void
.end method

.method public setOnChildClickListener(Lcom/acloud/ui/view/ExpandableHListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Lcom/acloud/ui/view/ExpandableHListView$OnChildClickListener;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnChildClickListener:Lcom/acloud/ui/view/ExpandableHListView$OnChildClickListener;

    .line 767
    return-void
.end method

.method public setOnGroupClickListener(Lcom/acloud/ui/view/ExpandableHListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Lcom/acloud/ui/view/ExpandableHListView$OnGroupClickListener;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupClickListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupClickListener;

    .line 740
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupCollapseListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupCollapseListener;

    .line 697
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/acloud/ui/view/ExpandableHListView;->mOnGroupExpandListener:Lcom/acloud/ui/view/ExpandableHListView$OnGroupExpandListener;

    .line 715
    return-void
.end method

.method public setOnItemClickListener(Lcom/acloud/ui/view/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 478
    .local p1, "l":Lcom/acloud/ui/view/AdapterView$OnItemClickListener;, "Lcom/acloud/ui/view/AdapterView$OnItemClickListener;"
    invoke-super {p0, p1}, Lcom/acloud/ui/view/HListView;->setOnItemClickListener(Lcom/acloud/ui/view/AdapterView$OnItemClickListener;)V

    .line 479
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 879
    invoke-static {p1, p2}, Lcom/acloud/ui/view/ExpandableHListPosition;->obtainChildPosition(II)Lcom/acloud/ui/view/ExpandableHListPosition;

    move-result-object v1

    .line 880
    .local v1, "elChildPos":Lcom/acloud/ui/view/ExpandableHListPosition;
    iget-object v3, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v3, v1}, Lcom/acloud/ui/view/ExpandableHListConnector;->getFlattenedPos(Lcom/acloud/ui/view/ExpandableHListPosition;)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v2

    .line 882
    .local v2, "flatChildPos":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 886
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 904
    :goto_0
    return v3

    .line 888
    :cond_0
    invoke-virtual {p0, p1}, Lcom/acloud/ui/view/ExpandableHListView;->expandGroup(I)Z

    .line 890
    iget-object v3, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v3, v1}, Lcom/acloud/ui/view/ExpandableHListConnector;->getFlattenedPos(Lcom/acloud/ui/view/ExpandableHListPosition;)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v2

    .line 893
    if-nez v2, :cond_1

    .line 894
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 898
    :cond_1
    iget-object v3, v2, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v3, v3, Lcom/acloud/ui/view/ExpandableHListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/acloud/ui/view/ExpandableHListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 899
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lcom/acloud/ui/view/HListView;->setSelection(I)V

    .line 901
    invoke-virtual {v1}, Lcom/acloud/ui/view/ExpandableHListPosition;->recycle()V

    .line 902
    invoke-virtual {v2}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    .line 904
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 859
    invoke-static {p1}, Lcom/acloud/ui/view/ExpandableHListPosition;->obtainGroupPosition(I)Lcom/acloud/ui/view/ExpandableHListPosition;

    move-result-object v1

    .line 860
    .local v1, "elGroupPos":Lcom/acloud/ui/view/ExpandableHListPosition;
    iget-object v3, p0, Lcom/acloud/ui/view/ExpandableHListView;->mConnector:Lcom/acloud/ui/view/ExpandableHListConnector;

    invoke-virtual {v3, v1}, Lcom/acloud/ui/view/ExpandableHListConnector;->getFlattenedPos(Lcom/acloud/ui/view/ExpandableHListPosition;)Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;

    move-result-object v2

    .line 861
    .local v2, "pm":Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;
    invoke-virtual {v1}, Lcom/acloud/ui/view/ExpandableHListPosition;->recycle()V

    .line 862
    iget-object v3, v2, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->position:Lcom/acloud/ui/view/ExpandableHListPosition;

    iget v3, v3, Lcom/acloud/ui/view/ExpandableHListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/acloud/ui/view/ExpandableHListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 863
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lcom/acloud/ui/view/HListView;->setSelection(I)V

    .line 864
    invoke-virtual {v2}, Lcom/acloud/ui/view/ExpandableHListConnector$PositionMetadata;->recycle()V

    .line 865
    return-void
.end method
