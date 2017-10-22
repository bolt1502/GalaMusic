.class public Lcom/acloud/utils/LruCacheUtils;
.super Ljava/lang/Object;
.source "LruCacheUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static pThis:Lcom/acloud/utils/LruCacheUtils;


# instance fields
.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/utils/LruCacheUtils;->pThis:Lcom/acloud/utils/LruCacheUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 50
    .local v0, "MAXMEMONRY":I
    new-instance v1, Lcom/acloud/utils/LruCacheUtils$1;

    div-int/lit8 v2, v0, 0x8

    invoke-direct {v1, p0, v2}, Lcom/acloud/utils/LruCacheUtils$1;-><init>(Lcom/acloud/utils/LruCacheUtils;I)V

    iput-object v1, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    .line 63
    return-void
.end method

.method private addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/acloud/utils/LruCacheUtils;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/acloud/utils/LruCacheUtils;->pThis:Lcom/acloud/utils/LruCacheUtils;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/acloud/utils/LruCacheUtils;

    invoke-direct {v0}, Lcom/acloud/utils/LruCacheUtils;-><init>()V

    sput-object v0, Lcom/acloud/utils/LruCacheUtils;->pThis:Lcom/acloud/utils/LruCacheUtils;

    .line 34
    :cond_0
    sget-object v0, Lcom/acloud/utils/LruCacheUtils;->pThis:Lcom/acloud/utils/LruCacheUtils;

    return-object v0
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/acloud/utils/LruCacheUtils;->pThis:Lcom/acloud/utils/LruCacheUtils;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/acloud/utils/LruCacheUtils;->pThis:Lcom/acloud/utils/LruCacheUtils;

    invoke-virtual {v0}, Lcom/acloud/utils/LruCacheUtils;->clearCache()V

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/utils/LruCacheUtils;->pThis:Lcom/acloud/utils/LruCacheUtils;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mMemoryCache.size()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    .line 76
    :cond_1
    return-void
.end method

.method public declared-synchronized getBitmapFromMemCache(ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 112
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resId error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or context is null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v0, 0x0

    .line 125
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 115
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 120
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/acloud/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resId error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 84
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string v2, "path is null!"

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 100
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 88
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 89
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 93
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/acloud/utils/LruCacheUtils;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 99
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 100
    goto :goto_0
.end method

.method public declared-synchronized removeImageCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 134
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/acloud/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 137
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
