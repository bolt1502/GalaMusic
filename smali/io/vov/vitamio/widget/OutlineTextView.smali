.class public Lio/vov/vitamio/widget/OutlineTextView;
.super Landroid/widget/TextView;
.source "OutlineTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DrawAllocation"
    }
.end annotation


# instance fields
.field private mAscent:I

.field private mBorderColor:I

.field private mBorderSize:F

.field private mColor:I

.field private mIncludePad:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextPaintOutline:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mText:Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mAscent:I

    .line 169
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingMult:F

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingAdd:F

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mIncludePad:Z

    .line 39
    invoke-direct {p0}, Lio/vov/vitamio/widget/OutlineTextView;->initPaint()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mText:Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mAscent:I

    .line 169
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingMult:F

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingAdd:F

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mIncludePad:Z

    .line 44
    invoke-direct {p0}, Lio/vov/vitamio/widget/OutlineTextView;->initPaint()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mText:Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mAscent:I

    .line 169
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingMult:F

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingAdd:F

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mIncludePad:Z

    .line 49
    invoke-direct {p0}, Lio/vov/vitamio/widget/OutlineTextView;->initPaint()V

    .line 50
    return-void
.end method

.method private initPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 54
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 56
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lio/vov/vitamio/widget/OutlineTextView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 60
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    .line 61
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 63
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    iget v1, p0, Lio/vov/vitamio/widget/OutlineTextView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    iget-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    iget v1, p0, Lio/vov/vitamio/widget/OutlineTextView;->mBorderSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 67
    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 148
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 150
    .local v2, "specSize":I
    iget-object v3, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lio/vov/vitamio/widget/OutlineTextView;->mAscent:I

    .line 151
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 152
    move v0, v2

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget v3, p0, Lio/vov/vitamio/widget/OutlineTextView;->mAscent:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 155
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 156
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 131
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 133
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 134
    move v0, v2

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v3, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    iget-object v4, p0, Lio/vov/vitamio/widget/OutlineTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 137
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 138
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget v5, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingMult:F

    iget v6, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingAdd:F

    iget-boolean v7, p0, Lio/vov/vitamio/widget/OutlineTextView;->mIncludePad:Z

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 116
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 117
    new-instance v0, Landroid/text/StaticLayout;

    .end local v0    # "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget v5, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingMult:F

    iget v6, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingAdd:F

    iget-boolean v7, p0, Lio/vov/vitamio/widget/OutlineTextView;->mIncludePad:Z

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 118
    .restart local v0    # "layout":Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 119
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 123
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/widget/OutlineTextView;->mTextPaintOutline:Landroid/text/TextPaint;

    invoke-direct {p0, p1}, Lio/vov/vitamio/widget/OutlineTextView;->measureWidth(I)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget v5, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingMult:F

    iget v6, p0, Lio/vov/vitamio/widget/OutlineTextView;->mSpacingAdd:F

    iget-boolean v7, p0, Lio/vov/vitamio/widget/OutlineTextView;->mIncludePad:Z

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 124
    .local v0, "layout":Landroid/text/Layout;
    iget v1, p0, Lio/vov/vitamio/widget/OutlineTextView;->mBorderSize:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v8, v1

    .line 125
    .local v8, "ex":I
    invoke-direct {p0, p1}, Lio/vov/vitamio/widget/OutlineTextView;->measureWidth(I)I

    move-result v1

    add-int/2addr v1, v8

    invoke-direct {p0, p2}, Lio/vov/vitamio/widget/OutlineTextView;->measureHeight(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v8

    invoke-virtual {p0, v1, v2}, Lio/vov/vitamio/widget/OutlineTextView;->setMeasuredDimension(II)V

    .line 126
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 0
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 92
    iput p1, p0, Lio/vov/vitamio/widget/OutlineTextView;->mBorderSize:F

    .line 93
    iput p4, p0, Lio/vov/vitamio/widget/OutlineTextView;->mBorderColor:I

    .line 94
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->requestLayout()V

    .line 95
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->invalidate()V

    .line 96
    invoke-direct {p0}, Lio/vov/vitamio/widget/OutlineTextView;->initPaint()V

    .line 97
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vov/vitamio/widget/OutlineTextView;->mText:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->requestLayout()V

    .line 73
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->invalidate()V

    .line 74
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iput p1, p0, Lio/vov/vitamio/widget/OutlineTextView;->mColor:I

    .line 86
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->invalidate()V

    .line 87
    invoke-direct {p0}, Lio/vov/vitamio/widget/OutlineTextView;->initPaint()V

    .line 88
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->requestLayout()V

    .line 79
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->invalidate()V

    .line 80
    invoke-direct {p0}, Lio/vov/vitamio/widget/OutlineTextView;->initPaint()V

    .line 81
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->requestLayout()V

    .line 109
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->invalidate()V

    .line 110
    invoke-direct {p0}, Lio/vov/vitamio/widget/OutlineTextView;->initPaint()V

    .line 111
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 101
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->requestLayout()V

    .line 102
    invoke-virtual {p0}, Lio/vov/vitamio/widget/OutlineTextView;->invalidate()V

    .line 103
    invoke-direct {p0}, Lio/vov/vitamio/widget/OutlineTextView;->initPaint()V

    .line 104
    return-void
.end method
