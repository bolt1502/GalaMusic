.class public Lcom/acloud/stub/ui/view/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private height:I

.field private mDrawThumbY:I

.field private mOnSeekBarChangeListener:Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mThumb:Landroid/graphics/Bitmap;

.field private thumbHeight:D

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v9, 0x12c

    const/4 v8, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->thumbHeight:D

    .line 24
    iput v8, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mDrawThumbY:I

    .line 48
    new-instance v6, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;

    invoke-direct {v6, p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar$1;-><init>(Lcom/acloud/stub/ui/view/VerticalSeekBar;)V

    invoke-virtual {p0, v6}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 77
    const/16 v4, 0x28

    .line 78
    .local v4, "maxVolume":I
    if-eqz p1, :cond_0

    .line 79
    invoke-static {p1}, Lcom/acloud/GlaNative;->getStreamMaxVolume(Landroid/content/Context;)I

    move-result v4

    .line 82
    :cond_0
    invoke-virtual {p0, v4}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setMax(I)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget-object v7, Lcom/acloud/stub/localmusic/R$styleable;->VerticalSeekBar:[I

    invoke-virtual {v6, p2, v7, p3, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 86
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 102
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 104
    new-instance v6, Lcom/acloud/stub/ui/view/VerticalSeekBar$2;

    invoke-direct {v6, p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar$2;-><init>(Lcom/acloud/stub/ui/view/VerticalSeekBar;)V

    invoke-virtual {p0, v6}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void

    .line 87
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 88
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 86
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 91
    .local v5, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v5}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 94
    .end local v5    # "thumb":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->height:I

    goto :goto_1

    .line 97
    :pswitch_2
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->width:I

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/stub/ui/view/VerticalSeekBar;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/stub/ui/view/VerticalSeekBar;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->height:I

    return v0
.end method

.method static synthetic access$3(Lcom/acloud/stub/ui/view/VerticalSeekBar;D)V
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->thumbHeight:D

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 134
    :cond_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 136
    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    iget v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mDrawThumbY:I

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mDrawThumbY:I

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->thumbHeight:D

    double-to-int v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mDrawThumbY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 126
    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 119
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 120
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    :goto_0
    return v1

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 169
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 157
    :pswitch_0
    const/4 v0, 0x0

    .line 159
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 161
    invoke-virtual {p0, v0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 163
    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v1, v1}, Lcom/acloud/stub/ui/view/VerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnVerticalSeekBarChangeListener(Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/acloud/stub/ui/view/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    .line 116
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 173
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/stub/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    .line 174
    return-void
.end method
