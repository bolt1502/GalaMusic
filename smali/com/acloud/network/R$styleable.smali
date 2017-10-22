.class public final Lcom/acloud/network/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AbsHListView:[I

.field public static final AbsHListView_android_cacheColorHint:I = 0x3

.field public static final AbsHListView_android_choiceMode:I = 0x4

.field public static final AbsHListView_android_drawSelectorOnTop:I = 0x1

.field public static final AbsHListView_android_listSelector:I = 0x0

.field public static final AbsHListView_android_scrollingCache:I = 0x2

.field public static final AbsHListView_android_smoothScrollbar:I = 0x5

.field public static final AbsHListView_hlv_stackFromRight:I = 0x6

.field public static final AbsHListView_hlv_transcriptMode:I = 0x7

.field public static final ExpandableHListView:[I

.field public static final ExpandableHListView_hlv_childDivider:I = 0x2

.field public static final ExpandableHListView_hlv_childIndicator:I = 0x4

.field public static final ExpandableHListView_hlv_childIndicatorGravity:I = 0x1

.field public static final ExpandableHListView_hlv_childIndicatorPaddingLeft:I = 0x7

.field public static final ExpandableHListView_hlv_childIndicatorPaddingTop:I = 0x8

.field public static final ExpandableHListView_hlv_groupIndicator:I = 0x3

.field public static final ExpandableHListView_hlv_indicatorGravity:I = 0x0

.field public static final ExpandableHListView_hlv_indicatorPaddingLeft:I = 0x5

.field public static final ExpandableHListView_hlv_indicatorPaddingTop:I = 0x6

.field public static final HListView:[I

.field public static final HListView_android_divider:I = 0x1

.field public static final HListView_android_entries:I = 0x0

.field public static final HListView_hlv_dividerWidth:I = 0x2

.field public static final HListView_hlv_footerDividersEnabled:I = 0x4

.field public static final HListView_hlv_headerDividersEnabled:I = 0x3

.field public static final HListView_hlv_measureWithChild:I = 0x7

.field public static final HListView_hlv_overScrollFooter:I = 0x6

.field public static final HListView_hlv_overScrollHeader:I = 0x5

.field public static final RoundImageView:[I

.field public static final RoundImageView_borderRadius:I = 0x0

.field public static final RoundImageView_type:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 177
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/acloud/network/R$styleable;->AbsHListView:[I

    .line 186
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/acloud/network/R$styleable;->ExpandableHListView:[I

    .line 196
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/acloud/network/R$styleable;->HListView:[I

    .line 205
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/acloud/network/R$styleable;->RoundImageView:[I

    .line 207
    return-void

    .line 177
    :array_0
    .array-data 4
        0x10100fb
        0x10100fc
        0x10100fe
        0x1010101
        0x101012b
        0x1010231
        0x7f01000c
        0x7f01000d
    .end array-data

    .line 186
    :array_1
    .array-data 4
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
    .end array-data

    .line 196
    :array_2
    .array-data 4
        0x10100b2
        0x1010129
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 205
    :array_3
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
