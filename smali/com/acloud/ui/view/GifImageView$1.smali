.class Lcom/acloud/ui/view/GifImageView$1;
.super Ljava/lang/Object;
.source "GifImageView.java"

# interfaces
.implements Lcom/acloud/AndroidTimer$TimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/ui/view/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/ui/view/GifImageView;


# direct methods
.method constructor <init>(Lcom/acloud/ui/view/GifImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/ui/view/GifImageView$1;->this$0:Lcom/acloud/ui/view/GifImageView;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout()V
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView$1;->this$0:Lcom/acloud/ui/view/GifImageView;

    # getter for: Lcom/acloud/ui/view/GifImageView;->mMovieStart:J
    invoke-static {v0}, Lcom/acloud/ui/view/GifImageView;->access$0(Lcom/acloud/ui/view/GifImageView;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/acloud/ui/view/GifImageView;->access$1(Lcom/acloud/ui/view/GifImageView;J)V

    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView$1;->this$0:Lcom/acloud/ui/view/GifImageView;

    # getter for: Lcom/acloud/ui/view/GifImageView;->mMovieCount:I
    invoke-static {v0}, Lcom/acloud/ui/view/GifImageView;->access$2(Lcom/acloud/ui/view/GifImageView;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView$1;->this$0:Lcom/acloud/ui/view/GifImageView;

    # getter for: Lcom/acloud/ui/view/GifImageView;->mDrawGifTimer:Lcom/acloud/AndroidTimer;
    invoke-static {v0}, Lcom/acloud/ui/view/GifImageView;->access$3(Lcom/acloud/ui/view/GifImageView;)Lcom/acloud/AndroidTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 74
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView$1;->this$0:Lcom/acloud/ui/view/GifImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/acloud/ui/view/GifImageView;->access$4(Lcom/acloud/ui/view/GifImageView;Z)V

    .line 75
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView$1;->this$0:Lcom/acloud/ui/view/GifImageView;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/acloud/ui/view/GifImageView;->access$1(Lcom/acloud/ui/view/GifImageView;J)V

    .line 77
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView$1;->this$0:Lcom/acloud/ui/view/GifImageView;

    # getter for: Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;
    invoke-static {v0}, Lcom/acloud/ui/view/GifImageView;->access$5(Lcom/acloud/ui/view/GifImageView;)Lcom/acloud/ui/view/GifImageView$GifCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView$1;->this$0:Lcom/acloud/ui/view/GifImageView;

    # getter for: Lcom/acloud/ui/view/GifImageView;->mGifCallback:Lcom/acloud/ui/view/GifImageView$GifCallback;
    invoke-static {v0}, Lcom/acloud/ui/view/GifImageView;->access$5(Lcom/acloud/ui/view/GifImageView;)Lcom/acloud/ui/view/GifImageView$GifCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/ui/view/GifImageView$GifCallback;->onStop()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/acloud/ui/view/GifImageView$1;->this$0:Lcom/acloud/ui/view/GifImageView;

    invoke-virtual {v0}, Lcom/acloud/ui/view/GifImageView;->invalidate()V

    .line 83
    return-void
.end method
