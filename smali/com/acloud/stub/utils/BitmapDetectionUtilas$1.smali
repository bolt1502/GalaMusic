.class Lcom/acloud/stub/utils/BitmapDetectionUtilas$1;
.super Landroid/os/Handler;
.source "BitmapDetectionUtilas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/utils/BitmapDetectionUtilas;-><init>(Landroid/content/Context;Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;)V
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
    iput-object p1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$1;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$1;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mIsRelease:Z
    invoke-static {v1}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$0(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$1;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mBitmapCallback:Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;
    invoke-static {v1}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$1(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;

    .line 62
    .local v0, "obj":Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;
    iget-object v1, p0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$1;->this$0:Lcom/acloud/stub/utils/BitmapDetectionUtilas;

    # getter for: Lcom/acloud/stub/utils/BitmapDetectionUtilas;->mBitmapCallback:Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;
    invoke-static {v1}, Lcom/acloud/stub/utils/BitmapDetectionUtilas;->access$1(Lcom/acloud/stub/utils/BitmapDetectionUtilas;)Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;

    move-result-object v1

    iget-object v2, v0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapCallback;->onBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 65
    .end local v0    # "obj":Lcom/acloud/stub/utils/BitmapDetectionUtilas$BitmapClass;
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 66
    return-void
.end method
