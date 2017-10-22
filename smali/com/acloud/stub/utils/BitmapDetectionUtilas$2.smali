.class Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;
.super Ljava/lang/Object;
.source "BitmapDetectionUtilas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/utils/BitmapDetectionUtilas;->getDetectionBitmap(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;


# direct methods
.method constructor <init>(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 99
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$2(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 100
    :try_start_0
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mPath:Ljava/lang/String;
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$3(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "path":Ljava/lang/String;
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mTag:Ljava/lang/String;
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$4(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "tag":Ljava/lang/String;
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mWidth:I
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$5(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)I

    move-result v10

    .line 103
    .local v10, "width":I
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mHeight:I
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$6(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)I

    move-result v3

    .line 99
    .local v3, "height":I
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 v4, 0x0

    .line 108
    .local v4, "isSaveFile":Z
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$7(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/acloud/stub/utils/PathUtils;->getArtistPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$7(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/acloud/stub/utils/PathUtils;->getArtistBlurPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "cachePath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 110
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 112
    invoke-static {v1}, Lcom/acloud/imageloader/BitmapUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    :cond_0
    if-nez v0, :cond_1

    .line 115
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 117
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$7(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v8, v10, v3, v11}, Lcom/acloud/imageloader/BitmapUtils;->blurBitmap(Ljava/lang/String;IILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    const/4 v4, 0x1

    .line 123
    :cond_1
    new-instance v7, Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;

    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12}, Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;-><init>(Lcom/acloud/stub/utils/BitmapDetectionUtilas;Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;)V

    .line 124
    .local v7, "object":Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;
    iput-object v0, v7, Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;->bitmap:Landroid/graphics/Bitmap;

    .line 125
    iput-object v9, v7, Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;->tag:Ljava/lang/String;

    .line 128
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$8(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 129
    .local v5, "msg":Landroid/os/Message;
    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$8(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 133
    const-string v11, "/"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "names":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v11, v6

    if-eqz v11, :cond_2

    .line 136
    :try_start_1
    iget-object v11, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$2;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$7(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/acloud/stub/utils/PathUtils;->getArtistBlurPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    array-length v12, v6

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v6, v12

    .line 137
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 136
    invoke-static {v0, v11, v12, v13}, Lcom/acloud/imageloader/BitmapUtils;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .end local v6    # "names":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 99
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cachePath":Ljava/lang/String;
    .end local v3    # "height":I
    .end local v4    # "isSaveFile":Z
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "object":Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "width":I
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 138
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "cachePath":Ljava/lang/String;
    .restart local v3    # "height":I
    .restart local v4    # "isSaveFile":Z
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v6    # "names":[Ljava/lang/String;
    .restart local v7    # "object":Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "width":I
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
