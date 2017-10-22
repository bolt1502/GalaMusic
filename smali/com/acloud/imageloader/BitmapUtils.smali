.class public Lcom/acloud/imageloader/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static hRadius:F

.field private static iterations:I

.field private static vRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x41200000    # 10.0f

    .line 234
    sput v0, Lcom/acloud/imageloader/BitmapUtils;->hRadius:F

    .line 236
    sput v0, Lcom/acloud/imageloader/BitmapUtils;->vRadius:F

    .line 238
    const/4 v0, 0x3

    sput v0, Lcom/acloud/imageloader/BitmapUtils;->iterations:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blur([I[IIIF)V
    .locals 22
    .param p0, "in"    # [I
    .param p1, "out"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "radius"    # F

    .prologue
    .line 263
    add-int/lit8 v17, p2, -0x1

    .line 264
    .local v17, "widthMinus1":I
    move/from16 v0, p4

    float-to-int v8, v0

    .line 265
    .local v8, "r":I
    mul-int/lit8 v20, v8, 0x2

    add-int/lit8 v13, v20, 0x1

    .line 266
    .local v13, "tableSize":I
    mul-int/lit16 v0, v13, 0x100

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v2, v0, [I

    .line 268
    .local v2, "divide":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    mul-int/lit16 v0, v13, 0x100

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v3, v0, :cond_0

    .line 271
    const/4 v6, 0x0

    .line 273
    .local v6, "inIndex":I
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    .line 306
    return-void

    .line 269
    .end local v6    # "inIndex":I
    .end local v19    # "y":I
    :cond_0
    div-int v20, v3, v13

    aput v20, v2, v3

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .restart local v6    # "inIndex":I
    .restart local v19    # "y":I
    :cond_1
    move/from16 v7, v19

    .line 275
    .local v7, "outIndex":I
    const/4 v12, 0x0

    .local v12, "ta":I
    const/16 v16, 0x0

    .local v16, "tr":I
    const/4 v15, 0x0

    .local v15, "tg":I
    const/4 v14, 0x0

    .line 277
    .local v14, "tb":I
    neg-int v3, v8

    :goto_2
    if-le v3, v8, :cond_2

    .line 285
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, p2

    if-lt v0, v1, :cond_3

    .line 304
    add-int v6, v6, p2

    .line 273
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 278
    .end local v18    # "x":I
    :cond_2
    const/16 v20, 0x0

    add-int/lit8 v21, p2, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/acloud/imageloader/BitmapUtils;->clamp(III)I

    move-result v20

    add-int v20, v20, v6

    aget v9, p0, v20

    .line 279
    .local v9, "rgb":I
    shr-int/lit8 v20, v9, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v12, v12, v20

    .line 280
    shr-int/lit8 v20, v9, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 281
    shr-int/lit8 v20, v9, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v15, v15, v20

    .line 282
    and-int/lit16 v0, v9, 0xff

    move/from16 v20, v0

    add-int v14, v14, v20

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 286
    .end local v9    # "rgb":I
    .restart local v18    # "x":I
    :cond_3
    aget v20, v2, v12

    shl-int/lit8 v20, v20, 0x18

    aget v21, v2, v16

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    .line 287
    aget v21, v2, v15

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v2, v14

    or-int v20, v20, v21

    .line 286
    aput v20, p1, v7

    .line 289
    add-int v20, v18, v8

    add-int/lit8 v4, v20, 0x1

    .line 290
    .local v4, "i1":I
    move/from16 v0, v17

    if-le v4, v0, :cond_4

    .line 291
    move/from16 v4, v17

    .line 292
    :cond_4
    sub-int v5, v18, v8

    .line 293
    .local v5, "i2":I
    if-gez v5, :cond_5

    .line 294
    const/4 v5, 0x0

    .line 295
    :cond_5
    add-int v20, v6, v4

    aget v10, p0, v20

    .line 296
    .local v10, "rgb1":I
    add-int v20, v6, v5

    aget v11, p0, v20

    .line 298
    .local v11, "rgb2":I
    shr-int/lit8 v20, v10, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shr-int/lit8 v21, v11, 0x18

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int v12, v12, v20

    .line 299
    const/high16 v20, 0xff0000

    and-int v20, v20, v10

    const/high16 v21, 0xff0000

    and-int v21, v21, v11

    sub-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x10

    add-int v16, v16, v20

    .line 300
    const v20, 0xff00

    and-int v20, v20, v10

    const v21, 0xff00

    and-int v21, v21, v11

    sub-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x8

    add-int v15, v15, v20

    .line 301
    and-int/lit16 v0, v10, 0xff

    move/from16 v20, v0

    and-int/lit16 v0, v11, 0xff

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int v14, v14, v20

    .line 302
    add-int v7, v7, p3

    .line 285
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3
.end method

.method public static blurBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 196
    if-nez p0, :cond_0

    .line 230
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 199
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 199
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 203
    .local v3, "outBitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 207
    .local v4, "rs":Landroid/renderscript/RenderScript;
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    .line 206
    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 211
    .local v2, "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-static {v4, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 212
    .local v0, "allIn":Landroid/renderscript/Allocation;
    invoke-static {v4, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 215
    .local v1, "allOut":Landroid/renderscript/Allocation;
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v2, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 218
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 219
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 222
    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 225
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    move-object p0, v3

    .line 230
    goto :goto_0
.end method

.method public static blurBitmap(Ljava/lang/String;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/acloud/imageloader/BitmapUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v2, v0

    .line 162
    :goto_0
    return-object v2

    .line 157
    :cond_0
    invoke-static {v0}, Lcom/acloud/imageloader/BitmapUtils;->boxBlurFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 159
    .local v1, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    const/4 v0, 0x0

    .line 162
    invoke-static {v1, p1, p2}, Lcom/acloud/imageloader/BitmapUtils;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public static blurFractional([I[IIIF)V
    .locals 26
    .param p0, "in"    # [I
    .param p1, "out"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "radius"    # F

    .prologue
    .line 310
    move/from16 v0, p4

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float p4, p4, v23

    .line 311
    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v25, v25, p4

    add-float v24, v24, v25

    div-float v8, v23, v24

    .line 312
    .local v8, "f":F
    const/4 v13, 0x0

    .line 314
    .local v13, "inIndex":I
    const/16 v22, 0x0

    .local v22, "y":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 351
    return-void

    .line 315
    :cond_0
    move/from16 v14, v22

    .line 317
    .local v14, "outIndex":I
    const/16 v23, 0x0

    aget v23, p0, v23

    aput v23, p1, v14

    .line 318
    add-int v14, v14, p3

    .line 319
    const/16 v21, 0x1

    .local v21, "x":I
    :goto_1
    add-int/lit8 v23, p2, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 348
    add-int/lit8 v23, p2, -0x1

    aget v23, p0, v23

    aput v23, p1, v14

    .line 349
    add-int v13, v13, p2

    .line 314
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 320
    :cond_1
    add-int v12, v13, v21

    .line 321
    .local v12, "i":I
    add-int/lit8 v23, v12, -0x1

    aget v18, p0, v23

    .line 322
    .local v18, "rgb1":I
    aget v19, p0, v12

    .line 323
    .local v19, "rgb2":I
    add-int/lit8 v23, v12, 0x1

    aget v20, p0, v23

    .line 325
    .local v20, "rgb3":I
    shr-int/lit8 v23, v18, 0x18

    move/from16 v0, v23

    and-int/lit16 v2, v0, 0xff

    .line 326
    .local v2, "a1":I
    shr-int/lit8 v23, v18, 0x10

    move/from16 v0, v23

    and-int/lit16 v15, v0, 0xff

    .line 327
    .local v15, "r1":I
    shr-int/lit8 v23, v18, 0x8

    move/from16 v0, v23

    and-int/lit16 v9, v0, 0xff

    .line 328
    .local v9, "g1":I
    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xff

    .line 329
    .local v5, "b1":I
    shr-int/lit8 v23, v19, 0x18

    move/from16 v0, v23

    and-int/lit16 v3, v0, 0xff

    .line 330
    .local v3, "a2":I
    shr-int/lit8 v23, v19, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 331
    .local v16, "r2":I
    shr-int/lit8 v23, v19, 0x8

    move/from16 v0, v23

    and-int/lit16 v10, v0, 0xff

    .line 332
    .local v10, "g2":I
    move/from16 v0, v19

    and-int/lit16 v6, v0, 0xff

    .line 333
    .local v6, "b2":I
    shr-int/lit8 v23, v20, 0x18

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    .line 334
    .local v4, "a3":I
    shr-int/lit8 v23, v20, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 335
    .local v17, "r3":I
    shr-int/lit8 v23, v20, 0x8

    move/from16 v0, v23

    and-int/lit16 v11, v0, 0xff

    .line 336
    .local v11, "g3":I
    move/from16 v0, v20

    and-int/lit16 v7, v0, 0xff

    .line 337
    .local v7, "b3":I
    add-int v23, v2, v4

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v2, v3, v23

    .line 338
    add-int v23, v15, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v15, v16, v23

    .line 339
    add-int v23, v9, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v9, v10, v23

    .line 340
    add-int v23, v5, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v5, v6, v23

    .line 341
    int-to-float v0, v2

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v2, v0

    .line 342
    int-to-float v0, v15

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v15, v0

    .line 343
    int-to-float v0, v9

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v9, v0

    .line 344
    int-to-float v0, v5

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v5, v0

    .line 345
    shl-int/lit8 v23, v2, 0x18

    shl-int/lit8 v24, v15, 0x10

    or-int v23, v23, v24

    shl-int/lit8 v24, v9, 0x8

    or-int v23, v23, v24

    or-int v23, v23, v5

    aput v23, p1, v14

    .line 346
    add-int v14, v14, p3

    .line 319
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1
.end method

.method public static boxBlurFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 245
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 246
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 247
    .local v1, "inPixels":[I
    mul-int v0, v3, v7

    new-array v10, v0, [I

    .line 249
    .local v10, "outPixels":[I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 248
    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "bitmap":Landroid/graphics/Bitmap;
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 250
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 251
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget v0, Lcom/acloud/imageloader/BitmapUtils;->iterations:I

    if-lt v9, v0, :cond_0

    .line 255
    sget v0, Lcom/acloud/imageloader/BitmapUtils;->hRadius:F

    invoke-static {v1, v10, v3, v7, v0}, Lcom/acloud/imageloader/BitmapUtils;->blurFractional([I[IIIF)V

    .line 256
    sget v0, Lcom/acloud/imageloader/BitmapUtils;->vRadius:F

    invoke-static {v10, v1, v7, v3, v0}, Lcom/acloud/imageloader/BitmapUtils;->blurFractional([I[IIIF)V

    move-object v0, v8

    move v4, v2

    move v5, v2

    move v6, v3

    .line 257
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 258
    return-object v8

    .line 252
    :cond_0
    sget v0, Lcom/acloud/imageloader/BitmapUtils;->hRadius:F

    invoke-static {v1, v10, v3, v7, v0}, Lcom/acloud/imageloader/BitmapUtils;->blur([I[IIIF)V

    .line 253
    sget v0, Lcom/acloud/imageloader/BitmapUtils;->vRadius:F

    invoke-static {v10, v1, v7, v3, v0}, Lcom/acloud/imageloader/BitmapUtils;->blur([I[IIIF)V

    .line 251
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 354
    if-ge p0, p1, :cond_0

    .end local p1    # "a":I
    :goto_0
    return p1

    .restart local p1    # "a":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSaveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/acloud/imageloader/BitmapUtils;->getImageStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 100
    .local v2, "stream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 101
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Lcom/acloud/imageloader/BitmapUtils;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getImageStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 41
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 42
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 46
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getNetworkImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    invoke-static {p0}, Lcom/acloud/imageloader/BitmapUtils;->getImageStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 123
    .local v1, "stream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 124
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 130
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p2, v0}, Lcom/acloud/imageloader/BitmapUtils;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 58
    return-void
.end method

.method public static saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/16 v0, 0x50

    invoke-static {p0, p1, p2, p3, v0}, Lcom/acloud/imageloader/BitmapUtils;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 62
    return-void
.end method

.method public static saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 5
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "dirFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 82
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "myCaptureFile":Ljava/io/File;
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 84
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, p3, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 173
    if-nez p0, :cond_0

    .line 185
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 176
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 177
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 178
    .local v4, "h":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 180
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 181
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "w:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " h:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 183
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 184
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v7

    .line 185
    goto :goto_0
.end method
