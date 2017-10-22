.class public Lcom/acloud/ui/view/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# static fields
.field private static final BODER_RADIUS_DEFAULT:I = 0xa

.field private static final STATE_BORDER_RADIUS:Ljava/lang/String; = "state_border_radius"

.field private static final STATE_INSTANCE:Ljava/lang/String; = "state_instance"

.field private static final STATE_TYPE:Ljava/lang/String; = "state_type"

.field public static final TYPE_CIRCLE:I = 0x0

.field public static final TYPE_ROUND:I = 0x1


# instance fields
.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBorderRadius:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRadius:I

.field private mRoundRect:Landroid/graphics/RectF;

.field private mWidth:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/ui/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/acloud/ui/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/acloud/ui/view/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/acloud/ui/view/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v1, p0, Lcom/acloud/ui/view/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    sget-object v1, Lcom/acloud/uibase/R$styleable;->RoundImageView:[I

    .line 73
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/acloud/uibase/R$styleable;->RoundImageView_borderRadius:I

    .line 79
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 78
    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/RoundImageView;->mBorderRadius:I

    .line 81
    sget v1, Lcom/acloud/uibase/R$styleable;->RoundImageView_type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 186
    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 188
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 189
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 197
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 192
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 193
    .local v3, "h":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v6, v6, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private setUpShader()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 114
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0, v2}, Lcom/acloud/ui/view/RoundImageView;->drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Lcom/acloud/ui/view/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 122
    const/high16 v3, 0x3f800000    # 1.0f

    .line 123
    .local v3, "scale":F
    iget v4, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    if-nez v4, :cond_2

    .line 126
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 127
    .local v0, "bSize":I
    iget v4, p0, Lcom/acloud/ui/view/RoundImageView;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    int-to-float v5, v0

    div-float v3, v4, v5

    .line 140
    .end local v0    # "bSize":I
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/acloud/ui/view/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 142
    iget-object v4, p0, Lcom/acloud/ui/view/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lcom/acloud/ui/view/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 144
    iget-object v4, p0, Lcom/acloud/ui/view/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/acloud/ui/view/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 129
    :cond_2
    iget v4, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 135
    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 134
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method public dp2px(I)I
    .locals 3
    .param p1, "dpVal"    # I

    .prologue
    .line 257
    const/4 v0, 0x1

    .line 258
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 257
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 150
    const-string v0, "TAG"

    const-string v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/acloud/ui/view/RoundImageView;->setUpShader()V

    .line 157
    iget v0, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/acloud/ui/view/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/acloud/ui/view/RoundImageView;->mBorderRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/acloud/ui/view/RoundImageView;->mBorderRadius:I

    int-to-float v2, v2

    .line 160
    iget-object v3, p0, Lcom/acloud/ui/view/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 159
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 163
    :cond_1
    iget v0, p0, Lcom/acloud/ui/view/RoundImageView;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/acloud/ui/view/RoundImageView;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/acloud/ui/view/RoundImageView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/acloud/ui/view/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 99
    iget v0, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/acloud/ui/view/RoundImageView;->mWidth:I

    .line 102
    iget v0, p0, Lcom/acloud/ui/view/RoundImageView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/acloud/ui/view/RoundImageView;->mRadius:I

    .line 103
    iget v0, p0, Lcom/acloud/ui/view/RoundImageView;->mWidth:I

    iget v1, p0, Lcom/acloud/ui/view/RoundImageView;->mWidth:I

    invoke-virtual {p0, v0, v1}, Lcom/acloud/ui/view/RoundImageView;->setMeasuredDimension(II)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 217
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 219
    check-cast v0, Landroid/os/Bundle;

    .line 220
    .local v0, "bundle":Landroid/os/Bundle;
    check-cast p1, Landroid/os/Bundle;

    .line 221
    .end local p1    # "state":Landroid/os/Parcelable;
    const-string v1, "state_instance"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 220
    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 222
    const-string v1, "state_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    .line 223
    const-string v1, "state_border_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/acloud/ui/view/RoundImageView;->mBorderRadius:I

    .line 229
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 226
    .restart local p1    # "state":Landroid/os/Parcelable;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "state_instance"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 209
    const-string v1, "state_type"

    iget v2, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v1, "state_border_radius"

    iget v2, p0, Lcom/acloud/ui/view/RoundImageView;->mBorderRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 174
    iget v0, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 175
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/acloud/ui/view/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    .line 176
    :cond_0
    return-void
.end method

.method public setBorderRadius(I)V
    .locals 2
    .param p1, "borderRadius"    # I

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/acloud/ui/view/RoundImageView;->dp2px(I)I

    move-result v0

    .line 234
    .local v0, "pxVal":I
    iget v1, p0, Lcom/acloud/ui/view/RoundImageView;->mBorderRadius:I

    if-eq v1, v0, :cond_0

    .line 236
    iput v0, p0, Lcom/acloud/ui/view/RoundImageView;->mBorderRadius:I

    .line 237
    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->invalidate()V

    .line 239
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 243
    iget v0, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    if-eq v0, p1, :cond_1

    .line 245
    iput p1, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    .line 246
    iget v0, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/ui/view/RoundImageView;->type:I

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/RoundImageView;->requestLayout()V

    .line 253
    :cond_1
    return-void
.end method
