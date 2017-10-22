.class public Lcom/acloud/imageloader/ImageLoaderUtils;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"


# static fields
.field public static pThis:Lcom/acloud/imageloader/ImageLoaderUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/imageloader/ImageLoaderUtils;->pThis:Lcom/acloud/imageloader/ImageLoaderUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/acloud/imageloader/ImageLoaderUtils;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/acloud/imageloader/ImageLoaderUtils;->pThis:Lcom/acloud/imageloader/ImageLoaderUtils;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/acloud/imageloader/ImageLoaderUtils;

    invoke-direct {v0}, Lcom/acloud/imageloader/ImageLoaderUtils;-><init>()V

    sput-object v0, Lcom/acloud/imageloader/ImageLoaderUtils;->pThis:Lcom/acloud/imageloader/ImageLoaderUtils;

    .line 39
    :cond_0
    sget-object v0, Lcom/acloud/imageloader/ImageLoaderUtils;->pThis:Lcom/acloud/imageloader/ImageLoaderUtils;

    return-object v0
.end method

.method private remove()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->destroy()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 136
    :cond_0
    return-void
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/acloud/imageloader/ImageLoaderUtils;->pThis:Lcom/acloud/imageloader/ImageLoaderUtils;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/acloud/imageloader/ImageLoaderUtils;->pThis:Lcom/acloud/imageloader/ImageLoaderUtils;

    invoke-direct {v0}, Lcom/acloud/imageloader/ImageLoaderUtils;->remove()V

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/imageloader/ImageLoaderUtils;->pThis:Lcom/acloud/imageloader/ImageLoaderUtils;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "displayImage must call the initialization method!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, p2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 126
    return-void
.end method

.method public init(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultBitmapId"    # I
    .param p3, "roundeDisplayer"    # I

    .prologue
    const/4 v2, -0x1

    .line 63
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/acloud/imageloader/ImageLoaderUtils;->init(Landroid/content/Context;IIII)V

    .line 64
    return-void
.end method

.method public init(Landroid/content/Context;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "defaultBitmapId"    # I

    .prologue
    .line 67
    const/16 v5, 0x14

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/acloud/imageloader/ImageLoaderUtils;->init(Landroid/content/Context;IIII)V

    .line 68
    return-void
.end method

.method public init(Landroid/content/Context;IIII)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "defaultBitmapId"    # I
    .param p5, "roundeDisplayer"    # I

    .prologue
    const/4 v7, 0x1

    .line 79
    iget-object v2, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 111
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v3, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 88
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2, p2, p3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 90
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 91
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 92
    const/high16 v3, 0x3200000

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 94
    new-instance v3, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/picture/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache(Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 95
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    const/16 v4, 0x1388

    const v5, 0xea60

    invoke-direct {v3, p1, v4, v5}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    .line 98
    .local v1, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 99
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 100
    iget-object v2, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 102
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 103
    invoke-virtual {v2, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 105
    new-instance v3, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    invoke-direct {v3, p5}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 106
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 107
    invoke-virtual {v2, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 108
    invoke-virtual {v2, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 102
    iput-object v2, p0, Lcom/acloud/imageloader/ImageLoaderUtils;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto/16 :goto_0
.end method
