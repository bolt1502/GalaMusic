.class public Lcom/acloud/ui/view/GifImageView;
.super Lcom/acloud/ui/view/RoundImageView;
.source "GifImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/ui/view/GifImageView$GifCallback;
    }
.end annotation


# instance fields
.field private mDrawGifTimer:Lcom/acloud/AndroidTimer;

.field private mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIsPlaying:Z

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieCount:I

.field private mMovieFrame:I

.field private mMovieStart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/acloud/ui/view/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/acloud/ui/view/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/acloud/ui/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v2, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovieStart:J

    .line 32
    iput v3, p0, Lcom/acloud/ui/view/GifImageView;->mMovieCount:I

    .line 33
    const/16 v0, 0x29

    iput v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovieFrame:I

    .line 34
    iput-boolean v3, p0, Lcom/acloud/ui/view/GifImageView;->mIsPlaying:Z

    .line 35
    iput-object v2, p0, Lcom/acloud/ui/view/GifImageView;->mDrawGifTimer:Lcom/acloud/AndroidTimer;

    .line 51
    iput-object v2, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/acloud/ui/view/GifImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    :cond_0
    new-instance v0, Lcom/acloud/AndroidTimer;

    new-instance v1, Lcom/acloud/ui/view/GifImageView$1;

    invoke-direct {v1, p0}, Lcom/acloud/ui/view/GifImageView$1;-><init>(Lcom/acloud/ui/view/GifImageView;)V

    invoke-direct {v0, v1}, Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;)V

    iput-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mDrawGifTimer:Lcom/acloud/AndroidTimer;

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/ui/view/GifImageView;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovieStart:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/acloud/ui/view/GifImageView;J)V
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/acloud/ui/view/GifImageView;->mMovieStart:J

    return-void
.end method

.method static synthetic access$2(Lcom/acloud/ui/view/GifImageView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovieCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/acloud/ui/view/GifImageView;)Lcom/acloud/AndroidTimer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mDrawGifTimer:Lcom/acloud/AndroidTimer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/acloud/ui/view/GifImageView;Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/acloud/ui/view/GifImageView;->mIsPlaying:Z

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/ui/view/GifImageView;)Lcom/acloud/ui/view/GifImageView$GifCallback;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    return-object v0
.end method

.method private drawMovie(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/acloud/ui/view/GifImageView;->mMovieFrame:I

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/acloud/ui/view/GifImageView;->mMovieStart:J

    mul-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 173
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lcom/acloud/ui/view/GifImageView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/acloud/ui/view/GifImageView;->mImageWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/acloud/ui/view/GifImageView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/acloud/ui/view/GifImageView;->mImageHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 174
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovieStart:J

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/ui/view/GifImageView;->mIsPlaying:Z

    .line 183
    invoke-virtual {p0}, Lcom/acloud/ui/view/GifImageView;->invalidate()V

    .line 184
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    iget v1, p0, Lcom/acloud/ui/view/GifImageView;->mMovieFrame:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovieCount:I

    .line 186
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mDrawGifTimer:Lcom/acloud/AndroidTimer;

    iget v1, p0, Lcom/acloud/ui/view/GifImageView;->mMovieFrame:I

    invoke-virtual {v0, v1}, Lcom/acloud/AndroidTimer;->start(I)V

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mDrawGifTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 203
    invoke-super {p0}, Lcom/acloud/ui/view/RoundImageView;->onDetachedFromWindow()V

    .line 204
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    .line 156
    invoke-super {p0, p1}, Lcom/acloud/ui/view/RoundImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/acloud/ui/view/GifImageView;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0, p1}, Lcom/acloud/ui/view/GifImageView;->drawMovie(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 162
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lcom/acloud/ui/view/GifImageView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/acloud/ui/view/GifImageView;->mImageWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/acloud/ui/view/GifImageView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/acloud/ui/view/GifImageView;->mImageHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Lcom/acloud/ui/view/RoundImageView;->onMeasure(II)V

    .line 198
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v5, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    invoke-interface {v5}, Lcom/acloud/ui/view/GifImageView$GifCallback;->onStart()V

    .line 104
    :cond_0
    const/4 v3, 0x0

    .line 106
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x4000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/acloud/ui/view/GifImageView;->mImageWidth:I

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/acloud/ui/view/GifImageView;->mImageHeight:I

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    const/4 v0, 0x0

    .line 118
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :goto_0
    :try_start_3
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x4000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    const/16 v5, 0x4000

    :try_start_4
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->mark(I)V

    .line 125
    invoke-static {v3}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v5

    iput-object v5, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 133
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 139
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v5, :cond_9

    .line 140
    invoke-direct {p0}, Lcom/acloud/ui/view/GifImageView;->start()V

    .line 150
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    :goto_3
    return-void

    .line 119
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 128
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 129
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 131
    if-eqz v3, :cond_4

    .line 133
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 139
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    iget-object v5, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v5, :cond_5

    .line 140
    invoke-direct {p0}, Lcom/acloud/ui/view/GifImageView;->start()V

    goto :goto_3

    .line 134
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v5, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    if-eqz v5, :cond_3

    .line 146
    iget-object v5, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    invoke-interface {v5}, Lcom/acloud/ui/view/GifImageView$GifCallback;->onStop()V

    goto :goto_3

    .line 130
    :catchall_0
    move-exception v5

    .line 131
    :goto_6
    if-eqz v3, :cond_6

    .line 133
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 139
    :cond_6
    :goto_7
    iget-object v6, p0, Lcom/acloud/ui/view/GifImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v6, :cond_8

    .line 140
    invoke-direct {p0}, Lcom/acloud/ui/view/GifImageView;->start()V

    .line 149
    :cond_7
    :goto_8
    throw v5

    .line 134
    :catch_3
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/acloud/ui/view/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v6, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    if-eqz v6, :cond_7

    .line 146
    iget-object v6, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    invoke-interface {v6}, Lcom/acloud/ui/view/GifImageView$GifCallback;->onStop()V

    goto :goto_8

    .line 134
    .restart local v2    # "file":Ljava/io/File;
    :catch_4
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/acloud/ui/view/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v5, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    if-eqz v5, :cond_3

    .line 146
    iget-object v5, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    invoke-interface {v5}, Lcom/acloud/ui/view/GifImageView$GifCallback;->onStop()V

    goto :goto_3

    .line 130
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 128
    .end local v2    # "file":Ljava/io/File;
    :catch_5
    move-exception v1

    goto :goto_4

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_a
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public setGifCallback(Lcom/acloud/ui/view/GifImageView$GifCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/acloud/ui/view/GifImageView$GifCallback;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;

    .line 93
    return-void
.end method
