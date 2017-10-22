.class public abstract Lcom/acloud/ui/view/AbsHListView;
.super Lcom/acloud/ui/view/AdapterView;
.source "AbsHListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;,
        Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;,
        Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;,
        Lcom/acloud/ui/view/AbsHListView$CheckForTap;,
        Lcom/acloud/ui/view/AbsHListView$FlingRunnable;,
        Lcom/acloud/ui/view/AbsHListView$LayoutParams;,
        Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;,
        Lcom/acloud/ui/view/AbsHListView$OnScrollListener;,
        Lcom/acloud/ui/view/AbsHListView$PerformClick;,
        Lcom/acloud/ui/view/AbsHListView$PositionScroller;,
        Lcom/acloud/ui/view/AbsHListView$RecycleBin;,
        Lcom/acloud/ui/view/AbsHListView$RecyclerListener;,
        Lcom/acloud/ui/view/AbsHListView$SavedState;,
        Lcom/acloud/ui/view/AbsHListView$SelectionBoundsAdjuster;,
        Lcom/acloud/ui/view/AbsHListView$WindowRunnnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/ui/view/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field private static final INVALID_POINTER:I = -0x1

.field public static final LAYOUT_FORCE_LEFT:I = 0x1

.field public static final LAYOUT_FORCE_RIGHT:I = 0x3

.field public static final LAYOUT_MOVE_SELECTION:I = 0x6

.field public static final LAYOUT_NORMAL:I = 0x0

.field public static final LAYOUT_SET_SELECTION:I = 0x2

.field public static final LAYOUT_SPECIFIC:I = 0x4

.field public static final LAYOUT_SYNC:I = 0x5

.field protected static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field public static final STATESET_NOTHING:[I

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field public static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field public static final TOUCH_MODE_DOWN:I = 0x0

.field public static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field public static final TOUCH_MODE_OVERFLING:I = 0x6

.field public static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field public static final TOUCH_MODE_REST:I = -0x1

.field public static final TOUCH_MODE_SCROLL:I = 0x3

.field public static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field protected mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field protected mCachingActive:Z

.field protected mCachingStarted:Z

.field protected mCheckStates:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field public mChoiceActionMode:Ljava/lang/Object;

.field protected mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected mDataSetObserver:Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

.field mFastScrollEnabled:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

.field private mForceTranscriptScroll:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field protected mHeightMeasureSpec:I

.field private mHorizontalScrollFactor:F

.field protected mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field protected final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field protected mLayoutMode:I

.field protected mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field protected mMotionPosition:I

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Ljava/lang/Object;

.field private mOnScrollListener:Lcom/acloud/ui/view/AbsHListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field protected mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

.field private mPerformClick:Lcom/acloud/ui/view/AbsHListView$PerformClick;

.field protected mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field protected mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

.field protected final mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

.field protected mResurrectToPosition:I

.field mScrollLeft:Landroid/view/View;

.field mScrollRight:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field protected mSelectedLeft:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field protected mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field protected mStackFromRight:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field protected mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewHelper:Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 545
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/acloud/ui/view/AbsHListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 2288
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/acloud/ui/view/AbsHListView;->STATESET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 621
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AdapterView;-><init>(Landroid/content/Context;)V

    .line 166
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    .line 200
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 220
    iput-boolean v1, p0, Lcom/acloud/ui/view/AbsHListView;->mDrawSelectorOnTop:Z

    .line 230
    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorPosition:I

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 240
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-direct {v0, p0}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    .line 245
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionLeftPadding:I

    .line 250
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionTopPadding:I

    .line 255
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionRightPadding:I

    .line 260
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionBottomPadding:I

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    .line 270
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mHeightMeasureSpec:I

    .line 316
    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 347
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedLeft:I

    .line 372
    iput-boolean v3, p0, Lcom/acloud/ui/view/AbsHListView;->mSmoothScrollbarEnabled:Z

    .line 382
    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 409
    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mLastTouchMode:I

    .line 454
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mLastScrollState:I

    .line 462
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityScale:F

    .line 464
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mIsScrap:[Z

    .line 469
    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 514
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mDirection:I

    .line 622
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->initAbsListView()V

    .line 623
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 626
    sget v0, Lcom/acloud/uibase/R$attr;->hlv_absHListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/acloud/ui/view/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 627
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/acloud/ui/view/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    .line 200
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 220
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/acloud/ui/view/AbsHListView;->mDrawSelectorOnTop:Z

    .line 230
    const/4 v10, -0x1

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorPosition:I

    .line 235
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 240
    new-instance v10, Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-direct {v10, p0}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v10, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    .line 245
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionLeftPadding:I

    .line 250
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionTopPadding:I

    .line 255
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionRightPadding:I

    .line 260
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionBottomPadding:I

    .line 265
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    .line 270
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mHeightMeasureSpec:I

    .line 316
    const/4 v10, -0x1

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 347
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedLeft:I

    .line 372
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/acloud/ui/view/AbsHListView;->mSmoothScrollbarEnabled:Z

    .line 382
    const/4 v10, -0x1

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    .line 384
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/acloud/ui/view/AbsHListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 409
    const/4 v10, -0x1

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mLastTouchMode:I

    .line 454
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mLastScrollState:I

    .line 462
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityScale:F

    .line 464
    const/4 v10, 0x1

    new-array v10, v10, [Z

    iput-object v10, p0, Lcom/acloud/ui/view/AbsHListView;->mIsScrap:[Z

    .line 469
    const/4 v10, -0x1

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 514
    const/4 v10, 0x0

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mDirection:I

    .line 636
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->initAbsListView()V

    .line 638
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 640
    .local v8, "theme":Landroid/content/res/Resources$Theme;
    sget-object v10, Lcom/acloud/uibase/R$styleable;->AbsHListView:[I

    const/4 v11, 0x0

    invoke-virtual {v8, p2, v10, p3, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 642
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    .line 643
    .local v4, "listSelector":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 644
    .local v3, "drawSelectorOnTop":Z
    const/4 v7, 0x0

    .line 645
    .local v7, "stackFromRight":Z
    const/4 v5, 0x1

    .line 646
    .local v5, "scrollingCacheEnabled":Z
    const/4 v9, 0x0

    .line 647
    .local v9, "transcriptMode":I
    const/4 v2, 0x0

    .line 648
    .local v2, "color":I
    const/4 v6, 0x1

    .line 649
    .local v6, "smoothScrollbar":Z
    const/4 v1, 0x0

    .line 651
    .local v1, "choiceMode":I
    if-eqz v0, :cond_0

    .line 652
    sget v10, Lcom/acloud/uibase/R$styleable;->AbsHListView_android_listSelector:I

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 653
    sget v10, Lcom/acloud/uibase/R$styleable;->AbsHListView_android_drawSelectorOnTop:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 654
    sget v10, Lcom/acloud/uibase/R$styleable;->AbsHListView_hlv_stackFromRight:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 655
    sget v10, Lcom/acloud/uibase/R$styleable;->AbsHListView_android_scrollingCache:I

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 656
    sget v10, Lcom/acloud/uibase/R$styleable;->AbsHListView_hlv_transcriptMode:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 657
    sget v10, Lcom/acloud/uibase/R$styleable;->AbsHListView_android_cacheColorHint:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 658
    sget v10, Lcom/acloud/uibase/R$styleable;->AbsHListView_android_smoothScrollbar:I

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 659
    sget v10, Lcom/acloud/uibase/R$styleable;->AbsHListView_android_choiceMode:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 660
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 674
    :cond_0
    if-eqz v4, :cond_1

    .line 675
    invoke-virtual {p0, v4}, Lcom/acloud/ui/view/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 678
    :cond_1
    iput-boolean v3, p0, Lcom/acloud/ui/view/AbsHListView;->mDrawSelectorOnTop:Z

    .line 679
    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->setStackFromRight(Z)V

    .line 680
    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 681
    invoke-virtual {p0, v9}, Lcom/acloud/ui/view/AbsHListView;->setTranscriptMode(I)V

    .line 682
    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->setCacheColorHint(I)V

    .line 683
    invoke-virtual {p0, v6}, Lcom/acloud/ui/view/AbsHListView;->setSmoothScrollbarEnabled(Z)V

    .line 684
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->setChoiceMode(I)V

    .line 685
    return-void
.end method

.method static synthetic access$10(Lcom/acloud/ui/view/AbsHListView;)Landroid/support/v4/widget/EdgeEffectCompat;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    return-object v0
.end method

.method static synthetic access$11(Lcom/acloud/ui/view/AbsHListView;)Landroid/support/v4/widget/EdgeEffectCompat;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    return-object v0
.end method

.method static synthetic access$12(Lcom/acloud/ui/view/AbsHListView;)V
    .locals 0

    .prologue
    .line 4522
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$13(Lcom/acloud/ui/view/AbsHListView;IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 1
    invoke-virtual/range {p0 .. p9}, Lcom/acloud/ui/view/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/acloud/ui/view/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/acloud/ui/view/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$15(Lcom/acloud/ui/view/AbsHListView;Z)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/acloud/ui/view/AbsHListView;Z)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/acloud/ui/view/AbsHListView;)I
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/acloud/ui/view/AbsHListView;)Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$4(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/ui/view/AbsHListView;)I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$6(Lcom/acloud/ui/view/AbsHListView;)Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$7(Lcom/acloud/ui/view/AbsHListView;)I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$8(Lcom/acloud/ui/view/AbsHListView;)I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$9(Lcom/acloud/ui/view/AbsHListView;)Z
    .locals 1

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 4523
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mViewHelper:Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0}, Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4524
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4525
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$2;

    invoke-direct {v0, p0}, Lcom/acloud/ui/view/AbsHListView$2;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 4542
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/AbsHListView;->post(Ljava/lang/Runnable;)Z

    .line 4544
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1072
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 1073
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return v1

    .line 1074
    :cond_1
    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1076
    :cond_2
    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_3

    .line 1077
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 1076
    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4515
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mViewHelper:Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0}, Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4516
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 4517
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 4518
    iput-boolean v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCachingStarted:Z

    .line 4520
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2186
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2188
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2189
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2191
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 5334
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 5335
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 5336
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 5338
    :cond_0
    return-void
.end method

.method public static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 5160
    sparse-switch p2, :sswitch_data_0

    .line 5193
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5162
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 5163
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5164
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 5165
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5197
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 5198
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 5199
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 5168
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5169
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 5170
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5171
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5172
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5174
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 5175
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5176
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 5177
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5178
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5180
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5181
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 5182
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5183
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 5184
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5187
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5188
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5189
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5190
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5191
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5160
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 688
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->setClickable(Z)V

    .line 689
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->setFocusableInTouchMode(Z)V

    .line 690
    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->setWillNotDraw(Z)V

    .line 691
    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 692
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 694
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 695
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchSlop:I

    .line 696
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMinimumVelocity:I

    .line 697
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMaximumVelocity:I

    .line 698
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mOverscrollDistance:I

    .line 699
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mOverflingDistance:I

    .line 700
    invoke-static {p0}, Lcom/acloud/ui/utils/ViewHelperFactory;->create(Landroid/view/View;)Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mViewHelper:Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;

    .line 701
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3500
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3504
    :goto_0
    return-void

    .line 3502
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3508
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3510
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 3615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 3617
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3618
    .local v1, "pointerId":I
    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 3622
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 3623
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    .line 3624
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionY:I

    .line 3625
    iput v3, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionCorrection:I

    .line 3626
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 3628
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 3622
    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    .line 2108
    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    .line 2107
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2109
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3514
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3517
    :cond_0
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 5844
    .local p0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5845
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 5847
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 5854
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 5856
    .end local v0    # "i":I
    :goto_1
    return-object v2

    .line 5848
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 5849
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    iget v3, v3, Lcom/acloud/ui/view/AbsHListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_1

    .line 5850
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5847
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5856
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 29
    .param p1, "x"    # I

    .prologue
    .line 2813
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    sub-int v28, p1, v3

    .line 2814
    .local v28, "rawDeltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionCorrection:I

    sub-int v16, v28, v3

    .line 2815
    .local v16, "deltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    sub-int v17, p1, v3

    .line 2817
    .local v17, "incrementalDeltaX":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_d

    .line 2819
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 2823
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchSlop:I

    if-le v3, v5, :cond_0

    .line 2824
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    .line 2825
    .local v27, "parent":Landroid/view/ViewParent;
    if-eqz v27, :cond_0

    .line 2826
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2831
    .end local v27    # "parent":Landroid/view/ViewParent;
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    if-ltz v3, :cond_a

    .line 2832
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int v18, v3, v5

    .line 2839
    .local v18, "motionIndex":I
    :goto_1
    const/16 v21, 0x0

    .line 2840
    .local v21, "motionViewPrevLeft":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 2841
    .local v20, "motionView":Landroid/view/View;
    if-eqz v20, :cond_1

    .line 2842
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v21

    .line 2846
    :cond_1
    const/4 v15, 0x0

    .line 2847
    .local v15, "atEdge":Z
    if-eqz v17, :cond_2

    .line 2848
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView;->trackMotionScroll(II)Z

    move-result v15

    .line 2852
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 2853
    if-eqz v20, :cond_7

    .line 2856
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v22

    .line 2857
    .local v22, "motionViewRealLeft":I
    if-eqz v15, :cond_6

    .line 2860
    move/from16 v0, v17

    neg-int v3, v0

    sub-int v5, v22, v21

    sub-int v4, v3, v5

    .line 2861
    .local v4, "overscroll":I
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/acloud/ui/view/AbsHListView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/acloud/ui/view/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2862
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 2864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_3

    .line 2865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2869
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getOverScrollMode()I

    move-result v26

    .line 2871
    .local v26, "overscrollMode":I
    if-eqz v26, :cond_4

    .line 2872
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2873
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/acloud/ui/view/AbsHListView;->mDirection:I

    .line 2874
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 2875
    if-lez v28, :cond_b

    .line 2876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2880
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 2890
    .end local v4    # "overscroll":I
    .end local v26    # "overscrollMode":I
    :cond_6
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    .line 2892
    .end local v22    # "motionViewRealLeft":I
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    .line 2957
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    :cond_8
    :goto_3
    return-void

    .end local v17    # "incrementalDeltaX":I
    :cond_9
    move/from16 v17, v16

    .line 2815
    goto/16 :goto_0

    .line 2836
    .restart local v17    # "incrementalDeltaX":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v3

    div-int/lit8 v18, v3, 0x2

    .restart local v18    # "motionIndex":I
    goto/16 :goto_1

    .line 2881
    .restart local v4    # "overscroll":I
    .restart local v15    # "atEdge":Z
    .restart local v20    # "motionView":Landroid/view/View;
    .restart local v21    # "motionViewPrevLeft":I
    .restart local v22    # "motionViewRealLeft":I
    .restart local v26    # "overscrollMode":I
    :cond_b
    if-gez v28, :cond_6

    .line 2882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2886
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    goto :goto_2

    .line 2894
    .end local v4    # "overscroll":I
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    .end local v22    # "motionViewRealLeft":I
    .end local v26    # "overscrollMode":I
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_8

    .line 2895
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 2896
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v25

    .line 2897
    .local v25, "oldScroll":I
    sub-int v24, v25, v17

    .line 2898
    .local v24, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_16

    const/16 v23, 0x1

    .line 2900
    .local v23, "newDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mDirection:I

    if-nez v3, :cond_e

    .line 2901
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mDirection:I

    .line 2904
    :cond_e
    move/from16 v0, v17

    neg-int v6, v0

    .line 2905
    .local v6, "overScrollDistance":I
    if-gez v24, :cond_f

    if-gez v25, :cond_10

    :cond_f
    if-lez v24, :cond_17

    if-gtz v25, :cond_17

    .line 2906
    :cond_10
    move/from16 v0, v25

    neg-int v6, v0

    .line 2907
    add-int v17, v17, v6

    .line 2912
    :goto_5
    if-eqz v6, :cond_13

    .line 2913
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/acloud/ui/view/AbsHListView;->mOverscrollDistance:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Lcom/acloud/ui/view/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2914
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getOverScrollMode()I

    move-result v26

    .line 2915
    .restart local v26    # "overscrollMode":I
    if-eqz v26, :cond_11

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_13

    .line 2916
    :cond_11
    if-lez v28, :cond_18

    .line 2917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2919
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2921
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 2932
    .end local v26    # "overscrollMode":I
    :cond_13
    :goto_6
    if-eqz v17, :cond_15

    .line 2934
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_14

    .line 2935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mViewHelper:Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;->setScrollX(I)V

    .line 2936
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->invalidateParentIfNeeded()V

    .line 2939
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView;->trackMotionScroll(II)Z

    .line 2941
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 2945
    invoke-virtual/range {p0 .. p1}, Lcom/acloud/ui/view/AbsHListView;->findClosestMotionCol(I)I

    move-result v19

    .line 2947
    .local v19, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionCorrection:I

    .line 2948
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int v3, v19, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 2949
    .restart local v20    # "motionView":Landroid/view/View;
    if-eqz v20, :cond_1a

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionViewOriginalLeft:I

    .line 2950
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    .line 2951
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    .line 2953
    .end local v19    # "motionPosition":I
    .end local v20    # "motionView":Landroid/view/View;
    :cond_15
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    .line 2954
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mDirection:I

    goto/16 :goto_3

    .line 2898
    .end local v6    # "overScrollDistance":I
    .end local v23    # "newDirection":I
    :cond_16
    const/16 v23, -0x1

    goto/16 :goto_4

    .line 2909
    .restart local v6    # "overScrollDistance":I
    .restart local v23    # "newDirection":I
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 2922
    .restart local v26    # "overscrollMode":I
    :cond_18
    if-gez v28, :cond_13

    .line 2923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_19

    .line 2925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2927
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    goto/16 :goto_6

    .line 2949
    .end local v26    # "overscrollMode":I
    .restart local v19    # "motionPosition":I
    .restart local v20    # "motionView":Landroid/view/View;
    :cond_1a
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private startScrollIfNeeded(I)Z
    .locals 10
    .param p1, "x"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2774
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    sub-int v0, p1, v6

    .line 2775
    .local v0, "deltaX":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2776
    .local v1, "distance":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v6

    if-eqz v6, :cond_4

    move v4, v8

    .line 2777
    .local v4, "overscroll":Z
    :goto_0
    if-nez v4, :cond_0

    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchSlop:I

    if-le v1, v6, :cond_7

    .line 2778
    :cond_0
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->createScrollingCache()V

    .line 2779
    if-eqz v4, :cond_5

    .line 2780
    const/4 v6, 0x5

    iput v6, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 2781
    iput v7, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionCorrection:I

    .line 2786
    :goto_1
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 2790
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 2791
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2793
    :cond_1
    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 2794
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    iget v9, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2795
    .local v3, "motionView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 2796
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2798
    :cond_2
    invoke-virtual {p0, v8}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    .line 2801
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 2802
    .local v5, "parent":Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 2803
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2805
    :cond_3
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->scrollIfNeeded(I)V

    move v6, v8

    .line 2809
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "motionView":Landroid/view/View;
    .end local v5    # "parent":Landroid/view/ViewParent;
    :goto_2
    return v6

    .end local v4    # "overscroll":Z
    :cond_4
    move v4, v7

    .line 2776
    goto :goto_0

    .line 2783
    .restart local v4    # "overscroll":Z
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 2784
    if-lez v0, :cond_6

    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchSlop:I

    :goto_3
    iput v6, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionCorrection:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_3

    :cond_7
    move v6, v7

    .line 2809
    goto :goto_2
.end method

.method private updateOnScreenCheckedViews()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 984
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    .line 985
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v1

    .line 986
    .local v1, "count":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v6, v8, :cond_0

    const/4 v5, 0x1

    .line 987
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_1

    .line 997
    return-void

    .end local v3    # "i":I
    .end local v5    # "useActivated":Z
    :cond_0
    move v5, v7

    .line 986
    goto :goto_0

    .line 988
    .restart local v3    # "i":I
    .restart local v5    # "useActivated":Z
    :cond_1
    invoke-virtual {p0, v3}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 989
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 991
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_3

    .line 992
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 987
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 993
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_2

    .line 994
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1258
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3635
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v2

    .line 3636
    .local v2, "count":I
    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    .line 3637
    .local v3, "firstPosition":I
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3639
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 3650
    :cond_0
    return-void

    .line 3643
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3644
    invoke-virtual {p0, v4}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3645
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3646
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3648
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3643
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5215
    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5236
    instance-of v0, p1, Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 836
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    .line 837
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1650
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 1651
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 1652
    iget-boolean v7, p0, Lcom/acloud/ui/view/AbsHListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1653
    mul-int/lit8 v1, v0, 0x64

    .line 1655
    .local v1, "extent":I
    invoke-virtual {p0, v6}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1656
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1657
    .local v2, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1658
    .local v5, "width":I
    if-lez v5, :cond_0

    .line 1659
    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    .line 1662
    :cond_0
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1663
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1664
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1665
    if-lez v5, :cond_1

    .line 1666
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    .line 1674
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "width":I
    :cond_1
    :goto_0
    return v1

    .line 1671
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v6

    .line 1674
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1679
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    .line 1680
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 1681
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1682
    iget-boolean v8, p0, Lcom/acloud/ui/view/AbsHListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1683
    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1684
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1685
    .local v4, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1686
    .local v6, "width":I
    if-lez v6, :cond_0

    .line 1687
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    .line 1688
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 1687
    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1703
    .end local v4    # "left":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_0
    :goto_0
    return v7

    .line 1692
    :cond_1
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    .line 1693
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 1694
    const/4 v3, 0x0

    .line 1700
    .local v3, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1695
    .end local v3    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1696
    move v3, v1

    .line 1697
    .restart local v3    # "index":I
    goto :goto_1

    .line 1698
    .end local v3    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3    # "index":I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1709
    iget-boolean v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1710
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1711
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1713
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1718
    :cond_0
    :goto_0
    return v0

    .line 1716
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 4952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 4954
    const/4 v2, 0x0

    .line 4955
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-lt v9, v3, :cond_1

    .line 4992
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 4993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    check-cast v3, Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 4995
    :cond_0
    return-void

    .line 4956
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 4957
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4959
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 4960
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_5

    .line 4962
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 4963
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 4964
    .local v10, "end":I
    const/4 v11, 0x0

    .line 4965
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-lt v0, v10, :cond_3

    .line 4975
    :goto_2
    if-nez v11, :cond_2

    .line 4976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 4977
    add-int/lit8 v9, v9, -0x1

    .line 4978
    move-object/from16 v0, p0

    iget v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    .line 4979
    const/4 v2, 0x1

    .line 4981
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_2

    .line 4982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 4983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    check-cast v3, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    check-cast v4, Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 4955
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 4966
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 4967
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_4

    .line 4968
    const/4 v11, 0x1

    .line 4969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 4970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/support/v4/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_2

    .line 4965
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 4988
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 2473
    new-instance v0, Lcom/acloud/ui/view/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/acloud/ui/view/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2120
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mDrawSelectorOnTop:Z

    .line 2121
    .local v0, "drawSelectorOnTop":Z
    if-nez v0, :cond_0

    .line 2122
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2125
    :cond_0
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2127
    if-eqz v0, :cond_1

    .line 2128
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2134
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 2673
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3446
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3447
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_3

    .line 3448
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v4

    .line 3449
    .local v4, "scrollX":I
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3451
    .local v3, "restoreCount":I
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/acloud/ui/view/AbsHListView;->mGlowPaddingTop:I

    add-int v5, v7, v8

    .line 3452
    .local v5, "topPadding":I
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/acloud/ui/view/AbsHListView;->mGlowPaddingBottom:I

    add-int v0, v7, v8

    .line 3453
    .local v0, "bottomPadding":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int v2, v7, v0

    .line 3456
    .local v2, "height":I
    const/4 v7, 0x0

    iget v8, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3460
    .local v1, "edgeX":I
    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3461
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getHeight()I

    move-result v7

    neg-int v7, v7

    add-int/2addr v7, v5

    int-to-float v7, v7

    int-to-float v8, v1

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3462
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7, v2, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 3464
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3466
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 3468
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3470
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "height":I
    .end local v3    # "restoreCount":I
    .end local v5    # "topPadding":I
    :cond_1
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3472
    .restart local v3    # "restoreCount":I
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/acloud/ui/view/AbsHListView;->mGlowPaddingTop:I

    add-int v5, v7, v8

    .line 3473
    .restart local v5    # "topPadding":I
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/acloud/ui/view/AbsHListView;->mGlowPaddingBottom:I

    add-int v0, v7, v8

    .line 3474
    .restart local v0    # "bottomPadding":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int v2, v7, v0

    .line 3475
    .restart local v2    # "height":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v6

    .line 3477
    .local v6, "width":I
    iget v7, p0, Lcom/acloud/ui/view/AbsHListView;->mLastPositionDistanceGuess:I

    add-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3478
    .restart local v1    # "edgeX":I
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3479
    neg-int v7, v5

    int-to-float v7, v7

    neg-int v8, v1

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3481
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7, v2, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 3483
    iget-object v7, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3486
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 3488
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3491
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "scrollX":I
    .end local v5    # "topPadding":I
    .end local v6    # "width":I
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2302
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView;->drawableStateChanged()V

    .line 2303
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->updateSelectorState()V

    .line 2304
    return-void
.end method

.method protected abstract fillGap(Z)V
.end method

.method protected findClosestMotionCol(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 4803
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 4804
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 4809
    :cond_0
    :goto_0
    return v1

    .line 4808
    :cond_1
    invoke-virtual {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->findMotionCol(I)I

    move-result v1

    .line 4809
    .local v1, "motionCol":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method protected abstract findMotionCol(I)I
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 5220
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    const/4 v1, -0x2

    .line 5221
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 5220
    invoke-direct {v0, v1, v2, v3}, Lcom/acloud/ui/view/AbsHListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5226
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/acloud/ui/view/AbsHListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/acloud/ui/view/AbsHListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5231
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/acloud/ui/view/AbsHListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5296
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 811
    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 812
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 823
    :cond_1
    return-object v3

    .line 815
    :cond_2
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 816
    .local v2, "idStates":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 817
    .local v0, "count":I
    new-array v3, v0, [J

    .line 819
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 820
    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 819
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 783
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 784
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    .line 787
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    .line 801
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1005
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1245
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1248
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1249
    invoke-virtual {p0, v0, p1}, Lcom/acloud/ui/view/AbsHListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1254
    :goto_0
    return-void

    .line 1252
    :cond_0
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected getFooterViewsCount()I
    .locals 1

    .prologue
    .line 4746
    const/4 v0, 0x0

    return v0
.end method

.method protected getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 4736
    const/4 v0, 0x0

    return v0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 5

    .prologue
    .line 3426
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mHorizontalScrollFactor:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 3428
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3429
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/acloud/uibase/R$attr;->hlv_listPreferredItemWidth:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 3431
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 3432
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mHorizontalScrollFactor:F

    .line 3438
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "success":Z
    :cond_0
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mHorizontalScrollFactor:F

    return v2

    .line 3435
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    .restart local v1    # "success":Z
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Expected theme to define hlv_listPreferredItemWidth."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 1

    .prologue
    .line 1082
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1723
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 1724
    .local v0, "count":I
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 1725
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 1734
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 1728
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1729
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1732
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1733
    .local v3, "left":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1734
    .local v2, "fadeLength":F
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingLeft()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingLeft()I

    move-result v4

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1740
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 1741
    .local v0, "count":I
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 1742
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 1752
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 1745
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v5, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1746
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1749
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1750
    .local v3, "right":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v4

    .line 1751
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 1752
    .local v2, "fadeLength":F
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    .line 1753
    sub-int v5, v3, v4

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1852
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1853
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1855
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 5264
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCacheColorHint:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 5259
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5002
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    .line 5003
    .local v1, "count":I
    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mLastHandledItemCount:I

    .line 5004
    .local v3, "lastHandledItemCount":I
    iget v10, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mLastHandledItemCount:I

    .line 5006
    iget v10, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5007
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->confirmCheckedPositionsById()V

    .line 5011
    :cond_0
    iget-object v10, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-virtual {v10}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->clearTransientStateViews()V

    .line 5013
    if-lez v1, :cond_e

    .line 5018
    iget-boolean v10, p0, Lcom/acloud/ui/view/AbsHListView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 5020
    iput-boolean v12, p0, Lcom/acloud/ui/view/AbsHListView;->mNeedSync:Z

    .line 5021
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    .line 5023
    iget v10, p0, Lcom/acloud/ui/view/AbsHListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 5024
    iput v8, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 5140
    :cond_1
    :goto_0
    return-void

    .line 5026
    :cond_2
    iget v10, p0, Lcom/acloud/ui/view/AbsHListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 5027
    iget-boolean v10, p0, Lcom/acloud/ui/view/AbsHListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 5028
    iput-boolean v12, p0, Lcom/acloud/ui/view/AbsHListView;->mForceTranscriptScroll:Z

    .line 5029
    iput v8, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    goto :goto_0

    .line 5032
    :cond_3
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 5033
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    .line 5034
    .local v5, "listRight":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5035
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 5036
    .local v4, "lastRight":I
    :goto_1
    iget v10, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_5

    .line 5037
    if-gt v4, v5, :cond_5

    .line 5038
    iput v8, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    goto :goto_0

    .end local v4    # "lastRight":I
    :cond_4
    move v4, v5

    .line 5035
    goto :goto_1

    .line 5043
    .restart local v4    # "lastRight":I
    :cond_5
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->awakenScrollBars()Z

    .line 5046
    .end local v0    # "childCount":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    .end local v5    # "listRight":I
    :cond_6
    iget v10, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 5094
    :cond_7
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 5096
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getSelectedItemPosition()I

    move-result v6

    .line 5099
    .local v6, "newPos":I
    if-lt v6, v1, :cond_8

    .line 5100
    add-int/lit8 v6, v1, -0x1

    .line 5102
    :cond_8
    if-gez v6, :cond_9

    .line 5103
    const/4 v6, 0x0

    .line 5107
    :cond_9
    invoke-virtual {p0, v6, v9}, Lcom/acloud/ui/view/AbsHListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5109
    .local v7, "selectablePos":I
    if-ltz v7, :cond_c

    .line 5110
    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 5048
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5053
    iput v14, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 5054
    iget v8, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncPosition:I

    goto :goto_0

    .line 5060
    :cond_a
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->findSyncPosition()I

    move-result v6

    .line 5061
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_7

    .line 5063
    invoke-virtual {p0, v6, v9}, Lcom/acloud/ui/view/AbsHListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5064
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_7

    .line 5066
    iput v6, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncPosition:I

    .line 5068
    iget-wide v8, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncWidth:J

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 5071
    iput v14, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 5079
    :goto_2
    invoke-virtual {p0, v6}, Lcom/acloud/ui/view/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5075
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    goto :goto_2

    .line 5087
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 5088
    iget v8, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 5114
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_c
    invoke-virtual {p0, v6, v12}, Lcom/acloud/ui/view/AbsHListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5115
    if-ltz v7, :cond_e

    .line 5116
    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5123
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_d
    iget v10, p0, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    if-gez v10, :cond_1

    .line 5131
    :cond_e
    iget-boolean v10, p0, Lcom/acloud/ui/view/AbsHListView;->mStackFromRight:Z

    if-eqz v10, :cond_f

    :goto_3
    iput v8, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 5132
    iput v13, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    .line 5133
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedColId:J

    .line 5134
    iput v13, p0, Lcom/acloud/ui/view/AbsHListView;->mNextSelectedPosition:I

    .line 5135
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/acloud/ui/view/AbsHListView;->mNextSelectedColId:J

    .line 5136
    iput-boolean v12, p0, Lcom/acloud/ui/view/AbsHListView;->mNeedSync:Z

    .line 5137
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    .line 5138
    iput v13, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorPosition:I

    .line 5139
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    .line 5131
    goto :goto_3

    .line 5046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4759
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 4760
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4761
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    iput v0, p0, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    .line 4763
    :cond_0
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 4764
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    .line 4766
    :cond_1
    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->setSelectedPositionInt(I)V

    .line 4767
    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 4768
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedLeft:I

    .line 4770
    :cond_2
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mViewHelper:Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0}, Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2962
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2964
    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 4816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    .line 4817
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->rememberSyncState()V

    .line 4818
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->requestLayout()V

    .line 4819
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 4820
    return-void
.end method

.method protected invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1132
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOnScrollListener:Lcom/acloud/ui/view/AbsHListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOnScrollListener:Lcom/acloud/ui/view/AbsHListView$OnScrollListener;

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/acloud/ui/view/AbsHListView$OnScrollListener;->onScroll(Lcom/acloud/ui/view/AbsHListView;III)V

    .line 1135
    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/acloud/ui/view/AbsHListView;->onScrollChanged(IIII)V

    .line 1136
    return-void
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 768
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 772
    :cond_0
    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1219
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromRight()Z
    .locals 1

    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mStackFromRight:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2349
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView;->jumpDrawablesToCurrentState()V

    .line 2350
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2351
    :cond_0
    return-void
.end method

.method protected keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2246
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2281
    :cond_0
    :goto_0
    return-void

    .line 2250
    :cond_1
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2251
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2252
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2253
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2255
    iget v5, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2257
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2258
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2259
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2261
    :cond_3
    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 2263
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isLongClickable()Z

    move-result v1

    .line 2264
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2265
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 2266
    if-eqz v1, :cond_6

    .line 2267
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 2268
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    .line 2267
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2273
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 2274
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForKeyLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 2275
    new-instance v5, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;-><init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;)V

    iput-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForKeyLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;

    .line 2277
    :cond_5
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForKeyLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2278
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForKeyLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/acloud/ui/view/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2270
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1813
    return-void
.end method

.method protected obtainView(I[Z)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1922
    aput-boolean v5, p2, v5

    .line 1925
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-virtual {v4, p1}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v2

    .line 1926
    .local v2, "scrapView":Landroid/view/View;
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 1990
    :cond_0
    :goto_0
    return-object v0

    .line 1930
    :cond_1
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-virtual {v4, p1}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 1933
    if-eqz v2, :cond_6

    .line 1934
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1936
    .local v0, "child":Landroid/view/View;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_2

    .line 1937
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1938
    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1942
    :cond_2
    if-eq v0, v2, :cond_5

    .line 1943
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-virtual {v4, v2, p1}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1944
    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mCacheColorHint:I

    if-eqz v4, :cond_3

    .line 1945
    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1965
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_4

    .line 1966
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1968
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_8

    .line 1969
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    .line 1975
    .local v1, "lp":Lcom/acloud/ui/view/AbsHListView$LayoutParams;
    :goto_2
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/acloud/ui/view/AbsHListView$LayoutParams;->itemId:J

    .line 1976
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    .end local v1    # "lp":Lcom/acloud/ui/view/AbsHListView$LayoutParams;
    .end local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1980
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mAccessibilityDelegate:Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;

    if-nez v4, :cond_0

    .line 1981
    new-instance v4, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;

    invoke-direct {v4, p0}, Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mAccessibilityDelegate:Lcom/acloud/ui/view/AbsHListView$ListItemAccessibilityDelegate;

    goto :goto_0

    .line 1948
    :cond_5
    aput-boolean v6, p2, v5

    .line 1949
    invoke-virtual {v0}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_1

    .line 1952
    .end local v0    # "child":Landroid/view/View;
    :cond_6
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1954
    .restart local v0    # "child":Landroid/view/View;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_7

    .line 1955
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 1956
    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1960
    :cond_7
    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mCacheColorHint:I

    if-eqz v4, :cond_3

    .line 1961
    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_1

    .line 1970
    .restart local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    invoke-virtual {p0, v3}, Lcom/acloud/ui/view/AbsHListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1971
    invoke-virtual {p0, v3}, Lcom/acloud/ui/view/AbsHListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    .line 1972
    .restart local v1    # "lp":Lcom/acloud/ui/view/AbsHListView$LayoutParams;
    goto :goto_2

    .end local v1    # "lp":Lcom/acloud/ui/view/AbsHListView$LayoutParams;
    :cond_9
    move-object v1, v3

    .line 1973
    check-cast v1, Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    .restart local v1    # "lp":Lcom/acloud/ui/view/AbsHListView$LayoutParams;
    goto :goto_2
.end method

.method public offsetChildrenLeftAndRight(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 4721
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 4723
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 4727
    return-void

    .line 4724
    :cond_0
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4725
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4723
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2355
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView;->onAttachedToWindow()V

    .line 2357
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2358
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2360
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mDataSetObserver:Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;

    if-nez v1, :cond_0

    .line 2361
    new-instance v1, Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mDataSetObserver:Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;

    .line 2362
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mDataSetObserver:Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2365
    iput-boolean v3, p0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    .line 2366
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mOldItemCount:I

    .line 2367
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    .line 2369
    :cond_0
    iput-boolean v3, p0, Lcom/acloud/ui/view/AbsHListView;->mIsAttached:Z

    .line 2370
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 2310
    iget-boolean v4, p0, Lcom/acloud/ui/view/AbsHListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2312
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2338
    :cond_0
    :goto_0
    return-object v3

    .line 2318
    :cond_1
    sget-object v4, Lcom/acloud/ui/view/AbsHListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2323
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/acloud/ui/view/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2324
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 2325
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-gez v2, :cond_2

    .line 2333
    :goto_2
    if-ltz v0, :cond_0

    .line 2334
    add-int/lit8 v4, v0, 0x1

    .line 2335
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 2334
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2326
    :cond_2
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2327
    move v0, v2

    .line 2328
    goto :goto_2

    .line 2325
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 5207
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2374
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView;->onDetachedFromWindow()V

    .line 2379
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-virtual {v1}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->clear()V

    .line 2381
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2382
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2384
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mDataSetObserver:Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 2385
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mDataSetObserver:Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2386
    iput-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mDataSetObserver:Lcom/acloud/ui/view/AbsHListView$AdapterDataSetObserver;

    .line 2389
    :cond_0
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    if-eqz v1, :cond_1

    .line 2390
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2393
    :cond_1
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    if-eqz v1, :cond_2

    .line 2394
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-virtual {v1}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->stop()V

    .line 2397
    :cond_2
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 2398
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2401
    :cond_3
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mPerformClick:Lcom/acloud/ui/view/AbsHListView$PerformClick;

    if-eqz v1, :cond_4

    .line 2402
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mPerformClick:Lcom/acloud/ui/view/AbsHListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2405
    :cond_4
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 2406
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2407
    iput-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 2409
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/acloud/ui/view/AbsHListView;->mIsAttached:Z

    .line 2410
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1608
    invoke-super {p0, p1, p2, p3}, Lcom/acloud/ui/view/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1609
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1610
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    .line 1614
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    iput v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOldItemCount:I

    .line 1615
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    .line 1617
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->resurrectSelection()Z

    .line 1619
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 3399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 3400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3414
    :cond_0
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 3402
    :pswitch_0
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3403
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 3404
    .local v1, "hscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 3405
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 3406
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Lcom/acloud/ui/view/AbsHListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3407
    const/4 v2, 0x1

    goto :goto_0

    .line 3400
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1160
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1161
    const-class v0, Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1162
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1168
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1170
    const-class v0, Lcom/acloud/ui/view/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1171
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1173
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1175
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1176
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1179
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 3529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3532
    .local v0, "action":I
    iget-object v9, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    if-eqz v9, :cond_0

    .line 3533
    iget-object v9, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-virtual {v9}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->stop()V

    .line 3536
    :cond_0
    iget-boolean v9, p0, Lcom/acloud/ui/view/AbsHListView;->mIsAttached:Z

    if-nez v9, :cond_2

    .line 3611
    :cond_1
    :goto_0
    return v7

    .line 3544
    :cond_2
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3546
    :pswitch_1
    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3547
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_3

    const/4 v9, 0x5

    if-ne v3, v9, :cond_4

    .line 3548
    :cond_3
    iput v7, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionCorrection:I

    move v7, v8

    .line 3549
    goto :goto_0

    .line 3552
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 3553
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 3554
    .local v6, "y":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 3556
    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->findMotionCol(I)I

    move-result v1

    .line 3557
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_5

    if-ltz v1, :cond_5

    .line 3560
    iget v9, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3561
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionViewOriginalLeft:I

    .line 3562
    iput v5, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    .line 3563
    iput v6, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionY:I

    .line 3564
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    .line 3565
    iput v7, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3566
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->clearScrollingCache()V

    .line 3568
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    const/high16 v9, -0x80000000

    iput v9, p0, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    .line 3569
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->initOrResetVelocityTracker()V

    .line 3570
    iget-object v9, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3571
    if-ne v3, v11, :cond_1

    move v7, v8

    .line 3572
    goto :goto_0

    .line 3578
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 3580
    :pswitch_3
    iget v9, p0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 3581
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_6

    .line 3582
    const/4 v2, 0x0

    .line 3583
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 3585
    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 3586
    .restart local v5    # "x":I
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->initVelocityTrackerIfNotExists()V

    .line 3587
    iget-object v9, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3588
    invoke-direct {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->startScrollIfNeeded(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 3589
    goto :goto_0

    .line 3598
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    :pswitch_4
    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3599
    iput v10, p0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 3600
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->recycleVelocityTracker()V

    .line 3601
    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 3606
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 3544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3578
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2641
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 2646
    sparse-switch p1, :sswitch_data_0

    .line 2666
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/acloud/ui/view/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2649
    :sswitch_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2652
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2653
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 2654
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2656
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2657
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2658
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedColId:J

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/acloud/ui/view/AbsHListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2659
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 2661
    :cond_2
    invoke-virtual {p0, v6}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    goto :goto_0

    .line 2646
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1783
    invoke-super/range {p0 .. p5}, Lcom/acloud/ui/view/AdapterView;->onLayout(ZIIII)V

    .line 1784
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/acloud/ui/view/AbsHListView;->mInLayout:Z

    .line 1785
    if-eqz p1, :cond_0

    .line 1786
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 1787
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1790
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-virtual {v2}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->markChildrenDirty()V

    .line 1793
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->layoutChildren()V

    .line 1794
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/acloud/ui/view/AbsHListView;->mInLayout:Z

    .line 1796
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mOverscrollMax:I

    .line 1797
    return-void

    .line 1788
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 1787
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 1759
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 1760
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->useDefaultSelector()V

    .line 1762
    :cond_0
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    .line 1763
    .local v3, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionLeftPadding:I

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 1764
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionTopPadding:I

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 1765
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionRightPadding:I

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 1766
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionBottomPadding:I

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 1769
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 1770
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 1771
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 1772
    .local v4, "listRight":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1773
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1774
    .local v2, "lastRight":I
    :goto_0
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/acloud/ui/view/AbsHListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v2, v4, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/acloud/ui/view/AbsHListView;->mForceTranscriptScroll:Z

    .line 1776
    .end local v0    # "childCount":I
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v4    # "listRight":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v1    # "lastChild":Landroid/view/View;
    .restart local v4    # "listRight":I
    :cond_2
    move v2, v4

    .line 1773
    goto :goto_0

    .line 1774
    .restart local v2    # "lastRight":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 3387
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3388
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView;->onScrollChanged(IIII)V

    .line 3389
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mViewHelper:Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, p1}, Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;->setScrollX(I)V

    .line 3390
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->invalidateParentIfNeeded()V

    .line 3392
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->awakenScrollBars()Z

    .line 3394
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1555
    move-object v0, p1

    check-cast v0, Lcom/acloud/ui/view/AbsHListView$SavedState;

    .line 1557
    .local v0, "ss":Lcom/acloud/ui/view/AbsHListView$SavedState;
    invoke-virtual {v0}, Lcom/acloud/ui/view/AbsHListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/acloud/ui/view/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1558
    iput-boolean v4, p0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    .line 1560
    iget v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->width:I

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncWidth:J

    .line 1562
    iget-wide v2, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    .line 1563
    iput-boolean v4, p0, Lcom/acloud/ui/view/AbsHListView;->mNeedSync:Z

    .line 1564
    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    .line 1565
    iget-wide v2, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncColId:J

    .line 1566
    iget v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->position:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncPosition:I

    .line 1567
    iget v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->viewLeft:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSpecificLeft:I

    .line 1568
    const/4 v1, 0x0

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncMode:I

    .line 1587
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkState:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v1, :cond_1

    .line 1588
    iget-object v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkState:Landroid/support/v4/util/SparseArrayCompat;

    iput-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    .line 1591
    :cond_1
    iget-object v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1592
    iget-object v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    iput-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 1595
    :cond_2
    iget v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkedItemCount:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    .line 1597
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 1598
    iget-boolean v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1599
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    check-cast v1, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    .line 1603
    :cond_3
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->requestLayout()V

    .line 1604
    return-void

    .line 1569
    :cond_4
    iget-wide v2, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 1570
    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->setSelectedPositionInt(I)V

    .line 1572
    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 1573
    iput v5, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorPosition:I

    .line 1574
    iput-boolean v4, p0, Lcom/acloud/ui/view/AbsHListView;->mNeedSync:Z

    .line 1575
    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    .line 1576
    iget-wide v2, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->firstId:J

    iput-wide v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncColId:J

    .line 1577
    iget v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->position:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncPosition:I

    .line 1578
    iget v1, v0, Lcom/acloud/ui/view/AbsHListView$SavedState;->viewLeft:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSpecificLeft:I

    .line 1579
    iput v4, p0, Lcom/acloud/ui/view/AbsHListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 14

    .prologue
    .line 1468
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 1470
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Lcom/acloud/ui/view/AbsHListView$SavedState;

    invoke-direct {v8, v9}, Lcom/acloud/ui/view/AbsHListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1473
    .local v8, "ss":Lcom/acloud/ui/view/AbsHListView$SavedState;
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    if-eqz v11, :cond_0

    .line 1475
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget-wide v12, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->selectedId:J

    iput-wide v12, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->selectedId:J

    .line 1476
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget-wide v12, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->firstId:J

    iput-wide v12, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->firstId:J

    .line 1477
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget v11, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->viewLeft:I

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->viewLeft:I

    .line 1478
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget v11, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->position:I

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->position:I

    .line 1479
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget v11, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->width:I

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->width:I

    .line 1480
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget-object v11, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->filter:Ljava/lang/String;

    iput-object v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->filter:Ljava/lang/String;

    .line 1481
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget-boolean v11, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->inActionMode:Z

    iput-boolean v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->inActionMode:Z

    .line 1482
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget v11, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkedItemCount:I

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkedItemCount:I

    .line 1483
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget-object v11, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkState:Landroid/support/v4/util/SparseArrayCompat;

    iput-object v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkState:Landroid/support/v4/util/SparseArrayCompat;

    .line 1484
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    iget-object v11, v11, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    iput-object v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    .line 1547
    :goto_0
    return-object v8

    .line 1488
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_3

    iget v11, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    if-lez v11, :cond_3

    const/4 v3, 0x1

    .line 1489
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getSelectedItemId()J

    move-result-wide v6

    .line 1490
    .local v6, "selectedId":J
    iput-wide v6, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->selectedId:J

    .line 1491
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v11

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->width:I

    .line 1493
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-ltz v11, :cond_4

    .line 1495
    iget v11, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedLeft:I

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->viewLeft:I

    .line 1496
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getSelectedItemPosition()I

    move-result v11

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->position:I

    .line 1497
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->firstId:J

    .line 1524
    :goto_2
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->filter:Ljava/lang/String;

    .line 1525
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_7

    iget v11, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    .line 1526
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    .line 1525
    :goto_3
    iput-boolean v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->inActionMode:Z

    .line 1528
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v11, :cond_1

    .line 1531
    :try_start_0
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    iput-object v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkState:Landroid/support/v4/util/SparseArrayCompat;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    :cond_1
    :goto_4
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v11, :cond_2

    .line 1538
    new-instance v5, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v5}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 1539
    .local v5, "idState":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v11}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 1540
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-lt v4, v0, :cond_8

    .line 1543
    iput-object v5, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    .line 1545
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_2
    iget v11, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkedItemCount:I

    goto :goto_0

    .line 1488
    .end local v3    # "haveChildren":Z
    .end local v6    # "selectedId":J
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1499
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_4
    if-eqz v3, :cond_6

    iget v11, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    if-lez v11, :cond_6

    .line 1509
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1510
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->viewLeft:I

    .line 1511
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    .line 1512
    .local v2, "firstPos":I
    iget v11, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    if-lt v2, v11, :cond_5

    .line 1513
    iget v11, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    add-int/lit8 v2, v11, -0x1

    .line 1515
    :cond_5
    iput v2, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->position:I

    .line 1516
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->firstId:J

    goto :goto_2

    .line 1518
    .end local v2    # "firstPos":I
    .end local v10    # "v":Landroid/view/View;
    :cond_6
    const/4 v11, 0x0

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->viewLeft:I

    .line 1519
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->firstId:J

    .line 1520
    const/4 v11, 0x0

    iput v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->position:I

    goto :goto_2

    .line 1526
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 1532
    :catch_0
    move-exception v1

    .line 1533
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 1534
    new-instance v11, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v11}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v11, v8, Lcom/acloud/ui/view/AbsHListView$SavedState;->checkState:Landroid/support/v4/util/SparseArrayCompat;

    goto :goto_4

    .line 1541
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v11, v4}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v11, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v11, v4}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v5, v12, v13, v11}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1540
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2155
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    .line 2157
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->rememberSyncState()V

    .line 2159
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 3022
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->isEnabled()Z

    move-result v25

    if-nez v25, :cond_1

    .line 3025
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->isClickable()Z

    move-result v25

    if-nez v25, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->isLongClickable()Z

    move-result v25

    if-nez v25, :cond_0

    const/16 v25, 0x0

    .line 3382
    :goto_0
    return v25

    .line 3025
    :cond_0
    const/16 v25, 0x1

    goto :goto_0

    .line 3028
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 3029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->stop()V

    .line 3032
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/acloud/ui/view/AbsHListView;->mIsAttached:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 3037
    const/16 v25, 0x0

    goto :goto_0

    .line 3040
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 3044
    .local v4, "action":I
    invoke-direct/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->initVelocityTrackerIfNotExists()V

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3047
    and-int/lit16 v0, v4, 0xff

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 3382
    :cond_4
    :goto_1
    :pswitch_0
    const/16 v25, 0x1

    goto :goto_0

    .line 3049
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_1

    .line 3065
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 3066
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 3067
    .local v23, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3068
    .local v24, "y":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView;->pointToPosition(II)I

    move-result v17

    .line 3069
    .local v17, "motionPosition":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    move/from16 v25, v0

    if-nez v25, :cond_6

    .line 3070
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    if-ltz v17, :cond_9

    .line 3071
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v25

    check-cast v25, Landroid/widget/ListAdapter;

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 3075
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    .line 3078
    new-instance v25, Lcom/acloud/ui/view/AbsHListView$CheckForTap;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/acloud/ui/view/AbsHListView$CheckForTap;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 3080
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/acloud/ui/view/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3093
    :cond_6
    :goto_2
    if-ltz v17, :cond_7

    .line 3095
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3096
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionViewOriginalLeft:I

    .line 3098
    .end local v21    # "v":Landroid/view/View;
    :cond_7
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    .line 3099
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionY:I

    .line 3100
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    .line 3101
    const/high16 v25, -0x80000000

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    .line 3106
    .end local v17    # "motionPosition":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/acloud/ui/view/AbsHListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 3107
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    if-nez v25, :cond_4

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3051
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->endFling()V

    .line 3052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->stop()V

    .line 3055
    :cond_8
    const/16 v25, 0x5

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3056
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionY:I

    .line 3057
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    .line 3058
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionCorrection:I

    .line 3059
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 3060
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mDirection:I

    goto/16 :goto_3

    .line 3082
    .restart local v17    # "motionPosition":I
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 3084
    invoke-direct/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->createScrollingCache()V

    .line 3085
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3086
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionCorrection:I

    .line 3087
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->findMotionCol(I)I

    move-result v17

    .line 3088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    .line 3115
    .end local v17    # "motionPosition":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    .line 3116
    .local v20, "pointerIndex":I
    const/16 v25, -0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 3117
    const/16 v20, 0x0

    .line 3118
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 3120
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 3122
    .restart local v23    # "x":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 3125
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->layoutChildren()V

    .line 3128
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_1

    .line 3134
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 3138
    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->scrollIfNeeded(I)V

    goto/16 :goto_1

    .line 3145
    .end local v20    # "pointerIndex":I
    .end local v23    # "x":I
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_3

    .line 3286
    :cond_c
    :goto_4
    :pswitch_8
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 3288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    .line 3289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 3290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 3294
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 3296
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 3297
    .local v11, "handler":Landroid/os/Handler;
    if-eqz v11, :cond_e

    .line 3298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3301
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->recycleVelocityTracker()V

    .line 3303
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 3149
    .end local v11    # "handler":Landroid/os/Handler;
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    move/from16 v17, v0

    .line 3150
    .restart local v17    # "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3152
    .local v5, "child":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    .line 3153
    .local v23, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v23, v25

    if-lez v25, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v25, v23, v25

    if-gez v25, :cond_15

    const/4 v13, 0x1

    .line 3155
    .local v13, "inList":Z
    :goto_5
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v25

    if-nez v25, :cond_19

    if-eqz v13, :cond_19

    .line 3156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 3157
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3160
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPerformClick:Lcom/acloud/ui/view/AbsHListView$PerformClick;

    move-object/from16 v25, v0

    if-nez v25, :cond_10

    .line 3161
    new-instance v25, Lcom/acloud/ui/view/AbsHListView$PerformClick;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView$PerformClick;-><init>(Lcom/acloud/ui/view/AbsHListView;Lcom/acloud/ui/view/AbsHListView$PerformClick;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/acloud/ui/view/AbsHListView;->mPerformClick:Lcom/acloud/ui/view/AbsHListView$PerformClick;

    .line 3164
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPerformClick:Lcom/acloud/ui/view/AbsHListView$PerformClick;

    move-object/from16 v19, v0

    .line 3165
    .local v19, "performClick":Lcom/acloud/ui/view/AbsHListView$PerformClick;
    move/from16 v0, v17

    move-object/from16 v1, v19

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView$PerformClick;->mClickMotionPosition:I

    .line 3166
    invoke-virtual/range {v19 .. v19}, Lcom/acloud/ui/view/AbsHListView$PerformClick;->rememberWindowAttachCount()V

    .line 3168
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    .line 3170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 3171
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 3172
    .restart local v11    # "handler":Landroid/os/Handler;
    if-eqz v11, :cond_12

    .line 3173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    if-nez v25, :cond_16

    .line 3174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    .line 3173
    :goto_6
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3176
    :cond_12
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 3178
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    move/from16 v25, v0

    if-nez v25, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 3179
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->setSelectedPositionInt(I)V

    .line 3181
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->layoutChildren()V

    .line 3182
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/acloud/ui/view/AbsHListView;->positionSelector(ILandroid/view/View;)V

    .line 3184
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 3185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    .line 3186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3187
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_13

    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v25, v0

    if-eqz v25, :cond_13

    .line 3188
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3191
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    .line 3192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3194
    :cond_14
    new-instance v25, Lcom/acloud/ui/view/AbsHListView$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Lcom/acloud/ui/view/AbsHListView$1;-><init>(Lcom/acloud/ui/view/AbsHListView;Landroid/view/View;Lcom/acloud/ui/view/AbsHListView$PerformClick;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    .line 3207
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 3206
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/acloud/ui/view/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3212
    :goto_7
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 3153
    .end local v11    # "handler":Landroid/os/Handler;
    .end local v13    # "inList":Z
    .end local v19    # "performClick":Lcom/acloud/ui/view/AbsHListView$PerformClick;
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 3174
    .restart local v11    # "handler":Landroid/os/Handler;
    .restart local v13    # "inList":Z
    .restart local v19    # "performClick":Lcom/acloud/ui/view/AbsHListView$PerformClick;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    move-object/from16 v25, v0

    goto/16 :goto_6

    .line 3209
    :cond_17
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3210
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->updateSelectorState()V

    goto :goto_7

    .line 3213
    .end local v11    # "handler":Landroid/os/Handler;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    move/from16 v25, v0

    if-nez v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 3214
    invoke-virtual/range {v19 .. v19}, Lcom/acloud/ui/view/AbsHListView$PerformClick;->run()V

    .line 3217
    .end local v19    # "performClick":Lcom/acloud/ui/view/AbsHListView$PerformClick;
    :cond_19
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3218
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->updateSelectorState()V

    goto/16 :goto_4

    .line 3221
    .end local v5    # "child":Landroid/view/View;
    .end local v13    # "inList":Z
    .end local v17    # "motionPosition":I
    .end local v23    # "x":F
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v6

    .line 3222
    .local v6, "childCount":I
    if-lez v6, :cond_20

    .line 3223
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 3224
    .local v10, "firstChildLeft":I
    add-int/lit8 v25, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v16

    .line 3225
    .local v16, "lastChildRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 3226
    .local v7, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v8, v25, v26

    .line 3227
    .local v8, "contentRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v25, v0

    if-nez v25, :cond_1a

    if-lt v10, v7, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1a

    .line 3228
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v25

    sub-int v25, v25, v8

    move/from16 v0, v16

    move/from16 v1, v25

    if-gt v0, v1, :cond_1a

    .line 3229
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3230
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3232
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    .line 3233
    .local v22, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v25, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMaximumVelocity:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3235
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mVelocityScale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v15, v0

    .line 3240
    .local v15, "initialVelocity":I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMinimumVelocity:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1e

    .line 3242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v25, v0

    if-nez v25, :cond_1b

    .line 3243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mOverscrollDistance:I

    move/from16 v25, v0

    sub-int v25, v7, v25

    move/from16 v0, v25

    if-eq v10, v0, :cond_1e

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 3244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mOverscrollDistance:I

    move/from16 v25, v0

    add-int v25, v25, v8

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_1e

    .line 3245
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    if-nez v25, :cond_1d

    .line 3246
    new-instance v25, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    .line 3248
    :cond_1d
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    .line 3250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    neg-int v0, v15

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 3252
    :cond_1e
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3253
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 3255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->endFling()V

    .line 3257
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->stop()V

    goto/16 :goto_4

    .line 3263
    .end local v7    # "contentLeft":I
    .end local v8    # "contentRight":I
    .end local v10    # "firstChildLeft":I
    .end local v15    # "initialVelocity":I
    .end local v16    # "lastChildRight":I
    .end local v22    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_20
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3264
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3269
    .end local v6    # "childCount":I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    if-nez v25, :cond_21

    .line 3270
    new-instance v25, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    .line 3272
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    .line 3273
    .restart local v22    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v25, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMaximumVelocity:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v15, v0

    .line 3276
    .restart local v15    # "initialVelocity":I
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    .line 3277
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMinimumVelocity:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_22

    .line 3278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    neg-int v0, v15

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_4

    .line 3280
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_4

    .line 3308
    .end local v15    # "initialVelocity":I
    .end local v22    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_4

    .line 3321
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 3322
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->setPressed(Z)V

    .line 3323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3324
    .local v18, "motionView":Landroid/view/View;
    if-eqz v18, :cond_23

    .line 3325
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3327
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->clearScrollingCache()V

    .line 3329
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 3330
    .restart local v11    # "handler":Landroid/os/Handler;
    if-eqz v11, :cond_24

    .line 3331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPendingCheckForLongPress:Lcom/acloud/ui/view/AbsHListView$CheckForLongPress;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3334
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->recycleVelocityTracker()V

    .line 3337
    .end local v11    # "handler":Landroid/os/Handler;
    .end local v18    # "motionView":Landroid/view/View;
    :goto_8
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    if-eqz v25, :cond_25

    .line 3338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 3339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 3341
    :cond_25
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 3310
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    if-nez v25, :cond_26

    .line 3311
    new-instance v25, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    .line 3313
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->startSpringback()V

    goto :goto_8

    .line 3346
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/acloud/ui/view/AbsHListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    move/from16 v23, v0

    .line 3348
    .local v23, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionY:I

    move/from16 v24, v0

    .line 3349
    .restart local v24    # "y":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView;->pointToPosition(II)I

    move-result v17

    .line 3350
    .restart local v17    # "motionPosition":I
    if-ltz v17, :cond_27

    .line 3352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3353
    .restart local v21    # "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionViewOriginalLeft:I

    .line 3354
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    .line 3356
    .end local v21    # "v":Landroid/view/View;
    :cond_27
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    goto/16 :goto_1

    .line 3362
    .end local v17    # "motionPosition":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 3363
    .local v14, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 3364
    .local v12, "id":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 3365
    .restart local v23    # "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3366
    .restart local v24    # "y":I
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionCorrection:I

    .line 3367
    move-object/from16 v0, p0

    iput v12, v0, Lcom/acloud/ui/view/AbsHListView;->mActivePointerId:I

    .line 3368
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionX:I

    .line 3369
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionY:I

    .line 3370
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView;->pointToPosition(II)I

    move-result v17

    .line 3371
    .restart local v17    # "motionPosition":I
    if-ltz v17, :cond_28

    .line 3373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3374
    .restart local v21    # "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionViewOriginalLeft:I

    .line 3375
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionPosition:I

    .line 3377
    .end local v21    # "v":Landroid/view/View;
    :cond_28
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLastX:I

    goto/16 :goto_1

    .line 3047
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 3049
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    .line 3128
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 3145
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 3308
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 3
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 2968
    if-eqz p1, :cond_2

    .line 2970
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->hideSelector()V

    .line 2974
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2977
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->layoutChildren()V

    .line 2979
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->updateSelectorState()V

    .line 2997
    :cond_1
    :goto_0
    return-void

    .line 2981
    :cond_2
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 2982
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2983
    :cond_3
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 2984
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->endFling()V

    .line 2986
    :cond_4
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 2987
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-virtual {v1}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->stop()V

    .line 2990
    :cond_5
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2991
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mViewHelper:Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;->setScrollX(I)V

    .line 2992
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->finishGlows()V

    .line 2993
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2414
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->onWindowFocusChanged(Z)V

    .line 2416
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2418
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_4

    .line 2419
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2420
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 2421
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/acloud/ui/view/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2424
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->endFling()V

    .line 2425
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 2426
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-virtual {v3}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->stop()V

    .line 2428
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2429
    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mViewHelper:Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;

    invoke-virtual {v3, v1}, Lcom/acloud/ui/utils/ViewHelperFactory$ViewHelper;->setScrollX(I)V

    .line 2430
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->finishGlows()V

    .line 2431
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 2436
    :cond_1
    if-ne v0, v2, :cond_2

    .line 2438
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    .line 2457
    :cond_2
    :goto_1
    iput v0, p0, Lcom/acloud/ui/view/AbsHListView;->mLastTouchMode:I

    .line 2458
    return-void

    .end local v0    # "touchMode":I
    :cond_3
    move v0, v2

    .line 2416
    goto :goto_0

    .line 2442
    .restart local v0    # "touchMode":I
    :cond_4
    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2444
    if-ne v0, v2, :cond_5

    .line 2446
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->resurrectSelection()Z

    goto :goto_1

    .line 2450
    :cond_5
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->hideSelector()V

    .line 2451
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 2452
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1184
    invoke-super {p0, p1, p2}, Lcom/acloud/ui/view/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1205
    :goto_0
    return v1

    .line 1187
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1205
    goto :goto_0

    .line 1189
    :sswitch_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 1190
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1191
    .local v0, "viewportWidth":I
    invoke-virtual {p0, v0, v5}, Lcom/acloud/ui/view/AbsHListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_1
    move v1, v2

    .line 1195
    goto :goto_0

    .line 1197
    :sswitch_1
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 1198
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1199
    .restart local v0    # "viewportWidth":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Lcom/acloud/ui/view/AbsHListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_2
    move v1, v2

    .line 1203
    goto :goto_0

    .line 1187
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3009
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView;->showContextMenu(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3012
    const/4 v0, 0x1

    .line 3016
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 921
    const/4 v8, 0x0

    .line 922
    .local v8, "handled":Z
    const/4 v7, 0x1

    .line 924
    .local v7, "dispatchItemClick":Z
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-eqz v1, :cond_4

    .line 925
    const/4 v8, 0x1

    .line 926
    const/4 v0, 0x0

    .line 928
    .local v0, "checkedStateChanged":Z
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 929
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_9

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 930
    :cond_0
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, p2, v4}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    move v6, v2

    .line 931
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 932
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    if-eqz v6, :cond_7

    .line 934
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 939
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 940
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    .line 945
    :goto_2
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 946
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    check-cast v1, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    check-cast v2, Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 947
    const/4 v7, 0x0

    .line 950
    :cond_2
    const/4 v0, 0x1

    .line 967
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 968
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->updateOnScreenCheckedViews()V

    .line 972
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 973
    invoke-super {p0, p1, p2, p3, p4}, Lcom/acloud/ui/view/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 976
    :cond_5
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6
    move v6, v3

    .line 930
    goto :goto_0

    .line 936
    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 942
    :cond_8
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    goto :goto_2

    .line 951
    .end local v6    # "checked":Z
    :cond_9
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-ne v1, v3, :cond_3

    .line 952
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, p2, v4}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    move v6, v2

    .line 953
    .restart local v6    # "checked":Z
    :goto_4
    if-eqz v6, :cond_d

    .line 954
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 955
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 956
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 957
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 958
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 960
    :cond_a
    iput v3, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    .line 964
    :cond_b
    :goto_5
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v3

    .line 952
    goto :goto_4

    .line 961
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    .line 962
    :cond_e
    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2572
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 2573
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2574
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2575
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    check-cast v0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2576
    invoke-virtual {p0, p2, v6}, Lcom/acloud/ui/view/AbsHListView;->setItemChecked(IZ)V

    .line 2577
    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->performHapticFeedback(I)Z

    .line 2595
    :cond_0
    :goto_0
    return v6

    .line 2583
    :cond_1
    const/4 v6, 0x0

    .line 2584
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOnItemLongClickListener:Lcom/acloud/ui/view/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 2585
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOnItemLongClickListener:Lcom/acloud/ui/view/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/acloud/ui/view/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/acloud/ui/view/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2588
    :cond_2
    if-nez v6, :cond_3

    .line 2589
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/acloud/ui/view/AbsHListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2590
    invoke-super {p0, p0}, Lcom/acloud/ui/view/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2592
    :cond_3
    if-eqz v6, :cond_0

    .line 2593
    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToColId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2716
    invoke-virtual {p0, p1, p2}, Lcom/acloud/ui/view/AbsHListView;->pointToPosition(II)I

    move-result v0

    .line 2717
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 2718
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2720
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2686
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2687
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2688
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2689
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2692
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v1

    .line 2693
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_1

    .line 2702
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 2694
    :cond_1
    invoke-virtual {p0, v3}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2695
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2696
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2697
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2698
    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    add-int/2addr v4, v3

    goto :goto_1

    .line 2693
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method protected positionSelector(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 2085
    if-eq p1, v6, :cond_0

    .line 2086
    iput p1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorPosition:I

    .line 2089
    :cond_0
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2090
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2091
    instance-of v2, p2, Lcom/acloud/ui/view/AbsHListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2092
    check-cast v2, Lcom/acloud/ui/view/AbsHListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/acloud/ui/view/AbsHListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2094
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 2095
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 2094
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/acloud/ui/view/AbsHListView;->positionSelector(IIII)V

    .line 2097
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mIsChildViewEnabled:Z

    .line 2098
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2099
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/acloud/ui/view/AbsHListView;->mIsChildViewEnabled:Z

    .line 2100
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2101
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->refreshDrawableState()V

    .line 2104
    :cond_2
    return-void

    .line 2099
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5308
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v1

    .line 5309
    .local v1, "childCount":I
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    # getter for: Lcom/acloud/ui/view/AbsHListView$RecycleBin;->mRecyclerListener:Lcom/acloud/ui/view/AbsHListView$RecyclerListener;
    invoke-static {v5}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->access$0(Lcom/acloud/ui/view/AbsHListView$RecycleBin;)Lcom/acloud/ui/view/AbsHListView$RecyclerListener;

    move-result-object v3

    .line 5312
    .local v3, "listener":Lcom/acloud/ui/view/AbsHListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 5329
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 5330
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->removeAllViewsInLayout()V

    .line 5331
    return-void

    .line 5313
    :cond_0
    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5314
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/acloud/ui/view/AbsHListView$LayoutParams;

    .line 5316
    .local v4, "lp":Lcom/acloud/ui/view/AbsHListView$LayoutParams;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    iget v6, v4, Lcom/acloud/ui/view/AbsHListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5317
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5319
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_1

    .line 5320
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5323
    :cond_1
    if-eqz v3, :cond_2

    .line 5325
    invoke-interface {v3, v0}, Lcom/acloud/ui/view/AbsHListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 5312
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 4777
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    .line 4778
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 4779
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    .line 4781
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4782
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4783
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 3660
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 3661
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOnScrollListener:Lcom/acloud/ui/view/AbsHListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3662
    iput p1, p0, Lcom/acloud/ui/view/AbsHListView;->mLastScrollState:I

    .line 3663
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOnScrollListener:Lcom/acloud/ui/view/AbsHListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/acloud/ui/view/AbsHListView$OnScrollListener;->onScrollStateChanged(Lcom/acloud/ui/view/AbsHListView;I)V

    .line 3666
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 3521
    if-eqz p1, :cond_0

    .line 3522
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->recycleVelocityTracker()V

    .line 3524
    :cond_0
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3525
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1623
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1624
    invoke-super {p0}, Lcom/acloud/ui/view/AdapterView;->requestLayout()V

    .line 1626
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->resetList()V

    .line 1285
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->requestLayout()V

    .line 1286
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 1288
    :cond_0
    return-void
.end method

.method protected resetList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1632
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->removeAllViewsInLayout()V

    .line 1633
    iput v3, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    .line 1634
    iput-boolean v3, p0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    .line 1635
    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1636
    iput-boolean v3, p0, Lcom/acloud/ui/view/AbsHListView;->mNeedSync:Z

    .line 1637
    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPendingSync:Lcom/acloud/ui/view/AbsHListView$SavedState;

    .line 1638
    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mOldSelectedPosition:I

    .line 1639
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOldSelectedColId:J

    .line 1640
    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->setSelectedPositionInt(I)V

    .line 1641
    invoke-virtual {p0, v2}, Lcom/acloud/ui/view/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 1642
    iput v3, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedLeft:I

    .line 1643
    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorPosition:I

    .line 1644
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1645
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 1646
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 4847
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v2

    .line 4849
    .local v2, "childCount":I
    if-gtz v2, :cond_0

    .line 4850
    const/16 v17, 0x0

    .line 4944
    :goto_0
    return v17

    .line 4853
    :cond_0
    const/4 v12, 0x0

    .line 4855
    .local v12, "selectedLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 4856
    .local v3, "childrenLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 4857
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    .line 4858
    .local v6, "firstPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    .line 4859
    .local v15, "toPosition":I
    const/4 v5, 0x1

    .line 4861
    .local v5, "down":Z
    if-lt v15, v6, :cond_4

    add-int v17, v6, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 4862
    move v13, v15

    .line 4864
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4865
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 4866
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 4869
    .local v14, "selectedRight":I
    if-ge v12, v3, :cond_3

    .line 4870
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 4925
    .end local v11    # "selected":Landroid/view/View;
    .end local v14    # "selectedRight":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mResurrectToPosition:I

    .line 4926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 4928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->stop()V

    .line 4930
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    .line 4931
    invoke-direct/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->clearScrollingCache()V

    .line 4932
    move-object/from16 v0, p0

    iput v12, v0, Lcom/acloud/ui/view/AbsHListView;->mSpecificLeft:I

    .line 4933
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lcom/acloud/ui/view/AbsHListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 4934
    if-lt v13, v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_c

    .line 4935
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLayoutMode:I

    .line 4936
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->updateSelectorState()V

    .line 4937
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/acloud/ui/view/AbsHListView;->setSelectionInt(I)V

    .line 4938
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->invokeOnItemScrollListener()V

    .line 4942
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    .line 4944
    if-ltz v13, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 4871
    .restart local v11    # "selected":Landroid/view/View;
    .restart local v14    # "selectedRight":I
    :cond_3
    if-le v14, v4, :cond_1

    .line 4872
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    .line 4874
    goto :goto_1

    .line 4875
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    .end local v14    # "selectedRight":I
    :cond_4
    if-ge v15, v6, :cond_8

    .line 4877
    move v13, v6

    .line 4878
    .restart local v13    # "selectedPos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v2, :cond_1

    .line 4879
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 4880
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 4882
    .local v9, "left":I
    if-nez v7, :cond_6

    .line 4884
    move v12, v9

    .line 4886
    if-gtz v6, :cond_5

    if-ge v9, v3, :cond_6

    .line 4889
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 4892
    :cond_6
    if-lt v9, v3, :cond_7

    .line 4894
    add-int v13, v6, v7

    .line 4895
    move v12, v9

    .line 4896
    goto/16 :goto_1

    .line 4878
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4900
    .end local v7    # "i":I
    .end local v9    # "left":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    .line 4901
    .local v8, "itemCount":I
    const/4 v5, 0x0

    .line 4902
    add-int v17, v6, v2

    add-int/lit8 v13, v17, -0x1

    .line 4904
    .restart local v13    # "selectedPos":I
    add-int/lit8 v7, v2, -0x1

    .restart local v7    # "i":I
    :goto_4
    if-ltz v7, :cond_1

    .line 4905
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 4906
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 4907
    .restart local v9    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v10

    .line 4909
    .local v10, "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    .line 4910
    move v12, v9

    .line 4911
    add-int v17, v6, v2

    move/from16 v0, v17

    if-lt v0, v8, :cond_9

    if-le v10, v4, :cond_a

    .line 4912
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 4916
    :cond_a
    if-gt v10, v4, :cond_b

    .line 4917
    add-int v13, v6, v7

    .line 4918
    move v12, v9

    .line 4919
    goto/16 :goto_1

    .line 4904
    :cond_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 4940
    .end local v7    # "i":I
    .end local v8    # "itemCount":I
    .end local v9    # "left":I
    .end local v10    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v13, -0x1

    goto :goto_2

    .line 4944
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method protected resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 4826
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4827
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->updateSelectorState()V

    .line 4828
    const/4 v0, 0x1

    .line 4830
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1143
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1145
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getLastVisiblePosition()I

    move-result v1

    .line 1146
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    .line 1147
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1155
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 1150
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Lcom/acloud/ui/view/AbsHListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1151
    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1154
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 723
    if-eqz p1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapterHasStableIds:Z

    .line 725
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 727
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 738
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 5278
    iget v2, p0, Lcom/acloud/ui/view/AbsHListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_0

    .line 5279
    iput p1, p0, Lcom/acloud/ui/view/AbsHListView;->mCacheColorHint:I

    .line 5280
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 5281
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 5284
    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->setCacheColorHint(I)V

    .line 5286
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 5282
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v1, 0xb

    .line 1018
    iput p1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    .line 1020
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1023
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1026
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    .line 1030
    :cond_1
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-eqz v0, :cond_4

    .line 1031
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_2

    .line 1032
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1035
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 1038
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 1039
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1040
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->clearChoices()V

    .line 1041
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/AbsHListView;->setLongClickable(Z)V

    .line 1045
    :cond_4
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 2202
    iput-boolean p1, p0, Lcom/acloud/ui/view/AbsHListView;->mDrawSelectorOnTop:Z

    .line 2203
    return-void
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 4358
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4359
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    .line 4361
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    # getter for: Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->mScroller:Lcom/acloud/ui/view/OverScroller;
    invoke-static {v0}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->access$0(Lcom/acloud/ui/view/AbsHListView$FlingRunnable;)Lcom/acloud/ui/view/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/acloud/ui/view/OverScroller;->setFriction(F)V

    .line 4362
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/16 v9, 0xb

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 849
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_4

    .line 855
    if-eqz p2, :cond_4

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 856
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 857
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    check-cast v1, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;

    invoke-virtual {v1}, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-nez v1, :cond_3

    .line 858
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    :cond_3
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    check-cast v1, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    .line 866
    :cond_4
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    .line 867
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_b

    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceMode:I

    if-ne v1, v6, :cond_b

    .line 868
    :cond_5
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 869
    .local v0, "oldValue":Z
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 870
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 871
    if-eqz p2, :cond_9

    .line 872
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 877
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 878
    if-eqz p2, :cond_a

    .line 879
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    .line 884
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 885
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 886
    .local v4, "id":J
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    check-cast v1, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mChoiceActionMode:Ljava/lang/Object;

    check-cast v2, Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 912
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/acloud/ui/view/AbsHListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/acloud/ui/view/AbsHListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 913
    iput-boolean v8, p0, Lcom/acloud/ui/view/AbsHListView;->mDataChanged:Z

    .line 914
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->rememberSyncState()V

    .line 915
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->requestLayout()V

    goto/16 :goto_0

    .line 874
    .restart local v0    # "oldValue":Z
    :cond_9
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 881
    :cond_a
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    goto :goto_2

    .line 889
    .end local v0    # "oldValue":Z
    :cond_b
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_f

    move v7, v8

    .line 892
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 893
    :cond_c
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 894
    if-eqz v7, :cond_d

    .line 895
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 900
    :cond_d
    if-eqz p2, :cond_10

    .line 901
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 902
    if-eqz v7, :cond_e

    .line 903
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 905
    :cond_e
    iput v8, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_f
    move v7, v2

    .line 889
    goto :goto_4

    .line 906
    .restart local v7    # "updateIds":Z
    :cond_10
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckStates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    .line 907
    :cond_11
    iput v2, p0, Lcom/acloud/ui/view/AbsHListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1058
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mMultiChoiceModeCallback:Ljava/lang/Object;

    check-cast v0, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/acloud/ui/utils/v11/MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1066
    :goto_0
    return-void

    .line 1064
    :cond_1
    const-string v0, "AbsListView"

    const-string v1, "setMultiChoiceModeListener not supported for this version of Android"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnScrollListener(Lcom/acloud/ui/view/AbsHListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/acloud/ui/view/AbsHListView$OnScrollListener;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView;->mOnScrollListener:Lcom/acloud/ui/view/AbsHListView$OnScrollListener;

    .line 1125
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->invokeOnItemScrollListener()V

    .line 1126
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 3494
    iput p1, p0, Lcom/acloud/ui/view/AbsHListView;->mGlowPaddingTop:I

    .line 3495
    iput p2, p0, Lcom/acloud/ui/view/AbsHListView;->mGlowPaddingBottom:I

    .line 3496
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 705
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 706
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v1, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 708
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 709
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 715
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->setOverScrollMode(I)V

    .line 716
    return-void

    .line 712
    :cond_1
    iput-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 713
    iput-object v2, p0, Lcom/acloud/ui/view/AbsHListView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/acloud/ui/view/AbsHListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/acloud/ui/view/AbsHListView$RecyclerListener;

    .prologue
    .line 5356
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    invoke-static {v0, p1}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->access$1(Lcom/acloud/ui/view/AbsHListView$RecycleBin;Lcom/acloud/ui/view/AbsHListView$RecyclerListener;)V

    .line 5357
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 2284
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollLeft:Landroid/view/View;

    .line 2285
    iput-object p2, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollRight:Landroid/view/View;

    .line 2286
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1236
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1237
    invoke-direct {p0}, Lcom/acloud/ui/view/AbsHListView;->clearScrollingCache()V

    .line 1239
    :cond_0
    iput-boolean p1, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollingCacheEnabled:Z

    .line 1240
    return-void
.end method

.method public abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2215
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2218
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2219
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2220
    iget-object v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/acloud/ui/view/AbsHListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2222
    :cond_0
    iput-object p1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2224
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2225
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionLeftPadding:I

    .line 2226
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionTopPadding:I

    .line 2227
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionRightPadding:I

    .line 2228
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/acloud/ui/view/AbsHListView;->mSelectionBottomPadding:I

    .line 2229
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2230
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->updateSelectorState()V

    .line 2231
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1102
    iput-boolean p1, p0, Lcom/acloud/ui/view/AbsHListView;->mSmoothScrollbarEnabled:Z

    .line 1103
    return-void
.end method

.method public setStackFromRight(Z)V
    .locals 1
    .param p1, "stackFromRight"    # Z

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/acloud/ui/view/AbsHListView;->mStackFromRight:Z

    if-eq v0, p1, :cond_0

    .line 1277
    iput-boolean p1, p0, Lcom/acloud/ui/view/AbsHListView;->mStackFromRight:Z

    .line 1278
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->requestLayoutIfNecessary()V

    .line 1280
    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 5250
    iput p1, p0, Lcom/acloud/ui/view/AbsHListView;->mTranscriptMode:I

    .line 5251
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 4371
    iput p1, p0, Lcom/acloud/ui/view/AbsHListView;->mVelocityScale:F

    .line 4372
    return-void
.end method

.method protected setVisibleRangeHint(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 5343
    return-void
.end method

.method protected shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2182
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 2604
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/acloud/ui/view/AbsHListView;->pointToPosition(II)I

    move-result v1

    .line 2605
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 2606
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2607
    .local v2, "id":J
    iget v4, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2608
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2609
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/acloud/ui/view/AbsHListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2610
    invoke-super {p0, p0}, Lcom/acloud/ui/view/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 2613
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/acloud/ui/view/AbsHListView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 2618
    invoke-virtual {p0, p1}, Lcom/acloud/ui/view/AbsHListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2619
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 2620
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2621
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 2623
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOnItemLongClickListener:Lcom/acloud/ui/view/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2624
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mOnItemLongClickListener:Lcom/acloud/ui/view/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/acloud/ui/view/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/acloud/ui/view/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2627
    :cond_0
    if-nez v6, :cond_1

    .line 2629
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2628
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/acloud/ui/view/AbsHListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2631
    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2636
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 4449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/acloud/ui/view/AbsHListView;->smoothScrollBy(IIZ)V

    .line 4450
    return-void
.end method

.method public smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 4453
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 4454
    new-instance v5, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    .line 4458
    :cond_0
    iget v1, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    .line 4459
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v0

    .line 4460
    .local v0, "childCount":I
    add-int v2, v1, v0

    .line 4461
    .local v2, "lastPos":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingLeft()I

    move-result v3

    .line 4462
    .local v3, "leftLimit":I
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 4464
    .local v4, "rightLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 4465
    if-nez v1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v5, v3, :cond_1

    if-ltz p1, :cond_2

    .line 4466
    :cond_1
    iget v5, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    if-ne v2, v5, :cond_4

    .line 4467
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ne v5, v4, :cond_4

    if-lez p1, :cond_4

    .line 4468
    :cond_2
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->endFling()V

    .line 4469
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 4470
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-virtual {v5}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->stop()V

    .line 4476
    :cond_3
    :goto_0
    return-void

    .line 4473
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->reportScrollStateChange(I)V

    .line 4474
    iget-object v5, p0, Lcom/acloud/ui/view/AbsHListView;->mFlingRunnable:Lcom/acloud/ui/view/AbsHListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Lcom/acloud/ui/view/AbsHListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method protected smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 4482
    const/4 v2, -0x1

    .line 4483
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 4484
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getFirstVisiblePosition()I

    move-result v2

    .line 4489
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 4490
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4491
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4492
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 4493
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4495
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 4496
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 4497
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 4498
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 4499
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 4502
    add-int/lit8 v2, v2, 0x1

    .line 4509
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/acloud/ui/view/AbsHListView;->smoothScrollToPosition(I)V

    .line 4512
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 4485
    :cond_3
    if-lez p1, :cond_0

    .line 4486
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 4503
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 4506
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4381
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4382
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    .line 4384
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->start(I)V

    .line 4385
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 4434
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4435
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    .line 4437
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->start(II)V

    .line 4438
    return-void
.end method

.method public smoothScrollToPositionFromLeft(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 4418
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4419
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    .line 4421
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->startWithOffset(II)V

    .line 4422
    return-void
.end method

.method public smoothScrollToPositionFromLeft(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4401
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    if-nez v0, :cond_0

    .line 4402
    new-instance v0, Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;-><init>(Lcom/acloud/ui/view/AbsHListView;)V

    iput-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    .line 4404
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mPositionScroller:Lcom/acloud/ui/view/AbsHListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/acloud/ui/view/AbsHListView$PositionScroller;->startWithOffset(III)V

    .line 4405
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2166
    iget v0, p0, Lcom/acloud/ui/view/AbsHListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2171
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2169
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .param p1, "deltaX"    # I
    .param p2, "incrementalDeltaX"    # I

    .prologue
    .line 4557
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v8

    .line 4558
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 4559
    const/16 v29, 0x1

    .line 4714
    :goto_0
    return v29

    .line 4562
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 4563
    .local v15, "firstLeft":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getRight()I

    move-result v21

    .line 4565
    .local v21, "lastRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    .line 4570
    .local v22, "listPadding":Landroid/graphics/Rect;
    const/4 v12, 0x0

    .line 4571
    .local v12, "effectivePaddingLeft":I
    const/4 v13, 0x0

    .line 4579
    .local v13, "effectivePaddingRight":I
    sub-int v25, v12, v15

    .line 4580
    .local v25, "spaceBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v29

    sub-int v14, v29, v13

    .line 4581
    .local v14, "end":I
    sub-int v24, v21, v14

    .line 4583
    .local v24, "spaceAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingRight()I

    move-result v30

    sub-int v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getPaddingLeft()I

    move-result v30

    sub-int v28, v29, v30

    .line 4584
    .local v28, "width":I
    if-gez p1, :cond_2

    .line 4585
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4590
    :goto_1
    if-gez p2, :cond_3

    .line 4591
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4596
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 4599
    .local v16, "firstPosition":I
    if-nez v16, :cond_4

    .line 4600
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v29, v15, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mFirstPositionDistanceGuess:I

    .line 4604
    :goto_3
    add-int v29, v16, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 4605
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLastPositionDistanceGuess:I

    .line 4610
    :goto_4
    if-nez v16, :cond_6

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-lt v15, v0, :cond_6

    if-ltz p2, :cond_6

    const/4 v6, 0x1

    .line 4611
    .local v6, "cannotScrollRight":Z
    :goto_5
    add-int v29, v16, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v29

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v21

    move/from16 v1, v29

    if-gt v0, v1, :cond_7

    if-gtz p2, :cond_7

    const/4 v5, 0x1

    .line 4613
    .local v5, "cannotScrollLeft":Z
    :goto_6
    if-nez v6, :cond_1

    if-eqz v5, :cond_9

    .line 4614
    :cond_1
    if-eqz p2, :cond_8

    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4587
    .end local v5    # "cannotScrollLeft":Z
    .end local v6    # "cannotScrollRight":Z
    .end local v16    # "firstPosition":I
    :cond_2
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 4593
    :cond_3
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 4602
    .restart local v16    # "firstPosition":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 4607
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 4610
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 4611
    .restart local v6    # "cannotScrollRight":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    .line 4614
    .restart local v5    # "cannotScrollLeft":Z
    :cond_8
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4617
    :cond_9
    if-gez p2, :cond_12

    const/4 v11, 0x1

    .line 4619
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->isInTouchMode()Z

    move-result v20

    .line 4620
    .local v20, "inTouchMode":Z
    if-eqz v20, :cond_a

    .line 4621
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->hideSelector()V

    .line 4624
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getHeaderViewsCount()I

    move-result v18

    .line 4625
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 4627
    .local v17, "footerViewsStart":I
    const/16 v26, 0x0

    .line 4628
    .local v26, "start":I
    const/4 v10, 0x0

    .line 4630
    .local v10, "count":I
    if-eqz v11, :cond_15

    .line 4631
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v27, v0

    .line 4637
    .local v27, "top":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_8
    move/from16 v0, v19

    if-lt v0, v8, :cond_13

    .line 4670
    .end local v27    # "top":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mMotionViewOriginalLeft:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mMotionViewNewLeft:I

    .line 4672
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/acloud/ui/view/AbsHListView;->mBlockLayoutRequests:Z

    .line 4674
    if-lez v10, :cond_c

    .line 4675
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Lcom/acloud/ui/view/AbsHListView;->detachViewsFromParent(II)V

    .line 4676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->removeSkippedScrap()V

    .line 4681
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_d

    .line 4682
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->invalidate()V

    .line 4685
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->offsetChildrenLeftAndRight(I)V

    .line 4687
    if-eqz v11, :cond_e

    .line 4688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    .line 4691
    :cond_e
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4692
    .local v3, "absIncrementalDeltaX":I
    move/from16 v0, v25

    if-lt v0, v3, :cond_f

    move/from16 v0, v24

    if-ge v0, v3, :cond_10

    .line 4693
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/acloud/ui/view/AbsHListView;->fillGap(Z)V

    .line 4696
    :cond_10
    if-nez v20, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_17

    .line 4697
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 4698
    .local v9, "childIndex":I
    if-ltz v9, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_11

    .line 4699
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView;->positionSelector(ILandroid/view/View;)V

    .line 4710
    .end local v9    # "childIndex":I
    :cond_11
    :goto_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/acloud/ui/view/AbsHListView;->mBlockLayoutRequests:Z

    .line 4712
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->invokeOnItemScrollListener()V

    .line 4714
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4617
    .end local v3    # "absIncrementalDeltaX":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v19    # "i":I
    .end local v20    # "inTouchMode":Z
    .end local v26    # "start":I
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 4638
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v19    # "i":I
    .restart local v20    # "inTouchMode":Z
    .restart local v26    # "start":I
    .restart local v27    # "top":I
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4639
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 4642
    add-int/lit8 v10, v10, 0x1

    .line 4643
    add-int v23, v16, v19

    .line 4644
    .local v23, "position":I
    move/from16 v0, v23

    move/from16 v1, v18

    if-lt v0, v1, :cond_14

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    .line 4645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4637
    :cond_14
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 4650
    .end local v7    # "child":Landroid/view/View;
    .end local v19    # "i":I
    .end local v23    # "position":I
    .end local v27    # "top":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getWidth()I

    move-result v29

    sub-int v4, v29, p2

    .line 4655
    .local v4, "bottom":I
    add-int/lit8 v19, v8, -0x1

    .restart local v19    # "i":I
    :goto_a
    if-ltz v19, :cond_b

    .line 4656
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4657
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_b

    .line 4660
    move/from16 v26, v19

    .line 4661
    add-int/lit8 v10, v10, 0x1

    .line 4662
    add-int v23, v16, v19

    .line 4663
    .restart local v23    # "position":I
    move/from16 v0, v23

    move/from16 v1, v18

    if-lt v0, v1, :cond_16

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 4664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mRecycler:Lcom/acloud/ui/view/AbsHListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Lcom/acloud/ui/view/AbsHListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4655
    :cond_16
    add-int/lit8 v19, v19, -0x1

    goto :goto_a

    .line 4701
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v23    # "position":I
    .restart local v3    # "absIncrementalDeltaX":I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_18

    .line 4702
    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 4703
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_11

    .line 4704
    const/16 v29, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/acloud/ui/view/AbsHListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 4707
    .end local v9    # "childIndex":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acloud/ui/view/AbsHListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1816
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollLeft:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 1819
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v0, v4

    .line 1822
    .local v0, "canScrollLeft":Z
    :goto_0
    if-nez v0, :cond_0

    .line 1823
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 1824
    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1825
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v8, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_5

    move v0, v4

    .line 1829
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1832
    .end local v0    # "canScrollLeft":Z
    :cond_1
    iget-object v6, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollRight:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1834
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getChildCount()I

    move-result v3

    .line 1837
    .local v3, "count":I
    iget v6, p0, Lcom/acloud/ui/view/AbsHListView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/acloud/ui/view/AbsHListView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v1, v4

    .line 1840
    .local v1, "canScrollRight":Z
    :goto_3
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 1841
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/acloud/ui/view/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1842
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/acloud/ui/view/AbsHListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v1, v4

    .line 1845
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/acloud/ui/view/AbsHListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    .end local v1    # "canScrollRight":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    :cond_4
    move v0, v5

    .line 1819
    goto :goto_0

    .restart local v0    # "canScrollLeft":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    move v0, v5

    .line 1825
    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    :cond_6
    move v6, v7

    .line 1829
    goto :goto_2

    .end local v0    # "canScrollLeft":Z
    .restart local v3    # "count":I
    :cond_7
    move v1, v5

    .line 1837
    goto :goto_3

    .restart local v1    # "canScrollRight":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_8
    move v1, v5

    .line 1842
    goto :goto_4

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v5, v7

    .line 1845
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2292
    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2293
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/acloud/ui/view/AbsHListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2295
    :cond_1
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/acloud/ui/view/AbsHListView;->STATESET_NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/acloud/ui/view/AbsHListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/acloud/ui/view/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
